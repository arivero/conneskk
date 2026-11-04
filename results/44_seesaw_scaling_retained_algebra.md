# Along the seesaw scaling the algebra retained by bounded commutators is C + M_3(C) for any growing Dirac block, so under that criterion a finite seesaw mass and the Standard Model algebra belong to two different limits

**Status.** Proposition (Proposition 44.1), with Corollary 44.3. Proved by Claude Fable 5.1 on 4 November 2026, by hand. Refereed by Claude Opus 5.5 (effort max, 4 November 2026; report in historical/reviews/2026-11-04_opus_check_41_45.md): the commutants recomputed and confirmed; amendments applied on the criterion (the bounded-commutator criterion agrees with the order-one criterion of Theorem 20.2 for T_R and differs from it for V_nu), on the conjugate sector, on y nonzero and on the bounded blocks. Ledger row `l44_algebra` (depending on `l20_rank_one`, Astra 6, checked by Terra 6.1). Addresses STRATEGY T2c.

**Setting.** One generation in the representation of lemma 06, Result 5. T_R is the Majorana block on (nu_R, J nu_R), V_nu the neutrino Dirac block y(|nu_L><nu_R| + h.c.) with its conjugate, y nonzero, S the other Yukawa blocks; the family is D_t = t T_R + t^alpha V_nu + S, t -> infinity, 0 <= alpha < 1. The retained algebra is the set of a in A_PS = H_R + H_L + M_4(C) with sup_t ||[D_t, rho(a)]|| finite.

**Statement.**

1. For alpha = 0 the retained algebra is A_PS cap {T_R}' = C + H + M_3(C) (Theorem 20.2).
2. For 0 < alpha < 1 it is A_PS cap {T_R}' cap {V_nu}' = {(lambda, Q_lambda, m)} = C + M_3(C), the centralizer of the top block of lemma 06 and the commutant C_F of lemma 22 for the Standard Model data; the conjugate states give no condition and m is unconstrained.
3. (Corollary 44.3) Under this criterion a finite light neutrino mass at the heavy Majorana limit needs alpha = 1/2 (44_light_mass_along_scaling.md), along which the retained algebra is C + M_3(C); the Standard Model algebra needs alpha = 0, along which the light mass vanishes as 1/t. The two coincide only at finite t, where the commutators with A_SM are bounded by t^{1/2} abs(y) up to a constant and ||[S, rho(a)]||.
4. Under the order-one criterion of Theorem 20.2 the conclusion differs: V_nu is part of the Standard Model Dirac operator and satisfies order one on A_SM, so A_SM stays admissible at every alpha. The two criteria agree for T_R and differ for V_nu. Read physically (lemma 20, Result 9), an unbounded commutator is a gauge direction whose mass grows: a Dirac neutrino mass growing without bound breaks SU(2).

*Hypotheses.* The strict limit t -> infinity with the bounded-commutator criterion of the corpus (the criterion behind the heavy projection of lemma 06); one generation (any nonzero entry of Y_nu gives the same conclusion for three).

**Proof.** Lemma 44, Proposition 44.1: the coefficients of t and t^alpha must commute with rho(a), and rho(a) V_nu nu_R = V_nu rho(a) nu_R forces q_11 = lambda and q_21 = 0, so q = Q_lambda.

**What it leaves open.** Which criterion governs the retained algebra along a scaling where a block of the Standard Model Dirac operator itself grows; the two criteria part company exactly here. Which algebra the physical seesaw selects is a question about a finite t, where the Dirac neutrino mass is of the electroweak scale. A seesaw keeping the Standard Model algebra under the bounded-commutator criterion needs a bounded Dirac coupling with the light mass from a lower scale, or a second neutral state pairing with nu_L (lemma 06). In the interval parent every block of D_F is wall data, and in nine dimensions the Majorana block could not be a bulk mass (Remark 44.4).
