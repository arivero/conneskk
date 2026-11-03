# Two gradings on an interval: masses as principal angles, the Higgs modulus, and exact W and Z masses

For STRATEGY T0b, T5b, T10 and T13, following [lemma 22](22_dirac_operator_as_boundary_condition.md). Proved by Claude Opus 5.5, with the identities checked in Python (section "Numerical check"). Refereed by Terra 6.1 (effort max, 3 Nov 2026; [report](../reviews/2026-11-03_terra_check_23.md)): four errors and one gap as first written, and amendments, all incorporated below. The simpler form of the mass formulas, and the proof of item 3 of Theorem 23.6, are by the referee.

**Outcome.** A self-adjoint boundary condition for the derivative on an interval is a grading at each wall. The whole finite Dirac operator is then the relative position of two gradings: its singular values are the principal angles between them, divided by l, and

    D_F = (1/2l) Gamma_0 log(Gamma_1 Gamma_0).

With a bulk prealgebra, this gives four results.

1. Aligned walls compress a prealgebra stable under the grading to its even part, with the grading inherited, which is the step that Example 16.9 had to add by hand.
2. Odd scalar fluctuations move the second grading, so they change the singular values and supply the radial mode that No-go theorem 22.7 excludes for even fluctuations. For M_2(H) the field space is S^4, and the Higgs modulus is half the geodesic distance between the points chosen by the two walls.
3. With a wall connector on one channel and a five-dimensional Yang-Mills action with common normalization, the masses are exact: sin^2(M_W l) = sin^2(2 theta)/2 and sin^2(M_Z l) = (4/5) sin^2(2 theta), for universal fermions of mass theta/l. At small theta this gives M_W^2 = 2 m^2 and M_Z^2 = (16/5) m^2, the constants in the lower bounds of the fully massive family of lemma 18, with M_W^2/M_Z^2 tending to 5/8 at both ends.
4. The heat-cutoff spectral action on the interval is a Jacobi theta function of theta, decreasing on [0, pi/2]. This family lies outside the hypotheses of the radial no-go of lemma 18: the radial direction is compact, with a stationary point at m = pi/(2l), the Connes-Lott value, where M_W = M_Z = 0.

Everything finite is still an input, and the parent algebra is matrix-valued. For a commutative parent, [lemma 24](24_commutative_parent.md) finds the window exactly, with spectral walls, while direct compression of scalar functions gives only R + R on the S^4 factor. The formulas for gauge masses depend on the assumed action. The relation to measured values fails in the flat toy, as stated at the end.

## Two gradings

Let H be a finite-dimensional Hilbert space, and let Gamma_0, Gamma_1 be self-adjoint involutions on H. On L^2([0, l]; C^2) (x) H, with psi = (psi_L, psi_R), let D = E d/dx, where (E psi)_L = psi_R and (E psi)_R = -psi_L, on the domain

    Gamma_0 psi_L(0) = psi_L(0),   Gamma_0 psi_R(0) = -psi_R(0),   Gamma_1 psi_L(l) = psi_L(l),   Gamma_1 psi_R(l) = -psi_R(l).

Call it D(Gamma_0, Gamma_1), and let Gamma^ act as +1 on psi_L and -1 on psi_R.

**Theorem 23.1.**

1. D(Gamma_0, Gamma_1) is self-adjoint with compact resolvent, and it anticommutes with Gamma^.
2. Suppose Gamma_0 and Gamma_1 have eigenspaces of equal dimensions, and that -1 is not an eigenvalue of Gamma_1 Gamma_0. Let theta_k in [0, pi/2) be the principal angles between the +1 eigenspaces. Then K = (1/2l) log(Gamma_1 Gamma_0), with the principal branch, is anti-Hermitian, Gamma_0 K Gamma_0 = -K, and D_F = Gamma_0 K is self-adjoint, odd for Gamma_0, with singular values theta_k/l on the +1 eigenspace. Moreover Gamma_1 = e^{lK} Gamma_0 e^{-lK}.
3. With H_+, H_- the eigenspaces of Gamma_0, and X the H_- -> H_+ block of tan(l D_F), as in lemma 22, D(Gamma_0, Gamma_1) = D_X, and the spectral part of Theorem 22.1 gives the spectrum and the window, with no real structure needed. Conversely, every D_F odd for Gamma_0 with l ||D_F|| < pi/2 arises from exactly one such Gamma_1.
4. Let an antiunitary J_1 satisfy J_1^2 = -1, J_1 Gamma_i J_1^-1 = -Gamma_i for i = 0, 1. Then (J^ psi)_L = J_1 psi_R, (J^ psi)_R = -J_1 psi_L defines a real structure of signs (+, +, -) for D(Gamma_0, Gamma_1). With J_F = Gamma_0 J_1 up to sign, J_F^2 = 1, J_F Gamma_0 = -Gamma_0 J_F and J_F D_F = D_F J_F, which are the signs of lemma 22.

