# Among blocks of 12 states made of whole Dirac species, exactly one up-type quark and the three neutrinos together keep both spectral-action values cos^2 theta_NC = 5/8 and kappa_em/kappa_s = 8/3 on removal

**Status.** Proposition (Proposition 4.1). Proved by Claude Opus 5.5 (branch 11D; ledger agent `claude`) by hand; checked by its author by hand, by Terra 6.1 by hand and by Claude Sonnet 5.5 by hand (reports: historical/reviews/2026-11-04_terra_check_11d.md, historical/reviews/2026-11-04_sonnet_second_check_11d.md). Ledger row `d11_blocks` (depending on `l21_removal`). Proposition 1 of paper/generations_note.tex, with the counting after it ("\supp{33}").

**Setting.** The 96 states of H_F, three generations with nu_R. A block of whole Dirac species contains all colours, both chiralities, particles and antiparticles: 12 states for a quark species and 4 for a lepton species. The totals (sum T_3 Q, sum Y Q; Q^2, colour) = (6, 10; 32, 12) are those of Proposition 21.1, in the quadratic spectral action of lemma 18, with cos^2 theta_NC = (sum Y Q)/(sum T_3 Q + sum Y Q).

**Statement.**

1. A 12-state block of whole species is one quark species or three lepton species.
2. Removing a quark keeps both values only for an up-type quark, whose contribution (1, 5/3; 16/3, 2) is proportional to the totals.
3. Three lepton species with k charged leptons give cos^2 theta_NC = (10 - 3k/2)/(16 - 2k), which is 5/8 only for k = 0.

So F1 = H_F minus the top block and F2 = H_F minus the neutrino block are the two kinds of solutions, a charged one and a neutral one.

*Scope.* The classical bosonic trace of lemma 21 with three generations, and blocks made of whole species only.

**Proof.** Lemma 33, Proposition 4.1: Proposition 21.1 for the quarks; each charged lepton contributes (1/2, 3/2; 4, 0), and neutrinos contribute zero to all four sums.

**What it leaves open.** A structure that exchanges the two blocks, which lemma 21 asked of the M2/M5 duality: the colour obstructions are 33_nogo_colour_obstructions.md and the placement in E8 is 33_e8_two_gradings_placement.md. At the 9 label the neutrino block decouples through zero charge and the top block through infinite mass (lemma 33, the reading at the 9 label).
