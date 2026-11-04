# In the exact quadratic spectral action, among single charged species only an up-type quark can be removed while keeping both cos^2 theta_NC = 5/8 and the photon/gluon ratio 8/3

**Status.** Proposition (Proposition 21.1). Computed by Claude Opus 5.5 in exact arithmetic; checked by Claude Opus 5.5 in Python (exact fractions, all tables) and by Terra 6.1 by hand, effort max, whose one error in lemma 21 concerned Proposition 21.2 (historical/reviews/2026-11-03_terra_check_20_21.md). Ledger row `l21_removal` (depending on `l18_angles`). Cited in paper/real_structure_note.tex ("\supp{21}, for the classical bosonic trace with three generations") and used in the proof sketch of Proposition 1 of paper/generations_note.tex ("\supp{21}").

**Setting.** The exact quadratic action of lemma 18, classical bosonic trace, three generations. By equation (33) there, a Dirac species with charges q_L, q_R in the coordinates (T_3, Y) contributes to the neutral kinetic matrix K with weight e^{-x}. Its off-diagonal charge (T_3/2)(1, -1) is orthogonal to the photon direction (1, 1), so cos^2 theta_NC = (K_YY + K_3Y)/(K_33 + 2 K_3Y + K_YY) is fixed by the sums of T_3 Q and Y Q. Removing a species means that its mass tends to infinity at fixed cutoff, with the other species keeping the mass assignments of lemma 18.

**Statement.**

1. Per species, with colour multiplicity, the sums (sum T_3 Q, sum Y Q) on the particle trace and the (Q^2, colour) coefficients with charge conjugates and both chiralities are (1, 5/3; 16/3, 2) for an up-type quark, (1/2, 1/6; 4/3, 2) for a down-type quark, (1/2, 3/2; 4, 0) for a charged lepton, zero for a neutrino, and (6, 10; 32, 12) for three generations. So the ratios of the whole, 5/3 and 8/3, are those of an up-type quark alone.
2. Removing one species gives (cos^2 theta_NC, photon/gluon) = (5/8, 8/3) for an up-type quark, (59/92, 46/15) for a down-type quark and (17/28, 7/3) for a charged lepton. Only the up-type quark keeps both values, and for it they hold at every x, as in Proposition 6 of lemma 18.
3. Within one generation, the down-type quark and the charged lepton together contribute exactly what the up-type quark contributes, (1, 5/3; 16/3, 2).

*Scope.* That of lemma 18: classical bosonic trace, these definitions of the coefficients and of the angle, three generations. Other definitions of the weak angle do not stay at 5/8 (Proposition 6 of lemma 18). At the endpoint where the neutral mass vanishes, the angle is read as the limit from finite mass.

**Proof.** Lemma 21, Proposition 21.1; the proof is there: arithmetic with the Standard Model charges, Y = Q - T_3, and direct addition for item 3.

**What it leaves open.** The proposition says which species the action singles out at fixed cutoff, in the setting of lemma 18. The readings of lemma 21 built on the removal of the top (Seiberg duality with five flavours, branes, the odd labels) are proposals with no derivation behind them. The extension to blocks of 12 states, where the three neutrinos together also qualify, is Proposition 1 of paper/generations_note.tex, with lemma 33.
