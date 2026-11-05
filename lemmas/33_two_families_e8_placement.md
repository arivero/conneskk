# The two families of 84 and the M2 and M5 sides

*Lemma 33. Written as file 04 of the eleven-dimensional line (branch 11D, by another Claude session) and moved here on 4 November 2026 with its text unchanged; its proposals keep their labels, and the plan and the unfinished files of that line are in [historical/11D/](../historical/11D/README.md). Internal references to "file 0n" of that line mean the lemma with the same content: 01 is lemma 31, 02 is 32, 03 is 39, 04 is 33, 05 is 34, 06 is in historical/11D, 07 is 40, 08 is 35, 09 is 36, 10 is 37, 11 is 38.*

Part of the 11D line of research ([README](../historical/11D/README.md), [PLAN](../historical/11D/PLAN.md)). Attempted by Claude (Anthropic), 4 Nov 2026. Propositions 4.1 to 4.3 and Theorem 4.4 and Propositions 4.5, 4.6 are proved here by hand (branching rules and counting), with further proofs by Terra 6.1 at the end; readings are labelled as proposals.

## The question

[Lemma 21](21_top_counting.md), Proposition 21.3: with three generations and Dirac neutrinos, dim H_F = 96 = 84 + 12 in two ways,

    F1 = all states except the top          (the top: 3 colours x 4 = 12 states),
    F2 = all states except the neutrinos    (the neutrinos: 3 generations x 4 = 12 states),

where 4 counts chirality and particle/antiparticle. The two families overlap in the 72 states of the charged fermions other than the top. Lemma 21 proposed relating one family to C_3 (or the M2-brane) and the other to C_6 (or the M5-brane), with the exchange of the top and the neutrinos as the content of the duality on the Standard Model side, and recorded that equal numbers are insufficient. The files 02 and 03 showed that colour-equivariant identifications through the little group or through Kaluza-Klein modes on the Witten space fail (Proposition 3.8, Corollary 3.9). This file asks the question in the Hořava-Witten wall group E8 and in the finite geometry.

## 1. What singles out the two blocks

**Proposition 4.1.** Consider blocks of 12 states made of whole Dirac species (all colours, both chiralities, particles and antiparticles; 12 states for a quark species, 4 for a lepton species). The blocks whose removal keeps both spectral-action values of lemma 21, cos^2 theta_NC = 5/8 and kappa_em/kappa_s = 8/3, are exactly: one up-type quark (u, c or t), and the three neutrinos together. So F1 (with the top, the heavy up-type quark) and F2 are the two kinds of solutions: a charged one and a neutral one.

**Proof.** A 12-state block of whole species is one quark species or three lepton species. By Proposition 21.1, with the totals (sum T_3 Q, sum Y Q; Q^2, colour) = (6, 10; 32, 12) and cos^2 theta_NC = (sum Y Q)/(sum T_3 Q + sum Y Q), removing a quark keeps both values only for an up-type quark, (1, 5/3; 16/3, 2). For three lepton species with k charged leptons, each contributing (1/2, 3/2; 4, 0), the angle becomes (10 - 3k/2)/(16 - 2k), which is 5/8 only for k = 0; neutrinos contribute zero to all four sums. ∎

**Reading at the 9 label.** At the 9 label the light gauge algebra is colour plus electromagnetism (canonical §3, lemma 21). H_F then splits into three parts: the 72 charged light states (F1 ∩ F2), the 12 neutrino states, which carry no charge of that algebra and are free, and the 12 top states, which are charged and infinitely heavy. F1 = charged light + free light; F2 = charged light + charged heavy. The exchange of lemma 21 exchanges the block that decouples through zero charge with the block that decouples through infinite mass.

## 2. Colour obstructions

