# With the three-generation CCM trace and one massive colour triplet of mass m = pi/(2l), the spectral-action W mass is M_W = sqrt(3/8) m = sqrt(3/8) M_KK, with no interval-overlap correction

**Status.** Corollary (Result 7 of lemma 13), proved under its stated hypotheses; the ledger lists the CCM relation as its hypothesis (`ccm_relation`). Proved by Astra 6 (job 13); the header of lemma 13 records that it reproduces the standard CCM relation. Ledger row `l13_ccm`, depending on `l13_mass_formula`. Item 3 of Proposition F of paper/towerless_intervals.tex.

**Setting.** The full three-generation Standard Model representation with its usual Higgs doublet; all charged fermion states retained in the spectral trace, including those of vanishing Yukawa mass; one colour-triplet Dirac mass at the vacuum identified with m = pi/(2l), every other Dirac mass zero; the formula of 13_spectral_action_vector_mass_formula.md at the matching scale.

**Statement.**

1. For T_1 = sigma_1/2, Q_11 = 12 (one generation of particles gives 2, antiparticles double it, three generations triple it) and K_11 = sum_f N_f m_f^2, so M_W^2 = (3/2) K_11/12 = (1/8) sum_f N_f m_f^2, the relation of CCM, Lemma 4.6, equation (4.16).
2. With K_11 = 3 m^2, M_W^2 = (3/8) m^2 and M_W/M_KK = sqrt(3/8).
3. No factor from the interval wavefunctions or from Wilson-line normalization multiplies this ratio: ||u_L|| = ||u_R|| = 1 and <u_L, D_I u_R> = m, and the factor 2/pi belongs to the coupling of a constant A_5 to the fixed link.
4. With other Dirac masses, M_W^2/M_KK^2 = (1/8)(3 + sum over the other f of N_f m_f^2/m^2); two massive coloured species of mass m give M_W/m = sqrt(3)/2.

*Scope.* The coefficient comes from Q_11 = 12; applied after deleting the other charged states it would no longer normalize the gauge kinetic term canonically. The ratio sqrt(3/8) belongs to the CCM completion; the minimal two-sheet data of the interval give sqrt(6) instead (13_counterexample_two_sheet_sqrt6.md).

**Proof.** Lemma 13, Result 7; the proof is there.

**What it leaves open.** The electroweak doublet assignment, its hypercharges and the charged fermion trace are supplied separately (Result 8: rho = 1 and M_W/M_Z = sqrt(5/8) with Q_2 = 12, Q_Y = 20). Hypothesis H needs a gauge-covariant reduction and a matching of representations, vacuum data and kinetic forms.
