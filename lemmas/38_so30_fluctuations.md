# Inner fluctuations of the interval parent with an SO(30) algebra

*Lemma 38. Written as file 11 of the eleven-dimensional line (branch 11D, by another Claude session) and moved here on 4 November 2026 with its text unchanged; its proposals keep their labels, and the plan and the unfinished files of that line are in [historical/11D/](../historical/11D/README.md). Internal references to "file 0n" of that line mean the lemma with the same content: 01 is lemma 31, 02 is 32, 03 is 39, 04 is 33, 05 is 34, 06 is in historical/11D, 07 is 40, 08 is 35, 09 is 36, 10 is 37, 11 is 38.*

Part of the 11D line ([README](../historical/11D/README.md), [PLAN](../historical/11D/PLAN.md)). Attempted by Claude Opus 5.5 on 4 November 2026, to answer the question left in [09](36_dilaton_spectral_and_so32.md): whether the gauge field along the interval of [lemma 22](22_dirac_operator_as_boundary_condition.md) carries the antisymmetric block with the counts of [lemma 21](21_top_counting.md), given that Proposition 9.3 excludes it from the finite triple alone. Numbers in Python (numpy), scripts not kept by the rule of the project.

## Outcome

1. **Yes, under a condition on the walls.** With a real algebra M_30(R) on the light block, the fluctuation along the interval is an so(30) connection, and its block between particles and antiparticles lies in Λ^2 V, with the counts (6, 6, 3) in the colour antitriplet (Proposition 11.2). Massless scalars in exactly Λ^2 V + conjugate appear when both walls reduce the algebra to M_15(C), the commutant of quark number, under the Yang-Mills action with its natural boundary conditions and a gauge action supplied by a unital completion of pi (Theorem 11.3): 210 real scalar and 225 real vector components at tree level.
2. **In lemma 22's own parent the massless scalars are absent.** Its algebra is free at x = 0, so the interval component has no zero mode, for any algebra (Theorem 11.3, item 2).
3. **A generator has a massless vector or a massless scalar, never both, on the interval**, in free five-dimensional Yang-Mills at trivial background. So the whole of Λ^2(30) of lemma 21 cannot be massless scalars with colour unbroken. The antisquark counts appear as scalars, while the slepton part (24, 1) + (1, 1) appears as vectors (Theorem 11.3, item 4), in the two-U(15)-wall model at trivial background; these are tree-level field counts, not a quantum massless spectrum.
4. **The finite window sees a symmetric shadow.** The connection acts on the window, by compression, through its commutator with the masses, B_ij -> (m_i - m_j) B_ij, which maps the (S^2 5, 3bar) of Λ^2 V onto the (Λ^2 5, 3bar) of S^2 V, with counts (3, 6, 1) (Proposition 11.4). This reconciles Propositions 9.2 and 9.3. The kernel is the same-flavour diquarks. The compression is an operator identity; its realization as an inner fluctuation of the algebra at nonzero mass needs a unital completion, since for invertible M every element of the corner algebra of lemma 22 vanishes at x = l.
5. **SO(30) has a precise meaning in the finite geometry:** it is the commutant of the real structure j = J U of lemma 06 on the massless light block, for the sign s = +1, and USp(30) for s = -1 (Proposition 11.1).

## Setting

Let V = C^5 ⊗ C^3, with Q = 2/3 on u, c and Q = -1/3 on d, s, b. In the finite Hilbert space of the five light quarks, with colour, the chirality gamma = +1 subspace is

    H_+ = {q_L} ⊕ {conj(q_R)} = V ⊕ Vbar,

of dimension 30: the left-handed Weyl fields of fifteen Dirac fermions. H_- = {q_R} ⊕ {conj(q_L)}, and J_F exchanges H_+ and H_-, with c = J_F restricted to H_+, as in lemma 22. Let U be a unitary, grading-reversing and J-related as in lemma 06, with U q_L = q_R and U conj(q_R) = s conj(q_L), so U J_F = s J_F U. Then j = U^-1 c is an antiunitary on H_+, with j^2 = s, j q_L = s conj(q_R) and j conj(q_R) = q_L. Here U only defines j: the representation pi below does not commute with U, so this is not a doubling in the sense of lemma 06, in which U commutes with the algebra.

The interval parent is that of lemma 22: D_X = E d/dx on L^2([0, l]; C^2) ⊗ (H_+ ⊕ H_-), with Q in H_+, U-components in H_-, and the wall conditions Q_R(0) = U_L(0) = 0, Q_R(l) = X U_R(l), U_L(l) = -X^* Q_L(l).

## The block

