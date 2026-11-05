# For the heat cutoff and a universal angle theta, the spectral action of an interval channel is a Jacobi theta function, strictly decreasing on [0, pi/2] and stationary at theta = pi/2, the Connes-Lott value m = pi/(2l)

**Status.** Proposition (Proposition 23.7). Proved by Claude Opus 5.5. Ledger row `l23_theta`. Proposition 8 of paper/boundary_condition_note.tex.

**Setting.** The channels of Example 23.5 with universal theta, whose eigenvalues are +-(n pi + theta)/l by Theorem 22.1; the heat cutoff; s = l Lambda and x = theta^2/s^2.

**Statement.**

1. Tr_channel exp(-D^2/Lambda^2) = 2 sum_{n in Z} exp(-(n pi + theta)^2/s^2) = (2 s/sqrt(pi)) theta_3(theta, exp(-s^2)).
2. It is strictly decreasing on [0, pi/2], with its maximum at theta = 0 and its minimum at theta = pi/2, where it is stationary, and it is symmetric under theta -> pi - theta.
3. In the towerless regime s -> 0 at fixed x it tends to 2 e^{-x}, the form of the vacuum density in lemma 18 and Proposition 21.2.

*Scope.* This family lies outside the hypotheses of No-go theorem 9 of lemma 18 (18_nogo_radial_vacuum.md), which concerns finite internal data and a free ray V = c V_\*: here the radial direction is a compact orbit of relative gradings, and the tower, which the finite description omits, supplies a second branch with a stationary point at theta = pi/2. There m = pi/(2l) and M_W = M_Z = 0 by Theorem 23.6, with a degenerate lowest eigenspace, so the minimum of the literal action is a vacuum with massless vectors and is not the physical point.

**Proof.** Lemma 23, Proposition 23.7; the proof is there. Poisson summation and the Jacobi triple product write the sum as a constant times the product over n >= 1 of (1 + 2 q^{2n-1} cos(2 theta) + q^{4n-2}), q = exp(-s^2), and each factor is positive and strictly decreasing in theta on [0, pi/2].

**What it leaves open.** The sign of the term agrees with the fermion loop of the Hosotani mechanism, where gauge-boson loops enter with the opposite sign, so an interior minimum could come from that competition, which the classical spectral action does not contain. The one-loop potential is 23_nogo_one_loop_interior_minimum.md and 24_nogo_massless_one_loop_minimum.md.