**Proposition 4.2.** (a) As representations of colour SU(3), F1 = 10 (3 + 3bar) + 24 (1) and F2 = 12 (3 + 3bar) + 12 (1); they are not isomorphic. Hence no unitary of H_F commuting with colour maps F1 onto F2, and no automorphism of the finite spectral triple of the Standard Model does. (b) Any tensor-factor-preserving bijection of the top block onto the neutrino block that is linear in each index exchanges the colour index of the top (r, g, b) with the generation index of the neutrinos (e, mu, tau).

**Proof.** (a) Counting: F1 has the five quarks other than the top (5 x 2 triplet pairs, counting chirality) and 24 leptonic states; F2 has the six quarks and 12 charged-lepton states. Colour acts through A_F. (b) The top block is C^3_colour ⊗ e_3 ⊗ C^4 (third generation, 4 for chirality and conjugation) and the neutrino block is e_lepton ⊗ C^3_generation ⊗ C^4 in the Pati-Salam form C^4_colour ⊗ C^3_generation of the up-type sector; a map of the first onto the second that respects the tensor factors sends C^3_colour to C^3_generation. ∎

So an exchange needs a structure in which colour and generation can be exchanged; a structure in which colour acts and generations do not admits none.

**Proposition 4.3 (complex case of Proposition 3.8).** For every homomorphism SU(3) -> SU(9), the colour content of Λ^3 C^9 is not that of F1 or F2. Λ^3 C^9 contains only 1, 3 and 3bar exactly when C^9 is 9 (1), 3 + 6 (1) or 3bar + 6 (1); for 3 + 6 (1), Λ^3 C^9 = 15 (3) + 6 (3bar) + 21 (1), and for 9 (1) it is 84 (1).

**Proof.** C^9 is a sum of irreducibles of dimensions 1, 3, 6, 8 with total 9. With a sextet: 6 + 3 (1) has the 6 in Λ^1(6) ⊗ Λ^2(3 (1)); 6 + 3 has Λ^3(6) = 10 + 10bar. With an octet: 8 + 1 has Λ^3(8) = 1 + 8 + 10 + 10bar + 27. With two triplets T, T' (each 3 or 3bar) and three singlets: Λ^1(T) ⊗ Λ^1(T') ⊗ Λ^1(1) contains T ⊗ T', which is 6 + 3bar, 6bar + 3 or 8 + 1. With three triplets: T ⊗ T' ⊗ T'' contains a 10, a 10bar, a 15 or a 15bar. With nine singlets there is no triplet. With one triplet and six singlets, Λ^3(3 + 6 (1)) = Λ^3(3) + 6 Λ^2(3) + 15 (3) + 20 (1) = 15 (3) + 6 (3bar) + 21 (1). Neither family has unequal numbers of 3 and 3bar. ∎

Together with Proposition 3.8 (real nine-dimensional representations) this excludes, in that scope, the colour-equivariant route through Λ^3 of a linear nine-dimensional space. The positive construction below places the two blocks, and leaves the two families unidentified.

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

1. the 10 = (Q, u^c, e^c) and the 5 = (D, H_u) lie in g_{1,1}, the C_3 sector;
2. (d^c, L) and N lie in g_{1,1+2t}, and (D^c, H_d) and nu^c lie in g_{1,1-2t}: one pair in the C_6 sector and the other in the gravity sector, according to the sign t; the two choices differ by the Weyl reflection of SU(2)_I;
3. the antiparticles lie in the conjugate pieces g_{2,-b}.

In the left-handed basis, every top field of a particle (t_L in Q, t^c in u^c), and the up-type Higgs, lie in the C_3 sector, and their conjugates in the C_6 sector; t^c is the conjugate of t_R, so the right-handed top state lies in the C_6 sector. The left-handed particle fields of the neutrinos (a = 1) lie outside the C_3 sector, nu_L and nu^c in different sectors (C_6 and gravity); their conjugates do not, since conj(nu_L) lies in C_3 for t = +1/2. With conjugates, the top block has (C_3, C_6, gravity) = (6, 6, 0) and the neutrino block (3, 3, 6), for both signs of t; a conjugation-closed block always has equal C_3 and C_6 counts. With three families and antiparticles, the 96 states of H_F split as 45 (C_3) + 45 (C_6) + 6 (gravity: nu^c and its conjugate) for t = +1/2, and 33 + 33 + 30 for t = -1/2.

