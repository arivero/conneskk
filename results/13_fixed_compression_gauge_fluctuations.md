# The fluctuated product of spacetime with the chiral interval compresses exactly to the lowest pair, with weighted sheet connections and link phi = m + iB, and the image phi + phi^\* = 2m omits part of the Connes-Lott fluctuations

**Status.** Theorem (Result 2 of lemma 13, with Result 1 on the fluctuations). Proved by Astra 6 (job 13); checked by Claude Opus 5.5 by hand (the compression integrals) and by Terra 6.1 by hand (historical/reviews/2026-11-03_terra_check_08_13_14.md). Ledger row `l13_compression`, depending on `l05_truncation`. Item 1 of Proposition F of paper/towerless_intervals.tex.

**Setting.** M a closed Riemannian spin four-manifold, Hermitian Euclidean gamma matrices, D_M = -i gamma^mu nabla_mu^S, E = [[0, 1], [-1, 0]], D = D_M (x) 1 + gamma_5 (x) E d/dx on L^2(S_M) (x) L^2([0, l], C^2) (x) C^n with R(y, 0) = 0 and L(y, l) = 0; the algebra acts by the same matrix multiplication on L and R; complex inner fluctuations D + omega, omega = sum a_j [D, b_j] = omega^\\*, with no real structure or extra bimodule. m = pi/(2l), u_L and u_R the lowest pair of lemma 05, P the projection onto their span (tensored with spacetime and gauge factors); w_L = (2/l) cos^2(mx), w_R = (2/l) sin^2(mx), k(x) = (1/l) sin(pi x/l).

**Statement.**

1. (Result 1) The fluctuated operators are exactly D_A = -i gamma^mu (nabla_mu^S + i A_mu) + gamma_5 E (d/dx + i A_5), with arbitrary smooth Hermitian n x n matrices A_mu(y, x), A_5(y, x): connections on the trivial U(n) bundle over M x I_l. The fermion conditions induce no Dirichlet, Neumann or endpoint-value conditions on A_mu or A_5, and every smooth gauge transformation preserves them.
2. (Result 2) Exactly, P D_A P = -i gamma^mu (nabla_mu^S + i diag(A_{L,mu}, A_{R,mu})) + gamma_5 [[0, phi], [phi^\\*, 0]], with A_{L,mu} = int w_L A_mu dx, A_{R,mu} = int w_R A_mu dx, phi = m I_n + iB and B = int k(x) A_5(y, x) dx = B^\\*.
3. The exact image consists of arbitrary Hermitian sheet connections and of links with phi + phi^\\* = 2m I_n.
4. The finite algebra M_n(C) + M_n(C) with D_F = m [[0, I], [I, 0]] admits an arbitrary complex matrix as total link, so not every Connes-Lott fluctuation arises by this compression; the fluctuation phi = 0, for example, has no continuum lift.

*Scope.* For SU(2), B is traceless, and the continuum A_5 is adjoint-valued, so an electroweak Higgs doublet needs a further identification. The real-triple assertion of lemma 08 (Theorem 5) restricts the interval algebra to constants and supplies no Standard Model real structure for the full compressed algebra.

**Proof.** Lemma 13, Results 1 and 2; the proofs are there. The upper-right matrix element of i E A_5 is (2i/l) int cos(mx) sin(mx) A_5 = iB; the lifts A_mu = (A_L + A_R)/2 + (A_L - A_R) cos(pi x/l) and A_5 = (pi/2) B show that the image is exact.

**What it leaves open.** The fixed compression is not gauge covariant (13_nogo_fixed_compression_not_covariant.md), and lemma 14 repairs that. Hypothesis H needs a gauge-covariant reduction and a matching of representations, vacuum data and kinetic forms (lemma 13, consequence).
