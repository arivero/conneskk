# Counterexample R1: Theorem 3.4 of Farsi-Latrémolière needs a hypothesis it does not state

**Source.** C. Farsi and F. Latrémolière, *Collapse in noncommutative geometry and spectral continuity*, arXiv:2404.00240 (v1 30 Mar 2024; v2 and v3 Oct 2025, identical sources), J. London Math. Soc. (2) 114 (2026) e70628, doi:10.1112/jlms.70628. The theorem is Theorem 3.4 in v3 and in print, Theorem 2.5 in v1. Found by Claude Opus 5.5 on 3 November 2026 while reading the paper for lemma 09; the published text agrees with v3 and keeps the statement and the defective step, printed as equation (3.11). Ledger row `fl_R1`. The main paper develops the piece used in its own text, by the rule that an obscure reference cannot carry a step of the argument.

**The statement in question.** For a metric spectral triple (A, H, D) with D = D_h + D_v, D_v self-adjoint with 0 isolated in its spectrum, D_eps = D_h + D_v/eps, a unital C*-subalgebra B of A and the projection p onto ker D_v, under six hypotheses ((1) ||[D_h, a]|| <= ||[D_eps, a]||; (2) ||[D_v, a]|| <= M eps ||[D_eps, a]||; (3) [D_v, b] = 0 for b in B; (4) [p, b] = 0 and [D_h, p] = 0; (5) (B, ker D_v, p D_h p) is a metric spectral triple; (6) a positive map E: A -> B fixing B with ||a - E(a)|| <= k ||[D_v, a]|| and ||[D_h, E(a)]|| <= ||[D_h, a]||), the theorem asserts that (A, H, D_eps) converges to (B, ker D_v, p D_h p) in the spectral propinquity as eps -> 0. Corollary 3.5 then gives convergence of spectra: Sp(p D_h p) is the set of limits of convergent sequences lambda_n in Sp(D_{eps_n}).

**Counterexample.** Let H have orthonormal basis e_0, e_1, e_2, ..., let A = B = C act by scalars, and set D_v e_n = n e_n and D_h e_n = -n^2 e_n. Then D_eps e_n = (n/eps - n^2) e_n has compact resolvent for every eps > 0, since |n/eps - n^2| -> infinity; D_v has gap 1 at 0; p is the projection onto C e_0 and commutes with D_h; hypotheses (1) to (6) hold trivially, all commutators with scalars being zero, with E = id and any M, k > 0; and (C, C e_0, 0) is a metric spectral triple. Its spectrum is {0}. Fix x > 0 and take eps_n = 1/(n + x/n) -> 0. Then D_{eps_n} e_n = x e_n, so the constant sequence x lies in Sp(D_{eps_n}) for every n, and Corollary 3.5 would put x in {0}. Hence the conclusion of Theorem 3.4 fails for this family.

**The failing step.** The proof's estimate (3.11),

    ||xi - p xi|| <= 4 sqrt(2 eps/delta) (||xi|| + ||D_v xi/eps||) <= 4 sqrt(2 eps/delta) DN_eps(xi),

needs ||D_v xi||/eps <= ||D_eps xi||, which is neither assumed nor proved. For xi = e_n at eps = eps_n the left side is 1 and the right side is 4 sqrt(2 eps_n) (1 + x) -> 0.

**Sufficient repairs.** Either hypothesis below makes the Fourier Lemma 3.3 of the paper unnecessary and improves the rate from O(sqrt eps) to O(eps):

1. D_h and D_v anticommute on a common core. Then ||D_eps xi||^2 = ||D_h xi||^2 + eps^{-2} ||D_v xi||^2 and ||xi - p xi|| <= ||D_v xi||/delta <= (eps/delta) ||D_eps xi||.
2. A relative bound ||D_v xi|| <= C eps (||xi|| + ||D_eps xi||). Then ||xi - p xi|| <= (C eps/delta)(||xi|| + ||D_eps xi||).

These are sufficient hypotheses; the counterexample shows the printed six are not. All applications in the paper (Corollary 4.1, Theorems 4.6, 5.5, 6.3) have anticommuting D_h and D_v and avoid the defect; Theorem 4.6 and Corollary 4.7 additionally need a nonzero vertical kernel for their displayed target to be a spectral triple (Astra 6, 3 November 2026). Corollary 4.1 (collapse of a fixed triple scaled by 1/eps to (C, ker D, 0), and to nothing when ker D = 0) has D_h = 0 and is sound.

**Scope.** This is a statement about one theorem of one paper. It leaves the paper's framework, its corollaries in the anticommuting setting and its applications intact. For the project, it is the reason lemma 15 proves its own collapse statements (Theorems 15.3 and 15.7) and the reason the main paper reaches the contradiction through Theorem 15.7 (the converse of Proposition G: along eps_n the eigenvalues 0 and x stay bounded, while a limit (C, C e_0, 0) would need one eigenvalue near 0 with a diverging gap) rather than through Corollary 3.5. The route through Theorem 15.7 was written by Claude Opus 5.5.