So J_F itself does not anticommute with Gamma_1 in general: J_F Gamma_1 J_F^-1 = -Gamma_0 Gamma_1 Gamma_0, the reflection of Gamma_1 through Gamma_0.

*Proof.* Item 1: the boundary form is [<psi_R, phi_L> - <psi_L, phi_R>] evaluated between 0 and l, which vanishes on the domain because L-values and R-values lie in orthogonal eigenspaces at each wall, and these are half of the boundary data.

Item 2: U = Gamma_1 Gamma_0 is unitary and Gamma_0 U Gamma_0 = Gamma_0 Gamma_1 = U^-1, so K is anti-Hermitian and anticommutes with Gamma_0. The eigenvalues of U are e^{+-2 i theta_k}, by the standard two-projection decomposition, and K then has eigenvalues +-i theta_k/l. Since e^{lK} Gamma_0 e^{-lK} = e^{2lK} Gamma_0 = U Gamma_0 = Gamma_1, the last formula follows.

Item 3: in the notation of Theorem 22.1, R(l) = e^{lK} carries H_+ to the graph {(C a, -S a)} = graph(-X\*), and H_- to graph(X). These are the +1 and -1 eigenspaces of Gamma_1, which is the condition at the wall. The converse uses the same formula, with uniqueness from injectivity of the exponential on the stated range.

Item 4: J^ commutes with E by direct computation, and J^^2 = -J_1^2 = 1. The domain is preserved since J_1 exchanges the eigenspaces of each Gamma_i. For the last statement, J_1 U J_1^-1 = U, so as J_1 is antilinear, J_1 K J_1^-1 = K in the sense of the principal branch, and J_F = Gamma_0 J_1 then satisfies J_F K J_F^-1 = -K and commutes with D_F = Gamma_0 K. ∎

When theta_k = pi/2 the channel has type (c) of lemma 09, with no zero mode and lowest level pi/(2l), the Connes-Lott mass of Theorem A in the paper. There the principal logarithm and the isolated window cease to be unique.

## The bulk prealgebra

Let P be a \*-subalgebra of End(H), which need not commute with Gamma_0. Let

    A(Gamma_0, Gamma_1) = {f in C^infinity([0, l], P) : [f(0), Gamma_0] = 0, [f(l), Gamma_1] = 0},

acting pointwise and identically on both spin components.

**Theorem 23.2.**

1. A function f in C^infinity([0, l], P) preserves the domain exactly when it lies in A(Gamma_0, Gamma_1). The commutators are [D, f] = E f', and Gamma^ commutes with every f, including those with values odd for Gamma_0.
2. Under the hypotheses of Theorem 23.1, item 2, with W the isometry of Theorem 22.1, Q(T) = l^-1 int_0^l E_0(R(x)\* T(x) R(x)) dx, where E_0(Z) = (Z + Gamma_0 Z Gamma_0)/2 is the conditional expectation onto the even part.
3. *Aligned walls.* If Gamma_1 = Gamma_0, then D_F = 0, the window consists of constant L-values in H_+ and constant R-values in H_-, and Gamma^ restricts on it to Gamma_0. For an ambient constant multiplier a in P, Q(a) = E_0(a), and the image of the boundary algebra A(Gamma_0, Gamma_0) is E_0(P), by compactly supported profiles. If Gamma_0 P Gamma_0 = P, then E_0(P) is the even part of P, so the compressions of the prealgebra are exactly its even part, with the grading inherited from the even parent operator Gamma^. Without that hypothesis this can fail: for H = C^2, Gamma_0 = sigma_z and P generated by sigma_x + sigma_z, E_0(P) = span{1, sigma_z}, while the even part of P is C.
4. *Order conditions.* Let J_1 be as in Theorem 23.1 and let P° = {J_1 b\* J_1^-1 : b in P} commute with P. Then the parent has order zero and order one for A(Gamma_0, Gamma_1).

