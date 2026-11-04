# The gauge-covariant lowest-mode reduction of the massless mixed interval still gives M_spec^2 = (3/5) M_KK^2

**Status.** Counterexample (Result 6 of lemma 14). Proved by Astra 6 (job 14); checked by Claude Opus 5.5 by hand (agreement with lemma 13, Result 6: c_L = 8/(3 pi), c_R = 4/(3 pi)) and by Terra 6.1 by hand (historical/reviews/2026-11-03_terra_check_08_13_14.md). Ledger row `l14_three_fifths`. Cited after Proposition F of paper/towerless_intervals.tex.

**Setting.** Gauge group U(1), with d_x A_mu(0) = 0, A_mu(l) = 0 and the complementary A_5(0) = 0, d_x A_5(l) = 0; retained A_mu = a_mu(y) cos(kappa x) and A_5 = b(y) sin(kappa x), kappa = pi/(2l). One charge-one fermion with the mixed conditions and scalar bulk mass M; lambda its lowest positive vertical eigenvalue; c_L = int p_L^2 cos(kappa x) dx and c_R = int p_R^2 cos(kappa x) dx.

**Statement.**

1. The vector boundary problem selects cos(kappa x), with int (f')^2/int f^2 = kappa^2, so M_KK^2 = kappa^2.
2. The retained transformations epsilon = alpha(y) cos(kappa x) act by a -> a - d alpha, b -> b + kappa alpha, so the vector-scalar restriction is gauge closed.
3. The gauge-covariant light projection, with the Berry terms included, gives the quadratic action eta (c_L^2 + c_R^2) (da)^2 + 6 eta lambda^2 (c_L - c_R)^2 (a + db/kappa)^2, hence M_spec^2 = 3 lambda^2 (c_L - c_R)^2/(c_L^2 + c_R^2).
4. At M = 0, lambda = kappa, p_L = sqrt(2/l) cos(kappa x), p_R = sqrt(2/l) sin(kappa x), c_L = 8/(3 pi), c_R = 4/(3 pi), and M_spec^2 = 3 (8 - 4)^2/(8^2 + 4^2) M_KK^2 = (3/5) M_KK^2.

*Scope.* The one-fermion abelian mixed-boundary reduction at leading spectral-action order. The matrices diag(c_L, c_R) describe the coefficient of the retained vector in the induced connection, distinct from an endpoint U(1) charge assignment.

**Proof.** Lemma 14, Result 6; the proof is there. Transport W = exp(-(ib/kappa)(1 - cos kappa x)) gives Phi = lambda e^{ib/kappa} and the induced connections, from which D Phi = i Phi (c_L - c_R)(a + db/kappa) and F_L = c_L da, F_R = c_R da.

**What it leaves open.** Covariance repairs the defect of 13_nogo_fixed_compression_not_covariant.md and leaves the ratio 3/5 of the restricted computation of lemma 13 unchanged; a bulk mass can restore equality (14_matching_at_tuned_bulk_mass.md).
