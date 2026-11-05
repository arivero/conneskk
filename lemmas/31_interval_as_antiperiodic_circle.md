# The interval of H as an eleventh dimension

*Lemma 31. Written as file 01 of the eleven-dimensional line (branch 11D, by another Claude session) and moved here on 4 November 2026 with its text unchanged; its proposals keep their labels, and the plan and the unfinished files of that line are in [historical/11D/](../historical/11D/README.md). Internal references to "file 0n" of that line mean the lemma with the same content: 01 is lemma 31, 02 is 32, 03 is 39, 04 is 33, 05 is 34, 06 is in historical/11D, 07 is 40, 08 is 35, 09 is 36, 10 is 37, 11 is 38.*

Part of the 11D line of research ([README](../historical/11D/README.md)). Propositions 1.1, 1.4 and 1.5 are proved here; Proposal 1.3 is a dictionary to be tested. The joint-limit family of the section of that name is from the Astra 6 audit of 3 Nov 2026 ([historical/reviews/2026-11-03_astra_audit_d11.md](../historical/reviews/2026-11-03_astra_audit_d11.md), §3 and §4), restated here in circle language. Attempted by Claude (Anthropic), 3 Nov 2026; checks in Python, [checks_11d.py](../historical/11D/checks_11d.py), sections F, F2 and H.

*Scope.* The unfolded circle is scalar, and even extensions of arbitrary smooth interval functions need not be smooth at the fixed points.

## Setting

Hypothesis H of [STRATEGY.md](../STRATEGY.md) reads the two sheets of the finite geometry as the minimal truncation of an interval I_l with opposite chiral boundary conditions, with l ~ 1/M_W. Its three regimes carry the labels 9, 10 and 11. These are KO labels. At the 11 endpoint (v -> 0, l -> infinity) the heat dimension is 4 + 1 = 5, since the finite factor F keeps heat dimension 0 for every v (canonical §2.1). To read 11 as a metric dimension, the KO-6 factor must itself be resolved into a six-dimensional space, which gives the count

    11 = 4 (spacetime) + 1 (the interval) + 6 (a space resolving F).

The files of this folder take the six-dimensional space to be B_6 = CP^2 x S^2, the base of Witten's spaces ([02](32_witten_spaces_hypercharge_quotient.md)), and study two ways of completing 4 + 6 to eleven dimensions ([03](../lemmas/39_branes_hypercharge_and_the_84.md)). This file treats the "1", and the path along which v -> 0 opens it.

## Proposition 1.1 (the chiral interval is the antiperiodic circle)

**Statement.** Let D_l act on H_l = L^2([0, l], C^2) as in lemma 05, eq. (8): D_l(L, R) = (R', -L'), with R(0) = 0 and L(l) = 0, grading Gamma = diag(1, -1) and the scalar functions C^infinity([0, l]). Let S_R be the circle of length 2l, that is of radius R = l/pi, with coordinate x in [-l, l] and antiperiodic functions u(x + 2l) = -u(x). The map

    (W(L, R))(x) = (L(|x|) + i sgn(x) R(|x|)) / sqrt 2

is a unitary H_l -> L^2_antiperiodic(S_R) with

1. W D_l W^* = -i d/dx on its antiperiodic domain;
2. W Gamma W^* = P, the reflection (Pu)(x) = u(-x);
3. W f W^* = multiplication by f(|x|), so the algebra goes to the reflection-even functions;
4. the walls x = 0 and x = l go to the two fixed points x = 0 and x = l ~ -l of the reflection.

Hence spec D_l = {(k + 1/2)/R : k in Z}, each eigenvalue simple, which is (9) of lemma 05, and the Connes-Lott mass of the minimal truncation is m = pi/(2l) = 1/(2R).

**Proof.** The inverse map is L(x) = (u(x) + u(-x))/sqrt 2, R(x) = (u(x) - u(-x))/(i sqrt 2) for x in [0, l], so W is a bijection, and |u(x)|^2 + |u(-x)|^2 = |L(x)|^2 + |R(x)|^2 gives unitarity. For H^1 data, u is continuous at 0 exactly when R(0) = 0, and u(l) + u(-l) = sqrt 2 L(l), so the antiperiodic matching u(-l) = -u(l) is the condition L(l) = 0. On x > 0, -i (L + iR)' = R' + i(-L'), the image of (R', -L') = D_l(L, R). On x < 0, u(x) = (L(-x) - i R(-x))/sqrt 2 and -i u'(x) = (R'(-x) - i(-L'(-x)))/sqrt 2, which is again the image of (R', -L'). Gamma(L, R) = (L, -R) maps to L(|x|) - i sgn(x) R(|x|) = u(-x). Items 3 and 4 are immediate. The antiperiodic spectrum of -i d/dx on a circle of length 2l is pi(2k + 1)/(2l) = (k + 1/2)/R. ∎

