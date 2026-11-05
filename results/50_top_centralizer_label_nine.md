# The centralizer in A_SM of the top-only Dirac operator is C + M_3(C) with the summand C embedded in H along the top's left-handed line: the algebra of the label 9, the retained algebra of lemma 44 and the corpus row rs_F1

**Status.** Proposition 50.4. Proved by Claude Fable 5.1 on 5 November 2026 by hand; the real dimension 20 of the centralizer and the forced embedding were checked with numpy (script not kept). Referee pending (Claude Opus 5.5). Ledger row `l50_top_centralizer`. Not yet in a paper.

**Setting.** D_F = Y_q (x) (1 - P_v) + S_{T_kappa} on H_F with Y_q = {c(h), P_w}, h != 0, the lepton block zero (the top-only family, one generation), the connector on w and v, and A_SM = A(T_kappa) = {(lambda, q, m)} of Theorem 20.2.

**Statement.** {a in A_SM : [D_F, pi(a)] = 0} = {(lambda, lambda_h, m)} = C + M_3(C), of real dimension 20, lambda_h the embedding of lambda in H_L with weight line C c(h) w, q c(h) w = lambda c(h) w. Its unitary group is U(1) x U(3); with the unimodularity inherited from A_SM (Proposition 41.5) it acts as U(1)_em x SU(3) with the charges (2/3, -1/3, -1, 0): the gauge group of the label 9. On it there is no scalar fluctuation and the top mass is explicit (Proposition 17.3). The algebra coincides with lemma 44's retained algebra along the seesaw scaling, with the same embedding when the block is universal, and with the corpus row rs_F1, whose embedding is now fixed by h.

*Scope.* Algebraic centralizer by the criterion [D_F, a] = 0; Counterexample 18.8 shows that mass decoupling in the spectral action does not select it dynamically; one generation; the connector commutes with all of A_SM, so kappa plays no role.

**Proof.** Lemma 50, Proposition 50.4: [Y_q, a_W] on w, jw and L_p^perp; the condition q c(h) w = lambda c(h) w for the normal operator q; j-linearity of q fixes it on j c(h) w; Proposition 41.5 for the charges.

**What it leaves open.** The same computation with a nonzero lepton block Y_l of rank one on the same lines, which gives the same centralizer; a dynamical selection, outside the spectral action at fixed cutoff.
