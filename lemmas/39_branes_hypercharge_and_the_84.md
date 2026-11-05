# Hypercharge from the three-form, matter from branes, and the two families of 84

*Lemma 39. Written as file 03 of the eleven-dimensional line (branch 11D, by another Claude session) and moved here on 4 November 2026 with its text unchanged; its proposals keep their labels, and the plan and the unfinished files of that line are in [historical/11D/](../historical/11D/README.md). Internal references to "file 0n" of that line mean the lemma with the same content: 01 is lemma 31, 02 is 32, 03 is 39, 04 is 33, 05 is 34, 06 is in historical/11D, 07 is 40, 08 is 35, 09 is 36, 10 is 37, 11 is 38.*

Part of the 11D line of research ([README](../historical/11D/README.md)). Propositions 3.2 and 3.5 and Corollary 3.9 are proved here, and Proposition 3.8 is a negative result in a stated scope, refereed by GPT-6.1 Terra and checked a second time by Claude Sonnet 5.5; the numbered proposals are conjectures to test. Attempted by Claude (Anthropic), 3 Nov 2026. Checks: [checks_11d.py](../historical/11D/checks_11d.py), sections B, E and G, Python with exact fractions. Referee pending.

**Referee note (GPT-6.1 Terra, 4 Nov 2026).** Proposition 3.8 and Corollary 3.9 have been independently checked by hand in their stated scopes; the tensor-mode argument needs the displayed colour action to preserve the background. See the [referee report](../historical/reviews/2026-11-04_terra_check_11d.md#proposition-38-and-corollary-39-colour-and-the-three-form).

**Referee note on Proposition 3.5 (GPT-6.1 Terra).** The classical field equations and curvature condition are independently checked; flux quantization, supersymmetry and stability remain open. See the [report](../historical/reviews/2026-11-04_terra_check_11d.md#proposition-35-magnetic-product-solution).

**Referee note on Proposition 3.2 (GPT-6.1 Terra).** The exterior-algebra representation and charge counts are independently checked. Their realization by wrapped branes remains a proposal; see the [report](../historical/reviews/2026-11-04_terra_check_11d.md#proposition-32-exterior-algebra-of-the-five-bar).

## Setting

[02](32_witten_spaces_hypercharge_quotient.md) realizes the Witten space with Killing spinors as Y_{3,2} = (5bar)//U(1)_Y. Its isometries give SU(3) x SU(2) x U(1)_R, and no tensor Kaluza-Klein mode on it, on an invariant background, carries triality, weak isospin 1/2 or fractional hypercharge (Proposition 2.4). The M-theory vacuum AdS4 x Y_{3,2} is the near-horizon geometry of N M2-branes at the apex of the cone C(Y_{3,2}), with N units of flux of *G_4 through Y_{3,2}. [Lemma 21](21_top_counting.md) proposed relating its two families of 84 states to the three-form C_3, to the M2 or M5 brane, and to their duality. This file connects the two.

## Proposal 3.1 (hypercharge is the Betti vector of Y_{3,2})

In AdS4 x M^{111} the massless vectors are those of the isometries, SU(3) x SU(2) x U(1)_R, and one more from C_3 on the harmonic two-form (b_2 = 1), the Betti multiplet; the Kaluza-Klein states are neutral under it, and only non-perturbative states carry its charge (Fabbri et al., hep-th/9903036 and hep-th/9907219). By Proposition 2.3 the Betti class pairs with the divisors {l(U) = 0} and {m(V) = 0} as 2 and -3, the values of 6Y on d^c and L.

**Proposal.** Identify the Betti U(1) of Y_{3,2} with hypercharge. The gauge group of the vacuum is then

    SU(3) x SU(2) (isometries) x U(1)_Y (from C_3) x U(1)_R (isometry),

thirteen vectors, the Standard Model group and one R-symmetry. With massless W and Z this is the eleven-dimensional vacuum of the v -> 0 limit; the identification is consistent with three facts already established:

1. Tensor Kaluza-Klein modes on an invariant background have Y = 0, as they must by Proposition 2.4, which leaves them only PSU(3) x SO(3) representations; spinors are open.
2. The states with Y != 0 are non-perturbative: M5-branes wrapped on five-cycles and M2-branes wrapped on the two-cycle.
3. The M5 baryons of Fabbri et al. are det U on one five-cycle and det V on the other, with baryonic charges 2N and -3N and representations Sym^N(3bar) and Sym^N(2). For N = 1 they are U in (3bar, 1)_{1/3} and V in (1, 2)_{-1/2}: d^c and L, the 5-bar.

In this reading hypercharge is the homology class of a wrapped fivebrane, 6Y = [Sigma_5] in H_5(Y_{3,2}; Z) = Z, and Witten's 1981 chirality argument, which assumes gauge fields acting by coordinate transformations, no longer covers U(1)_Y. It still covers SU(3) x SU(2) for Kaluza-Klein fermions, so chiral doublets must also be brane states.

## Proposition 3.2 (one generation is the odd part of the exterior algebra of the 5-bar)

**Statement.** As SU(3) x SU(2) x U(1)_Y representations,

    Λ^1(5bar) + Λ^3(5bar) + Λ^5(5bar) = (d^c + L) + (Q + u^c + e^c) + nu^c = 16,
    Λ^0 + Λ^2 + Λ^4 = the conjugates,

and the charge of SO(10)/SU(5) is X = 5 - 2k on Λ^k. The 32 states are the finite Hilbert space of one generation with nu^c (dim H_F = 96 for three).

**Proof.** Enumeration with U, V of charges 2, -3 (Python, section B); the identification of the 16 of SO(10) with the odd forms on C^5 is standard. ∎

The new element is the reading of the generators: U and V are the coordinates whose zero loci are the baryonic five-cycles of Y_{3,2}, so a state of Λ^k carries the total class of k such cycles, which is its 6Y. For example Q = U^1 U^2 V^1 has class 2 + 2 - 3 = 1.

**Conjecture 3.3 (a generation as a Fock space of wrapped fivebranes).** At N = 1, the states of one generation and its conjugate are the states of an exterior algebra generated by five fermionic zero modes, one for each of the cycles {U^i = 0} and {V^A = 0}, with hypercharge the total homology class and X the number of fivebranes. Needed: the fermionic statistics of the wrapped states (from fermionic zero modes of the M5 worldvolume theory on Sigma_5), the regime N = 1, where the supergravity description fails and the M2-brane theory is the abelian quotient of 02, and three generations.

## Proposal 3.4 (the Higgs is the position of the M2-brane, and the massless limit is the apex)

**Referee note (GPT-6.1 Terra, 4 Nov 2026).** The stated coordinate stabilizer is independently checked under the proposed charge assignment. The FI quotient has residual \(\mathbb Z_3\) or \(\mathbb Z_2\) stabilizers on the respective exceptional loci, so it is a partial orbifold resolution. See the [referee report](../historical/reviews/2026-11-04_terra_check_11d.md#proposal-34-higgs-stabilizer-and-the-fi-quotient).

Partially resolve the cone with a Fayet-Iliopoulos parameter: 2|U|^2 - 3|V|^2 = zeta (the quotient keeps Z_3 and Z_2 stabilizers on the exceptional loci, so it is an orbifold; end of the lemma). For zeta < 0 the locus U = 0 is the projective line of the doublet, P(V) = CP^1; for zeta > 0 the locus V = 0 is CP^2.

**Statement (proved part).** On the brane coordinates (U, V), on which the Betti U(1)_Y of Proposal 3.1 acts with charges (2, -3), the value V = (v, 0), U = 0 on the doublet line is fixed by SU(3) and by T_3 + Y, and moved by T_3 - Y. (In the quotient geometry, where U(1)_Y is divided out, the same point is fixed by T_3, which is T_3 + Y up to the quotient.) Q = T_3 + Y gives U the charge +1/3 of d^c and V the charges (0, -1) of (nu, e). (Python, section B2.)

**Proposal.** The scalar that breaks SU(2) x U(1)_Y to U(1)_em is the position of the M2-brane on the doublet line, with the quantum numbers of V, that is of H^* (or of a sneutrino). As zeta -> 0 and the brane moves to the apex, the full group is restored and the near-horizon geometry is AdS4 x Y_{3,2}. So the eleven-dimensional theory reached at v -> 0 is the Freund-Rubin vacuum on the Witten space with Killing spinors, with SU(3) x SU(2) from its isometries and U(1)_Y from C_3. The relation between M_W and zeta, or the brane position, is the next computation (README, item 3).

**Which path this is.** In AdS4 x Y_{3,2} the Kaluza-Klein scale is 1/L with L ~ N^{1/6} l_p, independent of zeta. At fixed N, the limit zeta -> 0 therefore restores the group at a fixed tower: it is the path of the Astra audit (§2.2) on which masslessness opens no dimension, and the eleven dimensions are present above 1/L at every v. A joint family in the sense of [01](31_interval_as_antiperiodic_circle.md) (weak masses vanishing faster than the tower) needs L/l_p -> infinity, so N -> infinity, with the isometry couplings, g^{-2} proportional to the Killing-vector norms times the volume of Y in eleven-dimensional units, going to zero unless compensated (audit §7.2). Large N conflicts with item 3 of Proposal 3.1, which needs N = 1 for the baryons Sym^N(3bar) and Sym^N(2) to be d^c and L. This tension, between the regime in which the matter content is right and the regime in which the dimension opens, is the main obstruction of the M2 side in its present form, stated for the Freund-Rubin vacuum with N units of flux; escapes are N = 1 matter on a separate stack, a varying flux along the family, or a different vacuum.

**Agreement with the audit (its Appendix A).** The audit states independently that the circle bundle of M^{111} has c_1 = 3h + 2u, that the total space is spin, that its geometric U(1) is an R-symmetry, and that hypercharge belongs to the charged module and the gauge lift, since a fixed circle-charge sector acts by a scalar phase. This agrees with Theorem 2.1, Proposition 2.3 for (3, 2), and the placement of hypercharge in Proposal 3.1. The audit also notes that Toeplitz compression on the first holomorphic sector H^0(O(3, 2)), the (10, 3) of Theorem 2.1, item 4, generates the full M_30(C), a noninformative algebra in the sense of STRATEGY T0.

## Proposition 3.5 (a magnetic completion: AdS5 x CP^2 x S^2)

**Statement.** On AdS5 x CP^2 x S^2 with product metric and four-form

    G_4 = f_1 vol(CP^2) + f_2 J ∧ vol(S^2),

with J the Kähler form of CP^2 and orthonormal-frame components f_1, f_2, the equations of eleven-dimensional supergravity hold with Ricci components

    R_AdS = -(f_1^2 + 2 f_2^2)/6,   R_CP2 = f_1^2/3 + f_2^2/6,   R_S2 = 2 f_2^2/3 - f_1^2/6,

so a solution exists with round factors exactly when |f_1| < 2|f_2|.

**Proof.** dG_4 = 0, and *G_4 = vol(AdS5) ∧ (f_1 vol(S^2) + f_2 J), which is closed. G_4 ∧ G_4 is an eight-form on the six-dimensional factor, so it vanishes and d*G_4 + G_4 ∧ G_4/2 = 0. The Einstein equation R_MN = (G_MPQR G_N^PQR - g_MN G^2/12)/12 gives the displayed components and zero off the diagonal (Python, section G, by summing all frame components); each factor is Einstein, and the radii follow from the three values. ∎

Supersymmetry, stability and flux quantization are not checked. The product with flux on KE_4 x S^2 appears in Pope and van Nieuwenhuizen (1989), and supersymmetric AdS5 solutions fibre the S^2 over the Kähler-Einstein base (Gauntlett, Martelli, Sparks and Waldram, hep-th/0402153); both recalled without rereading here.

## Proposal 3.6 (two completions of one base)

The base B_6 = CP^2 x S^2 has isometry SU(3) x SU(2), and its dimension is the KO-dimension of the finite factor. It has two eleven-dimensional completions, both of the form 4 + 1 + 6:

| | electric completion | magnetic completion |
|---|---|---|
| geometry | AdS4 x Y_{3,2}, Y a circle bundle over B_6 | AdS5 x B_6 |
| flux | *G_4 through Y: N M2-branes | G_4 through CP^2 and CP^1 x S^2: M5 charges (N_1, N_2) |
| the "1" | the fibre circle (Proposition 1.1 of [01](31_interval_as_antiperiodic_circle.md)) | the radial direction of AdS5 |
| vectors from C_3 | b_2(Y) = 1: U(1)_Y | b_2(B_6) = 2: U(1)_{h_1} x U(1)_{h_2} |
| further vectors | SU(3) x SU(2) x U(1)_R | SU(3) x SU(2) |
| v -> 0 | the M2-brane at the apex | the infrared end of AdS5 moves to infinity |

Under reduction along the fibre of class (3, 2), the combination of U(1)_{h_1} x U(1)_{h_2} along (3, 2) is replaced by the fibre isometry, and the quotient Z^2/(3, 2) = Z, (x, y) -> 2x - 3y, is hypercharge. The magnetic side therefore carries two abelian factors, a candidate for the fluxed pair needed by Proposition 2.6 together with the universal twist. The magnetic completion realizes the counting of H directly: four-dimensional spacetime on the M5 worldvolume, the interval as the conformal radial coordinate z in (z_UV, z_IR) with M_KK ~ 1/z_IR, as in Higgsless models on an interval, and v -> 0 as z_IR -> infinity.

## Proposal 3.7 (the M2/M5 exchange acts on the Betti vector)

In AdS4, M2-branes on the two-cycle and M5-branes on five-cycles are electric and magnetic for the Betti vector (C_3 = A ∧ omega_2 and C_6 = Ã ∧ omega_5), with Dirac pairing given by the intersection of H_2 and H_5. Which of the two is electric depends on the boundary condition of the bulk vector, and the S operation of Witten's SL(2, Z) action on three-dimensional theories with a U(1) symmetry exchanges them (hep-th/0307041, recalled). With Proposal 3.1 this exchange acts on hypercharge as electric-magnetic duality.

**Test against lemma 21.** S maps charges to monopole charges; it does not permute the 96 states of H_F. The exchange of the top and the neutrinos in lemma 21 is a permutation, so it does not come from this S. In the brane reading, the 84 states of the second family (Q_em != 0) are the states whose fivebrane class 6Y is not cancelled by T_3, after the breaking of Proposal 3.4; the first family (all states except the top) has no reading here. As the origin of the exchange, this points to a property of the top (lemma 21, Proposition 21.1) that the present construction does not see, and away from the M2/M5 duality.

## Proposition 3.8 (no colour-equivariant identification of the 84 with the three-form)

**Statement.** For every homomorphism SU(3) -> SO(9), Λ^3 R^9 ⊗ C is not isomorphic, as an SU(3) representation, to the colour content of either family of 84 in lemma 21: 10 (3 + 3bar) + 24 (1) for the five quarks and all leptons, 12 (3 + 3bar) + 12 (1) for the charged fermions. The same holds for Λ^6 R^9, the polarizations of C_6.

**Proof.** A real nine-dimensional representation has a self-conjugate complexification of dimension 9, which is 9 (1), 3 + 3bar + 3 (1) or 8 + 1 (the sextets and two triplet pairs already exceed 9). In the first case Λ^3 has only singlets. In the second, Λ^2(3) ⊗ 3bar = 3bar ⊗ 3bar contains the 6bar. In the third, Λ^3(8) = 1 + 8 + 10 + 10bar + 27. Both families contain only 1, 3 and 3bar. Λ^6 R^9 is isomorphic to Λ^3 R^9 under SO(9). (Python, section E, by weights.) ∎

**Scope and escapes.** A linear action of colour on the nine transverse directions of the eleven-dimensional little group. Escapes: colour acting on the internal space, outside the little group, a nonlinear or brane realization, or a map that is not colour-equivariant, in which case the equality of the two 84s is an equality of numbers only.

### Corollary 3.9 (the coloured states of the 84 are not Kaluza-Klein modes of C_3 on Y_{3,2})

Under the quotient realization, on a background invariant under the displayed action, every tensor Kaluza-Klein mode of C_3 (or of the metric) on Y_{3,2} carries a representation of PSU(3) x SO(3) (Proposition 2.4), so none is a colour triplet; spinor modes are open. The 60 coloured states of the first family, and the 72 of the second, are therefore not modes of C_3 on Y_{3,2}. Together with Proposition 3.8 this excludes, in their stated scopes, the two direct routes, the little group and the tensor Kaluza-Klein tower, for a colour-equivariant identification. The route left open is the brane one: wrapped M5 and M2 states, which carry triality through their hypercharge class (Proposition 2.4 (a)).

## Summary of the direction

**Referee note (GPT-6.1 Terra, 4 Nov 2026).** The physical identifications in this summary are proposals. The colour exclusions have the stated linear-representation and tensor-mode scopes; other internal spaces, nonlinear actions and brane realizations remain directions. See the [wording audit](../historical/reviews/2026-11-04_terra_check_11d.md#wording-audit-results-and-proposals).

The M2 and M5 details of lemma 21 enter in a specific place. Hypercharge is the C_3 vector of the Witten space with Killing spinors, the 5-bar consists of the N = 1 fivebrane baryons, the Higgs is the M2 position, and the M2/M5 exchange is the electric-magnetic duality of hypercharge. The count 84 of C_3 does not survive as a colour-equivariant identification. The next computations are in the README.

## Referee proofs (GPT-6.1 Terra, 4 November 2026)

The arguments below are those of the referee report on the 11D line, written out in the notation of this lemma; the report in historical/reviews/ stays as the provenance record.

**Independent proof of Proposition 3.8.**
*From the referee report on the 11D line, section 'Proposition 3.8 and Corollary 3.9: colour and the three-form', transferred verbatim in substance on 4 Nov 2026.*

Hypothesis: a linear colour action on the nine transverse directions.

An irreducible complex SU(3) representation with highest weight (p, q) has dimension (p + 1)(q + 1)(p + q + 2)/2. The only irreducibles of dimension at most nine are 1, 3, 3bar, 6, 6bar and 8. The complexification of a real representation is self-conjugate, so a sextet needs its conjugate (12 > 9) and two triplet pairs have dimension 12. Dimension nine therefore leaves exactly

    9 (1),    3 + 3bar + 3 (1),    8 + 1.

The first exterior cube is trivial. In the second,

    Λ^2 3 ⊗ 3bar = 3bar ⊗ 3bar = 6bar + 3

is a summand of the exterior cube. In the third, Λ^3(8 + 1) = Λ^3 8 + Λ^2 8, and Λ^2 8 contains a 10: identify 8 with sl_3(C); the vector E_13 ∧ E_12 is killed by the two positive simple root operators ad E_12 and ad E_23 and has highest weight (3, 0), so it generates a 10. Neither target colour representation contains a 6bar or a 10, and the trivial case contains no triplets.

The decomposition used in the proof above also holds:

    Λ^3 8 = 1 + 8 + 10 + 10bar + 27.

E_13 ∧ E_12 ∧ E_23 is a highest-weight vector of weight 2 alpha_1 + 2 alpha_2 = (2, 2): the only nonzero brackets with the raising operators, [E_12, E_23] = E_13 and [E_23, E_12] = -E_13, produce a repeated factor E_13. E_13 ∧ E_12 ∧ H, with H a nonzero Cartan element satisfying alpha_2(H) = 0, has highest weight (3, 0). Conjugation supplies (0, 3), and the invariant Cartan three-form (X, Y, Z) -> tr(X [Y, Z]) supplies 1. The (1, 1)-weight space of Λ^3 8 has dimension five (E_13 ∧ H_1 ∧ H_2, E_12 ∧ E_23 ∧ H_i for a basis H_1, H_2 of the Cartan subalgebra, and E_13 ∧ E_alpha ∧ E_{-alpha} for alpha = alpha_1, alpha_2), while each of the two spaces reached from it by the simple raising operators, of weights (3, 0) and (0, 3), has dimension two (E_13 ∧ E_12 ∧ H_i and E_13 ∧ E_23 ∧ H_i). Their joint kernel therefore supplies a highest-weight 8. The dimensions sum to 1 + 8 + 10 + 10 + 27 = 56 = C(8, 3), exhausting the exterior cube. Orientation and the Hodge star give Λ^6 R^9 ≅ Λ^3 R^9 equivariantly.

**Independent proof of Corollary 3.9.**
*Same section of the referee report, transferred verbatim in substance on 4 Nov 2026.*

The colour centre acts trivially on Y_{3,2}: for omega = e^{2 pi i/3}, (omega I_3, I_2) is a transformation of the quotient circle, obtained from lambda = e^{4 pi i/3}, since (lambda^2, lambda^{-3}) = (e^{8 pi i/3}, 1) = (omega, 1). Its induced action on every tensor bundle is the identity. Thus tensor fields contain only colour representations with trivial centre, which excludes 3 and 3bar. The same argument applies to tensor modes of C_3 and of the metric. It is enough that the displayed colour action preserve the background metric and flux; an identification of the full isometry group is unnecessary.

*Scope and direction.* The first result concerns exterior powers of a linear real nine-dimensional colour representation; the second concerns tensor modes on the stated quotient with the stated action. Colour acting on other internal spaces, nonlinear or brane realizations, and maps without colour equivariance remain open directions.

**Independent proof of Proposition 3.5.**
*From the referee report on the 11D line, section 'Proposition 3.5: magnetic product solution', transferred verbatim in substance on 4 Nov 2026.*

Scope: a classical local supergravity solution with scaled Einstein factors. Flux quantization, global consistency, supersymmetry and stability remain separate questions.

Choose an orthonormal frame e^1, ..., e^4 on CP^2 and e^5, e^6 on S^2, with J = e^{12} + e^{34}, and write

    G = f_1 e^{1234} + f_2 (e^{1256} + e^{3456}).

Then G^2 = G_MNPQ G^MNPQ = 4! (f_1^2 + 2 f_2^2) = 24 (f_1^2 + 2 f_2^2). The contraction G_aPQR G_a^PQR, with no sum over a, is 3! (f_1^2 + f_2^2) = 6 (f_1^2 + f_2^2) in a CP^2 direction (each such index lies in e^{1234} and in one of the two f_2 terms), 3! (2 f_2^2) = 12 f_2^2 in an S^2 direction, and zero in an AdS direction. The mixed contractions with a != b vanish, since no two components of G share three indices. Substitution in the Einstein equation R_MN = (G_MPQR G_N^PQR - g_MN G^2/12)/12 gives

    R_AdS = -(f_1^2 + 2 f_2^2)/6,    R_CP2 = f_1^2/3 + f_2^2/6,    R_S2 = 2 f_2^2/3 - f_1^2/6;

for instance R_CP2 = (6 (f_1^2 + f_2^2) - 2 (f_1^2 + 2 f_2^2))/12. The forms J, vol(CP^2), vol(S^2) and the AdS volume form are parallel, so dG = d*G = 0. Also G ∧ G = 0, since it is an eight-form entirely on the six-dimensional compact factor.

Positive curvature of the S^2 factor, 2 f_2^2/3 > f_1^2/6, is equivalent to |f_1| < 2|f_2|. This also makes the other compact curvature positive and the AdS curvature negative. The radii are then determined by the three Einstein constants. Here "round factors" means the standard scaled Fubini-Study metric on CP^2 and the round metric on S^2.

**Independent proof of Proposition 3.2.**
*From the referee report on the 11D line, section 'Proposition 3.2: exterior algebra of the five-bar', transferred verbatim in substance on 4 Nov 2026.*

The representation and charge count is the standard spinor construction. Identifying these algebraic states with wrapped-brane states remains conditional on Proposal 3.1 and Conjecture 3.3.

Write 5bar = U ⊕ V, with U = (3bar, 1)_{1/3} and V = (1, 2)_{-1/2}. The terms of Λ^3 5bar are

    Λ^3 U = e^c,    Λ^2 U ⊗ V = Q,    U ⊗ Λ^2 V = u^c,

with respective 6Y charges 6, 4 - 3 = 1 and 2 - 6 = -4, using Λ^3 3bar = 1, Λ^2 3bar = 3 and Λ^2 2 = 1. Λ^1 5bar = d^c + L, and Λ^5 5bar = nu^c, since the determinant charge is 3(2) + 2(-3) = 0. The odd degrees therefore have dimension 5 + 10 + 1 = 16; the even degrees are their conjugates, since Λ^k 5bar is dual to Λ^{5-k} 5bar when the determinant is trivial, and have dimension 16. Three generations give 96 complex finite-Hilbert-space states. The conventional SO(10)/SU(5) charge X = 5 - 2k gives 3, -1 and -5 on the three odd degrees.

The divisor classes from Proposition 2.3 can be added formally with the same weights 2 and -3. A physical identification of those exterior generators with fermionic wrapped-fivebrane states requires the proposed brane construction and its statistics.

**Independent proof of the proved part of Proposal 3.4, and the stabilizers of the FI quotient.**
*From the referee report on the 11D line, section 'Proposal 3.4: Higgs stabilizer and the FI quotient', transferred verbatim in substance on 4 Nov 2026.*

The coordinate charge calculation holds assuming the proposed action of the Betti U(1) on the brane coordinates; identifying that action with the electroweak one is part of the proposal. A nonzero FI parameter gives a partial orbifold resolution, with finite stabilizers along the projective loci below.

*Stabilizer.* On V = (v, 0), U = 0, take T_3 = diag(1/2, -1/2) and Y(V) = -1/2. The first component has (T_3 + Y) V = (1/2 - 1/2) V = 0 and (T_3 - Y) V = V, and SU(3) fixes U = 0. The charges Q = T_3 + Y of the two components of V are 0 and -1, and Q(U) = 0 + 1/3 = 1/3.

*FI quotient.* For the action lambda · (U, V) = (lambda^2 U, lambda^{-3} V) on the level 2|U|^2 - 3|V|^2 = zeta:

- At zeta < 0 every point has V != 0. Points with U != 0 as well have trivial stabilizer (lambda^2 = lambda^3 = 1), and the locus U = 0, V != 0 has stabilizer lambda^3 = 1. This Z_3 acts faithfully on the three transverse U coordinates, by the primitive cube root lambda^2. The coarse exceptional locus is {U = 0}/U(1) = CP^1, with transverse singularity C^3/Z_3.
- At zeta > 0, the locus V = 0, U != 0 has stabilizer lambda^2 = 1, a Z_2 acting by lambda^{-3} = -1, minus the identity, on the two transverse V coordinates. Its coarse exceptional locus is CP^2, with transverse singularity C^2/Z_2.

Thus the FI quotient needs further geometric data to be a smooth resolution.