*Proof.* Item 1: as in Theorem 22.3, using that the conditions at a wall say that L- and R-values lie in the eigenspaces of Gamma_i. Item 2: as in the proof of Theorem 22.4. Item 3 is the case R = 1. Item 4: [D, f] = E f', and pointwise commutation gives both conditions. ∎

Item 3 evades the inherited-grading obstruction of Result 11 of [lemma 20](20_connecting_operator.md), because hypothesis 4 there fails: for odd a, here Q(a) = 0, while there the coordinates are retained as Q(x_a) = Gamma_a/5. So at the level of a matrix-valued parent this addresses the question left in step 3 of [the framework note](../current_framework.md): the prealgebra is the bulk algebra, the even algebra is what the window sees, and the grading is a boundary condition. The commutative-parent and retained-coordinate questions remain open, and Theorem 4 of [lemma 24](24_commutative_parent.md) shows a real difference: scalar functions compressed directly give R + R on the S^4 factor, and H + H needs the matrix algebra generated at the intermediate stage.

**Remark 23.3 (the twist).** On H = E (+) E\*, with J(x, y) = (y\*, x\*), the operator J_1 = Gamma_0 J is the one that anticommutes with both gradings. For an odd anti-Hermitian h in P, J_1 h J_1^-1 is y -> +y h on E\*, where J alone gives y -> -y h. So the opposite representation b° = J_1 b\* J_1^-1 incorporates on the W-factor the grading automorphism sigma(b) = gamma_W b gamma_W. In this parent the twist comes from the requirement that J_1 preserve both boundary conditions. Twisted spectral triples for the grand symmetry (Devastato, Lizzi and Martinetti, JHEP 01 (2014) 042, arXiv:1304.0415; Devastato and Martinetti, Math. Phys. Anal. Geom. 20 (2017) 2, arXiv:1411.1320, Eqs. (1.8)-(1.11)) use a different automorphism: their rho exchanges left and right spinorial indices and algebra summands, while conjugation by gamma_W is inner on M_2(H) and fixes its centre. So this is a structural analogy between involutive automorphisms, and an identification needs a comparison of the representations, opposites and first-order conditions.

## Odd fluctuations and the radial mode

**Theorem 23.4.** Let h be smooth with values in the anti-Hermitian elements of P, and let u' = -h u, u(0) = 1, w = u(l). Then

    D(Gamma_0, Gamma_1) + E h = u D(Gamma_0, w\* Gamma_1 w) u\*.

So scalar fluctuations move the second grading along its orbit under the unitary group of P. If h has an odd part, the principal angles between Gamma_0 and w\* Gamma_1 w change in general.

*Proof.* u\* D u = D + E u\* u', and u\* E h u = E u\* h u, so the connection cancels. Since u(0) = 1, the wall at 0 is unchanged. At l, psi = u phi gives the stated grading for phi. ∎

This lies outside No-go theorem 22.7, whose hypotheses include the even algebra: an even connection gives a w commuting with Gamma_0, and the angles are kept, while an odd connection changes them. For a real fluctuation, add the conjugate one-form: D + E h + J^(E h)J^^-1, with generator of the form (L_F, R_F) in Example 23.5. The invariant is a double coset. With H_i = Stab(Gamma_i) in the connected unitary group G of P, a gauge transformation removing h has the form u(x) c, and it preserves both endpoints exactly when c is in H_0 and w c in H_1, that is, when w is in H_1 H_0. So the scalar moduli of the parent are the double cosets H_1 \ G / H_0, the relative position of the two gradings. This is with the moving window, as in lemma 22.

