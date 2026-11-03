# Noncommutative finite real triples from commutative data: truncating the coarse correspondence

Proved by Claude Opus 5.5 without Astra or Fable, in response to the challenge that the T0 note overread [lemma 15](15_propinquity_collapse.md) and the Farsi-Latrémolière limits. Signs and the level-two algebra were checked with numpy on random data (section "Numerical check"). The term "coarse correspondence" and the form D = Delta + J Delta J^-1 are quoted from memory (Connes; Krajewski; Paschke-Sitarz) and await the literature check. Refereed by Terra 6.1 (gpt-6.1-terra, effort max, 3 Nov 2026; [report](../reviews/2026-11-03_terra_check_15_16.md)): the examples and Corollary 16.4 are correct; amendments to Proposition 16.1, Theorem 16.2, Corollary 16.3 and the caveats are incorporated below; Remark 16.5 and Example 16.6 come from the referee's assessment of what the lemma achieves.

**Outcome.** Compressing functions on a connected commutative space to a fixed spectral window produces a noncommutative finite algebra with no limit taken. With the standard reality J a J^-1 = a\*, the inherited structure fails order zero exactly when that algebra is noncommutative (Proposition 16.1). With the parent Hilbert space doubled to H_0 (x) conj(H_0), order zero and order one hold for every such algebra (Theorem 16.2, Corollary 16.3); these two conditions are formal consequences of the tensor square, available for any finite even representation (Remark 16.5). The KO-6 signs and the count dim H_F = 2 k^2 are reached by a product with a Clifford point, which is an input and fails finite orientability (Corollary 16.4), and more faithfully by a parent with two sheets, which gives the form of the Chamseddine-Connes classification (Theorem 16.7, Corollary 16.8, Example 16.9). This selects no particular algebra and gives no dynamics.

## Setting

Let (A_0, H_0, D_0, gamma_0) be an even spectral triple, A_0 commuting with gamma_0, with D_0 of compact resolvent. Let Sigma = -Sigma be a finite subset of R and P_0 = 1_Sigma(D_0), of rank k, so that P_0 commutes with gamma_0. Put V = P_0 H_0, graded by gamma_V, with d = D_0 restricted to V, and

    Q(a) = P_0 a P_0 on V,     O_F = Q(A_0),     A_F = C*(O_F) in B(V).

O_F is an operator system, in general not an algebra (Connes-van Suijlekom), and A_F consists of even operators. Its definition needs no limit.

**Examples of A_F.**

(a) *Chiral interval, lowest level.* For condition (c) with M = 0 and Sigma = {+/- pi/(2l)}, O_F = C + C = A_F (lemma 05).

(b) *Chiral interval, next level.* For Sigma = {+/- pi/(2l), +/- 3 pi/(2l)}, V has basis (c_1, 0), (c_2, 0), (0, s_1), (0, s_2), with c_r = (2/l)^{1/2} cos((r - 1/2) pi x/l) and s_r = (2/l)^{1/2} sin((r - 1/2) pi x/l). With C_n = (1/l) int f cos(n pi x/l),

    Q(f) = (Q_L, Q_R),     Q_L = [[C_0 + C_1, C_1 + C_2], [C_1 + C_2, C_0 + C_3]],     Q_R = [[C_0 - C_1, C_1 - C_2], [C_1 - C_2, C_0 - C_3]].

The values C_0, C_1, C_2, C_3 are independent and determine Q(f), so O_F has dimension 4. Each of Q_L and Q_R alone ranges over all symmetric 2 x 2 matrices, which generate M_2(C), so A_F projects onto each summand. For f_1 = 1/2 + cos(pi x/l) + cos(2 pi x/l) + cos(3 pi x/l) and f_2 = 1/2 - cos(pi x/l) + cos(2 pi x/l) - cos(3 pi x/l),

    Q(f_1) = ([[1, 1], [1, 1]], 0),     Q(f_2) = (0, [[1, -1], [-1, 1]]).