**Proof.** b ≡ a + 2 T_3, with T_3 = 0 on the 10 and the 5, and T_3 = ±t on the doublet members; for antiparticles a = 2 and T_3 changes sign. The counts follow per family: for t = +1/2, C_3 holds the 10 and the 5 of antiparticles (15), C_6 their conjugates, gravity nu^c and its conjugate; for t = -1/2, C_3 holds the 10 and the conjugate of nu^c (11), C_6 their conjugates, gravity the 5bar and the 5 (10). ∎

## 5. Yukawa couplings as brackets

**Proposition 4.5.** Suppose the cubic couplings of the matter come from the structure constants of e8, as in heterotic and Hořava-Witten compactifications, and both gradings are symmetries, so that a coupling needs grades summing to (0, 0) mod 3. Take H_u in the 5 ⊂ g_{1,1} and H_d in 5bar_10 ⊂ g_{1,1-2t}. Then, for either sign t:

1. the up-type Yukawa couplings Q u^c H_u have all three fields in the C_3 sector;
2. the down-type, charged-lepton and Dirac-neutrino couplings Q d^c H_d, L e^c H_d and L nu^c H_u have one field in each of the three sectors;
3. in Dirac form, the top mass is ad(<H_u>) : g_{1,1} -> g_{2,2}, the wedge Λ^3 -> Λ^6 with the Higgs trivector, while the Dirac-neutrino mass is a bracket that passes through the gravity sector: Λ^6 -> sl(9) (levels 1 + 2 = 3) for t = +1/2, sl(9) -> Λ^3 for t = -1/2.

**Proof.** Grades from Theorem 4.4: (1, 1) three times for the up type; for the others the b-grades are {1, 1 + 2t, 1 - 2t} = {1, 2, 0}. The Dirac masses pair the left-handed field with the conjugate of the right-handed one, through the Killing form between g_{a,b} and g_{-a,-b}. ∎

Exact family SU(3) allows only epsilon_{ijk} (the Z_3 family grading alone allows more tensors), and with one Higgs this gives the family matrix Y_ij = epsilon_ijk h_k, of rank two with two equal singular values, so no isolated top mass (end of the lemma); in compactifications the family label is a cohomology label and the couplings are intersection numbers. The M-grading survives when its element commutes with the structure group of the bundle: for the standard embedding, s_M = s_f exp(2 pi i (2/3) T_3), a product of the centre of the holonomy SU(3) and an element of SU(2)_I ⊂ E6, which does.

**Reading (proposal).** The up-type Yukawa couplings are the only Standard Model Yukawa couplings inside one sector, and that sector's bracket is the C_3 ∧ C_3 -> C_6 term, metric-independent; the other couplings use one field of each sector, including the gravity sector. The top, the only fermion with a Yukawa coupling of order one and the one singled out by the spectral action in lemma 21, takes its mass from the C_3 bracket.

## 6. The Chevalley involution and the real structure J

**Proposition 4.6.**

1. No automorphism of e8 that preserves the family grading maps the C_3 sector of the matter, g_{1,1} (dimension 45), onto its C_6 sector, g_{1,2} (dimension 18).
2. The Chevalley involution theta, the element -1 of the Weyl group of E8, maps g_{a,b} to g_{-a,-b}. It normalizes SU(9), acting as complex conjugation (Λ^3 <-> Λ^6), and on the placed H_F it exchanges every state with its conjugate. It is complex-linear; composed with the coefficient conjugation kappa of a real Chevalley basis it gives the antilinear J = theta kappa, with J^2 = 1, the candidate real structure of the finite geometry (the algebra, the order conditions and J D = D J remain to be established). The family grade a is the four-dimensional chirality in the left-handed basis (a = 1 for the left-handed fields, a = 2 for their conjugates), and J inverts it, as KO-dimension six requires (J gamma = -gamma J).
3. J preserves F1 and F2, which are unions of species with their conjugates.
4. The Weyl reflection of SU(2)_I fixes s_f and replaces b by 2a - b: on the matter (a = 1) it fixes the C_3 sector and exchanges the C_6 and gravity sectors, together with (d^c, L) <-> (D^c, H_d) and nu^c <-> N.

