#!/usr/bin/env python3
"""Convert a text PDF (Chrome/KaTeX printouts, ReportLab output) to readable text.

Uses `mutool draw -F stext` to get every glyph with its baseline and font size,
regroups glyphs into visual rows, and rebuilds sub/superscripts from size and
baseline offset as `x_{...}` / `x^{...}`. Inline fractions set at script size
become `(num)/(den)`. Page headers/footers of browser printouts are dropped.

Writes two files: a UTF-8 version (math symbols kept) and a pure-ASCII version
(symbols transliterated, Greek letters spelled out).

usage: pdf2ascii.py IN.pdf OUT_ascii.txt OUT_utf8.txt
"""
import re
import subprocess
import sys
import unicodedata
import xml.etree.ElementTree as ET
from collections import Counter

SCRIPT_RATIO = 0.78     # glyph smaller than this fraction of the row size -> script
ROW_TOL = 0.08          # baseline tolerance (fraction of size) for one row
SPACE_GAP = 0.17        # horizontal gap (fraction of size) that counts as a space
ZERO_WIDTH = {chr(c) for c in (0x200b, 0x200c, 0x200d, 0xfeff, 0x2061, 0x2062, 0x2063)}
CHIP = re.compile(r'[\w-]+(\.[\w-]+)+( ?\+\d+)?')   # ChatGPT citation chip, e.g. "arxiv.org +2"

# KaTeX private-use glyphs: U+E020 is the \not overlay drawn on top of a relation.
NOT_OVERLAY = chr(0xe020)
NEGATE = {'=': '≠', '∈': '∉', '≡': '≢', '∼': '≁', '⊂': '⊄', '<': '≮', '>': '≯', '|': '∤', '∣': '∤'}


class Glyph:
    __slots__ = ('c', 'x0', 'x1', 'base', 'size')

    def __init__(self, c, x0, x1, base, size):
        self.c, self.x0, self.x1, self.base, self.size = c, x0, x1, base, size


def read_pages(pdf):
    xml = subprocess.run(['mutool', 'draw', '-q', '-F', 'stext', '-o', '-', pdf],
                         capture_output=True, check=True).stdout
    pages = []
    for page in ET.fromstring(xml).iter('page'):
        glyphs = []
        for font in page.iter('font'):
            size = float(font.get('size'))
            for ch in font.iter('char'):
                c = ch.get('c')
                if c is None or c in ZERO_WIDTH or size < 2:
                    continue
                xs = [float(v) for v in ch.get('quad').split()][0::2]
                glyphs.append(Glyph(c, min(xs), max(xs), float(ch.get('y')), size))
        pages.append((float(page.get('width')), float(page.get('height')), glyphs))
    return pages


def cluster_rows(glyphs):
    """Group glyphs whose baselines agree into rows, largest glyphs first."""
    rows = []
    for g in sorted(glyphs, key=lambda g: -g.size):
        for r in rows:
            if abs(r['base'] - g.base) <= max(0.8, ROW_TOL * r['size']) and g.size >= SCRIPT_RATIO * r['size']:
                r['glyphs'].append(g)
                break
        else:
            rows.append({'base': g.base, 'size': g.size, 'glyphs': [g]})
    for r in rows:
        r['x0'] = min(g.x0 for g in r['glyphs'])
        r['x1'] = max(g.x1 for g in r['glyphs'])
    return rows


def attach_scripts(rows):
    """Merge rows of small glyphs into the nearest full-size row they decorate."""
    rows.sort(key=lambda r: -r['size'])
    mains = []
    for r in rows:
        best, best_off = None, None
        for m in mains:
            if r['size'] >= SCRIPT_RATIO * m['size']:
                continue
            off = m['base'] - r['base']           # positive: above the main baseline
            if (-0.75 * m['size'] <= off <= 1.05 * m['size']
                    and r['x0'] <= m['x1'] + 3 * m['size'] and r['x1'] >= m['x0'] - m['size']
                    and (best is None or abs(off) < abs(best_off))):
                best, best_off = m, off
        if best is None:
            mains.append(r)
        else:
            best['glyphs'].extend(r['glyphs'])
            best['x0'], best['x1'] = min(best['x0'], r['x0']), max(best['x1'], r['x1'])
    return mains