So the two sheets of H are the two fixed points of a reflection on a circle whose spinors are antiperiodic, and the grading of the finite geometry is that reflection. With finite data D_F supplied as in lemma 22, the parent unfolds to -i d/dx + D_F on the periodic circle of length 2l (lemma 25, Proposition 25.1), and the angle theta interpolates between that circle (theta = 0) and the antiperiodic circle of Proposition 1.1 (theta = pi/2): D_F is a constant connection, a Wilson line, and the wall angles theta_k = l mu_k (mu_k the eigenvalues of D_F) are its holonomy phases.

## The joint family: weak masses below a descending tower

At fixed l, the vector masses of lemma 23 vanish as theta -> 0 and also as theta -> pi/2, while the tower spacing pi/l stays fixed; vanishing masses alone open no dimension (audit §2.2). The audit gives a family in which they do.

**Proposition (Astra 6, audit §3; this is Theorem 30.1 of [lemma 30](30_massless_limit_as_a_joint_limit.md)).** Let D_F(epsilon) = epsilon D_* and l_epsilon = l_* epsilon^{-alpha}, 0 < alpha < 1, with wall data X = tan(l D_F) as in lemma 22. Then the exact window is W^* D W = epsilon D_*, the rest of the spectrum lies at |lambda| >= pi/l_epsilon - epsilon ||D_*||, the compression error is at most (2/3) l_*^2 ||D_*||^2 epsilon^{2(1-alpha)} ||a|| (Theorem 22.4, item 2), and for alpha < beta < 1 a cutoff E_epsilon = E_* epsilon^beta contains exactly the r = dim H_F finite states, while at every fixed E > 0 the number of states N_epsilon(E) grows like l_epsilon E, which is proportional to epsilon^{-alpha}.

In the circle language of lemma 25 (the periodic circle, on which D_F is a Wilson line; the window is its n = 0 mode) this reads: the radius R_epsilon = l_epsilon/pi goes to infinity, and the Wilson-line angles theta_epsilon = l_epsilon epsilon mu_k go to zero like epsilon^{1-alpha}. The hierarchy is

    m_weak ~ epsilon  <<  E_epsilon ~ epsilon^beta  <<  1/R_epsilon ~ epsilon^alpha  ->  0.

In the five-dimensional Yang-Mills toy of lemma 23 the vector poles along this family are M_W^2 = 2 m^2 (1 + O(theta^2)) and M_Z^2 = (16/5) m^2 (1 + O(theta^2)), so M_W^2/M_Z^2 -> 5/8 (audit §3.1, from Theorem 23.6).

*The count.* The parent space of lemma 22 is L^2([0, l]; C^2) ⊗ H_F, of fibre dimension 2r. By Theorem 22.1 its signed spectrum is (n pi +- theta_k)/l, n in Z, two progressions of spacing pi/l for each of the r/2 singular values, so N(E) = 2 r l E/pi + O(r), the constant of the audit (the scalar circle of Proposition 1.1 gives 2 E l/pi; with fibre H_F the count is 2 r l E/pi). The window, gap and compression statements follow from Theorems 22.1 and 22.4 as stated. (Python, section H: exact spectra for random singular values.)

The audit also gives a localized family (its §4): a bulk mass mu_epsilon = mu_* epsilon^alpha and mu l = (1 - alpha) log(1/epsilon) + c_0, with light mass m ~ 2 mu_* e^{-c_0} epsilon, gap ~ mu_* epsilon^alpha, and the exact tail identity e^{-2 kappa l} = (m/(mu + kappa))^2. It is Proposition 30.3 of [lemma 30](30_massless_limit_as_a_joint_limit.md), with its proof there; its table of roots is in section H of checks_11d.py (Python, bisection on tanh s = s/c and tan y = y/c).

## Proposal 1.3 (the circle of H as the M-theory circle)

Take the circle of Proposition 1.1 to be the eleventh direction of M-theory over a ten-dimensional type IIA background, so R = g_s l_s. Then, along the joint family:

