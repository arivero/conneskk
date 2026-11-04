# On the neutral block of t T_R + t^alpha V_nu the light eigenvalue is -2 t^{2 alpha} y^2/(t + sqrt(t^2 + 4 t^{2 alpha} y^2)) ~ -y^2 t^{2 alpha - 1}, which tends to zero for alpha < 1/2, equals the finite seesaw value -y^2 in the limit at alpha = 1/2, and diverges for alpha > 1/2

**Status.** Proposition (Proposition 44.2). Proved by Claude Fable 5.1 on 4 November 2026 by hand; checked by its author by hand. No independent check yet: the ledger marks the row referee_pending. Ledger row `l44_light_mass`. No paper cites it.

**Setting.** The family D_t = t T_R + t^alpha V_nu + S of 44_seesaw_retained_algebra.md, restricted to the neutral block spanned by nu_L and nu_R with their conjugates; y is the Dirac coupling of one generation.

**Statement.**

1. Per conjugation pair, the eigenvalues of t T_R + t^alpha V_nu on the neutral block are the roots of lambda^2 - t lambda - t^{2 alpha} y^2 = 0, up to the sign convention of the block, from the 2 x 2 block [[0, t^alpha y], [t^alpha y, t]].
2. The light root is lambda_-(t) = -2 t^{2 alpha} y^2/(t + sqrt(t^2 + 4 t^{2 alpha} y^2)), so lambda_-(t) ~ -y^2 t^{2 alpha - 1}.
3. It tends to zero for alpha < 1/2, tends to the finite value -y^2 for alpha = 1/2, the seesaw mass given by the Schur complement -V_nu T_R^{-1} V_nu of the corpus, and diverges for alpha > 1/2.
4. The other Yukawa blocks S are bounded, and at fixed t they move these values by O(1) relative corrections.

*Scope.* One generation and the strict limit t -> infinity. The finite seesaw mass of item 3 sits on the branch alpha = 1/2, along which the retained algebra is C + M_3(C) (44_seesaw_retained_algebra.md, Corollary 44.3), while the bounded coupling alpha = 0, which keeps C + H + M_3(C), gives the light mass -y^2/t -> 0.

**Proof.** Lemma 44, Proposition 44.2: the characteristic polynomial of the 2 x 2 block, with the small root written in the cancellation-free form of the corpus formula for m = t^alpha y (research_checks, section 2.6); the three regimes are read off from the exponent 2 alpha - 1.

**What it leaves open.** An independent check by a model other than its author. Under the wall-data reading of Remark 44.4, Theorem 22.1 keeps the light pair in the window only while l norm(D_F) < pi/2, and the growing Majorana entry violates this first, so the seesaw scale is the first datum to leave the window; the light mass along a family that keeps the window is not computed in lemma 44.