M_2(C) is simple, so multiplying Q(f_1) and Q(f_2) by elements of A_F gives M_2(C) + 0 and 0 + M_2(C). Hence A_F = M_2(C) + M_2(C), of dimension 8. The finite algebra of the interval itself is noncommutative at the second level.

(c) *Twistor space.* For the level-one Toeplitz compression on CP^3, Q(x_a) = Gamma_a/5 (Proposition 10.1), and these generate A_F = M_4(C) on V = C^4. Here V is the kernel of the Dolbeault-Dirac operator twisted by O(1), so d = 0 on V.

## The standard correspondence

**Proposition 16.1 (order zero fails with inherited reality).** Let J_0 be a real structure on H_0 (antiunitary, J_0^2 = +/-1, with the grading sign), with J_0 a J_0^-1 = a\* for all a in A_0 and J_0 D_0 = eps' D_0 J_0, and let J_F = J_0 restricted to V. Then J_F Q(a)\* J_F^-1 = Q(a), and the data (A_F, V, d, J_F) satisfy order zero if and only if A_F is commutative. The same holds for a product with a fixed finite factor that itself satisfies order zero, with the compatible product real structure.

*Proof.* J_0 preserves V because Sigma = -Sigma. Then J_0 P_0 a\* P_0 J_0^-1 = P_0 a P_0. Order zero would make Q(a) commute with Q(b)° = Q(b) for all a, b, so O_F and hence A_F would be commutative; the converse is immediate, since J_F A_F J_F^-1 = A_F. For the product, take the unit in the finite factor: [1 (x) Q(a), 1 (x) Q(b)] = 1 (x) [Q(a), Q(b)]. ∎

Together with Amendment 2 of lemma 07 (first order fails for C + C with inherited J_2), this is the correct form of the obstruction. It concerns the standard correspondence L^2(A_0) with the pointwise real structure.

## The coarse correspondence

Let conj(H_0) be the conjugate Hilbert space, with canonical antiunitary xi -> xi^c, and with gamma^c, D^c the conjugate operators, gamma^c xi^c = (gamma_0 xi)^c and D^c xi^c = (D_0 xi)^c. On H = H_0 (x) conj(H_0), which is the coarse correspondence of A_0, equivalently the Hilbert-Schmidt operators on H_0, define for homogeneous xi, eta

    pi(a) = a (x) 1,
    DD = D_0 (x) 1 + gamma_0 (x) D^c,
    Gamma = gamma_0 (x) gamma^c,
    J (xi (x) eta^c) = (-1)^{|xi| |eta|} eta (x) xi^c.

**Theorem 16.2.** (A_0, H, DD, J, Gamma) is a real even spectral triple with signs J^2 = 1, J DD = DD J, J Gamma = Gamma J (KO-dimension 0). For even a, b with bounded commutators,

    a° := J pi(a)\* J^-1 = 1 (x) (a\*)^c,     [pi(a), b°] = 0,     [[DD, pi(a)], b°] = 0,

and norm([DD, pi(a)]) = norm([D_0, a]). So if the original triple is metric, the new triple is metric with the same Connes distance on A_0. If the Weyl exponent p = lim log N_0(R)/log R of D_0 exists, that of DD is 2 p, since N_0(R/sqrt(2))^2 <= N_DD(R) <= N_0(R)^2.

*Proof.* J is antilinear, and J^2 = 1 because the sign is applied twice with the degrees exchanged. Gamma has eigenvalue (-1)^{|xi| + |eta|}, symmetric under the exchange. For the Dirac operator,

    J DD (xi (x) eta^c) = (-1)^{(|xi| + 1) |eta|} eta (x) (D_0 xi)^c + (-1)^{|xi|} (-1)^{|xi| (|eta| + 1)} D_0 eta (x) xi^c
                        = (-1)^{|xi| |eta|} [D_0 eta (x) xi^c + (-1)^{|eta|} eta (x) (D_0 xi)^c] = DD J (xi (x) eta^c).

