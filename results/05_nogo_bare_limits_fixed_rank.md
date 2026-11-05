# At fixed rank, m -> 0 separates the two sheets without producing a heat dimension, and m -> infinity collapses the metric with an empty light sector

**Status.** No-go theorem in its scope (labelled Proposition in lemmas/README.md; ledger kind no_go). Proved by Astra 6 (job 05, Part 4). Ledger row `l05_limits`. Stated, with No-go theorem 8 of lemma 08, as Proposition A.1 of paper/towerless_intervals.tex.

**Setting.** The chain D_N of lemma 05, Part 1, with the normalization h_N = pi/(4 l sin theta_N), and the interval D_l of Part 2, with m = m_1 = pi/(2l). Physical energies or heat times are held fixed unless stated otherwise.

**Statement.**

1. For fixed N, D_N = m T_N with T_N independent of m. As m -> 0, D_N -> 0, K_N(t) -> 2(N - 1) and d_N(i, j) -> infinity for i != j; every finite N has ultraviolet heat dimension zero, and the minimal truncation has K_2(t) = 2 exp(-t m^2).
2. A resolved one-dimensional window at fixed energy E needs 1/l << E << N/l. So, as l -> infinity, a continuum limit on a fixed positive energy window needs N/l -> infinity, equivalently N m -> infinity. The order of limits matters: lim_l lim_N K_N(t)/l = 1/sqrt(pi t), while lim_N lim_l K_N(t)/l = 0.
3. As m -> infinity all distances tend to zero, while every eigenvalue has absolute value at least m, so ||(D_N - i)^{-1}|| <= (m^2 + 1)^{-1/2} -> 0 and H_light = ker T_N = 0. The same holds for D_l. No fermion pair survives at fixed energy.
4. The two-state truncation exists only for m_1 <= E < 3 m_1, and a cutoff E << 1/l retains no modes; the first two positive levels have ratio 3.

*Precision (Terra 6.1).* N/l -> infinity gives uniform convergence of the dispersion on bounded energy windows and of normalized heat traces and counting densities. It does not by itself give convergence of the unnormalized difference of heat traces: for N = floor(l^(5/4)) that difference diverges.

*Hypotheses and escapes.* The bare chain and interval of lemma 05, with no bulk mass and no boundary coupling. The escapes for the empty light sector are a tuned bulk mass (lemma 09, Theorem 9.9; 09_two_limits.md) and a scaled boundary coupling (lemma 12, Theorem 12.7; 12_light_spectrum_towerless_limit.md).

**Proof.** Lemma 05, Part 4; the proof is there. Both limits follow from D_N = m T_N with T_N fixed and from |lambda| >= m.

**What it leaves open.** The result points to families in which the number of retained modes grows (N m -> infinity) or in which the light pair is held by localization or by a wall coupling; those are lemmas 09 and 12.
