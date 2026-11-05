# On the doubled parent H_0 (x) conj(H_0) with the graded flip J the compressed data satisfy order zero and order one for every generated algebra, noncommutative or not, and these two conditions are formal consequences of the tensor square

**Status.** Theorem (Theorem 16.2), with Corollary 16.3 and Remark 16.5. Proved by Claude Opus 5.5; Remark 16.5 is by Terra 6.1. Ledger rows `l16_coarse`, `l16_truncation` and `l16_formal` (Remark 16.5, attempted by Terra 6.1). Item 3 of Proposition H of paper/towerless_intervals.tex.

**Setting.** The coarse correspondence H = H_0 (x) conj(H_0) of A_0 (Connes, Noncommutative Geometry, chapter V), with the conjugate operators gamma^c, D^c and, for homogeneous xi, eta, pi(a) = a (x) 1, DD = D_0 (x) 1 + gamma_0 (x) D^c, Gamma = gamma_0 (x) gamma^c, J(xi (x) eta^c) = (-1)^{|xi||eta|} eta (x) xi^c. For the truncation, P = P_0 (x) conj(P_0) and the window V of 16_compressed_algebras_noncommutative.md.

**Statement.**

1. (Theorem 16.2) (A_0, H, DD, J, Gamma) is a real even spectral triple with J^2 = 1, J DD = DD J, J Gamma = Gamma J (KO-dimension 0). For even a, b with bounded commutators, a° = 1 (x) (a^\\*)^c, [pi(a), b°] = 0 and [[DD, pi(a)], b°] = 0. Also ||[DD, pi(a)]|| = ||[D_0, a]||, so a metric original triple gives a metric triple with the same Connes distance on A_0, and if the Weyl exponent p of D_0 exists, that of DD is 2p.
2. (Corollary 16.3) P commutes with DD, Gamma and J; it is a joint cutoff and need not be a spectral projection of DD. The truncation T_F = (A_F, V (x) conj(V), D_F, J_F, Gamma_F), D_F = d (x) 1 + gamma_V (x) d^c = Delta + J_F Delta J_F^{-1} with Delta = d (x) 1, has KO-dimension 0 and satisfies order zero and order one for every A_F, with dim H_F = k^2, exactly at each truncation. Example (a) gives (C + C, C^2 (x) C^2, m(sigma_1 (x) 1 + sigma_3 (x) sigma_1)), where [[D_F, e], e°] = 0 for e = diag(1, 0).
3. (Remark 16.5) For every finite even representation (A, V, d, gamma), V -> V (x) conj(V) and d -> d (x) 1 + gamma (x) d^c give a real bimodule with order zero and order one, using no prior finite real structure. These conditions follow from choosing the tensor square and say nothing specific about A_F.

*Scope.* Geometrically the data are a product-manifold Dirac operator on X x X with the restricted observable algebra C(X) (x) 1 and a J covering the flip, which differs from the pointwise spin real structure; on all of C(X x X) order zero generally fails again. The construction does not recover an arbitrary prescribed finite (H, D, J). T_F is usually not a metric triple, and its eigenvalues +-(lambda_i^2 + lambda_j^2)^{1/2} differ from the masses in d.

**Proof.** Lemma 16, Theorem 16.2, Corollary 16.3 and Remark 16.5; the proofs are there, by the graded-sign computation of J DD and by [DD, pi(a)] = [D_0, a] (x) 1 for even a.

**What it leaves open.** No dynamical reason for the doubled parent is given, and its Weyl exponent 2n against metric dimension n bears on the counting of 9, 10 and 11 without having been analyzed (lemma 16, Caveat 3). The KO-6 signs need a Clifford point or two sheets (16_ko6_by_clifford_point.md, 16_two_sheet_parent.md).
