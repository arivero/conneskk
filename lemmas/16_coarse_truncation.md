# Noncommutative finite real triples from commutative data: truncating the coarse correspondence

Proved by Claude Opus 5.5 without Astra or Fable, in response to the challenge that the T0 note overread [lemma 15](15_propinquity_collapse.md) and the Farsi-Latrémolière limits. Signs and the level-two algebra were checked with numpy on random data (section "Numerical check"). The term "coarse correspondence" and the form D = Delta + J Delta J^-1 are quoted from memory (Connes; Krajewski; Paschke-Sitarz) and await the literature check.

**Outcome.** Compressing functions on a connected commutative space to a fixed spectral window produces a noncommutative finite algebra with no limit taken. With the standard reality J a J^-1 = a\*, the inherited structure fails order zero exactly when that algebra is noncommutative (Proposition 16.1). With the parent Hilbert space doubled to H_0 (x) conj(H_0), order zero and order one hold for every such algebra (Theorem 16.2, Corollary 16.3). The KO-6 signs and the count dim H_F = 2 k^2 are reached by a product with a Clifford point, which is an input (Corollary 16.4). This selects no particular algebra and gives no dynamics.

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

**Proposition 16.1 (order zero fails with inherited reality).** Let J_0 be antiunitary on H_0 with J_0 a J_0^-1 = a\* for all a in A_0 and J_0 D_0 = eps' D_0 J_0, and let J_F = J_0 restricted to V. Then J_F Q(a)\* J_F^-1 = Q(a), and the data (A_F, V, d, J_F) satisfy order zero if and only if A_F is commutative. The same holds for a product with a fixed finite real factor, with the product real structure.

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

and norm([DD, pi(a)]) = norm([D_0, a]). So if the original triple is metric, the new triple is metric with the same Connes distance on A_0, and its Weyl exponent is doubled.

*Proof.* J is antilinear, and J^2 = 1 because the sign is applied twice with the degrees exchanged. Gamma has eigenvalue (-1)^{|xi| + |eta|}, symmetric under the exchange. For the Dirac operator,

    J DD (xi (x) eta^c) = (-1)^{(|xi| + 1) |eta|} eta (x) (D_0 xi)^c + (-1)^{|xi|} (-1)^{|xi| (|eta| + 1)} D_0 eta (x) xi^c
                        = (-1)^{|xi| |eta|} [D_0 eta (x) xi^c + (-1)^{|eta|} eta (x) (D_0 xi)^c] = DD J (xi (x) eta^c).

For even a, a\* preserves degree, so J pi(a)\* J^-1 (eta (x) xi^c) = eta (x) (a\* xi)^c, which gives the formula for a° and order zero. Since a is even, [DD, pi(a)] = [D_0, a] (x) 1, which commutes with 1 (x) (b\*)^c. Finally DD^2 = D_0^2 (x) 1 + 1 (x) (D^c)^2, because gamma_0 anticommutes with D_0. Hence DD is self-adjoint on the closure of the algebraic tensor product, with compact resolvent, and the spectrum is +/- (lambda_i^2 + lambda_j^2)^{1/2}. ∎

Geometrically, when H_0 = L^2(S_X) on an even-dimensional spin manifold X, a charge conjugation commuting with D_X identifies conj(H_0) with H_0, H is L^2(S_{X x X}) and DD is the ordinary product Dirac operator. The data are thus an ordinary commutative Kaluza-Klein manifold X x X, with the algebra restricted to C(X) (x) 1 and J covering the flip of the two factors. Restricting the algebra is essential: on all of C(X x X), the compressions give A_F (x) A_F, and order zero fails again.

**Corollary 16.3 (truncation).** Let P = P_0 (x) conj(P_0). It commutes with DD, Gamma and J. The compression is the finite real even triple

    T_F = (A_F, V (x) conj(V), D_F, J_F, Gamma_F),     D_F = d (x) 1 + gamma_V (x) d^c = Delta + J_F Delta J_F^-1,     Delta = d (x) 1,

with A_F acting on the left. It has KO-dimension 0, and satisfies order zero and order one for every A_F, noncommutative or not, with dim H_F = k^2. The family is exact at each truncation; no limit is taken.

