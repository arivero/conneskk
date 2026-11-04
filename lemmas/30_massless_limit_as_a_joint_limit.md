# The massless limit as a joint limit: a finite window and an opening tower

Written by Claude Opus 5.5 on 4 November 2026, for STRATEGY T14. Theorem 30.1, Corollary 30.2, Proposition 30.3, Corollary 30.4 and Proposition 30.6 were proposed in an outside audit of commit b2ddf98 (assessment in [the review](../reviews/2026-11-04_outside_audit_assessment.md)); the proofs below were redone against the source lemmas. Theorem 30.5 and Proposition 30.7 are new here and rest on [lemma 29](29_window_on_the_disc_bundle.md), whose referee is queued. A referee of this lemma by Terra 6.1 is queued as well.

## Outcome

The claim that W and Z become massless as a dimension opens needs a family. Along a general path to M_W = M_Z = 0 nothing forces a tower to open: lemma 23 has theta -> 0 at fixed l, with the tower spacing fixed. The families below have the hierarchy

    m_weak << E_eps << Delta_KK -> 0,

so a moving low-energy window keeps a fixed finite number of states, while a fixed positive energy resolves more and more of the parent.

1. On the exact interval this holds with an internal dimension of one (Theorem 30.1), also with localized end modes (Proposition 30.3).
2. On the cylinder of lemma 24 and on the disc bundle of lemma 29 it holds with seven internal dimensions. On the disc bundle the window comes from the operator, with one copy of the 4 at each end, and the count at fixed energy has seven-dimensional Weyl growth (Theorem 30.5).
3. On the disc bundle the core block of the window is quaternionic up to an exponentially small defect, for all bounded real observables (Propositions 30.6, 30.7).

*Scope.* These are statements about operators, compression maps and spectra along families given by hand. No dynamics selects them (Remark 30.8). The vector masses of Corollary 30.2 belong to the five-dimensional Yang-Mills toy of lemma 23. On the disc bundle only the fermion window is treated, so the relation between lambda and M_W is unproved there.

## The interval

**Theorem 30.1 (window and tower on the interval).** Let (H_F, D_*, J_F, Gamma_F) satisfy the hypotheses of Theorem 22.1, r = dim H_F, and for 0 < alpha < 1 and small eps > 0 let D_F(eps) = eps D_*, l_eps = l_* eps^{-alpha}, with D_eps the interval operator D_X of Theorem 22.1 for these data. Let Delta_eps be the smallest element of spec |D_eps| outside spec |eps D_*|. Then for eps small:

1. W_eps^* D_eps W_eps = eps D_*, with J_F and Gamma_F exact.
2. Delta_eps >= (pi / l_*) eps^alpha - eps ||D_*||.
3. ||Q_eps(a) - pi(a)|| <= (2/3) l_*^2 ||D_*||^2 eps^{2(1 - alpha)} ||a||.
4. For alpha < beta < 1 and E_eps = E_* eps^beta, the count N_eps(E_eps) = #{|D_eps| <= E_eps} equals r.
5. For fixed E > 0, N_eps(E) ~ (2 r l_* E / pi) eps^{-alpha}.

*Proof.* The condition l_eps ||D_F(eps)|| = l_* ||D_*|| eps^{1 - alpha} < pi/2 holds for small eps. Theorem 22.1 gives item 1, and the bound (pi - l ||D_F||)/l for the next level gives item 2. Theorem 22.4 (2) gives item 3. For item 4, eps ||D_*|| << eps^beta << eps^alpha. For item 5, the signed spectrum is (n pi +- theta_k)/l_eps, which is r arithmetic progressions of spacing pi / l_eps, each with (2 E l_eps / pi)(1 + o(1)) points in [-E, E]. ∎

Theorem 22.1 starts from supplied finite data and a matrix-valued parent algebra, and the wall data change with eps by hand. A fixed Majorana block does not scale as eps D_*, so applying the theorem to an electroweak Dirac block needs a reducing sector or a treatment of the heavy neutral sector.

**Corollary 30.2 (vector poles in the toy of lemma 23).** For the universal channel of lemma 23, with m_eps = eps m_* and theta_eps = l_eps m_eps -> 0,

    M_W = arcsin(sin(2 theta_eps)/sqrt 2) / l_eps,    M_Z = arcsin(2 sin(2 theta_eps)/sqrt 5) / l_eps,

