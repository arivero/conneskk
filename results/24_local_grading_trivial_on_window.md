# On the unchanged level-one window of Example 16.9, the compression of a local multiplication grading G is a grading exactly when G commutes with the projection onto the window, and it is then +1 or -1

**Status.** Proposition (Result 3 of lemma 24). Proved by Astra 6 (gpt-6-astra, effort xhigh); checked by Claude Opus 5.5 in Python (tr(g^2) = 16/5 for the auxiliary field of item 3) and by Terra 6.1 by hand, with an amendment on marked points (historical/reviews/2026-11-03_terra_check_24.md). Ledger row `l24_walls`, shared with Result 2. No paper cites it separately.

**Setting.** G is a self-adjoint bundle involution acting by multiplication, g = Pi G Pi restricted to V, and Q_K(f) = Pi M_f Pi restricted to V, with the level-one space V = C^4 and the scalar representation of Example 16.9 unchanged.

**Statement.**

1. 1_V - g^2 = ((1 - Pi) G Pi)\* ((1 - Pi) G Pi), so g is a grading exactly when [G, Pi] = 0.
2. In that case [g, Q_K(f)] = 0 for every scalar f, and for the full CP^3 scalar algebra or for the S^4 pullback algebra this forces g = 1_V or g = -1_V. The unchanged four-section window then has trivial grading, and its generated algebra remains M_2(H) or M_4(C), according to the scalar algebra chosen.
3. An explicit local field fails reduction. On an added trivial C^4 bundle, G(y) = sum_a y_a Gamma_a^aux satisfies the symbol condition of Result 2, the tangential kernel has dimension 16, and g = (1/5) sum_a Gamma_a^section (x) Gamma_a^aux has tr(g^2) = 16/5, against 16 for a grading; moreover ||(1 - Pi) G Pi|| >= 2/sqrt(5), independently of r.

*Scope.* The restriction concerns the unchanged level-one space, a local multiplication grading, and its compression as an actual involution. Item 3 bounds boundary-trace mixing and does not identify the low spectral window of the coupled local problem. The natural field 2 Pi_y - 1 of the tautological line bundle marks no point, while the finite grading Gamma_p = 5 Q_K(p . y) uses a separately chosen point; a local field can encode a chosen point, as G_p(y) = p_a Gamma_a^aux does (referee).

*Escapes, as the lemma states them.* A different coupled window, additional fibres, or spectral boundary conditions.

**Proof.** Lemma 24, Result 3; the proof is there. Expanding Pi G^2 Pi = Pi with 1 = Pi + (1 - Pi) gives item 1. The compressed CP^3 functions generate M_4(C) and the compressed real S^4 functions M_2(H), whose complex-linear commutant on C^4 is C 1.

**What it leaves open.** Lemma 28 takes the first escape: on the disc bundle the window couples two ends, and the end grading is inherited from the chosen self-adjoint doubling (lemma 28, Proposition 28.19), with the quaternionic grading axis still an input.