**Proposition 11.1 (the commutant of j).** Let s = +1. In the basis V ⊕ Vbar with j(v, w) = (K^-1 w, K v), the skew-Hermitian a with j a j^-1 = a form so(30), and

    a = [[alpha, B], [conj(B), conj(alpha)]],    alpha^* = -alpha,   B^T = -B,

so, as real vector spaces, so(30) = u(15) ⊕ (Λ^2 V)_R, where u(15) commutes with the complex structure I = (i, -i), the quark number, and the second summand has complex dimension 105 and real dimension 210, with 435 = 225 + 210; the decomposition is not a direct sum of Lie algebras. The Hermitian generator H = i a satisfies j H j^-1 = -H. For s = -1 the same computation gives usp(30) = u(15) ⊕ (S^2 V)_R, of real dimension 225 + 240 = 465.

*Proof.* Linear algebra, with Proposition 8.1 for the groups. For s = +1, j a j^-1 = a gives the block form, and a^* = -a gives alpha^* = -alpha and B^* = -conj(B), that is B^T = -B. Then j (i a) j^-1 = -i a. ∎

So the SO(30) of lemma 21 is the symmetry of the massless block for the sign s = +1, the sign that Proposition 8.1 and STRATEGY T2c associate with label 11 and with the seesaw; and the counts of lemma 21 select the same sign:

| | colour antitriplet | its charges (-2/3, +1/3, +4/3) | colour sextet |
|---|---|---|---|
| s = +1, Λ^2 V | (S^2 5, 3bar) | (6, 6, 3) | (Λ^2 5, 6) |
| s = -1, S^2 V | (Λ^2 5, 3bar) | (3, 6, 1) | (S^2 5, 6) |

## Fluctuations along the interval

Take on the light block D_F = 0, so X = 0, and let C_0, C_l be subalgebras of A = M_30(R), the real elements of End H_+. Let

    A_l = {f in C^infinity([0, l], A) : f(0) in C_0, f(l) in C_l},    pi(f) = f on Q, 0 on the H_- components,

a nonunital representation on the doubled space: pi(1) is the projection onto H_+. A unital completion is pi~(f, r) = f (+) r 1 with a real scalar summand; it is used where a gauge action is needed below.

**Proposition 11.2.** Assume 1 lies in C_0 and C_l.

1. pi(f) preserves the domain, for every choice of C_0, C_l. Order zero and order one hold on this block.
2. The self-adjoint one-forms sum pi(f_i) [D_X, pi(g_i)] are exactly E a_x on the Q components, with a_x in C^infinity([0, l], so(30)), with no condition at the walls. The fluctuated operator is

       D_A = E (d/dx + a_x ⊕ U a_x U^-1).

3. J-hat A J-hat^-1 = E (U a_x U^-1 on H_-), with sign +, as KO-dimension six requires. The block of a_x between Vbar and V is antisymmetric. The two statements agree since E is antisymmetric: the block of the Hermitian operator E a on C^2 ⊗ E is symmetric, as Proposition 9.3, item 2 requires, with B antisymmetric and the factor E carrying the other sign. So the interval component evades Proposition 9.3 through the escape in its item 3.

For D_F != 0 on this block, order one fails in the finite window: [[D_F, pi(a)], J pi(b) J^-1] has the blocks -U b U^-1 M a from H_+ to H_-, and -a M^* U b U^-1 from H_- to H_+, which vanish for all a, b only if M = 0. The corner representation still satisfies order one by the direct pointwise calculation; for invertible M its endpoint matrix corner is zero. Theorem 22.3 assumes a unital represented algebra, so a unital completion must be specified separately: for pi~(f, r) = f (+) r 1 and invertible M the endpoint condition is f(l) = r(l) 1, and the finite order-one failure remains, since with the original corner action a = b = 1 gives the off-diagonal blocks -M^* and -M. So this algebra describes the massless block, and the masses need a treatment without order one, as in lemma 19.