| H | circle of Proposition 1.1 | M-theory / string side (recalled, to check) |
|---|---|---|
| v -> 0 along the joint family, label 11 | R -> infinity, Wilson-line angles -> 0, m_weak R -> 0 | strong coupling: D0-brane bound states of mass n/(g_s l_s) become light and are the momentum modes of the eleventh dimension (Witten 1995); the weak masses lie below this tower |
| v finite, label 10, two sheets | R finite, fixed points of a reflection | M-theory on an interval with two walls (Hořava-Witten); here with walls of opposite chirality |
| v -> infinity, label 9, sheets merge | R -> 0, antiperiodic spinors | a circle with antiperiodic fermions shrinking: bulk fermions get masses >= 1/(2R); compare type 0 strings, which have no bulk spacetime fermions (Bergman-Gaberdiel 1999), and the walls of opposite chirality of Fabinger-Hořava 2000 |

Each row matches a statement already in the corpus: the 11 endpoint needs the tower (canonical §2.1, lemma 05 Part 4), and at the 9 endpoint the bare interval keeps no light fermion, so light fermions must come from another sector (STRATEGY, T1 and T3). On the string side the same happens: the light fermions of a type 0 theory come from open strings on branes. The proposal therefore places the light fermions of the 9 endpoint on branes or walls, and [03](../lemmas/39_branes_hypercharge_and_the_84.md) develops a brane origin for them.

**Tests.**

1. Along the joint family m_weak/M_KK ~ epsilon^{1 - alpha} -> 0, so the weak scale is far below 1/(g_s l_s); the scale-free path of Proposition 1.5, with M_W R fixed, is the other possibility and keeps no finite window.
2. Gauge couplings. A five-dimensional gauge field with constant profile on the interval has g_4^{-2} = l/g_5^2 = pi R/g_5^2 (audit §7.2 for the general volume formula), so at fixed g_5 the four-dimensional couplings vanish as R -> infinity, and M_W = g v/2 could vanish through g. The limit sought keeps g finite, which needs g_5^2 ~ R, and this must be shown for the vectors in question before the masses are read as restoration of the symmetry.
3. The path must be selected by an action: Proposition 1.5 shows what the flat interval alone selects.

## Proposition 1.4 (the angle-dependent one-loop term at the vacuum angle)

**Statement.** Under the hypotheses of Theorem 9 of [lemma 24](24_commutative_parent.md) (flat interval, zero bulk masses, frequency-one fermions, the stated gauge towers and multiplicities, no wall potential), the angle-dependent part of the one-loop potential, taken relative to theta = 0 as in lemma 23, has its minimum at theta = pi/2 with value

    V(pi/2) - V(0) = - 93 zeta(5) n_f / (512 pi^2 l^4),

and near theta = 0 it is (3 zeta(3)/(16 pi^2)) (54/5 - n_f) theta^2/l^4 + o(theta^2). At theta = pi/2 the exact vector poles of lemma 23 give M_W = M_Z = 0, with the fermion at the tower scale m = pi/(2l).

**Proof.** In the notation of lemma 24, V = 𝒱/(8 pi^2 l^4), with F(0) = 0, and 𝒱(1) = -n_f F(1) since the gauge terms vanish at t = 1. With 1 + 1/sinh^2 x = coth^2 x and log coth x = 2 sum over odd k of e^{-2kx}/k,

    F(1) = 2 int_0^infinity x^3 log coth x dx = 4 sum_{k odd} (1/k) 3!/(2k)^4 = (3/2) sum_{k odd} k^{-5} = (3/2)(31/32) zeta(5) = 93 zeta(5)/64.

Near t = 0, 𝒱'(0) = (6 + 24/5 - n_f) J(0) with J(0) = int x^3/sinh^2 x dx = (3/2) zeta(3), the coefficient already given in lemma 23. Python: F(1) = 1.506786, J(0) = 1.803085, series against quadrature to 10^-6. ∎

**Reading.** The θ-independent Casimir energy of the towers, a_0/l^4, is not part of this potential and is not computed in lemmas 23 or 24; the direction in which l moves depends on the sign of a_0 - 93 zeta(5) n_f/(512 pi^2). The minimum over the angle is the point with massless W and Z at fixed l, which opens no dimension (lemma 23 already notes that it is not the physical point).

## Proposition 1.5 (a scale-free potential with an isolated stationary angle fixes M_W l)

**Statement.** Let V(l, theta) = l^{-4} G(theta) with G of class C^1, the form of every one-loop potential of a flat interval whose only scales are l and the wall angles (lemmas 23 and 24, with a_0 included in G).