def runs(glyphs, size):
    """Split glyphs into x-ordered runs separated by gaps wider than ~half an em."""
    out = []
    for g in sorted(glyphs, key=lambda g: g.x0):
        if out and g.x0 - max(h.x1 for h in out[-1]) < 0.6 * size:
            out[-1].append(g)
        else:
            out.append([g])
    return out


def wrap(s):
    return s if len(s) == 1 else '{' + s + '}'


def paren(s):
    return s if re.fullmatch(r'\w+', s) else '(' + s + ')'


def script_groups(scripts, base, size):
    """Turn script glyphs into rendered ^/_ groups, pairing stacked inline fractions."""
    groups = []
    for kind, gs in (('^', [g for g in scripts if g.base < base - 0.05 * size]),
                     ('_', [g for g in scripts if g.base >= base - 0.05 * size])):
        if not gs:
            continue
        for run in runs(gs, min(g.size for g in gs)):
            sz = max(g.size for g in run)
            inner_base = Counter(round(g.base, 1) for g in run if g.size >= SCRIPT_RATIO * sz).most_common(1)[0][0]
            groups.append({'x0': min(g.x0 for g in run), 'x1': max(g.x1 for g in run), 'kind': kind,
                           'text': render(run, inner_base, sz), 'shift': base - inner_base})
    out, used = [], set()
    for i, a in enumerate(groups):
        for j, b in enumerate(groups):
            if a['kind'] != '^' or b['kind'] != '_' or i in used or j in used:
                continue
            overlap = min(a['x1'], b['x1']) - max(a['x0'], b['x0'])
            if overlap > 0.5 * min(a['x1'] - a['x0'], b['x1'] - b['x0']) and b['shift'] < -0.28 * size and a['shift'] > 0.3 * size:
                out.append({'x0': min(a['x0'], b['x0']), 'x1': max(a['x1'], b['x1']), 'kind': 'f',
                            'text': paren(a['text']) + '/' + paren(b['text'])})
                used.update((i, j))
    for k, g in enumerate(groups):
        if k in used:
            continue
        if CHIP.fullmatch(g['text']):
            g['kind'], g['text'] = 'c', '[' + g['text'] + ']'
        else:
            g['text'] = g['kind'] + wrap(g['text'])
        out.append(g)
    return out


def render(glyphs, base, size):
    """Render a row: full-size glyphs inline, smaller glyphs as ^{} / _{} groups."""
    # explicit space glyphs are ignored: KaTeX spaces underlap scripts, so word
    # breaks are taken from horizontal gaps instead
    items, scripts = [], []
    for g in glyphs:
        if g.c.isspace():
            continue
        if g.size >= SCRIPT_RATIO * size and abs(g.base - base) <= 0.3 * size:
            items.append({'x0': g.x0, 'x1': g.x1, 'kind': 'b', 'text': g.c})
        else:
            scripts.append(g)
    items += script_groups(scripts, base, size)
    # a subscript sorts before a superscript on the same base; an overlay after its relation
    order = {'b': 0, '_': 1, '^': 2, 'f': 0, 'c': 0}
    items.sort(key=lambda it: (round(it['x0'], 0), order[it['kind']], it['text'] == NOT_OVERLAY))
    out, prev_end = '', None
    for it in items:
        if prev_end is not None:
            gap = it['x0'] - prev_end
            if (it['kind'] in 'bfc' and gap > SPACE_GAP * size) or (it['kind'] in '^_' and gap > 0.45 * size):
                out += ' '
        out += it['text']
        prev_end = it['x1'] if prev_end is None or it['kind'] in 'b' else max(prev_end, it['x1'])
    out = re.sub(NOT_OVERLAY + r' ?(\S)', lambda m: NEGATE.get(m.group(1), '/' + m.group(1)), out)
    out = re.sub(r'(\S) ?' + NOT_OVERLAY, lambda m: NEGATE.get(m.group(1), m.group(1) + '/'), out)
    return out.strip()


FURNITURE = [
    re.compile(r'^\d{1,2}/\d{1,2}/\d{2,4}, \d{1,2}:\d{2}\b.*$'),    # print date (+ title)
    re.compile(r'^https?://\S+( \d+/\d+)?$'),                      # page URL footer (+ n/N)
    re.compile(r'^\d+/\d+$'),                                      # n/N page number
]


