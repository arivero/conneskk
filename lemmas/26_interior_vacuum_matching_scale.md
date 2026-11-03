# The interior vacuum and the matching scale in the flat parent

For STRATEGY T13, T5b and T12, following [lemma 23](23_two_gradings_interval.md), [lemma 24](24_commutative_parent.md), [lemma 25](25_sum_rule_effective_dimension.md) and the [steer note](../d9_masses_fermi_qcd_steer.md), items 9 and 11. Proved by Claude Opus 5.5; the numerical statements are in Python and each is labelled. Refereed by Terra 6.1 (effort max, 3 Nov 2026; [first report](../reviews/2026-11-03_terra_check_26.md)): three errors and two gaps as first written, and amendments. Proposition 26.3c and Result 26.8 were added after that report and answer its gap on the wall mass, and a [second report](../reviews/2026-11-03_terra_check_27.md) corrected one error in the summary. The textual corrections of both are incorporated below, and the calculations they call for are listed under "Outstanding".

**Outcome.**

1. Pure frequency-2 fermion channels give the flat family an interior global minimum, and we classify it for n_2 >= n_c (Theorem 26.2). With frequency-2 channels alone it sits exactly at theta = pi/4, where M_KK = 4 M_W.
2. In the displayed channels of the multiplets containing Q_L and U_R, a pure channel carries an exact massless coloured exotic, and a wall mass of any finite positive size leaves a coloured state of charge 2/3 below M_W (Proposition 26.3c). So a top at 2 M_W in such a channel has a lighter partner, whose couplings are not analyzed. In E there is no such partner: m_1 = 2 M_W at theta = 1.1377, with M_KK = 444 GeV, and the vacuum then needs a separate sector.
3. In the step-threshold model of the parent, without frequency-2 multiplets, the left-right difference of the couplings runs only logarithmically (Proposition 26.5). The couplings then meet at mu_* = 2.2 x 10^14 GeV, with M_KK = 3.1 x 10^13 GeV (Result 26.6, one loop, conditional on the spectrum).
4. At a low tower, with the hypercharge coupling fitted by a wall kinetic term, the finite interval shifts M_W^2/M_Z^2 below its four-dimensional value by 0.05 at the top-compatible point, and by less than 0.006 only above about 1.2 TeV (Result 26.8, tree level).
5. These give two regimes of one family, stated at the end with hypotheses and escapes.

## Setting

We keep the flat interval of length l and the gauge content, couplings and connector wall of Theorem 23.6. A fermion channel is *pure of frequency q* when its two wall gradings differ by a rotation through q theta in the channel. Its spectrum is +-(n pi + q theta)/l, n in Z, so that its product over the tower, relative to theta = 0, is 1 + sin^2(q theta)/sinh^2(x), with x = p l.

The bimodule E = Hom(V, W) is pure with q = 1 (Proposition 23.7). Let n_q >= 0 be twice the number of physical Dirac species in such channels, each colour counted once. With t = sin^2(theta), u = t (1 - t), and F, J as in Results 8 and 9 of lemma 24, the one-loop potential of the form displayed in lemma 23 is

    8 pi^2 l^4 V = 3 F(2u) + (3/2) F((16/5) u) - n_1 F(t) - n_2 F(4u),        (1)

    dV/dt = (1 - 2t) G(u) - n_1 J(t),   G(u) = 6 J(2u) + (24/5) J((16/5) u) - 4 n_2 J(4u),        (2)

up to the factor 8 pi^2 l^4. Equation (1) assumes precisely these towers and multiplicities; a full representation can contain others. We use J(0) = (3/2) zeta(3) and J(1) = (9/8) zeta(3), so J(0)/J(1) = 4/3.

**Lemma 26.1.** Let R(u) = [6 J(2u) + (24/5) J((16/5) u)] / (4 J(4u)) on (0, 1/4]. Then R is strictly increasing, with R(0+) = 27/10 and R(1/4) = n_c, where

    n_c = [6 J(1/2) + (24/5) J(4/5)] / (4 J(1)) = 2.8855033... (numerical quadrature).

