# The sign of lemma 06 as an orientifold type, and E8 walls from the configuration 15 + 1

Part of the 11D line of research ([README](README.md), [PLAN](PLAN.md), task C, next step of 07). Attempted by Claude (Anthropic), 4 Nov 2026. Proposition 8.1 is proved (it adds a commutant statement to lemma 06); Proposition 8.2 is proved from Proposition 7.1; Remark 8.3 rests on recalled string-theory rules and on the dictionary of 06; readings are proposals. Referee pending.

## 1. Setting

In type I' the two ends of the interval are orientifold planes. A stack of n Chan-Paton labels (k D8-branes with their images, n = 2k) on an orientifold plane of type O^- carries SO(n), and on one of type O^+ carries USp(n) (recalled; the physical O8 planes of the SO(32) web are O8^-). [Lemma 06](../lemmas/06_vectorlike_odd_factorization.md) factors a KO-6 finite triple into an odd one through a grading-reversing unitary involution U, commuting with the algebra and with D, with U J = s J U; s = −1 gives KO-5 (label 9) and s = +1 gives KO-7 (label 11), and the antiunitary j induced on H_+ satisfies j^2 = s and commutes with d^2 = D^2|_{H_+} (lemma 06, proof of Result 2 and the check of the electrodynamics data). STRATEGY T2c: with a realistic seesaw sector only s = +1 occurs.

## 2. Proposition 8.1 (the factorization sign fixes orthogonal or symplectic symmetry)

**Statement.** Let E be an eigenspace of d^2 in H_+, of dimension n. The unitaries of E that commute with j form O(n) if s = +1, and USp(n) if s = −1, in which case n is even.

**Proof.** j preserves E because it commutes with d^2. An antiunitary with j^2 = +1 is a real structure: E = E_R ⊗ C with E_R its fixed points, and a unitary commutes with j exactly when it preserves E_R, which gives O(n). An antiunitary with j^2 = −1 is a quaternionic structure: E is a right H-module of quaternionic dimension n/2, and the unitaries commuting with j form USp(n). ∎

The even dimension for s = −1 is lemma 06's own statement (Kramers degeneracy of the singular values). The proposition adds the symmetry group.

**Reading (proposal).** The groups are those of Chan-Paton labels on an orientifold plane: s = +1 with O^- (SO), s = −1 with O^+ (USp). So the two odd factorizations of the modern triple, which carry the labels 11 and 9, have the form of the two kinds of orientifold planes. The seesaw sector selects s = +1 (T2c), which is the O^- type of the SO(32) web used in 06 and 07: the physical neutrino sector and the type I' walls of the dictionary agree in type.

## 3. Proposition 8.2 (wall channels come with doubled multiplicity)

**Statement.** In the parent of lemma 22, k channels at a common angle θ contribute, at the eigenvalue θ/l of the window, an eigenspace of dimension k if 0 < θ < pi/2 and of dimension 2k at the ends θ = 0 and θ = pi/2.

**Proof.** By Proposition 7.1 each channel has the spectrum {(n pi ± θ)/l}; the value θ/l occurs once (n = 0, sign +) for 0 < θ < pi/2, and twice at the ends: at θ = 0 as the zero mode of multiplicity two, at θ = pi/2 as (0 + pi/2)/l = (pi − pi/2)/l. ∎

**Reading (proposal).** k D8-branes in the bulk carry k Chan-Paton labels and k D8-branes on an orientifold plane carry 2k, with their images; the parent reproduces this count, with the ends of the angle interval as the walls. With Proposition 8.1, a stack of channels at a wall has a symmetry of type SO(2k) or USp(2k), as a stack of D8-branes on an O8^- or O8^+ plane. The rank-reduced nine-dimensional theory with one O8^- and one O8^+ (duality 3 of file 07) would then be a parent whose two walls carry opposite signs s: one sheet of type 11 and the other of type 9.

## 4. Remark 8.3 (E8 walls from 15 + 1; conditional)

Conditions: the dictionary of 06 (fifteen D8-branes for the five light quarks in three colours, the sixteenth for the top) and the recalled rule that an O8^- plane with n <= 7 D8-branes on it, at infinite coupling, carries E_{n+1} (E_4 = SU(5), E_5 = SO(10), E_6, E_7, E_8), while n >= 8 admits no such point (Seiberg, hep-th/9608111; Bergman, Gaberdiel and Lifschytz, hep-th/9711098; recalled).

1. In the configuration 15 + 1 the wall with fifteen branes exceeds 7, and the dilaton is weakest at the other wall, so neither wall reaches an E-type point: the configuration stays on the SO(32) side, and the eleven-dimensional lift with E8 walls is not reached from it without moving branes.
2. If branes move in colour triples (a light flavour is three D8-branes), a wall holds 3j branes, or 3j + 1 with the top's brane. The reachable wall groups are E_1, E_2 (the top's brane alone), E_4 = SU(5) (one flavour), E_5 = SO(10) (one flavour and the top's brane), E_7 (two flavours) and E_8 (two flavours and the top's brane); E_6 (five branes) is not reachable.
3. Hence an E8 wall needs the top's brane together with two light flavours, and two E8 walls are impossible with one top brane: E8 x E8 requires breaking a colour triple.

In this reading the top is what completes E8 at a wall (7 = 2 x 3 + 1), and the Hořava-Witten endpoint E8 x E8 is not available with colour-respecting moves; E8 x E7 is, with the remaining flavour in the bulk, provided the dilaton profile allows infinite coupling at both walls (to be checked against the Romans-mass bookkeeping).

## 5. What remains open

- The bulk symmetry: k D8-branes in the bulk carry U(k), while Proposition 8.1 gives O or USp on every eigenspace of d^2; the relation between the window's degenerate levels in the bulk and U(k) needs the parent's own structures, not only j.
- The dilaton: a spectral-triple counterpart of the type I' dilaton profile (a coupling varying along the interval, with slope set by the brane charge to one side) and the infinite-coupling points of Remark 8.3.
- The physical status of E8 x E7 with colour triples, and whether the top's brane at an E8 wall has a counterpart in the finite geometry.
