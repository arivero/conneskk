# The interior vacuum and the matching scale in the flat parent

For STRATEGY T13, T5b and T12, following [lemma 23](23_two_gradings_interval.md), [lemma 24](24_commutative_parent.md), [lemma 25](25_sum_rule_effective_dimension.md) and the [steer note](../d9_masses_fermi_qcd_steer.md), items 9 and 11. Proved by Claude Opus 5.5; the numerical statements are in Python and each is labelled. Referee pending.

**Outcome.**

1. Fermions of frequency 2 under F give the flat family an interior global minimum, and we classify it (Theorem 26.2). With frequency-2 fermions alone it sits exactly at theta = pi/4, where M_KK = 4 M_W, m_2 = 2 M_W and m_1 = M_W (Corollary 26.3). Every minimum found at integer counts has theta >= pi/4.
2. Running down from M_KK = 4 M_W with the Standard Model content, m_2 = 2 M_W gives a running top mass of 164.1 GeV, against 163 GeV (numerical, one loop). This needs a pure frequency-2 channel, which carries an extra massless coloured zero mode. If a wall condition removes that mode, the top has the tower of the W and m_t = M_W at every theta (Proposition 26.3b), with a running mass of 87 GeV.
3. The left-right difference of the couplings in the parent runs only logarithmically (Proposition 26.5). So a tower near the weak scale cannot bring the couplings together: the one-coupling relation behind cos^2 theta_W = 5/8 needs M_KK of about 3 x 10^13 GeV (numerical, one loop).
4. These are two regimes of one family, stated at the end with their hypotheses and escapes. The flat one-loop vacuum belongs to the low tower, and the one-coupling relation to the high tower, at theta of about 6 x 10^-12.

## Setting

We keep the flat interval of length l and the gauge content, couplings and connector wall of Theorem 23.6. A fermion channel has *frequency q* when its two wall gradings differ by a rotation through q theta in the channel. Its spectrum is +-(n pi + q theta)/l, n in Z, so that

    its product over the tower, relative to theta = 0, is 1 + sin^2(q theta)/sinh^2(x), with x = p l.

The bimodule E = Hom(V, W) has q = 1 (Proposition 23.7). Let n_q be twice the number of physical Dirac species of frequency q, each colour counted once. With t = sin^2(theta), u = t (1 - t), and F, J as in Results 8 and 9 of lemma 24, the one-loop potential of the form displayed in lemma 23 is

    8 pi^2 l^4 V = 3 F(2u) + (3/2) F((16/5) u) - n_1 F(t) - n_2 F(4u),        (1)

    dV/dt = (1 - 2t) G(u) - n_1 J(t),   G(u) = 6 J(2u) + (24/5) J((16/5) u) - 4 n_2 J(4u),        (2)

up to the factor 8 pi^2 l^4. We use J(0) = (3/2) zeta(3) and J(1) = (9/8) zeta(3), so J(0)/J(1) = 4/3.

**Lemma 26.1.** Let R(u) = [6 J(2u) + (24/5) J((16/5) u)] / (4 J(4u)) on (0, 1/4]. Then R is strictly increasing, with R(0+) = 27/10 and R(1/4) = n_c, where

    n_c = [6 J(1/2) + (24/5) J(4/5)] / (4 J(1)) = 2.88550... (numerical quadrature).

*Proof.* For c < 4, d/du log[J(c u)/J(4u)] = [e(4u) - e(c u)]/u, with e(z) = -z J'(z)/J(z). By Result 8 of lemma 24, e is nondecreasing, and the independent argument of the referee of that lemma gives strict monotonicity through a covariance of two strictly decreasing functions. So both ratios J(c u)/J(4u), for c = 2 and c = 16/5, strictly increase. ∎

## The classification

**Theorem 26.2.** In the family (1), with theta in [0, pi/2]:

1. *n_1 = 0.* The potential is a function of u.
   - If n_2 <= 27/10, it increases with u: theta = 0 and theta = pi/2 are the two global minima, and theta = pi/4 is the maximum.
   - If 27/10 < n_2 < n_c, there are exactly two global minima, at theta_* and pi/2 - theta_*, with theta_* in (0, pi/4), and theta = pi/4 is a local maximum.
   - If n_2 >= n_c, theta = pi/4 is the unique global minimum.
2. *n_1 > 0 and n_2 >= n_c.* Let n_* = (4/3)(4 n_2 - 54/5).
   - If n_1 < n_*, there is exactly one interior stationary point. It is the strict global minimum, and it lies in (pi/4, pi/2).
   - If n_1 >= n_*, V decreases strictly on (0, pi/2), with unique global minimum at theta = pi/2.

