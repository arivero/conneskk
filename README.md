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
?- self_checked_only(C).                         % every recorded checker is also an author
?- unchecked(C).                                  % proved or conditional with no recorded checker
?- open_items(X).                                % conjectures, open strategy items, open contradictions, missing records
?- show(l12_towerless).                          % statement, status and location
```

Facts: `claim/5`, `source/3`, `depends/2`, `hypothesis/2`, `attempted_by/2`, `checked_by/3`, `overturn/2`, `strategy/3`, `addresses/2`, `contradiction/5` (documented at the top of the file). The ledger is edited by hand; new lemmas add their facts there.

## Reading order

The live set, read by agents and by readers:

1. `STRATEGY.md`: the question, hypothesis H, the ranked items and what would count against H.
2. `lemmas/`: the proofs, one file per lemma (01 to 40; 31 to 40 are the eleven-dimensional line, moved here on 4 Nov 2026), with [lemmas/README.md](lemmas/README.md) as the table of their main statements; every proved statement is a row of `ledger.pl`.
3. `results/`: one file per result, with statement, hypotheses, scope, status and the place of the proof ([results/README.md](results/README.md)).
4. `paper/`: the papers and notes (REVTeX; `make` builds the Phys Rev two-column PDF and a one-column PDF of the same width for phones; `make docs` rebuilds `docs/`), the Supplemental Material built from `lemmas/`, `results/` and `paper/` only, and the two literature records: `paper/LITERATURE.md` (prior work for each claim, with verdicts known / partial / not found) and `paper/NCG_HISTORY.md` (noncommutative geometry in particle physics and its ramifications, to November 2026, beside the closure of the Kaluza-Klein programme).
5. `current_framework.md`: background note on the current Connes et al. framework, and what truncation reaches (STRATEGY T0b). `d9_masses_fermi_qcd_steer.md`: the steer for the next paper (T13).
6. `INDEX.md`: the index of the live set by topic.

`historical/` is never read into context (AGENTS.md). It holds, as provenance: `historical/corpus/` (the files the project started from: the consolidated paper *Nine, Ten and Eleven Dimensions*, its three appendices, the finite checks and the research-state notes, all read in full on 4 Nov 2026 with the outcome in `historical/CORPUS_SALVAGE.md`); `historical/reviews/` (the referee reports, verbatim; what they established is written into the lemmas and `results/`); `historical/prompts/` (the prompts of the Astra and Terra jobs); `historical/transcripts/` (the four chat printouts); `historical/11D/` (the plan, the README with the results table and the unfinished file 06 of the eleven-dimensional line); the two dated evaluations and `DUPLICATES.md`.

## Removed sources

The folder holds text only, apart from the built PDFs in [docs/](docs/index.html), which GitHub Pages serves (`make docs` in `paper/`, run at milestones). Binaries, code and duplicated developments were removed after their content was written out (details and recovery commits in [historical/DUPLICATES.md](historical/DUPLICATES.md)):

- zips: unpacked; zip A tree in commit 54445a4, zip B tree in `historical/corpus/`;
- chat PDFs: `historical/transcripts/`, checked against the PDFs (see the header of each transcript);
- mobile PDF of the paper: typeset copy of `historical/corpus/canonical_research.md`;
- check scripts: `historical/corpus/research_checks_knowledge.md`, code in commit 54445a4;
- JSON check records and figures: `historical/corpus/research_checks_knowledge.md` §7 and text descriptions in place of the figures;
- the LaTeX paper `connes_kk_9_10_11_mobile.tex`: a condensation of `historical/corpus/connes_kk_research_state.md`, into which its unique sentences and references were merged;
- conversion and duplicate-finding tools: `git show 24bb2c6:tools/pdf2ascii.py`, `git show 24bb2c6:tools/find_duplicates.py`.
