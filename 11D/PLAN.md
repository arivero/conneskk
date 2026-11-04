# Plan of the 11D line (handover file)

Kept current so that another agent can continue from any commit. Branch `11D`, a fast-forward of `master` at b2ddf98; only new files plus pointer lines in README.md, INDEX.md, STRATEGY.md and one include line in ledger.pl. Rules: [AGENTS.md](../AGENTS.md); no model identifiers in files (provenance "Claude (Anthropic)", ledger atom `claude`); push after every finished piece; no new Python tests in this round (decision of 4 Nov 2026); menial edits (pointers, ledger rows, TOC) may be delegated.

## State (4 Nov 2026)

- 01: chiral interval = antiperiodic circle; joint family (Astra audit); Proposition 1.4 corrected; Proposition 1.5 (scale-free potentials give alpha = 1).
- 02: M^{111} = hypercharge quotient of the 5-bar; Z_6; flux index on CP^2 x CP^1.
- 03: hypercharge as the C_3 (Betti) vector; brane matter; AdS5 x CP^2 x S^2; colour no-go for the 84.
- 04 (this round): the two families of 84 and the M2/M5 sides, in E8 (Hořava-Witten wall group) and in NCG. Status: in progress, see below.

## Question of this round

Lemma 21: 96 = 84 + 12 in two ways, F1 = all but the top, F2 = all but the neutrinos. Is there a correct correspondence of states with the M2 (C_3) and M5 (C_6) sides, perhaps in NCG or Hořava-Witten rather than in Kaluza-Klein towers?

## Steps, in order

1. [done in 04] Characterize F1, F2: the complements of the 12-state blocks of whole species whose removal keeps cos^2 theta_NC = 5/8 and 8/3 (one up-type quark; the three neutrinos).
2. [done in 04] Colour obstructions: F1 and F2 are not isomorphic as colour representations; Lambda^3 C^9 for any SU(3) -> SU(9) is never either family (complex case of Proposition 3.8).
3. [done in 04] E8 with two commuting order-3 gradings: SU(9) (sl(9) + Lambda^3 + Lambda^6 = gravity, C_3, C_6) and SU(3) x E6 (families). Placement of the generation 16 = 10 + 5bar + 1; top in the C_3 sector; neutrinos outside it; Yukawas as brackets; the M2/M5 exchange acts as J.
4. [open] Colour-family exchange: E8 contains SU(3)^4 with permutations of the four factors. Compute whether an element exchanging SU(3)_colour with SU(3)_family maps the top block to the neutrino block, and F1 to F2. This is the remaining candidate for the exchange of lemma 21 (step 3 shows it cannot be the M2/M5 exchange).
5. [open] NCG: a finite triple whose Hilbert space is the family-grade-one part of e8 restricted to the Standard Model states, J the Chevalley involution, D_F = ad(Higgs). Check order zero and order one, and compare with A_F = C + H + M_3(C).
6. [open] Hořava-Witten dynamics: small-instanton transitions (an M5-brane moving into a wall) change the bundle and the chiral spectrum; check whether a transition can remove a 12-state block of the types of step 1.
7. [open] E11 levels (C_3 at level 1, C_6 at level 2, dual graviton at level 3) as a test of the assignment 10 -> C_3, 5bar -> C_6 or gravity, 1 -> gravity or C_6 beyond E8.
8. [open, earlier rounds] Second-scale potential selecting the joint family (01, Proposition 1.5); W, Z masses from the resolution on the M2 side (03); spinors on Y_{3,2} (prompts/astra_11d_01.md); referee of the folder (prompts/terra_check_11d.md, extend to 04).

## How to continue

Write each result in 04 or a new numbered file, label it (Theorem, Proposition, Conjecture, No-go with scope), add ledger rows in ledger_11d.pl with `referee_pending/1`, update the results table of README.md and INDEX.md (`python3 -I tools/index_links.py toc FILE` gives the anchors; `python3 -I tools/index_links.py check` must report 0 bad), run `swipl -g run_tests -t halt ledger.pl`, commit and push to `11D`.
