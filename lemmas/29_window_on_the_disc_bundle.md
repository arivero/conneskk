# The eight-state window on the disc bundle

Written by Claude Opus 5.5 on 4 November 2026, for STRATEGY T0, without an Astra job. It continues [lemma 28](28_two_walls_connected_parent.md) and answers the prompt [29_window_coercive_estimate.md](prompts/29_window_coercive_estimate.md). Refereed by Terra 6.1 ([report](../reviews/2026-11-04_terra_check_29.md)): case (b) stands with amendments, and the two errors it found in case (a), the definition of A_eff and the sign of the fibre part, are corrected below. The referee ran no computation, and no second referee has read the corrected case (a).

## Outcome

1. **Conjecture 28.6 holds in case (b)** for the class of metrics and mass profiles of Setting 29.0: for large M, D-hat_M has exactly eight eigenvalues in (-delta, delta), for every delta < sqrt 3 (Theorem 29.7).
2. **Conjecture 28.6 holds in case (a) at the Fubini-Study radius** rho = 1, with fibre part -2/3 (Theorem 29.11). At another wall radius, case (a) follows from one kernel condition K(rho), which is a finite check at each radius.
3. **The off-diagonal block is exponentially small**, |lambda_M| <= C exp(-(1 - eta)(M/2) int f dr), by an exact tunnelling identity and Agmon estimates (Proposition 29.8).
4. **The compression converges** to (Q_B(a|_{S^4}), Q_Y(a|_{CP^3})) with error O(M^{-1/2}) (Theorem 29.9). The statement concerns compression maps, in line with Counterexample 28.17.

The proof is short because Sp(2)-equivariance gives exact sums of squares at the core and at the wall. Each estimate holds on all of L^2 of a fixed manifold, with the boundary operators elliptic on CP^3 or S^4, so uniformity over the representations of Sp(2) needs no separate argument. The spectral separation hypothesis of Maridakis, which fails for this mass (reviews/2026-11-03_terra_check_28.md, item 6), is never used. General forms of two identities are in the literature: the square with its zero-order cross term in the bulk (Maridakis, arXiv:1510.07004, Lemma 2.2), and a horizontal and vertical factorization with a curvature contraction (Kaad and van Suijlekom, arXiv:1710.03182, Proposition 18, under other hypotheses).

*Scope.* These are spectral statements for a chosen metric family, with flat fibres near the zero section. They give the finite window from the operator, for the sign of Proposition 28.13. They leave open: other metrics in the class of Theorem 28.9, including the Bryant-Salamon metric; the connector of Proposition 28.20; the quaternionic grading of Proposition 28.19; any dynamics selecting M, l or rho. Finite-mass generated algebras stay outside the statement (Counterexample 28.17).

## Setting

**Setting 29.0.** Let X be the disc bundle of lemma 28, G = Sp(2), K = Sp(1)_a x Sp(1)_b, H = Sp(1)_a x U(1)_b, E = S^3(S), Phi_M = eps M f(r) n . J, and T_M = D_X^E + i Phi_M, with D-hat_M the doubled operator and the wall condition of Theorem 28.9: Z u = -u for T_M, and Z v = +v for T_M^*. Assume:

- (H1) g = dr^2 + pi^* g_{S^4} + rho(r)^2 g_{S^2}, with S^4 of radius 1, rho(r) = r on [0, 2e], and rho constant, equal to rho_l, on the collar [l - 2a, l]. Case (b) and Theorem 29.11 take rho_l = 1, the Fubini-Study metric.
- (H2) f(r) = r on [0, 2e], f = f_0 > 0 on the collar, and f > 0 on (0, l]. This is M b(|v|^2) v . J with b positive.
- (H3) The connection on E is the pull-back connection on r <= 2e. In case (b) it preserves the four line summands on the collar, with any invariant interpolation in between. In case (a) it is the pull-back connection throughout. We use radial parallel gauge: nabla_{d/dr} = d/dr. An invariant dr-component a(r) q could otherwise be added to a line-preserving connection; it is removed by radial parallel transport, which changes the displayed formulas by a phase on each line.
- (H4) eps = -gamma_b, where gamma_b is the chirality of Sigma_4 whose K-type is (1, 2). This is the sign of Proposition 28.13: its right singular vector is at the zero section. The opposite sign exchanges T_M and T_M^* throughout. In the convention of tools/lemma28_radial.py, gamma_b = +1.

