# The Pati-Salam finite data are orientable, with gamma = rho(p_L' - p_R') rho(1_4)^o - rho(1_4) rho(p_L' - p_R')^o, while the Standard Model data and the light block of colour plus electromagnetism admit no orientation cycle

**Status.** Proposition (Proposition 41.4). Proved by Claude Fable 5.1 on 4 November 2026 by hand; confirmed by its author with numpy on the 32-state representation (the Pati-Salam cycle, script not kept). Refereed by Claude Opus 5.5 (effort max, 4 November 2026; report in historical/reviews/2026-11-04_opus_check_41_45.md): correct with two amendments, the e_R obstruction and the hypothesis on D at the Pati-Salam step, both applied. Ledger row `l41_orient` (depending on `l17_no_higgs` and on the hypothesis `sheet_diagonal_ps`). The table row on orientability and Poincaré duality of paper/connes_kk_dictionary_note.tex.

**Setting.** The chain and the representation of 41_trace_forms_along_chain.md, with the Pati-Salam projections p_R', p_L' and p_4; an orientation cycle is c = sum rho(a_i) rho(b_i)^o with c = gamma. At the Pati-Salam step D is sheet-diagonal, of the form of Corollary 16.8 (a Pati-Salam-symmetric Yukawa with no Majorana block), since with the Majorana block order one fails there and Theorem 20.2 selects A_SM.

**Statement.**

1. The Pati-Salam data are orientable, with the cycle above.
2. The Standard Model data are not orientable: nu_R and J nu_R carry the same left character lambda and the same right character lambda and have opposite gradings, and so do e_R and J e_R (left character conj(lambda), right character lambda, in the real summand), so no sum of left-right products separates either pair; the failure does not depend on the presence of nu_R (Stephan, hep-th/0610097, for the KO-6 models with neutrinos).
3. The light block of the third step is not orientable: its kept mass blocks are nonzero and commute with B (Corollary 17.4), and a nonzero D commuting with both actions commutes with every orientation cycle while anticommuting with gamma; directly, d_L and d_R of one colour carry the same characters and opposite gradings. This proves the corpus statement rs_N9.

*Scope.* One generation with Dirac neutrinos in the stated representation, the strict projections of lemma 06 for the third step, and a sheet-diagonal D at the first. The same loss under a heavy centralizer in a four-summand toy model is orientability_under_heavy_centralizer.md; here it happens in the physical chain.

**Proof.** Lemma 41, Proposition 41.4: on the particles rho(1_4)^o is the identity and rho(1_4) vanishes, on the antiparticles the reverse, so the right side is +1 on p_L, -1 on p_R, -1 on p-bar_L and +1 on p-bar_R, which is gamma; a cycle takes the same value on two states with the same pair of characters, while gamma takes opposite values.

**What it leaves open.** A second independent reading. The result points to the topology of a Kaluza-Klein parent as the source of orientability, which the finite data along the chain do not keep (lemma 41, Scope).
