# Collapse in the spectral propinquity: a gap criterion and limits of commutative spaces

Lemmas R2 and R3 of the [Farsi-Latrémolière assessment](../reviews/2026-11-03_farsi_latremoliere_assessment.md), written out and extended. Proved by Claude Opus 5.5 without Astra or Fable, from the definitions in the LaTeX source of arXiv:2404.00240v3, Section 2. The sketches came from the reading subagent; the lower bound in the sketch of R2 omitted the cap sqrt(2)/2 of the metric and is corrected here.

**Scope.** Everything here concerns one metric, the spectral propinquity, applied to the whole algebra of the parent triple. The section "What this says about T0" states what follows for the founding problem and what does not; [lemma 16](16_coarse_truncation.md) treats truncations, where other answers hold.

## Conventions

These are the definitions of Farsi-Latrémolière, Section 2.

- A *quantum compact metric space* (A, L) is a unital C\*-algebra A with a seminorm L on a dense subspace of sa(A) such that ker L = R 1; the metric mk_L(phi, psi) = sup{abs(phi(a) - psi(a)) : L(a) <= 1} metrizes the weak\* topology of the state space S(A); L satisfies the Leibniz inequality for the Jordan product a o b = (ab + ba)/2 and the Lie product {a, b} = (ab - ba)/(2i); and {L <= 1} is closed.
- A *quantum isometry* is a \*-epimorphism pi with L_B(b) = inf{L_A(a) : pi(a) = b}. Its dual map is an isometry of state spaces.
- A *tunnel* is a quantum compact metric space (E, L_E) with quantum isometries pi_1, pi_2 onto the two spaces. Its *extent* chi is the larger of the Hausdorff distances, in mk_{L_E}, from S(E) to pi_1^\*S(A_1) and to pi_2^\*S(A_2). The *propinquity* Lambda is the infimum of extents.
- A *metric spectral triple* T = (A, H, D) is a spectral triple for which L_T(a) = norm([D, a]) is an L-seminorm. In particular ker L_T = R 1. We write DN_T(xi) = norm(xi) + norm(D xi) and diam T for the diameter of S(A) in mk_{L_T}.
- A *metrical tunnel* between T_1 and T_2 consists of a C\*-correspondence P from E to a unital C\*-algebra B, with L_E and L_B as above and a norm DN_P on a dense subspace of P such that: the unit ball of DN_P is compact in P; DN_P dominates the module norm; DN_P(e Theta) <= (norm(e) + L_E(e)) DN_P(Theta) (*modular Leibniz*); L_B(<Theta, Theta'>_B) <= 2 DN_P(Theta) DN_P(Theta') (*inner Leibniz*). It carries maps (Pi_j, pi_j, theta_j) onto (H_j, A_j, C), compatible with the actions and inner products, with DN_{T_j}(xi) = inf{DN_P(Theta) : Pi_j Theta = xi}. Its extent is the larger of the extents of (E, pi_1, pi_2) and (B, theta_1, theta_2).
- The *pseudo-states* of T are the functionals xi -> <omega, xi> with DN_T(omega) <= 1. The *separation* of two operator families (a_t), (b_t) is the Hausdorff distance between {(phi a_t Pi_1)_t} and {(psi b_t Pi_2)_t}, phi and psi ranging over pseudo-states, in the metric sup_t sup{abs(F_t(Theta) - G_t(Theta)) : DN_P(Theta) <= 1}. The *dispersion* is the larger of extent and separation.
- The *spectral propinquity* Lambda_spec(T_1, T_2) is the infimum of sqrt(2)/2 and of those eps > 0 for which some metrical tunnel has dispersion < eps for the families exp(i t D_1), exp(i t D_2), 0 <= t <= 1/eps.

Three elementary consequences.

(a) If tau is a tunnel of extent chi, then abs(diam_1 - diam_2) <= 2 chi. Take phi, phi' realizing diam_1; their pullbacks lie within chi of pullbacks of states of A_2, and the dual maps are isometries.

(b) Lambda_spec(T_1, T_2) >= min(sqrt(2)/2, Lambda(A_1, A_2)), because the dispersion dominates the extent of the top tunnel. So convergence in Lambda_spec implies convergence in Lambda.

