# On a subalgebra commuting with D_F and with the involution, inner fluctuations have no scalar part, so the Yukawa block of the reduced triple is an explicit constant mass

**Status.** Proposition (Proposition 17.3), with Corollary 17.4. Proved by Claude Opus 5.5; checked by Terra 6.1 by hand, who found Corollary 17.4 wrong as first written by overreach and had it corrected (historical/reviews/2026-11-03_terra_check_17.md). Ledger row `l17_no_higgs`.

**Setting.** The reduced triple of 17_reduced_action.md; a unital subalgebra B of A_F with [D_F, B] = 0, and U commuting with B and B°; inner fluctuations of D by C^infinity(M) (x) B.

**Statement.**

1. (Proposition 17.3) The inner fluctuation contains only Clifford one-forms, D_A commutes with UU, and D_A reduces to DD_A = D_M(A) + gamma_5 (x) d, with d constant on M.
2. If [D_F, B] != 0, the same reduction holds, and the fluctuation permits a finite scalar field d_A(x) in place of d.
3. (Corollary 17.4) In the representation of lemma 06, Result 5, with B = {(lambda, Q_lambda, m)} = C + M_3(C), u_L and u_R carry the same left character lambda and the same opposite colour action, d_L and d_R carry conj(lambda) and the same colour action, and e_L and e_R pair as well. So the kept mass blocks commute with B, in the strict projection of lemma 06 and also when only a vectorlike top pair is removed, and DD_A = D_M(A) + gamma_5 d with d the direct sum of the kept mass matrices: no Higgs field.

*Scope (the two qualifications of Corollary 17.4).* U(B) contains U(1) x U(3), so before unimodularity or an inherited restriction from the Standard Model gauge group, two independent abelian gauge fields act on the surviving charged fermions; the reading "photon and gluons" needs that restriction. A canonically normalized radial field couples to a fermion of fixed mass m_f with strength m_f/v, which tends to 0 as v -> infinity at fixed gauge coupling; under the CCM relation, keeping all Dirac masses fixed while M_W -> infinity is impossible (11_nogo_heavy_w_fixed_masses.md), the diverging mass need not be the top, and top dominance is a further hypothesis. Corollary 17.4 inherits the regime of the CCM relation.

**Proof.** Lemma 17, Proposition 17.3 and Corollary 17.4; the proofs are there: for a = f (x) alpha and b = g (x) beta, a [D, b] = f [D_M, g] (x) alpha beta + f g gamma_5 (x) alpha [D_F, beta], whose second term vanishes, and J A J^{-1} has finite coefficients in B°.

**What it leaves open.** The regime near the cutoff (STRATEGY T5b), treated in lemma 18.
