# The spacetime grading twists J_M versus J_M gamma_M in the two odd reductions do not select the finite involution, since both reconstructions use the same J_M

**Status.** Proposition (Result 9 of lemma 08), with Proposition 10 on the identification of charge conjugation. Proved by Astra 6 (job 08); checked by Claude Opus 5.5 by hand and by Terra 6.1 by hand (historical/reviews/2026-11-03_terra_check_08_13_14.md). Ledger rows `l08_spacetime` and `l08_chargeconj`. First sentence of item 5 of Theorem D of paper/towerless_intervals.tex.

**Setting.** A four-dimensional Euclidean spacetime triple with J_M^2 = -1, J_M D_M = D_M J_M, J_M gamma_M = gamma_M J_M; an odd reduction (d, j_s) with j_s^2 = s, j_s d = s d j_s of a finite KO-6 triple F = T_s x P_k with J_F = j_s (x) (B_s K), B_- = -i sigma_2, B_+ = sigma_1; D_{M x T_s} = D_M (x) 1 + gamma_M (x) d.

**Statement.**

1. (Proposition 9) The even-odd convention of lemma 06 requires J_{M x T_s} = (J_M gamma_M^{a_s}) (x) j_s with (-1)^{a_s} = s, so J_{4+5} = (J_M gamma_M) (x) j_5 and J_{4+7} = J_M (x) j_7; this real structure squares to -s, giving KO-1 for s = -1 and KO-3 for s = +1.
2. The unitary V = P_+^M (x) 1 (x) 1 + P_-^M (x) 1 (x) sigma_1 identifies (M x T_s) x P_k with M x F and sends (J_M gamma_M^{a_s}) (x) j_s (x) B_s K to J_M (x) J_F, the factor gamma_M^{a_s} cancelling because sigma_1 B_s = s B_s sigma_1. So both reconstructions use the same original J_M, and the different spacetime factors are required by the product rules.
3. (Proposition 10) In the conventions of Chamseddine-Connes-Marcolli (sections 3.1, 3.2, 3.5.2) and of van den Dungen-van Suijlekom (Example 2.1, Definition 2.3), the Euclidean charge conjugation is J_M, with signs (-, +, +), and J_M gamma_5 is the other even convention. Lorentzian charge conjugation, C_L = -i gamma_E^0 C_E in a common basis with C_L^2 = 1 and C_L gamma_5 = -gamma_5 C_L, is neither of the two Euclidean operators.

*Scope.* The identification of charge conjugation fixes the starting spacetime convention; by item 2 it does not fix the finite involution.

**Proof.** Lemma 08, Results 9 and 10; the proofs are there.

**What it leaves open.** The choice of the lift of the L/R reflection remains additional data (08_counterexample_both_signs_fixed_data.md).