**Proof.** (1) Dimensions. (2) -1 acts on a Cartan subalgebra by -1, so it inverts every element of the maximal torus containing s_f and s_M, and maps the joint eigenspace for (omega^a, omega^b) to that for (omega^{-a}, omega^{-b}); it maps the root system A_8 of SU(9) to itself. (3) Immediate. (4) The reflection inverts T_3 and commutes with SU(3) × SU(6). ∎

**Negative result (scope: e8 with these two gradings, automorphisms preserving the pair up to inversion).** The Chevalley involution, read as the M2/M5 exchange (a proposal), maps each block to its conjugate and leaves the top and neutrino blocks in place. An exchange as in lemma 21 must therefore come from an automorphism that neither preserves nor inverts the family grading; for aligned families, Proposition 5.1 also excludes every element of W(E8) mapping F1 onto F2. The colour-family exchanges inside E8 ⊃ SU(3)^4, where the four SU(3) factors are permuted by the normalizer, are the remaining candidates (PLAN, step 4). What the gradings do give is a placement of the left-handed fields (a = 1): the top on the M2 side, the neutrinos on the M5 and gravity sides; with conjugates the counts are those after Theorem 4.4.

## 7. Agreement with files 02 and 03, and the finite geometry

- **nu^c as the gravitational state.** nu^c is the only Standard Model state with Y = 0, so on the Witten space it is the only one that can be a Kaluza-Klein mode (Proposition 2.4 with Proposal 3.1), while every hypercharged state is a brane state. In e8 with t = +1/2 it is the only Standard Model state in the gravity sector, and every hypercharged state lies in the C_3 or C_6 sector. The two placements agree for t = +1/2; for t = -1/2 the gravity sector holds (d^c, L) instead. We take the agreement as selecting t = +1/2 (proposal).
- **The finite geometry.** On H_F, the family grading is the chirality, J = theta kappa (Proposition 4.6) is the real structure, and the Yukawa blocks of D_F are brackets with the Higgs: the top block maps the C_3 sector to the C_6 sector, the Majorana block acts inside the gravity sector (nu^c with nu^c, t = +1/2). A finite triple built on the graded e8, with D_F = ad(Higgs), is the construction to attempt next (PLAN, step 5).
- **The two families.** F1 removes a block of the C_3 sector (with its conjugate in C_6): the states joined by the cubic C_3 coupling. F2 removes the block that meets the gravity sector. In this sense, for the left-handed fields, the top belongs to the M2 side and the neutrinos to the M5 and gravity sides, which is the correspondence lemma 21 asked for, at the level of the removed blocks; with conjugates the blocks have counts (6, 6, 0) and (3, 3, 6). The two families of 84 are not themselves the 84 of C_3 and the 84 of C_6 (Propositions 3.8, 4.3, 4.6).

## 8. Remark: a discrete symmetry from the M-grading

For t = +1/2, s_M acts on the 27 by omega^b: omega on the 10 and on the 5 (H_u, D), omega^2 on (d^c, L) and N, and 1 on (D^c, H_d) and nu^c. It allows Q u^c H_u, Q d^c H_d, L e^c H_d, L nu^c H_u, N H_u H_d, the Majorana mass of nu^c and the Weinberg operator L L H_u H_u, and forbids the mu term H_u H_d, the dimension-five operators Q Q Q L and u^c u^c d^c e^c, and the trilinear couplings L L e^c, L Q d^c, u^c d^c d^c; the bilinear L H_u is allowed. This is the pattern of E6-inspired models in which the singlet N supplies the mu term. It is a symmetry of the low-energy theory only if the breaking of E6 commutes with s_M; for t = -1/2 the charges change. Stated as a remark; the results above do not use it.

