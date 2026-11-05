# The type I' dilaton as a spectral function, the SO(32) of the EPJC paper, and two more dualities

*Lemma 36. Written as file 09 of the eleven-dimensional line (branch 11D, by another Claude session) and moved here on 4 November 2026 with its text unchanged; its proposals keep their labels, and the plan and the unfinished files of that line are in [historical/11D/](../historical/11D/README.md). Internal references to "file 0n" of that line mean the lemma with the same content: 01 is lemma 31, 02 is 32, 03 is 39, 04 is 33, 05 is 34, 06 is in historical/11D, 07 is 40, 08 is 35, 09 is 36, 10 is 37, 11 is 38.*

Part of the 11D line of research ([README](../historical/11D/README.md), [PLAN](../historical/11D/PLAN.md), task C). Attempted by Claude (Anthropic), 4 Nov 2026, after the steer of the same day (the coincident-brane route is overused; the type I' dilaton and the colour-flavour idea are worth pursuing; compare with the SO(32) of the EPJC paper). Proposition 9.1 is proved from the recalled type I' slope rule; Proposition 9.2 is proved from representation theory and the recalled orientifold projections; Proposition 9.3 is proved (linear algebra and Connes's sign table); the comparison of section 1 is with the LaTeX source of the paper; the rest are proposals. Further proofs by Terra 6.1 are at the end.

## 1. The SO(32) of A. Rivero, Eur. Phys. J. C 84 (2024) 1058 (arXiv:2407.05397)

That paper uses the adjoint of SO(32) to classify the scalars of a supersymmetric Standard Model with three generations, as composites: pairs of quarks as colour triplets and quark-antiquark pairs as singlets and octets, with three extra scalars of charge +4/3. Its pattern is SO(2n) ⊃ SO(n_1) x SU(n_2) x SU(3) x U(1) with 2n = n_1 + 6 n_2, which for SO(32) and n_2 = 5 gives SO(2) x SU(5) x SU(3) x U(1): the 30 = 6 n_2 are the five light quarks u, c, d, s, b ("turtles") in three colours with conjugates, and the top is the non-participating "elephant". Its explicit route also passes through SO(32) ⊃ SU(16) x U(1), with 496 = 1 + 120 + 120bar + 255 (quarks from the 120s, leptons from the 255), and it mentions open strings, orientifolds and an SU(9) for M2 and M5.

**Reading of the LaTeX source (Claude Sonnet 5.5, 4 Nov 2026).** The paper uses colour singlets for mesons and colour antitriplets for diquarks, and keeps only (1, 24, 1), (1, 15, 3bar) and (1, 15bar, 3) of its decomposition; colour octets and sextets lie outside it. The top is the favoured non-binding quark ("we have not a concrete argument"), and the postulates force the non-binding quark to be up-type. The chain is SU(16) x U(1) to SU(15) to SU(5) x SU(3), with SO(30) and SO(32) reached by "adding singlets". The identification of the top with the SO(2) factor, the O8^- plane and the Chan-Paton reading belong to these files, and "orientifold" in the paper means planar orientifold QCD. The footnote on the 84 + 12 split and SU(9) for M2 and M5 anticipates Proposition 21.3 and [04](33_two_families_e8_placement.md). The abstract specifies a chiral +4/3 quark per generation; the body has three scalars of charge +4/3 and leaves their fermion partner open. The paper gives (15, 3bar) as the antisymmetric square of one fundamental without stating chirality, so the question of Proposition 9.3 stays open; its remark on odd-parity diquarks is consistent with that proposition. The paper's selection of an up-type quark by its postulates and lemma 21's by the spectral-action values are independent arguments with the same outcome.

**Coincidence.** The chain SO(32) ⊃ SO(2) x SO(30) ⊃ SO(2) x SU(15) x U(1) ⊃ SO(2) x SU(5) x SU(3) x U(1), the 30 as five light quarks in three colours, and the top as the factor SO(2), are the same as lemma 21 and the dictionary of [06](../historical/11D/06_main_point_heterotic_route.md). Lemma 21 records the branching 496 -> (435, 1) + (1, 1) + (30, 2) and leaves SO(32) unexplored; the EPJC paper explores it through composites, and the files 06 to 09 through type I' branes. What the 11D files add: the type I' realization of the SO(2) as the top's D8-brane and of the 30 as the Chan-Paton labels of fifteen D8-branes on an O8^- wall (06); the top angle as the brane's position and the one-loop vacuum on the far wall (Propositions 7.1, 7.2); the orientifold type O^- matched by the seesaw sign (Proposition 8.1); the far wall's enhancement to SU(2) x U(1) at infinite coupling (Remark 8.3); the dilaton (Proposition 9.1); the diquark counts as strings between the stack and its image, which need the O^- type (Proposition 9.2); and the real-structure condition under which these counts arise, as connection components along the interval, outside the finite inner fluctuations (Proposition 9.3). In type I' language the paper's other chain, SU(16) x U(1), is the configuration with all sixteen D8-branes coincident in the bulk, and the chain with SO(2) x SO(30) is the configuration with fifteen on a wall and one apart; the second is the one the corpus selects. The SU(9) of M2 and M5 in the paper is the grading of e8 used in [04](33_two_families_e8_placement.md).

## 2. Proposition 9.1 (the type I' coupling function is a trace of a function of the finite Dirac operator)

*Scope.* The trace is over sixteen selected channels, and the full physical D_F Hilbert space enters only through a specified projection onto them. The formula z(L) = z(0) - c (8L - sum x_k) is exact in the positions; the dictionary x_k = (2L/pi) l m_k holds only for constant z, and in general theta_k = (pi/2) W(x_k)/W(L) with W = int z^{-1/3} ([10](37_dilaton_and_second_scale.md), Proposition 10.1). In the profile 15 + 1 the endpoint values 7cL and 8cL stand, and theta_t = pi/4 gives 7.358 cL in place of 7.5 cL.

**Setting.** Type I' on an interval [0, L], in the conformal coordinate x, with sixteen D8-branes at x_1, ..., x_16 and O8^- planes at the ends. Recalled rule (Polchinski and Witten, hep-th/9510169): the dilaton is e^{phi} = z^{−5/6} for a function z that is continuous and piecewise linear in x, with slope c (8 − N(x)), where N(x) is the number of D8-branes to the left of x and c > 0; the coupling diverges where z vanishes. Dictionary (06, 07): x_k = (2L/pi) θ_k with θ_k = l m_k the angles of sixteen channels of the finite Dirac operator (fifteen light-quark channels with colour, and the top).

**Statement.**

1. z(x) = z(0) + c Σ_k min(x/2, x_k − x/2) for x in [0, L], so z is z(0) plus c Tr g_x(l |D_F|) over the sixteen channels, with g_x(θ) = min(x/2, (2L/pi) θ − x/2): a trace of a function of the finite Dirac operator, as the spectral action is.
2. At the far wall, z(L) = z(0) − c (8L − Σ_k x_k).
3. Infinite coupling at the far wall (z(L) = 0) holds exactly when z(0) = (2cL/pi)(4 pi − l Σ_k m_k): the coupling at the light-quark wall is fixed by the sum of the sixteen channel masses, the trace of |D_F| on these channels.

**Proof.** ∫_0^x N(y) dy = Σ_k (x − x_k)_+, so z(x) = z(0) + c (8x − Σ_k (x − x_k)_+) = z(0) + c Σ_k (x/2 − (x − x_k)_+), and x/2 − (x − x_k)_+ = min(x/2, x_k − x/2). Item 2 is x = L with Σ_k (L − x_k) = 16L − Σ x_k. Item 3 sets z(L) = 0 and substitutes x_k = (2L/pi) l m_k. ∎

**Reading (proposal).** With the light quarks near θ = 0, Σ_k m_k ≈ m_t and the condition is z(0) ≈ (2cL/pi)(4 pi − θ_t): 7cL at label 9 (θ_t = pi/2) and 8cL at label 11 (θ_t -> 0). The coupling therefore varies along the interval on a scale set by the spectrum of D_F, which is the kind of second scale that Proposition 1.5 requires to select a joint family; whether the type I' coupling can play that role in the corpus's flat family is the next question. Since the slope decreases with x, z is concave, so z > 0 on [0, L) once z(0) > 0 and z(L) = 0; positivity of z(0) gives l Σ_k m_k < 4 pi, a bound on the trace of |D_F| in units of the tower scale, met when only the top is heavy (θ_t <= pi/2).

## 3. Proposition 9.2 (diquarks as strings between the stack and its image)

*Scope.* The counts are conditional on the recalled projections. The shifts describe the specified gauge-field channels; Λ^2 of a line excludes that component only, and leaves the other open-string states and the strings to other branes.

**Setting.** V = C^5 ⊗ C^3, five light flavours in three colours, with Q = 2/3 on u, c and Q = −1/3 on d, s, b; the 30 of lemma 21 is V ⊕ Vbar. Fifteen D8-branes on an O8 plane carry the Chan-Paton space 30 (branes and images), with group SO(30) on an O8^- and USp(30) on an O8^+, and U(15) when the stack is moved off the plane (recalled).

**Statement.**

1. Under U(15), the adjoint of SO(30) is Λ²V ⊕ Λ²Vbar ⊕ (V ⊗ Vbar) and the adjoint of USp(30) is S²V ⊕ S²Vbar ⊕ (V ⊗ Vbar). The summands Λ²V or S²V and their conjugates are the strings between the stack and its image; V ⊗ Vbar are the strings with both ends on the stack.
2. Λ²V = (S²5, 3bar) ⊕ (Λ²5, 6) and S²V = (S²5, 6) ⊕ (Λ²5, 3bar).
3. In the colour antitriplet, Λ²V has the charge counts (−2/3: 6, +1/3: 6, +4/3: 3) of lemma 21, and S²V has (−2/3: 3, +1/3: 6, +4/3: 1). So the antisquark counts of three generations recorded in lemma 21 (6 of charge −2/3 and 6 of charge +1/3 in the 3bar) occur among the stack-image strings of an O8^- plane, while those of an O8^+ plane have the counts (3, 6, 1).
4. With the angles θ_k = l m_k of 06, a string from channel i to the image of channel j has the spectrum (n pi ± (θ_i + θ_j))/l, and a string from channel i to channel j has (n pi ± (θ_i − θ_j))/l, n in Z.
5. A single brane has no string to its own image on an O8^- plane (Λ² of a line vanishes) and one on an O8^+ plane.

**Proof.** 1: 30 = V ⊕ Vbar as a U(15) module, Λ²(V ⊕ Vbar) = Λ²V ⊕ Λ²Vbar ⊕ (V ⊗ Vbar) and likewise for S²; the orientifold projection keeps the antisymmetric part for SO and the symmetric part for USp, and the mixed summand V ⊗ Vbar is the U(15) adjoint. 2: Λ²(A ⊗ B) = (S²A ⊗ Λ²B) ⊕ (Λ²A ⊗ S²B) and S²(A ⊗ B) = (S²A ⊗ S²B) ⊕ (Λ²A ⊗ Λ²B), with Λ²3 = 3bar. 3: split 5 = 2 ⊕ 3 by charge; S²5 = S²2 ⊕ (2 ⊗ 3) ⊕ S²3 has dimensions 3, 6, 6 with charges 4/3, 1/3, −2/3, and Λ²5 = Λ²2 ⊕ (2 ⊗ 3) ⊕ Λ²3 has dimensions 1, 6, 3 with the same charges. 4: Proposition 6.1 with charges (+1, +1) and (+1, −1) under U(1)_i x U(1)_j, whose holonomy is e^{2 pi i (a_i ± a_j)}, and θ = pi a. 5: dimensions. ∎

**Reading (proposal).** ([11](38_so30_fluctuations.md), Theorem 11.3 and Proposition 11.4, qualify the selection below: the window sees the counts (3, 6, 1) also at s = +1, through the commutator with the masses, and parent scalars with the counts (6, 6, 3) need M_15(C) at both walls.) The diquark counts of lemma 21 and of the EPJC paper are the stack-image strings of an O8^- plane, the type that Proposition 8.1 associates with the factorization sign s = +1 selected by the seesaw sector (T2c); the O8^+ alternative gives the wrong number of up-type antisquarks. So the seesaw sign and the scalar counts select the same orientifold type. Two features follow from the projection. Diquark masses go with the sum θ_i + θ_j and meson masses with the difference θ_i − θ_j, so when the stack leaves the wall the diquarks become massive and the mesons stay massless: the diquarks are tied to the orientifold. And the top's single brane has no string to its own image, while its strings to the stack, the (30, 2), have masses near m_t (Proposition 6.1); in the EPJC paper the top's exclusion is an input, and here the O8^- projection with one brane for the top removes the top-top channel only (item 5); the top-to-stack strings (30, 2) remain, with masses near m_t, so the rest of the exclusion is a mass statement, as in the paper.

## 4. Proposition 9.3 (the real structure decides between the two diquark counts)

*Scope.* The sign constraint excludes a nonzero antisymmetric block in the three KO labels and permits all of S^2 V (for eps eps' = +1 the block B ranges over exactly S^2 V, with the diagonal block free); the algebra, grading and order conditions of a triple then select a subspace. Blocks between distinct multiplets remain related to their transposes.

**Setting.** E = V ⊕ Vbar with V as in Proposition 9.2, an antiunitary J on E that maps V onto Vbar and Vbar onto V (as particles and antiparticles are exchanged), J² = ε, and a Hermitian X on E with JX = ε' XJ, the condition that inner fluctuations obey in a KO-dimension with signs (ε, ε'). Let B be the block of X from Vbar to V, an element of V ⊗ V.

**Statement.**

1. B is symmetric (B in S²V) if εε' = +1 and antisymmetric (B in Λ²V) if εε' = −1.
2. In the KO-dimensions 5, 6, 7 of the finite part for the labels 9, 10, 11, (ε, ε') = (−1, −1), (+1, +1), (+1, +1), so εε' = +1: the diquark block of every J-compatible fluctuation lies in S²V, whose colour antitriplet (Λ²5, 3bar) has the counts (−2/3: 3, +1/3: 6, +4/3: 1).
3. For a connection on a circle whose real structure is complex conjugation (KO-dimension 1, (ε, ε') = (+1, −1)), the block lies in Λ²V, whose colour antitriplet (S²5, 3bar) has the counts (−2/3: 6, +1/3: 6, +4/3: 3) of lemma 21. The SO(32) Wilson line of Proposition 6.1 is of this type.

**Proof.** Choose a basis of V and let K: V -> Vbar be coordinatewise conjugation; J(v, w) = (ε K^{-1} w, K v) has J² = ε. Write X = [[A, B], [B*, D]]. The component of JX = ε' XJ that maps V to V gives ε K^{-1} B* = ε' B K, so B = εε' K^{-1} B* K^{-1} = εε' B^T in coordinates. Under the U(15)-equivariant identification of Hom(Vbar, V) with V ⊗ V, symmetric matrices form S²V and antisymmetric ones Λ²V. Items 2 and 3 use Connes's sign table, ε = (+, +, −, −, −, −, +, +) and ε' = (+, −, +, +, +, −, +, +) for KO-dimensions 0 to 7, and the counts of Proposition 9.2. On the circle, D = −i d/dθ and J = conjugation give JD = −DJ, and a Hermitian connection A with JA = −AJ is i times a real antisymmetric matrix, an element of so(n), where the generator of R(2 pi a) lies. ∎

Item 2 is a negative statement with the following scope: the blocks of J-compatible Hermitian operators between particles and antiparticles, for one multiplet V, in the three labels. It is the finite-geometry form of the symmetry of Majorana mass matrices, and of the Fermi-statistics constraint on a Lorentz-scalar bilinear ψ_i ψ_j of one Weyl multiplet without derivatives (recalled), under which the (15, 3bar) vanishes. Known escapes: item 3 (connection components along a circle or an interval), blocks between two distinct multiplets, which J does not constrain, and derivative couplings.

**Reading (proposal).** The counts of lemma 21 and of the EPJC paper, (6, 6, 3), belong to the antisymmetric block. In the corpus's setting this block arises as the component of an SO(30) connection along the circle or interval: the Wilson-line moduli of the type I' stack, whose stack-image part is Proposition 9.2. The finite triple alone, in any of the three labels, gives the symmetric block and the counts (3, 6, 1). So the composite scalars with the counts of lemma 21 point to the interval parent of lemma 22 and its gauge field, and the selection of O8^- in Proposition 9.2 concerns these connection components. This narrows the spin gap of Propositions 6.1 and 9.2: the Λ²V states are scalars as circle components of a nine-dimensional gauge field, and they come with that field's vector and gaugino partners.

## 5. Two more dualities between 9 and 11 (recalled; proposals)

1. **E-type walls and del Pezzo surfaces.** The E_{n+1} symmetry of an O8^- plane with n D8-branes at infinite coupling is the symmetry of the five-dimensional theory on a D4-brane probe, which M-theory realizes on a Calabi-Yau threefold with a shrinking del Pezzo surface dP_{n+1} (Seiberg, hep-th/9608111; Morrison and Seiberg, hep-th/9609070; Intriligator, Morrison and Seiberg, hep-th/9702198). So the far wall with the top's brane (n = 1, E_2 = SU(2) x U(1)) has an eleven-dimensional description by a local dP_2, and the empty far wall (E_1 = SU(2)) by P^1 x P^1 (the surface dP_1 = F_1 gives the distinct E~_1 theory; end of the lemma); the light-quark wall (n = 15) has none. The Witten base CP^2 x CP^1 of 02 is built from the same pieces (CP^2 = dP_0, and P^1 factors).
2. **Colour-flavour exchange as a T-duality.** In the heterotic string on S^1, the Weyl group of the gauge group acts on the Wilson lines as part of the T-duality group O(17, 1; Z). The colour-family transposition M of [05](34_colour_family_exchange.md) is an element of the Weyl group of E8, so it is a T-duality of the nine-dimensional E8 x E8 string, and through Hořava-Witten a symmetry of the E8 holonomy on a wall in eleven dimensions. As a Weyl element it acts as a global gauge transformation, so by itself it relabels gauge-equivalent vacua; it exchanges colour and family physically only relative to a structure that tells them apart, such as the placement of H_F in 05. The four-family requirement of Propositions 5.1 and 5.4 remains.

## 6. Open

The finite KO signs restrict the symmetric block without producing the full representation. Light interval scalar modes, their boundary conditions and the physical string dictionary remain to be constructed.

- Whether the type I' coupling, as a spectral function of D_F (Proposition 9.1), supplies the second scale of Proposition 1.5 in the flat family of lemmas 23 and 24.
- The local dP_2 of the top's wall and its relation to the Witten base CP^2 x CP^1.
- Spin: in type I' the strings of Proposition 9.2 belong to nine-dimensional vector multiplets, with one real scalar each (the relative position), the same gap as in Proposition 6.1. By Proposition 9.3 a finite triple in the labels 9 to 11 gives S²V, so the Λ²V scalars must come from the connection along the interval; the next computation is the inner fluctuations of the parent of lemma 22 with an SO(30) algebra, and whether its interval component carries Λ²V with the counts of lemma 21.
- Whether the (15, 3bar) of the EPJC paper could be read as bilinears of two distinct multiplets (the paper itself gives one fundamental with itself) (for example left-handed quarks and conjugates of right-handed ones arranged into one 30), which Proposition 9.3 does not constrain.

## Further proofs (Terra 6.1, 4 November 2026)

**Proposition 9.1, with the scope of its trace.**

Hypothesis: the slope rule (scope note at the proposition).

Let N(x) = sum_k 1_{x_k < x}. Integrating z' = c (8 - N) almost everywhere, with z continuous, gives

    z(x) = z(0) + c (8x - sum_{k=1}^{16} (x - x_k)_+) = z(0) + c sum_{k=1}^{16} min(x/2, x_k - x/2),

since int_0^x N(y) dy = sum_k (x - x_k)_+, and x/2 - (x - x_k)_+ = min(x/2, x_k - x/2) (both sides equal x/2 for x <= x_k and x_k - x/2 for x > x_k). At x = L, with every x_k <= L, this becomes

    z(L) = z(0) - c (8L - sum_k x_k).

With x_k = 2 l L m_k/pi, the dictionary of the Setting (exact only for constant z, by the correction after the proof), the zero condition z(L) = 0 is z(0) = (2cL/pi)(4 pi - l sum_k m_k), as stated. The slopes c (8 - N(x)) are nonincreasing, so z is concave; if z(0) > 0 and z(L) = 0, then z(x) >= (1 - x/L) z(0) > 0 on [0, L).

*Scope of the trace.* The trace is over the sixteen selected channel values. The equality with a spectral trace assumes a chosen sixteen-dimensional channel space with eigenvalues m_k, or an explicitly normalized projection selecting those values. The physical D_F has additional chirality, conjugation, colour and generation multiplicities, which cannot be dropped from its full trace without specifying that projection. The assignment of the sixteen brane positions to those channels is also part of the proposal. This profile alone does not derive a stabilizing term for the interval modulus. The slope, coordinate and e^phi-to-z conventions are those of the recalled rule.

**Proposition 9.2, items 2 and 3, with the scope of items 4 and 5.**

Hypothesis: the recalled orientifold projections. For V = C^5 ⊗ C^3, the swap of V ⊗ V is the product of the swaps of the two tensor factors, so its eigenspaces combine the symmetric and alternating projectors on the factors:

    Λ²V = (S²C^5 ⊗ 3bar) ⊕ (Λ²C^5 ⊗ 6),
    S²V = (S²C^5 ⊗ 6) ⊕ (Λ²C^5 ⊗ 3bar),

with Λ²3 = 3bar and S²3 = 6. Their dimensions are 15 * 3 + 10 * 6 = 45 + 60 = 105 and 15 * 6 + 10 * 3 = 90 + 30 = 120, which are C(15, 2) and C(16, 2). Splitting the flavour space into two charge-2/3 and three charge-(-1/3) directions, S²C^5 = S²2 ⊕ (2 ⊗ 3) ⊕ S²3 and Λ²C^5 = Λ²2 ⊕ (2 ⊗ 3) ⊕ Λ²3 give the antitriplet counts (6, 6, 3) in S²C^5 and (3, 6, 1) in Λ²C^5, ordered by charges (-2/3, 1/3, 4/3). The full adjoints have dimensions 2(105) + 225 = 435 = dim so(30) and 2(120) + 225 = 465 = dim usp(30).

*Scope of items 4 and 5.* For the assumed Wilson-line action, the antisymmetric or symmetric block has weights a_i + a_j and the mixed block has weights a_i - a_j; hence their field-theory Kaluza-Klein momenta have the displayed shifts (n pi ± (θ_i ± θ_j))/l, with θ = pi a. This calculation leaves out the rest of the open-string spectrum, which also includes oscillator states and their orientifold projections. The sum-weight component with i = j is absent in Λ² and present in S²; neutral diagonal modes remain. The claim of item 5, that a single brane has no string to its own image, holds in this sector. Absence of the same-line component leaves the strings between the top brane and other branes. Moving all stack branes by the same angle makes the mixed-block differences vanish; different individual positions can give nonzero differences. Identifying the resulting Chan-Paton modes with the proposed composites is an additional physical construction. The O8^-/O8^+ projection and global tadpole conditions are recalled, not derived here.

**Proposition 9.3, item 1, with the scope of item 2.**

Choose an antiunitary identification K: V -> Vbar and write

    J(v, w) = (ε K^{-1} w, K v),    X = [[A, B], [B*, D]].

Then JX(v, w) = (ε K^{-1}(B* v + D w), K(A v + B w)) and XJ(v, w) = (ε A K^{-1} w + B K v, ε B* K^{-1} w + D K v). The V -> V component of JX = ε' XJ, the coefficient of v in the first entry, gives

    ε K^{-1} B* = ε' B K,   hence   B = εε' K^{-1} B* K^{-1} = εε' B^T,

the last equality in coordinates in which K is coordinatewise conjugation. Thus εε' = +1 forces B ∈ S²V, and εε' = -1 forces B ∈ Λ²V. For the displayed KO-5, KO-6 and KO-7 conventions the products are all +1. The zero block belongs to both subspaces, so "symmetric if εε' = +1" states the symmetry forced by the sign. For V = C^5 ⊗ C^3 the decomposition of S²V and the counts are those of the proof of Proposition 9.2: Λ²C^5 has multiplicities 3, 6, 1 at charges -2/3, 1/3, 4/3, and S²C^5, hence the colour-3bar part of Λ²V, has 6, 6, 3.

*Scope of item 2.* A J-compatible finite fluctuation can occupy only a subspace of S²V; the algebra, grading and order conditions determine which blocks actually occur. For example, with D = 0 every inner one-form vanishes, despite the symmetry condition. The KO signs alone therefore exclude a nonzero antisymmetric block and leave the full symmetric scalar spectrum to be established. For a circle operator D = -i d/dx with ordinary conjugation J, JD = -DJ. A Hermitian connection satisfying the same sign is purely imaginary and antisymmetric in a real basis; the complexified so(30) representation contains Λ²V and its conjugate. Whether these components survive the particular interval boundary conditions as light scalars requires a separate construction. For distinct multiplets, an off-diagonal block B_12 may be chosen freely, while the full constraint still relates it to B_21 = εε' B_12^T.

*Scope and direction.* The exclusion concerns a Hermitian J-compatible operator between one multiplet and its conjugate, with the stated signs. Distinct multiplets, other real structures or signs, derivative couplings, and circle or interval connection components remain possible directions; each requires its own field and boundary data.

**The branching in section 1.**

The alternative chain follows from 32_C = 16_{+1} ⊕ 16bar_{-1} under U(16) ⊂ SO(32): so(32)_C = Λ²32 = Λ²16 ⊕ Λ²16bar ⊕ (16 ⊗ 16bar), so

    496 = 120_{+2} ⊕ 120bar_{-2} ⊕ 255_0 ⊕ 1_0.

Under SU(15), 16 = 15 ⊕ 1 and 120 = Λ²(15 ⊕ 1) = 105 ⊕ 15. With 15 = 5 ⊗ 3, the plethysm of Proposition 9.2 gives

    105 = Λ²(5 ⊗ 3) = (15, 3bar) ⊕ (10, 6),

with S²5 = 15 and Λ²5 = 10, and 15 ⊗ 15bar = (5 ⊗ 5bar, 3 ⊗ 3bar) = (24, 8) ⊕ (24, 1) ⊕ (1, 8) ⊕ (1, 1). The antitriplet charge multiplicities are those checked in Proposition 9.2. These group products are Lie-algebra shorthand; global embeddings involve finite central quotients.

*Scope.* The SO(2) plane is a colour singlet. Assigning it to a top brane is a label in the proposed dictionary and does not by itself construct a colour-triplet top field. Chan-Paton bilinearity and matching representation counts likewise do not by themselves establish dynamical quark composites. The comparison with the paper's text is the reading of its LaTeX source in section 1.

**The E_1 surfaces in section 5, item 1.**

The two degree-eight surfaces have different root lattices orthogonal to the canonical class. On dP_1, let H^2 = 1, e^2 = -1, H · e = 0 and K = -3H + e. If D = aH + b e is orthogonal to K, then D · K = -3a - b = 0, so b = -3a and D^2 = a^2 - b^2 = -8a^2. There is no integral class with D^2 = -2. On P^1 x P^1, with ruling classes R_1, R_2 (R_1^2 = R_2^2 = 0, R_1 · R_2 = 1) and K = -2R_1 - 2R_2, the difference R_1 - R_2 is orthogonal to K and has square -2. These surfaces therefore cannot be interchanged in the root-lattice comparison. In the usual local engineering description (recalled), P^1 x P^1 gives E_1, whereas dP_1 = F_1 gives the distinct Ẽ_1 theory.

For dP_2, with exceptional classes e_1, e_2 and K = -3H + e_1 + e_2, the class e_1 - e_2 is orthogonal to K and has square -2; the orthogonal lattice has rank two, consistent with an A_1 factor and an additional abelian direction. The dP_2 comparison is compatible with the expected A_1 root. This computation alone does not construct the corresponding five-dimensional field theory or the type I' duality, and the brane-to-geometry map remains conditional on the cited dualities.

*Sources.* The distinction between the two degree-eight engineering models is also stated in a secondary [geometric-engineering discussion](https://github.com/bwuebben/global-higgs-branch/blob/d0d815886953bdc051f0c6c28247aa184a896518/papers/01-global-constraints/sections/02_local_sectors.tex#L328-L343). The Seiberg and Morrison-Seiberg sources are recalled. The occurrence of CP^2 and CP^1 in the separate six-dimensional base does not by itself identify that compactification with a local dP_2.

**The Weyl action in section 5, item 2.**

A Weyl transformation of E8 acts by conjugation on an E8 holonomy and gives a lattice automorphism in the heterotic circle frame. Whether it acts as a symmetry of a fixed compactification depends on all of its background and boundary data.

Let T ⊂ E8 be a maximal torus. An element w ∈ W(E8) = N(T)/T has a representative g ∈ N(T), and the constant gauge transformation by g sends a holonomy W ∈ T to g W g^{-1} ∈ T. Thus the holonomy alone determines the same gauge orbit. The corresponding isometry w ⊕ 1 of E8 ⊕ E8 ⊕ II_{1,1} is an element of the automorphism group of the nine-dimensional Narain lattice. Proposition 5.2 places the transposition M in that Weyl group.

If a bundle, a defect, an algebra embedding or a distinguished set of zero modes is held fixed, the same g need not preserve it. Transforming the entire configuration produces a gauge-equivalent description when the transformation is allowed; an exchange relative to fixed colour and family structures needs an explicit action on those structures. The root no-go applies to its stated three-slot configuration, while bundle zero modes remain an open escape.
