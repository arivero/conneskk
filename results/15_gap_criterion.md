# A metric spectral triple with a finite spectral block of gap g lies within 1/g^2 + max(delta/2, Delta) + Delta + sqrt(Delta) of (C, C^N, D_F) in the spectral propinquity, with no anticommutation hypothesis

**Status.** Theorem (Theorem 15.3, Lemma R2 of the Farsi-Latrémolière assessment), with Remark 15.4 and Corollaries 15.5 and 15.6. Proved by Claude Opus 5.5. Ledger rows `l15_gap`, `fl_R2` (Corollary 15.5, depending on `l09_limits`) and `l15_yukawa` (Corollary 15.6). Proposition G of paper/towerless_intervals.tex, with its items 1 and 2.

**Setting.** T = (A, H, D) a metric spectral triple with delta = diam T; Sigma a finite subset of R, P = 1_Sigma(D) of rank N >= 1, Q = 1 - P, and g > 0 with |lambda| >= g on Sp(D) outside Sigma; D_F a Hermitian N x N matrix, W: PH -> C^N unitary (extended by 0), Delta = ||W D W^\\* - D_F||, T_F = (C, C^N, D_F). The spectral propinquity is capped at sqrt(2)/2 and has the units of a length.

**Statement.**

1. (Theorem 15.3) min(sqrt(2)/2, delta/2) <= Lambda_spec(T, T_F) <= 1/g^2 + max(delta/2, Delta) + Delta + sqrt(Delta); for Delta = 0 the upper bound reads delta/2 + 1/g^2. No anticommutation hypothesis enters.
2. (Remark 15.4) For T_eps = (A, H, D/eps) with 0 in Sp(D), Sigma = {0} and D_F = 0: min(sqrt(2)/2, eps delta_1/2) <= Lambda_spec <= eps delta_1/2 + eps^2/g_1^2, with delta_1 = diam T_1 and g_1 the gap of D. This is Corollary 4.1 of Farsi-Latrémolière with a sharp leading rate; Counterexample R1 violates the gap hypothesis (results/R1_counterexample_farsi_latremoliere.md).
3. (Corollary 15.5) For the tuned interval T_l of Theorem 9.9 and small l, l/2 <= Lambda_spec(T_l, (C, C^2, m_f sigma_1)) <= l/2 + l^2/(pi^2 + c^2), and for the Connes-Lott triple CL(m_f) = (C + C, C^2, m_f sigma_1) of diameter 1/m_f, Lambda_spec(T_l, CL(m_f)) >= min(sqrt(2)/2, (1/m_f - l)/2).
4. (Corollary 15.6) The towerless Yukawa family of Theorem 12.7 is a family of metric spectral triples of diameter l, and Lambda_spec(T_{X,l}, (C, C^{N_Q + N_U}, D_F)) = O(l) with D_F the Yukawa block of M_F = Phi_Q Y_hat Phi_U. In this metric the algebra of the limit is C.

*Scope.* One metric, applied to the whole algebra. The whole tuned triple converges to a point carrying a two-dimensional massive Dirac block while its compression at each l is the Connes-Lott triple (Theorem 9.6); both statements hold, since they concern different objects and the compression is not a quantum isometry.

**Proof.** Lemma 15, Theorem 15.3, Remark 15.4 and Corollaries 15.5 and 15.6; the proofs are there. The top tunnel is A + C with L_E(a, z) = max{L_T(a), ||a - z||/rho}, the module H + C^N carries DN_P = max{DN_T, DN_F, ||W xi - eta||/rho}, the Leibniz inequalities hold because the limit algebra acts by scalars, and ||Q xi|| <= ||D xi||/g bounds the rest.

**What it leaves open.** The converse is 15_converse_and_finite_limits.md. Convergence of J needs an extension of the pseudo-state formalism to antilinear functionals (15_grading_and_real_structure_descend.md).