*Scope of the remark.* The selection rule is that of the single element s_M, and it is a symmetry only if the breaking of E6 commutes with s_M. The family grading would forbid (nu^c)^2, L L H_u H_u and L H_u, which s_M allows, since their family grades are 2, 1 and 2.

## 9. What remains open

1. Colour-family exchange in E8 ⊃ SU(3)^4 acting on the placed states: does an element map the top block onto the neutrino block and F1 onto F2? (PLAN, step 4.)
2. A finite real spectral triple on the graded e8 with D_F = ad(Higgs): order zero and order one, and comparison with C + H + M_3(C) (PLAN, step 5).
3. Hořava-Witten dynamics: whether an M5-brane moving into a wall (small-instanton transition) can remove one of the 12-state blocks of Proposition 4.1 (PLAN, step 6).
4. The E11 level decomposition beyond E8, where C_3, C_6 and the dual graviton sit at levels 1, 2, 3: test the assignment 10 -> level 1, (d^c, L) -> level 2, nu^c -> level 0 or 3 (PLAN, step 7).

## References for this file

Recalled without rereading in this session: E. Witten, "On flux quantization in M-theory and the effective action", hep-th/9609122; D.-E. Diaconescu, G. Moore and E. Witten, "E8 gauge theory, and a derivation of K-theory from M-theory", hep-th/0005090; P. West, "E11 and M theory", hep-th/0104081, for the level decomposition and the commutator of the level-one generators; E. Cremmer and B. Julia (1979) for E8(8) in three dimensions; E. B. Vinberg and A. G. Elashvili (1978) for the Z_3-graded e8 and trivectors of C^9; the E6 subgroup chains are standard (R. Slansky, Phys. Rep. 79 (1981) 1).

## Further proofs (Terra 6.1, 4 November 2026)

**Proposition 4.2(a), with the scope of 4.2(b).**

The colour multiplicities are

    F1 = 10 (3 + 3bar) + 24 (1),    F2 = 12 (3 + 3bar) + 12 (1):

each quark species of 12 states gives two triplets and two antitriplets (particle and antiparticle, two chiralities); F1 holds five quark species and the 24 lepton states, and F2 holds the six quark species and the 12 charged-lepton states. An intertwiner preserves the isotypic components, so no colour-commuting unitary exchanges F1 and F2. Even a colour-group automorphism preserves the dimension of the invariant subspace, which is 24 for F1 and 12 for F2.

For 4.2(b), the stated conclusion holds for a tensor-factor-preserving bijection identifying the top's colour factor with the neutrinos' family factor. Linearity in each index alone does not imply this: every linear map on the tensor product is multilinear in its arguments, and a unitary may entangle the three-dimensional index with the four-dimensional chirality/conjugation index. Such a unitary need not be a flip of tensor factors.

**Proposition 4.3 in full.**

The irreducible SU(3) representations of dimension at most nine are 1, 3, 3bar, 6, 6bar and 8: the irreducible of highest weight (p, q) has dimension (p + 1)(q + 1)(p + q + 2)/2, and the next values are 10 and 15. So C^9 is a sum of irreducibles of dimensions 1, 3, 6, 8 with total 9, and the cases are the following.

1. 8 + 1. Λ^3(8 + 1) = Λ^3 8 + Λ^2 8, and Λ^2 8 contains a 10: identify 8 with sl_3(C); the vector E_13 ∧ E_12 is killed by ad E_12 and ad E_23 (the only nonzero bracket, [E_23, E_12] = -E_13, produces E_13 ∧ E_13 = 0) and has weight 2 alpha_1 + alpha_2 = (3, 0), so it generates a 10.
2. 6 + 3 (1). Λ^1(6) ⊗ Λ^2(3 (1)) = 3 (6) is a summand, so the exterior cube has a 6.
3. 6 + 3 or 6 + 3bar. Λ^3 6 is a summand and contains both 10 and 10bar: in 6 = Sym^2 C^3, with coordinates x, y, z, the highest-weight vectors

       x^2 ∧ xy ∧ xz,    x^2 ∧ xy ∧ y^2

   are killed by the raising operators x d/dy and y d/dz and have weights (3, 0) and (0, 3) respectively. Their dimensions already sum to C(6, 3) = 20, so Λ^3 6 = 10 + 10bar. The conjugate cases are analogous.
