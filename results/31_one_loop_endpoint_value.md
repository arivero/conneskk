# Under the hypotheses of Theorem 9 of lemma 24, the angle-dependent one-loop potential, relative to theta = 0, has its minimum at theta = pi/2 with value -93 zeta(5) n_f/(512 pi^2 l^4), and near theta = 0 it is (3 zeta(3)/(16 pi^2))(54/5 - n_f) theta^2/l^4

**Status.** Proposition (Proposition 1.4, corrected). Proved by Claude Opus 5.5 (branch 11D; ledger agent `claude`); checked by its author in Python (historical/11D/checks_11d.py, sections F and F2: F(1) = 1.506786, J(0) = 1.803085, series against quadrature to 10^-6), by Terra 6.1 by hand, whose independent proof is written out in the Referee proofs of lemma 31, and by Claude Sonnet 5.5 by hand (reports: historical/reviews/2026-11-04_terra_check_11d.md, historical/reviews/2026-11-04_sonnet_second_check_11d.md). The first version read this potential as the whole energy of the walls and concluded that the walls attract; that reading is withdrawn (lemma 31, Correction of 3 Nov 2026). Ledger row `d11_casimir` (depending on `l24_no_minimum` and `l23_wz`). No paper cites it separately.

**Setting.** The flat interval with zero bulk masses, frequency-one fermions, the gauge towers and multiplicities of lemma 24, no wall potential and n_f > 0. With t = sin^2 theta and F(t) = int_0^infinity x^3 log(1 + t/sinh^2 x) dx, equation (22) of lemma 24 gives 8 pi^2 l^4 V(theta) = 3 F(2t(1 - t)) + (3/2) F((16/5) t(1 - t)) - n_f F(t).

**Statement.**

1. theta = pi/2 is the unique global minimum, with V(pi/2) - V(0) = -93 zeta(5) n_f/(512 pi^2 l^4), since F(1) = 93 zeta(5)/64.
2. Near theta = 0, V(theta) - V(0) = (3 zeta(3)/(16 pi^2))(54/5 - n_f) theta^2/l^4 + o(theta^2), since F'(0) = (3/2) zeta(3).
3. At theta = pi/2 the exact vector poles of lemma 23 give M_W = M_Z = 0 at fixed l, with the fermion at the tower scale pi/(2l).

*Scope.* The potential is relative to theta = 0. The theta-independent Casimir energy a_0/l^4 of the towers is not part of it, and the direction in which l moves at the angular minimum depends on the sign of a_0 - 93 zeta(5) n_f/(512 pi^2). The minimum over the angle at fixed l opens no dimension, and lemma 23 already notes that it is not the physical point.

**Proof.** Lemma 31, Proposition 1.4, and the independent proof in its Referee proofs: F is strictly increasing with F(0) = 0 and the gauge terms vanish at t = 1; log coth x = 2 sum over odd k of e^{-2kx}/k integrates termwise to F(1) = (3/2)(1 - 2^{-5}) zeta(5); and 1/sinh^2 x = 4 sum_n n e^{-2nx} gives F'(0).

**What it leaves open.** The coefficient a_0 was the open item of lemma 31; it is computed for the corpus content in lemma 37 (37_casimir_coefficient.md). The path along which l and theta move together is 31_scale_free_potential.md.
