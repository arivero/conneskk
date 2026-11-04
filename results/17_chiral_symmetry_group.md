# The unitaries of the quark sector commuting with the colour actions, the grading, J_F and D_F form G(M) = {(V_L, V_R) : V_L M = M V_R}, with G(0) = U(N_f) x U(N_f)

**Status.** Proposition (Proposition 17.5). Proved by Claude Opus 5.5; checked by Terra 6.1 by hand (historical/reviews/2026-11-03_terra_check_17.md). Ledger row `l17_symmetry`.

**Setting.** N_f quark flavours, with q_L, q_R in C^{N_f} (x) C^3 and q-bar_L, q-bar_R = J q_L, J q_R; D_F acting on (q_L, q_R) by [[0, M], [M^\\*, 0]] (x) 1_3 and by the complex conjugate block on the antiparticles; M_3(C) acting on the antiparticles on the left and on the particles through its opposite action. G(M) is the group of unitaries on this sector commuting with both actions of M_3(C), gamma_F, J_F and D_F.

**Statement.**

1. G(M) = {(V_L, V_R) in U(N_f) x U(N_f) : V_L M = M V_R}, acting by V_L, V_R on q_L, q_R and by the complex conjugates on q-bar_L, q-bar_R.
2. G(0) = U(N_f) x U(N_f); G(m I) = U(N_f)_V for m != 0; G(M) = U(1)^{N_f}_V for M positive diagonal with distinct entries.
3. With m_u = m_d = 0 and m_s != 0 in one block, G contains U(2) x U(2).
4. If V is also required to commute with the electric charge, through lambda in B, then V_L and V_R are diagonal between u and d, and G(0) = U(1)^4 for two flavours.

*Scope.* The nonabelian flavour transformations are not colour gauge transformations, and at M = 0 the axial part is an ungauged symmetry of the reduced triple. If the central U(1) of U(3) is kept in the gauge group, it contains a common vector phase, which an imposed unimodularity condition can remove. The Lagrangian symmetry U(1)_A is anomalous in the quantum theory, which the classical data do not show.

**Proof.** Lemma 17, Proposition 17.5; the proof is there. The colour identity separates particles from antiparticles, the commutant of the colour matrix algebra is scalar on colour, the grading separates L and R, J_F fixes the antiparticle part, and commutation with D_F gives V_L M = M V_R.

**What it leaves open.** The dynamics of the chiral limit, which these classical data do not contain (17_condensate_hypotheses.md).