On the collar put q = eps n . J, with eigenvalues +-3/2, +-1/2 on the line summands, and m = M f_0. In general q = -gamma_b n . J. In the notation of Proposition 28.13 and tools/lemma28_radial.py, q = -tau, and T_M = i Z d/dx + A + i m q on the collar, with x increasing towards the wall. The line q = +3/2 is the summand O(3), and q > 0 are the stable channels of Proposition 28.13.

Let C_R = ||A_2||, the norm on Sigma_6 (x) E of the curvature contraction A_2 = -(i/8) sum C_ab^alpha c_a c_b c_alpha; it does not depend on V, and C_R = 1 in Python. Let mu_1 > 0 be the smallest positive eigenvalue of Q^* Q for Q = sigma . d_y + y . J of Proposition 28.11. It is positive since the resolvent is compact, because (y . J)^2 >= |y|^2 / 4, and ker Q = 0. Python gives 1.02.

## The zero section

**Proposition 29.1 (exact splitting).** Identify sections over the tube r <= 2e with K-equivariant maps s : G -> F, F = Sigma_4 (x) L^2(R^3; C^2 (x) C^4), with c(e_a) = gamma_a (x) 1 and c(f_alpha) = gamma_5 (x) sigma_alpha. Let D_H = i sum gamma_a e_a, with e_a acting as left-invariant derivatives on G, and Q^ = gamma_5 sigma . d_y + eps M y . J. Then on this tube T_M = T_0 + R, with T_0 = D_H + i Q^ and R Hermitian of order zero with |R| <= C_R |y|, and

    T_0^* T_0 = D_H^2 + Q^^* Q^,    T_0 T_0^* = D_H^2 + Q^ Q^^*,

with D_H^2 commuting with Q^^* Q^ and Q^ Q^^*.

*Proof.* The fibres are flat and totally geodesic by (H1), so the Levi-Civita connection of X differs from the connection associated with the principal K-bundle G -> S^4 only by the O'Neill tensor. Its component is the curvature of N evaluated at v. This gives the zero-order term R, which equals r A_2 in the radial form D_6 = A_0 + A_1/rho + A_2 rho, of norm at most C_R |y|. For the pull-back connection, the remaining operator is D_H + i gamma_5 sigma . d_y + i Phi_M. The operator Q^ acts on the values of s, and it is K-equivariant, since sigma . d_y and y . J are invariant under the simultaneous rotation of y, of C^2 and of C^4. So Q^ maps equivariant maps to equivariant maps, and it commutes with each derivative e_a, because it does not depend on the point of G. Since gamma_a anticommutes with gamma_5 and commutes with y . J, D_H Q^ = Q^^* D_H, where Q^^* = -gamma_5 sigma . d_y + eps M y . J. Therefore

    T_0^* T_0 = (D_H - i Q^^*)(D_H + i Q^) = D_H^2 + Q^^* Q^ + i (D_H Q^ - Q^^* D_H) = D_H^2 + Q^^* Q^,

and likewise for T_0 T_0^*. Finally D_H Q^^* Q^ = Q^ Q^^* D_H, so D_H^2 commutes with both. ∎

*In radial form.* T_0 = i Z d/dx + A_0 + A_1/rho + i phi q, and the cross terms vanish by {A_0, Z} = 0, [A_0, tau] = 0 and {A_0, A_1} = 0. tools/lemma28_radial.py asserts these three identities on the representations 4, 16, 20, 40 (Python).

**Proposition 29.2 (the model spectrum).** On the total space of N, with f = r and T_0 as above, let Pi be the projection onto ker T_0. Then:

1. ker T_0 is one copy of the 4 of G; ker T_0^* = 0.
2. ||T_0 u||^2 >= min(4, mu_1 M) ||u||^2 for u orthogonal to ker T_0, and ||T_0^* v||^2 >= min(4, mu_1 M) ||v||^2 for all v in the domain.

