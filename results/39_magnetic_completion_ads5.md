# AdS5 x CP^2 x S^2 with G_4 = f_1 vol(CP^2) + f_2 J wedge vol(S^2) solves the equations of eleven-dimensional supergravity, with Ricci components -(f_1^2 + 2 f_2^2)/6, f_1^2/3 + f_2^2/6 and 2 f_2^2/3 - f_1^2/6, and round factors exist exactly when abs(f_1) < 2 abs(f_2)

**Status.** Proposition (Proposition 3.5). Proved by Claude Opus 5.5 (branch 11D; ledger agent `claude`); checked by its author in Python (historical/11D/checks_11d.py, section G: all frame components of the flux bilinear), by Terra 6.1 by hand, whose independent proof is written out in the Referee proofs of lemma 39, and by Claude Sonnet 5.5 by hand (reports: historical/reviews/2026-11-04_terra_check_11d.md, historical/reviews/2026-11-04_sonnet_second_check_11d.md). Ledger row `d11_ads5`. No paper cites it.

**Setting.** The product metric on AdS5 x CP^2 x S^2, with J the Kähler form of CP^2, f_1 and f_2 the orthonormal-frame components of G_4, and the Einstein equation R_MN = (G_MPQR G_N^PQR - g_MN G^2/12)/12.

**Statement.**

1. dG_4 = 0; the Hodge dual of G_4 is vol(AdS5) wedge (f_1 vol(S^2) + f_2 J), which is closed; and G_4 wedge G_4 = 0, an eight-form on the six-dimensional factor, so the form equation holds.
2. R_AdS = -(f_1^2 + 2 f_2^2)/6, R_CP2 = f_1^2/3 + f_2^2/6 and R_S2 = 2 f_2^2/3 - f_1^2/6, with zero off the diagonal.
3. Positive curvature of the S^2 factor is equivalent to abs(f_1) < 2 abs(f_2), which also makes the CP^2 curvature positive and the AdS curvature negative, and the radii follow from the three Einstein constants.

*Scope.* A classical local solution with scaled Einstein factors; "round factors" means the scaled Fubini-Study metric on CP^2 and the round metric on S^2. Flux quantization, global consistency, supersymmetry and stability are not checked. The product with flux on KE_4 x S^2 appears in Pope and van Nieuwenhuizen (1989), and supersymmetric AdS5 solutions fibre the S^2 over the Kähler-Einstein base (Gauntlett, Martelli, Sparks and Waldram, hep-th/0402153); both are recalled.

**Proof.** Lemma 39, Proposition 3.5, and the Referee proofs there: in a frame with J = e^{12} + e^{34}, G^2 = 24 (f_1^2 + 2 f_2^2), and the contraction G_aPQR G_a^PQR is 6 (f_1^2 + f_2^2) in a CP^2 direction, 12 f_2^2 in an S^2 direction and zero in an AdS direction; the forms involved are parallel.

**What it leaves open.** The flux quantization, supersymmetry and stability of the solution. Its reading as the magnetic completion of the base CP^2 x S^2, against the electric completion AdS4 x Y_{3,2}, with the M2/M5 exchange acting on hypercharge as electric-magnetic duality, is Proposals 3.6 and 3.7 of lemma 39, which have no files.
