# The sign of lemma 06 as an orientifold type, and E8 walls from the configuration 15 + 1

*Lemma 35. Written as file 08 of the eleven-dimensional line (branch 11D, by another Claude session) and moved here on 4 November 2026 with its text unchanged; its proposals keep their labels, and the plan and the unfinished files of that line are in [historical/11D/](../historical/11D/README.md). Internal references to "file 0n" of that line mean the lemma with the same content: 01 is lemma 31, 02 is 32, 03 is 39, 04 is 33, 05 is 34, 06 is in historical/11D, 07 is 40, 08 is 35, 09 is 36, 10 is 37, 11 is 38.*

Part of the 11D line of research ([README](../historical/11D/README.md), [PLAN](../historical/11D/PLAN.md), task C, next step of 07). Attempted by Claude (Anthropic), 4 Nov 2026. Proposition 8.1 is proved (it adds a commutant statement to lemma 06); Proposition 8.2 is proved from Proposition 7.1; Remark 8.3 rests on recalled string-theory rules and on the dictionary of 06; readings are proposals. Further proofs by Terra 6.1 are at the end.

## 1. Setting

In type I' the two ends of the interval are orientifold planes. A stack of n Chan-Paton labels (k D8-branes with their images, n = 2k) on an orientifold plane of type O^- carries SO(n), and on one of type O^+ carries USp(n) (recalled; the physical O8 planes of the SO(32) web are O8^-). [Lemma 06](06_vectorlike_odd_factorization.md) factors a KO-6 finite triple into an odd one through a grading-reversing unitary involution U, commuting with the algebra and with D, with U J = s J U; s = −1 gives KO-5 (label 9) and s = +1 gives KO-7 (label 11), and the antiunitary j induced on H_+ satisfies j^2 = s and commutes with d^2 = D^2|_{H_+} (lemma 06, proof of Result 2 and the check of the electrodynamics data). STRATEGY T2c: with a realistic seesaw sector only s = +1 occurs.

## 2. Proposition 8.1 (the factorization sign fixes orthogonal or symplectic symmetry)

*Scope.* The commutants need not preserve d or the remaining data (example at the end of the lemma), and the Chan-Paton identification is a proposal.

**Statement.** Let E be an eigenspace of d^2 in H_+, of dimension n. The unitaries of E that commute with j form O(n) if s = +1, and USp(n) if s = −1, in which case n is even.

**Proof.** j preserves E because it commutes with d^2. An antiunitary with j^2 = +1 is a real structure: E = E_R ⊗ C with E_R its fixed points, and a unitary commutes with j exactly when it preserves E_R, which gives O(n). An antiunitary with j^2 = −1 is a quaternionic structure: E is a right H-module of quaternionic dimension n/2, and the unitaries commuting with j form USp(n). ∎

The even dimension for s = −1 is lemma 06's own statement (Kramers degeneracy of the singular values). The proposition adds the symmetry group.

**Reading (proposal).** The groups are those of Chan-Paton labels on an orientifold plane: s = +1 with O^- (SO), s = −1 with O^+ (USp). So the two odd factorizations of the modern triple, which carry the labels 11 and 9, have the form of the two kinds of orientifold planes. The seesaw sector selects s = +1 (T2c), which is the O^- type of the SO(32) web used in 06 and 07: the physical neutrino sector and the type I' walls of the dictionary agree in type. Two refinements: the symmetries of the pair (j, d) are smaller, O(n_+) x O(n_-) for s = +1 and U(n/2) for s = -1, since for s = -1 the antiunitary j swaps the +-mu eigenspaces of d; and there is a tension of labels, since here label 9 goes with O^+ while section 6b of [07](../lemmas/40_dualities_9_11.md) puts label 9 on a far O8^- wall (the two are the KO sign and the position of the top's brane, see [10](37_dilaton_and_second_scale.md)).

## 3. Proposition 8.2 (wall channels come with doubled multiplicity)

*Scope.* The count is for one signed eigenvalue. The lowest |D| multiplicity is 2k in the interior and at zero, and 4k at pi/2; reading the signed count as Chan-Paton labels requires further data.

**Statement.** In the parent of lemma 22, k channels at a common angle θ contribute, at the eigenvalue θ/l of the window, an eigenspace of dimension k if 0 < θ < pi/2 and of dimension 2k at the ends θ = 0 and θ = pi/2.

**Proof.** By Proposition 7.1 each channel has the spectrum {(n pi ± θ)/l}; the value θ/l occurs once (n = 0, sign +) for 0 < θ < pi/2, and twice at the ends: at θ = 0 as the zero mode of multiplicity two, at θ = pi/2 as (0 + pi/2)/l = (pi − pi/2)/l. ∎

