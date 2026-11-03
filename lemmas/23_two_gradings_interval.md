# Two gradings on an interval: masses as principal angles, the Higgs modulus, and exact W and Z masses

For STRATEGY T0b, T5b, T10 and T13, following [lemma 22](22_dirac_operator_as_boundary_condition.md). Proved by Claude Opus 5.5, with the identities checked in Python (section "Numerical check"). Referee pending.

**Outcome.** A self-adjoint boundary condition for the derivative on an interval is a grading at each wall. The whole finite Dirac operator is then the relative position of two gradings: its singular values are the principal angles between them, divided by l, and

    D_F = (1/2l) Gamma_0 log(Gamma_1 Gamma_0).

With a bulk prealgebra, this gives four results.

1. Aligned walls compress a prealgebra to its even part with the grading inherited, which is the step that Example 16.9 had to add by hand.
2. Odd scalar fluctuations move the second grading, so they change the singular values and supply the radial mode that No-go theorem 22.7 excludes for even fluctuations. For M_2(H) the field space is S^4, and the Higgs modulus is half the geodesic distance between the points chosen by the two walls.
3. With a wall connector on one channel and a five-dimensional Yang-Mills action with common normalization, the masses are exact: tan^2(M_W l) = sin^2(2 theta)/(1 + cos^2(2 theta)) and tan^2(M_Z l) = 4 sin^2(2 theta)/(1 + 4 cos^2(2 theta)), for universal fermions of mass theta/l. At small theta this gives M_W^2 = 2 m^2 and M_Z^2 = (16/5) m^2, the same constants as the fully massive family of lemma 18, with M_W^2/M_Z^2 tending to 5/8 at both ends.
4. The heat-cutoff spectral action on the interval is a Jacobi theta function of theta, decreasing on [0, pi/2]. The runaway of the radial no-go of lemma 18 therefore stops at a finite stationary point, m = pi/(2l), the Connes-Lott value, where M_W = M_Z = 0.

Everything finite is still an input, and the parent algebra is matrix-valued. The formulas for gauge masses depend on the assumed action. The relation to measured values fails in the flat toy, as stated at the end.

## Two gradings

Let H be a finite-dimensional Hilbert space, and let Gamma_0, Gamma_1 be self-adjoint involutions on H. On L^2([0, l]; C^2) (x) H, with psi = (psi_L, psi_R), let D = E d/dx, where (E psi)_L = psi_R and (E psi)_R = -psi_L, on the domain

    Gamma_0 psi_L(0) = psi_L(0),   Gamma_0 psi_R(0) = -psi_R(0),   Gamma_1 psi_L(l) = psi_L(l),   Gamma_1 psi_R(l) = -psi_R(l).

Call it D(Gamma_0, Gamma_1), and let Gamma^ act as +1 on psi_L and -1 on psi_R.

**Theorem 23.1.**

1. D(Gamma_0, Gamma_1) is self-adjoint with compact resolvent, and it anticommutes with Gamma^.
2. Suppose Gamma_0 and Gamma_1 have eigenspaces of equal dimensions, and that -1 is not an eigenvalue of Gamma_1 Gamma_0. Let theta_k in [0, pi/2) be the principal angles between the +1 eigenspaces. Then K = (1/2l) log(Gamma_1 Gamma_0), with the principal branch, is anti-Hermitian, Gamma_0 K Gamma_0 = -K, and D_F = Gamma_0 K is self-adjoint, odd for Gamma_0, with singular values theta_k/l on the +1 eigenspace. Moreover Gamma_1 = e^{lK} Gamma_0 e^{-lK}.
3. With H_+, H_- the eigenspaces of Gamma_0, and X = tan(l D_F) as in lemma 22, D(Gamma_0, Gamma_1) = D_X, and Theorem 22.1 gives the spectrum and the window. Conversely, every D_F odd for Gamma_0 with l ||D_F|| < pi/2 arises from exactly one such Gamma_1.
4. Let an antiunitary J_1 satisfy J_1^2 = -1, J_1 Gamma_i J_1^-1 = -Gamma_i for i = 0, 1. Then (J^ psi)_L = J_1 psi_R, (J^ psi)_R = -J_1 psi_L defines a real structure of signs (+, +, -) for D(Gamma_0, Gamma_1). With J_F = Gamma_0 J_1 up to sign, J_F^2 = 1, J_F Gamma_0 = -Gamma_0 J_F and J_F D_F = D_F J_F, which are the signs of lemma 22.

