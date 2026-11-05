# For a Wilson line and a torsion in a mirror plane the doublet has equal masses exactly when the torsion is parallel to the Wilson line, masses |A| +- |eta| exactly when perpendicular, and a massless member exactly when eta = +- J A, the quarter turn in the complex structure of the elliptic curve; the up and down Yukawas are A + i eta and the conjugate of A - i eta; the finite data at the mirror stratum are the quark sector of the label 9 with explicit masses

**Status.** Proposition 51.3. Proved by Claude Fable 5.1 on 5 November 2026 by hand; the rank-one case eta = +- J A, the perpendicular case and the fixed space of a three-cycle were checked with numpy (script not kept). Referee pending (Claude Opus 5.5). Ledger row `l51_rank_one_pattern`. Not yet in a paper.

**Setting.** A, eta in the mirror plane P_tau with the complex structure J = 1 (x) J_E of A; phi the angle between them; the finite data of Corollary 16.8 with V_X = Sigma_4, A_{F,X} = span_R(1, x), d_X = Y, V_Y = C^3, M_3(C).

**Statement.** m_+-^2 = |A|^2 + |eta|^2 +- 2 |A| |eta| sin phi. (1) Equal masses exactly when eta is parallel to A (the custodial case). (2) m_+ = |A| + |eta|, m_- = ||A| - |eta|| exactly when eta is perpendicular to A, eta in R J A; then for |eta| <= |A| the Wilson line is the mean mass of the doublet and the torsion half its splitting, m_up = |A| + |eta|, m_down = |A| - |eta|. (3) m_- = 0 exactly when eta = +- J A; then m_+ = 2 |A| and Y is the block c(h) P_w of lemma 50 with h = 2A and J_w = +-J. (4) In the complex coordinate of P_tau, y_u = A + i eta and conj(y_d) = A - i eta up to the orientation conventions. The finite data at the mirror stratum are a 24-state bimodule over C + M_3(C) with the KO-6 signs, order zero and order one, with every one-form zero, explicit masses (Proposition 17.3) and the algebra equal to the centralizer of the block (Proposition 50.4), the label 9; the orientability relation of Corollary 16.8 is unavailable since Gamma lies outside span_R(1, x).

*Scope.* One generation, one Wilson line and one three-form; no potential selects eta = +- J A.

**Proof.** Lemma 51, Proposition 51.3: the formula in a two-plane; the perpendicular of A in P_tau is R J A; m_- = 0 forces |A| = |eta| and sin phi = 1; comparison with Proposition 50.2 (3); Proposition 49.4 for c(A) = L_a and Proposition 49.3 for the couplings; Theorem 16.7 formally; [Y, x] = 0 kills the one-forms.

**What it leaves open.** Three generations; a relation between H and A from an action or a quantization condition.
