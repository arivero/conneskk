# For the flat massless one-loop determinant of lemma 23, theta = pi/2 is the unique global minimum for every n_f > 0; the potential decreases strictly for n_f >= 54/5, and for 0 < n_f < 54/5 its only interior stationary point is a strict maximum

**Status.** No-go theorem in its scope (Result 9 of lemma 24, with Lemma 8; the ledger records it as kind no_go). Proved by Astra 6 (gpt-6-astra, effort xhigh), with no numerical computation in the proof; checked by Terra 6.1 by hand, who gave an independent proof of the key monotonicity without log-concavity or Prékopa's theorem (historical/reviews/2026-11-03_terra_check_24.md), and by Claude Opus 5.5 in Python (e and H on grids; one sign change of H - n_f for n_f in {1, 3, 6, 8, 10}, with the stationary angle 0.34 at n_f = 8). Ledger row `l24_no_minimum`. Cited with lemma 23 in the section on the gauge sector of paper/boundary_condition_note.tex ("\supp{23} and \supp{24}"); paper/connes_kk_dictionary_note.tex uses its normalization of the potential ("In the normalization of \supp{24}").

**Setting.** Exactly the one-loop determinant of 23_nogo_one_loop_interior_minimum.md: a flat interval, zero bulk masses, frequency-one fermions, the stated charged and neutral gauge towers and multiplicities, and the prescribed connector wall condition, with no fermion connector modifying the fermion tower and no wall potential or other angle-dependent term. Put t = sin^2(theta), F(z) = int_0^infinity x^3 log(1 + z/sinh^2 x) dx, J = F', e(z) = -z J'(z)/J(z), and V(t) = 8 pi^2 l^4 V(theta) = 3 F(2t(1 - t)) + (3/2) F((16/5) t(1 - t)) - n_f F(t).

**Statement.**

1. (Lemma 8) 0 < e(z) < 1, and e is nondecreasing.
2. t = 1, that is theta = pi/2, is the unique global minimum.
3. If n_f >= 54/5, V is strictly decreasing on the interior.
4. If 0 < n_f < 54/5, there is exactly one interior stationary point, and it is a strict maximum.

*Hypotheses.* Those of the Setting, for theta in [0, pi/2]; at theta = pi/2 the determinant has its continuous value, while the principal-logarithm window is degenerate (referee).

*Escapes, as the lemma states them.* Frequency-two fermions, modified form factors through warping or other geometry, suitable bulk-mass sectors, wall potentials, and wall kinetic or interaction terms. The full effective action of the K x I_l parent, with its K-tower, has not been computed. By Result 10, opposite bulk masses c_U = -c_Q keep the potential finite with t = 1 as unique global minimum, the absence of other interior local minima at nonzero c staying numerical, while c_Q + c_U != 0 gives angle-dependent ultraviolet divergences that need a completion, a regulator and counterterms.

**Proof.** Lemma 24, Lemma 8 and Result 9; the proofs are there. Lemma 8 follows from concavity of u -> log J(e^u), by Prékopa's theorem (Theorem 6, p. 342 of the original paper) applied to a jointly log-concave integrand. With R_c(t) = (1 - 2t) J(c t(1 - t))/J(t), Lemma 8 makes R_c strictly decreasing for c >= 2, so H(t) = 6 R_2(t) + (24/5) R_{16/5}(t) decreases strictly from 54/5 to 0 on (0, 1/2), and V'(t) = J(t) [H(t) - n_f] there.

**What it leaves open.** The result points to the escapes. Pure frequency-two channels give an interior global minimum, with Lemma 8 entering through Lemma 26.1 (26_interior_minimum_frequency_two.md).
