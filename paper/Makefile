# Two forms of one paper: Phys Rev two-column, and one column of the same width for phones.
all: towerless_intervals.pdf towerless_intervals_mobile.pdf

towerless_intervals.pdf: towerless_intervals.tex towerless_intervals.bib
	pdflatex -interaction=nonstopmode towerless_intervals >/dev/null || true
	bibtex towerless_intervals >/dev/null || true
	pdflatex -interaction=nonstopmode towerless_intervals >/dev/null || true
	pdflatex -interaction=nonstopmode towerless_intervals >/dev/null

towerless_intervals_mobile.pdf: towerless_intervals.tex towerless_intervals.bib
	pdflatex -interaction=nonstopmode -jobname=towerless_intervals_mobile '\def\mobile{}\input{towerless_intervals}' >/dev/null || true
	bibtex towerless_intervals_mobile >/dev/null || true
	pdflatex -interaction=nonstopmode -jobname=towerless_intervals_mobile '\def\mobile{}\input{towerless_intervals}' >/dev/null || true
	pdflatex -interaction=nonstopmode -jobname=towerless_intervals_mobile '\def\mobile{}\input{towerless_intervals}' >/dev/null

clean:
	rm -f *.aux *.log *.bbl *.blg *.out *Notes.bib