So J_F itself does not anticommute with Gamma_1 in general: J_F Gamma_1 J_F^-1 = -Gamma_0 Gamma_1 Gamma_0, the reflection of Gamma_1 through Gamma_0.

*Proof.* Item 1: the boundary form is [<psi_R, phi_L> - <psi_L, phi_R>] evaluated between 0 and l, which vanishes on the domain because L-values and R-values lie in orthogonal eigenspaces at each wall, and these are half of the boundary data.

Item 2: U = Gamma_1 Gamma_0 is unitary and Gamma_0 U Gamma_0 = Gamma_0 Gamma_1 = U^-1, so K is anti-Hermitian and anticommutes with Gamma_0. The eigenvalues of U are e^{+-2 i theta_k}, by the standard two-projection decomposition, and K then has eigenvalues +-i theta_k/l. Since e^{lK} Gamma_0 e^{-lK} = e^{2lK} Gamma_0 = U Gamma_0 = Gamma_1, the last formula follows.

Item 3: in the notation of Theorem 22.1, R(l) = e^{lK} carries H_+ to the graph {(C a, -S a)} = graph(-X\*), and H_- to graph(X). These are the +1 and -1 eigenspaces of Gamma_1, which is the condition at the wall. The converse uses the same formula, with uniqueness from injectivity of the exponential on the stated range.

Item 4: J^ commutes with E by direct computation, and J^^2 = -J_1^2 = 1. The domain is preserved since J_1 exchanges the eigenspaces of each Gamma_i. For the last statement, J_1 U J_1^-1 = U, so as J_1 is antilinear, J_1 K J_1^-1 = K in the sense of the principal branch, and J_F = Gamma_0 J_1 then satisfies J_F K J_F^-1 = -K and commutes with D_F = Gamma_0 K. ∎

When theta_k = pi/2 the channel has type (c) of lemma 09, with no zero mode and lowest level pi/(2l), the Connes-Lott mass of Theorem A in the paper.

## The bulk prealgebra

Let P be a \*-subalgebra of End(H), which need not commute with Gamma_0. Let

    A(Gamma_0, Gamma_1) = {f in C^infinity([0, l], P) : [f(0), Gamma_0] = 0, [f(l), Gamma_1] = 0},

acting pointwise and identically on both spin components.

**Theorem 23.2.**

1. A function f in C^infinity([0, l], P) preserves the domain exactly when it lies in A(Gamma_0, Gamma_1). The commutators are [D, f] = E f', and Gamma^ commutes with every f, including those with values odd for Gamma_0.
2. With W the isometry of Theorem 22.1, Q(T) = l^-1 int_0^l E_0(R(x)\* T(x) R(x)) dx, where E_0(Z) = (Z + Gamma_0 Z Gamma_0)/2 is the conditional expectation onto the even part.
3. *Aligned walls.* If Gamma_1 = Gamma_0, then D_F = 0, the window consists of constant L-values in H_+ and constant R-values in H_-, Gamma^ restricts on it to Gamma_0, and for constant a in P, Q(a) = E_0(a). So the compressions of the prealgebra are exactly its even part, with the grading inherited from the even parent operator Gamma^.
4. *Order conditions.* Let J_1 be as in Theorem 23.1 and let P° = {J_1 b\* J_1^-1 : b in P} commute with P. Then the parent has order zero and order one for A(Gamma_0, Gamma_1).

*Proof.* Item 1: as in Theorem 22.3, using that the conditions at a wall say that L- and R-values lie in the eigenspaces of Gamma_i. Item 2: as in the proof of Theorem 22.4. Item 3 is the case R = 1. Item 4: [D, f] = E f', and pointwise commutation gives both conditions. ∎

