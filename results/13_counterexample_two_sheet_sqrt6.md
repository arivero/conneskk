# The minimal two-sheet spectral action gives a massless diagonal vector and a relative vector of mass sqrt(6) m, against the Neumann-Dirichlet tower mass m = pi/(2l)

**Status.** Counterexample (Result 6 of lemma 13), with Lemma 4 on the tower mass. Proved by Astra 6 (job 13); checked by Claude Opus 5.5 by hand (the Neumann-Dirichlet mass and the eigenvalues 0 and 6 m^2) and by Terra 6.1 by hand (historical/reviews/2026-11-03_terra_check_08_13_14.md). Ledger rows `l13_sqrt6` (depending on `l13_mass_formula` and `l13_kk_mass`) and `l13_kk_mass`. Item 3 of Proposition F of paper/towerless_intervals.tex.

**Setting.** H_F = (C_L^n + C_R^n) (x) C^N, V_0 = m [[0, I_n], [I_n, 0]] (x) I_N; both sheet groups gauged, U(1)_L x U(1)_R for n = 1 or SU(2)_L x SU(2)_R for n = 2; the action of 13_spectral_action_vector_mass_formula.md. Comparison (Lemma 4): the transverse-vector operator -d^2/dx^2 with f'(0) = 0, f(l) = 0 and no boundary kinetic terms has lowest mass M_KK = pi/(2l) = m; Dirichlet conditions at both ends give pi/l, and two Neumann conditions give a zero mode.

**Statement.**

1. For one normalized generator t with kappa = N tr(t^2), Q = kappa I_2 and K = 2 kappa m^2 [[1, -1], [-1, 1]], so M^2 = 3 m^2 [[1, -1], [-1, 1]], with eigenvalues 0 and 6 m^2: the diagonal combination is massless and the relative one has M_relative = sqrt(6) m, also for colour multiplicity N = 3. For SU(2) this applies to each t = sigma_a/2.
2. If only the diagonal group is gauged, every generator commutes with V_0 and all these vector masses vanish; neither choice realizes the assumed continuum mixed-boundary breaking automatically.
3. Adding S otherwise identical charged pairs with zero finite Dirac operator gives M_relative^2 = 6 N m^2/(N + S): the value depends on the full fermion trace, at fixed mass and colour multiplicity of the original pair.
4. Restricting the continuum field to its lowest mixed-boundary profile, A_mu = a_mu cos(mx), gives A_L = (8/(3 pi)) a, A_R = (4/(3 pi)) a and M_restricted^2 = 3 m^2 (c_L - c_R)^2/(c_L^2 + c_R^2) = (3/5) m^2, an additional restriction distinct from the unrestricted two-sheet theory.

*Scope.* The minimal two-sheet data at leading spectral-action order. The fermion boundary conditions do not derive the Neumann-Dirichlet problem (lemma 13, Results 1 and 4).

**Proof.** Lemma 13, Lemma 4 and Result 6; the proofs are there, by direct multiplication; the factor N cancels between scalar and gauge normalization.

**What it leaves open.** The CCM comparison (13_ccm_triplet_ratio.md), and a gauge-covariant reduction, in which the ratio 3/5 reappears (14_counterexample_three_fifths.md).
