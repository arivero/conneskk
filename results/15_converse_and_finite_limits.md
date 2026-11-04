# A sequence of metric spectral triples converges to (C, C^N, D_F) in the spectral propinquity iff the diameter tends to 0, the gap tends to infinity and the light-block error tends to 0, so the finite limits of connected commutative triples are exactly the triples (C, C^N, D_F)

**Status.** Theorem (Theorem 15.7), with Corollary 15.8. Proved by Claude Opus 5.5; checked by Terra 6.1 by hand (historical/reviews/2026-11-03_terra_check_15_16.md). Ledger rows `l15_converse` and `l15_finite_limits` (depending on `fl_R3`). Proposition G and its item 3 in paper/towerless_intervals.tex; the main paper reaches its contradiction with Theorem 3.4 of Farsi-Latrémolière through Theorem 15.7 (results/R1_counterexample_farsi_latremoliere.md).

**Setting.** T_n = (A_n, H_n, D_n) metric spectral triples and T_F = (C, C^N, D_F), with the conventions of lemma 15.

**Statement.**

1. (Theorem 15.7) If Lambda_spec(T_n, T_F) -> 0, then diam T_n -> 0.
2. For every R > ||D_F||, D_n has exactly N eigenvalues in [-R, R] for large n, so the gap g_n to the remaining spectrum tends to infinity (g_n is infinite if no spectrum remains).
3. There are unitaries W_n from the light space onto C^N with ||W_n D_n W_n^\\* - D_F|| -> 0 (at most 2 eps_n).
4. With Theorem 15.3: Lambda_spec(T_n, T_F) -> 0 iff diam T_n -> 0, g_n -> infinity and Delta_n -> 0.
5. (Corollary 15.8) If A_n = C(X_n) with X_n connected and the limit has finite-dimensional Hilbert space, the limit is (C, C^N, D_F), and the convergence is characterized by item 4. Every Hermitian D_F arises: on the circle of length l, -i d/dx + diag(lambda_i) on L^2(S^1_l; C^N) has the block diag(lambda_i) on constants and gap at least 2 pi/l - ||D_F||.

*Scope.* One metric, on the whole algebra. The construction in item 5 concerns ungraded triples; a grading or real structure imposes its own compatibility conditions. The class of metric triples excludes the Standard Model finite triple, where D_F commutes with the nonscalar subalgebra {(lambda, lambda, 0)}.

**Proof.** Lemma 15, Theorem 15.7 and Corollary 15.8; the proofs are there. The inner Leibniz inequality bounds the number of light eigenvalues by N through a Gram matrix; the separation of exp(i t D_n) concentrates the spectral measure of each lift within 2 eps_n of the corresponding eigenvalue of D_F; metric triples are faithful, and Theorem 15.2 gives the algebra C.

**What it leaves open.** Corollary 9.10 fits the converse (at fixed mu every eigenvalue diverges and no limit exists), and Theorem 9.8 lies outside the metric, since the diameter diverges. The truncation is a different object, which this metric does not see (lemma 15, "What this says about T0").
