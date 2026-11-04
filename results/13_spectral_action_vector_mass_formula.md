# At leading spectral-action order the canonically normalized vector mass matrix is M^2 = (3/2) Q^{-1/2} K Q^{-1/2}, with Q the trace form of the generators and K the trace form of their commutators with the vacuum

**Status.** Proposition (Result 5 of lemma 13). Proved by Astra 6 (job 13); checked by Claude Opus 5.5 by hand (the 1 : 3 ratio of the a_4 gauge and scalar terms with the canonical normalization) and by Terra 6.1 by hand (historical/reviews/2026-11-03_terra_check_08_13_14.md). Ledger row `l13_mass_formula`. Item 3 of Proposition F of paper/towerless_intervals.tex ("\supp{13}"); lemma 18, Corollary 3, recovers it as the small-mass limit of the exact kernel.

**Setting.** A specified finite fermion space H_F with Hermitian represented gauge generators T_a; D = -i gamma^mu (nabla_mu^S + i A_mu) + gamma_5 V with V = V^\\* the total finite scalar matrix; the ordinary spectral trace, an even cutoff function with f_0 = f(0) > 0, the terms through order Lambda^0, and no additional kinetic terms. V_0 a chosen constant vacuum, Q_ab = Re Tr_{H_F}(T_a T_b), K_ab = Re Tr_{H_F}([T_a, V_0]^\\* [T_b, V_0]).

**Statement.**

1. The relevant Lagrangian is c Tr_{H_F}(F_{mu nu} F^{mu nu}) + 3c Tr_{H_F}(D_mu V D^mu V), with c = f_0/(24 pi^2).
2. On the faithfully represented gauge algebra, M^2 = (3/2) Q^{-1/2} K Q^{-1/2}.
3. Relative to the mixed-boundary continuum mass M_KK = m, M_j^2/M_KK^2 = (3/(2 m^2)) lambda_j(Q^{-1/2} K Q^{-1/2}).
4. The common coefficient f_0 cancels; the data needed are the represented generators, their full trace multiplicities and V_0.

*Scope.* The masses are conditional on the stated vacuum and refer to the leading spectral-action approximation. The bare finite Dirac matrix need not be the vacuum: determining V_0 requires the scalar potential, including its cutoff moments and curvature dependence.

**Proof.** Lemma 13, Result 5; the proof is there. It uses the heat coefficient a_4, which contains (1/(16 pi^2)) Tr(E^2/2 + Omega_{mu nu} Omega^{mu nu}/12) (CCM, Theorem 6.1, equation (6.10)), the Clifford traces tr_S(E_F^2) = 2 F^2, tr_S(E_V^2) = 4 D V D V, tr_S(Omega_F^2) = -4 F^2, and the change of variables A_can = 2 sqrt(c) Q^{1/2} A.

**What it leaves open.** The interval does not supply the generators and trace data: the minimal two-sheet model and the CCM trace give different answers (13_counterexample_two_sheet_sqrt6.md, 13_ccm_triplet_ratio.md). Near the cutoff the exact kernel of lemma 18 replaces the formula (18_exact_quadratic_kernel.md).
