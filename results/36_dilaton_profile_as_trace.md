# Given the type I' slope rule and sixteen D8-branes at x_k, the coupling function is z(x) = z(0) + c sum_k min(x/2, x_k - x/2), so z(L) = z(0) - c (8L - sum_k x_k), and infinite coupling at the far wall fixes z(0) by the sum of the brane positions

**Status.** Proposition (Proposition 9.1, with the referee clarification and the second check), conditional on the slope rule of Polchinski and Witten (hep-th/9510169), which the second check and lemma 37 confirmed against the source. Proved by Claude Opus 5.5 (branch 11D; ledger agent `claude`); checked by its author by hand, by Terra 6.1 by hand (Referee proofs of lemma 36) and by Claude Sonnet 5.5 by hand (reports: historical/reviews/2026-11-04_terra_check_11d.md, historical/reviews/2026-11-04_sonnet_second_check_11d.md). The first version stated the slope rule for e^{-phi}; the piecewise-linear function is z, with e^phi = z^{-5/6}. Ledger row `d11_dilaton_spectral` (depending on `d11_angle_interval`, `d11_angle_map` and `d11_e_walls`). No paper cites it separately; paper/connes_kk_dictionary_note.tex states the correction of its dictionary ("\supp{37}").

**Setting.** Type I' on [0, L] in the conformal coordinate x, with O8^- planes at the ends and sixteen D8-branes at x_1, ..., x_16. e^phi = z^{-5/6}, with z continuous and piecewise linear of slope c (8 - N(x)), N(x) the number of branes to the left of x and c > 0; the coupling diverges where z vanishes.

**Statement.**

1. z(x) = z(0) + c sum_k min(x/2, x_k - x/2) for x in [0, L].
2. z(L) = z(0) - c (8L - sum_k x_k), exactly in the positions.
3. z is concave, so z(0) > 0 and z(L) = 0 give z > 0 on [0, L).
4. With the dictionary x_k = (2L/pi) theta_k, theta_k = l m_k, z is z(0) plus c Tr g_x(l abs(D_F)) over the sixteen channels, g_x(theta) = min(x/2, (2L/pi) theta - x/2), and z(L) = 0 holds exactly when z(0) = (2cL/pi)(4 pi - l sum_k m_k).

*Scope.* The dictionary of item 4 is exact only for constant z (8 + 8), and asymptotically for large R; in general theta_k = (pi/2) W(x_k)/W(L) with W = int z^{-1/3} dx (37_angle_to_position_map.md), so the coupling function is a trace of a function of abs(D_F) only implicitly. The trace is over sixteen selected channels, and the physical D_F, with its chirality, conjugation, colour and generation multiplicities, enters only through a specified projection onto them. In the profile 15 + 1 the endpoint values 7cL and 8cL stand, and theta_t = pi/4 gives 7.358 cL in place of 7.5 cL.

**Proof.** Lemma 36, Proposition 9.1, and the Referee proofs there: int_0^x N(y) dy = sum_k (x - x_k)_+, and x/2 - (x - x_k)_+ = min(x/2, x_k - x/2); the slopes are nonincreasing, so z is concave.

**What it leaves open.** Whether the type I' coupling, as a function of D_F, supplies the second scale of Proposition 1.5 in the flat family; in the scope of lemma 37 the dilaton gradient does not (37_nogo_dilaton_gradient.md). The profile alone derives no stabilizing term for the interval modulus.
