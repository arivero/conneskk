# The light pair of the massive chiral interval truncates to the Connes-Lott two-point space with mass lambda_0 and distance 1/lambda_0

**Status.** Theorem (Theorem 9.6). Proved by Claude Opus 5.5. Ledger row `l09_lightpair`, depending on `l05_truncation`. Theorem B of paper/towerless_intervals.tex.

**Setting.** Condition (c) with M = -mu and c = mu l > 1; P_0 the spectral projection onto +-lambda_0; u_L = (L_0, 0)/||L_0|| and u_R = (0, R_0)/||R_0|| with the profiles of Lemma 9.5 (09_spectrum_with_bulk_mass.md).

**Statement.**

1. P_0 D P_0 = lambda_0 sigma_1 and P_0 Gamma P_0 = sigma_3.
2. The compression of C(I) is Q(f) = diag(int f |u_L|^2, int f |u_R|^2), and its range is C + C, since the mean of x is below l/2 for |u_L|^2 and above l/2 for |u_R|^2.
3. The truncated end states are at Connes distance 1/lambda_0, and their pullbacks are smeared probability measures, distinct from endpoint evaluations.
4. The two-sheet distance is therefore 1/(fermion mass), as in the Standard Model finite geometry. It depends on l through lambda_0, and by Lemma 9.7, 1/lambda_0 > l for c > 1. At M = 0 it was 2l/pi (05_connes_lott_minimal_truncation.md).

*Scope.* Complex data. With the inherited real structure the full diagonal algebra fails first order (ledger statement of `l09_lightpair`; 08_counterexample_pointwise_reality_first_order.md).

**Proof.** Lemma 09, Theorem 9.6; the proof is there. D u_L = lambda_0 u_R, pointwise orthogonality of the L and R components makes Q(f) diagonal, and ||[lambda_0 sigma_1, diag(a, b)]|| = lambda_0 |a - b|.

**What it leaves open.** As whole triples the tuned family converges in the spectral propinquity to (C, C^2, m_f sigma_1) and stays at positive distance from the Connes-Lott triple (15_gap_criterion.md, Corollary 15.5). The compression and the whole triple are different objects, and both statements hold.
