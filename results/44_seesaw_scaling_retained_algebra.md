# Along the seesaw scaling the retained algebra is C + M_3(C) for any growing Dirac block, so a finite seesaw mass and the Standard Model algebra belong to two different limits

**Status.** Proposition (Proposition 44.1), with Corollary 44.3. Proved by Claude Fable 5.1 on 4 November 2026, by hand; no referee has read it (ledger rows `l44_algebra`, referee pending). It rests on Theorem 20.2 (row `l20_rank_one`, Astra 6, checked by Terra 6.1) and on the bounded-commutator criterion of the corpus. Addresses STRATEGY T2c.

**Setting.** One generation in the representation of lemma 06, Result 5. T_R is the Majorana block on (nu_R, J nu_R), V_nu the neutrino Dirac block y(|nu_L><nu_R| + h.c.) with its conjugate, S the other Yukawa blocks; the family is D_t = t T_R + t^alpha V_nu + S, t -> infinity, 0 <= alpha < 1. The retained algebra is the set of a in A_PS = H_R + H_L + M_3(C) with sup_t ||[D_t, rho(a)]|| finite.

**Statement.**

1. For alpha = 0 the retained algebra is A_PS cap {T_R}' = C + H + M_3(C) (Theorem 20.2).
2. For alpha > 0 it is A_PS cap {T_R}' cap {V_nu}' = {(lambda, Q_lambda, m)} = C + M_3(C), the centralizer of the top block of lemma 06 and the commutant C_F of lemma 22 for the Standard Model data.
3. (Corollary 44.3) A finite light neutrino mass at the heavy Majorana limit needs alpha = 1/2 (44_light_mass_along_scaling.md), along which the retained algebra is C + M_3(C); the Standard Model algebra needs alpha = 0, along which the light mass vanishes as 1/t. The two coincide only at finite t, where no limit has been taken.

*Hypotheses.* The strict limit t -> infinity with the bounded-commutator criterion; one generation (three generations give the same conclusion when Y_nu has no zero column).

**Proof.** Lemma 44, Proposition 44.1; the proof is there: the coefficients of t and t^alpha must commute with rho(a), and rho(a) V_nu nu_R = V_nu rho(a) nu_R forces q_11 = lambda and q_21 = 0, so q = Q_lambda.

**What it leaves open.** Which algebra the physical seesaw selects is a question about a finite t, where the Dirac neutrino mass is of the electroweak scale; the lemma says that the strict seesaw limit at fixed light mass is a limit of the broken theory. A seesaw keeping the Standard Model algebra needs a bounded Dirac coupling with the light mass from a lower scale, or a second neutral state pairing with nu_L (lemma 06). In nine dimensions the Majorana block is wall data (Remark 44.4).