*Proof.* Item 1: dV/du = 4 J(4u) (R(u) - n_2), so Lemma 26.1 gives the three cases. Item 2: since n_2 >= n_c >= R(u), G(u) = -4 J(4u) (n_2 - R(u)) <= 0 on (0, 1/4], with equality only at u = 1/4 and n_2 = n_c. For t <= 1/2, (2) gives dV/dt <= -n_1 J(t) < 0. For t > 1/2 write dV/dt = J(t) [Psi(t) - n_1], with Psi(t) = (2t - 1) |G(u)|/J(t). Here 2t - 1 increases, 1/J(t) increases, and |G(u)| increases with t, since u decreases with t and both factors J(4u) and n_2 - R(u) decrease in u. So Psi increases strictly from Psi(1/2) = 0 to Psi(1) = (4 n_2 - 54/5) J(0)/J(1) = n_*. ∎

No numerical computation enters the proof, apart from the value of n_c. A Python check on a grid of 11600 pairs, n_2 from 3 to 60 and n_1 from 0 to 199, with theta on 20001 points, finds the stated stationary points in each case.

For the remaining integer counts: n_2 = 0 is Theorem 9 of lemma 24, with no interior local minimum. For n_2 = 1, 2 a scan of n_1 from 0 to 200 (Python) finds no interior local minimum, which we have not proved. So at integer counts every minimum found has theta >= pi/4. The window 27/10 < n_2 < n_c, with its minima at small theta, contains no integer.

**Corollary 26.3 (the spectrum at the minimum).** Write g(y) = arcsin(sin(y)/sqrt(2)), so that M_W l = g(2 theta) by Theorem 23.6. On [pi/4, pi/2), m_1 l = theta and m_2 l = pi - 2 theta.

1. At theta = pi/4, for n_1 = 0: M_KK := pi/l = 4 M_W, m_1 = M_W, m_2 = 2 M_W, tan(M_Z l) = 2 and M_W^2/M_Z^2 = 0.5032...
2. As theta increases from pi/4 to pi/2, m_1/M_W increases from 1 to infinity and m_2/M_W decreases strictly from 2 to sqrt(2). So m_2 <= 2 M_W on this range, with equality only at pi/4.
3. M_KK >= 4 M_W on the whole family, and M_KK/M_W grows without bound as theta -> pi/2.

*Proof.* Item 1 follows from the formulas of Theorem 23.6. For item 2, g'(y) = cos(y)/(1 + cos^2 y)^(1/2) is positive and decreasing on (0, pi/2), so g is concave with g(0) = 0, and y/g(y) increases. With y = pi - 2 theta, this gives m_2/M_W = y/g(y). Item 3 follows from sin^2(M_W l) <= 1/2. ∎

