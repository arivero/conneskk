# The normal model Q = sigma . d_y + y . J with spin 3/2 has ker Q = 0 and ker Q^\* = 3 + 1 with a gap, and over S^4 this gives exactly four core states, one copy of the 4 of Sp(2), the twistor spinors as sections of S

**Status.** Proposition (Proposition 28.11), with Proposition 28.3. Proposition 28.11 proved by Astra 6, job 28 (historical/reviews/2026-11-03_astra_job_28.md, Proposition 4), and checked by Claude Opus 5.5 in Python (in an oscillator basis: Q\* Q starts at 1.02, and Q Q\* has four near-zero values, with total spin 0 and three values near spin 1, then 1.02); Proposition 28.3 proved by Claude Opus 5.5 and checked by Astra 6 by hand. The Terra report on lemma 28 does not cover them, and the ledger records them as refereed by Astra 6 or checked by Claude Opus 5.5. Ledger rows `l28_normal` and `l28_core`. The fibre kernel (1, 3) (+) (1, 1) enters the proof of Theorem 2 of paper/joint_limit_note.tex.

**Setting.** Q = sigma . d_y + y . J on L^2(R^3; C^2 (x) C^4), with J Hermitian of spin 3/2 and the normal Sp(1) acting; the induced bundle over S^4 and the twisted Dirac operators there, with Cas_G(4) = 5/2, Cas_G(16) = 15/2, Cas_G(20) = 21/2, Cas_G(40) = 29/2 and Cas_K(j_a, j_b) = 2 j_a(j_a + 1) + 2 j_b(j_b + 1).

**Statement.**

1. ker Q = 0 and ker Q\* = 3 (+) 1 under the normal Sp(1), with a positive gap above the zero modes; changing the sign of the mass exchanges the two kernels.
2. The induced bundle over S^4 is S^2(S) (+) 1, and the operator on Sigma (x) S^2(S) has exactly four zero modes, in one chirality. On the parallel inclusion S -> S (x) S^2(S) the twisted equation is a multiple of the twistor equation, so the kernel consists of harmonic spinors of the twisted operator, which are twistor spinors as sections of S.
3. (Proposition 28.3) Hom_K(4, S^- (x) (1, 3)) has dimension 1, through (1, 2), and Hom_K(4, S^+ (x) (1, 3)) = 0, in agreement with the index 4; every map in it annihilates (2, 1) in 4. On a representation V the twisted operator has D^2 = Cas_G(V) + 3/2 - Cas_K(tau), which is 0, 5, 8, 12 on the 4, 16, 20, 40 for the twist (1, 3), and 4 on the 4 for the untwisted part (1, 1).
4. Rescaling gives the localization scale r = O(M^{-1/2}) at the core and O(M^{-1}) at the wall.

*Scope.* By Proposition 28.4, a K-symmetric mode supported on (1, 2) has tr(B Gamma_5)/tr B = +-1 and tr(B t-hat) = 0, so the zero section gives Q(x_a) = +-Gamma_a/5 and nothing for the fibre-dependent part of a function: the core block is the quaternionic map Q_B of the base.

**Proof.** Lemma 28, Propositions 28.11 and 28.3; the proof of 28.11 is in the Astra report: Q\* Q = -Laplacian + (y . J)^2 - sigma . J >= 0, with equality excluded since sum_i J_i^2 = 15/4, and the Callias index for the positive eigenbundles of n . J, of degrees 3 and 1.

**What it leaves open.** The core estimate uniform in the mass and in all representations of Sp(2) is Proposition 29.2 and Lemma 29.3 (29_window_case_b.md), which use the exact splitting of Proposition 29.1 in place of the spectral separation hypothesis of Maridakis, which fails for this mass.