**Example 23.5 (M_2(H) and S^4).** Let W = H^2 = C^4, with the Clifford generators Gamma_a of lemma 16, and for a unit vector p in R^5 put Gamma_p = p_a Gamma_a. Each grading of W with one-dimensional quaternionic +1 and -1 eigenspaces is such a Gamma_p, so these gradings form S^4 = Sp(2)/(Sp(1) x Sp(1)), the quaternionic projective line. For two points, Gamma_q Gamma_p = p . q + (p wedge q), with eigenvalues e^{+-i d}, where d is the geodesic distance; so all the principal angles equal theta = d/2.

Take H = Hom(V, W) (+) Hom(W, V), J(x, y) = (y\*, x\*), Gamma_0(x, y) = (gamma x, -y gamma) with gamma = Gamma_{p_0}, and K(x, y) = (theta/l)(F x, y F), with F an odd anti-Hermitian element of M_2(H), F^2 = -1. Then:

- D_F = Gamma_0 K has all singular values equal to theta/l: a universal Dirac mass, for all colours.
- The second grading is Gamma_1(x, y) = (Gamma_p x, -y Gamma_{p'}), where p is at distance 2 theta from p_0 and p' is its mirror image through p_0. J_1 = Gamma_0 J satisfies Theorem 23.1, item 4, while J alone does not.
- The coordinates (theta, q) on S^4, with F determined by the unit quaternion q, are the polar coordinates of a Higgs quaternion: theta is the radial coordinate, bounded by pi/2, and q gives three angular directions, undefined at the poles. At theta = pi/2 the finite logarithm and the lowest window are degenerate. Quotienting by the stabilizer leaves the radial interval. A canonically normalized field needs the scalar kinetic term, which we have not computed.

With bulk masses, by Theorem 12.6, the light masses are about (tan(theta)/l) Phi_Q Phi_U when small compared with the tower thresholds, with a universal matrix before flavour data; general finite-angle eigenvalues need the secular equation. This field space is the coset of the minimal composite Higgs model (Agashe, Contino and Pomarol, Nucl. Phys. B 719 (2005) 165, sections 2-3, with their h/f_pi corresponding to 2 theta). Their construction uses a warped interval and additional fermion and boundary data, so the shared coset does not identify the actions or potentials. The appearance here of the S^4 of the twistor window is an observation, and no identification between the two roles of S^4 is made.

## The weak bosons

Take P = M_2(H) (+) M_4(C), acting on E = Hom(V, W) on the left and on the right. Assume the following.

- A five-dimensional Yang-Mills field valued in sp(2) (+) su(4), with the trace form Tr_W + Tr_V, so with one coupling (the normalization of the spectral action, g_3 = g_2 = sqrt(5/3) g_Y).
- At x = 0: Neumann for the stabilizer of p_0, Dirichlet for its complement. At x = l: Neumann for the stabilizer of p_l and of a connector, that is, the a with [a_W, Gamma_p] = 0, a_W w = lambda w and a_V v = lambda v, as in Results 2 and 5 of lemma 20, for a line w in the +1 eigenspace of Gamma_p and a line v in V; Dirichlet for the complement.
- The connector is prescribed gauge-breaking wall data here. If it is instead a term in the fermion boundary operator, as for a unit vector e in the +1 eigenspace of Gamma_1, f = J_1 e, K_c = |f><e| - |e><f| and Gamma_{1,c} = e^{eta K_c} Gamma_1 e^{-eta K_c}, then J_1 still anticommutes with Gamma_{1,c}, the parent order conditions are kept, and the affected fermion tower changes, so the universal fermion formula must be recalculated for that channel.

**Theorem 23.6.** With theta the angle above, the modes that are massless for all theta are exactly nine, the photon and the eight gluons, with three additional electroweak zero modes at theta = 0 and theta = pi/2. The lowest charged and neutral massive modes satisfy

    sin^2(M_W l) = sin^2(2 theta)/2,
    sin^2(M_Z l) = (4/5) sin^2(2 theta),

equivalently tan^2(M_W l) = sin^2(2 theta)/(1 + cos^2(2 theta)) and tan^2(M_Z l) = 4 sin^2(2 theta)/(1 + 4 cos^2(2 theta)).

The photon has 1/e^2 = (8/3)/g^2. Moreover:

1. As theta -> 0, with m = theta/l: M_W^2 -> 2 m^2 and M_Z^2 -> (16/5) m^2, so M_W^2/M_Z^2 -> 5/8.
2. As theta -> pi/2: M_W, M_Z -> 0, with M_W^2/M_Z^2 -> 5/8, while m -> pi/(2l).
3. At theta = pi/4: M_W l = pi/4, tan(M_Z l) = 2, and M_W^2/M_Z^2 = ((pi/4)/arctan 2)^2 = 0.5032..., the global minimum. So M_W^2/M_Z^2 stays in [0.5032, 0.625), with 5/8 as a limit at the ends, where the ratio itself is undefined.
4. m/M_W goes from 1/sqrt(2) at theta -> 0 to infinity at theta -> pi/2. It equals sqrt(8/3) at theta = 1.0589.

*Proof.* In the gauge A_5 = 0 the field is free, with cos(k x) on the Neumann directions at 0 and sin(k x) on the Dirichlet ones, and the condition at l holds in the frame rotated by Ad exp(theta F). The generators split according to the frequency of Ad F. Write L, R for su(2) on W_- and W_+, S = (L + R)/sqrt(2), A = (L - R)/sqrt(2), and O for the odd generators; Ad F has frequency 0 on S, and frequency 2 on the plane (A, O). So S = s cos kx, A = alpha cos kx, O = beta sin kx.

At l, in the rotated frame, A' = cos(2 theta) A + sin(2 theta) O and O' = -sin(2 theta) A + cos(2 theta) O, with O' = 0 at l, which gives beta = alpha tan(2 theta) cot(k l), and so A'(l) = alpha cos(k l)/cos(2 theta).

*Charged directions.* The connector forces R^+- to vanish at l, with L^+- Neumann. So S(l) = A'(l), and d/dx (S + A') = 0 at l. Substituting gives sin^2(kl) (1 + cos^2(2 theta)) = sin^2(2 theta) cos^2(kl).

*Neutral directions.* Add B = b cos kx for the generator T_15 = diag(1, 1, 1, -3)/(2 sqrt 6) of su(4). With Y = sqrt(3/5) R + sqrt(2/5) B and Z' = -sqrt(2/5) R + sqrt(3/5) B, the connector forces Z' to vanish at l, with L and Y Neumann. The Neumann conditions give b = -sqrt(3) s, and Z' = 0 gives s = alpha/(4 cos(2 theta)). Substituting in the condition for L gives sin^2(kl) (1/4 + cos^2(2 theta)) = sin^2(2 theta) cos^2(kl).

*Massless modes and limits.* At k = 0, a zero mode is a constant in the intersection of the two stabilizers. This consists of a_W = diag(q, q) on W_+ and W_-, identified by F, with q preserving the line of w, together with a_V = lambda (+) m, and with the trace condition this has dimension 1 + 8. In it, L = R and B/L = sqrt(2/3), which gives 1/e^2 = (1 + 1 + 2/3)/g^2. The limits follow by expanding. A second derivation, from the referee, uses the principal angles between the Neumann subspaces at the two walls: for each charged direction the squared sine of the angle is sin^2(2 theta)/2, and in the neutral sector the single nonzero value is (4/5) sin^2(2 theta); it also covers cos(2 theta) = 0, where the divisions above need a limit. For item 3, with a = sin(2 theta), the ratio is [arcsin(a/sqrt 2)/arcsin(2a/sqrt 5)]^2, and this decreases with a on (0, 1], since x/(sqrt(1 - x^2) arcsin x) increases. ∎

The constants in item 1 are the values ||[D_F, a]||^2/||a||^2 in the Hilbert-Schmidt norm, for universal mass m, for a = L^+- and for the direction orthogonal to the photon and Z', which has A-component of squared length 4/5. These are the coefficients of the lower bounds for the poles of the fully massive family in Proposition 14 of lemma 18 (2 x < z_W, (16/5) x < z_Z); the small-x pole coefficients there are 3 and 24/5. The limit 5/8 is common to both, with different behaviour: the finite-action poles grow in the heavy limit of lemma 18, while the interval masses here tend to zero at the antipodal point. The spectral-action Taylor mass for universal m is M_W^2 = 3 m^2, which exceeds the value here by the factor 3/2 of Proposition F in the paper: there the mass matrix carries the relative heat coefficients of the action, and here we have assumed a five-dimensional Yang-Mills action, which gives the commutator norm alone. A direct matching claim needs the full parent spectral action, with its tower and boundary conditions.

Item 2 gives a geometric form of the behaviour that lemma 18 found: heavy fermions with light vectors. At antipodal points Gamma_p = -Gamma_{p_0}, so both walls have the same stabilizer in sp(2) again, and the fermion channels have type (c) with mass pi/(2l).

## The spectral action on the interval

**Proposition 23.7.** For the heat cutoff and universal theta, with s = l Lambda, the trace over a channel is

    Tr_channel exp(-D^2/Lambda^2) = 2 sum_{n in Z} exp(-(n pi + theta)^2/s^2).

This is proportional to the Jacobi function theta_3(theta, exp(-s^2)). It is strictly decreasing on [0, pi/2], with a maximum at theta = 0 and a minimum at theta = pi/2, where it is stationary, and it is symmetric under theta -> pi - theta. In the towerless regime s -> 0 at fixed x = theta^2/s^2, it tends to 2 e^{-x}, the form of the vacuum density in lemma 18 and Proposition 21.2.

*Proof.* The eigenvalues in a channel are +-(n pi + theta)/l, by Theorem 22.1, and the sum is over Z after combining the signs. By Poisson summation the sum equals (s/sqrt(pi)) sum_{k in Z} exp(-k^2 s^2) e^{2 i k theta}, and the Jacobi triple product writes this as a constant times the product over n >= 1 of (1 + 2 q^{2n-1} cos(2 theta) + q^{4n-2}), with q = exp(-s^2). Each factor is positive and strictly decreasing in theta on [0, pi/2]. ∎

In the form of the Jacobi function, the trace is (2 s/sqrt(pi)) theta_3(theta, exp(-s^2)). This family lies outside the hypotheses of No-go theorem 9 of lemma 18, which concerns finite internal data and a free ray V = c V_\*: here the operator family is different, the radial direction is a compact orbit of relative gradings, and the tower, which the finite description omits, supplies a second branch with a stationary point at theta = pi/2. In the present family the literal action has its minimum at antipodal gradings, m = pi/(2l), with M_W = M_Z = 0 by Theorem 23.6, where the lowest eigenspace is degenerate. This is a vacuum with massless vectors, so it is not the physical point. The sign of the term agrees with the fermion loop in the Hosotani mechanism, where gauge-boson loops enter with the opposite sign. So an interior minimum could arise from that competition, which the classical spectral action does not contain. We have not computed it.

## The one-loop potential in the same family

From the exact spectra, the products over the towers are, relative to theta = 0 and in Euclidean momentum x = p l,

    fermion channel:  1 + sin^2(theta)/sinh^2(x),
    charged vectors:  1 + sin^2(2 theta)/(2 sinh^2(x)),
    neutral vector:   1 + (4/5) sin^2(2 theta)/sinh^2(x).

So in the gauge-boson and fermion-loop form of the Hosotani mechanism, assuming the usual one-loop formula with three polarizations per vector, and with n_f = 2 x (number of physical Dirac species),

    8 pi^2 l^4 V(theta) = int_0^infinity x^3 dx [ 3 log(1 + s^2/(2 sinh^2 x)) + (3/2) log(1 + (4/5) s^2/sinh^2 x) - n_f log(1 + sin^2(theta)/sinh^2 x) ],

with s = sin(2 theta). A Dirac top with three colours has n_f = 6, which needs a separately specified fermion sector, since the universal connection gives masses to all: one generation has n_f = 16 and three have n_f = 48. With I = int x^3/sinh^2 x dx = (3/2) zeta(3) and I' = int x^3/cosh^2 x dx = (9/8) zeta(3), near theta = 0 the bracket is (10.8 - n_f) I theta^2 + o(theta^2), and with epsilon = pi/2 - theta, near theta = pi/2 it is V(pi/2) + (10.8 I + n_f I') epsilon^2 + o(epsilon^2), where we have written V for the left side.

