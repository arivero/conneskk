#!/usr/bin/env python3
"""Protect plain-text notation in paper/supplemental.md before pandoc, outside code and math.

The lemma files write adjoints and subscripts in plain text: T^*, (1)_{-1}. Pandoc reads the asterisks and the
underscores as emphasis markers, which removes them and sets the text between them in italics.
Usage: supplement_escape.py FILE (rewrites FILE in place).
"""
import re
import sys

MATH = re.compile(r'(\\\(.*?\\\)|\$[^$\n]+\$)')
LINK = re.compile(r'(\]\([^)\s]*\))')


def text(seg):
    seg = seg.replace('^*', '^\\*')
    seg = re.sub(r'(?<=[)\]}])_(?=[{\w-])', r'\\_', seg)
    return seg


def line(s):
    out = []
    for i, m in enumerate(MATH.split(s)):
        if i % 2:
            out.append(m)
            continue
        out.append(''.join(p if j % 2 else text(p) for j, p in enumerate(LINK.split(m))))
    return ''.join(out)


path = sys.argv[1]
fence = display = False
res = []
for s in open(path, encoding='utf-8'):
    t = s.lstrip()
    if t.startswith('```') or t.startswith('~~~'):
        fence = not fence
    elif not fence:
        opens = t.startswith('\\[') or t.startswith('$$')
        closes = '\\]' in s or s.rstrip().endswith('$$') and not (t.startswith('$$') and len(t.strip()) == 2)
        if display:
            display = not closes
        elif opens and not closes:
            display = True
        elif not opens and not s.startswith('    ') and not s.startswith('\t'):
            s = line(s)
    res.append(s)
open(path, 'w', encoding='utf-8').writelines(res)
