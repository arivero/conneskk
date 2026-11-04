# The type I' dilaton against the second scale of Proposition 1.5

Part of the 11D line ([README](README.md), [PLAN](PLAN.md)). Attempted by Claude Opus 5.5 on 4 November 2026, after the merge of branch 11D into master, to answer the last item left open in [09](09_dilaton_spectral_and_so32.md): whether the dilaton can be the second scale that [Proposition 1.5](01_interval_and_eleventh_dimension.md) requires. Sources read from the arXiv LaTeX: J. Polchinski and E. Witten, hep-th/9510169, section 3; O. Bergman, M. Gaberdiel and G. Lifschytz, hep-th/9711098, section 3. Numbers in Python: [tools/d11_needed_numbers.py](../tools/d11_needed_numbers.py). The Codex quota is spent, so no Terra referee is available. An independent reading by Claude Sonnet 5.5, with the error and amendments below, is in [the review](../reviews/2026-11-04_sonnet_check_11d_10_11.md). The amendments were rechecked by Claude Opus 5.5 before being applied, and the corrected text has not been read again.

**Correction (4 Nov 2026).** The first version counted 21 gauge generators with integer towers. Lemmas 23, 24 and 26 use sp(2) (+) su(4), with 25 generators: 16 with integer towers at theta = 0 and 9 with half-integer towers. The bracket for one generation is 41.3125, so the near-cancellation 64 - 63 stated in the first version came from the wrong count, and it is withdrawn. So is the small value theta_* = 0.202 that followed from it.

## Outcome