For even a, a\* preserves degree, so J pi(a)\* J^-1 (eta (x) xi^c) = eta (x) (a\* xi)^c, which gives the formula for a° and order zero. Since a is even, [DD, pi(a)] = [D_0, a] (x) 1, which commutes with 1 (x) (b\*)^c. Finally DD^2 = D_0^2 (x) 1 + 1 (x) (D^c)^2, because gamma_0 anticommutes with D_0. An eigenbasis of D_0 decomposes DD into finite-dimensional invariant blocks, so DD is essentially self-adjoint on the algebraic tensor product, with compact resolvent, and the spectrum is +/- (lambda_i^2 + lambda_j^2)^{1/2}. ∎

Geometrically, when H_0 = L^2(S_X) on an even-dimensional spin manifold X, a charge conjugation commuting with D_X identifies conj(H_0) with H_0, H is L^2(S_{X x X}) and DD is the ordinary product Dirac operator. (The grading may acquire an overall sign under this identification.) So the data are a product-manifold Dirac operator on X x X with a restricted observable algebra C(X) (x) 1, and a J covering the flip of the two factors, which differs from the pointwise spin real structure. They count as commutative Kaluza-Klein data only with that restriction and that J: they are neither the ordinary spin triple of X x X with its full function algebra nor a finite-rank twist over X. The restriction is essential: on all of C(X x X), the compressions generate A_F (x) conj(A_F), and order zero generally fails again.

**Corollary 16.3 (truncation).** Let P = P_0 (x) conj(P_0). It commutes with DD, Gamma and J. It is a joint cutoff in the two factors, and need not be a spectral projection of DD: for absolute eigenvalues 1, 5, 7, sqrt(73) of D_0 with P_0 selecting the first three, the selected pair (5, 7) and the excluded pair (1, sqrt(73)) both give DD^2 = 74. The compression of pi(A_0) is O_F (x) 1; passing to the generated algebra gives the finite real even triple

    T_F = (A_F, V (x) conj(V), D_F, J_F, Gamma_F),     D_F = d (x) 1 + gamma_V (x) d^c = Delta + J_F Delta J_F^-1,     Delta = d (x) 1,

with A_F acting on the left. It has KO-dimension 0, and satisfies order zero and order one for every A_F, noncommutative or not, with dim H_F = k^2. The family is exact at each truncation; no limit is taken.

*Proof.* The proof of Theorem 16.2 applies verbatim on V with arbitrary even a, b in B(V), since it uses only the grading and the tensor structure. For J_F Delta J_F^-1, apply J to (d (x) 1) J (xi (x) eta^c): the signs combine to (-1)^{|xi|}, giving gamma_V (x) d^c. ∎

So H_F has the bimodule form of Connes' finite geometries, with A_F on the left and its opposite on the right, and D_F has the first-order form of Krajewski and Paschke-Sitarz.

Example (a) gives (C + C, C^2 (x) C^2, m (sigma_1 (x) 1 + sigma_3 (x) sigma_1)). There [[D_F, e], e°] = 0 for e = diag(1, 0), which repairs the first-order failure of Counterexample 08.4 at the price of doubling. Example (b) gives (M_2(C) + M_2(C), C^16, D_F).

**Corollary 16.4 (KO-6 by a Clifford point).** The product of T_F with (C, C^2, 0, sigma_1 K, sigma_3) is

    (A_F, V (x) conj(V) (x) C^2, D_F (x) 1, J_F (x) sigma_1 K, Gamma_F (x) sigma_3),

with signs (+, +, -), order zero, order one and dim H = 2 k^2. It fails the usual zero-dimensional orientability axiom: every zero-cycle built from the left and opposite actions acts as T (x) 1_2, while the grading is Gamma_F (x) sigma_3.

*Proof.* (sigma_1 K)^2 = 1 and sigma_1 K sigma_3 = -sigma_3 sigma_1 K, while the D term is untouched. a° is a° of T_F tensored with 1. ∎

