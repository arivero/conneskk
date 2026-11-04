# For the SO(32) Wilson line W_a = diag(1_30, R(2 pi a)), a = theta/pi in [0, 1/2], the centralizer is SO(32) at a = 0, SO(30) x SO(2) for 0 < a < 1/2 and S(O(30) x O(2)) at a = 1/2, where the (30)_{+-1} tower is antiperiodic, and the one-loop minimum of the flat family is a = 1/2

**Status.** Proposition (Proposition 7.2, with the referee amendment and the second-check derivation). Proved by Claude Opus 5.5 (branch 11D; ledger agent `claude`) by hand; checked by its author by hand, by Terra 6.1 by hand, whose independent proof of the full centralizer is written out in the Referee proofs of lemma 40, and by Claude Sonnet 5.5 by hand, whose derivation of the spin lift is written out in lemma 40 (reports: historical/reviews/2026-11-04_terra_check_11d.md, historical/reviews/2026-11-04_sonnet_second_check_11d.md). Ledger row `d11_far_wall` (depending on `d11_angle_interval`, `d11_wilson_top` and `l24_no_minimum`). No paper cites it separately.

**Setting.** By Proposition 6.1 of the 11D line (ledger row `d11_wilson_top`), the channel spectrum of 40_channel_angle_interval.md is that of the states (30)_{+-1} of SO(32) on a circle of radius R = l/pi with the Wilson line W_a, a = theta/pi.

**Statement.**

1. [0, 1/2] is the moduli interval of one Wilson-line eigenvalue modulo a -> -a and a -> a + 1.
2. The centralizer of W_a in SO(32) is SO(32) at a = 0, SO(30) x SO(2) for 0 < a < 1/2, and S(O(30) x O(2)) at a = 1/2, where W_{1/2} = diag(1_30, -1_2); its identity component is SO(30) x SO(2).
3. At a = 1/2 the (30)_{+-1} tower is (n + 1/2)/R, the antiperiodic tower of Proposition 1.1.
4. In Spin(32)/Z_2 the component of determinant -1 sends the lift of W_{1/2} to its negative, so the heterotic centralizer is connected; the SO(32) holonomy has period 1 in a, and its lift, in Spin(32) and in Spin(32)/Z_2, has period 2.
5. Under the hypotheses of Theorem 9 of lemma 24, with n_f > 0, the unique global minimum of the one-loop potential is t = sin^2 theta = 1, that is a = 1/2.

*Scope.* Item 5 assumes the flat massless determinant, its field content and wall conditions, and no further angle-dependent term; it derives no force on a supersymmetric type I' brane, whose D8 positions are flat directions.

**Proof.** Lemma 40, Proposition 7.2, its Referee proofs and its second-check derivation: a commuting orthogonal map preserves the eigenspaces of W_a and acts on the plane by a rotation when 0 < a < 1/2; at a = 1/2, with Clifford generators G_i, the lift of W_{1/2} is G_31 G_32, and G_1 G_31 conjugates it to its negative, which differs from 1 and from the volume element omega.

**What it leaves open.** The reading of W_a as fifteen D8-branes on one orientifold plane and the sixteenth at a position given by a, linear in a only at constant dilaton (37_angle_to_position_map.md), with a = 1/2 on the other plane and the one-loop vacuum carrying the top brane to the far wall, is a proposal; so is the reading of the same datum as an E8 holonomy on a Hořava-Witten wall in eleven dimensions.