4. Two triplets T, T' (each 3 or 3bar) and three singlets. The cube contains T ⊗ T' ⊗ 1, hence T ⊗ T', which is 6 + 3bar, 6bar + 3 or 8 + 1: a 6, 6bar or 8.
5. Three triplets. The cube contains T ⊗ T' ⊗ T'', which contains a 10, 10bar, 15 or 15bar (3 ⊗ 3 ⊗ 3 contains 10, and 3 ⊗ 3 ⊗ 3bar contains 6 ⊗ 3bar, which contains 15; the others are conjugate).
6. One triplet and six singlets:

       Λ^3(3 + 6 (1)) = Λ^3 3 + 6 Λ^2 3 + 15 (3) + 20 (1) = 15 (3) + 6 (3bar) + 21 (1),

   using Λ^3 3 = 1, Λ^2 3 = 3bar, C(6, 2) = 15 and C(6, 3) = 20. Its conjugate has the multiplicities of 3 and 3bar reversed.
7. The trivial representation 9 (1), with Λ^3 C^9 = 84 (1).

None gives either target: both targets contain equally many 3 and 3bar, as well as nonzero triplets, while cases 1 to 5 contain a 6, 6bar, 8, 10, 10bar, 15 or 15bar, case 6 and its conjugate have unequal numbers of 3 and 3bar, and case 7 has no triplet. Only cases 6 and 7 contain nothing beyond 1, 3 and 3bar, which is the "exactly" clause.

*Scope and direction.* This concerns the full exterior cube of a complex nine-dimensional linear SU(3) representation and the stated colour action on F1 and F2. Other dimensions, non-equivariant identifications, nonlinear or brane constructions, and maps that do not preserve the colour action remain possible directions.

**Lemma 4.A and the grades in Theorem 4.4.**

Let 9 = (3, 1)_{-2} ⊕ (1, 6)_1. The exterior-power expansion Λ^3(A ⊕ B) = Λ^3 A ⊕ (Λ^2 A ⊗ B) ⊕ (A ⊗ Λ^2 B) ⊕ Λ^3 B, with Λ^3 3 = 1, Λ^2 3 = 3bar, Λ^2 6 = 15 and Λ^3 6 = 20, gives

    Λ^3 9 = (1, 1)_{-6} ⊕ (3bar, 6)_{-3} ⊕ (3, 15)_0 ⊕ (1, 20)_3.

The adjoint, 9 ⊗ 9bar minus the trace, contains (8, 1)_0 ⊕ (1, 35)_0 ⊕ (1, 1)_0 ⊕ (3, 6bar)_{-3} ⊕ (3bar, 6)_3, and Λ^6 9 is the conjugate of Λ^3 9. The family centre gives grade a = 1 on 3, a = 2 on 3bar and a = 0 on singlets. Comparing the three columns (b = 0 on sl(9), b = 1 on Λ^3, b = 2 on Λ^6) yields

    b ≡ a + q/3 = a + 2 T_3   (mod 3),

including the singlet terms of charges ±6: for instance (1, 1)_{-6} has a + q/3 = -2 ≡ 1, and (3bar, 6)_{-3} has a + q/3 = 2 - 1 = 1. The grade-zero dimensions are 8 + 78 = 86, and the grade-one pieces form 3 ⊗ 27 (18 + 45 + 18 = 81), in agreement with the stated SU(6) × SU(2) ⊂ E6 branching.