so M_W^2 = 2 m_eps^2 (1 + O(theta_eps^2)) and M_Z^2 = (16/5) m_eps^2 (1 + O(theta_eps^2)). The vector poles follow the hierarchy. The constants 2 and 16/5 belong to this five-dimensional action. The small-mass pole coefficients of the fully massive finite spectral action are 3 and 24/5 (lemma 18, Proposition 14, and lemma 23). Lemma 25 connects the two pairs: within its scope, M^2 = ((3 - d_eff(s))/2) ||[D_F, T]||^2 / ||T||^2 with s = l Lambda, so the coefficient is 3 and 24/5 at d_eff = 0, and 2 and 16/5 at d_eff = 1. Along Lambda = E_eps we have s -> 0, the finite value, and at fixed Lambda > 0 we have s -> infinity, the interval value. Varying the cutoff of the action is an extra prescription: an observational cutoff alone does not change the action.

**Proposition 30.3 (a localized family).** Take M = -mu and the mixed conditions of lemma 9, with mu_eps = mu_* eps^alpha and c_eps = mu_eps l_eps = (1 - alpha) log(1/eps) + c_0. Let s = kappa l be the root of s = c tanh s, and m = mu sech s. Then

    m_eps ~ 2 mu_* exp(-c_0) eps,    Delta_eps ~ mu_* eps^alpha,    (1/kappa) / l_eps = 1/s -> 0.

With the left profile L(x) proportional to exp(-kappa x) - r exp(kappa x), r = exp(-2 kappa l), the following identities are exact:

    r = (m / (mu + kappa))^2,    mu - kappa = m^2 / (mu + kappa).

*Proof.* Lemma 9.5 gives m = 2 mu exp(-c)(1 + o(1)) and kappa/mu -> 1. The first oscillatory root has pi < k_1 l < 3 pi/2 and lambda_1^2 = mu^2 + k_1^2, so Delta/mu -> 1. From mu = kappa coth s and m = kappa / sinh s we get mu + kappa = kappa exp(s) / sinh s, hence m / (mu + kappa) = exp(-s). The second identity is m^2 = mu^2 - kappa^2. ∎

The localization width and the length both grow, with a shrinking ratio. The finite two-point distance 1/m and the length l are both divergent, with (1/m)/l ~ exp(c)/(2c), so a metric convergence statement would need its own comparison maps.

**Corollary 30.4 (the cylinder of lemma 24).** Use the operator D_r = E d_x + Z A / r on the interval times CP^3, with A as in lemma 24, the data of Theorem 30.1, and r_eps = r_* eps^{-gamma}, 0 < gamma < 1. Then for max(alpha, gamma) < beta < 1, the cutoff E_* eps^beta isolates the finite window, since the next level is at least min((Delta_K / r_*) eps^gamma, (pi / l_*) eps^alpha - eps ||D_*||), by lemma 24, (5). At fixed E > 0 the count has the seven-dimensional Weyl growth l_eps r_eps^6 E^7. For gamma = alpha the geometry expands homothetically in all seven directions.

The window here is prescribed by the spectral walls of lemma 24.

## The disc bundle

**Theorem 30.5 (joint limit on the disc bundle).** Fix a shape as in Setting 29.0, with connection (b), or with connection (a) at rho = 1. Let delta be as in Theorem 29.7 or 29.11, G_0 = int_e^{l - a} f dr, 0 < alpha < beta < 1, eta in (0, 1), and

    M_eps = (2 (1 - alpha) / ((1 - eta) G_0)) log(1/eps),    R_eps = eps^{-alpha},    D_eps = D-hat_{M_eps} / R_eps.

By the dilation of Remark 29.13, D_eps is the operator of the metric R_eps^2 g with potential of size M_eps / R_eps -> 0. For eps small:

1. D_eps has exactly eight eigenvalues in (-delta eps^alpha, delta eps^alpha), and they are +-m_eps with multiplicity 4, where m_eps <= C eps.
2. For E_eps = E_* eps^beta the count N_eps(E_eps) = #{|D_eps| <= E_eps} equals 8.
3. The compression converges to the endpoint maps, with error C ||a||_{C^1} (log 1/eps)^{-1/2} in shape coordinates.
4. For fixed E > 0, N_eps(E) ~ C_X E^7 eps^{-7 alpha}, with C_X the Weyl constant of the elliptic operator D-hat_0 on X.