Item 3 evades the inherited-grading obstruction of Result 11 of [lemma 20](20_connecting_operator.md), because hypothesis 4 there fails: for odd a, here Q(a) = 0, while there the coordinates are retained as Q(x_a) = Gamma_a/5. So at the level of a matrix-valued parent this answers the question left in step 3 of [the framework note](../current_framework.md): the prealgebra is the bulk algebra, the even algebra is what the window sees, and the grading is a boundary condition.

**Remark 23.3 (the twist).** On H = E (+) E\*, with J(x, y) = (y\*, x\*), the operator J_1 = Gamma_0 J is the one that anticommutes with both gradings. Its opposite action on an odd element h of P is y -> +y h on E\*, where J alone gives y -> -y h. So the opposite action in this parent is twisted by the grading automorphism sigma(a) = gamma_W a gamma_W on odd elements. The same automorphism appears in the twisted spectral triples of the grand symmetry (Devastato-Lizzi-Martinetti; Devastato-Martinetti, from memory, to be checked). In this parent the twist comes from the requirement that J_1 preserve both boundary conditions. Identifying the two needs a comparison of their first-order conditions.

## Odd fluctuations and the radial mode

**Theorem 23.4.** Let h be smooth with values in the anti-Hermitian elements of P, and let u' = -h u, u(0) = 1, w = u(l). Then

    D(Gamma_0, Gamma_1) + E h = u D(Gamma_0, w\* Gamma_1 w) u\*.

So scalar fluctuations move the second grading along its orbit under the unitary group of P. If h has an odd part, the principal angles between Gamma_0 and w\* Gamma_1 w change in general.

*Proof.* u\* D u = D + E u\* u', and u\* E h u = E u\* h u, so the connection cancels. Since u(0) = 1, the wall at 0 is unchanged. At l, psi = u phi gives the stated grading for phi. ∎

This is the second escape of No-go theorem 22.7: the even connection gives a w commuting with Gamma_0, and when Gamma_1 is built from D_F the angles are kept, while an odd connection changes them.

**Example 23.5 (M_2(H) and S^4).** Let W = H^2 = C^4, with the Clifford generators Gamma_a of lemma 16, and for a unit vector p in R^5 put Gamma_p = p_a Gamma_a. Each grading of W with quaternionic eigenspaces is such a Gamma_p, so these gradings form S^4 = Sp(2)/(Sp(1) x Sp(1)), the quaternionic projective line. For two points, Gamma_q Gamma_p = p . q + (p wedge q), with eigenvalues e^{+-i d}, where d is the geodesic distance; so all the principal angles equal theta = d/2.

Take H = Hom(V, W) (+) Hom(W, V), J(x, y) = (y\*, x\*), Gamma_0(x, y) = (gamma x, -y gamma) with gamma = Gamma_{p_0}, and K(x, y) = (theta/l)(F x, y F), with F an odd anti-Hermitian element of M_2(H), F^2 = -1. Then:

