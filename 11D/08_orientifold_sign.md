# The sign of lemma 06 as an orientifold type, and E8 walls from the configuration 15 + 1

Part of the 11D line of research ([README](README.md), [PLAN](PLAN.md), task C, next step of 07). Attempted by Claude (Anthropic), 4 Nov 2026. Proposition 8.1 is proved (it adds a commutant statement to lemma 06); Proposition 8.2 is proved from Proposition 7.1; Remark 8.3 rests on recalled string-theory rules and on the dictionary of 06; readings are proposals. Refereed by GPT-6.1 Terra and checked a second time by Claude Sonnet 5.5 (reviews/2026-11-04_terra_check_11d.md, reviews/2026-11-04_sonnet_second_check_11d.md).

## 1. Setting

In type I' the two ends of the interval are orientifold planes. A stack of n Chan-Paton labels (k D8-branes with their images, n = 2k) on an orientifold plane of type O^- carries SO(n), and on one of type O^+ carries USp(n) (recalled; the physical O8 planes of the SO(32) web are O8^-). [Lemma 06](../lemmas/06_vectorlike_odd_factorization.md) factors a KO-6 finite triple into an odd one through a grading-reversing unitary involution U, commuting with the algebra and with D, with U J = s J U; s = −1 gives KO-5 (label 9) and s = +1 gives KO-7 (label 11), and the antiunitary j induced on H_+ satisfies j^2 = s and commutes with d^2 = D^2|_{H_+} (lemma 06, proof of Result 2 and the check of the electrodynamics data). STRATEGY T2c: with a realistic seesaw sector only s = +1 occurs.

## 2. Proposition 8.1 (the factorization sign fixes orthogonal or symplectic symmetry)

**Referee note (GPT-6.1 Terra, 4 Nov 2026).** The antiunitary commutants are independently checked. They need not preserve \(d\) or the remaining data, and the Chan-Paton identification is a proposal. See the [referee report](../reviews/2026-11-04_terra_check_11d.md#proposition-81-antiunitary-commutants).

**Statement.** Let E be an eigenspace of d^2 in H_+, of dimension n. The unitaries of E that commute with j form O(n) if s = +1, and USp(n) if s = −1, in which case n is even.

**Proof.** j preserves E because it commutes with d^2. An antiunitary with j^2 = +1 is a real structure: E = E_R ⊗ C with E_R its fixed points, and a unitary commutes with j exactly when it preserves E_R, which gives O(n). An antiunitary with j^2 = −1 is a quaternionic structure: E is a right H-module of quaternionic dimension n/2, and the unitaries commuting with j form USp(n). ∎

The even dimension for s = −1 is lemma 06's own statement (Kramers degeneracy of the singular values). The proposition adds the symmetry group.

**Reading (proposal).** The groups are those of Chan-Paton labels on an orientifold plane: s = +1 with O^- (SO), s = −1 with O^+ (USp). So the two odd factorizations of the modern triple, which carry the labels 11 and 9, have the form of the two kinds of orientifold planes. The seesaw sector selects s = +1 (T2c), which is the O^- type of the SO(32) web used in 06 and 07: the physical neutrino sector and the type I' walls of the dictionary agree in type. Two refinements from the second check: the symmetries of the pair (j, d) are smaller, O(n_+) x O(n_-) for s = +1 and U(n/2) for s = -1, since for s = -1 the antiunitary j swaps the +-mu eigenspaces of d; and there is a tension of labels, since here label 9 goes with O^+ while section 6b of [07](07_dualities_9_11.md) puts label 9 on a far O8^- wall (the two are the KO sign and the position of the top's brane, see [10](10_dilaton_and_second_scale.md)).

## 3. Proposition 8.2 (wall channels come with doubled multiplicity)