*Proof.* The proof of Theorem 16.2 applies verbatim on V with arbitrary even a, b in B(V), since it uses only the grading and the tensor structure. For J_F Delta J_F^-1, apply J to (d (x) 1) J (xi (x) eta^c): the signs combine to (-1)^{|xi|}, giving gamma_V (x) d^c. ∎

So H_F is the bimodule of Connes' finite geometries, with A_F on the left and its opposite on the right, and D_F has the first-order form of Krajewski and Paschke-Sitarz.

Example (a) gives (C + C, C^2 (x) C^2, m (sigma_1 (x) 1 + sigma_3 (x) sigma_1)). There [[D_F, e], e°] = 0 for e = diag(1, 0), which repairs the first-order failure of Counterexample 08.4 at the price of doubling. Example (b) gives (M_2(C) + M_2(C), C^16, D_F).

**Corollary 16.4 (KO-6 by a Clifford point).** The product of T_F with (C, C^2, 0, sigma_1 K, sigma_3) is

    (A_F, V (x) conj(V) (x) C^2, D_F (x) 1, J_F (x) sigma_1 K, Gamma_F (x) sigma_3),

with signs (+, +, -), order zero, order one and dim H = 2 k^2.

*Proof.* (sigma_1 K)^2 = 1 and sigma_1 K sigma_3 = -sigma_3 sigma_1 K, while the D term is untouched. a° is a° of T_F tensored with 1. ∎

## Caveats

These results should be read as narrowly as the note they correct.

1. **Metric.** T_F is usually not a metric spectral triple. For A_F = B(V_+) + B(V_-) with V_+ of dimension at least 2 and d odd, the commutant of d in A_F contains the pairs (x, B^-1 x B) with x commuting with B B\*, when B is the invertible block of d. In example (b), (diag(1, 0), diag(1, 0)) has L = 0, so d leaves a residual U(1) x U(1) of U(2) x U(2) unbroken. The Standard Model finite triple has the same feature, through M_3(C).
2. **Spectrum.** The eigenvalues of D_F are +/- (lambda_i^2 + lambda_j^2)^{1/2}. In example (a) they are +/- sqrt(2) m with Connes distance 1/m, so the doubled spectrum differs from the masses in d, and the mass relations of Theorem 9.6 and lemma 11 would have to be redone.
3. **Parent.** The doubled parent is a choice. Its algebra sees one factor of X x X, and its J covers the flip, which is outside the spin real structure of X x X. We have no dynamical reason for it. Its Weyl exponent is 2 dim X with metric dimension dim X, which bears on the counting of 9, 10 and 11 and has not been analyzed.
4. **KO-6.** The Clifford point is an input, as F_0 is in Theorem D. Whether the sign can come from the parent is open. The internal grading-reversing structure of lemma 08 is the natural candidate.
5. **Count.** For k = 4, dim H = 32, the value in the classification of Chamseddine-Connes, and k = 4 occurs in examples (b) and (c). This is a count and nothing more: the classification's algebra is M_2(H) + M_4(C), acting differently, and neither example produces it.

## Consequence for T0 and T0b

T0 asks for finite real triples from commutative Kaluza-Klein data under specified notions of convergence. Under truncation at a fixed spectral window, noncommutativity, real structure, order zero and order one are all attained from commutative data, with the bimodule doubling as the mechanism. What remains open is the selection of A_F, the KO-6 sign from the parent, a physical origin for the doubled parent and a metric refinement. Of the items listed in T0b, the classification and the beyond-first-order and twisted frameworks are still untested; the bimodule, order zero and order one now have a concrete origin.

## Numerical check

Python (numpy), run on 3 Nov 2026 in a temporary directory, not kept. On random odd d and even a, b for dim V_+ = dim V_- = 2 with J = M K: J^2 = 1, J DD = DD J, J Gamma = Gamma J, DD Gamma = -Gamma DD, order zero and order one all hold to machine precision, with norm([a, b]) = 7.67; the KO-6 signs of Corollary 16.4 hold. For example (b), by quadrature with 23 test functions: dim O_F = 4 and the generated algebra has dimension 8; the two displayed values Q(f_1) and Q(f_2) were reproduced by quadrature.