**Proposition 23.8 (referee).** In the massless flat family with this content, for every n_f > 0, theta = pi/2 is the unique global minimum on [0, pi/2], since the gauge logarithms are nonnegative and vanish there, and the negative fermion logarithm is minimized at sin^2(theta) = 1. For n_f >= 10.8, V is strictly decreasing on the interior. Indeed, with t = sin^2(theta) and J(z) = int_0^infinity x^3 dx/(sinh^2 x + z), the derivative with respect to t is, up to a positive factor,

    (1 - 2t) [6 J(2t(1 - t)) + (24/5) J((16/5) t (1 - t))] - n_f J(t).

For t <= 1/2, both arguments in the bracket are at least t, and J decreases; for t > 1/2 both contributions have the required sign.

For 0 < n_f < 10.8, on grids of theta (Python), for n_f in {1, 2, 3, 4, 6, 8, 10}, V has one interior maximum, at about 0.33 for n_f = 8, and no interior minimum. Theorem 9 of [lemma 24](24_commutative_parent.md), by Astra 6, proves this for all n_f in that range: exactly one interior stationary point, a strict maximum, using a log-concavity property of the integral.

These are negative results in an exact scope: one interval, no bulk masses, fermions of frequency 1 under F, this gauge content, one loop, this condition at the connector wall. As a formal leading approximation, not uniform at x = 0, V has the form B sin^2(2 theta) - A sin^2(theta) with A, B > 0, whose interior stationary point cos(2 theta) = A/(4B) is a maximum. *Bulk masses.* With bulk masses, the fermion product becomes cos^2(theta) + sin^2(theta) G(x), with G = (w_Q coth w_Q - c_Q)(w_U coth w_U - c_U)/x^2 and w = (c^2 + x^2)^{1/2} in the secular form of lemma 12. For a = c_Q + c_U != 0, G = 1 - a/x + O(x^-2), so the potential has angle-dependent ultraviolet divergences, and a finite value depends on a regulator and subtraction: as the referee showed, an earlier scan of general pairs here did not establish a potential, and it is withdrawn. The exceptional case c_U = -c_Q = c has a common bulk mass on the two mixed components and G = 1 + w^2/(x^2 sinh^2 w), which decays exponentially. Keeping the flat gauge products as a separate tree-level assumption, a scan for c in {0, 1/2, 1, 3/2, 2, 3, 5}, n_f in {1, 3, 6, 8, 10, 16, 48}, on a grid of 721 values of theta, finds no interior minimum (Python). General bulk masses need a gauge-invariant completion, a regulator and wall counterterms.