1. If the angle is free, V is monotone in l at every fixed theta with G(theta) != 0. At the minimizing angle theta_min the length runs away: to l -> infinity if G(theta_min) > 0, to l -> 0 if G(theta_min) < 0. Stationary points exist only on the set G = G' = 0.
2. If the angle is tied to a fixed mass, theta = l m (as for X = tan(l M) in lemma 22), the stationary lengths satisfy theta G'(theta) = 4 G(theta) at theta = l m. So l = theta_*/m for a root theta_* that does not depend on m, and M_W l, M_Z l (functions of theta alone by Theorem 23.6) are the same at every m.

Hence, when the roots of theta G' - 4 G are isolated, a stationary branch has l = theta_*/m: the path l ~ 1/M_W of H's original statement, alpha = 1 in the scaling of the joint family (Remark 10.7 of [10](37_dilaton_and_second_scale.md) for a small fixed ratio). A root interval, as for G = theta^4 near 0, makes every alpha < 1 stationary and selects none. The joint family with alpha < 1 needs a second scale in the action: a bulk mass (the localized family, G(l m, l mu)), the cutoff of the spectral action (lemma 25, G(theta, l Lambda)), curvature, flux or a wall term.

**Proof.** d/dl [l^{-4} G(l m)] = l^{-5} (theta G'(theta) - 4 G(theta)) at theta = l m. For item 1, d/dl V = -4 l^{-5} G(theta) and d/dtheta V = l^{-4} G'(theta). ∎

*Amendment (4 Nov 2026).* The window can separate on the scale-free path, with a fixed small ratio, if the light mass is exponentially small in a stabilized shape parameter, and a_0 is now computed. See [10](37_dilaton_and_second_scale.md), Remark 10.7.

**Consequence for the modulus target of the audit (§7.1).** The audit proposes V = V_*(a r^{-p} + b epsilon^2 r^q) with a, b, p, q > 0, whose minimum r ~ epsilon^{-2/(p+q)} gives alpha = 2/(p + q) < 1 when p + q > 2. In the flat one-loop family the epsilon-dependent term near theta = 0 is (3 zeta(3)/(16 pi^2)) (54/5 - n_f) m^2/l^2, so q = -2, and with the Casimir term p = 4 the stationary point has l ~ 1/m, alpha = 1, in agreement with item 2. A term growing with l at fixed v, as the ansatz requires, is absent from the flat family and must come from one of the second scales listed above.

## What remains open here

- Whether the identification of Proposal 1.3 survives the gauge sector: lemmas 13, 14 and 25 tie M_W to the tower with model-dependent coefficients, which here become a relation between M_W, g_s and l_s, and test 2 above requires g_5^2 ~ R.
- The theta-independent Casimir coefficient a_0 of the flat family, which decides the runaway direction of Proposition 1.5, item 1.
- A potential with a second scale that selects alpha < 1: the localized family of the audit is the first candidate, with G(l m, l mu) computable from the exact secular equations of lemma 09.
- A fermion with both a fibre momentum and a base twist: on a nontrivial circle bundle (Witten spaces, file 02) the antiperiodic shift corresponds to a spin structure whose fibre circle does not lift the circle action. Which Witten spaces carry such a structure is an open item for the next job.

## Further proofs (Terra 6.1, 4 November 2026)

**Proposition 1.4 in full.**

Hypotheses: those of Theorem 9 of lemma 24, including n_f > 0 and its normalization. The result is relative to theta = 0 and leaves the theta-independent Casimir term open.

Let

    F(t) = int_0^infinity x^3 log(1 + t/sinh^2 x) dx,   t = sin^2 theta,

so that, by equation (22) of lemma 24, 𝒱(t) = 8 pi^2 l^4 V(theta) = 3 F(2t(1 - t)) + (3/2) F((16/5) t(1 - t)) - n_f F(t). For every x > 0 the integrand increases strictly with t, so F is strictly increasing, and F(0) = 0. The two gauge terms are nonnegative and vanish at t = 1, where their arguments vanish; the fermion term -n_f F(t) is strictly decreasing for n_f > 0. Hence t = 1 is the unique global minimum.

*Endpoint value.* At t = 1, 1 + 1/sinh^2 x = coth^2 x. With q = e^{-2x}, coth x = (1 + q)/(1 - q), so

    log coth x = log(1 + q) - log(1 - q) = 2 sum_{k >= 1, k odd} e^{-2kx}/k,     int_0^infinity x^3 e^{-2kx} dx = 3!/(2k)^4.

All terms are positive, so the series may be integrated term by term, and

    F(1) = 2 int_0^infinity x^3 log coth x dx = 4 sum_{k odd} (1/k) 3!/(2k)^4 = (3/2) sum_{k odd} k^{-5} = (3/2)(1 - 2^{-5}) zeta(5) = 93 zeta(5)/64.

Since 𝒱(0) = 0 and 𝒱(1) = -n_f F(1), division by 8 pi^2 l^4 gives the stated endpoint value V(pi/2) - V(0) = -93 zeta(5) n_f/(512 pi^2 l^4).

*Small-angle coefficient.* Differentiation under the integral at t = 0 is allowed because x^3/sinh^2 x is integrable on (0, infinity). With 1/sinh^2 x = 4 e^{-2x}/(1 - e^{-2x})^2 = 4 sum_{n >= 1} n e^{-2nx},

    F'(0) = int_0^infinity x^3/sinh^2 x dx = 4 sum_{n >= 1} n 3!/(2n)^4 = (3/2) sum_{n >= 1} n^{-3} = (3/2) zeta(3),

which is J(0) in the proof of Proposition 1.4. The two gauge arguments 2t(1 - t) and (16/5) t(1 - t) have derivatives 2 and 16/5 at t = 0, with prefactors 3 and 3/2, so

    𝒱'(0) = (3 * 2 + (3/2)(16/5) - n_f) F'(0) = (54/5 - n_f)(3/2) zeta(3).

With t = sin^2 theta = theta^2 + o(theta^2), V(theta) - V(0) = 𝒱'(0) theta^2/(8 pi^2 l^4) + o(theta^2) = (3 zeta(3)/(16 pi^2))(54/5 - n_f) theta^2/l^4 + o(theta^2), the claimed coefficient. The exact vector formulas of lemma 23 vanish at theta = pi/2, where the lowest fermion mass is pi/(2l).

**A root interval in Proposition 1.5.** If the roots of theta G' - 4 G are not isolated, a stationary family can have a varying angle with no second scale, as the following example shows; the derivative identities in the proof hold.

At fixed m > 0 put theta = l m. Then

    d/dl V(l, l m) = l^{-5} (theta G'(theta) - 4 G(theta)).

If a continuous stationary branch chooses an isolated positive root theta_*, then theta_* is constant along the branch and l = theta_*/m. A root interval gives a flat direction instead.

*Counterexample.* Let G(theta) = theta^4 on a neighbourhood 0 <= theta < delta, with a C^1 extension to the angle domain. There

    V(l, l m) = l^{-4} (l m)^4 = m^4

is independent of l. For any 0 < alpha < 1, the family m = epsilon, l = epsilon^{-alpha} has theta = l m = epsilon^{1 - alpha} < delta for all sufficiently small epsilon, so it is stationary, and l m -> 0. The vector mass formula of Theorem 23.6 gives M_W l ~ sqrt 2 l m -> 0. The potential leaves this path undetermined and does not dynamically select it. A smooth extension can also be chosen with G(theta) >= theta^4 on the rest of the fundamental interval; then V(l, l m) >= m^4, with equality on l m < delta, and the example is a flat family of minima.

*The specified flat one-loop determinant.* By Proposition 1.4, with a_0 the theta-independent Casimir coefficient,

    G(theta) = a_0 + c theta^2 + o(theta^2),    theta G'(theta) - 4 G(theta) = -4 a_0 - 2 c theta^2 + o(theta^2),

where c = (3 zeta(3)/(16 pi^2))(54/5 - n_f) is proportional to 54/5 - n_f (the expansion of G' follows from that of 𝒱', since 𝒱 is C^1 at t = 0). If c != 0, there is no sequence of positive stationary angles tending to zero, whether or not a_0 = 0: for a_0 != 0 the right side tends to -4 a_0, and for a_0 = 0 it equals -2 c theta^2 (1 + o(1)). In particular this covers every integer n_f under the displayed determinant. The tuned case c = 0 requires its higher-order term to be checked. The comparison with the audit's ansatz with q > 0, in the paragraph on the modulus target, is correct: the displayed quadratic contribution is l^{-4} c (l m)^2 = c m^2/l^2.

*Free angle.* For a free angle, d/dl V = -4 l^{-5} G(theta); a nonzero minimized G produces the stated runaway, and a zero minimum leaves the length flat. At an endpoint of a constrained angle interval, the stationarity condition on G' must be understood one-sided.

*Scope and direction.* The corrected fixed-angle result concerns isolated stationary roots of a scale-free C^1 potential. A flat modulus, a tuned higher-order potential, or additional dimensionful terms leave other families possible. A mechanism that selects a joint path with finite gauge couplings remains to be constructed.
