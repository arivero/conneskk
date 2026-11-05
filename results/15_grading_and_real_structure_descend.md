# For a symmetric spectral block the grading and the real structure of the parent descend to the block with their signs, and the tunnel of the gap criterion controls the grading

**Status.** Proposition (Proposition 15.9). Proved by Claude Opus 5.5. Ledger row `l15_grading`. Item 4 of Proposition G of paper/towerless_intervals.tex.

**Setting.** Theorem 15.3 (15_gap_criterion.md) with Sigma = -Sigma. D anticommutes with a grading gamma and satisfies J D = eps' D J for an antiunitary J with J^2 = eps and J gamma = eps'' gamma J. D_B = W D W^\\*, and rho, c = 1/(1 + Delta) as in the proof of Theorem 15.3.

**Statement.**

1. P commutes with gamma and J.
2. gamma_F = W gamma W^\\* and J_F = W J W^\\* satisfy the same relations exactly with D_B, and with D_F up to defects bounded by 2 Delta.
3. For DN_T(omega) <= 1 and DN_P(xi, eta) <= 1, |<omega, gamma xi> - <W omega, gamma_F eta>| <= 1/g^2 + rho and |<omega, J xi> - <W omega, J_F eta>| <= 1/g^2 + rho.
4. For Delta > 0, W omega need not be a pseudo-state of T_F; the normalized c W omega is one, and adds at most Delta to these bounds.
5. So gamma added to the families converges along the same tunnels, and the KO-signs of the parent reach the block unchanged when Delta = 0. For the interval, P Gamma P = sigma_3 (Theorem 9.6).

*Scope.* The metric ignores gamma and J; the proposition shows they pass to the block. Composition with the antilinear J gives antilinear functionals, which the definition of the separation does not cover, so a statement of convergence for J needs an extension of the pseudo-state formalism that lemma 15 does not develop.

**Proof.** Lemma 15, Proposition 15.9; the proof is there: spectral projections of D for a symmetric set commute with gamma and J, because gamma and J map the lambda-eigenspace to the eigenspaces of -lambda and eps' lambda; then decompose along P and Q as in Theorem 15.3, using additivity of J_F.

**What it leaves open.** Convergence of the real structure J in a metric that sees antilinear functionals.
