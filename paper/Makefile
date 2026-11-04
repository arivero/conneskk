# Each paper in two forms: Phys Rev two-column, and one column of the same width for phones.
PAPERS = towerless_intervals chiral_limit_note boundary_condition_note joint_limit_note connes_kk_dictionary_note generations_note real_structure_note
.PHONY: all supplement supplements docs clean
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

# Rebuild the Supplemental Material in both forms; run from the repository root by the script.
supplement:
	cd .. && sh paper/build_supplement.sh && sh paper/build_supplement.sh mobile

# One Supplemental Material for each paper, in both forms, from the parts list supplement_parts/<name>.txt.
# The output names are supplemental_<name>.pdf and supplemental_<name>_mobile.pdf, with <name> = towerless for the main paper.
supplements:
	cd .. && for t in $(PAPERS); do sh paper/build_supplement.sh $$t && sh paper/build_supplement.sh $$t mobile || exit 1; done

# Copy all PDFs to the folder served by GitHub Pages. Run at milestones, since PDFs are binaries in git.
docs: all supplement
	cp $(PAPERS:%=%.pdf) $(PAPERS:%=%_mobile.pdf) supplemental.pdf supplemental_mobile.pdf ../docs/

clean:
	rm -f *.aux *.log *.bbl *.blg *.out *Notes.bib