1. **In the scope stated below, the dilaton gradient does not supply the second scale.** Along any path that opens the circle, its relative variation falls as 6/R^2 (Proposition 10.5). It enters as a power of alpha'/l^2, and that can matter only if the leading Casimir coefficient a_0 vanishes (Proposition 10.6).
2. **a_0 is now computed**, which was the open item of [01](01_interval_and_eleventh_dimension.md): 8 pi^2 a_0 = (3 zeta(5)/16)(4 n_D' - 3 (n_i - (15/16) n_h) - n_s - 5 n_g), with n_i and n_h the generators with integer and half-integer towers at theta = 0. For the corpus content it is positive, so at v = 0 the interval runs to large length, in the direction H wants.
3. **The dictionary of 06 to 09 needs three corrections** (Propositions 10.1 to 10.4). The map from angles to positions is nonlinear. The tower of Proposition 6.1 is a type I' winding state, so the length l of H and the type I' length are T-dual, and l -> infinity shrinks the type I' interval at fixed heterotic coupling. And the configuration 15 + 1 has a Romans mass in the bulk, which bounds length times coupling, so the classical profile has no eleven-dimensional regime.
4. **A scale-free action can still separate the window**, with a fixed small ratio instead of a vanishing one, if the light mass is exponentially small in a stabilized shape parameter (Remark 10.7), which amends the last sentence of Proposition 1.5.

The direction: the second scale must enter through a bulk energy depending on the electroweak order parameter, through a cancellation a_0 = 0, or through a fixed shape with an exponentially small ratio, as in [lemma 29](../lemmas/29_window_on_the_disc_bundle.md). These targets are stated in Proposition 10.6 and Remark 10.7. None is derived.

## The dictionary against the source

Polchinski and Witten give, in conformal gauge, g = Omega^2(x) eta with Omega = C z^{-1/6}, e^phi = z^{-5/6}, and z = 3 C (B mu_8 - nu_0 x)/sqrt 2, with nu_0 = (N(x) - 8) mu_8 piecewise constant. This confirms the slope rule recalled in [08](08_orientifold_sign.md) and [09](09_dilaton_spectral_and_so32.md). We write z for this function up to its constant, normalized so that its slope is exactly 8 - N(x), which fixes the normalization in the formula for R below, with x in [0, L].

**Proposition 10.1 (the map from angles to positions).** Put W(x) = int_0^x z^{-1/3} dy. By Polchinski-Witten, equations (mass) and (wilmap), the Wilson-line eigenvalue of a brane at x_k is lambda_k = W(x_k) / (2 W(L)), that is

    theta_k = pi lambda_k = (pi/2) W(x_k) / W(L),

and with L = 2 pi, in their units alpha' = 2, R^2 = (3/4) int z^{1/3} dx / (int z^{-1/3} dx)^2. So the linear dictionary x_k = (2L/pi) theta_k of Proposition 9.1 holds exactly when z is constant (8 + 8), and asymptotically for large R.

*Proof.* The string stretched from the wall to x_k has mass (1/(2 pi alpha')) int_0^{x_k} Omega^2 dx, since its area element is Omega^2 dx^0 dx^9, and Omega^2 is proportional to z^{-1/3}. A string winding from 0 to L and back has the mass 1/R. The ratio gives lambda_k. The formula for R is their equation (rad), reduced as in their equation (dil). ∎

Consequence for Proposition 9.1: its items 1 and 2 hold as statements about z in terms of the positions x_k. Reading them as a trace of a function of |D_F| needs the map above, which depends on the whole configuration, so the coupling function is a trace only implicitly. Item 3 changes accordingly.

**Proposition 10.2 (15 + 1 with infinite coupling at the far wall).** Take fifteen branes at x = 0 and one at x_t, with z(L) = 0, and put rho = (z(x_t)/z(0))^{2/3} in [0, 1]. Then, with alpha' = 2,

    theta_t = (pi/2) 8 (1 - rho) / (8 - rho),        R_*^2 = 14 (8 - rho^2) / (8 - rho)^2.

So R_* runs from sqrt 2, for the top's brane on the stack, to sqrt 7 / 2, for the top's brane on the far wall, which are the values (1/2)|n - 8|^{1/2} of Polchinski and Witten at n = 16 and 15. In units of the string length, R_*/sqrt(alpha') lies in [0.935, 1]. In this chamber, R >= R_*.

*Proof.* Integrate z^{1/3} and z^{-1/3} on the two segments, with slopes -7 and -8, and use z(x_t) = 8 (L - x_t). ∎ Python agrees at x_t/L = 0.5, with theta_t = 0.5859 and R^2 = 1.9652, against 0.7854 for the linear dictionary.

So infinite coupling sits at the *smallest* radius of the chamber, at the string scale, and large R is large B, the weakly coupled region. Polchinski and Witten say this directly: "When B is large, the coupling e^{phi(x^9)} is small everywhere and the Type I' theory is weakly coupled; in this range the heterotic radius R is large".

**Proposition 10.3 (T-dual lengths).** The tower of Proposition 6.1, n/R, is a type I' winding tower: "a heterotic Kaluza-Klein state which is dual to a Type I' winding state" (Polchinski and Witten). With constant dilaton, the proper length L_p of the type I' interval and the radius satisfy L_p R_I = pi alpha' on the type I side, with alpha' that of type I'. So with l = pi R_I, measured in the type I' metric, l L_p = pi^2 alpha'. For the heterotic radius in the heterotic metric, l L_p = pi^2 alpha' sqrt(lambda_h), by Bergman, Gaberdiel and Lifschytz, with lambda_h the heterotic coupling.

Hence the walls of H, at distance l, and the O8 planes, at distance L_p, coincide only at the self-dual length. In particular, the reading "the interval opens" in section 6b of [07](07_dualities_9_11.md) has to be restated: at fixed heterotic coupling, l -> infinity shrinks the type I' interval, and it decompactifies the SO(32) circle.

The endpoint of that limit is the ten-dimensional SO(32) theory (heterotic or type I), since at fixed lambda_h the type I' coupling falls as 1/(sqrt(lambda_h) R_h). *Recalled, and supported in the two sources only by remarks of Bergman, Gaberdiel and Lifschytz at the constant-dilaton point:* the eleven-dimensional limit of the rank-17 moduli space is M-theory on an interval times a circle, with E8 x E8 at the walls, which by [Remark 8.3](08_orientifold_sign.md) is out of reach with colour-respecting moves. If so, label 11 of section 6b is not reached by theta -> 0, l -> infinity in the chamber 15 + 1.

**Proposition 10.4 (Romans mass, length and coupling).** On a segment with N branes to the left, the proper distance is linear in the inverse coupling:

    L_p = (C_L l_s / |8 - N|) (e^{-phi_1} - e^{-phi_2}),     C_L = 8 pi / 5,

with C_L from the standard normalization of the Romans mass, F_0 = (8 - N)/(2 pi l_s). So in the configuration 15 + 1, g(0) L_p <= C_L l_s / 7 for the total length. Near an infinite-coupling wall the coupling is g = C_L l_s / (|8 - N| s) at proper distance s, and the region g >= g_0 has length (3/4) (C_L / |8 - N|) g_0^{-4/3} in eleven-dimensional Planck units, which is 0.54 g_0^{-4/3} for N = 15. Therefore no region of the classical 15 + 1 background has both strong coupling and a length resolved in eleven-dimensional units.

*Proof.* Omega dx = C z^{-1/6} dz / (a C (8 - N)) integrates to a multiple of z^{5/6} = e^{-phi}. ∎ This agrees with Bergman, Gaberdiel and Lifschytz, who conclude from the D0-brane bound states that they "expect neither to be applicable to the N != 0 backgrounds", meaning an M-theory interpretation or a matrix theory, and that "only the combination of eight D8-branes and an orientifold plane is known to arise in M-theory". Here their N is 8 - N. It holds wherever N != 8. The scope is the classical profile, which is not controlled where g is of order one, so this is a statement about the extrapolated background.

**The far-wall electroweak group.** Remark 8.3 places SU(2) x U(1) at the far wall at infinite coupling. By Bergman, Gaberdiel and Lifschytz, the states that become massless there are D0-branes at the wall, heterotic winding states. Let n be the number of branes at the strong wall, here n = 1 with the top's brane there, placed at their x^9 = 0 by reflecting the interval. Combining their equations (windingmass) and (D0mass), with N' = 8 - n, A = (B + 2 pi N')^{2/3} and b = B^{2/3},

    M_D0 R = (N'/2) b / (A - b) = R^2 - R_*^2    (alpha' = 2),

which vanishes at B = 0, where R = R_*, and grows like R^2. Only W^+ and W^- can be such states: a neutral Z is a Cartan combination, and the rank of a nine-dimensional theory with sixteen supercharges is fixed, so no massive neutral vector arises this way. So in the chamber 15 + 1 with the top's brane on the far wall, if the W^+- are these D0 states, they are massless at the string-scale radius, with the tower fixed, and they become heavier as R grows: M_W l rises with l. This is the fixed-tower path of the audit (its section 2.2), and away from it the W moves the wrong way for hypothesis H. So on one path, in this scope, the dictionary can place the electroweak group at the far wall, or the opening of H on the circle of Proposition 6.1, but not both. Escapes: other chambers; the W as a Wilson-line string between D8-branes, as in lemma 23; the top's brane in the bulk, with the far wall giving E_1.

## The test

**Proposition 10.5 (the gradient is a string-scale effect).** With L = 2 pi and alpha' = 2, for large R, R^2 ~ 3 B / (8 pi), and the relative variation of z across the interval is at most 16 pi / B ~ 6 / R^2. So along a joint family, R_eps ~ eps^{-alpha}, this variation falls as eps^{2 alpha}, the map of Proposition 10.1 linearizes, and the dilaton is constant in the limit.

*Proof.* z is B plus a function of size at most 8 L = 16 pi. Insert in the formula for R. ∎

So the corrections to any potential from the gradient are powers of alpha'/l^2. In the supersymmetric type I' background there is no potential at all: D8 positions, B and C are flat directions. A potential needs broken supersymmetry, as in the flat family of lemmas 23 and 24.

**The coefficient a_0.** Write 8 pi^2 l^4 V = A_0 + 3 F(2u) + (3/2) F((16/5) u) - n_f F(t), the potential of lemma 24 with its theta-independent part A_0 restored, where n_f counts twice the Dirac species at frequency one (lemma 26). The relative terms vanish at theta = 0, and each tower at theta = 0 is half of a circle tower, periodic or antiperiodic:

    A_0 = (3 zeta(5) / 16) (4 n_D' - 3 (n_i - (15/16) n_h) - n_s - 5 n_g),

with n_D' = 2 N_D counting twice all Dirac species, of any frequency (for frequency zero the tower is the theta = 0 tower), n_i and n_h the five-dimensional gauge generators with integer and half-integer towers at theta = 0, n_s the real bulk scalars with integer towers, and n_g = 1 if the five-dimensional graviton is included. This assumes that the bulk vacuum energy and the wall tensions are tuned away, since they carry the terms of order Lambda^5 l and Lambda^4.

*Proof.* A real degree of freedom on a periodic circle of length 2 l has V = -3 zeta(5)/(4 pi^2 (2 l)^4), and the interval tower n >= 0 gives half of this, -3 zeta(5)/(128 pi^2 l^4). In the normalization of lemma 24 this is -(3/16) zeta(5) per real degree of freedom. A half-integer tower has the factor -15/16 relative to an integer one, so a generator with mixed conditions contributes +3 (15/16) (3/16) zeta(5). For a fermion channel the sign is opposite, with four degrees of freedom per unit of n_f. The check: the shift to theta = pi/2 multiplies a tower by -15/16, so the difference is (31/16)(3/4) zeta(5) = 93 zeta(5)/64 = F(1), which is the value computed in Proposition 1.4. ∎

In lemmas 23, 24 and 26 the gauge field is valued in sp(2) (+) su(4), with 25 generators. At theta = 0, sixteen have integer towers: 8 gluons, 3 W_L, 1 hypercharge combination with Neumann conditions at both walls, and the 4 odd generators O with Dirichlet conditions at both, whose interval components are the Higgs quaternion. Nine have mixed conditions and half-integer towers: 2 R^+-, 6 X and 1 orthogonal neutral direction. So n_i - (15/16) n_h = 121/16. For three generations, with 24 Dirac species, the bracket is 192 - 22.6875 = 169.3125 before gravity and bulk scalars, and A_0 = 32.92. So a_0 > 0: at v = 0 the length runs to infinity, in the direction of H, and the first half of the modulus target of the audit, a r^{-p} with a > 0 and p = 4, is present. For one generation the bracket is 41.3125.

**Proposition 10.6 (when the gradient can be the second scale).** Let V = l^-4 [G_0(theta) + (alpha'/l^2) G_1(theta) + ...], theta = l m, with G_0(0) = a_0 and G_0 = a_0 + b theta^2 + ... near 0.

1. If a_0 != 0, then at small m the leading balance is the scale-free one of Proposition 1.5: alpha = 1 or a runaway. The term in alpha'/l^2 changes neither.
2. If a_0 = 0, G_1(0) = a_1 > 0 and b < 0, there is a minimum at l^4 = 3 a_1 alpha' / (|b| m^2), so alpha = 1/2: 1/l is the geometric mean of m and the string scale, up to constants, and m << 1/l << 1/l_s.
3. If supersymmetry is exact at theta = 0, then V = 0 at theta = 0 at all orders, a_1 = 0, and V = m^2 l^-2 H(theta, alpha'/l^2). Then l is fixed by H independently of m, or runs away, and no joint family results, unless the stationarity condition has a root interval (a flat direction), as in the counterexample to the universal form of Proposition 1.5.

So in the scope of a potential analytic in alpha'/l^2 around the flat family, with corpus content, the gradient is not the second scale. Item 2 would need a Bose-Fermi balance at theta = 0 that is not a supersymmetry at theta = 0, with about 169 further real bosonic degrees of freedom for three generations.

*Proof.* Items 1 and 2: differentiate; in item 2, V = b m^2/l^2 + a_1 alpha'/l^6 has V'' = 8 |b| m^2/l^4 > 0 at the stationary point. Item 3: V is even in theta and vanishes at theta = 0 for every l, so V = theta^2 l^-4 H = m^2 l^-2 H. Stationarity is -2 H + theta H_theta - 2 s H_s = 0 with s = alpha'/l^2, which at small m reduces to an equation independent of m, or has no root. ∎

**The flat family with the angle tied.** For the top alone, n_f = 6: b is proportional to 54/5 - 6 > 0, and G > 0 on [0, pi/2] (Python: minimum 23.88, with A_0 = 32.92). So V has no stationary point with theta < pi/2, and l runs until theta leaves the fundamental domain of Proposition 7.1, where the top joins the tower; the periodically continued potential has stationary points only far outside the window, near theta = 8.2. For a universal mass at three generations, n_f = 48, G changes sign and there is one stable stationary point, theta_* = 1.009, with M_W/m = 0.685. For a universal mass at one generation, n_f = 16, theta_* = 1.031, with M_W/m = 0.653 (Python). Top-only content therefore has no vacuum in the window in this scope, and adding a graviton does not change the classification. The stationary angles are of order one, so these vacua do not separate the window.

**A localized channel.** For a channel with bulk mass M = -mu and c = mu l, the spectrum of lemma 9 gives the one-loop term

    8 pi^2 l^4 V_loc = -2 int_0^infinity x^3 log(1 + ((w + c)/(w - c)) exp(-2 w)) dx,    w = sqrt(x^2 + c^2),

from the secular function cosh(w) - (c/w) sinh(w). At c = 0 it is -(45/64) zeta(5) = -0.729, and for large c it is -4 c^3 exp(-2 c) up to corrections. Corrections at large c are of relative order 1/c. In between it has a minimum, of depth -1.3246, at c = 1 to numerical precision (Python, mpmath). This concerns the interaction term alone: the bulk term, -(4/15) c^5 in dimensional regularization, and the wall term are dropped as renormalizations of the bulk energy and wall tension, and with the bulk term included the minimum disappears. So the interaction term of one fermion channel prefers c = 1, where the light pair merges with the tower (lemma 9.7). A large c_*, which is what a separated window needs, must come from other fields, such as the bosonic tower of the scalar that gives mu.

## Other second scales

**Remark 10.7 (amendment of Proposition 1.5, last sentence).** On the scale-free path, m l is a fixed number. Proposition 1.5 says that on it the finite window never separates from the tower. That holds for theta_* of order one, which is what the flat family gives above. If m is exponentially small in a stabilized shape parameter, the ratio m/Delta is a small fixed number. On the disc bundle of [lemma 29](../lemmas/29_window_on_the_disc_bundle.md), fix M and let R grow: m = lambda_M / R and Delta = delta / R both tend to zero, with lambda_M / delta exponentially small, and the count at fixed energy has seven-dimensional growth. So a potential R^-4 G(M), with M stabilized at a large M_* and G(M_*) > 0, gives the hierarchy of [lemma 30](../lemmas/30_massless_limit_as_a_joint_limit.md) with alpha = 1 and the fixed ratio lambda_{M_*}/delta, with no second scale; in lemma 30 the ratio tends to zero. The cost is that R then has no vacuum at finite value. The physical point at finite v needs one more term, and the stabilization at large M_* is a target, since the interaction term of one fermion channel prefers c = 1.

**Remark 10.8 (a bulk energy).** The ansatz V = a r^-p + b eps^2 r^q, with a > 0, has a minimum exactly when p + q > 0 and q b > 0, and then alpha = 2/(p + q), so alpha < 1 needs p + q > 2: for p = 4, q > -2 with q != 0. On the flat family the angle is a holonomy (Corollary 22.2), which no local bulk operator sees: at large l its effect is the Casimir term, q = -2, the borderline case alpha = 1. So a term falling more slowly than m^2/l^2 must come from elsewhere, and the natural place is a local bulk energy in the electroweak order parameter: for q = 1, V = a/l^4 + b v^2 M^3 l gives l^5 proportional to 1/v^2, so alpha = 2/5, if the bulk energy vanishes at v = 0. That requires the order parameter to be a bulk field with a bulk vacuum energy, and it departs from D_F as a pure boundary condition. Whether the spectral action provides this is open. In the heat cutoff, the dependence of the potential on D_F is exponentially small at large l Lambda, by Poisson summation over the tower, of relative size 4 exp(-(l Lambda)^2), so that action has no such term at this order. The factor (3 - d_eff)/2 of lemma 25 multiplies the term quadratic in the gauge field, a different term.

## Corrections to the earlier files

- [09](09_dilaton_spectral_and_so32.md), Proposition 9.1 and its reading: subject to Proposition 10.1.
- [07](07_dualities_9_11.md), sections 4 and 6b: Proposition 7.2 stands as a statement on the circle; the reading "at distance proportional to a" in section 4 is corrected by Proposition 10.1, and the reading "the interval opens" at label 11 by Proposition 10.3.
- [08](08_orientifold_sign.md), Remark 8.3 and its reading: the far-wall group is reached at R = R_*, with the tower at the string scale, by Propositions 10.2 and 10.4 and the section on the far wall. There is also a tension of labels: Proposition 8.1 pairs label 9 with O^+, and section 6b of 07 puts label 9 on a far O8^- wall. These are two different meanings of the label, the KO sign and the position of the top's brane.
- [06](06_main_point_heterotic_route.md), section 2: "9, 10, 11" mixes KO labels with metric dimensions. In the string web, nine dimensions is finite R, and R -> 0 is T-dual to R -> infinity, whereas in H the finite interior is labelled 10 and l -> 0 is labelled 9.
- [05](05_colour_family_exchange.md), Proposition 5.4: the conclusion is correct on rerun (Python, exact integers, all 192 configurations). The sentence "In every case S - N has d = 19 and d = 20 only, while S - T has d = 16 on the neutrino roots of one slot and d = 22 on those of the two others" is wrong: S - N has only these values in 48 of the 192 configurations, and the other 144 show {13, 17, 19, 20}; the statement on S - T fails in 96 configurations, with the pattern 16, 16, 22. The values of d differ in every configuration, and that is what the proof needs.

## Scope and escapes

Proposition 10.6 assumes a potential with a regular expansion in alpha'/l^2, around the flat family with its towers. It concerns the dilaton *gradient*. The following lie outside it: a dilaton potential from string tree level, in non-supersymmetric strings or with tadpoles, for which a term in positive powers of 1/g could grow with l at fixed v through the law of Proposition 10.4; a different frame relation between l and the four-dimensional Planck mass; wall-localized dynamics; and the other chambers of the moduli space, where 8 + 8 removes the Romans mass and E8 x E8 is available. The string-theory statements are read from the two sources for type I' and recalled for the moduli-space limits; only the first have been checked against the text. By AGENTS.md, a negative result needs an independent check by another model. This one has had a reading by Claude Sonnet 5.5, which found the generator count above, and no further reading after the corrections.
