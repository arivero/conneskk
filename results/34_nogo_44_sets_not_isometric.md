# With four families, no isometry of R^8 maps the 44 roots of the fourth family with the top block onto the 44 roots of the fourth family with the neutrino block: up to family permutations their degree multisets are {10^16, 12^12, 13^16} and {10^24, 13^16, 16^4}

**Status.** No-go theorem in its scope (the strengthening in Reading 3b (b) of lemma 34, a computer-assisted statement inside a reading; the ledger records it as a proposition). Lemma 34 credits the computation to Claude Sonnet 5.5; the ledger records Claude Opus 5.5 as author and the Sonnet computation as the check (Python, degree multisets over W(D8) and family permutations, exact integers, not kept). Ledger row `d11_44_sets` (depending on `d11_no_isometry`). Proposition 11 of paper/generations_note.tex ("Python, exact integers").

**Setting.** The 128 roots of four families (34_colour_family_transposition.md); S_T is the fourth family together with the top block T and S_N the fourth family together with the neutrino block N, 44 roots each; d counts the roots of the set at inner product +1 with a given root.

**Statement.** Up to family permutations the degree multisets of S_T and S_N are {10^16, 12^12, 13^16} and {10^24, 13^16, 16^4}, so no isometry of R^8 maps S_T onto S_N.

*Scope.* One root per state, four family slots, Euclidean isometries acting on the roots.

*Escapes.* Those of 34_nogo_families_not_isometric.md: maps not linear on the roots, larger groups, and states spread over several roots, which heterotic compactification uses.

**Proof.** Lemma 34, Reading 3b (b), the strengthening: exhaustive computation of the degrees, which are invariant under isometries; both sets have the same size and the multisets differ.

**What it leaves open.** With 34_nogo_colour_not_in_spin9.md this leaves the fit 44 = 32 + 12 as a count of states only. States spread over several roots, as zero modes of an SU(4) bundle are, lie outside the hypotheses (Proposal 5.5 of lemma 34, which has no file).