- D_F = Gamma_0 K has all singular values equal to theta/l: a universal Dirac mass, for all colours.
- The second grading is Gamma_1(x, y) = (Gamma_p x, -y Gamma_{p'}), where p is at distance 2 theta from p_0 and p' is its mirror image through p_0. J_1 = Gamma_0 J satisfies Theorem 23.1, item 4, while J alone does not.
- The coordinates (theta, q) on S^4, with F determined by the unit quaternion q, are the polar coordinates of a Higgs quaternion: theta is the radial mode, bounded by pi/2, and q gives the three Goldstone directions.

With bulk masses, as in Theorem C of the paper, the light masses are suppressed by localization, and the Yukawa pattern is Phi_Q Phi_U tan(theta), with a universal matrix Y-hat = 1 before flavour data. This field space is the coset of the minimal composite Higgs model on an interval (Agashe, Contino and Pomarol, Nucl. Phys. B 719 (2005) 165), and the construction has the form of gauge-Higgs unification. The appearance here of the S^4 of the twistor window is an observation, and no identification between the two roles of S^4 is made.

## The weak bosons

Take P = M_2(H) (+) M_4(C), acting on E = Hom(V, W) on the left and on the right. Assume the following.

- A five-dimensional Yang-Mills field valued in sp(2) (+) su(4), with the trace form Tr_W + Tr_V, so with one coupling (the normalization of the spectral action, g_3 = g_2 = sqrt(5/3) g_Y).
- At x = 0: Neumann for the stabilizer of p_0, Dirichlet for its complement. At x = l: Neumann for the stabilizer of p_l and of a connector, that is, the a with [a_W, Gamma_p] = 0, a_W w = lambda w and a_V v = lambda v, as in Results 2 and 5 of lemma 20, for a line w in the +1 eigenspace of Gamma_p and a line v in V; Dirichlet for the complement.

**Theorem 23.6.** With theta the angle above, the modes that are massless for all theta are exactly nine, the photon and the eight gluons. The lowest charged and neutral massive modes satisfy

    tan^2(M_W l) = sin^2(2 theta) / (1 + cos^2(2 theta)),
    tan^2(M_Z l) = 4 sin^2(2 theta) / (1 + 4 cos^2(2 theta)).

The photon has 1/e^2 = (8/3)/g^2. Moreover:

1. As theta -> 0, with m = theta/l: M_W^2 -> 2 m^2 and M_Z^2 -> (16/5) m^2, so M_W^2/M_Z^2 -> 5/8.
2. As theta -> pi/2: M_W, M_Z -> 0, with M_W^2/M_Z^2 -> 5/8, while m -> pi/(2l).
3. At theta = pi/4: M_W l = pi/4, tan(M_Z l) = 2, and M_W^2/M_Z^2 = 0.503, the minimum. So M_W^2/M_Z^2 stays in [0.503, 0.625].
4. m/M_W goes from 1/sqrt(2) at theta -> 0 to infinity at theta -> pi/2. It equals sqrt(8/3) at theta = 1.0589.

*Proof.* In the gauge A_5 = 0 the field is free, with cos(k x) on the Neumann directions at 0 and sin(k x) on the Dirichlet ones, and the condition at l holds in the frame rotated by Ad exp(theta F). The generators split according to the frequency of Ad F. Write L, R for su(2) on W_- and W_+, S = (L + R)/sqrt(2), A = (L - R)/sqrt(2), and O for the odd generators; Ad F has frequency 0 on S, and frequency 2 on the plane (A, O). So S = s cos kx, A = alpha cos kx, O = beta sin kx.

At l, in the rotated frame, A' = cos(2 theta) A + sin(2 theta) O and O' = -sin(2 theta) A + cos(2 theta) O, with O' = 0 at l, which gives beta = alpha tan(2 theta) cot(k l), and so A'(l) = alpha cos(k l)/cos(2 theta).

*Charged directions.* The connector forces R^+- to vanish at l, with L^+- Neumann. So S(l) = A'(l), and d/dx (S + A') = 0 at l. Substituting gives sin^2(kl) (1 + cos^2(2 theta)) = sin^2(2 theta) cos^2(kl).

*Neutral directions.* Add B = b cos kx for the generator T_15 = diag(1, 1, 1, -3)/(2 sqrt 6) of su(4). With Y = sqrt(3/5) R + sqrt(2/5) B and Z' = -sqrt(2/5) R + sqrt(3/5) B, the connector forces Z' to vanish at l, with L and Y Neumann. The Neumann conditions give b = -sqrt(3) s, and Z' = 0 gives s = alpha/(4 cos(2 theta)). Substituting in the condition for L gives sin^2(kl) (1/4 + cos^2(2 theta)) = sin^2(2 theta) cos^2(kl).

*Massless modes and limits.* At k = 0, a zero mode is a constant in the intersection of the two stabilizers. This consists of a_W = diag(q, q) on W_+ and W_-, identified by F, with q preserving the line of w, together with a_V = lambda (+) m, and with the trace condition this has dimension 1 + 8. In it, L = R and B/L = sqrt(2/3), which gives 1/e^2 = (1 + 1 + 2/3)/g^2. The limits follow by expanding. For item 3, the ratio is symmetric under theta -> pi/2 - theta by the formulas, which gives a critical point at the midpoint. That this is the global minimum is a numerical statement (Python, on a grid of 2001 points), and we have no written proof. ∎

The constants in item 1 are the values ||[D_F, a]||^2/||a||^2 for universal mass m, for a = L^+- and for the direction orthogonal to the photon and Z', which has A-component of squared length 4/5. These are the same constants 2 and 16/5 as the lower ends of the poles of the fully massive family in lemma 18 (2 x < z_W, (16/5) x < z_Z), and item 2 matches that family's return to 5/8. The spectral-action Taylor mass for universal m is M_W^2 = 3 m^2, which exceeds the value here by the factor 3/2 of Proposition F in the paper: there the mass matrix carries the relative heat coefficients of the action, and here we have assumed a five-dimensional Yang-Mills action, which gives the commutator norm alone.

Item 2 gives a geometric form of the behaviour that lemma 18 found: heavy fermions with light vectors. At antipodal points Gamma_p = -Gamma_{p_0}, so both walls have the same stabilizer in sp(2) again, and the fermion channels have type (c) with mass pi/(2l).

## The spectral action on the interval

**Proposition 23.7.** For the heat cutoff and universal theta, with s = l Lambda, the trace over a channel is

    Tr_channel exp(-D^2/Lambda^2) = 2 sum_{n in Z} exp(-(n pi + theta)^2/s^2).

This is proportional to the Jacobi function theta_3(theta, exp(-s^2)). It is strictly decreasing on [0, pi/2], with a maximum at theta = 0 and a minimum at theta = pi/2, where it is stationary, and it is symmetric under theta -> pi - theta. In the towerless regime s -> 0 at fixed x = theta^2/s^2, it tends to 2 e^{-x}, the form of the vacuum density in lemma 18 and Proposition 21.2.

*Proof.* The eigenvalues in a channel are +-(n pi + theta)/l, by Theorem 22.1, and the sum is over Z after combining the signs. By Poisson summation the sum equals (s/sqrt(pi)) sum_{k in Z} exp(-k^2 s^2) e^{2 i k theta}, and the Jacobi triple product writes this as a constant times the product over n >= 1 of (1 + 2 q^{2n-1} cos(2 theta) + q^{4n-2}), with q = exp(-s^2). Each factor is positive and strictly decreasing in theta on [0, pi/2]. ∎

So No-go theorem 9 of lemma 18, the absence of a finite nonzero stationary point on a free radial ray, has this as an escape: on the interval the radial direction is compact, and the tower, which the finite description omits, supplies a second branch that stops the runaway at theta = pi/2. In the present family the literal action therefore chooses antipodal gradings, m = pi/(2l), with M_W = M_Z = 0 by Theorem 23.6. This is a vacuum with massless vectors, so it is not the physical point. The sign of the term agrees with the fermion loop in the Hosotani mechanism, where gauge-boson loops enter with the opposite sign. So an interior minimum could arise from that competition, which the classical spectral action does not contain. We have not computed it.

## The one-loop potential in the same family

From the exact spectra, the products over the towers are, relative to theta = 0 and in Euclidean momentum x = p l,

    fermion channel:  1 + sin^2(theta)/sinh^2(x),
    charged vectors:  1 + sin^2(2 theta)/(2 sinh^2(x)),
    neutral vector:   1 + (4/5) sin^2(2 theta)/sinh^2(x).

So in the gauge-boson and fermion-loop form of the Hosotani mechanism, assuming the usual one-loop formula with three polarizations per vector, and with n_f = (number of Dirac fermion channels) x 2,

    8 pi^2 l^4 V(theta) = int_0^infinity x^3 dx [ 3 log(1 + s^2/(2 sinh^2 x)) + (3/2) log(1 + (4/5) s^2/sinh^2 x) - n_f log(1 + sin^2(theta)/sinh^2 x) ],

with s = sin(2 theta). A Dirac top with three colours has n_f = 6. Near theta = 0, V ~ (10.8 - n_f) I theta^2 with I = int x^3/sinh^2 x dx; near theta = pi/2, it has a positive curvature for every n_f.

**A numerical statement (Python).** On a grid of 91 values of theta, for n_f in {0, 1, 2, 3, 4, 6, 8, 12, 24, 48, 96, 200}, V has no interior minimum. For n_f <= 8 it has one interior maximum, at theta = 0.785 for n_f = 0, moving to 0.33 at n_f = 8, and for n_f >= 12 none. The global minimum is at theta = pi/2 for n_f > 0.

This is a numerical negative result in an exact scope: one interval, no bulk masses, fermions of frequency 1 under F, this gauge content, one loop, this BC at the connector wall. To leading order in the logarithm, V has the form B sin^2(2 theta) - A sin^2(theta) with A, B > 0, whose interior stationary point cos(2 theta) = A/(4B) is a maximum, which shows the mechanism in that approximation. So an interior minimum needs one of these escapes: a negative coefficient of sin^2(2 theta), as from fermions of frequency 2 under F, which the bimodule E = Hom(V, W) does not contain; bulk masses, with their form factors, whose second-order term enters with the opposite sign and which we have not computed; a wall scalar with its own potential; or tree-level terms at the walls. The form is that of the composite Higgs with fermions in the spinor of SO(5) (to be compared with Agashe, Contino and Pomarol). This points away from a pure Wilson line and toward bulk masses or a wall scalar for the physical interior.

## Comparison with measured values in the flat toy

These are numerical comparisons (Python), with no running and no bulk masses, in lowest levels. The ratio m_t/M_W reaches sqrt(8/3) at theta = 1.0589 and the measured 2.147 at theta = 1.1625, where M_W l = 0.54, so 1/l is about 150 GeV. There, M_W^2/M_Z^2 = 0.58, against the measured 0.777. The wall-scalar family of lemma 22 covers [0.625, 1], and this family covers [0.503, 0.625]. So neither flat family fits on its own, the tower is far too light, and the flat one-loop potential above does not select an interior point. The directions are bulk masses for the light fermions, warping, running of the couplings, and families combining a Wilson line with a wall scalar. These negative statements hold in the flat tree-level toy only.

## Open questions

1. The interior vacuum: the effective potential for theta with bulk masses for the top, and with a wall scalar; the flat case with no bulk mass has none, by the numerical statement above.
2. The relation between the two roles of S^4: the base of the twistor window, and the field space of the Higgs quaternion.
3. A commutative parent: functions on S^4 x I and CP^3 x I, with the gradings as local boundary conditions.
4. The factor 3/2 between the five-dimensional normalization and the spectral action: whether the spectral action on the parent itself, with its tower, reproduces the formula of Theorem 23.6.
5. The comparison with twisted spectral triples, Remark 23.3.

## Numerical check

By Claude Opus 5.5, in Python (numpy and scipy), 3 Nov 2026, in a temporary directory, not kept.

- Random complex symmetric M on C^4 with l ||M|| = 1.25: Gamma_1 is an involution, Gamma_1 = exp(2 l K) Gamma_0; D_F = (1/2l) Gamma_0 log(Gamma_1 Gamma_0) to 3 x 10^-15; the principal angles over l equal the singular values of M to five digits.
- Sp(2) x SU(4), of dimension 25, with the Neumann and Dirichlet subspaces built from the stated stabilizers: the two-point boundary problem was solved as a linear system on a grid in k l. For theta = 0.2, pi/4, 1.06 and 1.3, the two lowest nonzero roots are (0.279, 0.356), (0.785, 1.107), (0.647, 0.868), (0.373, 0.479), equal to the formulas of Theorem 23.6 to three digits, with other roots at pi/2 and above. The intersection of the two stabilizers has dimension 9 at each theta tested.
- Small theta: M_W^2/m^2 = 2.000 and M_Z^2/m^2 = 3.200.
- The universal connection on E (+) E\*: J D = D J, Gamma_0 D = -D Gamma_0, all |eigenvalues| equal to theta/l, Gamma_1 = (left Gamma_p, right mirror), J_1^2 = -1, J_1 Gamma_1 = -Gamma_1 J_1, while J alone fails; J_1 h J_1^-1 is right multiplication by +h on E\*, for odd h.
- The theta function: monotone on a grid for s = 0.3, 1, 2, with the towerless value at s = 0.3 equal to e^{-x} to five digits; Poisson summation and the triple product to 10^-16.
- The ratio M_W^2/M_Z^2 on a grid: range [0.5032, 0.6250], symmetric under theta -> pi/2 - theta to 10^-15, minimum at pi/4. At theta = 1.1625, M_W l = 0.541, and at theta = 1.0589, M_W l = 0.648.
- The one-loop integrals by adaptive quadrature (scipy).
