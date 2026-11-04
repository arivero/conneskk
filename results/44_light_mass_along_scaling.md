# On the neutral block of the seesaw family the light eigenvalue is -2 t^{2 alpha} y^2 / (t + sqrt(t^2 + 4 t^{2 alpha} y^2)), zero for alpha < 1/2, -y^2 at alpha = 1/2 and divergent above

**Status.** Proposition (Proposition 44.2). Proved by Claude Fable 5.1 on 4 November 2026, by hand (a 2 x 2 characteristic polynomial); no referee has read it (ledger row `l44_light_mass`, referee pending). The cancellation-free form of the root is the one recorded in the corpus (historical/corpus/research_checks_knowledge.md, section 2.6) with m = t^alpha y. Addresses STRATEGY T2c.

**Setting.** The neutral block spanned by nu_L and nu_R with their conjugates, with the Majorana entry t on (nu_R, J nu_R) and the Dirac entry t^alpha y between nu_L and nu_R, as in 44_seesaw_scaling_retained_algebra.md; the other Yukawa blocks are bounded.

**Statement.** Per conjugation pair the eigenvalues are the roots of lambda^2 - t lambda - t^{2 alpha} y^2 = 0, up to the sign convention of the block, and the light one is

    lambda_-(t) = - 2 t^{2 alpha} y^2 / (t + sqrt(t^2 + 4 t^{2 alpha} y^2)) ~ - y^2 t^{2 alpha - 1}.

It tends to zero for alpha < 1/2, to -y^2 for alpha = 1/2 (the Schur complement -V_nu T_R^{-1} V_nu, the seesaw mass), and diverges for alpha > 1/2. The bounded blocks S move these values by relative corrections of order one at fixed t and do not change the three regimes.

*Hypotheses.* One generation; the block structure of lemma 06, Result 5.

**Proof.** Lemma 44, Proposition 44.2: the 2 x 2 block [[0, t^alpha y], [t^alpha y, t]] has the displayed characteristic polynomial, and the small root is written without cancellation.

**What it leaves open.** Nothing in the statement; its use is the comparison with the retained algebra (44_seesaw_scaling_retained_algebra.md), which shows that the regime alpha = 1/2 with a finite light mass is reached in the algebra C + M_3(C).