**Reading (proposal).** k D8-branes in the bulk carry k Chan-Paton labels and k D8-branes on an orientifold plane carry 2k, with their images; the parent reproduces this count, with the ends of the angle interval as the walls. With Proposition 8.1, a stack of channels at a wall has a symmetry of type SO(2k) or USp(2k), as a stack of D8-branes on an O8^- or O8^+ plane. The rank-reduced nine-dimensional theory with one O8^- and one O8^+ (duality 3 of file 07) would then be a parent whose two walls carry opposite signs s: one sheet of type 11 and the other of type 9.

## 4. Remark 8.3 (E8 walls from 15 + 1; conditional)

*Scope.* The far-wall group is reached at the string-scale radius R = R_*, with the tower fixed, and only its charged states are D0-branes. See [10](37_dilaton_and_second_scale.md).

*Scope.* The brane and slope arithmetic is conditional on the slope rule, which agrees with Polchinski-Witten, and on the E_{n+1} table, which agrees with Bergman-Gaberdiel-Lifschytz. Wall enhancement requires tuning z = 0; for 7 + 7 the two bulk positions must sum to L. The E_2 identification with the physical electroweak sector needs further data.

Conditions: the dictionary of 06 (fifteen D8-branes for the five light quarks in three colours, the sixteenth for the top) and the recalled rule that an O8^- plane with n <= 7 D8-branes on it, at infinite coupling, carries E_{n+1} (E_4 = SU(5), E_5 = SO(10), E_6, E_7, E_8), while n >= 8 admits no such point (Seiberg, hep-th/9608111, recalled; Bergman, Gaberdiel and Lifschytz, hep-th/9711098).

1. Dilaton bookkeeping: the dilaton is e^{phi} = z^{−5/6} with z piecewise linear along the interval (conformal coordinate; Polchinski and Witten, hep-th/9510169) and slope proportional to 8 − n_left, where n_left counts the D8-branes to the left (O8^- carrying −8 units), so the coupling grows toward the wall with fewer branes; this reproduces the constant dilaton of 8 + 8, the SU(2) at the empty wall of the SO(32) point (the self-dual radius of the heterotic string) and 7 + 7 for E8 x E8 (extrapolated from the single-wall rule; neither Polchinski-Witten nor Bergman-Gaberdiel-Lifschytz states it). In the configuration 15 + 1 the wall with fifteen branes has no E point (15 > 7), and the coupling can diverge only at the far wall. With the top's brane on the far wall (the label-9 configuration of Proposition 7.2, n = 1) the far wall enhances to E_2 = SU(2) x U(1), the electroweak group; with the top's brane in the bulk it is empty and enhances to E_1 = SU(2). The light-quark wall keeps SO(30).
2. If branes move in colour triples (a light flavour is three D8-branes), a wall holds 3j branes, or 3j + 1 with the top's brane. The reachable wall groups are E_1, E_2 (the top's brane alone), E_4 = SU(5) (one flavour), E_5 = SO(10) (one flavour and the top's brane), E_7 (two flavours) and E_8 (two flavours and the top's brane); E_6 (five branes) is not reachable.
3. Hence an E8 wall needs the top's brane together with two light flavours, and two E8 walls are impossible with one top brane: E8 x E8 requires breaking a colour triple.

In this reading the top is what completes E8 at a wall (7 = 2 x 3 + 1), and with colour triples the proposed E8 x E7 arrangement has seven branes at one wall, six at the other and a bulk triple at x_b, while two E8 walls require relaxing the colour-triple rule: with that arrangement, the slopes are proportional to +1 on (0, x_b) and −2 on (x_b, L), so z vanishes at both walls when x_b = 2L/3. The E_n series also contains E_3 = SU(3) x SU(2) (two branes at a wall), which colour triples do not reach.

**Reading (proposal).** At strong coupling the wall that holds the top's brane in the label-9 configuration carries SU(2) x U(1), and the wall of the five light quarks in three colours carries SO(30). The electroweak group then appears at the top's wall, where the M-theory circle opens locally, and the quarks' flavour group at the other wall.

## 5. What remains open

- The bulk symmetry: k D8-branes in the bulk carry U(k), while Proposition 8.1 gives O or USp on every eigenspace of d^2; the relation between the window's degenerate levels in the bulk and U(k) needs the parent's own structures in addition to j.
- The dilaton: a spectral-triple counterpart of the type I' dilaton profile (a coupling varying along the interval, with slope set by the brane charge to one side) and the infinite-coupling points of Remark 8.3. Proposition 9.1 of [09](36_dilaton_spectral_and_so32.md) writes the profile as a trace of a function of |D_F|, only implicitly after [10](37_dilaton_and_second_scale.md), Proposition 10.1, and the gradient is not the second scale in the scope of Propositions 10.5 and 10.6 there.
- The physical status of E8 x E7 with colour triples, and whether the top's brane at an E8 wall has a counterpart in the finite geometry.

## Further proofs (Terra 6.1, 4 November 2026)

**Proposition 8.1 in full, with its caution.**

