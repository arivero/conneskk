#!/usr/bin/env python3
"""Maintain INDEX.md: print an anchored table of contents, or check every relative link and anchor.

  python3 -I tools/index_links.py toc FILE [PREFIX]   print "- [heading](file#anchor)" lines, nested by level
  python3 -I tools/index_links.py check               check links in all tracked Markdown files
"""
import re, subprocess, sys, os

FENCE = re.compile(r'^\s*(```|~~~)')
HEAD = re.compile(r'^(#{1,6})\s+(.*?)\s*#*\s*$')
LINK = re.compile(r'(?<!\\)\[(?:[^\]\\]|\\.)*\]\(([^()\s]+)\)')


def headings(path):
    fence = False
    for line in open(path, encoding='utf-8'):
        if FENCE.match(line):
            fence = not fence
        elif not fence and (m := HEAD.match(line)):
            yield len(m.group(1)), m.group(2)


def plain(text):
    text = re.sub(r'\[([^\]]*)\]\([^)]*\)', r'\1', text)
    return re.sub(r'[*`]', '', text)


def slug(text):
    return re.sub(r'[^\w\- ]', '', plain(text).strip().lower(), flags=re.UNICODE).replace(' ', '-')


def anchors(path):
    seen, out = {}, set()
    for _, text in headings(path):
        s = slug(text)
        n = seen.get(s, 0)
        seen[s] = n + 1
        out.add(s if n == 0 else f'{s}-{n}')
    return out


def toc(path, prefix=''):
    seen = {}
    for level, text in headings(path):
        s = slug(text)
        n = seen.get(s, 0)
        seen[s] = n + 1
        a = s if n == 0 else f'{s}-{n}'
        print(f"{'  ' * max(level - 2, 0)}- [{plain(text)}]({prefix or path}#{a})")


# Markdown sources of generated pages: their links resolve where the page is served (paper/build_html.py).
PAGE_SOURCES = {'paper/site_overview.md': 'docs'}


def check():
    files = subprocess.run(['git', 'ls-files', '--cached', '--others', '--exclude-standard', '*.md'],
                           capture_output=True, text=True, check=True).stdout.split()
    total = bad = 0
    cache = {}
    for f in files:
        fence = False
        for no, line in enumerate(open(f, encoding='utf-8'), 1):
            if FENCE.match(line):
                fence = not fence
                continue
            if fence:
                continue
            for target in LINK.findall(line):
                if re.match(r'[a-z]+:', target):
                    continue
                total += 1
                name, _, frag = target.partition('#')
                base = PAGE_SOURCES.get(f, os.path.dirname(f))  # page sources link relative to the served folder
                dest = os.path.normpath(os.path.join(base, name)) if name else f
                ok = os.path.exists(dest)
                if ok and frag and dest.endswith('.md'):
                    ok = frag in cache.setdefault(dest, anchors(dest))
                if not ok:
                    bad += 1
                    print(f'{f}:{no}: {target}')
    print(f'{total} links, {bad} bad')
    return bad


if __name__ == '__main__':
    if sys.argv[1] == 'toc':
        toc(sys.argv[2], sys.argv[3] if len(sys.argv) > 3 else '')
    else:
        sys.exit(1 if check() else 0)
