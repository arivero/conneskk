# With fifteen D8-branes at x = 0, one at x_t and infinite coupling at the far wall, theta_t = (pi/2) 8 (1 - rho)/(8 - rho) and R_\*^2 = 14 (8 - rho^2)/(8 - rho)^2 with rho = (z(x_t)/z(0))^{2/3}, so infinite coupling sits at the smallest radius of the chamber, at the string scale

**Status.** Proposition (Proposition 10.2), with no ledger row of its own. Proved by Claude Opus 5.5 on 4 November 2026 from the formulas of Polchinski and Witten (hep-th/9510169, section 3, read from the arXiv LaTeX). At x_t/L = 0.5 the values are theta_t = 0.585918469 and R_h^2 = 1.965216392 (Python, numpy, scipy, mpmath), against 0.7854 for the linear dictionary. Used in the section on the string dualities of paper/connes_kk_dictionary_note.tex for the far-wall states massless at the string-scale radius ("\supp{37}").

**Setting.** Type I' as in 37_angle_to_position_map.md, alpha' = 2, in the chamber 15 + 1: fifteen branes at x = 0 and one at x_t, with z(L) = 0, so that the slopes on the two segments are -7 and -8 and z(x_t) = 8 (L - x_t); rho = (z(x_t)/z(0))^{2/3} lies in [0, 1].

**Statement.**

1. theta_t = (pi/2) 8 (1 - rho)/(8 - rho) and R_\*^2 = 14 (8 - rho^2)/(8 - rho)^2.
2. R_\* runs from sqrt 2, for the top's brane on the stack, to sqrt 7/2, for the top's brane on the far wall, which are the values (1/2) abs(n - 8)^{1/2} of Polchinski and Witten at n = 16 and n = 15; in heterotic string units R_\*/sqrt(alpha'_h) lies in [sqrt(7/8), 1], and R_\*^2 = 2 - (theta/pi)^2.
3. At each fixed Wilson angle a nonnegative far-wall value of the normalized profile gives R_h >= R_\*(theta), by R_h^2 = 2 - a^2 + 28 E/(8A - T - 7E) with A, T, E the 2/3 powers of the profile at 0, x_t and L and a = theta/pi; so infinite coupling sits at the smallest radius, at the string scale, and large R is large B, the weakly coupled region, as Polchinski and Witten state.

*Scope.* The classical profile of the chamber 15 + 1 with infinite coupling at the far wall.

**Proof.** Lemma 37, Proposition 10.2: integrate z^{1/3} and z^{-1/3} on the two segments, with slopes -7 and -8, and use z(x_t) = 8 (L - x_t) in the formulas of 37_angle_to_position_map.md.

**What it leaves open.** With the top's brane on the far wall, the D0 states that become massless there grow heavier as R grows (37_nogo_far_wall_electroweak.md), so on one path the dictionary has to choose between the far-wall electroweak group and the opening of the circle. The other chambers, without the Romans mass, are outside this computation.