On each finite-dimensional eigenspace E of d^2, the commutant of j in the unitary group of E is O(n) for j^2 = 1, and USp(n) for j^2 = -1, with even complex dimension n in the latter case.

For j^2 = 1, the fixed points of j form a real subspace E_R with E = E_R ⊕ i E_R, and the inner product is real on E_R, since <jv, jw> = conj<v, w>. A real orthonormal basis of E_R is an orthonormal basis of E and identifies j with complex conjugation; the unitaries commuting with complex conjugation are the real orthogonal matrices, O(n). For j^2 = -1, a unit vector v and jv are orthogonal: antiunitarity gives <jv, j^2 v> = conj<v, jv> = <jv, v>, and j^2 v = -v gives <jv, j^2 v> = -<jv, v>, so <jv, v> = 0. The span of v and jv is j-invariant, and so is its orthogonal complement; induction gives a quaternionic orthonormal basis v_1, jv_1, ..., v_m, jv_m, with n = 2m. The unitaries commuting with j are then the compact symplectic group USp(n).

*Caution.* This commutant is defined using j and the d^2-eigenspace alone. It need not commute with d, with the represented algebra, or with other physical structures. For example, on C^2 let j be complex conjugation and d = diag(1, -1): the commutant on the d^2 = 1 space is O(2), and a generic rotation does not commute with d. Moreover O(n) contains disconnected transformations, while SO(n) is its identity component for n >= 2. The orientifold comparison therefore requires an explicit Chan-Paton representation and compatibility with the rest of the data.

**Proposition 8.2, with the multiplicities of |D|.**

For k independent channels at the same angle, the signed eigenvalue theta/l has multiplicity k in the interior and 2k at either endpoint. For 0 < theta < pi/2, only n = 0 in the positive progression gives +theta/l: (n pi + theta)/l = theta/l forces n = 0, and (n pi - theta)/l = theta/l forces theta = n pi/2, outside the interior. At zero both progressions have n = 0. At pi/2 the positive n = 0 and negative n = 1 branches coincide. This proves the claimed signed count.

The multiplicity of the corresponding lowest eigenvalue of |D| is 2k in the interior (the values ±theta/l, k each), 2k at zero, and 4k at pi/2 (the values ±pi/(2l), 2k each). At zero the two interior signed eigenvalues simply coalesce; at pi/2 the next level also meets the window. Thus the signed count alone does not establish a doubling of independent physical Chan-Paton labels or an orientifold projection.

**The arithmetic of Remark 8.3.**

The slope and brane-count arithmetic below is conditional on the type I' rules (scope note at the remark). An enhancement requires tuning the coupling to a zero of z, and identifying the resulting E_2 factor with the physical electroweak sector requires additional data.

Assume z' = c (8 - N), with c > 0, N(x) the number of D8-branes to the left of x, and z > 0 in the open interval.

- *8 + 8.* N = 8 in the interior, so the interior slope is zero.
- *16 + 0.* z' = -8c, and the empty far wall reaches z = 0 only when z(0) = 8cL.
- *7 + 7.* With the other two branes at x_1 < x_2 in (0, L), the slopes are c, 0 and -c on (0, x_1), (x_1, x_2) and (x_2, L). Both walls have z = 0 precisely when

      z(0) = 0,    x_1 + x_2 = L,

  since z(L) = z(0) + c x_1 - c (L - x_2). Then z is positive in the interior. Thus "7 + 7 for E8 x E8" includes a coupling and a position condition.
- *Isolated zeros.* With n branes at a wall where z = 0, the slope next to the wall is c (8 - n) at x = 0 and c (n - 8) at x = L, so z > 0 inside requires n <= 7: an isolated zero with a positive interior requires at most seven branes at that wall under this slope rule.
- *15 + 1.* With the single brane at L, the slope is c (8 - 15) = -7c, so the far-wall zero is at z(0) = 7cL. Assuming the recalled E_{n+1} rule gives E_2, with Lie algebra su(2) ⊕ u(1), at that tuned wall. The rule alone does not determine the Standard Model charges, couplings, global group or embedding.

*Colour triples.* If every light flavour moves as a triple and there is a single top brane, a wall holds 3j or 3j + 1 branes, so the allowed wall counts up to seven are 0, 1, 3, 4, 6, 7. Only a wall containing the top can have seven (7 = 2 x 3 + 1); two such walls require relaxing the triple constraint or the single-top assumption. For seven branes at 0, six at L, and the remaining triple at x_b, N = 7 on (0, x_b) and N = 10 on (x_b, L), so the slopes are +c and -2c. With z(0) = z(L) = 0, c x_b - 2c (L - x_b) = 0 gives x_b = 2L/3, and

    z(x) = c x            for 0 <= x <= 2L/3,
    z(x) = 2c (L - x)     for 2L/3 <= x <= L.

The resulting E8 x E7 interpretation is conditional on the recalled enhancement rule and the proposed brane dictionary.
