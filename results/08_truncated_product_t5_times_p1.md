# The scalar-algebra truncated product F_0 x I_l is exactly T_5(m) x P_1, with d_5 = D_0 + m Gamma_0 and j_5 = J_0 Gamma_0

**Status.** Theorem (Result 7 of lemma 08). Proved by Astra 6 (job 08); checked by Claude Opus 5.5 in Python (numpy: R^\\* U D_F R = D_0 + m Gamma_0, R^\\* U J_F R = J_0 Gamma_0, KO-5 signs) and by Terra 6.1 by hand, who noted that it concerns the scalar-algebra truncation (historical/reviews/2026-11-03_terra_check_08_13_14.md). Ledger row `l08_reconcile`. Item 4 of Theorem D of paper/towerless_intervals.tex.

**Setting.** F_0 a finite real KO-6 triple as in Result 5; the minimal truncation of the chiral interval with its algebra restricted to scalars, and the phase chosen so that

    D_F = D_0 (x) 1 + m Gamma_0 (x) sigma_1,   Gamma_F = Gamma_0 (x) sigma_3,   J_F = J_0 (x) (sigma_3 K),

with U = 1 (x) sigma_1 and P_1 = (C, C, 0, K) (point algebra R for real algebras).

**Statement.**

1. F is isomorphic to T_5(m) x P_1, with T_5(m) = (A_0, H_0, d_5 = D_0 + m Gamma_0, j_5 = J_0 Gamma_0); d_5 is self-adjoint, j_5^2 = -1, j_5 d_5 = -d_5 j_5, [d_5, a] = [D_0, a], and order zero and first order descend.
2. The unitary R x = P_+^0 x (x) e_+ + P_-^0 x (x) e_- onto H_{F,+}, with the identification (x, y) -> Rx + URy, gives D_F = [[0, d_5], [d_5, 0]], Gamma_F = diag(1, -1) and J_F(x, y) = (-j_5 y, j_5 x): the odd-odd product with auxiliary matrix B = -i sigma_2.
3. More generally, any admissible involution of a standard KO-6 triple gives d = (UD)|_{H_+}, j = (UJ)|_{H_+} with j^2 = s, jd = s dj, so F = T_5 x P_1 for s = -1 and F = T_7 x P_7 for s = +1, with auxiliary matrices -i sigma_2 and sigma_1.
4. The two-dimensional space of the even KO-0 interval becomes the auxiliary doubling space after reorganizing the product, and the interval mass enters d_5; the point itself has a one-dimensional Hilbert space and zero Dirac operator.

*Scope.* The scalar-algebra truncation. With the full compressed two-sheet algebra the inherited data fail first order (08_counterexample_pointwise_reality_first_order.md). Because the point has zero Dirac operator, the distinction between P_1 and P_7 includes a choice of KO label.

**Proof.** Lemma 08, Result 7; the proof is there, by direct calculation of R^\\* U D_F R and R^\\* U J_F R.

**What it leaves open.** The reconciliation holds at each finite l. The literal collapse l -> 0 of this product leaves no light sector at fixed energy (08_nogo_literal_collapse.md), so retaining one needs additional dynamics or a modified limiting prescription.
