# In the aligned three-family embedding in the roots of E8, the two families of 84 have equal numbers of pairs at each inner product, and no isometry of R^8 maps F1 onto F2, so no element of W(E8) does and no isometry of H_F maps the top block onto the neutrino block

**Status.** No-go theorem in its scope (Proposition 5.1). Proved by Claude Opus 5.5 (branch 11D; ledger agent `claude`) by hand, with an exploratory search in Python (exact fractions; rerun on 4 Nov 2026, not kept); checked by its author by hand, by Terra 6.1 by hand, whose independent neighbour table is written out in the Referee proofs of lemma 34, and by Claude Sonnet 5.5 in Python (the 96 roots rebuilt, degrees, pair counts and the 12 slot choices) (reports: historical/reviews/2026-11-04_terra_check_11d.md, historical/reviews/2026-11-04_sonnet_second_check_11d.md). Ledger row `d11_no_isometry` (depending on `d11_blocks` and `l21_counts`). Proposition 7 of paper/generations_note.tex, with a proof sketch ("\supp{34}").

**Setting.** The roots of E8 in R^8, with the 128 half-integer roots as the chiral spinor (16, 4) + (16-bar, 4-bar) of SO(10) x SU(4) in SO(16); a root, written (chi | w | phi), carries the signs of the three colour, two weak and three family coordinates. H_F is the 96 roots of three aligned family slots, T the 12 roots of the up-type quark of one family f_t with conjugates, N the 12 roots of the three neutrinos with conjugates, F1 = H_F - T and F2 = H_F - N. d_S(v) counts the roots of S at inner product +1 with v.

**Statement.**

1. F1 and F2 both have 42 pairs at inner product -2, 816 at -1, 1812 at 0 and 816 at +1.
2. d = 22 on every root of H_F. In F2, d = 20 on the 36 up-type quark roots and 19 on the 48 others. In F1, d = 16 on the 4 neutrino roots of the top's family, 22 on the other 8 neutrino roots, 20 on the 24 remaining up-type quark roots and 19 on the 48 others.
3. No isometry of R^8 maps F1 onto F2.

*Scope.* The roots of H_F through this embedding, unique up to W(E8) for the aligned (16, 3) + (16-bar, 3-bar); complete species blocks; Euclidean isometries acting on the roots. The neutrino of the top's own family carries the obstruction, as the only state whose neighbourhood changes by six.

*Escapes, as the lemma states them.* Maps that are not linear on the roots (bijections of states with no geometric meaning), other realizations of H_F in a larger group, and a fourth family (34_colour_family_transposition.md).

**Proof.** Lemma 34, Proposition 5.1, and the neighbour table of its Referee proofs: two half-integer roots are at +1 when their signs agree in six of the eight places; both sets are closed under negation with centroid zero, so an isometry would fix the origin and preserve d, and F2 has no root with d = 16 or 22.

**What it leaves open.** The three-slot assignments, aligned or misaligned, are 34_nogo_three_slot_assignments.md. States spread over several roots, as zero modes of an SU(4) bundle are (Proposal 5.5 of lemma 34, which has no file), lie outside the hypotheses.