*Proof.* Item 1: Theorem 29.7 or 29.11 applies since M_eps -> infinity, Proposition 28.19 gives the multiplicity, and Proposition 29.8 gives lambda <= C exp(-(1 - eta)(M_eps/2) G_0) = C eps^{1 - alpha}, hence m_eps = lambda / R_eps <= C eps. Item 2: eps << eps^beta << eps^alpha. Item 3: Theorem 29.9, with M_eps^{-1/2} of the stated order. Item 4: D-hat_M = D-hat_0 + M V on the same domain, with V bounded by c = (3/2) sup f, so by min-max N(D-hat_0, Lambda - c M) <= N(D-hat_M, Lambda) <= N(D-hat_0, Lambda + c M). Take Lambda = E R_eps, so that M_eps / Lambda -> 0, and use the Weyl law for the fixed self-adjoint elliptic operator D-hat_0. ∎

So the eight finite states stay separated at the moving scale, and at fixed physical energy the spectrum has the growth of a seven-dimensional internal space, for eleven dimensions in M^4 x X. Item 1 is an upper bound on m_eps, since a lower bound on lambda is unproved. A family with l_eps growing at fixed M has the same form, with the rate of Proposition 29.8. The limit at fixed energy resolves a neighbourhood whose shape is fixed and whose size grows, so the pointed limit is locally flat at a generic point. Nothing here identifies it with a complete Bryant-Salamon manifold, or with a solution of field equations.

## The quaternionic defect

For the 4-copy of the window at the core, let B(r) = F(r)^* F(r) = diag(b_a I_2, b_+, b_-) as in Proposition 28.16, let j be the quaternionic antiunitary commuting with Sp(2), and P_H(A) = (A + j A j^-1)/2. Put

    eta_t = int |b_+(r) - b_-(r)| dr / int tr B(r) dr.

**Proposition 30.6 (all bounded real observables).** For the normalized compression Q of this mode, ||Q(f) - P_H Q(f)|| <= 2 eta_t for every real f with ||f||_infinity <= 1. If X_1, ..., X_k are such compressions, then ||X_1 ... X_k - P_H(X_1 ... X_k)|| <= 2 k eta_t.

*Proof.* With angular Haar measure of total mass 1, Schur's lemma gives the angular average (tr B / 4) I, so Q(f) = (4 / int tr B) int int f(r, g) lambda(g)^-1 B(r) lambda(g) dg dr. Since j commutes with lambda(g), Q(f) - P_H Q(f) is the same integral with B - P_H B. Here j exchanges b_+ and b_- and fixes the block b_a, so ||B - P_H B|| = |b_+ - b_-|/2. The triangle inequality gives the first bound. For the second, write X-tilde = j X j^-1, so that X - P_H X = (X - X-tilde)/2 and ||X_i - X-tilde_i|| <= 4 eta_t. Telescoping, X_1 ... X_k - X-tilde_1 ... X-tilde_k is a sum of k terms, each a product of contractions with one factor X_i - X-tilde_i, so its norm is at most 4 k eta_t; dividing by 2 gives 2 k eta_t. ∎

So bounded expressions become quaternionic when eta_t -> 0. An unrestricted generated algebra may use coefficients of size 1/eta_t and retain the other directions, as in Counterexample 28.17.

**Proposition 30.7 (the defect is exponentially small).** Under Theorem 29.7 or 29.11, for every eta in (0, 1) there are M_eta and C_eta with

    eta_t <= C_eta exp(-(1 - eta) M int_{2e}^{l - a} f dr),    M >= M_eta.

The rate is twice the rate of the bound on lambda in Proposition 29.8.

*Proof.* The operator C = C_7 (x) j_E has C^2 = -1, commutes with T_M as a differential expression, and exchanges the wall conditions (Proposition 28.18). On Hom_G(4, -) put (C F) = C F j^-1, which is antilinear with square +1. It commutes with D_H, with the fibre operator and with R separately, since each part of the Clifford structure transforms in the same way, so it acts on the one-dimensional space Hom_G(4, ker T_0) as a real structure. Fix F_0 there with C F_0 = F_0, so that B_0 is j-invariant. Let u = F be the mode with T_M u = lambda v, T_M^* v = lambda u, with the phase for which <chi_c F_0, u> is real, with chi_c as in Theorem 29.7. Put zeta = u - C u and nu = v - C v. In the interior,

    T_M zeta = lambda nu,    Pi (chi_c zeta) = 0,

