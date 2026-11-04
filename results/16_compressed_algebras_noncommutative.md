# Compressing functions on a connected commutative space to a fixed spectral window gives a noncommutative finite algebra with no limit taken: M_2(C) + M_2(C) at the second level of the chiral interval and M_4(C) at level one on CP^3

**Status.** Proposition, proved by computation (Examples (b) and (c) of lemma 16). Proved by Claude Opus 5.5. Example (b) checked by Claude Opus 5.5 in Python (numpy quadrature with 23 test functions: dimensions 4 and 8, the two displayed compressions) and by Terra 6.1 by hand; example (c) checked by Terra 6.1 by hand, under Proposition 10.1 and example (c) (historical/reviews/2026-11-03_terra_check_15_16.md). Ledger rows `l16_interval_algebra` and `l10_generates_m4`; the latter, of kind counterexample, refutes an earlier T0 note (row `t0_note_overread`: compressions being operator systems would force the algebra to be produced by a limit). Item 1 of Proposition H of paper/towerless_intervals.tex.

**Setting.** An even triple (A_0, H_0, D_0, gamma_0), A_0 commuting with gamma_0 and D_0 of compact resolvent; Sigma = -Sigma finite, P_0 = 1_Sigma(D_0) of rank k; V = P_0 H_0 graded by gamma_V, d = D_0 restricted to V, Q(a) = P_0 a P_0, O_F = Q(A_0) and A_F = C^\\*(O_F) in B(V). O_F is an operator system, in general no algebra, and since Q(1) = 1, A_F is the bicommutant of O_F.

**Statement.**

1. (a) For the chiral interval with M = 0 and Sigma = {+-pi/(2l)}, O_F = C + C = A_F (lemma 05).
2. (b) For Sigma = {+-pi/(2l), +-3pi/(2l)}, with C_n = (1/l) int f cos(n pi x/l), Q(f) = (Q_L, Q_R) with Q_L = [[C_0 + C_1, C_1 + C_2], [C_1 + C_2, C_0 + C_3]] and Q_R = [[C_0 - C_1, C_1 - C_2], [C_1 - C_2, C_0 - C_3]]. O_F has dimension 4; each block ranges over all symmetric 2 x 2 matrices; and for f_1 = 1/2 + cos(pi x/l) + cos(2 pi x/l) + cos(3 pi x/l) and f_2 = 1/2 - cos(pi x/l) + cos(2 pi x/l) - cos(3 pi x/l), Q(f_1) = ([[1, 1], [1, 1]], 0) and Q(f_2) = (0, [[1, -1], [-1, 1]]). Hence A_F = M_2(C) + M_2(C), of dimension 8: the finite algebra of the interval is noncommutative at the second level.
3. (c) For the level-one Toeplitz compression on CP^3, Q(x_a) = Gamma_a/5 (Proposition 10.1) generate A_F = M_4(C) on V = C^4, the kernel of the Dolbeault-Dirac operator twisted by O(1), with d = 0 on V.

*Scope.* At fixed truncation; no limit is taken. The noncommutativity of A_F is modest, since generated algebras of compressions are in many examples full matrix algebras (Connes-van Suijlekom); the information lies in the operators commuting with all compressed functions, such as the grading in (b) and j in Example 16.9.

**Proof.** Lemma 16, Setting, examples (a) to (c); the computations are there, with Proposition 10.1 for (c) and the simplicity of M_2(C) for (b).

**What it leaves open.** With the inherited pointwise real structure these algebras fail order zero (16_nogo_inherited_reality_order_zero.md); the doubled parent restores it (16_coarse_correspondence_order_one.md).
