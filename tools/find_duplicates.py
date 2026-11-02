#!/usr/bin/env python3
"""Locate duplicated and near-duplicated sections across the research texts.

Each document is split into sections (Markdown headings, LaTeX \\section /
\\subsection, or pages for PDF-derived text). Math and markup are stripped so
TeX, Unicode and ASCII renderings of the same prose compare equal; prose is
compared through word 5-gram shingles.

    containment(A, B) = |A & B| / min(|A|, |B|)

usage: find_duplicates.py OUT.md DOC [DOC ...]     (DOC may be label=path)
"""
import itertools
import re
import sys
from collections import defaultdict

K = 5                 # shingle length in words
MIN_SHARED = 12       # ignore pairs sharing fewer shingles than this
REPORT_AT = 0.30      # report section pairs with containment at or above this
PARA_MIN_WORDS = 25   # verbatim paragraph repeats shorter than this are ignored


def strip_markup(text, kind):
    if kind == 'md':
        text = re.sub(r'\A---\n.*?\n---\n', '', text, flags=re.S)          # YAML front matter
        text = re.sub(r'```.*?```', ' ', text, flags=re.S)
        text = re.sub(r'\$\$.*?\$\$', ' ', text, flags=re.S)
        text = re.sub(r'\\\[.*?\\\]', ' ', text, flags=re.S)
        text = re.sub(r'\$[^$\n]*\$', ' ', text)
        text = re.sub(r'\\\(.*?\\\)', ' ', text, flags=re.S)
        text = re.sub(r'!\[[^\]]*\]\([^)]*\)', ' ', text)
        text = re.sub(r'\[([^\]]*)\]\([^)]*\)', r'\1', text)
    elif kind == 'tex':
        text = re.sub(r'(?<!\\)%.*', '', text)
        text = re.sub(r'\\begin\{(equation|align|gather|multline)\*?\}.*?\\end\{\1\*?\}', ' ', text, flags=re.S)
        text = re.sub(r'\\\[.*?\\\]', ' ', text, flags=re.S)
        text = re.sub(r'\$\$.*?\$\$', ' ', text, flags=re.S)
        text = re.sub(r'\$[^$]*\$', ' ', text)
    else:  # text extracted from a PDF: drop indented display lines and script markup
        text = '\n'.join(l for l in text.splitlines() if not re.match(r'\s{8,}', l))
        text = re.sub(r'[\^_]\{[^}]*\}|[\^_]\S', ' ', text)
    text = re.sub(r'\\[a-zA-Z]+\*?', ' ', text)
    return text


def tokens(text):
    return re.findall(r'[a-z]{2,}', text.lower())


def shingles(words):
    return {' '.join(words[i:i + K]) for i in range(len(words) - K + 1)}


def split_sections(path, kind):
    lines = open(path, encoding='utf-8', errors='replace').read().splitlines()
    heads = []
    if kind == 'md':
        in_code = False
        for i, l in enumerate(lines):
            in_code ^= l.startswith('```')
            if not in_code and re.match(r'#{1,6} ', l):
                heads.append((i, l.lstrip('#').strip()))
    elif kind == 'tex':
        for i, l in enumerate(lines):
            m = re.match(r'\s*\\(sub)*section\*?\{(.*)\}', l)
            if m:
                heads.append((i, m.group(2)))
            elif re.match(r'\s*\\begin\{(abstract|document)\}', l):
                heads.append((i, l.strip()))
    else:
        for i, l in enumerate(lines):
            m = re.match(r'----- page (\d+)/\d+ -----', l)
            if m:
                heads.append((i, 'page ' + m.group(1)))
    if not heads or heads[0][0] > 0:
        heads.insert(0, (0, '(preamble)'))
    sections = []
    for (start, title), (end, _) in zip(heads, heads[1:] + [(len(lines), None)]):
        body = '\n'.join(lines[start:end])
        words = tokens(strip_markup(body, kind))
        sections.append({'title': title, 'line': start + 1, 'end': end, 'words': words,
                         'sh': shingles(words), 'raw': body})
    return sections


def kind_of(path):
    return 'md' if path.endswith('.md') else 'tex' if path.endswith('.tex') else 'txt'


def paragraphs(sec, kind):
    for block in re.split(r'\n\s*\n', strip_markup(sec['raw'], kind)):
        words = tokens(block)
        if len(words) >= PARA_MIN_WORDS:
            yield ' '.join(words)


STOP = set("""the and for that with this are from not its has have but can one two three which their
than into does only also when then there these those they them such each other more most same any
all both what where while would could should must may might been being was were will over under
between after before about given gives give still here thus because without within on in of to is
as by an be or it at we no so if do""".split())


def topical(docs, name, threshold=0.40, min_words=60):
    """Best TF-IDF cosine match of each section in every other document."""
    import math
    secs = [(di, si, s) for di, d in enumerate(docs) for si, s in enumerate(d['sections']) if len(s['words']) >= min_words]
    df = defaultdict(int)
    tfs = []
    for _, _, s in secs:
        tf = defaultdict(int)
        for w in s['words']:
            if w not in STOP and len(w) > 2:
                tf[w] += 1
        tfs.append(tf)
        for w in tf:
            df[w] += 1
    n = len(secs)
    vecs = []
    for tf in tfs:
        v = {w: (1 + math.log(c)) * math.log(n / df[w]) for w, c in tf.items()}
        norm = math.sqrt(sum(x * x for x in v.values())) or 1
        vecs.append({w: x / norm for w, x in v.items()})
    out = ['\n## Topical correspondence (reworded duplicates)\n',
           'For each section (>= %d words), its best TF-IDF cosine match in each other document, when cosine >= %.2f. '
           'This finds the same material restated in different words.\n' % (min_words, threshold),
           '| cosine | section | best match elsewhere |', '|---|---|---|']
    for i, (di, si, _) in enumerate(secs):
        best = {}
        for j, (dj, sj, _) in enumerate(secs):
            if dj == di:
                continue
            a, b = vecs[i], vecs[j]
            if len(a) > len(b):
                a, b = b, a
            c = sum(x * b.get(w, 0) for w, x in a.items())
            if c >= threshold and c > best.get(dj, (0,))[0]:
                best[dj] = (c, (dj, sj))
        for dj in sorted(best):
            c, ref = best[dj]
            out.append('| %.2f | %s | %s |' % (c, name((di, si)), name(ref)))
    return out