So an interior minimum needs another change: a negative coefficient of sin^2(2 theta), as from fermions of frequency 2 under F, which the bimodule E = Hom(V, W) does not contain; general bulk masses or other gauge form factors, as with warping; a wall scalar with its own potential; or tree-level terms at the walls. With h/f_pi = 2 theta, the leading flat form has the angular form alpha cos(h/f_pi) - beta sin^2(h/f_pi) of Agashe, Contino and Pomarol (section 2.1, Eqs. (19)-(23)) with spinorial SO(5) fermions, with alpha = A/2 and beta = -B, up to a constant. Their form factors can give the sign and competition needed for an interior minimum, so the flat results here do not exclude that construction. This points away from a pure flat Wilson line, toward those changed form factors or a wall scalar with its own potential, for the physical interior.

## Comparison with measured values in the flat toy

These are numerical comparisons (Python), with no running and no bulk masses, in lowest levels, using the Particle Data Group 2026 values quoted by the referee, m_t = 172.60 GeV as a direct-measurement mass, M_W = 80.3625 GeV and M_Z = 91.1879 GeV, so m_t/M_W = 2.1478 and M_W^2/M_Z^2 = 0.7767. The ratio m_t/M_W reaches sqrt(8/3) at theta = 1.0589 and the measured value at theta = 1.1626, where M_W l = 0.541, so 1/l is about 148.5 GeV. There, M_W^2/M_Z^2 = 0.581. The wall-scalar model of lemma 22 covers [0.625, 1], and this family covers [0.5032, 0.625); in the wall-scalar model, fitting the measured vector ratio gives M_W l = 1.028, where the lowest no-bulk-mass fermion channel has m/M_W < 1.528. So neither flat family fits both ratios on its own, and the flat one-loop potential above does not select an interior point. Whether a tower at 1/l of this size is allowed would need the couplings and an applicable experimental limit, which we have not analyzed. The directions are bulk masses for the light fermions, warping, running of the couplings, and families combining a Wilson line with a wall scalar. These negative statements hold in the flat tree-level toy only.