*Proof.* Write Q^_gamma for Q^ on chirality gamma. By Proposition 28.11, Q^_gamma has kernel exactly when gamma = -eps; this is the rank-four K-representation W_0 = (1, 3) + (1, 1), and on the orthogonal complement Q^^* Q^ >= mu_1 M, after the rescaling y -> M^{-1/2} y. The same bound holds on the other chirality, and for Q^ Q^^* with the chiralities exchanged, since Q^* Q and Q Q^* have the same nonzero spectrum. The fibrewise projection P_W onto W_0, on both chiralities of Sigma_4, commutes with D_H, by Proposition 29.1. (The projection onto the fibre kernel of Q^ also selects gamma = -eps, so it does not commute with D_H, which is odd; it commutes with D_H^2.) On chirality -eps, Q^ vanishes on the range of P_W and is bounded below by sqrt(mu_1 M) on its complement; on chirality +eps, it is bounded below by sqrt(mu_1 M) throughout. On Sigma^gamma (x) W_0, D_H is the Dirac operator of S^4 twisted by the homogeneous bundle of W_0, so by Parthasarathy's formula D_H^2 = Cas_G(V) + 3/2 - Cas_K(tau), with Cas_K = 2 j (j + 1) on Sp(1)_b, that is 0 and 4 on W_0. Only V odd under -1 occur, with Cas_G(V) >= 5/2 and Cas_G(V) >= 15/2 for V not the 4. So D_H^2 >= 4 except for D_H^2 = 0 at V = 4, twist j = 1. This kernel needs Hom_K(4, Sigma^gamma (x) (1, 3)) != 0, which holds exactly for Sigma^gamma = (1, 2), where (1, 2) (x) (1, 3) contains (1, 2) once. By (H4), gamma_b = -eps, so T_0 sees this chirality and T_0^* the other. Decomposing u by chirality and by P_W, and using the sum of squares, gives both bounds. The computation holds on compactly supported smooth sections, and extends by closure, since the doubled model is essentially self-adjoint on that core; no boundary condition enters at infinity. ∎

**Lemma 29.3 (core estimate).** Let u be in H^1 with support in r < 2e. Then

    || |y| u || <= (2/M) ||T_0 u|| + sqrt(10/M) ||u||,

and the same holds with T_0^*. So ||T_M u|| >= (1 - 2 C_R/M) ||T_0 u|| - C_R sqrt(10/M) ||u||, and likewise for T_M^* with T_0^*. In particular, for such u with Pi u = 0, and for all such v,

    ||T_M u|| >= (2 - o(1)) ||u||,    ||T_M^* v|| >= (2 - o(1)) ||v||,    M -> infinity.

*Proof.* Q^^* Q^ = -Laplacian_y + M^2 (y . J)^2 - eps M gamma_5 sigma . J. The eigenvalues of sigma . J are 3/2 and -5/2, and (y . J)^2 >= |y|^2/4. Hence M^2 || |y| u ||^2 / 4 <= ||Q^ u||^2 + (5/2) M ||u||^2 <= ||T_0 u||^2 + (5/2) M ||u||^2, by Proposition 29.1. The rest is the triangle inequality with |R| <= C_R |y|, and Proposition 29.2. ∎

## The bulk

**Lemma 29.4 (bulk estimate).** Let w be in H^1 with support in a compact subset of 0 < r < l, and let f_1 be the minimum of f on that support. Then

    ||T_M w||^2, ||T_M^* w||^2 >= (M^2 f_1^2 / 4 - C_Phi M) ||w||^2,

with C_Phi the supremum of the operator norm of the Clifford contraction sum_i c(e_i) nabla_{e_i} (f n . J). With 0 < r_1 < r_2 < l and a radial cutoff psi equal to 1 on [r_1, r_2], with compact support in 0 < r < l, we have for u in Dom T_M,

    ||u||^2_{L^2(r_1 <= r <= r_2)} <= C M^{-2} (||T_M u||^2 + ||u||^2).

*Proof.* ||(D + i Phi) w||^2 = ||D w||^2 + ||Phi w||^2 + <w, i [D, Phi] w>, with [D, Phi] of order zero and pointwise bounded independently of V, and Phi^2 >= M^2 f^2 / 4. For the second statement, T_M (psi u) = psi T_M u + [D, psi] u. ∎

The interpolation of the connection in (H3) takes place in this region, where it enters only through C_Phi.

## The wall

**Lemma 29.5 (line-twisted operators at the Fubini-Study metric).** Let D_k be the Dirac operator on CP^3 twisted by O(k) with its invariant connection, k odd, at rho = 1. Then D_k^2 = C_2(L) + 3/2 - (3/8) k^2 on the SU(4)-type L, with C_2 normalized by C_2(4) = 15/8. Consequently:

