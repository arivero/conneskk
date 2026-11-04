# As l -> infinity at fixed mu the interval decompactifies with chiral wall modes and a one-dimensional Weyl law above mu; as l -> 0 at fixed light mass a unique mu(l) keeps the light pair while the tower diverges

**Status.** Theorem (Theorems 9.8 and 9.9), with Corollary 9.10. Proved by Claude Opus 5.5; checked by Claude Opus 5.5 numerically (the secular equation and the collapse table for m_f = 1, down to l = 0.001) and by Terra 6.1 by hand, effort max: a gap in Theorem 9.8 closed by the referee, Theorem 9.9 correct, Corollary 9.10 wrong as first stated and corrected (report appended to lemma 09). Ledger row `l09_limits`. Theorem B of paper/towerless_intervals.tex. The ledger records Corollary 4.1 of Farsi-Latrémolière as prior work for the fixed-mu collapse, with the tuned collapse outside its hypotheses; the tuned collapse mu(l) was not found in print (lemma 09, Literature).

**Setting.** Condition (c) with M = -mu, lambda_0 and kappa_0 as in 09_spectrum_with_bulk_mass.md. For c > 1, s(c) is the positive root of tanh s = s/c and F(c) = (lambda_0 l)^2 = c^2 sech^2 s(c), strictly decreasing on (1, infinity) from 1 to 0 (Lemma 9.7).

**Statement.**

1. (Theorem 9.8, l -> infinity at fixed mu) lambda_0 <= 2 mu e^{-kappa_0 l} -> 0 with kappa_0 -> mu. The normalized profiles of L_0 near x = 0 and of R_0 near x = l converge, uniformly on compact sets of the wall distance y and in L^2([0, infinity)) after extension by zero, to sqrt(2 mu) e^{-mu y}: exact chiral zero modes of the two half-line operators, which are not zero modes at finite l. The rest of the spectrum obeys #{n : lambda_n <= E} = (l/pi) sqrt(E^2 - mu^2) + O(1) for E > mu, a one-dimensional Weyl law (both signs double the leading term).
2. (Theorem 9.9, l -> 0 at fixed m_f > 0) For each l in (0, 1/m_f) there is a unique mu(l) > 1/l with lambda_0 = m_f. As l -> 0, c(l) = mu(l) l -> infinity with c = -W_{-1}(-m_f l/2) + o(1) = L + log L + o(1), L = log(2/(m_f l)); the next eigenvalue exceeds sqrt(mu(l)^2 + (pi/l)^2) -> infinity; the compression stays Connes-Lott with mass m_f while the interval collapses to a point in Gromov-Hausdorff distance (d_GH = l/2). As whole triples, the family converges in the spectral propinquity to (C, C^2, m_f sigma_1), at distance at least min(sqrt(2)/2, (1/m_f - l)/2) from the Connes-Lott triple.
3. (Corollary 9.10, l -> 0 at fixed mu) Eventually c < 1, every eigenvalue has absolute value greater than mu, and the smallest absolute value is (pi/(2l))(1 + o(1)). No light fermion survives; this extends lemma 05, Part 4 to M != 0.

*Scope.* The log log correction of item 2 is specific to this localization model. The readings 10 -> 11 and 10 -> 9 of the two limits are proposed interpretations (ledger statement of `l09_limits`).

**Proof.** Lemma 09, Theorems 9.8 and 9.9 and Corollary 9.10; the proofs are there. Item 2 applies Lemma 9.7 to F(c) = (m_f l)^2 in (0, 1), and Lemma 9.5 gives m_f = 2 (c/l) e^{-c} (1 + o(1)).

**What it leaves open.** Compatibility of the two readings with the KO factorizations of lemmas 06 and 08 is not established. The gauge sector of the collapsing family is lemmas 13 and 14, where bounded light fermions cannot match the Neumann-Dirichlet tower (14_nogo_bounded_light_fermions.md).
