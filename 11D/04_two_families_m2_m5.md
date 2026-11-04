# The two families of 84 and the M2 and M5 sides

Part of the 11D line of research ([README](README.md), [PLAN](PLAN.md)). Attempted by Claude (Anthropic), 4 Nov 2026. Propositions 4.1 to 4.3 and Theorem 4.4 and Propositions 4.5, 4.6 are proved here by hand (branching rules and counting); the negative results 4.3 and 4.6 await an independent check; readings are labelled as proposals. Referee pending.

**Referee note (GPT-6.1 Terra, 4 Nov 2026).** Proposition 4.1 and the colour obstructions in Propositions 4.2(a) and 4.3 are independently checked. The tensor-factor conclusion of 4.2(b) needs a factor-preserving map, and the "exactly" clause in 4.3 also needs nonzero triplets: the trivial nine-dimensional representation gives 84 singlets. See the [referee report](../reviews/2026-11-04_terra_check_11d.md#propositions-42-and-43-complex-colour-representations); the other checked results are noted below.

**Referee note on Proposition 4.6 (GPT-6.1 Terra).** The stated sector and block obstructions hold in the scopes in the [referee report](../reviews/2026-11-04_terra_check_11d.md#proposition-46-the-graded-e8-exchange). The Chevalley involution is complex-linear; an antiunitary \(J\) needs an additional conjugation. Its identification with physical M2/M5 duality remains a proposal.

## The question

[Lemma 21](../lemmas/21_top_counting.md), Proposition 21.3: with three generations and Dirac neutrinos, dim H_F = 96 = 84 + 12 in two ways,

    F1 = all states except the top          (the top: 3 colours x 4 = 12 states),
    F2 = all states except the neutrinos    (the neutrinos: 3 generations x 4 = 12 states),

where 4 counts chirality and particle/antiparticle. The two families overlap in the 72 states of the charged fermions other than the top. Lemma 21 proposed relating one family to C_3 (or the M2-brane) and the other to C_6 (or the M5-brane), with the exchange of the top and the neutrinos as the content of the duality on the Standard Model side, and recorded that equal numbers are insufficient. The files 02 and 03 showed that colour-equivariant identifications through the little group or through Kaluza-Klein modes on the Witten space fail (Proposition 3.8, Corollary 3.9). This file asks the question in the Hořava-Witten wall group E8 and in the finite geometry.

## 1. What singles out the two blocks

**Proposition 4.1.** Consider blocks of 12 states made of whole Dirac species (all colours, both chiralities, particles and antiparticles; 12 states for a quark species, 4 for a lepton species). The blocks whose removal keeps both spectral-action values of lemma 21, cos^2 theta_NC = 5/8 and kappa_em/kappa_s = 8/3, are exactly: one up-type quark (u, c or t), and the three neutrinos together. So F1 (with the top, the heavy up-type quark) and F2 are the two kinds of solutions: a charged one and a neutral one.

**Proof.** A 12-state block of whole species is one quark species or three lepton species. By Proposition 21.1, with the totals (sum T_3 Q, sum Y Q; Q^2, colour) = (6, 10; 32, 12) and cos^2 theta_NC = (sum Y Q)/(sum T_3 Q + sum Y Q), removing a quark keeps both values only for an up-type quark, (1, 5/3; 16/3, 2). For three lepton species with k charged leptons, each contributing (1/2, 3/2; 4, 0), the angle becomes (10 - 3k/2)/(16 - 2k), which is 5/8 only for k = 0; neutrinos contribute zero to all four sums. ∎

**Reading at the 9 label.** At the 9 label the light gauge algebra is colour plus electromagnetism (canonical §3, lemma 21). H_F then splits into three parts: the 72 charged light states (F1 ∩ F2), the 12 neutrino states, which carry no charge of that algebra and are free, and the 12 top states, which are charged and infinitely heavy. F1 = charged light + free light; F2 = charged light + charged heavy. The exchange of lemma 21 exchanges the block that decouples through zero charge with the block that decouples through infinite mass.

## 2. Colour obstructions

**Proposition 4.2.** (a) As representations of colour SU(3), F1 = 10 (3 + 3bar) + 24 (1) and F2 = 12 (3 + 3bar) + 12 (1); they are not isomorphic. Hence no unitary of H_F commuting with colour maps F1 onto F2, and no automorphism of the finite spectral triple of the Standard Model does. (b) Any bijection of the top block onto the neutrino block that is linear in each index exchanges the colour index of the top (r, g, b) with the generation index of the neutrinos (e, mu, tau).

**Proof.** (a) Counting: F1 has the five quarks other than the top (5 x 2 triplet pairs, counting chirality) and 24 leptonic states; F2 has the six quarks and 12 charged-lepton states. Colour acts through A_F. (b) The top block is C^3_colour ⊗ e_3 ⊗ C^4 (third generation, 4 for chirality and conjugation) and the neutrino block is e_lepton ⊗ C^3_generation ⊗ C^4 in the Pati-Salam form C^4_colour ⊗ C^3_generation of the up-type sector; a map of the first onto the second that respects the tensor factors sends C^3_colour to C^3_generation. ∎

So the exchange cannot be a symmetry of any structure in which colour acts and generations do not; it needs a structure in which colour and generation can be exchanged.

**Proposition 4.3 (complex case of Proposition 3.8).** For every homomorphism SU(3) -> SU(9), the colour content of Λ^3 C^9 is not that of F1 or F2. Λ^3 C^9 contains only 1, 3 and 3bar exactly when C^9 = 3 + 6 (1) or its conjugate, and then Λ^3 C^9 = 15 (3) + 6 (3bar) + 21 (1).

**Proof.** C^9 is a sum of irreducibles of dimensions 1, 3, 6, 8 with total 9. With a sextet: 6 + 3 (1) has the 6 in Λ^1(6) ⊗ Λ^2(3 (1)); 6 + 3 has Λ^3(6) = 10 + 10bar. With an octet: 8 + 1 has Λ^3(8) = 1 + 8 + 10 + 10bar + 27. With two triplets T, T' (each 3 or 3bar) and three singlets: Λ^1(T) ⊗ Λ^1(T') ⊗ Λ^1(1) contains T ⊗ T', which is 6 + 3bar, 6bar + 3 or 8 + 1. With three triplets: T ⊗ T' ⊗ T'' contains a 10, a 10bar, a 15 or a 15bar. With nine singlets there is no triplet. With one triplet and six singlets, Λ^3(3 + 6 (1)) = Λ^3(3) + 6 Λ^2(3) + 15 (3) + 20 (1) = 15 (3) + 6 (3bar) + 21 (1). Neither family has unequal numbers of 3 and 3bar. ∎

Together with Proposition 3.8 (real nine-dimensional representations) this closes the colour-equivariant route through Λ^3 of a linear nine-dimensional space, in that scope. The positive construction below places the two blocks instead of identifying the two families.

## 3. Two commuting gradings of E8

E8 is the gauge group of each wall in Hořava-Witten theory, and it also models the C-field topologically (Witten 1996, "On flux quantization in M-theory"; Diaconescu, Moore and Witten 2000; recalled). Over C, e8 has an inner automorphism of order three with fixed algebra sl(9):

    e8 = sl(9) ⊕ Λ^3 C^9 ⊕ Λ^6 C^9          (80 + 84 + 84),

with [Λ^3, Λ^3] ⊂ Λ^6 (wedge product), [Λ^3, Λ^6] ⊂ sl(9) (contraction) and [Λ^6, Λ^6] ⊂ Λ^3. In the U-duality algebra e8(8) of eleven-dimensional supergravity on T^8, the decomposition under gl(8) by level (West's level, recalled) places the C_3 shifts at level 1 (Λ^3 of 8, 56 states), the C_6 shifts at level 2 (Λ^6 of 8, 28), the dual graviton at level 3 (8) and gl(8) at level 0; then Λ^3 C^9 = 56 (level 1) + 28 (level -2) and the grading above is the level mod 3. So M-grade b = 1 is one unit of M2 charge (or minus an M5), b = 2 is one unit of M5 charge (or minus an M2), and b = 0 holds the metric and the dual graviton (levels 0 and ±3). The bracket Λ^3 × Λ^3 -> Λ^6 is the algebraic form of the term C_3 ∧ G_4 in G_7 = dC_6 + (1/2) C_3 ∧ G_4, equivalent by duality to the Chern-Simons coupling; Λ^3 × Λ^6 -> sl(9) adds levels 1 + 2 = 3, the dual graviton. Under SO(9) ⊂ SL(9), 248 = 36 + 44 + 84 + 84, the SO(9) content of so(9), the graviton, C_3 and C_6. We call the three pieces the gravity, C_3 and C_6 sectors.

A second element of order three, the centre of SU(3) in E8 ⊃ (SU(3) × E6)/Z_3, gives the family grading e8 = (su(3) ⊕ e6) ⊕ (3, 27) ⊕ (3bar, 27bar), with family grade a = 0, 1, 2. With this SU(3) as family group, (3, 27) holds three families of E6, each containing a generation 16 ⊂ 27, and (3bar, 27bar) holds their conjugates.

**Lemma 4.A (the two gradings commute).** Take SU(9) ⊃ SU(3) × SU(6) × U(1) with C^9 = (3, 1)_{-2} + (1, 6)_{1}, and let s_f be the centre of this SU(3). Then s_f commutes with the SU(9) grading, its centralizer is (SU(3) × E6)/Z_3, the U(1) is the Cartan of the SU(2) in E6 ⊃ SU(6) × SU(2) with charge q = 6 T_3, and the joint pieces g_{a,b} are

| | b = 0 (gravity) | b = 1 (C_3) | b = 2 (C_6) |
|---|---|---|---|
| a = 0 | su(3) + su(6) + u(1): 44 | (1,1)_{-6} + (1,20)_{3}: 21 | (1,1)_{6} + (1,20)_{-3}: 21 |
| a = 1 | (3, 6bar)_{-3}: 18 | (3, 15)_{0}: 45 | (3, 6bar)_{3}: 18 |
| a = 2 | (3bar, 6)_{3}: 18 | (3bar, 6)_{-3}: 18 | (3bar, 15bar)_{0}: 45 |

so that b ≡ a + q/3 = a + 2 T_3 (mod 3).

**Proof.** Λ^3 of (3,1)_{-2} + (1,6)_{1} is (1,1)_{-6} + (3bar,6)_{-3} + (3,15)_{0} + (1,20)_{3}; the adjoint is (8,1) + (1,35) + (1,1) + (3,6bar)_{-3} + (3bar,6)_{3}; Λ^6 is the conjugate of Λ^3. The column a = 0 sums to 86 = 8 + 78 and the row a = 1 to 81 = 3 x 27, which matches E8 ⊃ SU(3) × E6 with E6 ⊃ SU(6) × SU(2): 27 = (15, 1) + (6bar, 2) and 78 = (35, 1) + (1, 3) + (20, 2), the SU(2) triplet being (1,1)_{-6}, the u(1) and (1,1)_{6}. ∎

## 4. Placement of the generation

Let SU(5) ⊂ SU(6) ⊂ E6 be the Georgi-Glashow group, with 15 = 10 + 5 and 6bar = 5bar + 1. The commutant of SU(5) in E6 is SU(2) × U(1), and its SU(2) is the SU(2) of the lemma; we call it SU(2)_I. With SO(10) × U(1)_psi and SU(5) × U(1)_chi, 27 = 16_1 + 10_{-2} + 1_4, 16 = 10_{-1} + 5bar_3 + 1_{-5} and 10 = 5_2 + 5bar_{-2}. The Cartan T_3 of SU(2)_I vanishes on the singlets 10 and 5, so it is proportional to psi + chi: T_3 = t on 5bar_16 and on N = 1_{E6}, and T_3 = -t on 5bar_10 and on nu^c = 1_16, with t = ±1/2. The SU(2)_I doublets are (d^c, D^c), (L, H_d) and (N, nu^c).

**Theorem 4.4 (the generation in the three sectors).** For the generation 16 ⊂ 27 of family grade a = 1:

**Referee note (GPT-6.1 Terra, 4 Nov 2026).** The branching and counts are independently checked. The fields \(t_L,t^c\) are in the left-handed basis; \(t^c\) is an antitop field, so the top particle's two chiralities occupy different sectors. See the [referee report](../reviews/2026-11-04_terra_check_11d.md#lemma-4a-and-theorem-44-the-two-e8-gradings).

1. the 10 = (Q, u^c, e^c) and the 5 = (D, H_u) lie in g_{1,1}, the C_3 sector;
2. (d^c, L) and N lie in g_{1,1+2t}, and (D^c, H_d) and nu^c lie in g_{1,1-2t}: one pair in the C_6 sector and the other in the gravity sector, according to the sign t; the two choices differ by the Weyl reflection of SU(2)_I;
3. the antiparticles lie in the conjugate pieces g_{2,-b}.

So every top state of a particle (t_L in Q, t^c in u^c), and the up-type Higgs, lie in the C_3 sector, and the anti-top in the C_6 sector. The particle neutrinos lie outside the C_3 sector, nu_L and nu^c in different sectors (C_6 and gravity). With three families and antiparticles, the 96 states of H_F split as 45 (C_3) + 45 (C_6) + 6 (gravity: nu^c and its conjugate) for t = +1/2, and 33 + 33 + 30 for t = -1/2.

**Proof.** b ≡ a + 2 T_3, with T_3 = 0 on the 10 and the 5, and T_3 = ±t on the doublet members; for antiparticles a = 2 and T_3 changes sign. The counts follow per family: for t = +1/2, C_3 holds the 10 and the 5 of antiparticles (15), C_6 their conjugates, gravity nu^c and its conjugate; for t = -1/2, C_3 holds the 10 and the conjugate of nu^c (11), C_6 their conjugates, gravity the 5bar and the 5 (10). ∎

## 5. Yukawa couplings as brackets

**Proposition 4.5.** Suppose the cubic couplings of the matter come from the structure constants of e8, as in heterotic and Hořava-Witten compactifications, and both gradings are symmetries, so that a coupling needs grades summing to (0, 0) mod 3. Take H_u in the 5 ⊂ g_{1,1} and H_d in 5bar_10 ⊂ g_{1,1-2t}. Then, for either sign t:

**Referee note (GPT-6.1 Terra, 4 Nov 2026).** The grade selection and bracket targets are independently checked. In the literal exact \(SU(3)_f\) triplet realization, the family tensor is antisymmetric and does not by itself give an isolated top mass; the physical Yukawa matrix needs additional data. See the [referee report](../reviews/2026-11-04_terra_check_11d.md#proposition-45-yukawa-grades-and-family-dependence).

1. the up-type Yukawa couplings Q u^c H_u have all three fields in the C_3 sector;
2. the down-type, charged-lepton and Dirac-neutrino couplings Q d^c H_d, L e^c H_d and L nu^c H_u have one field in each of the three sectors;
3. in Dirac form, the top mass is ad(<H_u>) : g_{1,1} -> g_{2,2}, the wedge Λ^3 -> Λ^6 with the Higgs trivector, while the Dirac-neutrino mass is a bracket that passes through the gravity sector: Λ^6 -> sl(9) (levels 1 + 2 = 3) for t = +1/2, sl(9) -> Λ^3 for t = -1/2.

**Proof.** Grades from Theorem 4.4: (1, 1) three times for the up type; for the others the b-grades are {1, 1 + 2t, 1 - 2t} = {1, 2, 0}. The Dirac masses pair the left-handed field with the conjugate of the right-handed one, through the Killing form between g_{a,b} and g_{-a,-b}. ∎

The family grading alone allows only epsilon_{ijk} in exact family SU(3); in compactifications the family label is a cohomology label and the couplings are intersection numbers. The M-grading survives when its element commutes with the structure group of the bundle: for the standard embedding, s_M = s_f exp(2 pi i (2/3) T_3), a product of the centre of the holonomy SU(3) and an element of SU(2)_I ⊂ E6, which does.

**Reading (proposal).** The up-type Yukawa couplings are the only Standard Model Yukawa couplings inside one sector, and that sector's bracket is the C_3 ∧ C_3 -> C_6 term, metric-independent; the other couplings use one field of each sector, including the gravity sector. The top, the only fermion with a Yukawa coupling of order one and the one singled out by the spectral action in lemma 21, takes its mass from the C_3 bracket.

## 6. In this realization the M2/M5 exchange is the real structure J

**Proposition 4.6.**

1. No automorphism of e8 that preserves the family grading maps the C_3 sector of the matter, g_{1,1} (dimension 45), onto its C_6 sector, g_{1,2} (dimension 18).
2. The Chevalley involution, the element -1 of the Weyl group of E8, maps g_{a,b} to g_{-a,-b}. It normalizes SU(9), acting as complex conjugation (Λ^3 <-> Λ^6), and on the placed H_F it exchanges every state with its conjugate: it is the real structure J of the finite geometry. The family grade a is the four-dimensional chirality in the left-handed basis (a = 1 for the left-handed fields, a = 2 for their conjugates), and J inverts it, as KO-dimension six requires (J gamma = -gamma J).
3. J preserves F1 and F2, which are unions of species with their conjugates.
4. The Weyl reflection of SU(2)_I fixes s_f and replaces b by 2a - b: on the matter (a = 1) it fixes the C_3 sector and exchanges the C_6 and gravity sectors, together with (d^c, L) <-> (D^c, H_d) and nu^c <-> N.

**Proof.** (1) Dimensions. (2) -1 acts on a Cartan subalgebra by -1, so it inverts every element of the maximal torus containing s_f and s_M, and maps the joint eigenspace for (omega^a, omega^b) to that for (omega^{-a}, omega^{-b}); it maps the root system A_8 of SU(9) to itself. (3) Immediate. (4) The reflection inverts T_3 and commutes with SU(3) × SU(6). ∎

**Negative result (scope: e8 with these two gradings, automorphisms preserving the pair up to inversion).** The M2/M5 exchange does not exchange the top with the neutrinos; it exchanges each block with its conjugate. The exchange of lemma 21 must therefore come from an automorphism that does not preserve the family grading. The colour-family exchanges inside E8 ⊃ SU(3)^4, where the four SU(3) factors are permuted by the normalizer, are the remaining candidates (PLAN, step 4). What the gradings do give is a placement: the top on the M2 side, the neutrinos on the M5 and gravity sides.

## 7. Agreement with files 02 and 03, and the finite geometry

- **nu^c as the gravitational state.** nu^c is the only Standard Model state with Y = 0, so on the Witten space it is the only one that can be a Kaluza-Klein mode (Proposition 2.4 with Proposal 3.1), while every hypercharged state is a brane state. In e8 with t = +1/2 it is the only Standard Model state in the gravity sector, and every hypercharged state lies in the C_3 or C_6 sector. The two placements agree for t = +1/2; for t = -1/2 the gravity sector holds (d^c, L) instead. We take the agreement as selecting t = +1/2 (proposal).
- **The finite geometry.** On H_F, the family grading is the chirality, the Chevalley involution is J, and the Yukawa blocks of D_F are brackets with the Higgs: the top block maps the C_3 sector to the C_6 sector, the Majorana block acts inside the gravity sector (nu^c with nu^c, t = +1/2). A finite triple built on the graded e8, with D_F = ad(Higgs), is the construction to attempt next (PLAN, step 5).
- **The two families.** F1 removes a block of the C_3 sector (with its conjugate in C_6): the states joined by the cubic C_3 coupling. F2 removes the block that meets the gravity sector. In this sense the top belongs to the M2 side and the neutrinos to the M5 and gravity sides, which is the correspondence lemma 21 asked for, at the level of the removed blocks. The two families of 84 are not themselves the 84 of C_3 and the 84 of C_6 (Propositions 3.8, 4.3, 4.6).

## 8. Remark: a discrete symmetry from the M-grading

For t = +1/2, s_M acts on the 27 by omega^b: omega on the 10 and on the 5 (H_u, D), omega^2 on (d^c, L) and N, and 1 on (D^c, H_d) and nu^c. It allows Q u^c H_u, Q d^c H_d, L e^c H_d, L nu^c H_u, N H_u H_d, the Majorana mass of nu^c and the Weinberg operator L L H_u H_u, and forbids the mu term H_u H_d, the dimension-five operators Q Q Q L and u^c u^c d^c e^c, and the trilinear couplings L L e^c, L Q d^c, u^c d^c d^c; the bilinear L H_u is allowed. This is the pattern of E6-inspired models in which the singlet N supplies the mu term. It is a symmetry of the low-energy theory only if the breaking of E6 commutes with s_M; for t = -1/2 the charges change. Stated as a remark, not used above.

## 9. What remains open

1. Colour-family exchange in E8 ⊃ SU(3)^4 acting on the placed states: does an element map the top block onto the neutrino block and F1 onto F2? (PLAN, step 4.)
2. A finite real spectral triple on the graded e8 with D_F = ad(Higgs): order zero and order one, and comparison with C + H + M_3(C) (PLAN, step 5).
3. Hořava-Witten dynamics: whether an M5-brane moving into a wall (small-instanton transition) can remove one of the 12-state blocks of Proposition 4.1 (PLAN, step 6).
4. The E11 level decomposition beyond E8, where C_3, C_6 and the dual graviton sit at levels 1, 2, 3: test the assignment 10 -> level 1, (d^c, L) -> level 2, nu^c -> level 0 or 3 (PLAN, step 7).

## References for this file

Recalled, not reread in this session: E. Witten, "On flux quantization in M-theory and the effective action", hep-th/9609122; D.-E. Diaconescu, G. Moore and E. Witten, "E8 gauge theory, and a derivation of K-theory from M-theory", hep-th/0005090; P. West, "E11 and M theory", hep-th/0104081, for the level decomposition and the commutator of the level-one generators; E. Cremmer and B. Julia (1979) for E8(8) in three dimensions; E. B. Vinberg and A. G. Elashvili (1978) for the Z_3-graded e8 and trivectors of C^9; the E6 subgroup chains are standard (R. Slansky, Phys. Rep. 79 (1981) 1).