**Remark 16.5 (the order conditions are formal).** For every finite even representation (A, V, d, gamma), the map V -> V (x) conj(V), d -> d (x) 1 + gamma (x) d^c gives a real bimodule with order zero and order one, using no prior finite real structure. So these two conditions follow from choosing the tensor square, and say nothing specific about A_F. The construction does not recover an arbitrary prescribed finite (H, D, J). What is specific to T0 is that A_F is generated by compressed functions, that the tensor square is itself the truncation of a commutative parent in the restricted sense above, and families such as the following.

**Example 16.6 (a tower-decoupling family, from the referee).** Let D_0 be the Dolbeault-Dirac operator on CP^3 twisted by O(1), with V = ker D_0 = C^4, and let DD_l = DD/l on the doubled parent. Its kernel is V (x) conj(V), and its gap grows like 1/l. Here P is a spectral projection. Compression followed by algebra generation gives the constant finite data A_F = M_4(C), dim H_F = 16, D_F = 0, and the Clifford point gives dim H = 32 with the KO-6 signs. Order one is automatic, since D_F = 0. The whole triple converges to (C, C^16, 0) by Theorem 15.3, consistently with lemma 15: the two statements concern the whole algebra and the truncation.

## Two sheets: the form of the classification

Chamseddine and Connes (*Why the Standard Model*, arXiv:0706.3688, sections 2-3) classify irreducible pairs (A, J) with order zero and a separating vector: the centre of the complexified algebra is C, with A_C = M_k(C) on itself and J x = x\*, or C + C, with A_C = M_k(C) + M_k(C) on itself and J(x, y) = (y\*, x\*). With centre C, J gamma = -gamma J is impossible. The pair of Corollary 16.4 is therefore reducible: the projection 1 (x) (1 + sigma_1)/2 commutes with A_F and J. The irreducible form comes from a parent with two sheets. This section was added after the referee report on the rest of the lemma, and has its own referee pending.

**Theorem 16.7 (two-sheet coarse parent).** Let (A_X, H_X, D_X, gamma_X) and (A_Y, H_Y, D_Y, gamma_Y) be even spectral triples. On H = (H_X (x) conj(H_Y)) (+) (H_Y (x) conj(H_X)), for even a in A_X and b in A_Y, put

    pi(a, b) = (a (x) 1) (+) (b (x) 1),
    DD = (D_X (x) 1 + gamma_X (x) D_Y^c) (+) (D_Y (x) 1 + gamma_Y (x) D_X^c),
    Gamma = (gamma_X (x) gamma_Y^c) (+) (-gamma_Y (x) gamma_X^c),
    J (xi (x) eta^c) = (-1)^{|xi| |eta|} eta (x) xi^c,

where J maps each summand to the other. Then J^2 = 1, J DD = DD J and J Gamma = -Gamma J, the KO-6 signs. Moreover

    (a, b)° = (1 (x) (b\*)^c) (+) (1 (x) (a\*)^c),

so the first summand is an (A_X, A_Y)-bimodule and the second an (A_Y, A_X)-bimodule, and order zero and order one hold.

*Proof.* The computation of Theorem 16.2 applies with D_Y in place of the second factor: on xi (x) eta^c in the first summand, J DD and DD J both give (-1)^{|xi| |eta|} [D_Y eta (x) xi^c + (-1)^{|eta|} eta (x) (D_X xi)^c]. The sign in Gamma on the second summand gives J Gamma = -Gamma J. For a°, apply J, then pi(a, b)\*, then J, as in Theorem 16.2: an element of the first summand goes to the second, where b\* acts on the left, and returns with b\* on the right factor. Since a and b are even, [DD, pi(a, b)] = ([D_X, a] (x) 1) (+) ([D_Y, b] (x) 1), which commutes with the opposite actions. ∎

**Corollary 16.8 (truncation; the form of the classification).** For symmetric windows with V_X, V_Y of dimensions k_X, k_Y, and even subalgebras A_{F,X} in B(V_X), A_{F,Y} in B(V_Y), the compression

    T_F = (A_{F,X} + A_{F,Y}, (V_X (x) conj(V_Y)) (+) (V_Y (x) conj(V_X)), D_F, J_F, Gamma_F)