def page_rows(glyphs):
    rows = attach_scripts(cluster_rows(glyphs))
    rows.sort(key=lambda r: (r['base'], r['x0']))
    # merge rows on one baseline (e.g. a display formula and its trailing punctuation)
    merged = []
    for r in rows:
        if merged and abs(merged[-1]['base'] - r['base']) < 0.15 * r['size'] and abs(merged[-1]['size'] - r['size']) < 0.25 * r['size']:
            m = merged[-1]
            m['glyphs'] += r['glyphs']
            m['x0'], m['x1'], m['size'] = min(m['x0'], r['x0']), max(m['x1'], r['x1']), max(m['size'], r['size'])
        else:
            merged.append(r)
    return merged


def page_lines(height, rows, title, body_size, margin):
    lines, prev = [], None
    for r in rows:
        text = render(r['glyphs'], r['base'], r['size'])
        if not text:
            continue
        near_edge = r['base'] < 0.06 * height or r['base'] > 0.94 * height
        if near_edge and (text == title or any(p.match(text) for p in FURNITURE)):
            continue
        if prev is not None and r['base'] - prev['base'] > 1.9 * max(prev['size'], r['size']):
            lines.append('')
        indent = max(0, int(round((r['x0'] - margin) / (0.5 * body_size))))
        lines.append(' ' * min(indent, 48) + text)
        prev = r
    return lines


ASCII = {
    '−': '-', '–': '-', '—': '--', '‐': '-', '‑': '-', '’': "'", '‘': "'", '“': '"', '”': '"',
    '′': "'", '″': "''", '…': '...', '⋯': '...', '•': '*', '·': '.', '⋅': '.', '∗': '*', '×': 'x',
    '±': '+/-', '∓': '-/+', '≤': '<=', '≥': '>=', '≪': '<<', '≫': '>>', '≠': '!=', '≃': '~=',
    '≅': '~=', '≈': '~~', '∼': '~', '≡': '==', '∝': ' propto ', '→': '->', '⟶': '-->', '←': '<-',
    '↔': '<->', '⟷': '<-->', '⇒': '=>', '⟹': '==>', '⟺': '<=>', '⇔': '<=>', '↦': '|->',
    '⟼': '|-->', '↓': 'v', '↑': '^', '↪': '-->', '⊕': '(+)', '⊗': '(x)', '⊖': '(-)', '∘': 'o',
    '∈': ' in ', '∉': ' notin ', '⊂': ' subset ', '⊆': ' subseteq ', '⊄': ' notsubset ',
    '∩': ' cap ', '∪': ' cup ', '∖': '\\', '⟨': '<', '⟩': '>', '‖': '||', '∥': '||', '∣': '|',
    '∤': '!|', '⊥': ' perp ', '⟂': ' perp ', '†': '^dagger', '∞': 'inf', '∑': 'sum ', '∏': 'prod ',
    '∫': 'int ', '∮': 'oint ', '√': 'sqrt', '∂': 'd', '∇': 'nabla', '∅': '{}', '∀': 'forall ',
    '∃': 'exists ', '¬': '~', '∧': '^', '∨': 'v', '⋊': '|x', '⋉': 'x|', '≁': '!~', '≢': '!==',
    '≮': '!<', '≯': '!>', 'ℏ': 'hbar', 'ℓ': 'l', 'ℂ': 'C', 'ℍ': 'H', 'ℝ': 'R', 'ℤ': 'Z', 'ℙ': 'P',
    'ℕ': 'N', 'ℚ': 'Q', '⎧': '{', '⎨': '{', '⎩': '{', '⎪': '|', '⏐': '|', '⎫': '}', '⎬': '}',
    '⎭': '}', '°': ' deg', '²': '^2', '³': '^3', '¹': '^1', '½': '1/2', '§': 'S', '©': '(c)',
    '™': '(TM)', '■': '#', '▪': '*', '◦': 'o', '✓': 'ok', '✗': 'x',
    chr(0x00a0): ' ', chr(0x2009): ' ', chr(0x202f): ' ', chr(0x2002): ' ', chr(0x2003): ' ',
    chr(0xe22d): '-', chr(0xe23b): '-',   # KaTeX long-arrow / bar extension pieces
}
GREEK = {
    'α': 'alpha', 'β': 'beta', 'γ': 'gamma', 'δ': 'delta', 'ε': 'epsilon', 'ϵ': 'epsilon',
    'ζ': 'zeta', 'η': 'eta', 'θ': 'theta', 'ϑ': 'theta', 'ι': 'iota', 'κ': 'kappa', 'λ': 'lambda',
    'μ': 'mu', 'ν': 'nu', 'ξ': 'xi', 'π': 'pi', 'ρ': 'rho', 'σ': 'sigma', 'ς': 'sigma', 'τ': 'tau',
    'υ': 'upsilon', 'φ': 'phi', 'ϕ': 'phi', 'χ': 'chi', 'ψ': 'psi', 'ω': 'omega', 'Γ': 'Gamma',
    'Δ': 'Delta', 'Θ': 'Theta', 'Λ': 'Lambda', 'Ξ': 'Xi', 'Π': 'Pi', 'Σ': 'Sigma', 'Υ': 'Upsilon',
    'Φ': 'Phi', 'Ψ': 'Psi', 'Ω': 'Omega',
}
ACCENT = {chr(0x0303): '~', chr(0x0304): '-bar', chr(0x0302): '^hat', chr(0x0307): '-dot'}


