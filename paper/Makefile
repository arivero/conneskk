# Each paper in two forms: Phys Rev two-column, and one column of the same width for phones.
PAPERS = towerless_intervals chiral_limit_note
all: $(PAPERS:%=%.pdf) $(PAPERS:%=%_mobile.pdf)

define build
	pdflatex -interaction=nonstopmode $(2) $(3) >/dev/null || true
	bibtex $(1) >/dev/null || true
	pdflatex -interaction=nonstopmode $(2) $(3) >/dev/null || true
	pdflatex -interaction=nonstopmode $(2) $(3) >/dev/null
endef

%_mobile.pdf: %.tex towerless_intervals.bib
	$(call build,$*_mobile,-jobname=$*_mobile,'\def\mobile{}\input{$*}')

%.pdf: %.tex towerless_intervals.bib
	$(call build,$*,,$*)

clean:
	rm -f *.aux *.log *.bbl *.blg *.out *Notes.bib