has the KO-6 signs, order zero and order one, and dim H_F = 2 k_X k_Y. If gamma_{V_X} lies in A_{F,X} and gamma_{V_Y} in A_{F,Y}, the orientability relation holds: with c = (gamma_{V_X}, gamma_{V_Y}) and z = (1, -1), Gamma_F = pi(z c) c°. If V_X and V_Y are ungraded with k_X = k_Y = k and the generated algebras are full, then (A_F, H_F, J_F) is exactly the irreducible pair with centre C + C: identify both summands with M_k(C), so that J_F(x, y) = (y\*, x\*). In all cases D_F commutes with the centre of A_F, so the two pieces are not connected.

*Proof.* Theorem 16.7 applies on the truncation with arbitrary even operators. For orientability, pi(c) c° = (gamma_{V_X} (x) gamma_{V_Y}^c) (+) (gamma_{V_Y} (x) gamma_{V_X}^c), and z flips the sign of the second summand. The last statements are direct. ∎

**Example 16.9 (twistor level one, and M_2(H) + M_4(C)).** Let D_0 be the Dolbeault-Dirac operator on CP^3 twisted by O(1), with kernel H^0(CP^3, O(1)) = C^4, and let j be the antiunitary with j^2 = -1 commuting with the Gamma_a of Proposition 10.1, which makes C^4 a quaternionic space H^2. Use this space twice, as W (with the functions of S^4 pulled back along the twistor projection) and as V (with the functions of CP^3).

1. A real function f on S^4 pulls back to a function invariant under w -> j w. So j Q(f) j^-1 = Q(f), and Q(f) is a Hermitian element of End_H(W). Since Q(x_a) = Gamma_a/5, the real algebra generated is End_H(W) = M_2(H), of real dimension 16.
2. For real functions on CP^3, Q(w\* B w / w\* w) = (B + tr(B) 1)/5 for Hermitian B, so Q is onto the Hermitian matrices, and the real algebra generated is End_C(V) = M_4(C), of real dimension 32.

Hence Corollary 16.8 gives A = M_2(H) + M_4(C), with H_F = Hom(V, W) (+) Hom(W, V) = E (-) E\* of dimension 32 and J(x, y) = (y\*, x\*). These are the algebra, bimodule and real structure of Chamseddine and Connes, section 3. The parent grading is trivial on the kernel, so the nontrivial grading of W in that construction has to be chosen: we take Gamma_5 = 5 Q(x_5), the compressed height function on S^4, which fixes an axis. It normalizes M_2(H), with even part H + H. With it, Gamma_F = (Gamma_5 (x) 1) (+) (-1 (x) conj(Gamma_5)) has the KO-6 signs, and Gamma_5 and 1 lie in the algebras, so orientability holds. An odd d = mu n^a Gamma_a with n orthogonal to the axis, the compression of a bounded potential on S^4, gives a nonzero D_F = Delta + J_F Delta J_F^-1, which commutes with the centre.