def carried_over(docs):
    """For documents labelled *_OLD*, how much of each section survives in the newer version."""
    out = []
    for d in docs:
        if '_OLD' not in d['label']:
            continue
        new = next(x for x in docs if x['label'] == d['label'].split('_OLD')[0])
        out += ['\n## How much of `%s` survives in `%s`\n' % (d['label'], new['label']),
                '| line | section | words | shingles carried over |', '|---|---|---|---|']
        for s in d['sections']:
            if s['sh']:
                out.append('| L%d | %s | %d | %d%% |' % (s['line'], s['title'][:80], len(s['words']),
                                                       round(100 * len(s['sh'] & new['sh']) / len(s['sh']))))
    return out


def main():
    out = sys.argv[1]
    docs = []
    for arg in sys.argv[2:]:
        label, _, path = arg.rpartition('=')
        label = label or path
        kind = kind_of(path)
        docs.append({'label': label, 'path': path, 'kind': kind, 'sections': split_sections(path, kind)})
    for d in docs:
        d['sh'] = set().union(*(s['sh'] for s in d['sections']))
        d['words'] = sum(len(s['words']) for s in d['sections'])

    R = []
    R.append('# Duplicate report (generated by tools/find_duplicates.py)\n')
    R.append('Prose is compared after removing math and markup, as word %d-gram shingles. '
             '`contain` = shared shingles / shingles of the smaller side; `jacc` = Jaccard index.\n' % K)
    R.append('## Documents\n')
    R.append('| id | document | sections | words |\n|---|---|---|---|')
    for i, d in enumerate(docs):
        R.append('| D%d | `%s` | %d | %d |' % (i, d['label'], len(d['sections']), d['words']))

    R.append('\n## Document overlap\n')
    R.append('Row document contained in column document: |row & col| / |row| (percent).\n')
    R.append('| | ' + ' | '.join('D%d' % j for j in range(len(docs))) + ' |')
    R.append('|---' * (len(docs) + 1) + '|')
    for i, a in enumerate(docs):
        cells = []
        for j, b in enumerate(docs):
            cells.append('--' if i == j else '%d' % round(100 * len(a['sh'] & b['sh']) / max(1, len(a['sh']))))
        R.append('| D%d | ' % i + ' | '.join(cells) + ' |')

    # inverted index: shingle -> sections containing it
    index = defaultdict(set)
    for di, d in enumerate(docs):
        for si, s in enumerate(d['sections']):
            for h in s['sh']:
                index[h].add((di, si))
    shared = defaultdict(int)
    for owners in index.values():
        if len(owners) > 1 and len(owners) < 40:
            for a, b in itertools.combinations(sorted(owners), 2):
                shared[a, b] += 1
    pairs = []
    for (a, b), n in shared.items():
        sa, sb = docs[a[0]]['sections'][a[1]], docs[b[0]]['sections'][b[1]]
        small = min(len(sa['sh']), len(sb['sh']))
        if n >= MIN_SHARED and small and n / small >= REPORT_AT:
            pairs.append((n / small, n / len(sa['sh'] | sb['sh']), n, a, b))
    pairs.sort(key=lambda p: (-p[0], -p[2]))

    def name(ref):
        d = docs[ref[0]]
        s = d['sections'][ref[1]]
        return 'D%d `%s` L%d "%s"' % (ref[0], d['label'], s['line'], s['title'][:70].replace('|', '/'))

    for title, keep in (('Cross-document section pairs', lambda p: p[3][0] != p[4][0]),
                        ('Repeats inside one document', lambda p: p[3][0] == p[4][0])):
        sel = [p for p in pairs if keep(p)]
        R.append('\n## %s (contain >= %.2f): %d pairs\n' % (title, REPORT_AT, len(sel)))
        R.append('| contain | jacc | shared | section A | section B |\n|---|---|---|---|---|')
        for c, j, n, a, b in sel:
            R.append('| %.2f | %.2f | %d | %s | %s |' % (c, j, n, name(a), name(b)))

    seen = defaultdict(list)
    for di, d in enumerate(docs):
        for si, s in enumerate(d['sections']):
            for p in paragraphs(s, d['kind']):
                seen[p].append((di, si))
    rep = [(p, refs) for p, refs in seen.items() if len(refs) > 1]
    rep.sort(key=lambda x: (-len(x[1]), -len(x[0])))
    R.append('\n## Verbatim repeated paragraphs (>= %d words, normalized): %d\n' % (PARA_MIN_WORDS, len(rep)))
    for p, refs in rep:
        R.append('- %d words, %d copies: %s\n  > %s ...' % (len(p.split()), len(refs),
                 '; '.join(name(r) for r in refs), ' '.join(p.split()[:24])))
    R += topical(docs, name)
    R += carried_over(docs)
    open(out, 'w', encoding='utf-8').write('\n'.join(R) + '\n')
    print('%d docs, %d section pairs, %d repeated paragraphs -> %s' % (len(docs), len(pairs), len(rep), out))


if __name__ == '__main__':
    main()