*Grades of the generation.* Under SU(5), 15 = 10 + 5 has T_3 = 0. In the quoted E6 charge normalization, T_3 = (psi + chi)/8 gives +1/2 on 5bar_16 and N, and -1/2 on 5bar_10 and nu^c (for example (1 + 3)/8 on 5bar_3 ⊂ 16_1 and (1 - 5)/8 on 1_{-5} ⊂ 16_1); reversing the SU(2)_I Cartan exchanges the two signs. With t = +1/2, the left-handed 16 has grades 10_{b=1} ⊕ 5bar_{b=2} ⊕ 1_{b=0}. Adding its conjugate, with a = 2 and T_3 reversed, gives 15, 15 and 2 states per family in grades 1, 2 and 0, hence 45 + 45 + 6. With t = -1/2 the corresponding counts are 11, 11 and 10, hence 33 + 33 + 30.

*Left-handed basis.* Both t_L ∈ Q and t^c ∈ u^c lie in b = 1, and t^c is the left-handed conjugate of t_R. The right-handed top state lies in b = 2, and the antitop likewise has chiral components in both sectors. The phrase "every top state of a particle" in Theorem 4.4 therefore holds in the left-handed basis. The labels C_3 and C_6 express this algebraic grading; a physical M2/M5 identification requires the corresponding field construction.

**Proposition 4.6, with the block argument.**

*Dimensions.* The branching table gives dim g_{1,1} = 45 and dim g_{1,2} = 18, so no linear automorphism maps the first whole space onto the second.

*Chevalley involution.* The Chevalley involution theta sends each root space g_alpha to g_{-alpha}; consequently it sends g_{a,b} to g_{-a,-b}. It exchanges the two exterior-power sectors and preserves F1 and F2, which include each root together with its negative.

*Real structure.* Let kappa be coefficient conjugation in a real Chevalley basis. Since theta maps the real span of that basis to itself, theta and kappa commute, and J = theta kappa is antilinear with J^2 = 1. With a compatible positive Hermitian form it is antiunitary. On the placed 16 + 16bar states, the grading gamma with signs +1, -1 on family grades 1, 2 obeys J gamma = -gamma J, since J maps family grade a to -a. This establishes these two KO-6 signs for the constructed operators; the spectral-triple algebra, the order conditions and JD = DJ remain to be established. The complex-linear theta alone cannot be the antiunitary J.

*The SU(2)_I reflection.* It sends T_3 to -T_3, so b = a + 2 T_3 becomes b' = a - 2 T_3 = 2a - b (mod 3). It fixes b = 1 at a = 1 and exchanges b = 0 and b = 2, as stated.

*Blocks.* The dimension argument excludes an exchange of the whole joint-graded sectors. The exclusion of the top and neutrino blocks has a separate argument under the specified three-family embedding. In g_1 = 3_f ⊗ 27 their grade-one parts are

    T ∩ g_1 = <e_t> ⊗ U_t,  dim U_t = 6;      N ∩ g_1 = 3_f ⊗ U_nu,  dim U_nu = 2,

with e_t the top's family line, U_t ⊂ 27 spanned by the t_L and t^c states, and U_nu ⊂ 27 spanned by nu_L and nu^c. Both subspaces have dimension 6, so dimensions alone do not separate them. An automorphism phi preserving the family grading preserves g_0 = sl_3 ⊕ e_6 and its two nonisomorphic simple ideals, so it acts on g_0 as a pair (alpha, beta) of automorphisms of sl_3 and e_6. Its restriction to g_1 satisfies phi([x, v]) = [phi(x), phi(v)], so it is an isomorphism of g_1 onto g_1 with the g_0-action twisted by (alpha, beta). That twisted module is isomorphic to 3_f ⊗ 27 only when the twists preserve 3_f and 27, so there are A in GL(3) and B in GL(27) implementing alpha on 3_f and beta on 27; then (A ⊗ B)^{-1} phi is an endomorphism of the irreducible g_0-module 3_f ⊗ 27, a scalar by Schur's lemma. So phi restricted to g_1 is a multiple of A ⊗ B. It sends a subspace supported on one family line to another subspace supported on one family line, and cannot give the neutrino subspace, whose family support is all of 3_f. The same argument applies when the family grading is inverted, with the conjugate module g_2.