*Proof.* For c < 4, d/du log[J(c u)/J(4u)] = [e(4u) - e(c u)]/u, with e(z) = -z J'(z)/J(z). By Result 8 of lemma 24 and the covariance argument in the referee amendment there, which is strictly positive, e is strictly increasing. So both ratios J(c u)/J(4u), for c = 2 and c = 16/5, strictly increase. ∎

## The classification

**Theorem 26.2.** Let n_1, n_2 >= 0 in the family (1), with theta in [0, pi/2].

1. *n_1 = 0.* The potential is a function of u.
   - If n_2 <= 27/10, it increases with u: theta = 0 and theta = pi/2 are the two global minima, degenerate at n_2 = 27/10, where the leading term is (99/25) theta^4 log(1/theta^2), and theta = pi/4 is the maximum.
   - If 27/10 < n_2 < n_c, there are exactly two global minima, at theta_* and pi/2 - theta_*, with theta_* in (0, pi/4), and theta = pi/4 is a local maximum.
   - If n_2 >= n_c, theta = pi/4 is the unique global minimum, with a quartic leading displacement at n_2 = n_c.
2. *n_1 > 0 and n_2 >= n_c.* Let n_* = (4/3)(4 n_2 - 54/5).
   - If n_1 < n_*, there is exactly one stationary point in the open interval. It is the strict global minimum, and it lies in (pi/4, pi/2).
   - If n_1 >= n_*, V decreases strictly on (0, pi/2), with unique global minimum at theta = pi/2, degenerate at n_1 = n_*.

The endpoints are stationary in theta in every case, since dt/d(theta) vanishes there. The range n_1 > 0, n_2 < n_c is not classified here.

*Proof.* Item 1: dV/du = 4 J(4u) (R(u) - n_2), so Lemma 26.1 gives the three cases. Item 2: since n_2 >= n_c >= R(u), G(u) = -4 J(4u) (n_2 - R(u)) <= 0 on (0, 1/4], with equality only at u = 1/4 and n_2 = n_c. For t <= 1/2, (2) gives dV/dt <= -n_1 J(t) < 0. For t > 1/2 write dV/dt = J(t) [Psi(t) - n_1], with Psi(t) = (2t - 1) |G(u)|/J(t). Here 2t - 1 increases, 1/J(t) increases, and |G(u)| increases with t, since u decreases with t and both factors J(4u) and n_2 - R(u) decrease in u. So Psi increases strictly from Psi(1/2) = 0 to Psi(1) = (4 n_2 - 54/5) J(0)/J(1) = n_*. ∎

No numerical computation enters the proof, apart from the value of n_c. A Python check on a grid of 11600 pairs, n_2 from 3 to 60 and n_1 from 0 to 199, with theta on 20001 points, finds the stated stationary points in each case.

For the remaining integer counts: n_2 = 0 is Theorem 9 of lemma 24. For n_1 = 0 and n_2 = 1, 2, Theorem 26.2 gives both endpoints as global minima. For n_1 > 0 and n_2 = 1, 2, a scan of n_1 up to 200 (Python) finds no interior local minimum, which we have not proved. So at integer counts every interior minimum found has theta >= pi/4. The window 27/10 < n_2 < n_c, with its minima at small theta, contains no integer.

**Proposition 26.2b (referee; no global minimum at small angle).** For n_1 > 0 and 0 < t < 1/2, V(1 - t) - V(t) = -n_1 [F(1 - t) - F(t)] < 0, so no point of (0, pi/4) is a global minimum. With item 1 of Theorem 26.2 for n_1 = 0, this covers all integer counts. It does not exclude metastable minima at small angle in the cases left to scans. ∎

**Corollary 26.3 (the spectrum at the minimum).** Write g(y) = arcsin(sin(y)/sqrt(2)), so that M_W l = g(2 theta) by Theorem 23.6, for theta in (0, pi/2), where M_W > 0. On [pi/4, pi/2), m_1 l = theta and m_2 l = pi - 2 theta for pure channels.

1. At theta = pi/4, the minimum for n_1 = 0 and n_2 >= n_c: M_KK := pi/l = 4 M_W, m_1 = M_W, m_2 = 2 M_W, tan(M_Z l) = 2 and M_W^2/M_Z^2 = 0.5032...
2. As theta increases from pi/4 to pi/2, m_1/M_W increases from 1 to infinity and m_2/M_W decreases strictly from 2 to sqrt(2).
3. M_KK >= 4 M_W for all theta in (0, pi/2), and M_KK/M_W grows without bound as theta -> pi/2 and as theta -> 0.