(c) Combining: Lambda_spec(T_1, T_2) >= min(sqrt(2)/2, abs(diam T_1 - diam T_2)/2).

The cap is dimensionful: Lambda_spec has the units of a length and is cut off at sqrt(2)/2 in the chosen unit.

(d) If a = a\* in (A, L), and z is the midpoint of the convex hull of Sp(a), then norm(a - z) <= (diam/2) L(a). The endpoints of the hull are values of states on a.

## Comparison along a tunnel

**Lemma 15.1.** Let tau = (E, L_E, pi_1, pi_2) be a tunnel of extent chi, and let e = e\* with L_E(e) finite. For {j, k} = {1, 2},

    norm(pi_j e) <= norm(pi_k e) + chi L_E(e),     norm(e) <= norm(pi_j e) + chi L_E(e).

For a real polynomial p = sum p_m x^m, the element p(e) has finite L_E, with L_E(p(e)) <= L_E(e) sum_{m >= 1} abs(p_m) m norm(e)^{m-1}.

*Proof.* The norm of a self-adjoint element is the supremum of abs(state) on it. A state phi of A_j pulls back to S(E), and lies within chi of the pullback of a state psi of A_k, so abs(phi(pi_j e)) <= abs(psi(pi_k e)) + chi L_E(e). The second inequality is the same argument starting from a state of E. For powers, e^m = e o e^{m-1}, and induction with the Jordan-Leibniz inequality gives L_E(e^m) <= m norm(e)^{m-1} L_E(e); L_E(1) = 0. ∎

## Limits of commutative spaces (Lemma R3)

**Theorem 15.2.** Let (A_n, L_n) -> (A, L) in the propinquity.

1. If every A_n is commutative, then A is commutative.
2. If every A_n = C(X_n) with X_n having at most k connected components, then the spectrum of A has at most k connected components. In particular, a finite-dimensional limit is C^j with j <= k, and for k = 1 it is C.

Both statements hold for limits in Lambda_spec, by (b).

*Proof.* Let tau_n be tunnels of extent chi_n -> 0.

(1) Let a_1, a_2 in sa(A) have finite L. Choose lifts d_i in E_n with pi_A(d_i) = a_i and L_{E_n}(d_i) <= L(a_i) + 1. Lemma 15.1 bounds norm(d_i) uniformly. The Lie product e = {d_1, d_2} satisfies pi_n(e) = 0 and pi_A(e) = {a_1, a_2}, and L_{E_n}(e) <= norm(d_1) L(d_2) + norm(d_2) L(d_1) is uniformly bounded. So norm({a_1, a_2}) <= chi_n L_{E_n}(e) -> 0. Elements of finite L are dense in sa(A), so A is commutative.

(2) By (1), A = C(X). Suppose X has at least k + 1 components. Since X is compact Hausdorff, it splits into nonempty clopen sets X_0, ..., X_k. Let a in sa(A) have finite L and norm(a - sum_j j 1_{X_j}) < 1/8, so that Sp(a) meets each [j - 1/8, j + 1/8] and lies in their union. Take lifts d_n as above, and b_n = pi_n(d_n), a real function on X_n. All spectra lie in a fixed compact interval I for large n, by Lemma 15.1.

Let g : I -> [0, 1] be continuous, 0 on the union of the [j - 1/8, j + 1/8] and 1 on the intervals of radius 1/8 around the half-integers j + 1/2, and let p be a polynomial with abs(p - g) < 1/8 on I. Then norm(p(a)) <= 1/8, so Lemma 15.1 gives norm(p(b_n)) <= 1/4 for large n, because L_{E_n}(p(d_n)) is uniformly bounded. Hence b_n omits the intervals of radius 1/8 around the half-integers, and on each component of X_n the values of b_n stay within 3/8 of one integer. So b_n reaches at most k integers, and along a subsequence it misses one fixed j_\*. Let h : I -> [0, 1] be continuous, 1 on [j_\* - 1/8, j_\* + 1/8] and 0 outside radius 3/8 around j_\*, and let q be a polynomial with abs(q - h) < 1/8 on I. Then norm(q(a)) >= 7/8 and norm(q(b_n)) <= 1/8, contradicting Lemma 15.1 for large n. ∎