1. On O(3): ker D_3 is one copy of the 4 of Sp(2), in Z = +1; and D_3^2 >= 5 on the V-isotypic part for V not the 4.
2. On O(1): ker D_1 = 0; D_1^2 >= 3 on the 4 and D_1^2 >= 6 on the V-isotypic part for V not the 4.

So the smallest nonzero |eigenvalue| on O(3) + O(1), over all V, is kappa_w = sqrt 3, attained on the 4; the lowest wall value on the 16 is sqrt 5.

*Proof.* The form of D_k^2 is Parthasarathy's formula for SU(4)/U(3), since the twist is a character of U(3). The Sp(2)-invariant connection on a line summand is unique, because the isotropy representation has no trivial summand, so it is the Chern connection. The normalization: j(j + m + 3) is the eigenvalue of 2 box on (0,0)-forms in O(m) on the type [m + j, 0, j], with C_2([m + j, 0, j]) - C_2([m, 0, 0]) = j (j + m + 3), which fixes the coefficient of C_2; scalar curvature 12 gives the constant 3/2; and the term in k^2 is fixed by the kernel of D_3 on the 4. Two checks: D_0^2 = 4 on the type 6, the Kirchberg limit R/3 at R = 12 (Ann. Global Anal. Geom. 4 (1986) 291-325); and the values in the Python table below. The kernel statements are H^q(CP^3, O(1)) = C^4 at q = 0 only, and H^q(CP^3, O(-1)) = 0, with K^{1/2} = O(-2). The types of odd 4-ality with C_2 < 55/8 are the 4, its conjugate, the 20 and its conjugate (enumerated in Python). The 4 occurs on O(3) once, by the multiplicity on the slice, and this copy is the kernel; since each 20 restricts to Sp(2) as 4 + 16, neither 20 occurs on O(3). So V != 4 has C_2 >= 55/8 on O(3), giving D_3^2 >= 5. On O(1), the 4 and its conjugate restrict only to the 4 of Sp(2), so V != 4 has C_2 >= 39/8, giving D_1^2 >= 6; and the slice block on the 4 has D_1^2 = 3, 6. The chirality of ker D_3 is that of (0,0)-forms, and the slice block fixes it as Z = +1 for q = +3/2 (Python). ∎

**Lemma 29.6 (wall estimate in case (b)).** Let w be in H^1 with support in the collar, vanishing near its inner end, and p(x) = sqrt(3 m) exp((3/2) m (x - l)), so that the kernel of T_M^* on the half-cylinder is p (x) ker D_3. Then:

1. If Z w = -w at r = l, then ||T_M w||^2 >= min(m^2/4, 3) ||w||^2.
2. If Z w = +w at r = l, and w is orthogonal to p (x) ker D_3, then ||T_M^* w||^2 >= min(m^2/4, 3) ||w||^2.

*Proof.* On the collar, A commutes with q and with d/dx, and anticommutes with Z. Writing w = w_+ + w_- by Z, integration by parts gives, for T_M,

    ||T_M w||^2 = ||(d + m q) w_+||^2 + ||A w_+||^2 + ||(d - m q) w_-||^2 + ||A w_-||^2,

where the cross terms are purely imaginary, using w_+(l) = 0. For T_M^* the same holds with q replaced by -q and with w_-(l) = 0. There are three one-dimensional cases on (-infinity, l]. (i) If g(l) = 0, then ||(d +- m q) g||^2 = ||g'||^2 + m^2 q^2 ||g||^2. (ii) With g(l) free, ||(d + m |q|) g||^2 = ||g'||^2 + m^2 q^2 ||g||^2 + m |q| |g(l)|^2. (iii) With g(l) free, ||(d - m |q|) g||^2 is the form of -d^2 + m^2 q^2 with a Robin condition at l, whose spectrum consists of 0, on the profile sqrt(2 m |q|) exp(m |q| (x - l)), and of [m^2 q^2, infinity). Cases (i) and (ii) give the lower bound m^2/4. Case (iii) arises exactly in the channels (Z, q) = (-, q > 0) for T_M and (+, q > 0) for T_M^*. On those, expand in eigenvectors of A^2: the term ||A w||^2 is at least 3 ||w||^2, except on ker D_3 in Z = +1, which by Lemma 29.5 only arises for T_M^* at q = 3/2, where the Robin gap (9/4) m^2 applies. ∎