*Proof.* Item 1 follows from Theorem 23.6. For item 2, g'(y) = cos(y)/(1 + cos^2 y)^(1/2) is positive and decreasing on (0, pi/2), so g is concave with g(0) = 0, and y/g(y) increases. With y = pi - 2 theta, this gives m_2/M_W = y/g(y). Item 3 follows from sin^2(M_W l) <= 1/2. ∎

Evaluating the minimum (Python, on the root given by the proof, recomputed by the referee), with M_W = 80.36 GeV:

| n_1 | n_2 | theta_* | M_KK (GeV) | m_1/M_W | m_2/M_W | M_W^2/M_Z^2 |
|---|---|---|---|---|---|---|
| 0 | >= 3 | 0.7854 | 321 | 1 | 2 | 0.503 |
| 6 | 8 | 0.941 | 342 | 1.27 | 1.71 | 0.525 |
| 14 | 8 | 1.138 | 444 | 2.00 | 1.52 | 0.576 |
| 16 | 8 | 1.186 | 491 | 2.31 | 1.50 | 0.586 |
| 16 | 6 | 1.446 | 1437 | 8.23 | 1.42 | 0.621 |
| 48 | 12 | 1.502 | 2597 | 15.5 | 1.42 | 0.624 |

A frequency-1 top with m_1/M_W = 2 needs theta = 1.13774, on the line n_1 = 2.71387 n_2 - 7.71725, with M_KK = 444 GeV. A larger tower needs n_1 close to n_* from below. With even counts this reaches 29 TeV at (n_1, n_2) = (604, 116), and the frequency-1 fermions then sit near M_KK/2, as in item 2 of Theorem 23.6.

**Remark (the quadratic coefficient).** The coefficient of theta^2 in (1) is (54/5 - n_1 - 4 n_2) (3/2) zeta(3), which does not vanish for integer n_1, n_2. So in (1) the quadratic coefficient has no exact cancellation. This concerns that coefficient only: F(z) = J(0) z + (1/4) z^2 log z + O(z^2), so a theta^4 log(theta^2) term remains at a tuned small angle. For added bosons the statement needs a stated normalization: a real scalar determinant carries 1/2 and a real vector 3/2, and mixed boundary projections can give other prefactors.

## Where frequency 2 lives

With multiplicities for the eigenvalues of F: the 4 has +-1, each twice; the 5 has 0 three times and +-2 once each; the 10 has 0 four times and +-2 three times each. So E = (4, 4bar) has no frequency-2 channel. For a top with Q_L in (2, 2) and U_R in the same multiplet, the charges Y = R_3 + (B - L)/2 require colour triplets with B - L = 4/3 for the 5, smallest in the 15, so (5, 15), of 75 components; or B - L = -2/3 for the 10, smallest in the 6, so (10, 6), of 60 components, with Q_L at R_3 = +1/2 and U_R at R_3 = +1. Also Lambda^2 E = (10, 6) (+) ((1 (+) 5), 10bar). The (5, 15) with light fermions localized is the pattern of Contino, Da Rold and Pomarol.

**Proposition 26.3b (the frequency-2 plane does not separate the top).** Take the (10, 6), with F the generator J_45 of so(5). The frequency-2 planes are (A^a, O^a), with A^a = (L^a - R^a)/sqrt(2) and O^a in (2, 2). The component O^+ is the left-handed top, with (T_3L, R_3) = (+1/2, +1/2), and its partner A^+ contains the right-handed top R^+ with weight 1/sqrt(2), together with the triplet component L^+. Let phi = 2 theta, A' = cos(phi) A + sin(phi) O, O' = -sin(phi) A + cos(phi) O, and S = (L + R)/sqrt(2). Consider the self-adjoint problem, by the referee: at x = 0, psi_R is Neumann on S, A and Dirichlet on O, and psi_L has the complementary conditions.

