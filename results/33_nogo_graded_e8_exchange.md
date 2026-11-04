# In the aligned three-family embedding in e8 with its two gradings, no complex automorphism preserving or inverting the family grading maps the top block onto the neutrino block, and the Chevalley involution maps each block to its conjugate

**Status.** No-go theorem in its scope (Proposition 4.6, with the referee amendment). Proved by Claude Opus 5.5 (branch 11D; ledger agent `claude`) by hand; checked by its author by hand, by Terra 6.1 by hand, whose independent proof, with the block argument by Schur's lemma, is written out in the Referee proofs of lemma 33, and by Claude Sonnet 5.5 by hand (reports: historical/reviews/2026-11-04_terra_check_11d.md, historical/reviews/2026-11-04_sonnet_second_check_11d.md). Ledger row `d11_m2m5_is_j` (depending on `d11_e8_grading`). Proposition 6 of paper/generations_note.tex, with the block argument as the proof of its item (3).

**Setting.** The two gradings of 33_e8_two_gradings_placement.md, with the aligned embedding 3_f (x) 16 of three families in g_1 = 3_f (x) 27; T and N are the top and neutrino blocks.

**Statement.**

1. No automorphism of e8 preserving the family grading maps the C_3 sector g_{1,1} (dimension 45) onto the C_6 sector g_{1,2} (dimension 18).
2. The Chevalley involution theta, the element -1 of W(E8), maps g_{a,b} to g_{-a,-b} and each placed state to its conjugate, so it preserves F1 and F2. It is complex-linear; with the coefficient conjugation kappa of a real Chevalley basis, J = theta kappa is antilinear with J^2 = 1 and J gamma = -gamma J for the grading +1, -1 on family grades 1, 2.
3. No complex automorphism phi with phi(s_f) = s_f^{+-1} maps T onto N.
4. The Weyl reflection of SU(2)_I fixes s_f and replaces b by 2a - b, so on the matter it fixes the C_3 sector and exchanges the C_6 and gravity sectors.

*Scope.* Complex-linear automorphisms of the specified graded e8, the aligned 3_f (x) 16 embedding and the blocks T and N. The identification of theta, or of J, with the M2/M5 exchange is a proposal, and the order conditions and J D = D J of a finite triple remain to be established.

*Escapes, as the lemma states them.* Automorphisms that neither preserve nor invert the family grading, such as the colour-family exchanges inside the SU(3)^4 subgroup of E8; other embeddings or state spaces; dualities not represented by such an automorphism.

**Proof.** Lemma 33, Proposition 4.6, and the Referee proofs there. For item 3, phi preserves g_0 = sl_3 + e_6 and its two simple ideals, so by Schur's lemma its restriction to g_1 = 3_f (x) 27 is a multiple of some A (x) B; it maps a subspace supported on one family line to a subspace supported on one family line, while the grade-one part of N spans 3_f.

**What it leaves open.** The result points to automorphisms outside the pair of gradings. For aligned families 34_nogo_families_not_isometric.md also excludes every element of W(E8) mapping F1 onto F2, and with four families the transposition of 34_colour_family_transposition.md exchanges the blocks.
