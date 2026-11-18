# With four families, no isometry of R^8 maps the 44 roots of the fourth family with the top block onto the 44 roots of the fourth family with the neutrino block: up to family permutations their degree multisets are {10^16, 12^12, 13^16} and {10^24, 13^16, 16^4}

**Status.** No-go theorem in its scope (the strengthening in Reading 3b (b) of lemma 34, with a direct count from the neighbour table; the ledger records it as a proposition). Computed in Python by Claude Sonnet 5.5, as lemma 34 credits it (degree multisets over W(D8) and family permutations, exact integers, script not kept); the independent count by Codex (GPT-6) is written out in lemma 34. Ledger row `d11_44_sets` (depending on `d11_no_isometry`). Proposition 11 of paper/generations_note.tex ("Python, exact integers").

**Setting.** The 128 roots of four families (34_colour_family_transposition.md); S_T is the fourth family together with the top block T and S_N the fourth family together with the neutrino block N, 44 roots each; d counts the roots of the set at inner product +1 with a given root.

**Statement.** Up to family permutations the degree multisets of S_T and S_N are {10^16, 12^12, 13^16} and {10^24, 13^16, 16^4}, so no isometry of R^8 maps S_T onto S_N.

*Scope.* One root per state, four family slots, Euclidean isometries acting on the roots.

*Escapes.* Those of 34_nogo_families_not_isometric.md: maps not linear on the roots, larger groups, and states spread over several roots, which heterotic compactification uses.

**Proof.** Lemma 34, Reading 3b (b), the strengthening: the independent count from the neighbour table is in its section “The two sets of 44 in Reading 3b (b).” Roots of the fourth family have degree 10 internally. Adding the top block adds 2, 3, 3 and 0 neighbours by type U, D, E, N, while adding the three neutrino blocks adds 0, 3, 3 and 6. All twelve added roots have degree 10 in each construction. Both sets have centroid zero, so an isometry would preserve these degrees.

**What it leaves open.** With 34_nogo_colour_not_in_spin9.md this leaves the fit 44 = 32 + 12 as a count of states only. States spread over several roots, as zero modes of an SU(4) bundle are, lie outside the hypotheses (Proposal 5.5 of lemma 34, which has no file).
