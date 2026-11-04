# Fixed spectral compression of the fluctuated chiral interval is not gauge covariant: a gauge-trivial A_5 with trivial Wilson line changes the compressed spectrum

**Status.** No-go theorem in its scope (Result 3 of lemma 13). Proved by Astra 6 (job 13); checked by Claude Opus 5.5 by hand (the value B = -2a/(3 pi) with trivial Wilson line) and by Terra 6.1 by hand (historical/reviews/2026-11-03_terra_check_08_13_14.md). Ledger row `l13_not_covariant`. Item 2 of Proposition F of paper/towerless_intervals.tex.

**Setting.** The fixed (unfluctuated) projection P of 13_fixed_compression_gauge_fluctuations.md and its link phi[A_5]. U(1) potentials independent of y, with parallel transport W' = -i A_5 W, W(0) = 1, so that D_{I,A} = W D_I W^\\* and the complete interval spectrum is unchanged.

**Statement.**

1. The link phi[A_5] is not a functional of the Wilson line alone, and fixed compression does not descend to continuum gauge-equivalence classes.
2. For A_5 = a cos(2 pi x/l), W(l) = 1 while B = -2a/(3 pi), phi = m - 2ia/(3 pi) and |phi| = sqrt(m^2 + 4a^2/(9 pi^2)). The zero connection and this one are gauge equivalent through a transformation equal to 1 at both endpoints, yet their compressed internal eigenvalues differ.
3. The obstruction is that multiplication by an x-dependent gauge transformation generally fails to preserve PH: compression of multiplication is not multiplicative, and P g P generally fails to be unitary.
4. Already for constant A_5 = a, phi/m = 1 + i (4l/pi^2) a against W(l)^\\* = e^{ial}, so neither equality with the Wilson link nor a universal correction to the mass follows.

*Hypotheses and escapes.* The projection is fixed. The gauge-adapted transported frames u_L W and u_R W W(l)^\\* give the vertical matrix [[0, m W(l)^\\*], [m W(l), 0]], with phi^\\* phi = m^2 I, which omits general radial Higgs fluctuations. The covariant spectral projection of lemma 14 repairs the covariance defect (14_covariant_spectral_projection.md). Compression also differs from eliminating the omitted fermions, which adds -P D_A Q [Q (D_A - z) Q]^{-1} Q D_A P with Q = 1 - P.

**Proof.** Lemma 13, Result 3; the proof is there: B = (a/pi) int_0^pi sin t cos(2t) dt = -2a/(3 pi).

**What it leaves open.** The comparison of the covariant link with the finite fluctuations of the two-point data (lemma 19; 19_comparison_with_parent.md).
