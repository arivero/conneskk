#!/bin/sh
# Assemble the Supplemental Material from the lemma files and referee reports, which stay the single source.
# Usage: build_supplement.sh         (letter page)
#        build_supplement.sh mobile  (same column width as the mobile papers)
set -e
cd "$(dirname "$0")/.."
OUT=paper/supplemental.md
: > "$OUT"
part() { printf '\n\n# Part %s\n\n' "$1" >> "$OUT"; sed -E 's/^(#{1,5}) /#\1 /' "$2" >> "$OUT"; }
for n in 03 05 06 07 08 09 10 11 12 13 14 15 16 18; do part "$n" lemmas/${n}_*.md; done
part 19 lemmas/19_*.md
part "L (literature check and record of searches)" LITERATURE.md
part "R1 (assessment of Farsi-Latremoliere, with the counterexample to their Theorem 3.4)" reviews/2026-11-03_farsi_latremoliere_assessment.md
part "R2 (referee report, lemmas 08, 13, 14)" reviews/2026-11-03_terra_check_08_13_14.md
part "R3 (referee report, lemmas 15, 16)" reviews/2026-11-03_terra_check_15_16.md
part "R4 (referee report, lemma 18, two sheets, framework note)" reviews/2026-11-03_terra_check_18_16b.md
part "R5 (referee report, main draft and note)" reviews/2026-11-03_terra_check_paper_note.md
# unicode-math needs braces around font commands in sub- and superscripts
perl -i -pe 's/([\^_])\\(mathcal|mathbb|mathrm|mathsf|mathfrak|mathbf|operatorname|text)(\{[^{}]*\}| *[A-Za-z])/$1\{\\$2$3\}/g' "$OUT"
HDR=paper/.supp_header.tex
cat > "$HDR" <<'H'
\usepackage{mathtools}
\usepackage{fvextra}
\DefineVerbatimEnvironment{Verbatim}{Verbatim}{breaklines=true,breakanywhere=true,fontsize=\footnotesize}
\fvset{breaklines=true,breakanywhere=true}
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
\sloppy
\emergencystretch=3em
\allowdisplaybreaks
H
if [ "$1" = mobile ]; then
  GEO="paperwidth=270pt,paperheight=585pt,textwidth=246pt,textheight=540pt,top=18pt,left=12pt,headheight=0pt,headsep=0pt,footskip=14pt"; NAME=supplemental_mobile
else
  GEO="letterpaper,margin=1in"; NAME=supplemental
fi
pandoc "$OUT" -f markdown+tex_math_single_backslash+tex_math_double_backslash-raw_tex-implicit_figures \
  --pdf-engine=xelatex --no-highlight --toc --toc-depth=1 -H "$HDR" \
  -V documentclass=article -V fontsize=10pt -V geometry:"$GEO" -V mainfont="Latin Modern Roman" -V colorlinks=false \
  -M title="Supplemental Material: Finite spectral triples as towerless intervals" -M date="Draft, 3 November 2026" \
  -o paper/$NAME.pdf
