# 9 and 11 as limits of the modern spectral triple: the target, and a route through the heterotic strings

Part of the 11D line of research ([README](README.md), [PLAN](PLAN.md), task B). Attempted by Claude (Anthropic), 4 Nov 2026, prompted by two remarks in the steer of the same day: that SO(32) against E8 × E8 resembles non-chiral against chiral, and that the SO(32) of lemma 21 was mainly scalars, a way in which supersymmetry could be hidden in the finite geometry as scalar composites. Proposition 6.1 is proved; everything else is a proposal, and the string-theory facts used are recalled, not reread (marked). Referee pending.

## 1. The target

The modern spectral triple is the real even finite triple of KO-dimension six with order zero and order one, fermion doubling, dim H_F = 96 (three generations with ν_R), A_F = C + H + M_3(C), or its grand algebra M_2(H) + M_4(C), and D_F with Yukawa and Majorana blocks. The main point of the project asks for one family of spectral triples with towers, T_s, and three regimes, each described by the three records of canonical §1 (geometry, fermions, physics):

| regime | geometry | fermions | physics |
|---|---|---|---|
| finite v (label 10) | towerless window at the weak scale | the modern finite triple, with J, gamma, D_F exact on the window | the Standard Model |
| v -> 0 (label 11) | eleven resolved dimensions along a joint family (01) | chirality on walls or defects | massless W, Z with finite couplings |
| v -> infinity (label 9) | the interval collapses | vectorlike; KO-5 or KO-7 by the sign s of lemma 06 | colour and electromagnetism |

What exists: the exact window for D_F, J and gamma on an interval parent (lemma 22) and its circle form (lemma 25, Proposition 1.1); the joint family that opens the tower while keeping the window (Astra audit, 01); the grand algebra from the seven-dimensional parent X, conditionally (lemma 28); the KO parity of the odd endpoint (lemma 06, T2c); eleven-dimensional vacua with the Standard Model isometry (02, 03); placements of H_F in E8 (04, 05). What is missing: one family doing all three; the six internal dimensions resolved in the same family; and an action selecting the path (Proposition 1.5).

## 2. The heterotic web has the shape 9, 10, 11

