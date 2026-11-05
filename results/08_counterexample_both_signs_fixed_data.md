# A scalar-interval product with fixed D_F, J_F, Gamma_F and particle number admits particle-preserving involutions of both signs, so Conjecture 07.4 is false as stated

**Status.** Counterexample (Result 11 of lemma 08) to Conjecture 07.4. The conjecture is by Claude Opus 5.5 (lemma 07, Question 4); the counterexample is by Astra 6 (job 08). Ledger rows `l08_both_signs` and `conj07_4` (status refuted; refuted_by(conj07_4, l08_both_signs)). Item 5 of Theorem D of paper/towerless_intervals.tex.

**The conjecture.** For F = F_0 x (collapsing chiral interval) with the product conventions of lemma 06, the induced U = 1 (x) sigma has UJ = sJU with s fixed by eps' of the interval and the product grading twist, and the choice between 9 and 11 is fixed by whether J_M or J_M gamma_5 represents physical charge conjugation.

**Setting.** tau_i act on an internal particle/antiparticle space and sigma_i on the interval truncation, with

    rho(a, b) = diag(a, b) (x) 1,   D_F = m tau_3 (x) sigma_1,   Gamma_F = tau_3 (x) sigma_3,
    J_F = (tau_1 (x) sigma_3) K,    Q = tau_3 (x) 1,   m > 0.

This is Result 5 with D_0 = 0, Gamma_0 = tau_3, J_0 = tau_1 K; it has the standard KO-6 signs, and D_F commutes with the algebra, so first order holds.

**Statement.**

1. U_- = 1 (x) sigma_1 and U_+ = tau_3 (x) sigma_1 = Q U_- are grading-reversing unitary involutions commuting with D_F, both algebra actions and Q.
2. U_- J_F = -J_F U_- and U_+ J_F = J_F U_+.
3. The unitary W = diag(1, sigma_3) on the particle/antiparticle blocks carries the data to D_F' = m 1 (x) sigma_1, J_F' = (tau_1 (x) 1) K, preserving Gamma_F, Q and rho, with U_-' = diag(sigma_1, -sigma_1) and U_+' = diag(sigma_1, sigma_1): the electrodynamics counterexample of lemma 06 written as an interval product.
4. Tensoring with a fixed spacetime J_M leaves both possibilities available.

*Scope.* The claim refuted is that physical spacetime charge conjugation, together with particle number, selects the reduction. Selecting the bare reflection 1 (x) sigma is an additional restriction and gives s = -1 in the internal-first convention (08_product_reflection_sign.md).

**Proof.** Lemma 08, Result 11; the proof is there.

**What it leaves open.** What selects the lift of the L/R reflection. The neutral sector restricts s = -1 (06_neutral_sector_criterion.md), and Majorana terms break the sign pairing of 08_particle_preservation_pairs_signs.md.
