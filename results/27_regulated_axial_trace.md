# On the reduced operator D_M(A) + gamma_5 d with masses commuting with the gauge field, the regulated axial trace is sum_f tau_f f(m_f^2/Lambda^2) ind_f at every cutoff, and the regulated mass insertion equals it

**Status.** Theorem (Theorem 27.1), with Proposition 27.3. Proved by Claude Opus 5.5, with the index theorem as a reference. Ledger row `l27_trace` (depending on `l17_action`). Proposition 5 of paper/chiral_limit_note.tex.

**Setting.** M a closed Riemannian spin 4-manifold. Following Corollary 17.2, DD = D_M(A) + gamma_5 d on L^2(S) (x) E, with d = diag(m_f), m_f >= 0, on E = C^{N_c} (x) C^{N_f}, and A the gauge connection of the commuting subalgebra, colour and electromagnetism, diagonal in flavour with charge Q_f on flavour f; for nontrivial backgrounds E is replaced by the bundles E_f. T is Hermitian on C^{N_f}, diagonal in the same basis, with eigenvalues tau_f. Then d, T and A commute, and DD^2 = D_M(A)^2 + d^2 by Theorem 17.1. The cutoff f makes f(DD^2/Lambda^2) trace class, for example in the positive Laplace class of lemma 18; gamma_5 = +1 on S^+, and ind_f = n_{f,+} - n_{f,-} is the index of D_f^+ on S^+ (x) E_f.

**Statement.**

1. (Theorem 27.1) For every Lambda > 0, Tr(gamma_5 T f(DD^2/Lambda^2)) = sum_f tau_f f(m_f^2/Lambda^2) ind_f, with no expansion in m/Lambda.
2. By the index theorem, ind_f = (1/8 pi^2) int tr_f(F ^ F) - (N_c/24) p_1(M), with tr_f(F ^ F) = N_c Q_f^2 e^2 F_em ^ F_em + g^2 tr_c(G ^ G), since G is traceless.
3. (Proposition 27.3) If m_f > 0 for all f, then Tr(f(DD^2/Lambda^2) d T DD^-1) = Tr(gamma_5 T f(DD^2/Lambda^2)). Since {gamma_5 T, D_M + gamma_5 d} = 2 d T, when the Jacobian and the composite mass insertion are given the same specified regularization this is the integrated Ward identity in a fixed background at every Lambda, with a common factor f(m_f^2/Lambda^2) on both sides.

*Scope.* The surviving zero modes contribute the signed count n_{f,+} - n_{f,-}, whereas the scalar density of Proposition 17.8 sees the unsigned count. The trace identity alone constructs neither an independently regulated measure nor a local current, and the local identity has a current-divergence term as well. T, d and A commute by hypothesis, which excludes T^3 together with the W, and off-diagonal d, for which DD^2 has a term gamma_5 [d, D_M]. The background is fixed; a measure on gauge fields and the order of limits are separate, as in Proposition 17.8. The regulated Jacobian by the spectrum of DD is one choice, gauge invariant under the commuting group, and reversing the chirality convention reverses the index.

**Proof.** Lemma 27, Theorem 27.1 and Proposition 27.3; the proofs are there. On block f, DD^2 = D_f^2 + m_f^2, and D_f anticommutes with gamma_5, so it maps each eigenspace of D_f^2 with eigenvalue mu > 0 isomorphically between the chiralities, and only ker D_f remains, with weight f(m_f^2/Lambda^2). For Proposition 27.3, DD^-1 = (D_M + gamma_5 d)(D_M^2 + d^2)^-1, the term with D_M has zero trace, and on ker D_f the factor m_f^2/m_f^2 is 1.

**What it leaves open.** A measure on gauge fields, the map to a quantum order parameter and the kinetic term of a pion field, which need a quantum effective action (lemma 27, consequence for T10). The limit Lambda -> infinity is 27_anomaly_coefficient.md.
