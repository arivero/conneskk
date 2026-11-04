# Results

One file per result: the statement, its hypotheses and scope, its status in the vocabulary of AGENTS.md (Theorem, Proposition, Counterexample, No-go theorem, Conjecture, conditional on a named hypothesis), where the proof is (a lemma and its numbered item, or the file itself), and who checked it (the identifiers of `ledger.pl`). A results file states; it does not prove, except for results whose only proof was in a referee report, which is then written out here.

This directory, `lemmas/` and `paper/` are the sources of every PDF in `docs/`; `paper/build_supplement.sh` refuses any other path. The reports in `historical/reviews/` are provenance only.

| file | result | status | proof |
|---|---|---|---|
| [R1_counterexample_farsi_latremoliere.md](R1_counterexample_farsi_latremoliere.md) | Theorem 3.4 of Farsi-Latrémolière (arXiv:2404.00240, J. London Math. Soc. 2026) fails as printed; anticommutation of D_h and D_v, or a relative bound, is a sufficient repair | Counterexample | here; the contradiction through Theorem 15.7 is in the main paper |
| [orientability_under_heavy_centralizer.md](orientability_under_heavy_centralizer.md) | A finite orientable four-summand parent reduces, by a heavy centralizer and the spectral projection at the gap, to a faithful three-summand triple with nonzero one-forms whose grading is at distance exactly one from every orientation cycle | Theorem (finite, explicit) | here (Terra 6.1, by hand), from the corpus construction |
