# The chiral interval with a bulk mass: chirality, light pairs and both limits

Theorem T3 of [../STRATEGY.md](../STRATEGY.md), core part. Proved by Claude Opus 5.5; the spectra are compared numerically with a first-order discretization (section "Numerical check").

## Setting

Let I = [0, l], H = L^2(I; C^2) with psi = (L, R), and Gamma = diag(1, -1). For M in R let A = -d/dx + M, so that A^dagger = d/dx + M, and

    D_M psi = (A^dagger R, A L),   i.e.   (D psi)_L = R' + M R,   (D psi)_R = -L' + M L.

At M = 0 this is the operator of [job 05](05_deconstruction_interval.md). We consider three boundary conditions:

- (a) R(0) = R(l) = 0;
- (b) L(0) = L(l) = 0;
- (c) R(0) = 0 and L(l) = 0 (the chiral interval of job 05).

**Lemma 9.1.** For each of (a), (b) and (c), D_M is self-adjoint on {psi in H^1 : boundary condition} and has compact resolvent.

*Proof.* For psi, phi in H^1 the mass terms cancel (M is real) and integration by parts gives <D psi, phi> - <psi, D phi> = [conj(R) phi_L - conj(L) phi_R]_0^l. Each condition is a Lagrangian subspace of the four-dimensional space of boundary values: two independent conditions on which the form vanishes. Distributional differentiation shows Dom D_M^* is contained in H^1, so the boundary form forces the same conditions and D_M is self-adjoint. The estimate norm(psi') <= norm(D_M psi) + abs(M) norm(psi) makes the graph norm control the H^1 norm, so the resolvent maps L^2 boundedly into H^1, which embeds compactly in L^2. ∎

## Chirality lives in the boundary conditions

**Theorem 9.2.** For every M in R and l > 0:

- (a) ker D = C (e^{Mx}, 0), so ind = dim ker_{Gamma=+1} - dim ker_{Gamma=-1} = +1;
- (b) ker D = C (0, e^{-Mx}), so ind = -1;
- (c) ker D = 0, so ind = 0.

*Proof.* D psi = 0 iff A L = 0 and A^dagger R = 0, i.e. L = alpha e^{Mx} and R = beta e^{-Mx}. Exponentials never vanish, so a condition at either end forces the corresponding coefficient to 0. ∎

**Corollary 9.3 (equivariant index).** Let a compact group G act on H_G = (+)_rho V_rho (x) L^2(I; C^2), a sum of finitely many finite-dimensional representations V_rho, with boundary type tau(rho) in {a, b, c} and mass M_rho on each summand. (With infinitely many summands the operator need not be Fredholm: for l = 1, G = S^1 and the representations V_j(z) = z^j, j >= 2, of type (c) with M_j = -j, the vectors (f_j, 0) with f_j = chi(x) e^{-jx}, chi smooth, equal to 1 on [0, 1/2] and to 0 at 1, satisfy condition (c), lie in distinct summands and have norm(A_j f_j)/norm(f_j) = O(sqrt(j) e^{-j/2}) -> 0, so the direct sum has no kernel and is not bounded below.) Then the G-index of D in R(G) is

    sum over tau(rho) = a of [V_rho]   minus   sum over tau(rho) = b of [V_rho],

independent of every M_rho and of l. Assigning (a) to the summands of V_L and (b) to those of V_R realizes I_G = [V_L] - [V_R] of research_note 7. Vectorlike pairs of type (c) contribute 0. ∎

## Spectrum of the mixed condition with a bulk mass

**Theorem 9.4.** Take condition (c). The spectrum is symmetric under lambda -> -lambda, all eigenvalues are simple, and 0 is not an eigenvalue. Write c = mu l.

1. M = -mu with mu > 0 and c > 1: there is exactly one positive eigenvalue below mu,

       lambda_0 = mu sech(kappa_0 l),   where kappa_0 in (0, mu) is the unique positive root of tanh(kappa l) = kappa/mu,

   and the remaining positive eigenvalues are lambda_n = sqrt(mu^2 + k_n^2), n >= 1, with k_n the unique root of tan(k l) = k/mu in (n pi/l, (n + 1/2) pi/l).
2. M = -mu and c < 1: no eigenvalue in (0, mu]. The positive eigenvalues are sqrt(mu^2 + k_n^2), n >= 0, with k_0 in (0, pi/(2l)) and k_n in (n pi/l, (n + 1/2) pi/l) roots of tan(k l) = k/mu. At c = 1 the lowest eigenvalue is exactly mu.
3. M = +mu > 0: every positive eigenvalue is sqrt(mu^2 + k_n^2) with k_n in ((n - 1/2) pi/l, n pi/l), n >= 1, a root of tan(k l) = -k/mu, so all exceed sqrt(mu^2 + (pi/2l)^2).

For M = 0 the spectrum is +/-(n + 1/2) pi/l, n >= 0 (job 05).

*Proof.* If D psi = lambda psi with lambda > 0, then R = A L / lambda and A^dagger A L = lambda^2 L, where A^dagger A = -d^2/dx^2 + M^2. The conditions become L(l) = 0 and L'(0) = M L(0). Conversely, every solution of this Sturm-Liouville problem with lambda^2 > 0 yields the eigenvector (L, A L/lambda), whose R-component vanishes at 0. The Sturm-Liouville problem has simple eigenvalues, and the condition L(l) = 0 forces each eigenfunction into one of three forms:

- E = M^2 + k^2: L = sin(k(l - x)), giving tan(k l) = -k/M;
- E = M^2 - kappa^2 with 0 < kappa < abs(M): L = sinh(kappa(l - x)), giving tanh(kappa l) = -kappa/M;
- E = M^2: L = l - x, giving M l = -1.

Counting roots for M = -mu, with t = k l or t = kappa l:

- g(t) = tanh t - t/c is concave on t > 0, with g(0) = 0, g'(0) = 1 - 1/c and g -> -infinity. It has a positive root iff c > 1, and that root is unique.
- h(t) = tan t - t/c is negative on (n pi - pi/2, n pi). On (n pi, n pi + pi/2) we have h' = sec^2 t - 1/c, which changes sign at most once from - to +. Since h(n pi) <= 0 and h tends to +infinity, there is exactly one root there for n >= 1. For n = 0 there is one iff c < 1.

For M = +mu, the function tan t + t/c is strictly increasing on (n pi - pi/2, n pi), from -infinity to n pi/c > 0, so it has exactly one root there. The hyperbolic equation and M l = -1 have no solutions. Finally, s = kappa_0 l satisfies s = c tanh s, which gives lambda_0^2 = mu^2 - kappa_0^2 = mu^2 sech^2 s. ∎

**Remark 9.4a (the boundary identity; from the Farsi-Latrémolière assessment of 3 Nov 2026, section 4.1).** Write D_M = D_0 + M sigma_1 with D_0 the massless operator. For psi = (L, R) in the domain of condition (c),

    ||D_M psi||^2 = ||D_0 psi||^2 + M^2 ||psi||^2 + M (|R(l)|^2 + |L(0)|^2),

since 2 Re <D_0 psi, sigma_1 psi> = [|R|^2]_0^l - [|L|^2]_0^l and the condition kills R(0) and L(l). So the anticommutator {D_0, sigma_1} vanishes in the interior and its quadratic form is the boundary term: this is exactly the hypothesis that Theorem 3.4 of Farsi-Latrémolière needs and that the interval fails, by the term that creates the wall modes (results/R1_counterexample_farsi_latremoliere.md). For M = +mu the term is nonnegative and the identity gives ||D_M psi||^2 >= ((pi/(2l))^2 + mu^2) ||psi||^2, a one-line proof of the bound in item 3; for M = -mu it is negative, which is where item 1 finds its eigenvalue below mu.

**Lemma 9.5 (size and shape of the light pair).** For c > 1,

    mu sech(mu l) <= lambda_0 <= 2 mu e^{-kappa_0 l},   so   lambda_0 = 2 mu e^{-mu l} (1 + o(1))   as mu l -> infinity.

The pair is spanned by L_0 = sinh(kappa_0 (l - x)), concentrated at x = 0, and R_0 = A L_0 / lambda_0 = (kappa_0 cosh(kappa_0(l - x)) - mu sinh(kappa_0(l - x)))/lambda_0, which vanishes at 0 and is concentrated at x = l. Moreover ||R_0|| = ||L_0||.

*Proof.* The lower bound holds because sech is decreasing and kappa_0 < mu. For the upper bound, lambda_0^2 = (mu - kappa_0)(mu + kappa_0) <= 2 mu (mu - kappa_0) = 2 mu^2 (1 - tanh(kappa_0 l)) <= 4 mu^2 e^{-2 kappa_0 l}. The equality of norms follows from ||A L_0||^2 = <A^dagger A L_0, L_0> = lambda_0^2 ||L_0||^2. For the asymptotic, put s = kappa_0 l, so that c = s/tanh s and 0 < c - s = c(1 - tanh s) <= 2c e^{-2s} -> 0; hence lambda_0 = mu sech s = 2 mu e^{-c} e^{c-s}/(1 + e^{-2s}) = 2 mu e^{-c}(1 + o(1)). Finally, mu = kappa_0 coth(kappa_0 l) and lambda_0 = kappa_0/sinh(kappa_0 l) give the exact identity R_0(x) = sinh(kappa_0 x) = L_0(l - x): the two profiles are mirror images, decreasing away from their walls, with localization on the scale 1/kappa_0 as s -> infinity (and approaching multiples of l - x and x as c -> 1). ∎

**Theorem 9.6 (the light pair is Connes-Lott with m = lambda_0).** Let P_0 project onto the eigenvalues +/- lambda_0 (c > 1), and use the basis u_L = (L_0, 0)/||L_0|| and u_R = (0, R_0)/||R_0||. Then:

- P_0 D P_0 = lambda_0 sigma_1 and P_0 Gamma P_0 = sigma_3;
- the compression of C(I) is Q(f) = diag(int f abs(u_L)^2, int f abs(u_R)^2), whose range is C + C;
- the truncated end states are at Connes distance 1/lambda_0.

*Proof.* We have D u_L = A L_0/||L_0|| = lambda_0 u_R. Pointwise orthogonality of the L and R components makes Q(f) diagonal. Q(1) = I and Q(x) = diag(<x>_L, <x>_R) with <x>_L < l/2 < <x>_R, since by the identity R_0(x) = L_0(l - x) of Lemma 9.5 the left density exceeds the right one on [0, l/2); so the range is the full diagonal algebra. Finally, ||[lambda_0 sigma_1, diag(a, b)]|| = lambda_0 abs(a - b). ∎

The two-sheet distance is therefore 1/(fermion mass), as in the Standard Model finite geometry; it depends on l only through lambda_0, and 1/lambda_0 > l for c > 1 by Lemma 9.7. At M = 0 (job 05) it was 2l/pi.

## The two limits

**Lemma 9.7.** For c > 1 let s(c) be the positive root of tanh s = s/c, and set F(c) = (lambda_0 l)^2 = c^2 sech^2 s(c). Then F is strictly decreasing on (1, infinity), F(1+) = 1 and F(infinity) = 0.

*Proof.* Differentiating tanh s = s/c gives s'(1/c - sech^2 s) = s/c^2. Here 1/c - sech^2 s > 0, since 1/c = tanh(s)/s and sinh 2s > 2s. Using c^2 - s^2 = c^2 sech^2 s, the condition F'(c) = 2c - 2 s s' < 0 is equivalent to c^2 sech^2 s < c^3 sech^2 s, i.e. to c > 1. The limits follow from s -> 0 as c -> 1 and s/c -> 1 as c -> infinity. ∎

**Theorem 9.8 (decompactification, l -> infinity at fixed mu, M = -mu).** We have lambda_0 <= 2 mu e^{-kappa_0 l} -> 0 with kappa_0 -> mu. The normalized profiles of L_0 near x = 0 and of R_0 near x = l converge, uniformly on compact sets of y and in L^2([0, infinity)) after extension by zero, to sqrt(2 mu) e^{-mu y}, where y is the distance to the respective wall: these are exact chiral zero modes of the two half-line operators (proof: norm(L_0)^2 = sinh(2s)/(4 kappa_0) - l/2 ~ e^{2s}/(8 kappa_0), kappa_0 -> mu, L_0(y) = R_0(l - y), and the same formula gives a uniform exponential bound). Since k_n lies in (n pi/l, (n + 1/2) pi/l), the rest of the spectrum obeys

    #{n : lambda_n <= E} = (l/pi) sqrt(E^2 - mu^2) + O(1)   for E > mu,

a one-dimensional Weyl law (for the positive spectrum; both signs double the leading term). One dimension emerges above the bulk gap mu, and the chirality sits on the two walls. ∎

**Theorem 9.9 (collapse at fixed light mass).** Fix m_f > 0. For each l in (0, 1/m_f) there is a unique mu(l) > 1/l with lambda_0 = m_f. As l -> 0:

- c(l) = mu(l) l -> infinity, with c = log(2c/(m_f l)) + o(1); equivalently c = -W_{-1}(-m_f l/2) + o(1) (Lambert W, lower branch), so c = L + log L + o(1) with L = log(2/(m_f l)): the leading scaling log(1/(m_f l))/l carries a log log correction, and it is specific to this localization model;
- the next eigenvalue exceeds sqrt(mu(l)^2 + (pi/l)^2) -> infinity;
- the light pair stays Connes-Lott with mass m_f (Theorem 9.6), while the interval collapses to a point in Gromov-Hausdorff distance. This is a statement about the compression at each l. As whole triples in the spectral propinquity, the family converges to (C, C^2, m_f sigma_1), a point carrying a massive two-dimensional Dirac block, at distance at least min(sqrt(2)/2, (1/m_f - l)/2) from the Connes-Lott triple (Corollary 15.5 of [lemma 15](15_propinquity_collapse.md)). Both statements hold: the metric compares the whole algebra, and the compression is a different object.

*Proof.* Existence and uniqueness follow from Lemma 9.7 applied to F(c) = (m_f l)^2 in (0, 1). As l -> 0 we have F -> 0, so c -> infinity, and Lemma 9.5 gives m_f = 2 (c/l) e^{-c}(1 + o(1)). The bound on the next eigenvalue is Theorem 9.4.1. ∎

**Corollary 9.10 (collapse at fixed bulk mass).** If instead mu is fixed and l -> 0, then eventually c < 1, every eigenvalue has absolute value greater than mu, and the smallest absolute value is (pi/(2l))(1 + o(1)) (the lowest root t_0 = k_0 l of tan t/t = 1/(mu l) tends to pi/2). No light fermion survives. This extends Proposition 05-4 to M != 0.

## Gauge fields on the interval (scale lemma for T4)

**Lemma 9.11.** For -d^2/dx^2 on [0, l]:

- Neumann-Neumann conditions give eigenvalues (n pi/l)^2, n >= 0, including a massless mode;
- Neumann-Dirichlet (in either order) gives ((n - 1/2) pi/l)^2, n >= 1;
- Dirichlet-Dirichlet gives (n pi/l)^2, n >= 1.

A gauge field with a Dirichlet condition at one end and a Neumann condition at the other therefore has lightest mass pi/(2l), which equals the Connes-Lott mass of the massless chiral interval (job 05); with Dirichlet conditions at both ends the lightest mass is pi/l. A Dirichlet condition at one end alone does not fix the answer: u(0) = 0 with u'(l) = u(l)/l admits the zero mode u(x) = x. ∎

## Remark: fermion mass as internal momentum

In this family, masses are internal momenta, with an explicit rule for their quantization. At M = 0 the Connes-Lott mass is the lowest allowed momentum (r - 1/2) pi/l, quantized by the chiral boundary conditions. With a bulk mass, lambda_n^2 = mu^2 + k_n^2 adds the bulk mass and the quantized momentum in quadrature. The light pair's mass, mu sech(kappa_0 l), is exponentially sensitive to mu l. Order-one differences of mu_i l between generations therefore give hierarchical masses of about 2 mu_i e^{-mu_i l}. This is the localization mechanism for Yukawa hierarchies (Arkani-Hamed-Schmaltz 2000; Gherghetta-Pomarol 2000; Grossman-Neubert 2000). In noncommutative-geometry terms, the finite operator D_F of the two-sheet space is the towerless remnant of internal momentum, and its texture becomes localization and overlap data.

## Numerical check

The secular equations of Theorem 9.4 were compared with the eigenvalues of an independent first-order discretization: the chain of job 05 with mass term (M/2)(R_{i+1} + R_i), N = 4000.

| mu (l = 1) | secular | chain |
|---|---|---|
| 1e-4 | 1.57073, 4.71237, 7.85397 | 1.57054, 4.71178, 7.85299 |
| 0.5 | 1.26828, 4.63129, 7.80591 | 1.26809, 4.63070, 7.80493 |
| 3 | 0.30255, 5.06274, 8.05194 | 0.30244, 5.06227, 8.05103 |
| 6 | 0.02975, 7.04564, 9.33873 | 0.02972, 7.04536, 9.33799 |

At mu = 6, 2 mu e^{-mu l} = 0.029745, against lambda_0 = 0.029747. Lemma 9.7 was confirmed on (1, 40] using the cancellation-free form c^2 sech^2 s. For the collapse at m_f = 1:

| l | mu l | mu | lambda_0 | next eigenvalue |
|---|---|---|---|---|
| 0.5 | 2.234 | 4.47 | 1.000000 | 9.56 |
| 0.1 | 4.501 | 45.0 | 1.000000 | 59.2 |
| 0.01 | 7.284 | 728 | 1.000000 | 812 |
| 0.001 | 9.893 | 9893 | 1.000000 | 10487 |

**Literature ([../LITERATURE.md](../paper/LITERATURE.md), section B).** Opposite-chirality boundary modes with exponentially small mixing are in Jackiw-Rebbi 1976, Kaplan 1992 and Shamir 1993 (section 3); collapse of spectral triples to a point is treated by Farsi-Latremoliere (J. London Math. Soc., 2026). The tuned collapse mu(l) of Theorem 9.9 was not found in print.
