# The type I' dilaton against the second scale of Proposition 1.5

Part of the 11D line ([README](README.md), [PLAN](PLAN.md)). Attempted by Claude Opus 5.5 on 4 November 2026, after the merge of branch 11D into master, to answer the last item left open in [09](09_dilaton_spectral_and_so32.md): whether the dilaton can be the second scale that [Proposition 1.5](01_interval_and_eleventh_dimension.md) requires. Sources read from the arXiv LaTeX: J. Polchinski and E. Witten, hep-th/9510169, section 3; O. Bergman, M. Gaberdiel and G. Lifschytz, hep-th/9711098, section 3. Numbers in Python: [tools/d11_needed_numbers.py](../tools/d11_needed_numbers.py). The Codex quota is spent, so no Terra referee is available.

## Outcome

1. **In the scope stated below, the dilaton gradient does not supply the second scale.** Along any path that opens the circle, its relative variation falls as 6/R^2 (Proposition 10.5). It enters as a power of alpha'/l^2, and that can matter only if the leading Casimir coefficient a_0 vanishes (Proposition 10.6).
2. **a_0 is now computed**, which was the open item of [01](01_interval_and_eleventh_dimension.md): 8 pi^2 a_0 = (3 zeta(5)/16)(4 n_f - 3 n_v - n_s - 5 n_g). For the corpus content it is positive, so at v = 0 the interval runs to large length, in the direction H wants. For one generation the count is 64 - 63 = 1, a near-cancellation.
3. **The dictionary of 06 to 09 needs three corrections** (Propositions 10.1 to 10.4). The map from angles to positions is nonlinear. The tower of Proposition 6.1 is a type I' winding state, so the length l of H and the type I' length are T-dual, and l -> infinity shrinks the type I' interval at fixed heterotic coupling. And the configuration 15 + 1 has a Romans mass in the bulk, which bounds length times coupling, so it has no eleven-dimensional regime.
4. **A scale-free action can still separate the window**, with a fixed small ratio instead of a vanishing one (Remark 10.7), which amends the last sentence of Proposition 1.5.

The direction: the second scale must enter through a bulk energy depending on the electroweak order parameter, through a cancellation a_0 = 0, or through a fixed shape with an exponentially small ratio, as in [lemma 29](../lemmas/29_window_on_the_disc_bundle.md). These targets are stated in Proposition 10.6 and Remark 10.7. None is derived.

## The dictionary against the source

Polchinski and Witten give, in conformal gauge, g = Omega^2(x) eta with Omega = C z^{-1/6}, e^phi = z^{-5/6}, and z = 3 C (B mu_8 - nu_0 x)/sqrt 2, with nu_0 = (N(x) - 8) mu_8 piecewise constant. This confirms the slope rule recalled in [08](08_orientifold_sign.md) and [09](09_dilaton_spectral_and_so32.md). We write z for this function up to its constant, with slope proportional to 8 - N(x), and x in [0, L].

**Proposition 10.1 (the map from angles to positions).** Put W(x) = int_0^x z^{-1/3} dy. By Polchinski-Witten, equations (mass) and (wilmap), the Wilson-line eigenvalue of a brane at x_k is lambda_k = W(x_k) / (2 W(L)), that is

    theta_k = pi lambda_k = (pi/2) W(x_k) / W(L),

and with L = 2 pi, in their units alpha' = 2, R^2 = (3/4) int z^{1/3} dx / (int z^{-1/3} dx)^2. So the linear dictionary x_k = (2L/pi) theta_k of Proposition 9.1 holds exactly when z is constant (8 + 8), and asymptotically for large R.

