# In the parent of lemma 22, k channels at a common angle theta give the signed eigenvalue theta/l multiplicity k for 0 < theta < pi/2 and 2k at the ends, and the lowest eigenvalue of abs(D) multiplicity 2k in the interior, 2k at theta = 0 and 4k at theta = pi/2

**Status.** Proposition (Proposition 8.2, with the referee clarification on abs(D)). Proved by Claude Opus 5.5 (branch 11D; ledger agent `claude`) from Proposition 7.1; checked by its author by hand, by Terra 6.1 by hand (Referee proofs of lemma 35) and by Claude Sonnet 5.5 by hand (reports: historical/reviews/2026-11-04_terra_check_11d.md, historical/reviews/2026-11-04_sonnet_second_check_11d.md). Ledger row `d11_wall_multiplicity` (depending on `d11_angle_interval`). No paper cites it separately.

**Setting.** The parent of Theorem 22.1 with k independent channels at the same angle theta = l sigma, each with the signed spectrum {(n pi +- theta)/l : n in Z} of 40_channel_angle_interval.md.

**Statement.**

1. The signed eigenvalue theta/l has multiplicity k for 0 < theta < pi/2, and 2k at the ends: at theta = 0 as the zero mode of multiplicity two per channel, and at theta = pi/2 as (0 + pi/2)/l = (pi - pi/2)/l.
2. The lowest eigenvalue of abs(D) has multiplicity 2k in the interior (the values +-theta/l, k each), 2k at theta = 0, and 4k at theta = pi/2 (the values +-pi/(2l), 2k each).

*Scope.* At theta = 0 the two interior signed eigenvalues coalesce, and at theta = pi/2 the next level meets the window. The signed count alone does not establish a doubling of independent physical Chan-Paton labels or an orientifold projection.

**Proof.** Lemma 35, Proposition 8.2, and the Referee proofs there: in the interior only n = 0 in the positive progression gives +theta/l, since (n pi - theta)/l = theta/l forces theta = n pi/2; at the ends the two progressions coincide.

**What it leaves open.** The reading that k D8-branes on an orientifold plane carry 2k Chan-Paton labels, reproduced here with the ends of the angle interval as the walls, is a proposal, and so is a parent whose two walls carry opposite signs s, one O8^- and one O8^+. The wall bookkeeping of Remark 8.3, conditional on recalled type I' rules and recorded in the ledger as conjectural (`d11_e_walls`), has no file.