**Referee note (GPT-6.1 Terra, 4 Nov 2026).** The stated count is for one signed eigenvalue. The lowest \(|D|\) multiplicity is \(2k\) in the interior and at zero, and \(4k\) at \(\pi/2\); interpreting the signed count as Chan-Paton labels requires further data. See the [referee report](../reviews/2026-11-04_terra_check_11d.md#proposition-82-endpoint-channel-multiplicities).

**Statement.** In the parent of lemma 22, k channels at a common angle θ contribute, at the eigenvalue θ/l of the window, an eigenspace of dimension k if 0 < θ < pi/2 and of dimension 2k at the ends θ = 0 and θ = pi/2.

**Proof.** By Proposition 7.1 each channel has the spectrum {(n pi ± θ)/l}; the value θ/l occurs once (n = 0, sign +) for 0 < θ < pi/2, and twice at the ends: at θ = 0 as the zero mode of multiplicity two, at θ = pi/2 as (0 + pi/2)/l = (pi − pi/2)/l. ∎

**Reading (proposal).** k D8-branes in the bulk carry k Chan-Paton labels and k D8-branes on an orientifold plane carry 2k, with their images; the parent reproduces this count, with the ends of the angle interval as the walls. With Proposition 8.1, a stack of channels at a wall has a symmetry of type SO(2k) or USp(2k), as a stack of D8-branes on an O8^- or O8^+ plane. The rank-reduced nine-dimensional theory with one O8^- and one O8^+ (duality 3 of file 07) would then be a parent whose two walls carry opposite signs s: one sheet of type 11 and the other of type 9.

## 4. Remark 8.3 (E8 walls from 15 + 1; conditional)

*Correction (4 Nov 2026).* The far-wall group is reached at the string-scale radius R = R_*, with the tower fixed, and only its charged states are D0-branes. See [10](10_dilaton_and_second_scale.md).

**Referee note (GPT-6.1 Terra, 4 Nov 2026).** The brane and slope arithmetic is independently checked conditional on the recalled rule. Wall enhancement requires tuning \(z=0\); for \(7+7\) the two bulk positions must sum to \(L\). The \(E_2\) identification with the physical electroweak sector needs further data. The cited primary sources were unavailable to the referee; the slope rule and the E_{n+1} table were confirmed against Polchinski-Witten and Bergman-Gaberdiel-Lifschytz in the second check. See the [referee report](../reviews/2026-11-04_terra_check_11d.md#remark-83-wall-bookkeeping-and-enhancements).

Conditions: the dictionary of 06 (fifteen D8-branes for the five light quarks in three colours, the sixteenth for the top) and the recalled rule that an O8^- plane with n <= 7 D8-branes on it, at infinite coupling, carries E_{n+1} (E_4 = SU(5), E_5 = SO(10), E_6, E_7, E_8), while n >= 8 admits no such point (Seiberg, hep-th/9608111; Bergman, Gaberdiel and Lifschytz, hep-th/9711098; recalled).

1. Dilaton bookkeeping: the dilaton is e^{phi} = z^{−5/6} with z piecewise linear along the interval (conformal coordinate; Polchinski and Witten, hep-th/9510169) and slope proportional to 8 − n_left, where n_left counts the D8-branes to the left (O8^- carrying −8 units), so the coupling grows toward the wall with fewer branes; this reproduces the constant dilaton of 8 + 8, the SU(2) at the empty wall of the SO(32) point (the self-dual radius of the heterotic string) and 7 + 7 for E8 x E8 (extrapolated from the single-wall rule; neither Polchinski-Witten nor Bergman-Gaberdiel-Lifschytz states it). In the configuration 15 + 1 the wall with fifteen branes has no E point (15 > 7), and the coupling can diverge only at the far wall. With the top's brane on the far wall (the label-9 configuration of Proposition 7.2, n = 1) the far wall enhances to E_2 = SU(2) x U(1), the electroweak group; with the top's brane in the bulk it is empty and enhances to E_1 = SU(2). The light-quark wall keeps SO(30).
2. If branes move in colour triples (a light flavour is three D8-branes), a wall holds 3j branes, or 3j + 1 with the top's brane. The reachable wall groups are E_1, E_2 (the top's brane alone), E_4 = SU(5) (one flavour), E_5 = SO(10) (one flavour and the top's brane), E_7 (two flavours) and E_8 (two flavours and the top's brane); E_6 (five branes) is not reachable.
3. Hence an E8 wall needs the top's brane together with two light flavours, and two E8 walls are impossible with one top brane: E8 x E8 requires breaking a colour triple.

In this reading the top is what completes E8 at a wall (7 = 2 x 3 + 1), and with colour triples the proposed E8 x E7 arrangement has seven branes at one wall, six at the other and a bulk triple at x_b, while two E8 walls require relaxing the colour-triple rule (referee replacement): with that arrangement, the slopes are proportional to +1 on (0, x_b) and −2 on (x_b, L), so z vanishes at both walls when x_b = 2L/3. The E_n series also contains E_3 = SU(3) x SU(2) (two branes at a wall), which colour triples do not reach.

**Reading (proposal).** At strong coupling the wall that holds the top's brane in the label-9 configuration carries SU(2) x U(1), and the wall of the five light quarks in three colours carries SO(30). The electroweak group then appears at the top's wall, where the M-theory circle opens locally, and the quarks' flavour group at the other wall.

## 5. What remains open

- The bulk symmetry: k D8-branes in the bulk carry U(k), while Proposition 8.1 gives O or USp on every eigenspace of d^2; the relation between the window's degenerate levels in the bulk and U(k) needs the parent's own structures, not only j.
- The dilaton: a spectral-triple counterpart of the type I' dilaton profile (a coupling varying along the interval, with slope set by the brane charge to one side) and the infinite-coupling points of Remark 8.3. Proposition 9.1 of [09](09_dilaton_spectral_and_so32.md) writes the profile as a trace of a function of |D_F|, only implicitly after [10](10_dilaton_and_second_scale.md), Proposition 10.1, and the gradient is not the second scale in the scope of Propositions 10.5 and 10.6 there.
- The physical status of E8 x E7 with colour triples, and whether the top's brane at an E8 wall has a counterpart in the finite geometry.
