# For none of the 192 assignments of the up-type quarks, down-type quarks, charged leptons and neutrinos to three of the four family slots, aligned or misaligned, does an isometry of R^8 map S - T onto S - N

**Status.** No-go theorem in its scope (Proposition 5.4, with the correction of its neighbour counts). Found by Claude Opus 5.5 (branch 11D; ledger agent `claude`) by exhaustive computation (Python, exact integers, rerun twice on 4 Nov 2026, not kept). Terra 6.1 gave an analytic proof for all 192 assignments without enumeration, written out in the Referee proofs of lemma 34, and showed that the universal neighbour counts of the first version are false for misaligned slots, for instance A = C = {0, 1, 2} and B = D = {0, 1, 3}; Claude Sonnet 5.5 reran all 192 configurations in Python (reports: historical/reviews/2026-11-04_terra_check_11d.md, historical/reviews/2026-11-04_sonnet_second_check_11d.md). The conclusion holds on rerun, and the correction is recorded in lemma 37, section on corrections. Ledger row `d11_misaligned` (depending on `d11_no_isometry`). Proposition 8 of paper/generations_note.tex, with the corrected degrees after it ("\supp{34}").

**Setting.** The roots of 34_nogo_families_not_isometric.md, with the top in slot 0 and the up-type quarks, down-type quarks, charged leptons and neutrinos each in three of the four slots, independently, in slot sets A (containing 0), B, C and D. This includes the aligned families and the configurations of the 9 label, where SU(2)_L is off and does not tie the slots of up-type and down-type quarks. S is the configuration, T the top block and N the neutrinos, each with conjugates.

**Statement.**

1. S - N has degrees d in {13, 17, 19, 20}: 20 on the up-type quarks, 17 + 2 1_C(f) on the down-type quarks of slot f and 13 + 6 1_B(f) on the charged leptons of slot f, so only 19 and 20 occur in the 48 configurations with B = C.
2. Each neutrino root of slot f in S - T has d = 16 + 6 (1_A(f) - 1_{0}(f)), which is 16 or 22.
3. So for none of the 3 x 4^3 = 192 configurations does an isometry of R^8 map S - T onto S - N.

*Scope.* One root slot per species, whole colour multiplets, the specific half-root realization and Euclidean isometries. So four slots cannot be reduced to three while keeping the exchange as an isometry of the roots.

*Escapes, as the lemma states them.* General zero modes of a non-split SU(4) bundle, which are sections involving all four slots, and maps without an isometric action on the roots.

**Proof.** Lemma 34, Proposition 5.4, and the Referee proofs there: the neighbour table per slot gives the degrees above; both sets are closed under negation, so an isometry would preserve degrees, and the values 16 and 22 are absent from S - N.

**What it leaves open.** Proposal 5.5 of lemma 34, which has no file: in heterotic compactifications with SO(10) x SU(4) in E8 the families are zero modes of a rank-four bundle, with net number abs(c_3(V))/2 by the index. For split bundles with n_i >= 0 and sum 3 the degree multisets still differ in all 40 cases checked (second check), and a non-split bundle with index 3 is the case to compute; exactly three 16 zero modes also needs H^1(V^\*) = 0, since the index counts net chirality.
