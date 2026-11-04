# In the one-loop step-threshold model of the flat parent, without frequency-2 multiplets, the three gauge couplings meet at mu_\* = 2.21 x 10^14 GeV with M_KK = 3.15 x 10^13 GeV, the only solution with S >= 1

**Status.** Numerical result (Result 26.6; Python, one loop), conditional on the spectrum of model (4) and its matching prescription; ledger status numerical. Computed by Claude Opus 5.5 in Python (nested root finding over a scan of 1401 values of M_KK, with input shifts); checked by Terra 6.1 in Python (root finding), with the uniqueness for S >= 1 proved by hand (historical/reviews/2026-11-03_terra_check_26.md, item 5). Ledger row `l26_meeting` (depending on `l26_lr`), with prior work recorded as partial: Abe-Goto-Kawamura, PTEP 2018 103B01, an interval Pati-Salam model near 10^13 GeV with other content. Cited in the section on the gauge sector of paper/boundary_condition_note.tex ("\supp{26}").

**Setting.** Model (4) of 26_left_right_difference_logarithmic.md, with the inputs of the steer note, no thresholds at the top or the W, and Standard Model running below M_KK.

**Statement.**

1. The two conditions alpha_1 = alpha_2 = alpha_3 in (4) have the solution M_KK = 3.15 x 10^13 GeV, mu_\* = 2.21 x 10^14 GeV, S = 7.04, with alpha^-1 = 46.0 for F = 8 and 52.6 for F = 0.
2. It is the only solution with S >= 1: eliminating log(mu/M_Z) between the left-right equation and the equation for alpha_2 = alpha_3 leaves a continuous function of S whose derivative between thresholds is (315 N_h - 161 N_n)/(44 S) > 0, with N_n, N_h the numbers of levels below S (referee).
3. Shifts of 0.1 in alpha_1^-1 or alpha_2^-1 and of 0.15 in alpha_3^-1, one at a time, move M_KK within 2.9 to 3.4 x 10^13 GeV, and all three together within 2.66 to 3.70 x 10^13 GeV.

*Scope.* Larger effects are possible: one additional light colour-triplet Weyl fermion changes alpha_3^-1 by about -1.4 up to that scale, and the Standard Model gauge part of the two-loop terms by about (-0.20, -0.27, +0.39) (referee); finite wall terms and split thresholds are not included. So in this model the relation g_3^2 = g_2^2 = (5/3) g_Y^2 holds at one scale with no added thresholds, and that scale fixes the tower.

**Proof.** Lemma 26, Result 26.6: a numerical root of the two conditions in (4), with the uniqueness argument of item 2 written there.

**What it leaves open.** At this tower the small-angle relation M_W l = sqrt(2) theta requires theta = 5.7 x 10^-12, and by Proposition 26.2b no such angle is a global minimum of the potential of 26_interior_minimum_frequency_two.md at integer counts; metastable minima in the cases left to scans are not excluded (lemma 26, Two regimes). With the boundary values of Result 26.7, r = 1 gives a running top mass near 172 GeV at this tower, an illustration that predicts no spectrum. Priority for the pair (M_KK, mu_\*) is open.
