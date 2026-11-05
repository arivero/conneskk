# The minimal grading-preserving spectral truncation of the chiral interval is the Connes-Lott two-point space, with |m| = pi/(2l) and truncated distance 2l/pi

**Status.** Theorem. Proved by Astra 6 (job 05, Part 3). Ledger row `l05_truncation`. It is Theorem A of paper/towerless_intervals.tex. The truncation theorem with |m| = pi/(2l) was not found in print (paper/LITERATURE.md, section A).

**Setting.** H_l = L^2([0, l], C^2) with psi = (L, R), D_l = [[0, d/dx], [-d/dx, 0]] on {(L, R) in H^1 : R(0) = 0, L(l) = 0}, scalar multiplication by C^infinity([0, l]) and grading Gamma = diag(1, -1). Let m_1 = pi/(2l), P = 1_{[0,E]}(|D_l|) with m_1 <= E < 3 m_1, and S = P C([0, l]) P with its inherited operator-system structure (Connes-van Suijlekom, section 1).

**Statement.**

1. D_l is self-adjoint with compact resolvent, its spectrum is {+-(r - 1/2) pi/l : r = 1, 2, ...}, and its kernel is zero.
2. PH_l has the orthonormal chiral basis u_L = sqrt(2/l) (cos(pi x/(2l)), 0), u_R = sqrt(2/l) (0, sin(pi x/(2l))), in which P D_l P = m_1 sigma_1 and P Gamma P = sigma_3.
3. The compression is Q(f) = diag((2/l) int f cos^2(pi x/(2l)) dx, (2/l) int f sin^2(pi x/(2l)) dx), and its range is exactly C + C. So the truncation is unitarily equivalent to the Connes-Lott two-point space with |m| = m_1 = pi/(2l), any phase of m being supplied by a diagonal unitary.
4. The two states omega_0, omega_l of the compressed operator system are at Connes distance 1/m_1 = 2l/pi < l. Their pullbacks are the smeared measures (2/l) cos^2(pi x/(2l)) dx and (2/l) sin^2(pi x/(2l)) dx, at distance 4l/pi^2 in the original seminorm. Endpoint evaluations do not factor through Q, since Q(cos(3 pi x/l)) = 0.
5. The truncation is minimal: there is no zero mode and Gamma exchanges the eigenspaces at +-m_1, so every nonzero grading-preserving spectral subspace contains both.

*Scope.* Complex even data, with no real structure imposed. The construction supplies no KO-6 or Standard Model identification. With the inherited real structure the full diagonal algebra fails first order (08_counterexample_pointwise_reality_first_order.md).

**Proof.** Lemma 05, Part 3; the proof is there. Pointwise orthogonality of the L and R components makes Q(f) diagonal, and Q(1) = I, Q(cos(pi x/l)) = (1/2) sigma_3 span the diagonal algebra.

**What it leaves open.** This interval has no zero mode: a two-state sector at energies E << 1/l and light fermions after collapse are excluded for it (05_nogo_bare_limits_fixed_rank.md). The KO-6 and Standard Model identification is outside the construction.