## The window

**Theorem 29.7 (the window, case (b)).** Under Setting 29.0 with rho_l = 1 and connection (b), let delta < sqrt 3. For M large, D-hat_M has exactly eight eigenvalues in (-delta, delta). The spectral subspace splits under Gamma-hat as W_M (+) V_M, each a copy of the 4 of Sp(2), with W_M within O(M^{-1/2}) of the cut-off core modes in the domain of T_M, and V_M within O(M^{-1/2}) of the cut-off wall modes p (x) ker D_3 in the domain of T_M^*.

*Proof.* We verify Lemma 28.14. Take radial functions chi_c, chi_b, chi_w with chi_c^2 + chi_b^2 + chi_w^2 = 1, chi_c = 1 on r <= e with support in r < 2e, chi_w = 1 on [l - a, l] with support in the collar. Let U_M span (chi_c u_i, 0) and (0, chi_w v_k), where u_i is a basis of ker T_0 and v_k of p (x) ker D_3, with Gram-Schmidt. Radial functions preserve the wall condition.

*Trial states.* T_M (chi_c u_i) = [D, chi_c] u_i + R chi_c u_i, of norm O(M^{-1/2}), since u_i has Gaussian decay at the scale M^{-1/2}; and T_M^* (chi_w v_k) = [D, chi_w] v_k, which is O(exp(-(3/2) m a)). So eps_M = O(M^{-1/2}).

*Coercivity.* Since [D, chi] = c(d chi) with c(d chi)^2 = |d chi|^2, and sum chi_i d chi_i = 0,

    ||T_M u||^2 = sum_i ||T_M chi_i u||^2 - sum_i || |d chi_i| u ||^2,

and likewise for T_M^*. The functions d chi_i vanish outside the bulk region e <= r <= l - a. So by Lemma 29.4,

    (1 + C M^{-2}) ||T_M u||^2 >= ||T_M chi_c u||^2 + ||T_M chi_w u||^2 - C M^{-2} ||u||^2,    ||chi_b u||^2 <= C M^{-2} (||T_M u||^2 + ||u||^2).

If u is orthogonal to every chi_c u_i, then Pi (chi_c u) = 0 exactly, since <u_i, chi_c u> = <chi_c u_i, u>, so Lemmas 29.3 and 29.6 (1) give ||T_M u||^2 >= (3 - o(1)) ||u||^2. If v is orthogonal to every chi_w v_k, then chi_w v is orthogonal to p (x) ker D_3, so Lemmas 29.3 and 29.6 (2) give the same for T_M^*. Since ||D-hat (u, v)||^2 = ||T_M u||^2 + ||T_M^* v||^2, Lemma 28.14 gives the count and the distance to the range. The window is G-invariant and close to the range of U_M, so as representations W_M and V_M are copies of the 4. ∎

*Remark.* The gap is set by the wall at sqrt 3, with the core next at 2. On the 16, 20 and 40 the lowest values are sqrt 5, sqrt 5, sqrt 12.

**Proposition 29.8 (tunnelling).** Let T_M u = lambda v and T_M^* v = lambda u be a singular pair of the window, with unit vectors. By Proposition 28.19, the four singular values coincide. For a radial chi equal to 1 near r = 0 and 0 near r = l,

    lambda (<u, chi u> - <v, chi v>) = <v, c(d chi) u>.

For every eta in (0, 1) there are M_eta and C_eta with

    |lambda_M| <= C_eta exp(-(1 - eta)(M/2) int_e^{l - a} f dr),    M >= M_eta.

*Proof.* The function chi u lies in Dom T_M, since chi vanishes near the wall. So <T_M^* v, chi u> = <v, T_M chi u>, and T_M chi u = chi lambda v + c(d chi) u. This gives the identity.

For the decay of u, let xi = psi exp(g) be radial, with psi = 0 on r <= e/2 and psi = 1 on r >= e, with g = 0 on r <= e, g' = (1 - eta)(M/2) f on [e, r_*], and g constant on r >= r_*. Since xi^2 u lies in Dom T_M,

    ||T_M (xi u)||^2 = lambda^2 ||xi u||^2 + || |d xi| u ||^2.

