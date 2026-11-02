# Connes / Kaluza-Klein limits in 9, 10 and 11 dimensions: working folder

The deep index of developments is [INDEX.md](INDEX.md).

## Reading order

1. `canonical_research.md`: the consolidated paper *Nine, Ten and Eleven Dimensions* (2 Nov 2026). Claims are labelled Proved, Conditional or Conjectural; numerical checks name their language (Python) and the section of `research_checks_knowledge.md` that records them.
2. `research_limits/`: its derivation appendices (`research_note.md`, `solidification.md`, `nine_dimensional_construction.md`).
3. `research_checks_knowledge.md`: the finite checks behind the paper (constructions, formulas, recorded outputs).
4. `connes_kk_research_state.md`: the parallel line on lens lattices, the Fermi scale and KK theory (state-of-research notes; the LaTeX paper condensing them was merged into them).
5. `transcripts/`: text of the four chat printouts (the ChatGPT conversation "Connes Electrodynamics Model" and the Astra / Sol / Terra next-step reviews), with the cited links of each page.
6. `lemmas/`: short proofs by Astra 6 (`gpt-6-astra` via codex, one job at a time) and by Claude, with the Astra prompts in `lemmas/prompts/`.
7. `STRATEGY.md`: which theorems to prove first (11/10/9 limits, towerless KK), and why.
8. `DUPLICATES.md`: which files and sections duplicated each other, and what was removed.

## Removed sources

The folder holds text only. Binaries, code and duplicated developments were removed after their content was written out (details and recovery commits in [DUPLICATES.md](DUPLICATES.md)):

- zips: unpacked; zip A tree in commit 54445a4, zip B tree in `research_limits/`;
- chat PDFs: `transcripts/`, checked against the PDFs (see the header of each transcript);
- mobile PDF of the paper: typeset copy of `canonical_research.md`;
- check scripts: `research_checks_knowledge.md`, code in commit 54445a4;
- JSON check records and figures: `research_checks_knowledge.md` §7 and text descriptions in place of the figures;
- the LaTeX paper `connes_kk_9_10_11_mobile.tex`: a condensation of `connes_kk_research_state.md`, into which its unique sentences and references were merged;
- conversion and duplicate-finding tools: `git show 24bb2c6:tools/pdf2ascii.py`, `git show 24bb2c6:tools/find_duplicates.py`.