where the second holds since <chi_c F_0, C u> is the conjugate of <chi_c F_0, u>. Take the weights of the proof of Proposition 29.8 starting at r = 2e and meeting at r_* = l - a: g = 0 on r <= 2e, g' = (1 - eta)(M/2) f on [2e, l - a], g constant beyond; and g-tilde = G - g on r <= l - a, g-tilde = 0 beyond, with G = g(l - a). So g-tilde is constant on r <= 2e. That proof gives ||exp(g) u|| <= C_eta on X, and ||exp(g-tilde) v|| <= C_eta on r <= l - a/2, and lambda <= C_eta exp(-G). The same bounds hold for C u and C v, since C is pointwise isometric.

Let xi = psi-tilde exp(g-tilde), with psi-tilde = 1 on r <= l - a and 0 on r >= l - a/2. Then ||T_M (xi zeta)|| <= lambda ||xi nu|| + || |d xi| zeta ||. Since xi is constant on the support of chi_c, Pi (chi_c xi zeta) = 0, so Lemmas 29.3 and 29.4 and the partition of Theorem 29.7 bound ||T_M (xi zeta)|| from below by the bulk term with (M/2) f and by (2 - o(1)) on the core. On the bulk |d xi| = (1 - eta)(M/2) f xi, which is absorbed with the factor eta to spare, leaving

    ||xi zeta|| <= C (lambda + ||u||_{L^2(l - a <= r <= l - a/2)}) <= C exp(-G).

Finally B - j B j^-1 = F^* F - (C F)^* (C F), so |b_+ - b_-| <= (|F| + |C F|) |zeta| pointwise in r. On r <= l - a, the Cauchy-Schwarz inequality with the weight exp(g) gives

    int (|F| + |C F|) |zeta| <= 2 ||exp(g) u|| ||exp(-g) zeta|| = 2 ||exp(g) u|| exp(-G) ||xi zeta|| <= C exp(-2 G),

since exp(-g) = exp(g-tilde - G). On r >= l - a, both |F|^2 and |C F|^2 integrate to at most C exp(-2 G). ∎

The samples in section 6.1 of the outside audit (Python, in the pull-back connection, rows reproduced by Claude Sonnet 5.5) have eta_t / lambda^2 between 0.5 and 0.9, which is the same form. The defect comes from the wall, which breaks C: for an operator with the same interior and no wall, on the complete manifold, Hom_G(4, ker T) is a real line and the core block is exactly quaternionic at every M.

**Remark 30.8 (what is missing, and the direction).** The next steps are, in order:

1. The vector sector on the family of Theorem 30.5: the kinetic matrix and mass Hessian of the vector fluctuations, H_eps u = M^2 K_eps u, and then the full momentum-dependent kernel. The aim is M_W, M_Z ~ c lambda / R with finite nonzero couplings. The tunnelling eigenvalue alone does not establish this.
2. The gauge normalization. For a bulk Yang-Mills field with constant profile, g_4^-2 = Vol(X) / g_11^2, so plain dilation drives g_4 to zero, which must be separated from restoration at finite coupling. Gauge fields from isometries have Killing overlap integrals instead.
3. The action in the radius and the electroweak order parameter. A toy V = a r^-p + b eps^2 r^q has its minimum at r proportional to eps^{-2/(p+q)}, so alpha = 2/(p+q) lies in (0, 1) if p + q > 2. The repository has not derived such a potential, and adding it by hand would derive nothing.
4. The connector of Proposition 28.20, and the origin of the quaternionic grading of Proposition 28.19.

## Numerical check

No statement here needs a computation. The outside audit tabulates the localized family in Python (mu_* = 1, alpha = 1/2, c_0 = 2), and Claude Sonnet 5.5 recomputed the rows; for eps = 10^-2, c = 4.3026 and m = 2.710 x 10^-3, against the asymptotic 2.707 x 10^-3.