Evaluating the minimum (Python, on the proof's root), with M_W = 80.36 GeV:

| n_1 | n_2 | theta_* | M_KK (GeV) | m_1/M_W | m_2/M_W | M_W^2/M_Z^2 |
|---|---|---|---|---|---|---|
| 0 | >= 3 | 0.7854 | 321 | 1 | 2 | 0.503 |
| 6 | 8 | 0.941 | 342 | 1.27 | 1.71 | 0.525 |
| 14 | 8 | 1.138 | 444 | 2.00 | 1.52 | 0.576 |
| 16 | 8 | 1.186 | 491 | 2.31 | 1.50 | 0.586 |
| 16 | 6 | 1.446 | 1437 | 8.23 | 1.42 | 0.621 |
| 48 | 12 | 1.502 | 2597 | 15.5 | 1.42 | 0.624 |

A frequency-1 top with m_1/M_W = 2 needs theta = 1.1377, on the line n_1 = 2.714 n_2 - 7.717, with M_KK = 444 GeV. A larger tower needs n_1 close to n_* from below. With even counts this reaches 29 TeV at (n_1, n_2) = (604, 116), and then the frequency-1 fermions sit at M_KK/2, as in item 2 of Theorem 23.6.

**Remark (no exact cancellation at theta = 0).** The coefficient of theta^2 in (1) is (54/5 - n_1 - 4 n_2) (3/2) zeta(3), and bosons of frequency q add integers n q^2 to the bracket. So at integer multiplicities it does not vanish, because 54/5 is not an integer. The denominator 5 comes from the neutral vector of Theorem 23.6. A tuned small theta therefore has no exact one-loop cancellation in this family, within this gauge content.

## Where frequency 2 lives

Under F the fundamental W has frequency 1, and the Sp(2) representations 5 and 10 have frequencies 0 and 2. So E = (4, 4bar) has no frequency-2 channel. For a top with Q_L in (2, 2) and U_R in the same multiplet, the charges Y = R_3 + (B - L)/2 require colour triplets with B - L = 4/3 for the 5, so (5, 15), of 75 components, or B - L = -2/3 for the 10, so (10, 6), of 60 components, with Q_L at R_3 = +1/2 and U_R at R_3 = +1. Since Lambda^2(W (x) V*) = (S^2 W (x) Lambda^2 V*) (+) (Lambda^2 W (x) S^2 V*), the (10, 6) is a piece of Lambda^2 E. The (5, 15) with light fermions localized is the pattern of the fundamental-of-SO(5) composite Higgs of Contino, Da Rold and Pomarol.

**Proposition 26.3b (the frequency-2 plane does not separate the top).** Take the (10, 6), with F the generator J_45 of so(5). The frequency-2 planes are (A^a, O^a), with A^a = (L^a - R^a)/sqrt(2) and O^a in (2, 2). The component O^+ is the left-handed top, with (T_3L, R_3) = (+1/2, +1/2), and its partner A^+ = (L^+ - R^+)/sqrt(2) contains the right-handed top R^+ with weight 1/sqrt(2), together with the triplet component L^+.

1. If L^+ and R^+ both keep their Neumann conditions at both walls, then (O^+, A^+) is a pure frequency-2 channel, with m_2 l = min(2 theta, pi - 2 theta), and S^+ = (L^+ + R^+)/sqrt(2) stays an exact massless coloured zero mode of charge 2/3.
2. If a wall condition removes the exotic, L^+ = 0 at x = l, then the channel obeys the boundary problem of the charged vectors in Theorem 23.6, with the roles of L and R exchanged, so sin^2(m l) = sin^2(2 theta)/2, and m_t = M_W at every theta. Its product over the tower is 1 + sin^2(2 theta)/(2 sinh^2 x).
3. In the (5, 15) the frequency-2 plane contains the singlet U_R and the combination (t_L + X)/sqrt(2) of the left-handed top with the exotic of Y = 7/6, with the same alternative on the left-handed side.

*Proof.* These are the commutation relations of so(5) on its adjoint and vector, and the calculation in the proof of Theorem 23.6, in which only the algebra of (S, A, O) is used. ∎

So the exact relation m_2 = 2 M_W of Corollary 26.3 requires item 1, with its massless exotic. Item 2 has no exotic zero mode, and gives m_t = M_W. A wall mass for the exotic interpolates between the two, which we have not computed: the top lies between M_W and 2 M_W, and the exotic moves from zero to the tower scale.

The vacuum exists in case 2 as well. Let n_d be twice the number of Dirac species with the product of item 2. Then G(u) acquires -2 n_d J(2u), and for n_d >= 27/5 we have G <= 0 on (0, 1/4], since J(16u/5) <= J(2u). So with n_1 = 0, theta = pi/4 is the unique global minimum (the argument of item 1 of Theorem 26.2). One Dirac colour triplet has n_d = 6, which satisfies this. A scan (Python) gives minima at 0.859 and 1.001 for (n_d, n_1) = (12, 2), (12, 6). For n_d = 6 and n_1 = 2, 6 it finds no interior stationary point.

These multiplets carry large tower coefficients, and we have not constructed one in the real parent.

## The tower of the parent

Take the conditions of Theorem 23.6 at small theta, and let S = mu/M_KK with M_KK = pi/l. A massive vector, with its eaten fifth component, contributes -(7/2) tr Q^2 per level, the trace over real components.

| generators | conditions (x = 0, x = l) | tower | SU(3) | SU(2) | U(1), GUT normalization |
|---|---|---|---|---|---|
| gluons | N, N | n | -21/2 | | |
| W_L | N, N | n | | -7 | |
| O = (2, 2), Y = +-1/2 | D, D | n | | -7/2 | -21/10 |
| R^+-, Y = +-1 | N, D | n - 1/2 | | | -21/5 |
| X = 3 + 3bar, Y = +-2/3 | N, D | n - 1/2 | -7/2 | | -28/5 |

The totals -21/2 for SU(2) and -14 for SU(3) are -(7/2) C_2 of Sp(2) and SU(4). The Higgs is the zero mode of A_5 along O, counted in the Standard Model coefficients, and A_5 has no other physical tower. If the fermions of E are in the bulk, they add F = 8 to each of the three couplings on the integer tower, since each Weyl zero mode has a Dirac partner per level, and if they sit on the walls then F = 0.

So above M_KK, with b = (41/10, -19/6, -7),

    alpha_i^-1(mu) = alpha_i^-1(M_Z) - (b_i/2 pi) log(mu/M_Z) - (1/2 pi) [ (B_i + F) I_n(S) + C_i I_h(S) ],        (3)

    B = (-21/10, -21/2, -21/2),   C = (-49/5, 0, -7/2),

where I_n(S) is the sum of log(S/n) over n <= S, and I_h(S) the sum of log(S/(n - 1/2)) over n - 1/2 <= S. For large S, I_n ~ S - (1/2) log(2 pi S) and I_h ~ S - (1/2) log 2, so I_h - I_n ~ (1/2) log S + (1/2) log pi.

**Proposition 26.4 (the bulk matter drops out).** The differences of the alpha_i^-1 in (3) are independent of F. So the scales at which couplings meet do not depend on whether the fermions of E are in the bulk or on the walls. Only the common value changes. ∎

**Proposition 26.5 (the left-right difference is logarithmic).** Define alpha_R^-1 = (5/3) alpha_1^-1 - (2/3) alpha_3^-1, the coupling of SU(2)_R in 1/g_Y^2 = 1/g_R^2 + (2/3)/g_4^2. Then, from (3),

    alpha_R^-1(mu) - alpha_2^-1(mu) = D_0 - (44/3)/(2 pi) log(mu/M_Z) + (7/pi) [I_h(S) - I_n(S)],        (4)

with D_0 = alpha_R^-1(M_Z) - alpha_2^-1(M_Z), and it has no power of S. With the inputs (59.0, 29.6, 8.47), D_0 = 63.09.

*Proof.* The zero modes give (5/3)(41/10) + (2/3)(7) + 19/6 = 44/3. The integer tower gives (5/3)(-21/10 + F) - (2/3)(-21/2 + F) - (-21/2 + F) = 14, and the half-integer tower gives (5/3)(-49/5) - (2/3)(-7/2) = -14. ∎

This is the differential running of orbifold models, in which the power law is common to a simple bulk group and the difference comes from the walls. Without the tower the difference vanishes at 5 x 10^13 GeV. With a tower, for S >> 1, it vanishes at

    log(mu_LR/M_Z) = (3/23) [ 2 pi D_0 + 7 log(pi) - 7 log(M_KK/M_Z) ].        (5)

So at M_KK = 321 GeV, the difference is 60.2 at the tower, and it vanishes near 2 x 10^24 GeV. It lies above the Planck mass, 1.2 x 10^19 GeV, for M_KK below about 2 x 10^8 GeV.

**Numerical result 26.6 (the meeting point; Python, one loop).** The two conditions alpha_1 = alpha_2 = alpha_3 in (3) have one solution in the scan from 1 TeV to 10^17 GeV:

    M_KK = 3.1 x 10^13 GeV,   mu_* = 2.2 x 10^14 GeV,   S = 7.0,

with alpha^-1 = 46.0 for F = 8 and 52.6 for F = 0. Shifts of 0.1 in alpha_1^-1 or alpha_2^-1 and of 0.15 in alpha_3^-1 move M_KK within 2.9 to 3.4 x 10^13 GeV. So the relation g_3^2 = g_2^2 = (5/3) g_Y^2 can hold at one scale in this parent, with no added thresholds, and that scale fixes the tower. In the universal bulk content of the steer note, item 9, the couplings do not meet at one point.

## The top against the matching scale

In this parent the Higgs is A_5, and the Yukawa coupling of a flat frequency-q channel comes from the five-dimensional gauge coupling. At small theta, m_q = q theta/l and M_W = sqrt(2) theta/l, so that y_q = (q/2) g at M_KK, and above M_KK the ratio has no separate running. This differs from item 11 of the steer note, where the Higgs is an independent bulk field, y_t runs with its own power law, and the matching sits at the crossings. Item 11 stays correct for that content.

**Numerical result 26.7 (Python, one loop, Standard Model below M_KK, tree-level matching at M_KK).** The running mass m_t solving y(m_t) v/sqrt(2) = m_t, from y(M_KK) = r g_2(M_KK):

| M_KK (GeV) | r = 1/2 (q = 1) | r = 1/sqrt(2) (top with the W tower) | r = 1 (pure q = 2) | r = 2/sqrt(3) | r = sqrt(2) |
|---|---|---|---|---|---|
| 321 | 63 | 87 | 119 | 136 | 164 |
| 10^4 | 74 | 101 | 136 | 153 | 179 |
| 10^9 | 99 | 129 | 163 | 176 | 195 |
| 3.1 x 10^13 | 114 | 143 | 172 | 183 | 197 |

The measured value in the same convention is 163 GeV. The ratio y_t/g_2 from the measured value equals sqrt(2) at 265 GeV, 2/sqrt(3) at 2.8 x 10^5 GeV and 1 at 1.3 x 10^9 GeV. Item 1 of Corollary 26.3, at finite angle, has m_2 = 2 M_W, so y/g = sqrt(2) as the tree-level relation at M_KK = 321 GeV. That is the first row, with a running mass of 164 GeV, under item 1 of Proposition 26.3b. These are orientations: comparing them with a pole mass needs thresholds and higher loops, which we have not computed.

## Two regimes

We state the outcome as two regimes of the flat parent, in the exact scope of (1) and (3): one interval, flat profiles, this gauge content, one loop, no wall kinetic terms, no wall potential.

**Low tower.** The one-loop potential has a natural minimum, at theta >= pi/4 and M_KK from 321 GeV upward, if frequency-2 fermions are present (Theorem 26.2). A top in the pure channel dominating the potential has m_t = 2 M_W at M_KK = 4 M_W, and the running gives 164 GeV, at the price of a massless coloured exotic; without that exotic, m_t = M_W, and the running gives 87 GeV. A further cost is in the couplings: by (4) the one-coupling relation fails at the tower. At 321 GeV, alpha_2^-1 = 30.2 and alpha_3^-1 = 9.9 need separate bulk couplings for Sp(2) and SU(4), and alpha_Y^-1 = 97.0 against alpha_2^-1 + (2/3) alpha_3^-1 = 36.8 needs a wall kinetic term for hypercharge of about 60 in alpha^-1. The weak angle is then an input, and M_W^2/M_Z^2 must be recomputed with those terms; the value 0.503 of the table is for one coupling. Whether a tower at this scale is allowed needs its couplings and an applicable experimental limit, which we have not analyzed.

**High tower.** The relation holds at mu_* = 2.2 x 10^14 GeV, with M_KK = 3.1 x 10^13 GeV, and the weak angle runs down from it. A top in the pure channel gives a running mass near 172 GeV, one with the W tower 143 GeV, and a universal frequency-1 top 114 GeV. The cost is in the vacuum: M_W l = sqrt(2) theta requires theta of about 6 x 10^-12, and by Theorem 26.2 and the Remark above the flat one-loop potential has no such minimum.

**Scope and escapes.** This is a statement about one family, and it leaves T13 open. It holds under the hypotheses above. The known escapes are:

- wall kinetic terms and separate bulk couplings at the low tower, which give up the relation as a prediction;
- a wall scalar with its own potential at the high tower, which moves the tuning to that potential;
- warping, where the running is logarithmic with a low tower: by the argument of Proposition 26.5 the left-right difference is unchanged by a tower with the bulk symmetry, and the meeting would need other content;
- other bulk content that treats SU(2)_L and SU(2)_R differently.

**Direction.** The computations that separate these are the wall mass for the exotic of Proposition 26.3b, which sets the top between M_W and 2 M_W, the neutral boundary problem with a wall kinetic term for hypercharge, at theta = pi/4, against the measured M_W^2/M_Z^2, and the frequency-2 multiplet in the real parent, with its contribution to (3).

## Numerical check

By Claude Opus 5.5, in Python (numpy, scipy), 3 Nov 2026, in a temporary directory, not kept.

- J(0) and J(1) by quadrature against the closed forms, to 15 digits. The function e(z) is nondecreasing and R(u) is increasing on grids, with R(0+) = 2.7001 at u = 10^-5 and R(1/4) = 2.88550.
- Theorem 26.2 on the grid described after its proof, with no failure. For n_1 = 0: n_2 = 2.75 has minima at 0.1527 and 1.4180 and a maximum at pi/4, and n_2 = 2.90 has the minimum at pi/4.
- Equations (3), (4): the difference computed directly from (3) agrees with (4) to 13 digits at S = 1000. For S above 10^8 the closed sums lose precision in floating point, so (5) is used there.
- Result 26.6 by nested root finding, over a scan of 1401 values of M_KK. The inputs are those of the steer note, with no thresholds at the top or W.
- Result 26.7: one-loop top Yukawa equation of the steer note with no tower, below M_KK.
- The asymptotics of I_n, I_h and their difference, against the closed sums at S = 10.3, 100.3, 1000.3, to about 10^-3 or better.