The theorem is one-directional: noncommutative spaces may converge to commutative ones, as matrix algebras do to the sphere (Rieffel; Latrémolière) and spectral truncations of tori do to the tori in the Gromov-Hausdorff sense on state spaces (Leimbach-van Suijlekom). We did not find Theorem 15.2 stated in the sources we searched (arXiv:1302.4058, 1311.0104, 2404.00240, 2603.19128); its proof is elementary and it may be folklore.

## The gap criterion (Lemma R2)

**Theorem 15.3.** Let T = (A, H, D) be a metric spectral triple with delta = diam T. Let Sigma be a finite subset of R, P = 1_Sigma(D) of rank N >= 1 and Q = 1 - P, and let g > 0 be such that abs(lambda) >= g for every lambda in Sp(D) outside Sigma. Let D_F be a Hermitian N x N matrix, W : PH -> C^N a unitary, extended by 0 on QH, and Delta = norm(W D W\* - D_F). For T_F = (C, C^N, D_F),

    min(sqrt(2)/2, delta/2) <= Lambda_spec(T, T_F) <= 1/g^2 + max(delta/2, Delta) + Delta + sqrt(Delta).

For Delta = 0 the upper bound reads delta/2 + 1/g^2. No anticommutation hypothesis enters.

*Proof.* The lower bound is (c), since diam T_F = 0. For the upper bound fix rho > 0 with rho >= max(delta/2, Delta), and put s = rho + 1/(2 g^2), c = 1/(1 + Delta), D_B = W D W\*.

*Top tunnel.* On E = A (+) C let L_E(a, z) = max{L_T(a), norm(a - z)/rho}. Then ker L_E = R (1, 1). The Leibniz inequality for the Jordan product follows from a o b - z w = (a - z) o b + z (b - w), and for the Lie product from {a, b} = {a - z, b}. The set {L_E <= 1, mu(a) = 0}, for a fixed state mu of A, is contained in a product of compact sets, since abs(z) <= norm(a) + rho and norm(a) <= delta there, so L_E is an L-seminorm by Rieffel's criterion, with the closed ball following from lower semicontinuity. The projection onto A is a quantum isometry by (d), as rho >= delta/2; the projection onto C is one because L_E(z 1, z) = 0. A state of E has the form (a, z) -> t mu(a) + (1 - t) z. On L_E(a, z) <= 1 it differs from (a, z) -> mu(a) by (1 - t) abs(z - mu(a)) <= norm(a - z) <= rho, and from (a, z) -> z by t abs(mu(a) - z) <= rho. So the extent is at most rho.

*Base tunnel.* On B = C (+) C let L_B(x, y) = abs(x - y)/s. The two projections are quantum isometries onto (C, 0), and the extent is at most s.

*Module.* Let P_mod = H (+) C^N, a right Hilbert B-module with <(xi, eta), (xi', eta')> = (<xi, xi'>, <eta, eta'>) and left action (a, z)(xi, eta) = (a xi, z eta). On Dom D (+) C^N set

    DN_P(xi, eta) = max{DN_T(xi), DN_F(eta), norm(W xi - eta)/rho}.

The unit ball is closed in a product of compact sets, because D has compact resolvent. The norm is dominated.

*Modular Leibniz.* DN_T(a xi) <= (norm(a) + L_T(a)) DN_T(xi) and DN_F(z eta) = abs(z) DN_F(eta). Further

    norm(W a xi - z eta) <= norm(W (a - z) xi) + abs(z) norm(W xi - eta) <= norm(a - z) norm(xi) + abs(z) rho DN_P(xi, eta),

and dividing by rho gives at most (L_E(a, z) + norm(a, z)) DN_P(xi, eta). No commutation of P with A is needed, because the limit algebra acts by scalars.

