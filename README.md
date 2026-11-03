# Connes / Kaluza-Klein limits in 9, 10 and 11 dimensions: working folder

The deep index of developments is [INDEX.md](INDEX.md). The machine-readable ledger of claims, dependencies, checks and contradictions is [ledger.pl](ledger.pl).

## Querying the ledger

SWI-Prolog 9.2.9 (`swipl`; here a user-local install in `~/.local/opt/swipl`).

```
swipl -g run_tests -t halt ledger.pl            # consistency tests
swipl ledger.pl
?- falls_if_false(hyp(ccm_relation), C).        % what rests on a hypothesis or claim
?- numerical_only(C).                            % claims backed only by a numerical check
?- language_not_recorded(C).                     % computations whose tool the source omits
?- self_checked_only(C).                         % checked only by their own author
?- open_items(X).                                % conjectures, open strategy items, open contradictions
?- show(l12_towerless).                          % statement, status and location
```

Facts: `claim/5`, `source/3`, `depends/2`, `hypothesis/2`, `attempted_by/2`, `checked_by/3`, `overturn/2`, `strategy/3`, `addresses/2`, `contradiction/5` (documented at the top of the file). The ledger is edited by hand; new lemmas add their facts there.

## Reading order

1. `canonical_research.md`: the consolidated paper *Nine, Ten and Eleven Dimensions* (2 Nov 2026). Claims are labelled Proved, Conditional or Conjectural; numerical checks name their language (Python) and the section of `research_checks_knowledge.md` that records them.
2. `research_limits/`: its derivation appendices (`research_note.md`, `solidification.md`, `nine_dimensional_construction.md`).
3. `research_checks_knowledge.md`: the finite checks behind the paper (constructions, formulas, recorded outputs).
4. `connes_kk_research_state.md`: the parallel line on lens lattices, the Fermi scale and KK theory (state-of-research notes; the LaTeX paper condensing them was merged into them).
5. `transcripts/`: text of the four chat printouts (the ChatGPT conversation "Connes Electrodynamics Model" and the Astra / Sol / Terra next-step reviews), with the cited links of each page.
6. `lemmas/`: short proofs by Astra 6 (`gpt-6-astra` via codex, one job at a time) and by Claude, with the Astra prompts in `lemmas/prompts/`.
7. `STRATEGY.md`: which theorems to prove first (11/10/9 limits, towerless KK), and why.
8. `DUPLICATES.md`: which files and sections duplicated each other, and what was removed.
9. `paper/towerless_intervals.tex`: draft paper on finite spectral triples as towerless intervals (REVTeX; `make` in `paper/` builds the Phys Rev two-column PDF and a one-column PDF of the same width for phones). `paper/chiral_limit_note.tex`: short note from lemma 17.
10. `LITERATURE.md`: prior work for each claim, with verdicts known / partial / not found.
    `current_framework.md`: background note on the current Connes et al. framework, and what truncation reaches (STRATEGY T0b).
11. `evaluation2026-11-03.md` and `reviews/`: the dated evaluation of the project and the external review of it, with our response.

## Removed sources

The folder holds text only, apart from the built PDFs in [docs/](docs/index.html), which GitHub Pages serves (`make docs` in `paper/`, run at milestones). Binaries, code and duplicated developments were removed after their content was written out (details and recovery commits in [DUPLICATES.md](DUPLICATES.md)):

- zips: unpacked; zip A tree in commit 54445a4, zip B tree in `research_limits/`;
- chat PDFs: `transcripts/`, checked against the PDFs (see the header of each transcript);
- mobile PDF of the paper: typeset copy of `canonical_research.md`;
- check scripts: `research_checks_knowledge.md`, code in commit 54445a4;
- JSON check records and figures: `research_checks_knowledge.md` §7 and text descriptions in place of the figures;
- the LaTeX paper `connes_kk_9_10_11_mobile.tex`: a condensation of `connes_kk_research_state.md`, into which its unique sentences and references were merged;
- conversion and duplicate-finding tools: `git show 24bb2c6:tools/pdf2ascii.py`, `git show 24bb2c6:tools/find_duplicates.py`.