*Proof.* The string stretched from the wall to x_k has mass (1/(2 pi alpha')) int_0^{x_k} Omega^2 dx, since its area element is Omega^2 dx^0 dx^9, and Omega^2 is proportional to z^{-1/3}. A string winding from 0 to L and back has the mass 1/R. The ratio gives lambda_k. The formula for R is their equation (rad), reduced as in their equation (dil). ∎

Consequence for Proposition 9.1: its items 1 and 2 hold as statements about z in terms of the positions x_k. Reading them as a trace of a function of |D_F| needs the map above, which depends on the whole configuration, so the coupling function is a trace only implicitly. Item 3 changes accordingly.

**Proposition 10.2 (15 + 1 with infinite coupling at the far wall).** Take fifteen branes at x = 0 and one at x_t, with z(L) = 0, and put rho = (z(x_t)/z(0))^{2/3} in [0, 1]. Then, with alpha' = 2,

    theta_t = (pi/2) 8 (1 - rho) / (8 - rho),        R_*^2 = 14 (8 - rho^2) / (8 - rho)^2.

So R_* runs from sqrt 2, for the top's brane on the stack, to sqrt 7 / 2, for the top's brane on the far wall, which are the values (1/2)|n - 8|^{1/2} of Polchinski and Witten at n = 16 and 15. In units of the string length, R_*/sqrt(alpha') lies in [0.935, 1]. In this chamber, R >= R_*.

*Proof.* Integrate z^{1/3} and z^{-1/3} on the two segments, with slopes -7 and -8, and use z(x_t) = 8 (L - x_t). ∎ Python agrees at x_t/L = 0.5, with theta_t = 0.5859 and R^2 = 1.9652, against 0.7854 for the linear dictionary.

So infinite coupling sits at the *smallest* radius of the chamber, at the string scale, and large R is large B, the weakly coupled region. Polchinski and Witten say this directly: "When B is large, the coupling is small everywhere and the Type I' theory is weakly coupled; in this range the heterotic radius R is large".

**Proposition 10.3 (T-dual lengths).** The tower of Proposition 6.1, n/R, is a type I' winding tower: "a heterotic Kaluza-Klein state which is dual to a Type I' winding state" (Polchinski and Witten). With constant dilaton, the proper length L_p of the type I' interval and the radius satisfy L_p R_I = pi alpha' on the type I side, so the length l = pi R of H and the type I' length satisfy l L_p = pi^2 alpha'.

Hence the walls of H, at distance l, and the O8 planes, at distance L_p, coincide only at the self-dual length. In particular, the reading "the interval opens" in section 6b of [07](07_dualities_9_11.md) has to be restated: at fixed heterotic coupling, l -> infinity shrinks the type I' interval, and it decompactifies the SO(32) circle.

The endpoint of that limit is the ten-dimensional SO(32) theory (heterotic or type I). This is ten dimensions. The eleven-dimensional limit of the rank-17 moduli space is M-theory on an interval times a circle, with E8 x E8 at the walls, which by [Remark 8.3](08_orientifold_sign.md) is out of reach with colour-respecting moves. So label 11 of section 6b is not reached by theta -> 0, l -> infinity in the chamber 15 + 1.

**Proposition 10.4 (Romans mass, length and coupling).** On a segment with N branes to the left, the proper distance is linear in the inverse coupling:

    L_p = (C_L l_s / |8 - N|) (e^{-phi_1} - e^{-phi_2}),     C_L = 8 pi / 5,

with C_L from the standard normalization of the Romans mass, F_0 = (8 - N)/(2 pi l_s). So in the configuration 15 + 1, g(0) L_p <= C_L l_s / 7 up to the small change on the last segment. Near an infinite-coupling wall the coupling is g ~ C_L l_s / (|8 - N| s) at proper distance s, so g >> 1 needs s << l_s, and the eleven-dimensional Planck length g^{1/3} l_s exceeds s there. Therefore no region of the 15 + 1 background has both strong coupling and a length resolved in eleven-dimensional units.

*Proof.* Omega dx = C z^{-1/6} dz / (a C (8 - N)) integrates to a multiple of z^{5/6} = e^{-phi}. ∎ This is the known fact that massive type IIA has no eleven-dimensional lift, seen here in the variables of the dictionary. It holds wherever N != 8.

**The far-wall electroweak group.** Remark 8.3 places SU(2) x U(1) at the far wall at infinite coupling. By Bergman, Gaberdiel and Lifschytz, the states that become massless there are D0-branes at the wall, heterotic winding states. Combining their equations (windingmass) and (D0mass), with A = (B + 2 pi N')^{2/3}, b = B^{2/3} and N' = 8 - n,

    M_D0 R = (N'/2) b / (A - b),

which vanishes at B = 0, where R = R_*, and grows like R^2 in units alpha' = 2. So if the W and Z are these states, they are massless at the string-scale radius, with the tower fixed, and they become heavier as R grows: M_W l is not constant, and it rises with l. This is the fixed-tower path of the audit (its section 2.2), and on the rest of the branch the W moves the wrong way for hypothesis H. The dictionary can place the electroweak group at the far wall, or the opening of H on the circle of Proposition 6.1, and it cannot do both on one path.

## The test

**Proposition 10.5 (the gradient is a string-scale effect).** With L = 2 pi and alpha' = 2, for large R, R^2 ~ 3 B / (8 pi), and the relative variation of z across the interval is at most 16 pi / B ~ 6 / R^2. So along a joint family, R_eps ~ eps^{-alpha}, this variation falls as eps^{2 alpha}, the map of Proposition 10.1 linearizes, and the dilaton is constant in the limit.

*Proof.* z is B plus a function of size at most 8 L = 16 pi. Insert in the formula for R. ∎

So the corrections to any potential from the gradient are powers of alpha'/l^2. In the supersymmetric type I' background there is no potential at all: D8 positions, B and C are flat directions. A potential needs broken supersymmetry, as in the flat family of lemmas 23 and 24.

**The coefficient a_0.** Write 8 pi^2 l^4 V = 𝒜_0 + 3 F(2u) + (3/2) F((16/5) u) - n_f F(t), the potential of lemma 24 with its theta-independent part restored, where n_f counts twice the Dirac species at frequency one (lemma 26). The relative terms vanish at theta = 0, and each tower at theta = 0 is the half of a periodic circle tower:

    𝒜_0 = (3 zeta(5) / 16) (4 n_D' - 3 n_v - n_s - 5 n_g),

with n_D' = 2 N_D counting twice all Dirac species, of any frequency (for frequency zero the tower is nothing but the theta = 0 tower), n_v the five-dimensional gauge generators, n_s the real bulk scalars with integer towers, and n_g = 1 if the five-dimensional graviton is included. This assumes that the bulk vacuum energy and the wall tensions are tuned away, since they carry the terms of order Lambda^5 l and Lambda^4.

*Proof.* A real degree of freedom on a periodic circle of length 2 l has V = -3 zeta(5)/(4 pi^2 (2 l)^4), and the interval tower n >= 0 gives half of this, -3 zeta(5)/(128 pi^2 l^4). In the normalization of lemma 24 this is -(3/16) zeta(5) per real degree of freedom. For a fermion channel the sign is opposite, with four degrees of freedom per unit of n_f. The check: the shift to theta = pi/2 multiplies a tower by -15/16, so the difference is (31/16)(3/4) zeta(5) = 93 zeta(5)/64 = F(1), which is the value computed in Proposition 1.4. ∎

For three generations, with 24 Dirac species and the 21 generators of su(4) + su(2) + su(2), the bracket is 192 - 63 = 129 before gravity and bulk scalars. So a_0 > 0: at v = 0 the length runs to infinity, in the direction of H, and the first half of the modulus target of the audit, a r^{-p} with a > 0 and p = 4, is present. For one generation the bracket is 64 - 63 = 1. We record this count without a reading: equal numbers alone prove nothing, and including the graviton changes it to -4.

**Proposition 10.6 (when the gradient can be the second scale).** Let V = l^-4 [G_0(theta) + (alpha'/l^2) G_1(theta) + ...], theta = l m, with G_0(0) = a_0 and G_0 = a_0 + b theta^2 + ... near 0.

1. If a_0 != 0, then at small m the leading balance is the scale-free one of Proposition 1.5: alpha = 1 or a runaway. The term in alpha'/l^2 changes neither.
2. If a_0 = 0, G_1(0) = a_1 > 0 and b < 0, there is a minimum at l^4 = 3 a_1 alpha' / (|b| m^2), so alpha = 1/2: 1/l is the geometric mean of m and the string scale, up to constants, and m << 1/l << 1/l_s.
3. If supersymmetry is exact at theta = 0, then V = 0 at theta = 0 at all orders, a_1 = 0, and V = m^2 l^-2 H(theta, alpha'/l^2). Then l is fixed by H independently of m, or runs away, and no joint family results.

So in the scope of a potential analytic in alpha'/l^2 around the flat family, with corpus content, the gradient is not the second scale. Item 2 would need a Bose-Fermi balance at theta = 0 that is not a supersymmetry at theta = 0, with n_s = 129 real bulk scalars for three generations.

*Proof.* Differentiate. ∎

**The flat family with the angle tied.** For the top alone, n_f = 6: b is proportional to 54/5 - 6 > 0, and G > 0 on [0, pi/2] (Python: minimum 16.04, with 𝒜_0 = 25.08). So V has no stationary point with theta < pi/2, and l runs until theta leaves the fundamental domain of Proposition 7.1, where the top joins the tower. For a universal mass at three generations, n_f = 48, G changes sign and there is one stable stationary point, theta_* = 0.877, with M_W/m = 0.876 (Python). For a universal mass at one generation, n_f = 16, theta_* = 0.202 and M_W/m = 1.394 (Python), small because 𝒜_0 is small. Top-only content therefore has no vacuum in the window in this scope; adding a graviton does not change the classification.

**A localized channel.** For a channel with bulk mass M = -mu and c = mu l, the spectrum of lemma 9 gives the one-loop term

    8 pi^2 l^4 V_loc = -2 int_0^infinity x^3 log(1 + ((w + c)/(w - c)) exp(-2 w)) dx,    w = sqrt(x^2 + c^2),

from the secular function cosh(w) - (c/w) sinh(w). At c = 0 it is -(45/64) zeta(5) = -0.729, and for large c it is -4 c^3 exp(-2 c) up to corrections. In between it has a minimum, of depth -1.32, near c = 1 (Python, on a grid). So one fermion channel, by itself, prefers c near 1, where the light pair merges with the tower (lemma 9.7). A large c_*, which is what a separated window needs, must come from other fields, such as the bosonic tower of the scalar that gives mu.

## Other second scales

**Remark 10.7 (amendment of Proposition 1.5, last sentence).** On the scale-free path, m l is a fixed number. Proposition 1.5 says that on it the finite window never separates from the tower. That holds for theta_* of order one. If theta_* is small, or if m is exponentially small in a stabilized shape parameter, the ratio m/Delta is a small fixed number. On the disc bundle of [lemma 29](../lemmas/29_window_on_the_disc_bundle.md), fix M and let R grow: m = lambda_M / R and Delta = delta / R both tend to zero, with lambda_M / delta exponentially small, and the count at fixed energy has seven-dimensional growth. So a potential R^-4 G(M), with M stabilized at a large M_* and G(M_*) > 0, realizes the hierarchy of [lemma 30](../lemmas/30_massless_limit_as_a_joint_limit.md) with alpha = 1 and a fixed ratio, with no second scale. The cost is that R then has no vacuum at finite value. The physical point at finite v needs one more term, and the stabilization at large M_* is a target, since one fermion channel prefers c near 1.

**Remark 10.8 (what would work).** The ansatz V = a r^-p + b eps^2 r^q needs q > 0. On the flat family the angle is a holonomy (Corollary 22.2), which no local bulk operator sees: at large l its effect is the Casimir term, q = -2. So the electroweak order parameter must enter a local bulk energy: for q = 1, V = a/l^4 + b v^2 M^3 l gives l^5 proportional to 1/v^2, so alpha = 2/5, if the bulk energy vanishes at v = 0. That requires the order parameter to be a bulk field with a bulk vacuum energy, and it departs from D_F as a pure boundary condition. Whether the spectral action provides this is open. In the heat cutoff, the dependence on D_F is exponentially small at large l Lambda, by Poisson summation over the tower, so that action has no such term at this order.

## Corrections to the earlier files

- [09](09_dilaton_spectral_and_so32.md), Proposition 9.1 and its reading: subject to Proposition 10.1.
- [07](07_dualities_9_11.md), sections 4 and 6b: Proposition 7.2 stands as a statement on the circle; the reading "the interval opens" at label 11 is corrected by Proposition 10.3.
- [08](08_orientifold_sign.md), Remark 8.3 and its reading: the far-wall group is reached at R = R_*, with the tower at the string scale, by Propositions 10.2 and 10.4 and the section on the far wall. There is also a tension of labels: Proposition 8.1 pairs label 9 with O^+, and section 6b of 07 puts label 9 on a far O8^- wall. These are two different meanings of the label, the KO sign and the position of the top's brane.
- [06](06_main_point_heterotic_route.md), section 2: "9, 10, 11" mixes KO labels with metric dimensions. In the string web, nine dimensions is finite R, and R -> 0 is T-dual to R -> infinity, whereas in H the finite interior is labelled 10 and l -> 0 is labelled 9.
- [05](05_colour_family_exchange.md), Proposition 5.4: the conclusion is correct on rerun (Python, exact integers, all 192 configurations). The sentence "In every case S - N has d = 19 and d = 20 only" is wrong for the misaligned configurations, which also show d = 13 and d = 17. The sets of values of d differ in every configuration, and that is what the proof needs.

## Scope and escapes

Proposition 10.6 assumes a potential with a regular expansion in alpha'/l^2, around the flat family with its towers. It concerns the dilaton *gradient*. The following lie outside it: a dilaton potential from string tree level, in non-supersymmetric strings or with tadpoles, for which a term in positive powers of 1/g could grow with l at fixed v through the law of Proposition 10.4; a different frame relation between l and the four-dimensional Planck mass; wall-localized dynamics; and the other chambers of the moduli space, where 8 + 8 removes the Romans mass and E8 x E8 is available. The string-theory statements are read from the two sources for type I' and recalled for the moduli-space limits; only the first have been checked against the text. By AGENTS.md, a negative result needs an independent check by another model, which this one has not had from a referee of the usual kind.
