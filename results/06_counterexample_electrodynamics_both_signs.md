# The electrodynamics triple admits doubling involutions of both signs with the same J, so J does not decide between 9 and 11

**Status.** Counterexample. Proved by Astra 6 (job 06, Result 3). Ledger row `l06_counterexample`. Item 2 of Theorem D of paper/towerless_intervals.tex.

**Setting.** The electrodynamics triple of van den Dungen-van Suijlekom (section 4.1, equations (4.1)-(4.2)), in the basis (e_L, e_R, bar e_L, bar e_R) after a phase change compatible with A, J and gamma:

    rho(a, b) = diag(a, a, b, b),   gamma = diag(1, -1, -1, 1),
    J = [[0, I_2], [I_2, 0]] K,     D = m diag(sigma_1, sigma_1),   m >= 0.

It has the KO-6 signs.

**Statement.**

1. U_+ = diag(sigma_1, sigma_1) and U_- = diag(sigma_1, -sigma_1) both reverse the grading and commute with the algebra, the opposite algebra and D.
2. U_+ J = J U_+ and U_- J = -J U_-.
3. On H_0 = span(e_L, bar e_R) the descended triples are d_+ = m I_2, j_+ = sigma_1 K, of KO-degree seven, and d_- = diag(m, -m), j_- = [[0, 1], [-1, 0]] K, of KO-degree five.
4. This holds also at m = 0.

So the same triple, with the same J, admits both factorizations of 06_doubling_criterion.md.

*Scope.* The claim refuted is that the real structure J fixes a unique reduction. The statement concerns this finite triple.

**Proof.** Lemma 06, Result 3; the proof is there, by direct multiplication.

**What it leaves open.** Which further datum selects s. Spacetime charge conjugation and particle number do not (08_counterexample_both_signs_fixed_data.md, 08_particle_preservation_pairs_signs.md); the neutral-sector multiplicities restrict s = -1 (06_neutral_sector_criterion.md).
