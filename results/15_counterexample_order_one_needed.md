# A metric triple on M_2(C) whose Dirac operator is the traceless projection commutes with every inner conjugation, so Proposition 15.10 needs order one

**Status.** Counterexample (Counterexample 15.11). Proved by Terra 6.1 in the referee report on lemma 15 (historical/reviews/2026-11-03_terra_check_15_16.md); checked by Claude Opus 5.5 by hand. Ledger row `l15_symmetry_ce`. It refutes the first version of the T0 section of lemma 15 (row `t0_unbroken_unrestricted`, status refuted: "A metric spectral triple excludes every unbroken inner gauge symmetry").

**Setting.** H = M_2(C) with the Hilbert-Schmidt product, A = M_2(C) acting by left multiplication L_a, J x = x^\\*, and D x = x - (1/2) tr(x) I.

**Statement.**

1. Applying [D, L_a] to I gives a - (1/2) tr(a) I, so [D, L_a] = 0 forces a scalar, and the triple is metric.
2. Every conjugation x -> u x u^\\* = L_u J L_u J^{-1} commutes with D.
3. The triple fails order one.

*Scope.* The statement refuted is the unrestricted claim that metric triples exclude every unbroken inner gauge symmetry. Among finite real triples with order zero and order one the restricted claim holds (15_metric_class_no_unbroken_symmetry.md).

**Proof.** Lemma 15, Counterexample 15.11; the computation is there.

**What it leaves open.** Without order one, metric triples can carry unbroken inner conjugations, so frameworks that drop order one, such as the fluctuations of lemma 19, lie outside Proposition 15.10.
