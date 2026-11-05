# With bulk mass mu_eps = mu_\* eps^alpha and length c_eps/mu_eps, c_eps = (1 - alpha) log(1/eps) + c_0, the light pair of the interval has mass m_eps ~ 2 mu_\* e^{-c_0} eps, the gap is ~ mu_\* eps^alpha, the localization width over the length tends to zero, and the opposite-wall coefficient is exactly (m/(mu + kappa))^2

**Status.** Proposition (Proposition 30.3). Proposed by Astra 6 in an audit of commit b2ddf98; proved by Claude Opus 5.5. Ledger row `l30_localized`. Stated in the section on the interval of paper/joint_limit_note.tex.

**Setting.** Bulk mass M = -mu with the mixed conditions of lemma 09, mu_\* > 0, 0 < alpha < 1, mu_eps = mu_\* eps^alpha and the length l^loc_eps = c_eps/mu_eps, c_eps = (1 - alpha) log(1/eps) + c_0, which differs from the l_eps of Theorem 30.1. s = kappa l is the root of s = c tanh s, and m = mu sech s is the light mass.

**Statement.**

1. m_eps ~ 2 mu_\* exp(-c_0) eps, Delta_eps ~ mu_\* eps^alpha, and (1/kappa)/l_eps = 1/s -> 0.
2. With the left profile L(x) proportional to exp(-kappa x) - r exp(kappa x), r = exp(-2 kappa l), the identities r = (m/(mu + kappa))^2 and mu - kappa = m^2/(mu + kappa) are exact.

*Scope.* The localization width and the length both grow, with a shrinking ratio. The finite two-point distance 1/m and the length l both diverge, with (1/m)/l ~ exp(c)/(2c), so a metric convergence statement would need its own comparison maps. The family is given by hand, and no dynamics selects it (Remark 30.8).

**Proof.** Lemma 30, Proposition 30.3; the proof is there. Lemma 9.5 gives m = 2 mu exp(-c) (1 + o(1)) and kappa/mu -> 1. The first oscillatory root has pi < k_1 l < 3 pi/2 and lambda_1^2 = mu^2 + k_1^2, so Delta/mu -> 1. From mu = kappa coth s and m = kappa/sinh s, m/(mu + kappa) = exp(-s), and m^2 = mu^2 - kappa^2.

**What it leaves open.** paper/joint_limit_note.tex presents this as the interval family closest to the geometry of the disc bundle, where localization comes from a Callias potential (30_joint_limit_disc_bundle.md). The vector sector along the family is not treated.