As in the proof of Theorem 29.7, with no core piece, the bulk bound of Lemma 29.4 and Lemma 29.6 (1), or Proposition 29.10 in case (a), bound the left side from below by the integral of (M^2 f^2/4 - C M) |xi u|^2 on the bulk, plus (3 - o(1)) ||xi u||^2 on the collar, minus C M^{-2} ||xi u||^2. On the bulk the excess over (g')^2 is at least (eta/4)(M^2 f^2 / 4) for M large, with f >= f_1 > 0, so ||exp(g) u||_{L^2(r >= e)} <= C_eta. For v we use the same argument from the wall inward, with g-tilde = 0 on [l - a, l], with -g-tilde' = (1 - eta)(M/2) f, and with Lemma 29.3 replacing Lemma 29.6 on the core, since T_M^* has no low states there. Take chi with |d chi| <= 2/s, supported on [r_*, r_* + s] in the bulk. By Theorem 29.7, <u, chi u> -> 1 and <v, chi v> -> 0, so the identity gives |lambda| <= (4/s) ||u||_{[r_*, r_* + s]} ||v||_{[r_*, r_* + s]}. Run the weights with eta' = eta/2, and take s so small that (1 - eta')(I - int_{r_*}^{r_* + s} f) >= (1 - eta) I, with I = int_e^{l - a} f. This gives the stated exponent. The absorption uses lambda -> 0, supplied by the trial states. The factor 1/2 holds on every channel, since (n . J)^2 >= 1/4. ∎

For a family with l -> infinity, M >= M_eta, with uniform bounds on the end geometry, the cutoffs, the connection and the positive bulk mass, the constants are uniform, so lambda is exponentially small in l at the rate (1 - eta)(M/2) inf f. This is the uniform decay rate required by Conjecture 28.6, as amended by the referee.

**Theorem 29.9 (compression).** Under Theorem 29.7 or Theorem 29.11, for a in C^1(X),

    || Q_M(a) - (Q_B(a|_{S^4}) (+) Q_Y(a|_{CP^3})) || <= C ||a||_{C^1} M^{-1/2},

where Q_B(a) = int a(x) 2 P_x d mu(x), with P_x = (1 - x . Gamma)/2, and Q_Y(a) = int a(z) B(z) d mu(z). In case (b), B(z) = 4 p_z, the level-one map of Example 16.9. In case (a) at radius rho, B(z) = 2((1 + w) p_z + (1 - w) p_{jz}), with p_{jz} the quaternionic partner of p_z and w = w(rho); so Q_Y(x_a) = -Gamma_a/5, Q_Y(y_T) is w(rho) times the level-one value, and the signed fibre part is -w(rho). Restriction to the two ends is surjective (Proposition 28.8), so real functions on X generate M_2(H) + M_4(C) under the limit map, by lemma 10 and Example 16.9, for every w(rho) > 0.

*Proof.* Theorem 28.15, with eta_M = O(M^{-1/2}) from Theorems 29.7 and 29.11, after choosing equivariant unitary identifications of the window spaces with the model copies of the 4. The normal first moments are O(M^{-1/2}) at the core, by the Gaussian decay of the model, and O(M^{-1}) at the wall, by the profiles. At the core, F in Hom_K(4, (1, 2) (x) (1, 3)) kills (2, 1), so B = 2 P_x in the normalization Q_B(1) = I. The sign in P_x is the value tr(B Gamma_5)/tr B = -1 of Proposition 28.13. At the wall, the pointwise inner product of different line summands vanishes, so the density is a sum over channels with weights from Proposition 28.13. ∎

## Case (a)

On the collar in case (a), A = A_d + A_o, where A_d = D_line preserves the lines and A_o = A_E/rho has order zero, with [A_o, q] != 0. In Python, the block of A_E between q = 3/2 and q = 1/2 has norm sqrt 3 and ||A_E|| = 2, on the full fibre, hence for all V. Let P be the projection onto {sum_{q > 0} p_q g_q : Z g_q = -g_q}, with p_q = sqrt(2 m q) exp(m q (x - l)), and Y the same with Z = +1, with Pi_Y the projection onto the second space. Let F = Pi_Y (A_d + A_o) P, from the range of P to Y, and let A_eff be the operator on the sum of both ranges with blocks F and F^*. Identified with sections over CP^3 of the lines q > 0, it is, by Lemma 28.12,

    A_eff = D_3(rho) (+) D_1(rho) + (sqrt 3 / 2) B(rho),

