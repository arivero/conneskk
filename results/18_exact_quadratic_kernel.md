# The quadratic spectral action of a transverse vector about a constant finite background has an exact kernel with no expansion in m/Lambda, gauge invariant through the Goldstone orbit, whose small-mass limit gives the mass formula (3/2) Q^{-1/2} K Q^{-1/2} and the CCM relation

**Status.** Theorem (Theorem 1 of lemma 18), with Lemma 2 and Corollary 3. Proved by Astra 6 (job 18); checked by Claude Opus 5.5 in Python by computations independent of the kernel (a direct heat trace with constant a reproduces equation (2) to about 0.03%; a direct heat trace on Fourier modes reproduces the kernel at three values of (m, q) to 0.1-0.3%) and by Terra 6.1 by hand, correct with small amendments (historical/reviews/2026-11-03_terra_check_18_16b.md). Ledger row `l18_kernel`. Proposition E.1 of paper/towerless_intervals.tex.

**Setting.** D_A = -i gamma^mu (d_mu + i A_mu) + gamma_5 V_0 on R^4, V_0 = V_0^dagger with signed eigenvalues m_i; the literal trace on H_F including every multiplicity; A smooth and compactly supported; the vacuum-subtracted action. A_mu(q) = a_mu(q) T with T = T^dagger and q.a = 0; d_ij = m_i - m_j; I_t(a, b; q^2) = int_0^1 exp(-t[(1 - u)a + ub + u(1 - u)q^2]) du. Cutoff class (4): f(z) = int exp(-sz) d nu(s) with nu positive, 0 < f(0) < infinity and int (s^{-2} + s^2) d nu(s) < infinity.

**Statement.**

1. (Theorem 1) For S_t = Tr exp(-t D_A^2), S_t^(2) = int_q |a_T(q)|^2 C_{t,T}(q^2), with C_{t,T}(q^2) = (1/(8 pi^2)) sum_ij |T_ij|^2 [(2/t + d_ij^2 + q^2) I_t(m_i^2, m_j^2; q^2) - (exp(-t m_i^2) + exp(-t m_j^2))/t]; for several generators |T_ij|^2 becomes Re((T_a)_ij (T_b)_ji). The Taylor coefficients C_0 and C_1 use a first divided difference and its mixed derivative, and the formulas apply after integration over t = s/Lambda^2 to every f in class (4).
2. (Lemma 2) For V(x) = exp(i pi(x) T) V_0 exp(-i pi(x) T), S[a, V] = S[B, V_0] with B_mu = a_mu + d_mu pi, so the nonzero mass coefficient C_0 is compatible with gauge invariance, without a derivative expansion.
3. (Corollary 3) If all finite eigenvalues are small relative to Lambda, C_0 = (f(0)/(8 pi^2)) K and C_1 = (f(0)/(12 pi^2)) Q, so M_Taylor^2 = (3/2) Q^{-1/2} K Q^{-1/2}, reproducing Proposition 13.5. For the full three-generation Standard Model, Q_11 = 12 and 8 M_W^2 = sum over generations of (m_nu^2 + m_e^2 + 3 m_u^2 + 3 m_d^2), the relations of CCM, equations (4.10) and (4.16).

*Scope.* Statements on R^4, or in the infinite-volume limit; on a finite torus the lattice sum replaces the Gaussian integral and holonomy can enter. The signed eigenvalues are needed, their squares alone being insufficient. The moment hypotheses of class (4) do not by themselves guarantee analytic continuation to every negative q^2. The kernel concerns the classical bosonic quadratic action about a prescribed constant background.

**Proof.** Lemma 18, Theorem 1, Lemma 2 and Corollary 3; the proofs are there. The second-order Duhamel expansion of exp(-t D_A^2), with the vertices (2p + q).a, gamma^{mu nu} q_mu a_nu and (m_j - m_i) gamma^mu gamma_5 a_mu and the quadratic vertex, gives the kernel after completing the momentum square.

**What it leaves open.** The positive Laplace class selects no finite stationary background along radial directions (18_nogo_radial_vacuum.md), so the masses computed from the kernel are conditional on the prescribed background.