*Proof.* (1) The conditions Q_R = 0 and U_L = 0 at the walls are preserved by any operator acting on the H_+ index. [D_X, pi(g)] = E g' on Q, and J-hat pi(b) J-hat^-1 acts on the H_- components only, so both commutators vanish. (2) Given T, choose tau with support inside (0, l) and the same integral as T, which is a finite sum sum f_i g_i' of functions supported inside the interval (take a compactly supported scalar g with g' = 1 on the support of tau). Take f = 1 and g = int_0^x (T - tau), which vanishes at both walls, so g lies in A_l and g' = T - tau. Self-adjointness of E T, with E skew, requires T skew. (3) J-hat E = E J-hat (direct from the formula for J-hat in Theorem 22.1), and c a c^-1 = U j a j^-1 U^-1 = U a U^-1. ∎

**Theorem 11.3 (zero modes of the interval component).** Let k_0, k_l be the skew parts of C_0, C_l, and assume a five-dimensional Yang-Mills action for the fluctuation on a flat product with M^4, as in Proposition 22.8, with the usual gauge action, which the corner representation pi does not supply by itself (pi(u) J-hat pi(u) J-hat^{-1} = 0) and a unital completion such as pi~ does, and with the Yang-Mills boundary variational problem at trivial background, unrestricted allowed endpoint variations and no wall terms.

1. The gauge group is {g : I -> O(30), g(0) in K_0, g(l) in K_l}, with det g(0) = det g(l); if K_0 or K_l contains reflections it does not act separately on SO(30). The holonomy of a_x transforms as P -> g(l) P g(0)^-1, so the moduli are the double coset K_l \ SO(30) / K_0, and the massless four-dimensional scalars from a_x, before the quotient by the residual four-dimensional gauge transformations, form

       the orthogonal complement of k_0 + k_l in so(30),

   while the vector zero modes form k_0 ∩ k_l. The action supplies the quadratic form and the natural boundary conditions; order one alone supplies no scalar kinetic term, and the complementary Dirichlet and Neumann conditions for A_x need a compatible gauge fixing.

2. In lemma 22's algebra, C_0 = A, so k_0 = so(30), and there are no such scalars, for any algebra of this kind.
3. If C_0 = C_l = M_15(C), the massless scalars are exactly Λ^2 V ⊕ Λ^2 Vbar, 210 real components with colour-antitriplet counts (6, 6, 3), and the massless vectors are u(15), 225 real components.
4. A generator in k_0 ∩ k_l has a massless vector and no massless scalar; a generator in the orthogonal complement of k_0 + k_l has a massless scalar and no massless vector; all others have neither. If the orthogonal projections onto k_0 and k_l commute (aligned walls), the towers are n pi/l in the first two cases, and (n - 1/2) pi/l for a generator in exactly one of k_0, k_l. For nonaligned walls the towers move, and the zero-mode statements are to be read as the subspaces above: k_0 spanned by T_1 and k_l by cos(phi) T_1 + sin(phi) T_2 give k l = n pi +- phi, which is the mechanism of lemma 23; a nontrivial holonomy can change the zero-mode spaces.
5. With colour unbroken at both walls, the (1, 8) of Λ^2(30) is a vector, so Λ^2(30) cannot consist entirely of massless scalars. In item 3, the (24, 8) + (24, 1) + (1, 8) + (1, 1) of lemma 21 are vectors, and the scalars are (15, 3bar) + (10, 6) + conjugates.

*Proof.* (1) A gauge parameter xi(x) with xi(0) in k_0, xi(l) in k_l shifts int a_x by xi(l) - xi(0), so the linear moduli are so(30)/(k_0 + k_l), and a constant a_x in the orthogonal complement is a zero mode of the quadratic form. (2), (3): substitution, with Proposition 11.1. (4) A_mu has Neumann or Dirichlet conditions at each wall according to membership in k_wall, and a_x the opposite, so the mode functions are cos(n pi x/l), sin(n pi x/l) or their half-integer versions. (5) Item 4, and the branching of lemma 21. ∎

*Scope of item 4.* Free five-dimensional Yang-Mills at trivial background, with the gauge action and boundary problem stated in the hypotheses; the counts are tree-level field counts and not a quantum massless spectrum. Escapes: a circle without walls, nontrivial holonomy, brane-localized terms, further internal dimensions.

Note that the choice in item 3 is an input: the domain does not force the wall algebra to M_15(C), since by Proposition 11.2, item 1, every f preserves it at D_F = 0. It says that the walls conserve quark number and the bulk does not. On a circle, without walls, every generator has both a massless vector and a massless scalar, and the whole of Λ^2(30) appears, which is the nine-dimensional adjoint scalar used in [09](36_dilaton_spectral_and_so32.md). A wall condition, or the reflection-even algebra of Proposition 1.1, removes half. So the two readings differ: for the stack off the O8 plane, with holonomy I, diquarks are massive and mesons have massless scalars; on the interval with parity Ad(I), diquarks have massless scalars and mesons have none.

## The shadow in the finite window

**Proposition 11.4.** Let s = +1, M = U Lambda with Lambda real for j and symmetric, and let a_tot = a ⊕ U a U^-1 be a constant bounded perturbation, with the window condition of Theorem 22.1. Then:

1. [D_F, a_tot] has the off-diagonal blocks U S and S U^-1, with S = [Lambda, a] real and symmetric, and [D_F, [D_F, a_tot]] = [Lambda, S] ⊕ U [Lambda, S] U^-1.
2. By Theorem 22.4, the compression of E a_tot to the window is -l^-1 int_0^l sin(x ad_{D_F})(a_tot) dx. For Lambda = diag(m_i) on flavours, on both V and Vbar, the block B_ij goes to

       - ((1 - cos(l (m_i - m_j))) / (l (m_i - m_j))) B_ij,    which is -(l/2)(m_i - m_j) B_ij to leading order, with the continuous value zero at equal masses,

   as a change of Lambda. The result is symmetric, as Proposition 9.3 requires of a finite J-compatible fluctuation.
3. For distinct masses, B -> (m_i - m_j) B_ij maps (S^2 5, 3bar) in Λ^2 V onto (Λ^2 5, 3bar) in S^2 V as vector spaces, with kernel the five same-flavour diquarks (five colour-antitriplet multiplets), and maps (Λ^2 5, 6) into (S^2 5, 6); distinct fixed masses break flavour SU(5), so the map is SU(5)-equivariant between the named representations only with the mass matrix read as a spurion. In charges, (6, 6, 3) - (3, 0, 2) = (3, 6, 1). If the wall condition is imposed on the gauge unitaries g ⊕ U g U^-1, so that k_l is the commutant of Lambda in so(30), then with k_0 = u(15) the massless scalars of Theorem 11.3 are the same off-diagonal blocks. If it is imposed on pi(f) itself, as in the algebra of lemma 22, then k_l = 0 for invertible M.
4. For a universal mass, Lambda = m, the compression vanishes: S = 0, and M = m U is invariant under SO(30). Fifteen Dirac fermions of equal mass are thirty Majorana fermions of equal mass.

*Proof.* (1) Direct multiplication, using a_tot on H_- equal to U a U^-1. S is real and symmetric since a is real and antisymmetric and Lambda real and symmetric. (2) Item 1 gives sin(x ad)(a_tot) = (sin(x delta)/delta) ad(a_tot) on B_ij, with delta = m_i - m_j; integrate. (3) In the colour antitriplet, B is symmetric in flavour, and (m_i - m_j) B_ij is antisymmetric in flavour, hence total symmetric. Colour sextets are analogous. (4) S = 0. ∎ Python: on a small model with V = C^3, reality, symmetry, the blocks of item 1 and their squares; and the compression by direct quadrature of W^*(E a_tot)W, with five flavours in three colours, against Theorem 22.4 and the closed block (to 10^-15).

**Reading.** The commutator [D_F, a] is the form of the Higgs field in Connes' finite geometry, and E a_x is a Kaluza-Klein component along the interval. Theorem 22.4 (3), Q_l([D_X, f]) = [D_F, Q_l(f)], says that the second compresses to the first. Indeed E a_tot = [D_X, f_tot] with f(x) = (x - l) a and f(l) = 0. For invertible M, however, every element of the corner algebra of lemma 22 vanishes at l, hence so does every coefficient sum f_i g_i' of one of its one-forms, so a nonzero constant a_tot is not an inner one-form of that algebra, and f_tot is not one of its elements; the compression identity stands as an operator calculation, and its realization as an inner fluctuation at nonzero mass needs a unital completion and a construction of the real one-form there. With that construction, in this parent, to first order and for the fixed compression, a finite Higgs one-form is the shadow of a gauge field along the interval, and it inherits the symmetry type of the finite triple by the commutator with masses. The moving window of Corollary 22.6 gives -l [D_F, h] and a quadratic term (lemma 19). This shadow is tangent to the O(30) orbit of Lambda, so it gives no radial mode, in agreement with No-go theorem 22.7; the odd generators of lemma 23 are absent here since M_30(R) maps H_+ to H_+. A generator commuting with the masses has no shadow. This explains the difference between the counts (6, 6, 3) of the parent and (3, 6, 1) of the finite triple, and it replaces the alternative O8^- against O8^+ of Proposition 9.2, for these blocks, by a parent and its window.

## What remains open

- Whether a boundary condition, for example a wall term that conserves quark number, can derive M_15(C) at the walls, where at present it is chosen.
- The unital completion of pi and the gauge action it supplies, used as hypotheses in Theorem 11.3, and the construction of the nonzero-mass one-form whose compression is the shadow of Proposition 11.4.
- The counts of Theorem 11.3 are tree-level field counts in the two-U(15)-wall model at trivial background; other wall data, holonomy or further directions need separate calculations.
- The treatment of nonzero masses, where order one fails on the block: the quadratic terms of lemma 19 for this algebra.
- The sleptons: on an interval the (24, 1) + (1, 1) are vectors. Scalars in these representations need components along further internal directions, such as the base of [02](32_witten_spaces_hypercharge_quotient.md).
- The colour sextets (10, 6) come with the antitriplets, and nothing removes them in this construction.
- The relation to the top: the (30, 2) of SO(32), with the second factor as the top's SO(2).
