# On the quaternionic sheet W = H^2 with grading axis p, the Hermitian blocks odd for the grading form the complex bidoublet Hom_C(L_p, L_p^perp) = (2, 2) (x) C of Sp(1)_a x Sp(1)_b; the quaternionic half is T_p S^4, the odd part of the compressed coordinates of S^4, and the anti-quaternionic half lies outside M_2(H), inside the compression of the functions on CP^3

**Status.** Proposition (Proposition 46.1). Proved by Claude Fable 5.1 on 5 November 2026 by hand; the Clifford relations, the quaternionic structure, the dimensions 16, 8 and 16 and the K_p-invariance of the two four-dimensional spans were checked with numpy (script not kept). Refereed by Claude Opus 5.5 (effort max, 5 November 2026; report in historical/reviews/2026-11-05_opus_check_46.md): correct with amendments, the existence and phase of j stated and item 3 sharpened to the fibre-odd functions on CP^3; applied. Ledger row `l46_odd_blocks` (depending on `l10_toeplitz` and `l16_two_sheets`). Not yet in a paper.

**Setting.** W = C^4 with the Hermitian Clifford generators Gamma_1, ..., Gamma_5 and the antiunitary j, j^2 = -1, commuting with them (Example 16.9: the kernel H^0(CP^3, O(1)) with the quaternionic structure of the twistor space; Proposition 10.1: Q(x_a) = Gamma_a/5). End_H(W) = M_2(H) is the real span of 1, Gamma_a, Gamma_a Gamma_b, with unitary group G = Sp(2). For p in S^4, Gamma_p = p^a Gamma_a has the quaternionic eigenlines L_p and L_p^perp, stabilizer K_p = Sp(1)_a x Sp(1)_b (Sp(1)_b on L_p, Sp(1)_a on L_p^perp), and Odd_p is the set of Hermitian Y with Gamma_p Y = -Y Gamma_p.

**Statement.**

1. Odd_p = {[[0, X^\*], [X, 0]] : X in Hom_C(L_p, L_p^perp)}, real dimension 8, the complex bidoublet (2, 2) (x)_R C of K_p.
2. Its j-linear part Odd_p cap M_2(H) is the real span of the Gamma_a with a orthogonal to p: the maps with X in Hom_H(L_p, L_p^perp) = T_p S^4, which by Proposition 10.1 are the odd parts of the compressed coordinates of S^4.
3. Its j-antilinear part is the real span of the i Gamma_a Gamma_p, a orthogonal to p, which is i times the (2, 2) inside sp(2); it lies outside M_2(H), hence outside the compression of the real functions of S^4, and it is the compression of the real functions on CP^3 odd under the fibre involution [w] -> [jw] (Q(f o j) = j Q(f) j^{-1}); complex functions on the base with the projections of the grading also reach it.
4. End_C(W) = 1 + 5 + 10 under G restricts to K_p as (1, 1); (1, 1) + (2, 2); (3, 1) + (1, 3) + (2, 2), with the spans Gamma_p, the Gamma_a (a orthogonal to p), the Gamma_a Gamma_b (a, b orthogonal to p) and the Gamma_a Gamma_p; the even part is End(L_p) + End(L_p^perp).

*Scope.* Finite linear algebra on the quaternionic sheet; the axis p as an input (Proposition 28.19); the identification of the two halves with the two sheets is by representation type, not a derivation of the block from a function.

**Proof.** Lemma 46, Proposition 46.1: a Hermitian Y anticommuting with Gamma_p exchanges its eigenlines; Hom_H between two quaternionic lines is a copy of H, spanned by the four Gamma_a with a orthogonal to p; Y -> j Y j^{-1} is an involution of Odd_p whose -1 part is spanned by the i Gamma_a Gamma_p; the decomposition of 4 (x) 4 under Spin(5) and Spin(4).

**What it leaves open.** An independent reading. The role of the two halves in the masses is 46_doublet_mass_formula.md; the cross blocks of the window operator are 46_window_cross_blocks.md.
