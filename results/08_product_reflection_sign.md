# In the internal-first KO-6 product of a finite KO-6 triple with the chiral interval, the bare interval reflection has sign s = -1, formally 4 + 5 = 9, for either interval convention

**Status.** Theorem (Result 5 of lemma 08), with Proposition 6 on the grading and the lift of the reflection. Proved by Astra 6 (job 08); checked by Claude Opus 5.5 in Python (numpy: of the eight choices (t, a, b) exactly two give the KO-6 signs, both with s = -1) and by Terra 6.1 by hand (historical/reviews/2026-11-03_terra_check_08_13_14.md). Ledger rows `l08_product` (it amends `l07_reflection`) and `l08_lift`. Item 3 of Theorem D of paper/towerless_intervals.tex.

**Setting.** F_0 = (A_0, H_0, D_0, J_0, Gamma_0) a finite real KO-6 triple; the interval or its scalar-algebra truncation, with J_I = diag(alpha, beta) K and J_I D_I = t D_I J_I (lemma 07); the internal-first product D_F = D_0 (x) 1 + Gamma_0 (x) D_I, Gamma_F = Gamma_0 (x) Gamma_I, and the grading-twisted real structures J_{a,b} = (J_0 Gamma_0^a) (x) (J_I Gamma_I^b), a, b in {0, 1}.

**Statement.**

1. (Theorem 5) The standard KO-6 conditions force a = 0 and t(-1)^b = -1, and the induced reflection U = 1 (x) sigma satisfies U J_F = -J_F U. For t = +1 the required twist is b = 1, J_F = J_0 (x) (J_I Gamma_I), the formula of lemma 06; for t = -1 it is b = 0. Changing J_I to J_I Gamma_I while adjusting the twist leaves J_F unchanged up to phase.
2. A KO-0 factor leaves the KO-degree unchanged, so F_0 must already have degree six in this even-even construction; an odd internal triple times an even interval stays odd.
3. (Proposition 6) The interval grading alone cannot be the total KO-6 grading for such J; the product grading must be Gamma_0 (x) Gamma_I. The twisted lift U_c = Gamma_0^c (x) sigma has U_c J_F = (-1)^c t(-1)^b J_F U_c, and [U_1, D_F] = 0 iff D_0 = 0. Transport between equivalent product conventions preserves s, so keeping the bare symbol 1 (x) sigma after a change of convention can mean choosing a different involution.
4. Multiplying J_F by Gamma_F also flips s, and changes the signs to (-, -, -), outside the standard KO-6 convention.

*Scope.* The bare reflection 1 (x) sigma in the internal-first convention with the standard KO-6 signs. The general formula s = t(-1)^b holds, with t and b tied together by those signs.

**Proof.** Lemma 08, Results 5 and 6; the proofs are there. J_{a,b}^2 = (-1)^a, J_{a,b} (Gamma_0 (x) D_I) = -t(-1)^b (Gamma_0 (x) D_I) J_{a,b}, and sigma J_I = t J_I sigma, sigma Gamma_I = -Gamma_I sigma give U J_{a,b} = t(-1)^b J_{a,b} U.

**What it leaves open.** Selecting the bare reflection is an additional restriction: a product with fixed J_F also admits a particle-preserving involution of sign +1 (08_counterexample_both_signs_fixed_data.md). The literal collapse of the interval leaves no light fermions, so neither 9 nor 11 is established as the dimension of a surviving heavy limit (08_nogo_literal_collapse.md).
