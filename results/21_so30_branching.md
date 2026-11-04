# For the five quarks other than the top, 30 = (5, 3) + (5-bar, 3-bar), and the adjoint of SO(30) contains in (15, 3-bar) and (24, 1) + (1, 1) exactly the charged scalar-partner counts of three generations, plus three triplets of charge +4/3 and one neutral state

**Status.** Proposition (a representation and charge count, unnumbered in lemma 21; the ledger records it as kind claim). Computed by Claude Opus 5.5; checked by Claude Opus 5.5 in Python (exact counting: 435 = 224 + 1 + 105 + 105, with 105 = 60 + 45 and 224 = 192 + 24 + 8) and by Terra 6.1 by hand (historical/reviews/2026-11-03_terra_check_20_21.md). Ledger row `l21_so30`, with prior work recorded as partial: hep-ph/0512065, Tables 1-2. Cited in paper/real_structure_note.tex ("\supp{21}"), in its section on the sign of an odd factorization and in its section on the charge-4/3 antitriplets.

**Setting.** SU(5) x SU(3) inside SO(30), acting on 30 = (5, 3) + (5-bar, 3-bar). On the 5, Q = diag(3/5, 3/5, -2/5, -2/5, -2/5) + (1/15) I_5, that is Q = 2/3 for u, c and Q = -1/3 for d, s, b, which includes the U(1) commuting with SU(5).

**Statement.**

1. The adjoint Lambda^2(30), of dimension 435, is (24, 8) + (24, 1) + (1, 8) + (1, 1) + (10, 6) + (15, 3-bar) + the conjugates of the last two.
2. The charges, with their numbers of states: on (15, 3-bar), -2/3: 6, +1/3: 6, +4/3: 3; on (10, 6), -2/3: 3, +1/3: 6, +4/3: 1; on (24, 1) + (1, 1), +1: 6, -1: 6, 0: 13.
3. Three generations of scalar partners in a supersymmetric Standard Model with nu_R need, for antisquarks in the 3-bar, 6 of charge -2/3 and 6 of charge +1/3, and for sleptons 6 of charge +1, 6 of charge -1 and 12 neutral real states. So (15, 3-bar) and (24, 1) + (1, 1) contain exactly the charged counts, with three triplets of charge +4/3 and one neutral state left over.
4. SO(30) sits in SO(32), with 496 -> (435, 1) + (1, 1) + (30, 2) under SO(30) x SO(2).

*Scope.* These are representation and charge counts. Identifying the entries with physical scalar partners needs a field construction, spin and chirality assignments, interactions and dynamics. The counting of 15 diquarks and 25 mesons, with the charge +4/3 states and the remark that the top is unable to form them, goes back to hep-ph/0512065, which finds neither SO(30) nor a role for SO(32); lemma 21 adds one group whose adjoint contains both families.

**Proof.** Lemma 21, section SO(30): the branching of the antisymmetric square of (5, 3) + (5-bar, 3-bar) under SU(5) x SU(3), with the charges read off from Q.

**What it leaves open.** The hint of a role for SO(32) in item 4 is not explored in lemma 21. Why the antisquark counts exclude the top, and what the charge +4/3 states imply, is 21_counting_forces_top_out.md. The symmetry type of the massless light block and the realization of these counts on an interval are treated in paper/real_structure_note.tex.
