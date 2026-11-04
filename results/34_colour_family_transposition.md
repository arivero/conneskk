# With four families, M = -P, where P exchanges the colour and family coordinates and the two weak coordinates, is an involution in W(E8) that preserves SU(2)_L and the 128 roots and exchanges the up-type quark of family 0 with the neutrinos of families 1, 2 and 3

**Status.** Proposition (Proposition 5.2, with the referee clarification). Proved by Claude Opus 5.5 (branch 11D; ledger agent `claude`) by hand; checked by its author by hand, by Terra 6.1 by hand (Referee proofs of lemma 34) and by Claude Sonnet 5.5 in Python (M = -P on all 240 roots) (reports: historical/reviews/2026-11-04_terra_check_11d.md, historical/reviews/2026-11-04_sonnet_second_check_11d.md). Ledger row `d11_transposition`. Proposition 9 of paper/generations_note.tex.

**Setting.** The 128 half-integer roots of E8 as four families with nu^c and their conjugates, in the coordinates (chi | w | phi) of 34_nogo_families_not_isometric.md; family 0 has the sign pattern (+++), the families 1, 2, 3 and the quark colours have two and one minus signs, and the lepton colour is the pattern -(+++).

**Statement.** M = -P is an involution in W(E8) that preserves the 128 roots and SU(2)_L, reverses T_3 of SU(2)_R, and acts on the up-type and down-type states as the transposition of the Pati-Salam colours (r, g, b, lepton) with the families (1, 2, 3, 0), the colour c going with the family -c:

1. the up-type quark of family 0 (t_L and t^c, three colours, with conjugates) goes onto the neutrinos of families 1, 2, 3 (nu_L and the conjugate of nu^c), and back;
2. the down-type quark of family 0 goes onto the charged leptons of families 1, 2, 3;
3. nu_L and e_L of family 0 are fixed, nu^c and e^c of family 0 go to their negatives, so these species blocks are fixed setwise, and the quarks of families 1, 2, 3 go to quarks of families 1, 2, 3 with colour and family transposed.

So the sets 128 - T(0) and 128 - N(1, 2, 3), of 116 roots each, are exchanged.

*Scope.* A Weyl element acts on an E8 holonomy by conjugation, so it exchanges colour and family physically only relative to a structure that tells them apart, such as this placement of H_F (lemma 36, section 5, item 2). The search of lemma 34 found further signed permutations with the same effect on the two blocks, and M = J P with J = -1 the Chevalley involution of 33_nogo_graded_e8_exchange.md.

**Proof.** Lemma 34, Proposition 5.2, and the Referee proofs there: P is an even permutation of coordinates and -1 lies in W(E8); M maps (chi | w_1 w_2 | phi) to (-phi | -w_2 -w_1 | -chi), so t_L(c) = (c | -+ | +++) goes to nu_L(-c) and t^c to -nu^c(-c).

**What it leaves open.** A finite spectral triple, or a Hořava-Witten configuration, with four families in which M is a symmetry and the fourth family decouples in a controlled way, so that the three-family statement of lemma 21 follows as a limit; whether the fourth family can be made heavy by the mechanism of the top. The readings of lemma 34, three families as the obstruction and M as the exchange of the two heavy directions of the algebra chain, are proposals.
