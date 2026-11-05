# A scale-free potential with G(theta) = theta^4 near theta = 0 is stationary along every family m = eps, l = eps^{-alpha} with 0 < alpha < 1, so a flat direction allows a joint path without selecting it

**Status.** Counterexample, to the claim that every stationary family has constant angle and that a second scale is necessary for a joint family to exist (the universal conclusion of Proposition 1.5 of lemma 31). Constructed by Terra 6.1 and written out in the section "Further proofs" of lemma 31; it is part of the ledger row `d11_scale_free`. Stated in the section on the massless limit of paper/connes_kk_dictionary_note.tex ("a flat direction would select nothing (\supp{31})").

**Setting.** V(l, theta) = l^{-4} G(theta) with theta = l m at fixed m > 0, as in item 2 of 31_scale_free_potential.md.

**Statement.**

1. Let G(theta) = theta^4 on 0 <= theta < delta, with a C^1 extension to the angle domain. Then V(l, l m) = l^{-4} (l m)^4 = m^4 is independent of l on l m < delta.
2. For any 0 < alpha < 1, the family m = eps, l = eps^{-alpha} has theta = l m = eps^{1 - alpha} < delta for small eps, so it is stationary, l m -> 0, and by Theorem 23.6 M_W l ~ sqrt 2 l m -> 0.
3. An extension with G(theta) >= theta^4 on the rest of the fundamental interval gives V(l, l m) >= m^4, with equality on l m < delta, so the family is a flat family of minima.

*Scope.* The potential leaves the path undetermined and does not select it dynamically. The specified flat one-loop determinant of lemma 24 has no such flat direction near theta = 0 when n_f != 54/5 (item 3 of 31_scale_free_potential.md).

**Proof.** Lemma 31, section "Further proofs", Counterexample to the universal conclusion of Proposition 1.5: substitution.

**What it leaves open.** The result points to an action that selects a joint path with finite gauge couplings, which remains to be constructed. A flat modulus, a tuned higher-order potential or additional dimensionful terms leave other families possible.
