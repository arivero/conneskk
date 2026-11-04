# On a type I' segment with N != 8 branes to its left the proper length is linear in the inverse coupling, so the classical profile of the chamber 15 + 1 has no region that is both strongly coupled and resolved in eleven-dimensional units

**Status.** No-go theorem in its scope (Proposition 10.4), the classical profile extrapolated to where the coupling is of order one. Proved by Claude Opus 5.5 on 4 November 2026 from the type I' profile of Polchinski and Witten (hep-th/9510169, read from the arXiv LaTeX); checked by its author by hand and read independently by Claude Sonnet 5.5 by hand (historical/reviews/2026-11-04_sonnet_check_11d_10_11.md); no Terra referee was available, and the corrected text has not been read again. Ledger row `d11_romans`. The third of the three corrections in the section on the string dualities of paper/connes_kk_dictionary_note.tex ("\supp{37}").

**Setting.** Type I' as in 37_angle_to_position_map.md; a segment with N branes to its left, with Romans mass F_0 = (8 - N)/(2 pi l_s) in the standard normalization, and C_L = 8 pi/5.

**Statement.**

1. Between points of couplings e^{phi_1} and e^{phi_2}, L_p = (C_L l_s/abs(8 - N)) (e^{-phi_1} - e^{-phi_2}).
2. In the configuration 15 + 1, g(0) L_p <= C_L l_s/7 for the total length.
3. Near an infinite-coupling wall the coupling is g = C_L l_s/(abs(8 - N) s) at proper distance s, and the region g >= g_0 has length (3/4)(C_L/abs(8 - N)) g_0^{-4/3} in eleven-dimensional Planck units, 0.54 g_0^{-4/3} for N = 15.

Hence no region of the classical 15 + 1 background is both strongly coupled and resolved in eleven-dimensional units; the same holds wherever N != 8.

*Scope.* The classical profile, which is not controlled where g is of order one, so this is a statement about the extrapolated background. It agrees with Bergman, Gaberdiel and Lifschytz, who expect neither an M-theory interpretation nor a matrix theory for these backgrounds and state that only eight D8-branes with an orientifold plane are known to arise in M-theory (their N is 8 - N here).

*Escapes, as the lemma states them.* The other chambers of the moduli space, where 8 + 8 removes the Romans mass and E8 x E8 is available; a controlled description at coupling of order one.

**Proof.** Lemma 37, Proposition 10.4: on the segment Omega dx = C z^{-1/6} dz/(a C (8 - N)), which integrates to a multiple of z^{5/6} = e^{-phi}.

**What it leaves open.** The result points to the other chambers, without the Romans mass, and to other completions. The far-wall statement that rests on the same chamber is 37_nogo_far_wall_electroweak.md.
