# At twistor level one on two sheets, real functions on S^4 and on CP^3 generate M_2(H) + M_4(C) on E + E^\* of dimension 32 with J(x, y) = (y^\*, x^\*), the algebra, bimodule and real structure of Chamseddine-Connes, as abstract finite data

**Status.** Proposition, proved by computation (Example 16.9 of lemma 16). Proved by Claude Opus 5.5. Ledger row `l16_twistor`. Item 4 of Proposition H of paper/towerless_intervals.tex.

**Setting.** D_0 the Dolbeault-Dirac operator on CP^3 twisted by O(1), with kernel H^0(CP^3, O(1)) = C^4; j the antiunitary with j^2 = -1 commuting with the Gamma_a of Proposition 10.1, which makes C^4 a quaternionic space H^2. The space is used twice: as W, with the functions of S^4 pulled back along the twistor projection, and as V, with the functions of CP^3. Corollary 16.8 applies with the parent gradings, trivial on the kernels.

**Statement.**

1. A real function f on S^4 pulls back to a function invariant under w -> jw, so j Q(f) j^{-1} = Q(f), a Hermitian element of End_H(W). Since Q(x_a) = Gamma_a/5, the real algebra generated is End_H(W) = M_2(H), of real dimension 16.
2. For real functions on CP^3, Q(w^\\* B w/w^\\* w) = (B + tr(B) 1)/5 for Hermitian B, so Q is onto the Hermitian matrices and the real algebra generated is End_C(V) = M_4(C), of real dimension 32.
3. Hence A = M_2(H) + M_4(C) acts on H_F = Hom(V, W) + Hom(W, V) = E + E^\\*, of dimension 32, with J(x, y) = (y^\\*, x^\\*): the algebra, bimodule and real structure of Chamseddine and Connes. Complex generation on the S^4 side would give M_4(C).

*Scope.* The inputs are the second sheet, the restriction of one algebra to base functions, real algebra generation, the four-dimensional window, the grading axis and d. The grading Gamma_F(xi, eta) = (Gamma_5 xi, -eta Gamma_5) is added after truncation as abstract data (16_nogo_grading_from_even_parent.md); the full algebra is then a graded prealgebra with even part H + H + M_4(C), on which the real orientability relation holds. The mass datum d = mu n^a Gamma_a, n orthogonal to the axis, is also abstract data. No operator connects the two pieces.

**Proof.** Lemma 16, Example 16.9; the computation is there, with Proposition 10.1.

**What it leaves open.** Four global sections are not turned into rank-four fibres over S^4, the two sheets are not derived from the fibration, and the Dirac operator connecting the two pieces, which the selection of C + H + M_3(C) requires, is not produced; the fibre-rank problem remains open (lemma 16, Example 16.9).
