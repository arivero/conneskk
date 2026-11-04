#!/bin/sh
# Assemble the Supplemental Material from the lemma files and referee reports, which stay the single source.
# Usage: build_supplement.sh         (letter page)
#        build_supplement.sh mobile  (same column width as the mobile papers)
# Code blocks, tables and displayed formulas wider than the text block are wrapped or scaled to it by
# paper/supplement_layout.tex (macros) and paper/supplement_layout.lua (pandoc filter); the text is unchanged.
# TW is the width of the text block in pt, which the filter needs to size the tables.
set -e
cd "$(dirname "$0")/.."
OUT=paper/supplemental.md
: > "$OUT"
part() { printf '\n\n# Part %s\n\n' "$1" >> "$OUT"; sed -E 's/^(#{1,5}) /#\1 /' "$2" >> "$OUT"; }
for n in 03 05 06 07 08 09 10 11 12 13 14 15 16 17 18; do part "$n" lemmas/${n}_*.md; done
part 19 lemmas/19_*.md
part 20 lemmas/20_*.md
part 21 lemmas/21_*.md
part 22 lemmas/22_*.md
part 23 lemmas/23_*.md
part 24 lemmas/24_*.md
part 25 lemmas/25_*.md
part 26 lemmas/26_*.md
part 27 lemmas/27_*.md
part 28 lemmas/28_*.md
part 29 lemmas/29_*.md
part 30 lemmas/30_*.md
for f in 11D/README.md 11D/0*.md 11D/1*.md; do part "11D, $(basename $f .md | tr _ ' '), referee pending" "$f"; done
part "L (literature check and record of searches)" LITERATURE.md
part "R1 (assessment of Farsi-Latremoliere, with the counterexample to their Theorem 3.4)" reviews/2026-11-03_farsi_latremoliere_assessment.md
part "R2 (referee report, lemmas 08, 13, 14)" reviews/2026-11-03_terra_check_08_13_14.md
part "R3 (referee report, lemmas 15, 16)" reviews/2026-11-03_terra_check_15_16.md
part "R4 (referee report, lemma 18, two sheets, framework note)" reviews/2026-11-03_terra_check_18_16b.md
part "R5 (referee report, main draft and note)" reviews/2026-11-03_terra_check_paper_note.md
part "R6 (referee report, no-go results and lemma 19)" reviews/2026-11-03_terra_check_nogo_19.md
part "R7 (referee report, lemmas 20 and 21, Proposition I)" reviews/2026-11-03_terra_check_20_21.md
part "R8 (referee report, lemma 22)" reviews/2026-11-03_terra_check_22.md
part "R9 (referee report, lemma 23)" reviews/2026-11-03_terra_check_23.md
part "R10 (referee report, lemma 25)" reviews/2026-11-03_terra_check_25.md
part "R11 (referee report, lemma 24)" reviews/2026-11-03_terra_check_24.md
part "R12 (referee report, lemma 26)" reviews/2026-11-03_terra_check_26.md
part "R13 (referee report, lemma 27 and additions to lemma 26)" reviews/2026-11-03_terra_check_27.md
part "R14 (Astra validation of the ledger, citations and steer note)" reviews/2026-11-03_astra_validation_corrections.md
part "R15 (Terra referee, lemma 28)" reviews/2026-11-03_terra_check_28.md
part "R16 (Terra referee, lemma 29)" reviews/2026-11-04_terra_check_29.md
part "R17 (Terra referee, lemma 30 and the joint-limit note)" reviews/2026-11-04_terra_check_30_note.md
part "R18 (assessment of the Astra audit)" reviews/2026-11-04_outside_audit_assessment.md
part "R19 (independent reading of 11D files 10 and 11)" reviews/2026-11-04_sonnet_check_11d_10_11.md
# Plain-text adjoints and subscripts must survive pandoc emphasis parsing.
python3 -I paper/supplement_escape.py "$OUT"
# unicode-math needs braces around font commands in sub- and superscripts
perl -i -pe 's/([\^_])\\(mathcal|mathbb|mathrm|mathsf|mathfrak|mathbf|operatorname|text)(\{[^{}]*\}| *[A-Za-z])/$1\{\\$2$3\}/g' "$OUT"
HDR=paper/.supp_header.tex
cat > "$HDR" <<'H'
\usepackage{mathtools}
\usepackage{fvextra}
\usepackage{unicode-math}
\setmathfont{Latin Modern Math}
\newfontfamily\fallback{DejaVu Serif}
\usepackage{newunicodechar}
\newunicodechar{∎}{\ensuremath{\blacksquare}}
\newunicodechar{≠}{{\fallback ≠}}
\newunicodechar{∩}{{\fallback ∩}}
\newunicodechar{≥}{{\fallback ≥}}
\newunicodechar{⊆}{{\fallback ⊆}}
\newunicodechar{⊕}{{\fallback ⊕}}
\newunicodechar{⊗}{{\fallback ⊗}}
\newunicodechar{σ}{{\fallback σ}}
\newfontfamily\fallbackmath{Latin Modern Math}
\sloppy
\emergencystretch=3em
\allowdisplaybreaks
H
if [ "$1" = mobile ]; then
  GEO="paperwidth=270pt,paperheight=585pt,textwidth=246pt,textheight=540pt,top=18pt,left=12pt,headheight=0pt,headsep=0pt,footskip=14pt"; NAME=supplemental_mobile; TW=246
else
  GEO="letterpaper,margin=1in"; NAME=supplemental; TW=469.75
fi
pandoc "$OUT" -f markdown+tex_math_single_backslash+tex_math_double_backslash-raw_tex-implicit_figures-superscript-subscript \
  --pdf-engine=xelatex --no-highlight --toc --toc-depth=1 -H "$HDR" -H paper/supplement_layout.tex \
  --lua-filter=paper/supplement_fallback.lua --lua-filter=paper/supplement_layout.lua -M supp_textwidth=$TW \
  -V documentclass=article -V fontsize=10pt -V geometry:"$GEO" -V mainfont="Latin Modern Roman" -V colorlinks=false \
  -M title="Supplemental Material: Finite spectral triples as towerless intervals" -M date="Draft, 3 November 2026" \
  -o paper/$NAME.pdf
