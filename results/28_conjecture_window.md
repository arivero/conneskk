# Conjecture: for large mass the doubled operator on the disc bundle has an isolated window of eight states, one copy of the 4 of Sp(2) at the zero section and one at the boundary, and its compression maps tend to the two endpoint maps

**Status.** Conjecture (Conjecture 28.6), proved in lemma 29 in case (b) for the metric class of Setting 29.0 (Theorem 29.7) and in case (a) at the Fubini-Study radius (Theorem 29.11), both refereed by Terra 6.1; open for other metrics, and for case (a) at other radii. Stated by Claude Opus 5.5, with Astra 6 also credited in lemmas/README.md; numerical support from Result 28.5 (Python, numpy and scipy, a radial solve whose script is not kept), rerun by Terra 6.1 in Python, with a separate test of A_2. A first version of these numerics had the wrong sign of the spin connection, and its numbers are withdrawn (lemma 28, Correction of 3 Nov 2026). Ledger rows `l28_window` (status conjectural, amended by `l29_window_b` and `l29_window_a`), `l28_numerics` (status numerical) and `l28_criterion` (Lemma 28.14). Listed in the table of conjectures of lemmas/README.md; the proved cases are Theorem 2 of paper/joint_limit_note.tex.

**Setting.** Theorem 28.9 with the sign of Proposition 28.13, and either (a) the pull-back connection and wall radius rho, or (b) the collar connection of Proposition 28.13 and the Fubini-Study metric at the wall.

**Statement (conjectured).**

1. For large M the hypotheses of Lemma 28.14 hold, with the eight states being one copy of the 4 at the zero section in one Gamma-hat degree and one at the boundary in the other.
2. For a family of metrics and mass profiles with a uniform positive decay rate, the off-diagonal block is exponentially small in l.
3. The compression of a smooth function tends to (Q_B(a|_{S^4}), Q_Y(a|_{CP^3})), with Q_Y(x_a) = -Gamma_a/5 and Q_Y(y_T) a multiple of T, equal to the level-one value of Example 16.9 times w(rho) in case (a), and equal to it in case (b).

*Lemma 28.14 (proved, Astra 6).* An isometry U_M : C^8 -> Dom D-hat_M with ||D-hat_M U_M|| <= eps_M -> 0 and ||D-hat_M psi|| >= delta ||psi|| on the complement of its range, with delta independent of M, gives exactly eight eigenvalues in (-delta, delta) for large M, with the spectral space within O(eps_M/delta) of the range.

*Numerical support (Result 28.5, Python).* On the 4 at rho_inf = 1 the lowest singular value falls with l at the rate of the constant-coefficient exponent (0.877, 1.155, 1.464 measured against 0.856, 1.151, 1.476 at phi_0 = 3, 4, 5), and the next value is 1.86 to 1.87. On the 16, 20 and 40 the lowest values are near sqrt(5), sqrt(8), sqrt(12) at the core and above 1.9 at the wall, and the multiplicity is zero on the 1, 5, 10, 14 and 35. Both modes have Q(x_a) = -Gamma_a/5; the boundary fibre part approaches -w(rho), and -1.0000 with the collar connection, where the next value is sqrt(3). Small entries have a mesh floor and do not establish a zero continuum value.

**Proof.** The proved cases are in lemma 29 (29_window_case_b.md, 29_window_case_a.md, 29_tunnelling_exponentially_small.md, 29_compression_to_endpoint_maps.md). Lemma 28 named the missing steps: the normal reductions with their errors, the matching, and a coercive estimate uniform in the mass and in all representations of Sp(2).

**What it leaves open.** Other metrics in the class of Theorem 28.9, including the Bryant-Salamon metric; case (a) at radii other than 1, under the kernel condition K(rho); a lower bound on the tunnelling eigenvalue. The generated algebra at finite mass stays outside the conjecture (28_counterexample_generation_discontinuous.md).
