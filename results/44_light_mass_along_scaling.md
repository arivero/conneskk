# On the neutral block of the seesaw family the light mass is 2 t^{2 alpha} abs(y)^2 / (t + sqrt(t^2 + 4 t^{2 alpha} abs(y)^2)), tending to zero for alpha < 1/2, to abs(y)^2 at alpha = 1/2 and divergent above

**Status.** Proposition (Proposition 44.2). Proved by Claude Fable 5.1 on 4 November 2026, by hand (a 2 x 2 characteristic polynomial). Ledger row `l44_light_mass`. The cancellation-free form of the root is the one recorded in the corpus (ledger and STRATEGY) with m = t^alpha y. Addresses STRATEGY T2c.

**Setting.** The neutral block spanned by nu_L and nu_R with their conjugates, with the Majorana entry t on (nu_R, J nu_R) and the Dirac entry s = t^alpha y between nu_L and nu_R, as in 44_seesaw_scaling_retained_algebra.md: the symmetric mass matrix [[0, s], [s, t]] of lemma 06, Proposition 6.

**Statement.** After rephasing the neutral fields so s = t^alpha |y| is real, the spectrum of t T_R + t^alpha V_nu on the four states is plus and minus the roots mu_+- of mu^2 - t mu - t^{2 alpha} abs(y)^2 = 0 (characteristic polynomial lambda^4 - (t^2 + 2 abs(s)^2) lambda^2 + abs(s)^4), and the light mass is abs(mu_-) with

    mu_-(t) = - 2 t^{2 alpha} abs(y)^2 / (t + sqrt(t^2 + 4 t^{2 alpha} abs(y)^2)) ~ - abs(y)^2 t^{2 alpha - 1}.

The signed eigenvalue mu_- tends to zero for alpha < 1/2, to -abs(y)^2 for alpha = 1/2 (the Schur complement -V_nu T_R^{-1} V_nu, the seesaw mass), and diverges for alpha > 1/2. In one generation the other Yukawa blocks act on other species and leave the neutral block alone.

*Hypotheses.* 0 <= alpha < 1 and y != 0; one generation; the block structure of lemma 06, Result 5.

**Proof.** Lemma 44, Proposition 44.2: the complex symmetric 2 x 2 block [[0, s], [s, t]] has the displayed singular values; after rephasing it is real and its eigenvalues are mu_+-, and the small root is written without cancellation.

**What it leaves open.** Nothing in the statement; its use is the comparison with the retained algebra (44_seesaw_scaling_retained_algebra.md), which shows that, under the bounded-commutator criterion, the regime alpha = 1/2 with a finite light mass is reached in the algebra C + M_3(C).
