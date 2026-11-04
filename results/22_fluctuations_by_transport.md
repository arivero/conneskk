# The scalar inner fluctuations of the interval parent are pure gauge under its allowed endpoint gauge group and act on the moving window by the gauge orbit of D_F, which reproduces on that orbit the quadratic term of Chamseddine-Connes-van Suijlekom

**Status.** Theorem (Theorem 22.5), with Corollary 22.6. Proved by Claude Opus 5.5; checked by Claude Opus 5.5 in Python (on the two-point data with J = sigma_1 K, D + A_(1) + A~_(1) + A_(2) = U D U\* to 4 x 10^-16, and the link of U_w\* D U_w) and by Terra 6.1 by hand, who contributed the gauge equivalence under the allowed endpoint gauge group (historical/reviews/2026-11-03_terra_check_22.md). Ledger row `l22_transport` (depending on `l22_parent`). Theorem 6 of paper/boundary_condition_note.tex, together with Theorem 23.4; Corollary 22.6 is cited in paper/real_structure_note.tex ("\supp{22}, Corollary 22.6").

**Setting.** The parent of 22_parent_real_triple_order_one.md. Let h be smooth with values in the anti-Hermitian elements of A_F, u' = -h u, u(0) = 1, and w = u(l), a unitary of A_F.

**Statement.**

1. The self-adjoint one-forms of the parent are exactly the E pi(h).
2. D_X + E pi(h) = pi(u) D_{X_w} pi(u)\*, with X_w = pi_+(w)\* X pi_-(w), and the window of D_{X_w} carries pi(w)\* D_F pi(w).
3. With A = E pi(h), D_X + A + J^ A J^^-1 has the window U_w\* D_F U_w, with U_w = pi(w) J_F pi(w) J_F^-1, which commutes with J_F. With u~ = u w\*, which lies in A_l since u~(l) = 1, and U~ = pi(u~) J_F pi(u~) J_F^-1, one has D_X + A + J^ A J^^-1 = U~ D_X U~\*: every scalar connection in this model is gauge equivalent to the original parent under the allowed endpoint gauge group.
4. (Corollary 22.6) With v = w\* and U = v J v J^-1, U D U\* = D + A_(1) + A~_(1) + A_(2) (arXiv:1304.7583, section III, equations (10)-(11)). So on the gauge orbit the fluctuation of the parent, which has order one and no quadratic term, gives on the moving window exactly the fluctuated operator of that framework, quadratic term included, for finite data that fail order one. For the two-point data with J = sigma_1 K and w = diag(e^{i alpha}, e^{i beta}) the upper link is m e^{-2i(alpha - beta)}, the m e^{2 i psi} of Corollary 19.2.
5. The fixed compression is a different object: Q_l(E pi(h)) = -[D_F, l^-1 int_0^l x pi(h) dx] + O(l^3 ||D_F||^3 ||h||), which is -(l/2) [D_F, h] for constant h, while the first derivative of the transported operator is -l [D_F, h]. The difference is the contribution of the moving spectral projection.

*Scope.* Scalar fluctuations from the parent algebra A_l, with the moving window. This answers the first open point of lemma 19 on these gauge orbits. Theorem 22.5 and the covariant projection of lemma 14 share a transport principle.

**Proof.** Lemma 22, Theorem 22.5 and Corollary 22.6; the proofs are there. pi(u)\* D pi(u) = D + E pi(u\* u') cancels the connection, and at x = l the substitution psi = pi(u) phi gives the conditions with X_w.

**What it leaves open.** Since these fluctuations stay on the orbit, the singular values are fixed (22_nogo_radial_mode.md); connections odd for the grading change them (23_odd_fluctuations_radial_mode.md).