*Scope and direction.* This concerns complex-linear automorphisms of the specified graded e8, the aligned 3_f ⊗ 16 embedding, and the top and neutrino blocks just described. Automorphisms that neither preserve nor invert the family grading, other embeddings or state spaces, and dualities not represented by such an automorphism remain open directions. A physical M2/M5 identification also requires its action on the fields and on the finite triple.

**Proposition 4.5, with the family tensor.**

The grade-selection rules and bracket targets hold as algebraic statements; by themselves they establish neither a physical top mass nor its observed family hierarchy.

*Grades.* The up-type triple Q u^c H_u has grades (1, 1) three times, so both Z_3 sums vanish. For the down-type, charged-lepton and Dirac-neutrino triples the second grades are {1, 1 + 2t, 1 - 2t} = {1, 2, 0}, with sum 3 ≡ 0, and the family grades are again 1, 1, 1, with sum zero. The bracket with H_u ∈ g_{1,1} adds (1, 1), so it sends grade b = 1 to b = 2, as claimed. For the neutrino it sends b = 2 to b = 0 when t = +1/2 (L lies at b = 1 + 2t = 2), and b = 0 to b = 1 when t = -1/2 (L lies at b = 0). These are necessary grade conditions; a particular bracket or four-dimensional coupling may still vanish.

*The family tensor.* In the literal 3_f ⊗ 27 realization with exact SU(3)_f invariance, the family part of a cubic involving three grade-one triplets is proportional to epsilon_{ijk}, the invariant of 3 ⊗ 3 ⊗ 3. A Higgs expectation value h_k therefore gives a family matrix proportional to

    Y_{ij} = epsilon_{ijk} h_k.

In the aligned family basis its diagonal entries, including the nominal top-top entry, vanish. For nonzero h this matrix has rank two and two equal nonzero singular values, since, up to the family-index convention,

    (Y^† Y)_{jl} = sum_{i,k,m} conj(epsilon_{ijk} h_k) epsilon_{ilm} h_m = ||h||^2 delta_{jl} - h_j conj(h_l),

that is Y^† Y = ||h||^2 I - h h^†, with eigenvalue ||h||^2 twice and 0 on h. Thus this exact one-Higgs family tensor alone gives no single isolated top mass.

The Z_3 family grading alone allows more tensors than epsilon_{ijk}; epsilon_{ijk} follows from the full SU(3)_f invariance. A compactification in which generation labels are cohomology labels and couplings are overlap integrals may evade the literal triplet-tensor restriction, but its mode functions and intersections must be supplied before the physical Yukawa matrix is identified.

**The selection rule of section 8.**

The remark holds as a selection rule for the single element s_M, assuming it survives the breaking. For t = +1/2 the grades are b(10) = b(H_u) = 1 (Q, u^c, e^c and H_u), b(5bar_16) = b(N) = 2 (d^c, L and N), and b(H_d) = b(nu^c) = 0. Adding grades modulo three gives zero for

    Q u^c H_u (1 + 1 + 1),  Q d^c H_d (1 + 2 + 0),  L e^c H_d (2 + 1 + 0),  L nu^c H_u (2 + 0 + 1),
    N H_u H_d (2 + 1 + 0),  (nu^c)^2 (0),  L L H_u H_u (2 + 2 + 1 + 1),  L H_u (2 + 1),

and grade 2 for

    H_u H_d (1 + 0),  Q Q Q L (1 + 1 + 1 + 2),  u^c u^c d^c e^c (1 + 1 + 2 + 1),
    L L e^c (2 + 2 + 1),  L Q d^c (2 + 1 + 2),  u^c d^c d^c (1 + 2 + 2).

Additional unbroken symmetries may impose further restrictions. In particular, the family Z_3 has to be considered separately if it is also retained.