with B(rho) the block of A_o between the stable channels, of norm sqrt 3 / rho. This is self-adjoint and elliptic on the fixed manifold CP^3, so its nonzero spectrum has a gap kappa_a(rho) > 0, uniformly in V. On the 4, F^* is the matrix A(rho) of Proposition 28.13, from Y to the range of P.

**Condition K(rho).** The kernel of A_eff(rho) is exactly one copy of the 4, in Z = +1, so F is injective and ker F^* is that copy.

**Proposition 29.10 (wall estimate in case (a)).** Assume K(rho). For w as in Lemma 29.6, with the kernel p (x) ker D_3 replaced by the kernel of the half-cylinder operator T_M^*, the two statements of Lemma 29.6 hold with the constant 3 replaced by kappa_a(rho)^2 - O(1/m). The half-cylinder kernel is exactly one copy of the 4 for m large, with fibre part tending to w(rho) at rate O(1/m).

*Proof.* T_d = i Z d/dx + A_d + i m q preserves the block structure: T_d P = Pi_Y T_d P, since T_d (p_q g) = p_q A_d g. Also T_d maps the complement of P to the complement of Y, because for y in Y the function T_d^* y = A_d y lies in P. On the complement of P, ||T_d w_2|| >= (m/2) ||w_2||, by the sum of squares of Lemma 29.6, where the channels with Robin kernel are removed. So with w = w_1 + w_2 and w_1 = P w,

    ||T_M w|| >= ||(1 - Pi_Y) T_M w|| >= (m/2) ||w_2|| - ||A_o|| ||w||,
    ||T_M w|| >= ||Pi_Y T_M w|| >= ||F w_1|| - ||A_o|| ||w_2||.

Eliminating ||w_2||, one gets (1 + 2 ||A_o|| / m) ||T_M w|| >= ||F w_1|| - (2 ||A_o||^2 / m) ||w||. Under K(rho), F is bounded below by kappa_a(rho), and F^* is bounded below on the complement of its kernel. The same elimination holds for T_M^*, with P and Y and F and F^* exchanged. On the half-cylinder T_M is thus injective with closed range, so T_M^* is surjective; its kernel is the kernel of the Schur complement of the block T_d + (1 - Pi_Y) A_o (1 - P), whose inverse has norm at most (m/2 - ||A_o||)^-1. So this Schur complement differs from F^* by at most ||A_o||^2 / (m/2 - ||A_o||). Off the 4, this is invertible. On the 4 the block is a 2 x 3 matrix of rank 2, so its kernel has dimension exactly 1, within O(1/m) of (-(2/3)(rho^2 + 2), 1, 1). ∎

**Theorem 29.11 (the window in case (a)).** Under Setting 29.0 with the pull-back connection, K(1) holds, and for delta < min(2, kappa_a(1)) and M large the conclusion of Theorem 29.7 holds at the Fubini-Study radius, with the wall modes replaced by the kernel of Proposition 29.10, and with fibre part tending to -w(1) = -2/3. Here kappa_a(1) >= sqrt 5 - 3/2 off the 4, and it equals 1.863 on the 4, the squared values there being (45 +- 3 sqrt 33)/8. At another wall radius the same conclusion holds under K(rho).

*Proof.* By Lemma 29.5, on V != 4 we have |D_3 (+) D_1| >= sqrt 5, while ||(sqrt 3/2) B(1)|| = 3/2. So A_eff is invertible there, with lower bound sqrt 5 - 3/2 > 0. On the 4, F^* is A(1), with kernel of dimension one in Z = +1, the vector (-2, 1, 1), and nonzero singular values 1.863 and 2.789, by Proposition 28.13. So K(1) holds. The proof of Theorem 29.7 then applies with Proposition 29.10 in place of Lemma 29.6. The trial wall states are cut-offs of the exact half-cylinder kernel, so their defect is exponentially small. ∎

*Other radii.* For K(rho), only finitely many V can carry a kernel, those with |D_3(rho) (+) D_1(rho)| <= 3/(2 rho), by ellipticity. In Python, on the 16, 20, 40 and for rho in [0.2, 4], the compressed block has smallest singular value at least 1.30. A check of K(rho) on all relevant V at a given radius needs a lower bound for D_line(rho) on all V, which we have not written down away from rho = 1.

## Remarks