This bears on the step left open in [canonical section 4](../canonical_research.md#4-the-six-dimensional-twistor-geometry-and-the-higgs), where M_2(H) in M_4(C) is a nested pair on one four-space, with "the independent E, F module roles" to be derived. On the two-sheet parent the two algebras are independent central summands, and the 32-state bimodule is present at truncation. The other statements of that section stand: the fibre rank over S^4 is two, the parent here has infinite rank over S^4, and this example uses global sections. The selection of A_F = C + H + M_3(C) by order one is an algebraic step that needs a Dirac operator connecting the two pieces, and we have none. So the ingredients chosen by hand are the two sheets, the restriction of one algebra to S^4, the axis, and the level k = 4; the non-formal content is items 1 and 2, already in the corpus, and the match of the two-sheet form with the classification.

## Caveats

These results should be read as narrowly as the note they correct.

1. **Metric.** T_F is usually not a metric spectral triple. For A_F = B(V_+) + B(V_-) with V_+ of dimension at least 2 and d odd, the commutant of d in A_F contains the pairs (x, B^-1 x B) with x commuting with B B\*, when B is the invertible block of d. In example (b), (diag(1, 0), diag(1, 0)) has L = 0, so d leaves a residual U(1) x U(1) of U(2) x U(2) unbroken. The Standard Model finite triple has the same feature, through M_3(C).
2. **Spectrum.** The eigenvalues of D_F are +/- (lambda_i^2 + lambda_j^2)^{1/2}. In example (a) they are +/- sqrt(2) m with Connes distance 1/m, so the doubled spectrum differs from the masses in d, and the mass relations of Theorem 9.6 and lemma 11 would have to be redone.
3. **Parent.** The doubled parent is a choice. Its algebra sees one factor of X x X, its J covers the flip, which is outside the spin real structure of X x X, and generating A_F from O_F is an additional operation. We have no dynamical reason for it. For an ordinary compact spin X of dimension n, its Weyl exponent is 2 n with metric dimension n, which bears on the counting of 9, 10 and 11 and has not been analyzed.
4. **KO-6.** The Clifford point is an input, as F_0 is in Theorem D, and it fails finite orientability. In Theorem 16.7 the sign comes from the block structure of two sheets, which is itself an input. The documents checked here establish neither a construction of two sheets from one connected parent nor a no-go theorem. The grading-reversing structure of lemma 08 is a candidate we have not tested.
5. **Count.** For k = 4, dim H = 32, the value in the classification of Chamseddine-Connes, and k = 4 occurs in examples (b) and (c). This is a count and nothing more: the classification's algebra is M_2(H) + M_4(C), acting differently, and neither example produces it. The algebras generated here are complex, and a quaternionic real summand would need additional real-algebra data.

## Consequence for T0 and T0b

T0 asks for finite real triples from commutative Kaluza-Klein data under specified notions of convergence. For one specified truncation procedure (compression, then generation, on the doubled parent with restricted algebra and flip J), this lemma gives a noncommutative finite algebra with an explicit bimodule, and a family with the tower decoupled (Example 16.6). It does not establish the target under every meaning of ordinary Kaluza-Klein data. For T0b, it gives examples with the requested signs and first-order relations; with two sheets it reaches the form of the classification, and in Example 16.9 the algebra M_2(H) + M_4(C), bimodule and real structure of Chamseddine and Connes, with the choices listed there. It leaves open an operator connecting the two pieces and hence the selection of A_F, nonzero mass data in the kernel family, and the beyond-first-order and twisted frameworks. See [the background note](../current_framework.md).

## Numerical check

Python (numpy), run on 3 Nov 2026 in a temporary directory, not kept. On random odd d and even a, b for dim V_+ = dim V_- = 2 with J = M K: J^2 = 1, J DD = DD J, J Gamma = Gamma J, DD Gamma = -Gamma DD, order zero and order one all hold to machine precision, with norm([a, b]) = 7.67; the KO-6 signs of Corollary 16.4 hold. For Theorem 16.7 and Example 16.9, with k = 4, W graded by Gamma_5 and V ungraded: J^2 = 1, J Gamma = -Gamma J, J D = D J, D Gamma = -Gamma D, D = Delta + J Delta J^-1, order zero and order one for random a, b, and Gamma_F = pi(z c) c° all hold to machine precision; j^2 = -1 commutes with the Gamma_a, and x_a(j w) = x_a(w); the real algebras generated by Gamma_a, by i Gamma_a and by all Hermitian matrices have real dimensions 16, 32 and 32; and sum_a x_a Gamma_a = 2 (P_w + P_{jw}) - 1. For example (b), by quadrature with 23 test functions: dim O_F = 4 and the generated algebra has dimension 8; the two displayed values Q(f_1) and Q(f_2) were reproduced by quadrature.
