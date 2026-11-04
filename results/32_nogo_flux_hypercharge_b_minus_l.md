# Abelian fluxes on CP^2 x CP^1 along hypercharge and B - L, with one line bundle per Standard Model field and the canonical spin^c shift, give no generation, with or without nu^c, and adding any real third charge does not change this

**Status.** No-go theorem in its scope (Proposition 2.5, with the third-charge extension). Proved by Claude Opus 5.5 (branch 11D; ledger agent `claude`), with a bounded search over a third integer charge in [-3, 3]^6 (Python, historical/11D/checks_11d.py, section D). Terra 6.1 gave an independent analytic proof of the exclusion, valid also for independent ten-dimensional chiralities, and extended it to an arbitrary real third charge; Claude Sonnet 5.5 checked the extension (rank of [y, b, p, w] over all sign patterns, exact fractions, not kept). Both proofs are written out in the Referee proofs of lemma 32 (reports: historical/reviews/2026-11-04_terra_check_11d.md, historical/reviews/2026-11-04_sonnet_second_check_11d.md). Ledger rows `d11_flux_nogo`, `d11_flux_third_bounded` and `d11_flux_third_general` (the last attempted by Terra 6.1). No paper cites it separately.

**Setting.** Ten-dimensional Weyl fermions on M^4 x CP^2 x CP^1 with the Fubini-Study complex structure; each Standard Model Weyl field comes from the whole Dolbeault cohomology of one line bundle Lambda^{0,\*} (x) K^{1/2} (x) N, with N the flux line bundle of its charges and K^{1/2} the formal canonical shift, and the four-dimensional chiral content is the index. A weak doublet needs O(1) or O(-3) on CP^1, so the CP^1 pairing has absolute value 2 on Q and on L.

**Statement.**

1. With fluxes only in the U(1) directions spanned by Y and B - L, for any flux quanta, no choice gives one generation, with or without nu^c: in the charges (6Y, 3(B - L)), c_L = -3 c_Q, so the CP^1 pairings satisfy abs(M_2(c_L)) = 3 abs(M_2(c_Q)), against 2 on both.
2. Adding any real third charge z to Y and B - L, with independently chosen source chiralities, gives no generation either; a changed common twist is the case z = F and is covered.
3. Under a common ten-dimensional chirality the pairing must also give u^c and d^c the same image, and 2j + 1 = (2, 1, 1, 2, 1, 1) on (Q, u^c, d^c, L, e^c, nu^c) must be linear in the fluxed charges (the lemma of required bidegrees); with independent chiralities these two conditions need not hold, and items 1 and 2 still do.

*Hypotheses.* Abelian fluxes, one ten-dimensional Weyl field per Standard Model field, the canonical formal spin^c shift, the Dolbeault index as the chiral content.

*Escapes, as the lemma states them.* Nonabelian bundles (an SU(2)_R doublet bundle), several ten-dimensional fields per four-dimensional field, a fourth charge direction, orbifolds and walls, and non-Kaluza-Klein (brane) states.

**Proof.** Lemma 32, Proposition 2.5, and the Referee proofs there. Item 1 is linearity of the pairing on the two doublets. For item 2, every vector of span(y, b) has its L entry equal to -3 times its Q entry, so the CP^1 pairing w lies outside it and span(y, b, z) = span(y, b, w); the linear form v -> 2 v_Q + v_u + v_d vanishes on y, b and the CP^2 pairing p, which forces the coefficient of w to vanish, and then the u^c and d^c entries give the L entry 15/2, against abs(p_L) = 3/2.

**What it leaves open.** The result points to Proposition 2.6 (32_one_generation_from_grading_flux.md), which uses the universal charge, the grading and B - L; its solution lies outside span(Y, B - L, z). Fourth charges and nonabelian bundles remain open.
