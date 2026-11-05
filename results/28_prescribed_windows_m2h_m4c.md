# On the disc bundle X of Lambda^2_- over S^4, whose smooth functions have independent values on the zero section S^4 and on the boundary CP^3, prescribed rank-eight windows at the two ends compress real functions to maps that generate M_2(H) + M_4(C) at every localization scale

**Status.** Theorem (Theorem 28.21), with Proposition 28.8. Proved by Astra 6, job 28 (Theorem 13 and Proposition 1). Ledger rows `l28_prescribed` and `l28_endpoints`. Cited in the table of paper/connes_kk_dictionary_note.tex.

**Setting.** G = Sp(2), K = Sp(1)_a x Sp(1)_b and H = Sp(1)_a x U(1)_b, so that G/K = S^4, K/H = S^2 and G/H = CP^3. X is the disc bundle of Lambda^2_- over S^4, with zero section S^4 and boundary CP^3; away from the zero section X = (0, l] x CP^3, with radial coordinate x and S^2 fibres of radius rho(x). P_y = (1 + y_a Gamma_a)/2, p_z <= P_{pi(z)} is the tautological rank-one projector, and chi_0, chi_l are normalized radial profiles supported in disjoint eps-neighbourhoods of the two ends.

**Statement.**

1. (Proposition 28.8) Restriction C^infinity(X, R) -> C^infinity(S^4, R) (+) C^infinity(CP^3, R) is surjective, and in normal coordinates a(y, v) = a(y, 0) + O(|v|), uniformly on bounded subsets of C^1(X).
2. (Theorem 28.21) U_0 v = sqrt(2) chi_0 P_y v and U_l v = 2 chi_l p_z v are isometries into L^2(X; C^4) (+) L^2(X; C^4).
3. Real functions compressed by them generate M_2(H) + M_4(C) at every eps, and the compression differs from Q_B (+) Q_Y by at most C eps ||a||_{C^1}.

*Scope.* The window is an input, so this proves the connected-space mechanism without Conjecture 28.6. In Example 16.9 the second sheet and the restriction to S^4 were inputs, and X is a connected source for them. Allowing nonlocal smoothing perturbations, (1 - P) D (1 - P) + P d P makes such a window reducing, which enlarges the operator class and keeps the window as input. The choices of X, of E = S^3(S), of the hedgehog, of the wall condition and of the doubling stay inputs (lemma 28, balance against Proposition 6 of lemma 24).

**Proof.** Lemma 28, Proposition 28.8 and Theorem 28.21; the proofs are there.

**What it leaves open.** A window from an actual local operator is Conjecture 28.6 (28_conjecture_window.md), proved in lemma 29 for case (b) and for case (a) at rho = 1 (29_window_case_b.md, 29_window_case_a.md), with the limit of the compression in 29_compression_to_endpoint_maps.md. The statement concerns compression maps, and generated algebras need not follow them (28_counterexample_generation_discontinuous.md). The connector, the quaternionic grading axis and the selection of the two Hom spaces stay inputs, and T0 stays open, with this as a candidate for its first half.
