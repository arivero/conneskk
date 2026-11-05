# A two-sheet coarse parent gives the KO-6 signs with order zero and order one, and its truncation for equal dimensions and full algebras is the Chamseddine-Connes pair M_k(C) + M_k(C) with J(x, y) = (y^\*, x^\*)

**Status.** Theorem (Theorem 16.7), with Corollary 16.8. Proved by Claude Opus 5.5. Ledger rows `l16_two_sheets` and `l16_ce_centre` (the counterexample in item 4, by Terra 6.1). Item 4 of Proposition H of paper/towerless_intervals.tex; Corollary 16.8 is cited in paper/connes_kk_dictionary_note.tex.

**Setting.** Even triples (A_X, H_X, D_X, gamma_X) and (A_Y, H_Y, D_Y, gamma_Y); H = (H_X (x) conj(H_Y)) + (H_Y (x) conj(H_X)); for even a in A_X, b in A_Y, pi(a, b) = (a (x) 1) + (b (x) 1), DD = (D_X (x) 1 + gamma_X (x) D_Y^c) + (D_Y (x) 1 + gamma_Y (x) D_X^c), Gamma = (gamma_X (x) gamma_Y^c) + (-gamma_Y (x) gamma_X^c), and J(xi (x) eta^c) = (-1)^{|xi||eta|} eta (x) xi^c mapping each summand to the other. Symmetric windows V_X, V_Y of dimensions k_X, k_Y and even subalgebras A_{F,X} in B(V_X), A_{F,Y} in B(V_Y).

**Statement.**

1. (Theorem 16.7) J^2 = 1, J DD = DD J and J Gamma = -Gamma J, the KO-6 signs; (a, b)° = (1 (x) (b^\\*)^c) + (1 (x) (a^\\*)^c), so the summands are (A_X, A_Y)- and (A_Y, A_X)-bimodules, and order zero and order one hold.
2. (Corollary 16.8) The compression T_F = (A_{F,X} + A_{F,Y}, (V_X (x) conj(V_Y)) + (V_Y (x) conj(V_X)), D_F, J_F, Gamma_F) has the KO-6 signs, order zero, order one and dim H_F = 2 k_X k_Y. If gamma_{V_X} is in A_{F,X} and gamma_{V_Y} in A_{F,Y}, then with c = (gamma_{V_X}, gamma_{V_Y}) and z = (1, -1), Gamma_F = pi(zc) c°, a zero-cycle with coefficients in the algebra and its opposite, weaker than Gamma_F in pi(A_F).
3. For ungraded V_X, V_Y with k_X = k_Y = k and full generated algebras, (A_F, H_F, J_F) is exactly the irreducible pair with centre C + C of Chamseddine and Connes (arXiv:0706.3688, sections 2-3): A_C = M_k(C) + M_k(C) on itself with J(x, y) = (y^\\*, x^\\*).
4. D_F commutes with the two sheet projections, so the sheets are not connected. It need not commute with the whole centre: for V_X = C^2, gamma_X = sigma_3, d_X = sigma_1, A_{F,X} = C + C acting diagonally and V_Y = C, the central element (diag(1, 0), 0) does not commute with D_F.

*Scope.* The second sheet is an input, and the KO-6 sign comes from the block structure of two sheets. At the finite level the bimodule is Remark 2.9 of Chamseddine-Connes; lemma 16 adds its realization from parents and compressed functions.

**Proof.** Lemma 16, Theorem 16.7 and Corollary 16.8; the proofs are there, by the computation of Theorem 16.2 with D_Y in place of the second factor.

**What it leaves open.** An operator connecting the two sheets, and hence the selection of A_F = C + H + M_3(C), is absent from this parent; lemma 20 supplies one in another parent (20_interval_parent_connector.md). Lemma 16 establishes neither a construction of two sheets from one connected parent nor a no-go theorem against one (Caveat 4).