## Open questions

1. The interior vacuum: the effective potential with a wall scalar, or with warping, or with general bulk masses, with a gauge-invariant completion, a regulator and wall counterterms. The flat cases above have none on the grids.
2. The relation between the two roles of S^4: the base of the twistor window, and the field space of the Higgs quaternion.
3. A commutative parent: functions on S^4 x I and CP^3 x I, with the gradings as local boundary conditions.
4. The factor 3/2 between the five-dimensional normalization and the spectral action: whether the spectral action on the parent itself, with its tower, reproduces the formula of Theorem 23.6.
5. The comparison with twisted spectral triples, Remark 23.3.
6. The contribution of a real connector to the fermion tower, the degenerate antipodal window, and the scalar kinetic normalization needed for a canonically normalized Higgs field.

## Numerical check

By Claude Opus 5.5, in Python (numpy and scipy), 3 Nov 2026, in a temporary directory, not kept.

- Random complex symmetric M on C^4 with l ||M|| = 1.25: Gamma_1 is an involution, Gamma_1 = exp(2 l K) Gamma_0; D_F = (1/2l) Gamma_0 log(Gamma_1 Gamma_0) to 3 x 10^-15; the principal angles over l equal the singular values of M to five digits.
- Sp(2) x SU(4), of dimension 25, with the Neumann and Dirichlet subspaces built from the stated stabilizers: the two-point boundary problem was solved as a linear system on a grid in k l. For theta = 0.2, pi/4, 1.06 and 1.3, the two lowest nonzero roots are (0.279, 0.356), (0.785, 1.107), (0.647, 0.868), (0.373, 0.479), equal to the formulas of Theorem 23.6 to three digits, with other roots at pi/2 and above. The intersection of the two stabilizers has dimension 9 at each theta tested.
- Small theta: M_W^2/m^2 = 2.000 and M_Z^2/m^2 = 3.200.
- The universal connection on E (+) E\*: J D = D J, Gamma_0 D = -D Gamma_0, all |eigenvalues| equal to theta/l, Gamma_1 = (left Gamma_p, right mirror), J_1^2 = -1, J_1 Gamma_1 = -Gamma_1 J_1, while J alone fails; J_1 h J_1^-1 is right multiplication by +h on E\*, for odd h.
- The theta function: monotone on a grid for s = 0.3, 1, 2, with the towerless value at s = 0.3 equal to e^{-x} to five digits; Poisson summation and the triple product to 10^-16.
- The ratio M_W^2/M_Z^2 on a grid: range [0.5032, 0.6250], symmetric under theta -> pi/2 - theta to 10^-15, minimum at pi/4. At theta = 1.1625, M_W l = 0.541, and at theta = 1.0589, M_W l = 0.648.
- The one-loop integrals by adaptive quadrature (scipy), and by Gauss-Legendre quadrature on 400 nodes for the scan with c_U = -c_Q. The referee recomputed the derivative with scipy, found one sign change for each n_f in {1, 2, 3, 4, 6, 8}, with the stationary angle about 0.3382 at n_f = 8, and checked I = (3/2) zeta(3).
