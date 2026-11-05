# In the eight-state window of lemma 29 every cross block between the core and the wall states of a bounded local operator is of the exponential order of the tunnelling mass, the cross block of a coordinate of S^4 is c_M Gamma_a, and a window operator with block lambda + mu n . Gamma has the eigenvalues +- (lambda^2 + |mu|^2 +- 2 lambda Re mu)^{1/2}, each of multiplicity two

**Status.** Proposition (Proposition 46.3), conditional on the weighted estimates in the proof of Proposition 29.8 (lemma 29, as amended by its second reading). Proved by Claude Fable 5.1 on 5 November 2026 by hand; the spectrum was checked with numpy (script not kept). No independent check yet: the ledger marks the row referee_pending. Ledger row `l46_cross_blocks` (depending on `l29_tunnelling` and `l28_tunnelling`). Not yet in a paper.

**Setting.** The window W_M + V_M of Theorem 29.7, u a unit core state and v a unit wall state, B a bounded operator on L^2(X, E); the identification W_M = V_M = 4 of Proposition 28.19; a window operator with off-diagonal block d = lambda + mu n^a Gamma_a, lambda >= 0, mu complex, n a unit vector in R^5.

**Statement.**

1. For every eta in (0, 1), |<v, B u>| <= C_eta ||B|| exp(-(1 - eta)(M/2) int_e^{l - a} f dr) for M >= M_eta: every off-diagonal block of the compression of a bounded local operator to the eight states is of the exponential order of lambda_M.
2. For B the multiplication by a coordinate x_a of S^4 pulled back to X, P_V x_a P_W = c_M Gamma_a, with |c_M| bounded as in item 1: the window operator can carry G-breaking blocks in the 5, hence the (2, 2) of item (ii) of CORPUS_SALVAGE, at that order.
3. The eight eigenvalues of the window operator with block d are +- (lambda^2 + |mu|^2 +- 2 lambda Re(mu))^{1/2}, each of multiplicity two, on the quaternionic lines L_n and L_n^perp of the two copies of the 4.

*Scope.* The window of Theorem 29.7 in case (b); bounded local operators; the Agmon weights of Proposition 29.8 for both the core and the wall states.

**Proof.** Lemma 46, Proposition 46.3: the weights g and g-tilde of Proposition 29.8 sum to the constant (1 - eta)(M/2) int f on the bulk and bound the end regions, so int |u| |v| is exponentially small; Schur's lemma for the 5 inside End_C(4) = 1 + 5 + 10; d^\* d = lambda^2 + |mu|^2 + 2 lambda Re(mu) n . Gamma.

**What it leaves open.** An independent reading. Whether the cross blocks of operators in the 10 (two-forms of S^4, or functions on CP^3 whose harmonics contain the 10) are nonzero at that order; the Yukawa block of the bimodule is not a cross block of the window (Proposition 28.20), and lemma 46 places it in End(W) instead.