**Referee note (GPT-6.1 Terra, 4 Nov 2026).** The nine-dimensional duality involves specified Wilson lines and radii; the finite-triple dictionary and field identification remain proposals. The cited primary papers were unavailable for direct checking. See the [referee report](../reviews/2026-11-04_terra_check_11d.md#files-06-and-07-recalled-dualities).

Recalled facts (Polchinski and Witten, hep-th/9510169; Hořava and Witten, hep-th/9510209 and hep-th/9603142; Bergman, Gaberdiel and Lifschytz, hep-th/9711098; to be checked before use):

- **9:** the heterotic strings on a circle. SO(32) and E8 × E8 are T-dual there, joined through the moduli space of Wilson lines; the theory is non-chiral, nine being odd. Its type I' form is an interval with two orientifold walls (O8) and sixteen D8-branes, whose positions are the Wilson-line eigenvalues.
- **10:** the two heterotic strings, both chiral, distinct.
- **11:** M-theory on an interval (Hořava-Witten), with an E8 multiplet on each wall, chiral at the walls; the length of the interval grows with the string coupling.

This is the pattern of hypothesis H: vectorlike at 9, chiral and KO-6 at 10, chiral walls at 11, with an interval whose two ends are the two sheets. The steer's remark places SO(32) at the non-chiral end and E8 × E8 at the chiral end; in this web the two meet at 9.

## 3. Dictionary (proposal)

| corpus | heterotic web |
|---|---|
| the two sheets of the finite geometry | the two walls of the interval (O8 planes in type I', E8 walls in Hořava-Witten) |
| D_F as a constant connection on the circle (lemma 25) | a Wilson line on the heterotic circle, T-dual to D8 positions on the interval |
| the chiral interval as the antiperiodic circle (Proposition 1.1) | the interval as the orbifold S^1/Z_2 of that circle |
| lemma 21: removing the top keeps 5/8 and 8/3 and leaves SO(30) x SO(2) ⊂ SO(32) | fifteen D8-branes at one wall and the sixteenth displaced: the gauge group on the D8-branes is SO(30) x U(1) |
| the 30 = (5, 3) + (5bar, 3bar): five light quarks in three colours | the Chan-Paton labels of the fifteen-brane stack, with images |
| the SO(30) adjoint, Λ^2(30), which contains the counts of squarks and sleptons (lemma 21) | open strings with both ends on the stack: bilinear in the Chan-Paton labels, so composite in exactly the steer's sense, and in the adjoint scalars of a theory with sixteen supercharges |
| the (30, 2) of SO(32) ⊃ SO(30) x SO(2), states that the top cannot form | strings stretched between the stack and the displaced brane, with masses set by the displacement |
| v -> 0 opens the eleventh dimension (Proposal 1.3) | strong coupling: the interval of Hořava-Witten grows |

## 4. Proposition 6.1 (the top channel as an SO(32) Wilson line)

**Referee note (GPT-6.1 Terra, 4 Nov 2026).** The momentum progressions agree; the SO(32) charged sector has 30 copies, and \(m=a/R\) is the light mass on \(0\leq a\leq1/2\). The field identification remains a proposal. See the [referee report](../reviews/2026-11-04_terra_check_11d.md#proposition-61-the-so32-wilson-line-spectrum).

**Statement.** On a circle of radius R, take the SO(32) Wilson line W = 1_30 ⊕ R(2 pi a) (rotation by the angle 2 pi a in the last two directions). The adjoint 496 decomposes under SO(30) x SO(2) as (435, 1)_0 + (1, 1)_0 + (30, 2), where (30, 2) = (30)_{+1} + (30)_{-1}; the Kaluza-Klein masses are n/R on the first two pieces and |n ± a|/R on (30)_{±1}, n in Z. With l = pi R and theta = pi a this is the spectrum (n pi ± theta)/l of a channel of lemma 22 (Theorem 22.1) and of the circle form of lemma 25, with mass parameter m = theta/l = a/R; so the top channel of lemma 22 and the SO(32)-charged states of this Wilson line have the same free spectrum when m_t = a/R.

**Proof.** The Wilson line commutes with SO(30) x SO(2) and acts on the vector 2 of SO(2) by e^{±2 pi i a} in the complex basis; a field of charge q on the circle with holonomy e^{2 pi i q a} has momenta (n + q a)/R. Substitution of l = pi R and theta = pi a. ∎

**Prior work (search of 4 Nov 2026).** The content of Proposition 6.1 is known. A field of charge q on a circle with holonomy e^{2 pi i q a} has momenta (n + q a)/R: the Hosotani mechanism (Y. Hosotani, Phys. Lett. B 126 (1983) 309), which also gives the fermion masses of gauge-Higgs unification, including top-driven models (for example arXiv:0806.0480). An SO(32) Wilson line with one nonzero eigenvalue breaks SO(32) to SO(30) x U(1) and is T-dual to fifteen D8-branes at one point and the sixteenth displaced (Bergman, Gaberdiel and Lifschytz, hep-th/9711098; Kaplunovsky, Sonnenschein, Theisen and Yankielowicz, hep-th/0108135; seen at abstract level). The equality with the channel spectrum of lemma 22 is the circle form of lemma 25. Not found: the assignment of the top to the displaced D8-brane and of the five light quarks in three colours to the Chan-Paton labels of the fifteen-brane stack. That assignment is the proposal of section 3, and it has a gap: in the heterotic string the (30, ±1) are gauge bosons and gauginos, while the top is a quark, so the two spectra belong to fields of different spin unless the composite reading of section 5 supplies the map.

This identifies spectra, which is all it does. The physical identification needs the fermion content (in the heterotic string the (30, 2) are vectors and gauginos), the chirality at 10, and the map from the Yukawa block to the Wilson line beyond the top channel.

## 5. Supersymmetry hidden as composite scalars (the steer's second remark)

In the type I' form the adjoint scalars of the D8 stack are open strings with two Chan-Paton ends, so they are bilinear in the labels that the dictionary assigns to the five light quarks in three colours: the composites of lemma 21 (the 15 diquarks and 25 mesons of five flavours recorded there, and the SO(30) adjoint containing the squark and slepton counts). The theory on the D8-branes has sixteen supercharges, which pair these adjoint scalars with gauge fields and gauginos. A finite spectral triple in which the scalars of the inner fluctuations are such bilinears would carry the supersymmetry in hidden form. The test is to compute the inner fluctuations of a finite triple whose algebra is the Chan-Paton algebra of the stack, and to compare them with Λ^2(30).

## 6. What would make this a theorem, and the first steps

**Referee note (GPT-6.1 Terra, 4 Nov 2026).** The proposed dictionary needs a physical construction. Proposition 1.5 allows flat directions; a second scale is a candidate for selecting a joint path, rather than a universal requirement. See the [wording audit](../reviews/2026-11-04_terra_check_11d.md#wording-audit-results-and-proposals).

1. **One family, three regimes.** Realize T_s as the type I' interval with D8-branes in the configuration 15 + 1, with the corpus parent (lemma 22) as its low-energy window: the window must reproduce the modern D_F, J and gamma (lemma 22 does this for any finite data), the tower must open along a joint family as the interval grows (strong coupling, 11), and the collapse must give the non-chiral nine-dimensional theory (9).
2. **The algebra.** The Chan-Paton algebras of orientifold stacks are of the types O(n), Sp(n), U(n); the Connes algebra C + H + M_3(C) has the form of stacks of one brane, two branes with a symplectic projection, and three branes. Decide whether the modern algebra is the Chan-Paton algebra of a stack configuration on the interval (for the colour factor, lemma 21 puts colour inside SO(30), on the same stack as the light flavours).
3. **The six dimensions and chirality.** Ten-dimensional chirality and the KO-6 class must come from the internal six dimensions (02: CP^2 x S^2 with fluxes, or a Calabi-Yau with an SU(4) bundle as in Proposal 5.5).
4. **The path.** Proposition 1.5 requires a second scale when the stationary angle is isolated; in the heterotic web the dilaton gradient of type I' (whose slope depends on the D8 positions) is a candidate; Proposition 9.1 of [09](09_dilaton_spectral_and_so32.md) writes it as a trace of a function of |D_F|.

## References for this file

Recalled, not reread: J. Polchinski and E. Witten, "Evidence for heterotic-type I string duality", hep-th/9510169; P. Hořava and E. Witten, hep-th/9510209 and hep-th/9603142; O. Bergman, M. Gaberdiel and G. Lifschytz, "String creation and heterotic-type I' duality", hep-th/9711098; L. Ibáñez, F. Marchesano and R. Rabadán, "Getting just the Standard Model at intersecting branes", hep-th/0105155, for stacks with symplectic projections.
