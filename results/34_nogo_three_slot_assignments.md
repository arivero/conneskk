# For none of the 192 assignments of the up-type quarks, down-type quarks, charged leptons and neutrinos to three of the four family slots, aligned or misaligned, does an isometry of R^8 map S - T onto S - N

**Status.** No-go theorem in its scope (Proposition 5.4). The proof is analytic and covers all 192 assignments without enumeration (end of lemma 34, "Proposition 5.4 for all 192 assignments, without enumeration"), by Terra 6.1; an exhaustive Python computation by Claude Opus 5.5 (exact integers, not kept) agrees. The neighbour counts depend on the alignment of the slots; for misaligned slots, for instance A = C = {0, 1, 2} and B = D = {0, 1, 3}, the degrees are those of the Statement below (lemma 37, section on corrections). Ledger row `d11_misaligned` (depending on `d11_no_isometry`). Proposition 8 of paper/generations_note.tex, with the corrected degrees after it ("\supp{34}").

**Setting.** The roots of 34_nogo_families_not_isometric.md, with the top in slot 0 and the up-type quarks, down-type quarks, charged leptons and neutrinos each in three of the four slots, independently, in slot sets A (containing 0), B, C and D. This includes the aligned families and the configurations of the 9 label, where SU(2)_L is off and does not tie the slots of up-type and down-type quarks. S is the configuration, T the top block and N the neutrinos, each with conjugates.

**Statement.**

1. S - N has degrees d in {13, 17, 19, 20}: 20 on the up-type quarks, 17 + 2 1_C(f) on the down-type quarks of slot f and 13 + 6 1_B(f) on the charged leptons of slot f, so only 19 and 20 occur in the 48 configurations with B = C.
2. Each neutrino root of slot f in S - T has d = 16 + 6 (1_A(f) - 1_{0}(f)), which is 16 or 22.
3. So for none of the 3 x 4^3 = 192 configurations does an isometry of R^8 map S - T onto S - N.

*Scope.* One root slot per species, whole colour multiplets, the specific half-root realization and Euclidean isometries. So four slots cannot be reduced to three while keeping the exchange as an isometry of the roots.

*Escapes, as the lemma states them.* General zero modes of a non-split SU(4) bundle, which are sections involving all four slots, and maps without an isometric action on the roots.

**Proof.** Lemma 34, Proposition 5.4: the analytic proof at the end of the lemma ("Proposition 5.4 for all 192 assignments, without enumeration") and the neighbour table of the section "Further proofs" give the degrees above; both sets are closed under negation, so an isometry would preserve degrees, and the values 16 and 22 are absent from S - N.

**What it leaves open.** Proposal 5.5 of lemma 34, which has no file: in heterotic compactifications with SO(10) x SU(4) in E8 the families are zero modes of a rank-four bundle, with net number abs(c_3(V))/2 by the index. For split bundles with n_i >= 0 and sum 3 the degree multisets still differ in all 40 cases computed, and a non-split bundle with index 3 is the case to compute; exactly three 16 zero modes also needs H^1(V^\*) = 0, since the index counts net chirality.
