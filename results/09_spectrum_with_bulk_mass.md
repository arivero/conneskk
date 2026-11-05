# For the mixed condition with bulk mass -mu and mu l > 1, the chiral interval has exactly one light pair lambda_0 = mu sech(kappa_0 l), about 2 mu e^{-mu l}, below the bulk threshold mu

**Status.** Theorem (Theorem 9.4, with Lemma 9.5). Proved by Claude Opus 5.5. Ledger row `l09_lightpair`, shared with Theorem 9.6. Theorem B of paper/towerless_intervals.tex.

**Setting.** Condition (c) of lemma 09, R(0) = 0 and L(l) = 0, with D_M as in 09_index_from_boundary_conditions.md; c = mu l.

**Statement.** The spectrum is symmetric under lambda -> -lambda, all eigenvalues are simple, and 0 is not an eigenvalue.

1. M = -mu with mu > 0 and c > 1: exactly one positive eigenvalue lies below mu, lambda_0 = mu sech(kappa_0 l), with kappa_0 in (0, mu) the unique positive root of tanh(kappa l) = kappa/mu. The other positive eigenvalues are sqrt(mu^2 + k_n^2), n >= 1, with k_n the unique root of tan(kl) = k/mu in (n pi/l, (n + 1/2) pi/l).
2. M = -mu and c < 1: no eigenvalue in (0, mu]; the positive eigenvalues are sqrt(mu^2 + k_n^2), n >= 0, with k_0 in (0, pi/(2l)). At c = 1 the lowest eigenvalue is exactly mu.
3. M = +mu > 0: every positive eigenvalue is sqrt(mu^2 + k_n^2), k_n in ((n - 1/2) pi/l, n pi/l), n >= 1, so all exceed sqrt(mu^2 + (pi/(2l))^2).
4. M = 0: the spectrum is +-(n + 1/2) pi/l, n >= 0.
5. (Lemma 9.5) For c > 1, mu sech(mu l) <= lambda_0 <= 2 mu e^{-kappa_0 l}, and lambda_0 = 2 mu e^{-mu l} (1 + o(1)) as mu l -> infinity. The pair is spanned by L_0 = sinh(kappa_0 (l - x)) and R_0 = A L_0/lambda_0 = sinh(kappa_0 x) = L_0(l - x): mirror images with ||R_0|| = ||L_0||, decreasing away from their walls, localized on the scale 1/kappa_0 as kappa_0 l -> infinity. The localization is not uniform as c -> 1, where the profiles approach multiples of l - x and x.

**Proof.** Lemma 09, Theorem 9.4 and Lemma 9.5; the proofs are there. Eliminating R gives -L'' + M^2 L = lambda^2 L with L(l) = 0 and L'(0) = M L(0); the roots are counted by concavity of tanh t - t/c and by the monotonicity of tan t - t/c on each half-period. Remark 9.4a gives ||D_M psi||^2 = ||D_0 psi||^2 + M^2 ||psi||^2 + M (|R(l)|^2 + |L(0)|^2) on the domain, a one-line proof of item 3.

**What it leaves open.** The exponential sensitivity of lambda_0 to mu l is the localization mechanism for Yukawa hierarchies (lemma 09, final remark); its flavour structure is lemma 12. The truncation of the pair is 09_light_pair_is_connes_lott.md.
