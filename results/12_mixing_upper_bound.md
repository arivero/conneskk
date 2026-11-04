# For two sectors sharing the doublet localization F, the left mixing matrix satisfies |V_ij| <= 3 K_u K_d f_i/f_j for i < j, independent of the right-hand profiles, with no universal lower bound

**Status.** Proposition (the bound in Remark 12.10). Proved by Terra 6.1 in the referee report on lemma 12 (appended to lemma 12); the cofactor step that the report names was written out by Astra 6, who checked the proof by hand (historical/reviews/2026-11-03_astra_validation_corrections.md, item 10); checked numerically by Claude Opus 5.5 (numpy: 60000 inequalities on 20000 random complex 3 x 3 pairs, no violation; a numerical check of the bound, the proof being the referee's). Ledger row `l12_mixing_bound`; the numerical medians below are row `l12_mixing`, of status numerical, stated in paper/towerless_intervals.tex. The bound is cited there as "\supp{12}, from the referee report".

**Setting.** For each sector s = u, d: M_s = F X_s G_s with F = diag(f_1 <= f_2 <= f_3) and G_s = diag(g_1^(s) <= g_2^(s) <= g_3^(s)) positive, X_s invertible with nonzero trailing minors Delta_1^(s), Delta_2^(s), and D_p^(s) as in Lemma 12.8. K_s = (1 + sqrt3 D_1^(s)/Delta_1^(s)) (1 + sqrt3 D_2^(s)/Delta_2^(s)). U_s is the left singular-vector matrix with columns in increasing order of singular value, and V = U_u^dagger U_d.

**Statement.**

1. For i < j, |V_ij| <= 3 K_u K_d f_i/f_j.
2. The bound is independent of the right-hand localization profiles G_s.
3. There is no positive universal lower bound: identical up and down matrices give V = I, also when their minors are nonzero.

*Numerical companion (Remark 12.10, numerical only).* In 500 anarchic complex samples with c^Q = (3, 2, 0.5), the medians of |V_ij|/(phi(c_i^Q)/phi(c_j^Q)) were 1.02, 0.92 and 1.09 for (ij) = (12), (23) and (13): the left mixing follows the doublet localization, |V_ij| ~ phi(c_i^Q)/phi(c_j^Q), as in the split-fermion and warped-flavour literature. The medians depend on the sampling distribution.

**Proof.** Lemma 12, Remark 12.10 and the referee report appended there; the proof is there. With H_s = M_s M_s^dagger, Cauchy-Schwarz gives |U_i3| <= a f_i/f_3, the same argument for H^{-1} gives |U_i1| <= b f_1/f_i, cofactor identities for the unitary U bound the remaining off-diagonal entries, so |U_ij| <= (1 + a)(1 + b) min(f_i/f_j, f_j/f_i), and summing the three terms of V_ij gives the bound.

**What it leaves open.** The typical size |V_ij| ~ phi_i/phi_j is a numerical observation tied to its sampling distribution; no proof of it is claimed.
