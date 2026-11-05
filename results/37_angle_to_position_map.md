# The Wilson-line angle of a type I' D8-brane at x_k is theta_k = (pi/2) W(x_k)/W(L) with W(x) = int_0^x z^{-1/3} dy, so the linear dictionary x_k = (2L/pi) theta_k holds as a function of every position exactly for constant z, and asymptotically for large R

**Status.** Proposition (Proposition 10.1). Proved by Claude Opus 5.5 on 4 November 2026 from the arXiv LaTeX of Polchinski and Witten (hep-th/9510169, section 3). The radius formula is derived from brane-to-brane mass differences; a particular configuration can satisfy the linear dictionary at its brane positions with z nonconstant (fifteen branes at 0 and one at L). Ledger row `d11_angle_map`. The first of the three corrections in the section on the string dualities of paper/connes_kk_dictionary_note.tex ("\supp{37}").

**Setting.** Type I' on [0, L] in conformal gauge, g = Omega^2(x) eta with Omega = C z^{-1/6}, e^phi = z^{-5/6} and z piecewise linear of slope 8 - N(x), N(x) the number of D8-branes to the left of x; this is the slope rule recalled in lemmas 35 and 36, read here against the source. L = 2 pi and alpha' = 2, in the units of Polchinski and Witten.

**Statement.**

1. The Wilson-line eigenvalue of a brane at x_k is lambda_k = W(x_k)/(2 W(L)), that is theta_k = pi lambda_k = (pi/2) W(x_k)/W(L).
2. R^2 = (3/4) int z^{1/3} dx/(int z^{-1/3} dx)^2.
3. Hence x_k = (2L/pi) theta_k holds as a function of every position exactly when z is constant (8 + 8), and asymptotically for large R; fifteen branes at 0 and one at L satisfy it at their positions with slope -7 in the bulk.

*Scope.* The map from angles to positions depends on the whole configuration. Items 1 and 2 of Proposition 9.1 of lemma 36 hold as statements about z in the positions, and its reading as a trace of a function of abs(D_F) holds only implicitly, through this map (36_dilaton_profile_as_trace.md).

**Proof.** Lemma 37, Proposition 10.1: the string stretched from the wall to x_k has mass (1/(2 pi alpha')) int_0^{x_k} Omega^2 dx, with Omega^2 proportional to z^{-1/3}, a string winding from 0 to L and back has mass 1/R, and the ratio gives lambda_k; the formula for R is equation (rad) of Polchinski and Witten, reduced as in their equation (dil).

**What it leaves open.** An explicit spectral formula for the coupling function, which with this map is a trace of a function of abs(D_F) only implicitly. The readings of lemma 40 that used the linear dictionary, such as the brane "at distance proportional to a" in the reading of Proposition 7.2, hold only at constant dilaton (lemma 37, section on corrections).
