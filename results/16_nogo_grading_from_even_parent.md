# A grading inherited by compression from an even parent commutes with all compressed functions, so the grading Gamma_5 of the twistor-level-one data cannot come from the stated even parent

**Status.** No-go theorem in its scope (the grading statement of Example 16.9). From the second referee report on lemma 16 by Terra 6.1 (historical/reviews/2026-11-03_terra_check_18_16b.md); checked by Claude Opus 5.5 by hand and by Astra 6 by hand (lemma 20, Result 11, a consensus check). Ledger row `l16_grading_not_even`. Stated in the discussion after Proposition H of paper/towerless_intervals.tex.

**Setting.** A parent grading gamma, a finite-rank projection P, and the retained observables of Example 16.9 (16_twistor_level_one_m2h_m4c.md), which include Q(x_a) = Gamma_a/5.

**Statement.** Under the simultaneous requirements

1. every parent observable considered is even, [gamma, a] = 0;
2. the finite grading is inherited as g = P gamma P on PH;
3. this compression is a grading, g^2 = 1;
4. the retained observables include Q(x_a) = Gamma_a/5,

the grading g = Gamma_5 is impossible. Indeed g^2 = 1 gives ((1 - P) gamma P)^\\* ((1 - P) gamma P) = 0, so [P, gamma] = 0 and [g, Q(a)] = P [gamma, a] P = 0 for every retained even observable, while [Gamma_5, Q(x_1)] = (2/5) Gamma_5 Gamma_1 != 0. In the specified Dolbeault kernel the inherited grading is already scalar.

*Escapes (lemma 20, Result 11).* The conclusion does not exclude Gamma_5 as additional finite data or as the grading of a prealgebra. Possible changes are compressing a graded prealgebra with odd observables, restricting to the algebra commuting with the proposed grading, or constructing an additional grading. Changing the window alone does not remove the contradiction while the four hypotheses are kept.

**Proof.** Lemma 16, Example 16.9, and lemma 20, Result 11; the proofs are there.

**What it leaves open.** A parent that yields the grading of the classification and nonzero mass data (lemma 16, Consequence for T0 and T0b).