1. If at x = l, psi_R is Neumann on S and A' and Dirichlet on O', then (O^+, A^+) is a pure frequency-2 channel, and S_R is an exact massless coloured mode of charge 2/3.
2. If at x = l, psi_R is Dirichlet on O' and on S + A', and Neumann on S - A', the determinant is proportional to cos(a) (2 sin^2 a - sin^2 phi), with a = m l. So the angle-dependent tower obeys sin^2(m l) = sin^2(2 theta)/2, the equation of the charged vectors: m_t = M_W at every theta. There is also an angle-independent half-integer tower.
3. In the (5, 15) the same holds with the chiralities exchanged: the frequency-2 plane contains U_R and (t_L + X)/sqrt(2), with X the exotic of Y = 7/6.

*Proof.* These are the commutation relations of so(5) and the boundary problem, solved below as the limits of Proposition 26.3c. ∎

These statements concern the displayed channel. A gauge-invariant completion needs conditions on complete wall multiplets, and the other modes of the multiplet also enter the potential.

**Proposition 26.3c (a wall mass leaves a light state).** In the problem above, normalize u = (S + A')/sqrt(2), v = (S - A')/sqrt(2), and let a wall Weyl field chi couple to g_u at x = l with parameter w: the self-adjoint operator is H(f, g, chi) = (-g', f', w g_u(l)), with domain f_u(l) = w chi, g_{O'}(l) = 0, f_v(l) = 0 and the stated conditions at x = 0 (referee). Let omega = w^2 l and a = m l. Eliminating chi for m != 0 gives f_u(l) = (omega/a) g_u(l). With s = sin(2 theta), the nonzero eigenvalues solve

    2 a Delta sin(a) = omega cos(a) (Delta + sin^2 a),   Delta = sin^2 a - s^2,        (3)

where omega = 0 gives Delta sin(a) = 0, item 1 above, with the decoupled wall Weyl zero mode counted separately, and omega -> infinity gives cos(a) (2 sin^2 a - s^2) = 0, item 2. For every theta in (0, pi/2) and every omega in (0, infinity), there is an eigenvalue with 0 < m < M_W.

At theta = pi/4 equation (3) factorizes as cos(a) (omega cos(2a) - a sin(2a)) = 0: the state m = pi/(2l) = 2 M_W does not depend on omega, and the other equation has a root in (0, pi/4) for every omega > 0, moving from 0 to M_W l = pi/4.

*Proof.* On x in [0, l], with f the left and g the right components and the massless bulk operator, f' = m g and g' = -m f. The conditions at 0 give f_O = alpha cos(m x), g_O = -alpha sin(m x), f_A = beta sin(m x), g_A = beta cos(m x), f_S = gamma sin(m x), g_S = gamma cos(m x). These enter three linear conditions at x = l, g_{O'}(l) = 0, f_v(l) = 0 and f_u(l) = (omega/a) g_u(l), and (3) is the vanishing of their determinant, which we use before any division, so that it covers cos(2 theta) = 0 as well. For the root, let u_W = M_W l = arcsin(s/sqrt(2)) <= pi/4. On 0 < a < u_W,

    omega = 2 a tan(a) (s^2 - sin^2 a)/(s^2 - 2 sin^2 a)

is continuous and strictly increasing from 0 to +infinity (referee), and it takes every value in (0, infinity). ∎

So in the displayed charge-2/3 channel a state lies below M_W for every finite positive wall mass, and in the infinite-mass limit the lowest root of this isolated channel is M_W. This does not exclude identifying a higher eigenstate with the top: equation (3) has the eigenvalue m = 2 M_W when omega = 4 u_W sin(2 u_W)/(1 + 2 cos(2 u_W)). For example, at theta = 1 this is omega = 2.04, with another state at 0.85 M_W (Python, referee). That higher state has nonzero O_L and R_R components; its physical identification and the couplings of the lighter state need analysis. This compares with the top-mass limits for low representations in flat gauge-Higgs models (Cacciapaglia, Csaki and Park; Adachi and Maru; massless exotics and their wall masses in Hosotani, Oda, Ohnuma and Sakamura). A complete gauge-invariant wall multiplet, other boundary mixings, bulk masses and the other towers need separate analysis, and they can add still lighter states.

The vacuum exists in case 2 as well. Let n_d be twice the number of Dirac species with the product 1 + sin^2(2 theta)/(2 sinh^2 x), in place of n_2. Then G(u) acquires -2 n_d J(2u), and for n_d >= 27/5 we have G <= 0 on (0, 1/4], since J(16u/5) <= J(2u). So with n_1 = 0, theta = pi/4 is the unique global minimum, by the argument of item 1 of Theorem 26.2. One Dirac colour triplet has n_d = 6. A scan (Python) gives minima at 0.8585 and 1.0011 for (n_d, n_1) = (12, 2), (12, 6), and no interior stationary point for n_d = 6 and n_1 = 2, 6. For E with n_1 and such a sector, m_1/M_W = 2 lies on the line n_d = 5.292 + 0.6857 n_1; for example (n_1, n_d) = (4, 8) gives theta = 1.1423, with m_1/M_W = 2.026. Such a sector has its own state at M_W in that isolated channel.

## The tower of the parent in the step-threshold model

Take the conditions of Theorem 23.6 at theta = 0, and let S = mu/M_KK with M_KK = pi/l. A massive vector, with its fifth component and ghosts, contributes -(7/2) tr Q^2 per level, the trace over real components.

| generators | conditions (x = 0, x = l) | tower | SU(3) | SU(2) | U(1), GUT normalization |
|---|---|---|---|---|---|
| gluons | N, N | n | -21/2 | | |
| W_L | N, N | n | | -7 | |
| O = (2, 2), Y = +-1/2 | D, D | n | | -7/2 | -21/10 |
| R^+-, Y = +-1 | N, D | n - 1/2 | | | -21/5 |
| X = 3 + 3bar, Y = +-2/3 | N, D | n - 1/2 | -7/2 | | -28/5 |
| hypercharge combination | N, N | n | | | 0 |
| orthogonal neutral combination | N, D | n - 1/2 | | | 0 |

The totals -21/2 for SU(2) and -14 for SU(3) are -(7/2) C_2 of Sp(2) and SU(4). The Higgs is the zero mode of A_5 along O, counted in the Standard Model coefficients, and the nonzero modes of A_5 are the gauge partners counted in the vector towers. Three complete massless bulk generations of E add F = 8 to each coupling on the integer tower, in the limit theta -> 0; at nonzero angle, frequency-one masses are shifted to (n pi +- theta)/l. With the fermions on the walls, F = 0.

So above M_KK, with b = (41/10, -19/6, -7), we take as a model

    alpha_i^-1(mu) = alpha_i^-1(M_Z) - (b_i/2 pi) log(mu/M_Z) - (1/2 pi) [ (B_i + F) I_n(S) + C_i I_h(S) ],        (4)

    B = (-21/10, -21/2, -21/2),   C = (-49/5, 0, -7/2),

where I_n(S) is the sum of log(S/n) over n <= S, and I_h(S) the sum of log(S/(n - 1/2)) over n - 1/2 <= S. For large S, I_n ~ S - (1/2) log(2 pi S) and I_h ~ S - (1/2) log 2, so I_h - I_n ~ (1/2) log S + (1/2) log pi.

The model (4) omits the frequency-2 multiplets used for the vacuum above. A complete five-dimensional Dirac (10, 6) has level contributions (296/15, 24, 40/3), before its threshold splitting and zero-mode subtractions, and these are not a universal F. Boundary kinetic counterterms are also generated by loops and need a renormalization prescription (Carena, Tait and Wagner). So (4) is the running of this spectrum, and of the parent only as far as this spectrum is the parent's.

**Proposition 26.4.** In (4), the differences of the alpha_i^-1 are independent of F. ∎

**Proposition 26.5 (the left-right difference in Sp(2) is logarithmic).** Define alpha_R^-1 = (5/3) alpha_1^-1 - (2/3) alpha_3^-1, the coupling of SU(2)_R in 1/g_Y^2 = 1/g_R^2 + (2/3)/g_4^2. Then, from (4),

    alpha_R^-1(mu) - alpha_2^-1(mu) = D_0 - (44/3)/(2 pi) log(mu/M_Z) + (7/pi) [I_h(S) - I_n(S)],        (5)

with D_0 = alpha_R^-1(M_Z) - alpha_2^-1(M_Z), and it has no power of S. With the inputs (59.0, 29.6, 8.47), D_0 = 63.09.

*Proof.* The zero modes give (5/3)(41/10) + (2/3)(7) + 19/6 = 44/3. The integer tower gives (5/3)(-21/10 + F) - (2/3)(-21/2 + F) - (-21/2 + F) = 14, and the half-integer tower gives (5/3)(-49/5) - (2/3)(-7/2) = -14. ∎

The cancellation concerns the difference within Sp(2); differences involving colour keep a power of S. This is the differential running of orbifold models (Nomura, Smith and Weiner). Without the tower the difference vanishes at 5 x 10^13 GeV. With a tower, for S >> 1, it vanishes at

    log(mu_LR/M_Z) = (3/23) [ 2 pi D_0 + 7 log(pi) - 7 log(M_KK/M_Z) ].        (6)

So at M_KK = 321 GeV, the difference is 61.69 at S = 1 in (5), where I_h = log 2, against 60.15 from the Standard Model extrapolation alone, and by (6) it vanishes near 2 x 10^24 GeV. It lies above the Planck mass, 1.2 x 10^19 GeV, for M_KK below about 2 x 10^8 GeV.

**Result 26.6 (the meeting point in (4); Python, one loop).** The two conditions alpha_1 = alpha_2 = alpha_3 in (4) have the solution

    M_KK = 3.15 x 10^13 GeV,   mu_* = 2.21 x 10^14 GeV,   S = 7.04,

with alpha^-1 = 46.0 for F = 8 and 52.6 for F = 0. It is the only solution with S >= 1 (referee): eliminating log(mu/M_Z) between the left-right equation and the equation for alpha_2 = alpha_3 leaves a continuous function of S whose derivative between thresholds is (315 N_h - 161 N_n)/(44 S) > 0, with N_n, N_h the numbers of levels below S. Shifts of 0.1 in alpha_1^-1 or alpha_2^-1 and of 0.15 in alpha_3^-1, one at a time, move M_KK within 2.9 to 3.4 x 10^13 GeV, and all three together within 2.66 to 3.70 x 10^13 GeV. Larger effects are possible: one additional light colour-triplet Weyl fermion changes alpha_3^-1 by about -1.4 up to that scale, the Standard Model gauge part of the two-loop terms by about (-0.20, -0.27, +0.39) (referee), and finite wall terms and split thresholds are not included. So in this model the relation g_3^2 = g_2^2 = (5/3) g_Y^2 holds at one scale with no added thresholds, and that scale fixes the tower. An interval Pati-Salam model with a compactification threshold of order 10^13 GeV, with a different intermediate group and matter, is in Abe, Goto and Kawamura.

## The top against the matching scale

In a flat parent with the Higgs as A_5, the tree-level relation at small angle, for a pure channel of frequency q, is y_q = (q/2) g, since m_q = q theta/l and M_W = sqrt(2) theta/l. The same covariant derivative fixes the local bulk vertices. Physical four-dimensional gauge and Yukawa couplings still receive different finite corrections and thresholds (Lim and Maru). So the absence of separate running holds for the local bulk coupling, in a stated matching scheme. This differs from item 11 of the steer note, where the Higgs is an independent bulk field, y_t runs with its own power law, and the matching sits at the crossings. Item 11 stays correct for that content, and the two calculations have different actions.

At finite angle a mass ratio does not give the Higgs coupling. With v_ang = 2 sqrt(2) theta/(g l), the coupling is sqrt(2) dm/dv_ang. At theta = pi/4, the pure frequency-2 branches have slopes corresponding to |y| = g and are degenerate, so the coupling is a matrix on that subspace, while the tower with m = M_W has dm/d(theta) = 0 there (referee).

**Result 26.7 (illustration; Python, one loop, Standard Model below M_KK).** The running mass m_t solving y(m_t) v/sqrt(2) = m_t, from the boundary value y(M_KK) = r g_2(M_KK):

| M_KK (GeV) | r = 1/2 | r = 1/sqrt(2) | r = 1 | r = 2/sqrt(3) | r = sqrt(2) |
|---|---|---|---|---|---|
| 321 | 63 | 87 | 119 | 136 | 164 |
| 10^4 | 74 | 101 | 136 | 153 | 179 |
| 10^9 | 99 | 129 | 163 | 176 | 195 |
| 3.1 x 10^13 | 114 | 143 | 172 | 183 | 196 |

The measured value in the same convention is 163 GeV, and from it y_t/g_2 equals sqrt(2) at 265 GeV, 2/sqrt(3) at 2.8 x 10^5 GeV and 1 at 1.3 x 10^9 GeV. These are boundary-value calculations, and they are predictions of no spectrum: at low M_KK a real parent has other thresholds below M_KK, so Standard Model running there is an illustration. Reading the entry 164 GeV as the pure channel at theta = pi/4 fails for three reasons: the Higgs coupling at that angle is not sqrt(2) g, as above; the channel has its massless exotic and a second fermion at M_KK/2; and Proposition 26.3c gives a lighter partner for any wall mass.

**Result 26.8 (the neutral problem with a wall term; Python, tree level).** Let the bulk couplings of Sp(2) and SU(4) be separate, and let a wall kinetic term r at x = l act on the hypercharge combination Y-hat = cos(phi) R + sin(phi) B, with cos^2(phi) = alpha_2^-1/(alpha_2^-1 + (2/3) alpha_3^-1). We fix these, as an estimate, by Standard Model running to M_KK, with alpha_Y^-1 = (1 + r/l)(alpha_2^-1 + (2/3) alpha_3^-1). The charged sector is unchanged. At x = 0, S, A, B are Neumann and O is Dirichlet. At x = l, with L_l = (S + A')/sqrt(2), R_l = (S - A')/sqrt(2), p = cos(phi), q = sin(phi): O' = 0, -q R_l + p B = 0, d_x L_l = 0 and d_x(p R_l + q B) = r m^2 (p R_l + q B). The lowest neutral root a = M_Z l solves, with t = r/l (referee),

    (1 + t a cot a) sin^2 a = (sin^2(2 theta)/2) (1 + p^2 + t a cot a),

whose r = 0, one-coupling limit is Theorem 23.6, and which our 4 x 4 determinant reproduces.

| theta | M_KK (GeV) | m_1/M_W | M_W^2/M_Z^2 | four-dimensional value at M_KK | r/l |
|---|---|---|---|---|---|
| 0.7854 | 321 | 1.00 | 0.629 | 0.762 | 1.63 |
| 1.1377 | 444 | 2.00 | 0.709 | 0.761 | 1.60 |
| 0.30 | 615 | 0.73 | 0.735 | 0.759 | 1.56 |
| 1.30 | 677 | 3.48 | 0.739 | 0.759 | 1.55 |
| 0.15 | 1199 | 0.71 | 0.750 | 0.756 | 1.48 |
| 0.08 | 2236 | 0.71 | 0.751 | 0.752 | 1.42 |
| 1.53 | 4378 | 26.5 | 0.749 | 0.749 | 1.35 |

So within this matching prescription the finite interval shifts the ratio by -0.13 at theta = pi/4 and by -0.05 at the theta where m_1/M_W = 2. In the rows of the table the shift falls below 0.006 from about 1.2 TeV, where m_1/M_W is either near 0.71 or above 8, as a numerical statement for this prescription. The four-dimensional number is a reference within this prescription. A physical precision comparison needs the coupling definitions, wavefunction overlaps, threshold matching and radiative corrections of the model, which can enter at the same order as a small shift. We have not done an electroweak fit, and the measured on-shell value, 0.7767, is not comparable with these columns without that.

## Two regimes

We state the outcome in the exact scope of (1) and (4): one interval, flat profiles, this gauge content, one loop, no bulk masses. This is one independent review of a statement about one family, and broader consensus on its negative parts remains open. It leaves T13 open.

**Low tower.** With frequency-2 channels of sufficient count, the one-loop potential has a natural interior minimum, at theta >= pi/4 and M_KK from 321 GeV upward (Theorem 26.2). In E, m_1 = 2 M_W at theta = 1.1377, with M_KK = 444 GeV, and the frequency-2 sector that stabilizes it has its own light states in the displayed channels (Propositions 26.3b, 26.3c). A state at 2 M_W in a frequency-2 channel has a lighter partner, whose couplings are not analyzed. In (5), the left-right difference at the tower is about 60, so if only a hypercharge wall term and separate bulk couplings are admitted, that wall term is of that size in alpha^-1, comparable with twice the bulk value, as an estimate; general non-universal wall kinetic terms are another way to fit the couplings. The weak angle is then an input, and the finite interval shifts M_W^2/M_Z^2 by the amounts of Result 26.8. Whether a tower at this scale is allowed needs its couplings and an applicable experimental limit, which we have not analyzed.

**High tower.** The relation of one coupling holds in the model (4) at mu_* = 2.2 x 10^14 GeV, with M_KK = 3.15 x 10^13 GeV, and the weak angle runs down from it. With the boundary values of Result 26.7, r = 1 gives a running mass near 172 GeV and r = 1/2 gives 114 GeV. The small-angle relation M_W l = sqrt(2) theta then requires theta = 5.7 x 10^-12, and Proposition 26.2b shows that no such angle is a global minimum of (1) at integer counts. Metastable minima, in the cases left to scans, are not excluded by it.

**Escapes.** All of these are model-dependent: wall kinetic terms and separate bulk couplings, which give up the relation as a prediction; a wall scalar with its own potential; warping, whose spectra, counterterms and matching the flat sums do not determine; bulk masses; antiperiodic conditions; larger representations with brane mixing; boundary interactions.

**Direction.** Warping and larger representations are the standard directions for items 2 and 4 of the outcome. In this project the next computations are the same family in a warped interval, with the spectral action of lemma 25 at the level of its heat trace, and the items below.

**Outstanding.** The low-tower potential (1), the wall-mass spectrum (3), the wall kinetic term of Result 26.8 and the step-threshold running (4) use different simplified spectra, so their conclusions have not been combined into one model. A combined model needs: complete gauge-invariant wall multiplets, with their determinants in (1) and their thresholds in (4); the coupling matrix at finite angle; the couplings of the light partner in (3); and the matching of the neutral sector at one loop. These calculations are open.

## Priority

The sources are listed in [LITERATURE](../LITERATURE.md), section J. The referee's search covered orbifold differential running, Pati-Salam interval scales, flat large-representation tops, SO(5) vector and adjoint embeddings, exotics and Wilson-line minima, and found no prior occurrence of the classification with n_c or of the pair (M_KK, mu_*) from (4), with forward citation chains incomplete. So priority for those exact statements is open. Hosotani et al. find theta_H = pi/2, corresponding to 2 theta = pi/2, in a warped model with other matter.

## Numerical check

By Claude Opus 5.5, in Python (numpy, scipy), 3 Nov 2026, in a temporary directory, not kept; the referee recomputed the items marked in the report.

- J(0) and J(1) by quadrature against the closed forms, to 15 digits. The function e(z) is nondecreasing and R(u) is increasing on grids, with R(0+) = 2.7001 at u = 10^-5 and R(1/4) = 2.88550.
- Theorem 26.2 on the grid described after its proof, with no failure. For n_1 = 0: n_2 = 2.75 has minima at 0.1527 and 1.4180 and a maximum at pi/4, and n_2 = 2.90 has the minimum at pi/4.
- Equation (3) against a direct 3 x 3 determinant of the boundary conditions, for theta = 0.3, pi/4, 1.0, 1.1377 and omega from 10^-3 to 10^4: the lowest roots agree to four digits, and the lowest root lies below M_W l in every case.
- Equations (4), (5): the difference computed directly from (4) agrees with (5) to 13 digits at S = 1000. For S above 10^8 the closed sums lose precision in floating point, so (6) is used there.
- Result 26.6 by nested root finding, over a scan of 1401 values of M_KK. The inputs are those of the steer note, with no thresholds at the top or W.
- Result 26.7: one-loop top Yukawa equation of the steer note with no tower, below M_KK. The asymptotics of I_n, I_h and their difference, against the closed sums at S = 10.3, 100.3, 1000.3, to about 10^-3 or better.
- Result 26.8: the 4 x 4 determinant, with root finding on 6401 points. Its limit r = 0, one coupling against Theorem 23.6 at theta = 0.2, pi/4, 1.06, 1.1377, 1.3.
