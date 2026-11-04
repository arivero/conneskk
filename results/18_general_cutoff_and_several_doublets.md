# The top-only Taylor result extends to nonnegative compactly supported cutoffs, and with several heavy doublets the Taylor W mass tends to zero whenever a complete massless doublet is retained

**Status.** Propositions 12 and 13 of lemma 18. Proved by Terra 6.1 in the referee report on lemma 18 (historical/reviews/2026-11-03_terra_check_18_16b.md); checked by Claude Opus 5.5 in Python (the Taylor ratio and the pole root at large x). Ledger row `l18_several`.

**Setting.** Proposition 12: nonnegative smooth compactly supported f with f(0) > 0, with the top-only data of 18_top_only_w_mass_at_fixed_cutoff.md. Proposition 13: the heat cutoff; P the total particle-trace weight of complete massless doublets; heavy doublet i of weight d_i > 0 with one Dirac member of mass m_i and one massless member, x_i = m_i^2/Lambda^2; g, h_x, A and w as in Proposition 4.

**Statement.**

1. (Proposition 12) The formulas of Proposition 4 hold with A_f(x) = (2/x) int_0^x z f(z) dz and w_f(x) = (3/x^3) int_0^x z^2 f(z) dz, so M_{W,Taylor}^2/Lambda^2 ~ (int_0^infinity z f(z) dz)/(f(0) x). This includes cutoffs flat near zero. For a nonanalytic cutoff there need be no analytic continuation defining the pole.
2. (Proposition 13) C_W(y) = (Lambda^2/(4 pi^2)) (P g(y) + sum_i d_i h_{x_i}(y)) and M_{W,Taylor}^2/Lambda^2 = (3/2) (sum_i d_i A(x_i))/(P + sum_i d_i w(x_i)).
3. For finitely many doublets with P > 0 and all x_i -> infinity, the Taylor mass tends to zero.
4. If P = 0 and all x_i = x, M_{W,Taylor}^2 ~ m^4/(2 Lambda^2), the form factor has a unique positive pole with M_{W,pole}^2 ~ m^2/2, and the whole unnormalized kernel tends to zero at every fixed Euclidean momentum.

*Scope.* For P = 0 the divergent Taylor and pole scales differ, and neither alone establishes a healthy limiting gauge theory.

**Proof.** Lemma 18, Propositions 12 and 13; the proofs are there. Proposition 12 approximates f, with its derivatives, by real combinations of e^{-nz}.

**What it leaves open.** In the families treated in lemma 18, a heavy W and Z at fixed cutoff is found only without a massless complete doublet, and the physical quality of such limits is open (lemma 18, consequence for T5b; 18_fully_massive_family.md).