def to_ascii(text, unknown):
    out = []
    for i, c in enumerate(text):
        if ord(c) < 128:
            out.append(c)
        elif c in GREEK:
            name = GREEK[c]
            prev = out[-1][-1:] if out else ''
            nxt = text[i + 1] if i + 1 < len(text) else ''
            if prev.isalnum():
                name = ' ' + name
            if nxt.isalnum() or nxt in GREEK:
                name += ' '
            out.append(name)
        elif c in ASCII:
            out.append(ASCII[c])
        elif unicodedata.category(c) == 'Mn':
            out.append(ACCENT.get(c, ''))
        else:
            d = ''.join(ch for ch in unicodedata.normalize('NFKD', c) if unicodedata.category(ch) != 'Mn')
            if d and all(ord(ch) < 128 or ch in GREEK for ch in d):
                out.append(to_ascii(d, unknown))
            else:
                unknown[c] += 1
                out.append('<U+%04X>' % ord(c))
    return re.sub(r'(?<=\S)  +(?=\S)', ' ', ''.join(out))


def main():
    pdf, out_ascii, out_utf8 = sys.argv[1:4]
    info = subprocess.run(['pdfinfo', pdf], capture_output=True, text=True).stdout
    title = (re.search(r'^Title:\s*(.*)$', info, re.M) or [None, ''])[1].strip()
    pages = read_pages(pdf)
    sizes = Counter(round(g.size, 1) for _, _, gs in pages for g in gs if g.c.strip())
    body = sizes.most_common(1)[0][0]
    laid_out = [(h, page_rows(gs)) for _, h, gs in pages]
    margin = Counter(round(r['x0']) for _, rows in laid_out for r in rows).most_common(1)[0][0]
    utf, unknown = [], Counter()
    for n, (h, rows) in enumerate(laid_out, 1):
        utf.append('----- page %d/%d -----' % (n, len(pages)))
        utf.extend(page_lines(h, rows, title, body, margin))
        utf.append('')
    text = re.sub(r'\n{3,}', '\n\n', '\n'.join(l.rstrip() for l in utf)).strip() + '\n'
    header = ('# %s\n# converted from: %s\n'
              '# ^{..} superscript, _{..} subscript, (a)/(b) inline fraction; display fractions\n'
              '# keep numerator / main line / denominator as stacked lines. [site] = citation chip.\n'
              '# Radical signs, norm bars and fraction rules are vector drawings and are lost.\n\n'
              % (title, pdf.split('/')[-1]))
    with open(out_utf8, 'w', encoding='utf-8') as f:
        f.write(header + text)
    with open(out_ascii, 'w', encoding='ascii') as f:
        f.write(to_ascii(header + text, unknown))
    if unknown:
        print('untransliterated:', ' '.join('%s(U+%04X)x%d' % (c, ord(c), k) for c, k in unknown.most_common()),
              file=sys.stderr)


if __name__ == '__main__':
    main()
