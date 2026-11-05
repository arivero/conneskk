# In the flat one-loop family with a_0 restored and the angle tied to a mass, top-only content has G > 0 on [0, pi/2] and no stationary point in the window, while a universal mass gives one stable stationary angle, theta_\* = 1.009 for three generations and 1.031 for one

**Status.** Numerical result (Python: numpy, scipy, mpmath; scripts not kept), conditional on the coefficient a_0 of 37_casimir_coefficient.md and on the content of lemmas 23 and 24. Computed by Claude Opus 5.5 on 4 November 2026 (lemma 37, paragraph on the flat family with the angle tied). For the periodically continued potential the first roots are near 8.15 and 8.40, then 11.17, 11.71, ...; the scan proves no global count; the minimum of the localized interaction term at c = 1 is exact. No ledger row of its own. Stated in the section on the massless limit of paper/connes_kk_dictionary_note.tex ("(Python)").

**Setting.** G(theta) = A_0 + 3 F(2u) + (3/2) F((16/5) u) - n_f F(t), with t = sin^2 theta, u = t(1 - t), A_0 = 32.92 for three generations (37_casimir_coefficient.md), and theta = l m, as in item 2 of 31_scale_free_potential.md, with stationary lengths at the roots of theta G' = 4 G.

**Statement.**

1. For the top alone, n_f = 6: the small-angle coefficient is proportional to 54/5 - 6 > 0 and G > 0 on [0, pi/2], with minimum 23.88, so V has no stationary point with theta < pi/2; l runs until theta leaves the fundamental domain of Proposition 7.1, where the top joins the tower, and the periodically continued potential has its first stationary points far outside the window, near theta = 8.15 and 8.40, with further roots near 11.17, 11.71, 14.27, ..., as periodicity with an interval where G' > 0 requires.
2. For a universal mass, n_f = 48 at three generations, G changes sign and there is one stable stationary point, theta_\* = 1.009, with M_W/m = 0.685; at one generation, n_f = 16, theta_\* = 1.031 and M_W/m = 0.653.
3. Adding a graviton does not change this classification.

*Scope.* The stationary angles are of order one, so these vacua do not separate the window, and top-only content has no vacuum in the window in this scope.

**Proof.** Lemma 37, paragraph on the flat family with the angle tied: numerical evaluation of G and of the roots of theta G' - 4 G.

**What it leaves open.** A separated window on the scale-free path needs a light mass exponentially small in a stabilized shape parameter (Remark 10.7), and that stabilization at a large value is a target: the one-loop interaction term of one localized fermion channel has its unique minimum at c = mu l = 1 exactly (d_c log Q = 2(1 - c)/w), where the light pair merges with the tower (lemma 37, paragraph on a localized channel).