**Remark 29.12 (the index).** The summands of E on CP^3 have indices 4, 0, 0, -4, of total zero, as equivariant cobordism invariance requires: E extends over X (Witten 1983, preprint pp. 43-44). The window has one copy of the 4 in each Gamma-hat degree, so its Sp(2)-index is 4 - 4 = 0. So index theory allows lambda != 0, and the eight states come from the estimates above. The sign in (H4) is consistent with this: with the opposite sign, the end-model modes at the core belong to T_M^* and those on O(-3) at the wall to T_M (Proposition 28.13), so the two ends never lie in the same Gamma-hat degree. At finite mass the full operator can have nonzero lambda, so these states need not lie in exact kernels. The relative sign of the two ends enters through the chirality of ker D_3. It follows from the slice weights, which contain the 4 once in Z = +1 and not in Z = -1, and the sign of the core is the chirality statement behind (H4). If the O(3) zero mode lay in Z = -1 with q > 0, it would be a wall zero mode of T_M, in conflict with Lemma 29.6 (1). As a check in Python, the mean position of the modes is 0.51 at the core for T_M and 2.96 at the wall for the adjoint problem, with l = 3.

**Remark 29.13 (physical units).** All statements are in shape units. Under the dilation g -> R^2 g, with D -> D/R and the potential divided by R, the operator is unitarily equivalent to D-hat_M / R. So the light mass is lambda_M / R, the gap delta / R, and their ratio is unchanged, while the compression maps stay the same; this observation is from the outside audit of 3 November 2026, section 5.2, conditional there on the estimates proved here. A family with R -> infinity, with lambda_M / delta small, closes the physical gap and keeps the eight states separated. Whether a dynamics selects such a family is open. The limiting geometry of such a family is a separate question: nothing here identifies it with a complete Bryant-Salamon manifold.

**Remark 29.14 (other metrics).** In the class of Theorem 28.9, T_M - T_0 also contains first-order terms with coefficients O(r^2), and M (b(r^2) - b(0)) y . J. One route shrinks the core piece to r < M^{-1/2 + s}, where Lemma 29.4 controls the complement since M^2 r^2 dominates. We have not carried this out, and the horizontal first-order terms need a bound in terms of D_H that takes account of the unbounded curvature terms.

## Numerical check

Python (numpy, scipy): tools/lemma29_window.py. It asserts that [A, q] = 0 and {A, Z} = 0 at rho = 1 with the line-preserving connection, the values of Lemma 29.5 against the formula, and the norms used above; tools/lemma28_radial.py asserts the identities of Proposition 29.1. The direct solve is a test of the prediction: the limit values below were fixed by Proposition 29.2 and Lemma 29.5 before the run, and a failure would have refuted the argument. Setting: rho(x) = x for x <= 0.4, rho(x) = 1 for x >= 1.2, phi = M rho, l = 3, with the connection switched on [0.6, 1.2], and P1 elements at 2500 cells. Lowest singular values of T_M:

| V | M = 8 | M = 16 | M = 32 | predicted limit |
|---|---|---|---|---|
| 4 | small, 1.7321, 1.9861, 2.4495 | small, 1.7321, 1.9963, 2.4495 | small, 1.7323, 1.9991, 2.4497 | 0, sqrt 3, 2, sqrt 6 |
| 16 | 2.2245, 2.2361, 2.4495 | 2.2324, 2.2367, 2.4495 | 2.2351, 2.2409, 2.4497 | sqrt 5 (core), sqrt 5 (wall), sqrt 6 |
| 20 | 2.2361, 2.8148, 2.8284 | 2.2367, 2.8248, 2.8284 | 2.2409, 2.8275, 2.8286 | sqrt 5 (wall), sqrt 8 (core), sqrt 8 (wall) |
| 40 | 3.4461, 3.4641, 3.4641 | 3.4585, 3.4641, 3.4645 | 3.4626, 3.4642, 3.4672 | sqrt 12 three times |

The wall values have a mesh error growing with M, of size 0.005 at M = 32 on the 16 and 20. The small value on the 4 is uninformative in this table: it halves when the mesh doubles, so it is a mesh floor, and Proposition 29.8 is proved without it. The wall mode of the adjoint problem has fibre part -1.00000 and Gamma_5 part -1.00000 at M = 8, 16, 32, as Theorem 29.9 says in case (b).
