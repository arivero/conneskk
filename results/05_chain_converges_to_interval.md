# The staggered N-site chain has spectrum +-2 h_N sin((2r-1) pi/(4N-2)) and site distances |i-j|/h_N, and it converges to the chiral interval in spectrum, heat trace and Gromov-Hausdorff distance

**Status.** Theorem. Proved by Astra 6 (job 05, Parts 1 and 2); checked numerically by Claude Opus 5.5 (spectra to 1e-14, commutator norms and endpoint distances for l = 1 and N = 2, 3, 5, 9; lemma 05, section "Independent numerical check"). Parts 1 and 2 have no ledger row of their own; the rows of lemma 05 are `l05_truncation` and `l05_limits`. The table of lemmas/README.md lists Terra 6.1 for Part 4 and for Theorem A of the paper, and lists no referee for Parts 1 and 2. The chain is stated after Theorem A of paper/towerless_intervals.tex.

**Setting.** N >= 2, n = N - 1, A_N = C^N, H_N = span{L_1, ..., L_{N-1}, R_2, ..., R_N}, pi_N(a) = diag(a_1, ..., a_{N-1}, a_2, ..., a_N), Gamma_N = diag(I_n, -I_n), B_N = h_N (I_n - S_n) with S_n the lower shift, D_N = [[0, B_N], [B_N^\\*, 0]]. Spectral calibration theta_N = pi/(4N - 2), h_N = pi/(4 l sin theta_N), about N/l, which fixes the smallest positive eigenvalue at pi/(2l) for every N. Complex even triples, with no real structure or KO axiom imposed. The interval D_l is that of 05_connes_lott_minimal_truncation.md.

**Statement.**

1. spec(D_N) = {+-lambda_{N,r} : 1 <= r <= N - 1} with lambda_{N,r} = 2 h_N sin((2r - 1) theta_N), and K_N(t) = Tr exp(-t D_N^2) = 2 sum_r exp(-4 t h_N^2 sin^2((2r - 1) theta_N)).
2. ||[D_N, pi_N(a)]|| = h_N max_i |a_{i+1} - a_i|, so d_N(i, j) = |i - j|/h_N and d_N(1, N) = (4l(N - 1)/pi) sin(pi/(4N - 2)) -> l. At N = 2 the triple is exactly the Connes-Lott two-point space with h_2 = pi/(2l).
3. As N -> infinity, lambda_{N,r} -> (2r - 1) pi/(2l); K_N(t) -> K_l(t) = 2 sum_r exp(-t ((r - 1/2) pi/l)^2) uniformly on every [eps, T]; and with x_i = (i - 1) l/(N - 1) the site metric converges to [0, l] in Gromov-Hausdorff distance, with distortion and mesh O(l/N).
4. For t_N/l^2 -> 0 and N^2 t_N/l^2 -> infinity, K_N(t_N) ~ l/sqrt(pi t_N) and -2 t_N K_N'(t_N)/K_N(t_N) -> 1: a controlled one-dimensional heat window.

*Scope.* The geometric normalization h_N = (N - 1)/l gives d_N(1, N) = l exactly but mass 1/l at N = 2, so spectral and metric calibration differ at finite resolution. The one-component staggered path and the vertex-edge incidence Dirac operator have other spectra and distances; the incidence chain has a zero mode and same-grading endpoints and differs from Connes-Lott at N = 2. The endpoint chirality concerns the allowed boundary components and supplies no localized chiral zero modes.

**Proof.** Lemma 05, Parts 1 and 2; the proofs are there. In the basis L_1, R_2, L_2, ..., R_N, D_N is a path adjacency matrix whose alternating signs a diagonal unitary removes; the bound lambda_{N,r} >= (2r - 1)/l gives a summable Gaussian majorant for the heat traces.

**What it leaves open.** At fixed rank the chain has heat dimension zero, and at fixed energy its collapse leaves no light fermions (05_nogo_bare_limits_fixed_rank.md).
