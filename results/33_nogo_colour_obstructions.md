# Under colour F1 = 10 (3 + 3-bar) + 24 (1) and F2 = 12 (3 + 3-bar) + 12 (1), so no colour-commuting unitary exchanges the two families of 84, and for every homomorphism SU(3) -> SU(9) the exterior cube Lambda^3 C^9 has the colour content of neither family

**Status.** No-go theorem in its scope (Propositions 4.2(a) and 4.3, with the referee amendments). Proved by Claude Opus 5.5 (branch 11D; ledger agent `claude`) by hand; checked by its author by hand, by Terra 6.1 by hand, whose independent proofs are written out in the Referee proofs of lemma 33, and by Claude Sonnet 5.5 by hand (reports: historical/reviews/2026-11-04_terra_check_11d.md, historical/reviews/2026-11-04_sonnet_second_check_11d.md). The first version of the "exactly" clause of Proposition 4.3 omitted the trivial representation 9 (1), whose cube is 84 (1); the referee's counterexample is recorded in lemma 33, and the statement below includes that case. Ledger row `d11_colour_families` (depending on `d11_colour84`). Items (a) and (c) of Proposition 2 of paper/generations_note.tex, with Proposition 4.2(b) cited after it ("\supp{33}").

**Setting.** F1 = H_F minus the top block T and F2 = H_F minus the neutrino block N, with colour acting through A_F; a complex nine-dimensional representation C^9 of SU(3), for any homomorphism SU(3) -> SU(9).

**Statement.**

1. (Proposition 4.2(a)) As colour representations F1 = 10 (3 + 3-bar) + 24 (1) and F2 = 12 (3 + 3-bar) + 12 (1). No unitary of H_F commuting with colour maps F1 onto F2, and no automorphism of the finite spectral triple of the Standard Model does.
2. (Proposition 4.2(b), in the scope of the referee note) A bijection of the top block onto the neutrino block that preserves the tensor factors, identifying the colour factor of the top with the family factor of the neutrinos, exchanges the colour index (r, g, b) with the generation index (e, mu, tau). Linearity in each index alone does not imply this, since a unitary may entangle the three-dimensional index with the index of chirality and conjugation.
3. (Proposition 4.3) Lambda^3 C^9 is the colour content of neither family. It contains only 1, 3 and 3-bar exactly when C^9 is 9 (1), 3 + 6 (1) or 3-bar + 6 (1), and it is then 84 (1), 15 (3) + 6 (3-bar) + 21 (1) or its conjugate.

*Scope.* The full exterior cube of a complex nine-dimensional linear representation, and the stated colour action on F1 and F2. With the real case, 39_nogo_three_form_colour.md, this excludes the colour-equivariant route through Lambda^3 of a linear nine-dimensional space.

*Escapes, as the lemma states them.* Other dimensions, non-equivariant identifications, nonlinear or brane constructions, and maps that do not preserve the colour action.

**Proof.** Lemma 33, Propositions 4.2 and 4.3, and the Referee proofs there: an intertwiner preserves isotypic components, with 24 singlets against 12; the irreducibles of dimension at most nine are 1, 3, 3-bar, 6, 6-bar and 8, and the case analysis finds a 6, 6-bar, 8, 10, 10-bar, 15 or 15-bar in every case except 3 + 6 (1), its conjugate and 9 (1), which have unequal numbers of 3 and 3-bar or no triplet.

**What it leaves open.** The result points to structures in which colour and generation can be exchanged: the colour-family transposition of four families in E8 (34_colour_family_transposition.md) and the flip of a four-family finite geometry (34_four_family_flip.md).
