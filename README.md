# Connes / Kaluza-Klein limits in 9, 10 and 11 dimensions: working folder

## Reading order

1. `canonical_research.md`: the consolidated paper *Nine, Ten and Eleven Dimensions* (2 Nov 2026). Claims are labelled Proved / Checked calculation / Conditional / Conjectural.
2. `research_limits/`: its derivation appendices (`research_note.md`, `solidification.md`, `nine_dimensional_construction.md`), figures and the JSON records of the finite checks.
3. `research_checks_knowledge.md`: the technical content of the Python check scripts (constructions, formulas, recorded results). The scripts themselves were removed after extraction.
4. `connes_kk_research_state.md` and `connes_kk_9_10_11_mobile.tex`: the parallel line on lens lattices, the Fermi scale and KK theory (state-of-research notes and a LaTeX paper).
5. `ascii/`: readable text of the PDF printouts (ChatGPT transcript "Connes Electrodynamics Model" and the Astra / Sol / Terra next-step reviews). `ascii/utf8/` keeps the math symbols.
6. `lemmas/`: short proofs obtained from Astra 6 (`gpt-6-astra` via codex, run one at a time), with their prompts in `lemmas/prompts/`.
7. `DUPLICATES.md`: which files and sections duplicate each other, and what was removed.
8. `STRATEGY.md`: which theorems to prove first (11/10/9 limits, towerless KK), and why.

## Not in git

PDFs and zips are ignored (`.gitignore`). The original PDFs stay in this folder; the mobile PDF of the paper is in `output/pdf/`.

## Tools

- `tools/pdf2ascii.py IN.pdf OUT_ascii.txt OUT_utf8.txt`: glyph-level PDF to text with sub/superscripts rebuilt (needs `mutool`, `pdfinfo`).
- `tools/find_duplicates.py OUT.md label=path ...`: shingle and TF-IDF duplicate finder.