*Inner Leibniz.* On Q H the spectrum has abs(lambda) >= g, so norm(Q xi) <= norm(D xi)/g <= DN_T(xi)/g. Then <xi, xi'> = <W xi, W xi'> + <Q xi, Q xi'> and

    abs(<W xi, W xi'> - <eta, eta'>) <= norm(W xi - eta) norm(W xi') + norm(eta) norm(W xi' - eta') <= 2 rho DN_P DN_P',

so abs(<xi, xi'> - <eta, eta'>) <= (2 rho + 1/g^2) DN_P DN_P' = 2 s DN_P DN_P'.

*Quotient conditions.* Given xi, take eta = c W xi. Since P reduces D and D_F W = W D - (D_B - D_F) W on Dom D, we get DN_F(c W xi) <= c (norm(W xi) + norm(W D xi) + Delta norm(W xi)) <= DN_T(xi), and norm(W xi - c W xi) <= Delta norm(xi) <= rho DN_T(xi). So DN_P(xi, c W xi) = DN_T(xi). Given eta, take xi = c W\* eta. Then DN_T(xi) = c (norm(eta) + norm(D_B eta)) <= DN_F(eta) and norm(W xi - eta) <= Delta norm(eta), so DN_P(c W\* eta, eta) = DN_F(eta).

*Separation.* Let DN_T(omega) <= 1 and put omega' = c W omega, so that DN_F(omega') <= 1. For DN_P(xi, eta) <= 1 and real t, since P commutes with exp(i t D),

    <omega, e^{itD} xi> - <omega', e^{itD_F} eta> = <Q omega, e^{itD} Q xi> + <W omega, (e^{itD_B} - e^{itD_F}) W xi> + <W omega, e^{itD_F} (W xi - eta)> + (1 - c) <W omega, e^{itD_F} eta>,

