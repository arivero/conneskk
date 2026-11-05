# The compression of 5 w'^* B w'/w'^* w' on CP^3 is B + tr(B): the grading and the projectors on the marked lines are compressions of height functions, and the top block is the anticommutator of a compressed base coordinate and a compressed height function of the wall sheet

**Status.** Proposition 50.2. Proved by Claude Fable 5.1 on 5 November 2026 by Schur's lemma and the two normalizations Q(1) = 1 and Q(5 x_a) = Gamma_a (Proposition 10.1), with a check by the sphere moments; Monte Carlo on CP^3 with 4 x 10^5 points (numpy, not kept) for Q(x_1), Q(5 |<., w>|^2) and Q(5 <., B .>). Refereed by Claude Opus 5.5 (effort max, 5 November 2026; report in historical/reviews/2026-11-05_opus_check_50.md): correct with amendments (the identity is Example 16.9, item 2, extended complex-linearly; the sign of delta' is fixed by the definition of J_w; the Clifford identity carries a factor 2). Ledger row `l50_height_functions`. Not yet in a paper.

**Setting.** The compression Q of lemmas 10 and 16 to the level-one kernel H^0(CP^3, O(1)) = C^4, in the convention of lemma 10 (Q(f) = 4 int f P_{w'} dmu, extended complex-linearly), used in lemma 46, item 3: Q(1) = 1 and Q(5 x_a) = Gamma_a. The Fubini-Study distance d, cos d([w'], [w]) = |<w', w>|/(|w'| |w|).

**Statement.** For every B in End_C(C^4), Q(5 w'^* B w'/w'^* w') = B + tr(B) 1. Hence

1. 5 Q(p . x) = Gamma_p = 2 Pi_p - 1: the grading is the compression of the height function 5 cos d(., p) of S^4 at the axis.
2. Q(5 cos^2 d(., [w]) - 1) = P_w: the projector on the connector's line is the compression of the height function of CP^3 at the marked point; likewise P_v = Q_V(h_v) on the second sheet.
3. The block of Proposition 50.1 is Y = m {5 Q(n . x), Q(h_w)}; the Majorana block is supported on Q(h_w) Hom(V, W) Q_V(h_v); the j-antilinear half of Y is i c(delta') Gamma_p with delta' = -J_w h/2 (sign fixed by the definition of J_w; -J_mu h/2 for any rank-one block c(h) P_mu), the three-form term of lemma 49 whose dual is the quarter turn of the Higgs vector in the complex structure of the Majorana point, and lemma 49's formulas give m_+ = m, m_- = 0 for delta = h/2, delta' orthogonal of the same length.

*Scope.* The convention of lemma 10, Q(5 x_a) = Gamma_a; the identity is Example 16.9, item 2, extended complex-linearly, the level-one case of Berezin's covariant and contravariant symbols on CP^3.

**Proof.** Lemma 50, Proposition 50.2: B -> Q(f_B) is U(4)-equivariant, End(C^4) = C + sl(4) under conjugation, and the two normalizations fix the two constants; the moments E|z_1|^4 = 1/10, E|z_1 z_2|^2 = 1/20 on the unit sphere of C^4 give the check 2 P_w + (1 - P_w); the three-form by Proposition 46.1 (3) and the comparison of the two j-antilinear blocks on w.

**What it leaves open.** The same identities for the compressions of lemma 29's window at finite mass, where the core compression of a function has a j-antilinear half of order M^{-1/2} (lemma 46, lead 3).
