# Connes / Kaluza-Klein limits in 9, 10 and 11 dimensions: working folder

The deep index of developments is [INDEX.md](INDEX.md). The machine-readable ledger of claims, dependencies, checks and contradictions is [ledger.pl](ledger.pl).

## Results and review status

The supersymmetric extension of the 2004 critical-dimension proposal compares two geometric measurements of scalar curvature. On every closed Riemannian manifold of dimension $d>2$, the ordinary Hodge residue gives $-(d-2)/24$ and the residue relative to the scalar sector gives $-(d-2)/8$. In dimensions 26 and ten, respectively, their negatives equal the curvature measured by small geodesic balls. The paper identifies which other operators share the coefficients and why scalar-flat metrics cannot distinguish them. [Paper](docs/susy_curvature_residue.html) · [PDF](docs/susy_curvature_residue.pdf) · [2004 original](https://a.rivero.nom.es/research/0409022.pdf)

The project uses established monopole spectra, anomaly descent and flux compactification to test specified actions. Its finite tensor fit has two branches. A separate calculation gives the change in the colour-octet mass when the dilaton is released. The first result is numerical. The second follows from a constrained quadratic form for one colour factor. A full nonround product has additional weak energy. The literature record gives the precedent and the assumptions for each of results 59–108. Priority for these particular constructions remains open. [Result-by-result comparisons](paper/LITERATURE.md#comparisons-for-results-59108) · [Octet calculation](results/99_nonround_hopf_colour_gap_and_level_crossing.md)

A ledger grade of `proved` or `conditional` describes the statement. Its `checked_by` rows give the scope of the review. On 24 November 2026, 347 of 569 such claims had exactly one named non-author checker in those rows, including 190 with Opus 5.5 alone. The count merges known aliases of the same model and includes explicitly partial checks. Each of the 168 claims originally awaiting review now has a named non-author check. The three fitted premises reproduce in Python/SciPy and 47 further claims still depend on them. Independent human review remains open. [Response to the eleven observations](paper/NUMERICAL_CHECKS.md#response-to-the-review-of-20-november) · [Ledger](ledger.pl)

## Querying the ledger

SWI-Prolog 9.2.9 (`swipl`; here a user-local install in `~/.local/opt/swipl`).

```
swipl -g run_tests -t halt ledger.pl            # consistency tests
swipl ledger.pl
?- falls_if_false(hyp(ccm_relation), C).        % what rests on a hypothesis or claim
?- numerical_only(C).                            % claims backed only by a numerical check
?- language_not_recorded(C).                     % computations whose tool the source omits
?- self_checked_only(C).                         % every recorded checker is also an author
?- non_author_checkers(C, [Model]).               % a single named non-author checker
?- unchecked(C).                                  % proved or conditional with no recorded checker
?- open_items(X).                                % conjectures, open strategy items, open contradictions, missing records
?- show(l12_towerless).                          % statement, status and location
```

Facts: `claim/5`, `source/3`, `depends/2`, `hypothesis/2`, `attempted_by/2`, `checked_by/3`, `overturn/2`, `strategy/3`, `addresses/2`, `contradiction/5` (documented at the top of the file). The ledger is edited by hand; new lemmas add their facts there.

## Reading order

The live set, read by agents and by readers:

1. `STRATEGY.md`: the question, hypothesis H, the ranked items and what would count against H.
2. `lemmas/`: the proofs, one file per lemma (01 to 53, job 04 parked; 31 to 40 are the eleven-dimensional line, moved here on 4 Nov 2026), with [lemmas/README.md](lemmas/README.md) as the table of their main statements; every proved statement is a row of `ledger.pl`.
3. `results/`: one file per result, with statement, hypotheses, scope, status and the place of the proof. Start from the [reading routes](results/README.md#reading-routes) or run `python3 -I tools/read_step.py` to list the questions. The [full catalogue](results/README.md#all-results) includes the specialised cases.
4. `paper/`: the papers and notes (REVTeX; `make` builds the Phys Rev two-column PDF and a one-column PDF of the same width for phones; `make docs` rebuilds `docs/`), the Supplemental Material built from `lemmas/`, `results/` and `paper/` only, and the two literature records: `paper/LITERATURE.md` (prior work for each claim, with verdicts known / partial / not found) and `paper/NCG_HISTORY.md` (noncommutative geometry in particle physics and its ramifications, to November 2026, beside the closure of the Kaluza-Klein programme).
5. `current_framework.md`: background note on the current Connes et al. framework, and what truncation reaches (STRATEGY T0b). `d9_masses_fermi_qcd_steer.md`: the steer for the next paper (T13).
6. `INDEX.md`: the index of the live set by topic.
7. Open directions: the [GitHub issues](https://github.com/arivero/conneskk/issues) of the repository.

`historical/` is never read into context (AGENTS.md). It holds, as provenance: `historical/corpus/` (the files the project started from: the consolidated paper *Nine, Ten and Eleven Dimensions*, its three appendices, the finite checks and the research-state notes, all read in full on 4 Nov 2026 with the outcome in `historical/CORPUS_SALVAGE.md`); `historical/reviews/` (the referee reports, verbatim; what they established is written into the lemmas and `results/`); `historical/prompts/` (the prompts of the Astra and Terra jobs); `historical/transcripts/` (the four chat printouts); `historical/11D/` (the plan, the README with the results table and the unfinished file 06 of the eleven-dimensional line); the two dated evaluations and `DUPLICATES.md`.

## HTML edition

The [integrated discussion](docs/index.html) links the shared themes to complete HTML editions of the papers, alongside their PDFs and supplements. From the repository root, `make -C paper html` regenerates the site from the LaTeX papers, bibliography, `paper/site_overview.md`, and the shared stylesheet. It needs Python 3 and Pandoc 3.1 or later; equations are rendered as MathML without a network dependency. Three SVG plots are generated from the formulas by `paper/figures.py`, with their assumptions and source links in the discussion. The build checks source sections, result headings, equations, citations, labels, local links and plot calculations. `make -C paper docs` also rebuilds the HTML when rebuilding the PDFs.

The illustrated graduate lecture includes fourteen solved exercises on the point-particle limit, toroidal winding and the five-, six- and seven-dimensional examples. The last two exercises compute a fermion determinant on a doubly wrapped weak sphere and test how auxiliary gauge charge compensates the Hopf spin sign. From a checkout, `make -C paper lecture` builds the print and mobile handouts. The lecture illustrations use NumPy and Matplotlib. [Lecture](docs/kk_strings_lecture.html) · [Print](docs/kk_strings_lecture.pdf) · [Mobile](docs/kk_strings_lecture_mobile.pdf)

The weak-root phase and wrapped-string determinant have a dedicated reading route. A second route follows the harmonic form reduction, the K3 charge table, the chiral interval and the spectator tensor completion. [Phase and ADE routes](results/README.md#reading-routes) · [Full supplement, Parts S239–S244](docs/supplemental.pdf)

The graduate summer lectures bring the main calculations together in eight lectures with four figures and ten solved exercises. They start with scalar resolution and finite Dirac windows, then follow particle identification, infrared matching, tensor periods, string resolution and the M-theory circle. The last lecture gives the corrected two-D0 spectral test and an exact weak-sector pole calculation. The same `lecture` target builds both PDF editions. [Summer lectures](docs/conneskk_summer_lectures.html) · [Print](docs/conneskk_summer_lectures.pdf) · [Mobile](docs/conneskk_summer_lectures_mobile.pdf)

## Removed sources

The live tree includes the Python spectrum and fit programs, website and document build scripts, and the PDFs served from [docs/](docs/index.html). The following items from the original corpus were retired after their content was written out (details and recovery commits in [historical/DUPLICATES.md](historical/DUPLICATES.md)):

- zips: unpacked; zip A tree in commit 54445a4, zip B tree in `historical/corpus/`;
- chat PDFs: `historical/transcripts/`, checked against the PDFs (see the header of each transcript);
- mobile PDF of the paper: typeset copy of `historical/corpus/canonical_research.md`;
- check scripts: `historical/corpus/research_checks_knowledge.md`, code in commit 54445a4;
- JSON check records and figures: `historical/corpus/research_checks_knowledge.md` §7 and text descriptions in place of the figures;
- the LaTeX paper `connes_kk_9_10_11_mobile.tex`: a condensation of `historical/corpus/connes_kk_research_state.md`, into which its unique sentences and references were merged;
- conversion and duplicate-finding tools: `git show 24bb2c6:tools/pdf2ascii.py`, `git show 24bb2c6:tools/find_duplicates.py`.
