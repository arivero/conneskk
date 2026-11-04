#!/bin/sh
# Assemble the Supplemental Material from lemmas/, results/ and paper/ only, which stay the single source; any part
# outside those three directories is refused, so that every PDF in docs/ is recoverable from them.
# Usage: build_supplement.sh                  (full supplement, letter page)
#        build_supplement.sh mobile           (full supplement, same column width as the mobile papers)
#        build_supplement.sh <target>         (supplement of one paper, letter page)
#        build_supplement.sh <target> mobile  (supplement of one paper, mobile width)
# A target <name> is a file paper/supplement_parts/<name>.txt with one line `part "label" file` for each part that
# the paper cites, taken from the full list below. Its comment lines `# paper: ...` and `# name: ...` give the paper
# title and the output name (paper/supplemental_<name>.pdf and paper/supplemental_<name>_mobile.pdf). The parts keep
# their labels, so that a citation of part n in the paper resolves to the heading "Part n" of its supplement.
# Code blocks, tables and displayed formulas wider than the text block are wrapped or scaled to it by
# paper/supplement_layout.tex (macros) and paper/supplement_layout.lua (pandoc filter); the text is unchanged.
# TW is the width of the text block in pt, which the filter needs to size the tables.
set -e
cd "$(dirname "$0")/.."
TARGET=; MOBILE=
for a in "$@"; do
  if [ "$a" = mobile ]; then MOBILE=mobile; else TARGET=$a; fi
done
OUT=paper/supplemental.md
: > "$OUT"
PL=; FL=; OL=
part() {
  case "$2" in lemmas/*|results/*|paper/*) ;; *) echo "part $1 is outside lemmas/, results/ and paper/: $2" >&2; exit 1 ;; esac
  printf '\n\n# Part %s\n\n' "$1" >> "$OUT"; sed -E 's/^(#{1,5}) /#\1 /' "$2" >> "$OUT"
  case "$1" in
    [0-9]*) PL="${PL:+$PL, }${1%% *}" ;;
    *) OL="${OL:+$OL, }${1%% *}" ;;
  esac
}
if [ -n "$TARGET" ]; then
LIST=paper/supplement_parts/$TARGET.txt
[ -f "$LIST" ] || { echo "no parts list $LIST" >&2; exit 1; }
PAPER=$(sed -n 's/^# paper: //p' "$LIST")
SUFFIX=$(sed -n 's/^# name: //p' "$LIST")
while IFS= read -r line; do eval "$line"; done < "$LIST"
else
for n in 03 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40; do part "$n" lemmas/${n}_*.md; done
part "H (history of the field, to November 2026)" paper/NCG_HISTORY.md
part "L (literature check and record of searches)" paper/LITERATURE.md
part "R1 (Counterexample R1 to Farsi-Latrémolière, Theorem 3.4)" results/R1_counterexample_farsi_latremoliere.md
i=0; for f in $(ls results/*.md | grep -v 'README.md\|R1_'); do i=$((i+1)); part "S$i ($(sed -n '1s/^# //p' "$f"))" "$f"; done
fi
# Plain-text adjoints and subscripts must survive pandoc emphasis parsing.
python3 -I paper/supplement_escape.py "$OUT"
# unicode-math needs braces around font commands in sub- and superscripts
perl -i -pe 's/([\^_])\\(mathcal|mathbb|mathrm|mathsf|mathfrak|mathbf|operatorname|text)(\{[^{}]*\}| *[A-Za-z])/$1\{\\$2$3\}/g' "$OUT"
HDR=paper/.supp_header.tex
cat > "$HDR" <<'H'
\usepackage{mathtools}
\usepackage{fvextra}
\usepackage{slashed}
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
if [ "$MOBILE" = mobile ]; then
  GEO="paperwidth=270pt,paperheight=585pt,textwidth=246pt,textheight=540pt,top=18pt,left=12pt,headheight=0pt,headsep=0pt,footskip=14pt"; NAME=supplemental_mobile; TW=246
else
  GEO="letterpaper,margin=1in"; NAME=supplemental; TW=469.75
fi
TITLE="Supplemental Material: Finite spectral triples as towerless intervals"
INTRO_OPT=
if [ -n "$TARGET" ]; then
  NAME=supplemental_$SUFFIX; [ "$MOBILE" = mobile ] && NAME=${NAME}_mobile
  TITLE="Supplemental Material to “$PAPER”"
  INTRO=$(mktemp)
  trap 'rm -f "$INTRO"' EXIT
  {
    printf '\\noindent This is the supplement of the paper \\emph{%s}. Its parts keep the numbers of the full Supplemental Material, so that a citation of a part in the paper refers to the part of the same name here.\n\n' "$PAPER"
    printf '\\smallskip\\noindent\\textbf{Parts contained.}'
    [ -n "$PL" ] && printf ' Lemma parts: %s.' "$PL"
    [ -n "$OL" ] && printf ' Other parts: %s (H is the history of the field, L the literature check, R1 Counterexample R1 and S the statements of results).' "$OL"
    printf '\n\n\\smallskip\\noindent The full Supplemental Material, with all parts of the project, exists as \\texttt{supplemental.pdf} and \\texttt{supplemental\\_mobile.pdf} in the same folder as this file. A reference inside a part to a part not listed here points to the full version.\n\n\\bigskip\n'
  } > "$INTRO"
  INTRO_OPT="-B $INTRO"
fi
pandoc "$OUT" -f markdown+tex_math_single_backslash+tex_math_double_backslash-raw_tex-implicit_figures-superscript-subscript \
  --pdf-engine=xelatex --no-highlight --toc --toc-depth=1 -H "$HDR" -H paper/supplement_layout.tex $INTRO_OPT \
  --lua-filter=paper/supplement_fallback.lua --lua-filter=paper/supplement_layout.lua -M supp_textwidth=$TW \
  -V documentclass=article -V fontsize=10pt -V geometry:"$GEO" -V mainfont="Latin Modern Roman" -V colorlinks=false \
  -M title="$TITLE" -M date="Draft, 3 November 2026" \
  -o paper/$NAME.pdf