and the four terms are bounded by 1/g^2, abs(t) Delta, rho and Delta. Conversely, let DN_F(omega') <= 1 and put omega = c W\* omega', so that DN_T(omega) <= 1 and Q omega = 0; the same decomposition without the first term gives at most abs(t) Delta + rho + Delta.

*Conclusion.* Put K = 1/g^2 + rho + Delta. The extent is at most s <= K and the separation on [0, 1/eps] is at most K + Delta/eps. If eps > K + sqrt(Delta), then Delta/eps < sqrt(Delta) (or Delta = 0), so the dispersion is below eps. Hence Lambda_spec <= K + sqrt(Delta), and we let rho decrease to max(delta/2, Delta). ∎

**Remark 15.4 (rescaling).** For T_eps = (A, H, D/eps) with 0 in Sp(D), Sigma = {0} and D_F = 0, the theorem gives eps delta_1/2 <= Lambda_spec <= eps delta_1/2 + eps^2/g_1^2, where delta_1 = diam T_1 and g_1 is the gap of D. This is Corollary 4.1 of Farsi-Latrémolière with a sharp leading rate. Counterexample R1 of the assessment violates the gap hypothesis, since the eigenvalue x stays bounded outside Sigma.

**Corollary 15.5 (the tuned interval, Theorem 9.9).** Let T_l = (C([0, l]), L^2([0, l]; C^2), D_{-mu(l)}) with condition (c) and mu(l) as in Theorem 9.9, c = mu(l) l, and let P project onto +/- m_f. For l small,

    l/2 <= Lambda_spec(T_l, (C, C^2, m_f sigma_1)) <= l/2 + l^2/(pi^2 + c^2).

For the Connes-Lott triple CL(m_f) = (C + C, C^2, m_f sigma_1) of diameter 1/m_f,

    Lambda_spec(T_l, CL(m_f)) >= min(sqrt(2)/2, (1/m_f - l)/2).

*Proof.* Multiplication by a Lipschitz function preserves condition (c), and the mass term commutes with functions, so L(f) = norm(f')_infinity and diam T_l = l. Theorem 9.6 gives W with W D W\* = m_f sigma_1, so Delta = 0, and Theorem 9.4 gives g >= sqrt(mu^2 + (pi/l)^2). The second bound is (c). ∎

So the whole triple converges to a point carrying a two-dimensional massive Dirac block, while the compression at each l is the Connes-Lott triple (Theorem 9.6). The two statements concern different objects, and both hold; see "What this says about T0".

**Corollary 15.6 (towerless Yukawa block, Theorem 12.7).** Fix the c's and Y_hat of Theorem 12.7, with T_{X,l} = (C([0, l]), L^2 (x) (C^{N_Q} (+) C^{N_U}), D_X). Then T_{X,l} is a metric spectral triple of diameter l, and

    Lambda_spec(T_{X,l}, (C, C^{N_Q + N_U}, D_F)) = O(l),     D_F = [[0, M_F], [M_F^dagger, 0]],   M_F = Phi_Q Y_hat Phi_U.

*Proof.* Multiplication by f preserves the conditions at l because f takes one value there, and norm([D_X, f]) = norm(f')_infinity. Theorem 12.7 gives g >= min(L_Q, L_U)/l. Mapping eigenvectors of +/- lambda_k to the singular vectors of M_F gives W with Delta = max_k abs(lambda_k - sigma_k(M_F)) = O(l^2). Theorem 15.3 applies, with sqrt(Delta) = O(l). ∎

This answers the remark in Theorem 12.7 that a limit triple needs a choice of algebra: in this metric the algebra of the limit is C.

## The converse

**Theorem 15.7.** Let T_n = (A_n, H_n, D_n) be metric spectral triples with Lambda_spec(T_n, T_F) -> 0, T_F = (C, C^N, D_F). Then diam T_n -> 0; for every R > norm(D_F), D_n has exactly N eigenvalues in [-R, R] for large n, so that the gap g_n to the remaining spectrum tends to infinity; and there are unitaries W_n from the light space onto C^N with norm(W_n D_n W_n\* - D_F) -> 0. With Theorem 15.3,

    Lambda_spec(T_n, T_F) -> 0   if and only if   diam T_n -> 0, g_n -> infinity, Delta_n -> 0.

*Proof.* The diameter statement is (c). Let tau_n have dispersion < eps_n on [0, 1/eps_n], with eps_n -> 0.

*Inner estimate.* The characters theta_1, theta_2 are states of the base algebra B_n, and S(C) is one point, so mk_{L_B}(theta_1, theta_2) < eps_n. Applying this to the real and imaginary parts of <Theta, Theta'> and using inner Leibniz,

    abs(<Pi_1 Theta, Pi_1 Theta'> - <Pi_2 Theta, Pi_2 Theta'>) <= 4 eps_n DN_P(Theta) DN_P(Theta').

*At most N eigenvalues.* Suppose D_n has N + 1 orthonormal eigenvectors xi_i with eigenvalues in [-R, R], so DN(xi_i) <= 1 + R. Lift them to Theta_i with DN_P(Theta_i) <= 2(1 + R), and put eta_i = Pi_2 Theta_i in C^N. The Gram matrix G of the eta_i has rank at most N, so norm(1 - G) >= 1, while the inner estimate gives norm(1 - G) <= 16 (N + 1)(1 + R)^2 eps_n. This fails for large n.

*Concentration.* Let e be a unit eigenvector of D_F with eigenvalue lambda, C = 1 + norm(D_F), and lift e to Theta with DN_P(Theta) <= 2C and xi = Pi_1 Theta. Apply the separation to the pseudo-state omega = xi/(2C): there is omega' with DN_F(omega') <= 1 and, for t in [0, 1/eps_n], abs(<omega, e^{itD_n} xi> - e^{it lambda} <omega', e>) <= 2C eps_n. Comparing with t = 0 and multiplying by 2C,

    abs(<xi, e^{itD_n} xi> - e^{it lambda} norm(xi)^2) <= 8 C^2 eps_n.

Let nu be the spectral measure of D_n at xi. Taking real parts and averaging over t in [0, 1/eps_n] gives the integral of 1 - sinc((x - lambda)/eps_n) d nu(x) at most 8 C^2 eps_n. Since 1 - sinc(u) >= 1/2 for abs(u) >= 2, nu{abs(x - lambda) >= 2 eps_n} <= 16 C^2 eps_n.

*Multiplicities.* Apply this to an orthonormal eigenbasis e_i of D_F, with lifts xi_i. The inner estimate makes the Gram matrix of the xi_i tend to the identity, and concentration keeps it so after projecting each xi_i to the spectral window of radius 2 eps_n around its eigenvalue. So each window around an eigenvalue of multiplicity m contains at least m eigenvalues of D_n, for large n. The total is at most N, by the previous step, so equality holds. Mapping eigenvectors to the e_i gives W_n with norm(W_n D_n W_n\* - D_F) <= 2 eps_n. ∎

**Corollary 15.8 (finite limits of connected commutative triples).** Let T_n be metric spectral triples with A_n = C(X_n), X_n connected, converging in Lambda_spec to a triple with finite-dimensional Hilbert space. Then the limit is (C, C^N, D_F), and the convergence is characterized by Theorem 15.7. Every Hermitian D_F arises: on the circle of length l, the operator -i d/dx + diag(lambda_i) on L^2(S^1_l; C^N) has the block diag(lambda_i) on constants and gap at least 2 pi/l - norm(D_F).

*Proof.* A metric triple is faithful: a self-adjoint a acting as 0 has [D, a] = 0, so a = t 1 by ker L = R 1, and then t = 0. So the limit algebra is finite-dimensional, and Theorem 15.2 gives C. ∎

Corollary 9.10 fits the converse: at fixed mu every eigenvalue diverges, the spectra have no bounded sequences, and no limit exists. Theorem 9.8 lies outside the metric, because the diameter diverges.

## Grading and real structure

The metric ignores gamma and J. They pass to the block exactly.

**Proposition 15.9.** In Theorem 15.3 let Sigma = -Sigma, and let D anticommute with a grading gamma and satisfy J D = eps' D J for an antiunitary J with J^2 = eps and J gamma = eps'' gamma J. Then P commutes with gamma and J, and gamma_F = W gamma W\*, J_F = W J W\* satisfy the same relations with D_B = W D W\*. The tunnel of Theorem 15.3 controls them: for DN_T(omega) <= 1 and DN_P(xi, eta) <= 1,

    abs(<omega, gamma xi> - <W omega, gamma_F eta>) <= 1/g^2 + rho,     abs(<omega, J xi> - <W omega, J_F eta>) <= 1/g^2 + rho.

*Proof.* Spectral projections of D for a symmetric set commute with gamma and J, because gamma and J map the lambda-eigenspace to the eigenspaces of -lambda and eps' lambda. Decompose along P and Q as in Theorem 15.3, using additivity of J_F. ∎

So a version of the metric with gamma and J added to the families would converge along the same tunnels, and the KO-signs of the parent reach the limit unchanged. For the interval, P Gamma P = sigma_3 (Theorem 9.6). A definition for the antilinear J would need a small extension of the pseudo-state formalism, which we have not developed.

## What this says about T0

Corollary 15.8 describes one notion of convergence: the state space of the whole algebra C(K_l) must converge in the Monge-Kantorovich metric. Under it, a collapsing connected parent yields a point, and the finite data survive as (C, C^N, D_F, gamma_F, J_F). Three limits on its reach:

1. **The truncation is a different object.** Along Theorem 9.9, the compression at each l is exactly Connes-Lott, with distance 1/m_f, while the parent has diameter l. The compression is not a quantum isometry, so this metric cannot see it. This is the towerless phenomenon itself: the two-sheet distance is unrelated to the size of the internal space.
2. **The domain excludes unbroken symmetry.** A metric spectral triple has ker L_T = R 1, which fails whenever a nonscalar element of A commutes with D. The finite triple of the Standard Model, where M_3(C) commutes with D_F, lies outside the class, and so does the almost-commutative product. The whole framework thus sees only fully broken phases.
3. **Noncommutativity is an unsuitable invariant here.** C(K) and C(K, M_n) are Morita equivalent, and matrix-valued functions are the ordinary setting of gauge fields on K. By Farsi-Latrémolière Theorem 4.6, an even metric finite (B, H_F, D_F) with noncommutative B is the limit in this same metric of B (x) C(K_l) with K_l collapsing, with multiplicity space ker D_K.

Theorem 15.2 therefore constrains this metric on scalar function algebras. It is no obstruction to T0. [Lemma 16](16_coarse_truncation.md) gives noncommutative finite real triples from commutative data at fixed truncation, with no limit taken.
