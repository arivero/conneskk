# Farsi-Latrémolière, "Collapse in noncommutative geometry and spectral continuity": referee assessment

**Paper.** C. Farsi and F. Latrémolière, arXiv:2404.00240: v1 30 Mar 2024, v2 13 Oct 2025, v3 15 Oct 2025. Published as J. London Math. Soc. (2) 114 (2026), no. 1, e70628, 54 pp. (journal reference on the arXiv record).

**What was read.** The LaTeX sources of v1 and v3, in full. The v2 and v3 sources are byte-identical. The journal page (doi:10.1112/jlms.70628) returned HTTP 403, so we have not seen the published text. Theorem numbers below are those of v3, with v1 numbers in brackets. Read by Claude Opus 5.5 on 3 Nov 2026 for [lemma 09](../lemmas/09_massive_chiral_interval.md) (Theorems 9.8-9.10) and [STRATEGY](../STRATEGY.md) T0. **Update (3 Nov 2026):** the published text was read later that day, from the journal HTML supplied by the user; see Section 3.6.

**Summary.**
- The convergence notion is Latrémolière's spectral propinquity on metric spectral triples (A, H, D). These carry no grading and no real structure.
- One collapse is treated: D = D_h + D_v, with only D_v rescaled by 1/eps. The limit is (B, ker D_v, p D_h p), where B ⊆ A and p projects onto ker D_v.
- The general Theorem 3.4 is false as stated: it needs a hypothesis that its proof uses but does not list (Counterexample R1). All of the paper's applications satisfy that hypothesis.
- Corollary 4.1 (collapse to a point, limit (C, ker D, 0)) is sound.
- Our Theorem 9.9 lies outside every theorem of the paper. The paper's method adapts to it (Lemma R2, ours). The limit is (C, C^2, m_f sigma_1), and the Connes-Lott two-point triple stays at distance at least about 1/(2 m_f).
- For T0, limits of commutative triples in this metric have commutative algebras (Lemma R3, ours).

## 1. Setting and main results

### 1.1 Prerequisites (Section 2)

- **Spectral triple** (Definition 2.1). This is a unital C*-algebra A, a Hilbert space H that is a left A-module, and a self-adjoint D. The Lipschitz algebra A_D = {a : a Dom D ⊆ Dom D, [D, a] bounded} is dense, and (D + i)^{-1} is compact. No grading, real structure or summability enters anywhere in the paper.
- **Quantum compact metric space** (Definition 2.3). This is a pair (A, L), with L a seminorm on a dense subspace of sa(A), such that:
  - ker L = R 1;
  - the Monge-Kantorovich metric mk_L(phi, psi) = sup{|phi(a) - psi(a)| : L(a) <= 1} metrizes the weak* topology on the state space;
  - the Leibniz inequality holds for Jordan and Lie products;
  - the unit ball {L <= 1} is closed.
- **Metric spectral triple** (the definition after 2.4). A spectral triple is metric when (A, L_D) with L_D(a) = ||[D, a]|| is a quantum compact metric space, i.e. when Connes' distance metrizes the weak* topology.
- **Tunnels, extent, propinquity** (Definitions 2.5-2.10).
  - A quantum isometry is a *-epimorphism pi with L_B(b) = inf{L_A(a) : pi(a) = b}.
  - A tunnel is a quantum compact metric space (D, L_D) with quantum isometries onto both spaces.
  - Its extent is the larger of the two Hausdorff distances, in mk_{L_D}, between S(D) and the pulled-back state spaces.
  - The propinquity is the infimum of extents over tunnels. The paper records that "it induces the same topology as the Gromov-Hausdorff distance on the class of classical metric spaces".
- **Metrical C*-correspondences** (Definition 2.13). A metric spectral triple yields (H, DN, A, L_D, C, 0), where DN(xi) = ||xi|| + ||D xi|| is the graph norm. Metrical tunnels and their extents follow in Definitions 2.16-2.17. Separation and dispersion of operator families are measured through pseudo-states xi -> mu(<omega, xi>) with DN(omega) <= 1 (Definitions 2.20-2.21).
- **Spectral propinquity** (Definition 2.22, taken from Latrémolière, Adv. Math. 404 (2022), and Math. Ann. 389 (2024), Theorem 3.5). The distance Lambda_spec between two metric spectral triples is the infimum of sqrt(2)/2 and of those eps > 0 for which some metrical tunnel has dispersion < eps between the families (exp(i t D_1))_{0 <= t <= 1/eps} and (exp(i t D_2))_{0 <= t <= 1/eps}.
- **Properties listed after Definition 2.22.**
  - "(1) Lambda_spec = 0 if the two metric spectral triples are unitarily equivalent." The paper states only this, the trivial direction. Latrémolière (Adv. Math. 2022) proves both directions: the distance is null exactly on unitarily equivalent pairs, and it dominates the propinquity of the underlying quantum metric spaces.
  - "(2) if Lambda_spec(T_n, T_infinity) -> 0 then for all bounded continuous f, Lambda_op(f(D_n), f(D_infinity)) -> 0, and Sp(D_infinity) = {lim lambda_n : (lambda_n) convergent with lambda_n in Sp(D_n) for all n}."

### 1.2 The collapse setting and Theorem 3.4 [v1: Theorem 2.5]

A unital C*-subalgebra B ⊆ A plays the base, and a positive map E : A -> B plays the bundle projection. The Dirac operator splits as D = D_h + D_v, and only the vertical part is scaled: D_eps = D_h + (1/eps) D_v. The limit object is (B, ker D_v, D_B) with D_B = p D_h p. Quoted, with notation transcribed:

> **Theorem 3.4.** Let (A, H, D) be a metric spectral triple, and let B ⊆ A be a unital C*-subalgebra of A, and such that D = D_h + D_v, where D_v is self-adjoint and such that 0 is isolated in Sp(D), together with the following assumptions. Setting D_eps := D_h + (1/eps) D_v for all eps in (0, 1), the triple (A, H, D_eps) is a spectral triple, such that:
> 1. for all eps in (0,1), ||[D_h, a]|| <= ||[D_eps, a]||,
> 2. there exists M > 0 such that for all eps in (0,1), ||[D_v, a]|| <= M eps ||[D_eps, a]||,
> 3. [D_v, b] = 0 for all b in B,
> 4. writing p for the projection onto ker D_v, we assume that [p, b] = 0 for all b in B and [D_h, p] = 0,
> 5. (B, ker D_v, D_B), where D_B := p D_h p, is a metric spectral triple,
> 6. there exists a positive linear map E : A -> B, whose restriction to B is the identity, and a constant k > 0 such that for all a in A: ||a - E(a)|| <= k ||[D_v, a]||, and ||p [D_h, E(a)] p|| = ||[D_h, E(a)]|| <= ||[D_h, a]||.
>
> Then (A, H, D_eps) is a metric spectral triple, and lim_{eps -> 0+} Lambda_spec((A, H, D_eps), (B, ker D_v, D_B)) = 0.

"0 is isolated in Sp(D)" is a typo for Sp(D_v). The proof uses a gap delta with Sp(D_v) ∩ (-delta, delta) = {0}. The typo is present in v1, in v3 and in the introduction.

**Structure of the proof.**
- The quantum-metric tunnel is A ⊕ B with seminorm max{L_eps(a), L_B(b), ||a - b||/(k M eps)}, and its extent is at most k M eps.
- The module tunnel is H ⊕ ker D_v with norm max{DN_eps(xi), DN_B(eta), ||p xi - eta||/K_eps}. Here K_eps = max{k M eps, 4 sqrt(2 eps/delta)}, and the 4 sqrt(2 eps/delta) comes from a Fourier estimate (Lemma 3.3).
- Separation is controlled through exp(i t D_eps) p = exp(i t p D_h p) (Lemma 3.1), uniformly in t.
- The resulting bound is Lambda_spec <= alpha_eps + K_eps = O(sqrt(eps/delta)).

### 1.3 Meaning of "spectral continuity" (Corollary 3.5 [v1: 2.7])

> **Corollary 3.5.** Under the same hypothesis as in Theorem 3.4, for any f in C_b(R), and for any sequence (eps_n) in (0, infinity) converging to 0, we have lim_n Lambda_op(f(D_{eps_n}), f(D_B)) = 0, and in particular, Sp(D_B) = {lim_n lambda_n : (lambda_n) convergent with lambda_n in Sp(D_{eps_n}) for all n}.

The corollary has two parts.
- The bounded continuous functional calculus converges in Latrémolière's operational propinquity, a metric between operators on different metrical C*-correspondences.
- The spectra converge as sets. The statement holds for every sequence eps_n -> 0, so applying it to subsequences gives Kuratowski convergence of Sp(D_{eps_n}) to Sp(D_B).

Multiplicities and eigenvectors are not addressed. The corollary is a direct citation of Latrémolière, Math. Ann. 2024.

### 1.4 Applications

| result (v3 [v1]) | data | limit | anticommutation of D_h and D_v |
|---|---|---|---|
| Corollary 4.1 [3.1] | D_h = 0, D_v = D, B = C | (C, ker D, 0) | trivial |
| Theorem 4.6 [4.5] | (A, H, D) even with grading gamma, (B', J, S) metric, one of them Abelian; D_eps = D x 1 + (1/eps) gamma x S | (A, H x ker S, D x 1) | yes (gamma anticommutes with D) |
| Corollary 4.7 [4.6] | odd version via two Clifford generators gamma_1, gamma_2 on E | (A, H x ker S x E, D x 1 x gamma_1) | yes |
| Theorem 5.5 [5.5] | Schwieger-Wagner triple on a free action of compact Lie G on A, B = A^G; D_v = sum_j d_j x gamma_j, D_h = (...) x gamma_0 | (B, H_B x H_spin, D_B x gamma_0) | yes (Remark 5.1) |
| Corollaries 5.6, 5.7 | B x_alpha Z^d with equicontinuous alpha; quantum 4-torus collapsing to a quantum 2-torus | as in 5.5 | yes |
| Theorem 6.3 [6.3] | M -> N a principal U(1)-bundle (projectable spin structure, constant fibre length, dim N even); D_eps = (1/l_eps) D_v + D_h | (C(N), L^2(Sigma N), D_N) | yes (Ammann-Bär) |

## 2. Section 4 and Corollary 4.1: the shape of the limit

> **Corollary 4.1** [v1: 3.1]. If (A, H, D) is a metric spectral triple with 0 in Sp(D), then lim_{eps -> 0} Lambda_spec((A, H, (1/eps) D), (C, ker D, 0)) = 0.

The proof takes D_h = 0, D_v = D, B = C and E = mu, a state, and uses ||a - mu(a)|| <= diam ||[D, a]||. The paper follows it with this remark:

> If 0 is not in Sp(D), then there is no bounded sequence (lambda_n) with lambda_n in n Sp(D) [...] So by Corollary 3.5, it is not possible for (A, H, n D), and even less (A, H, (1/eps) D), to converge to anything for the spectral propinquity.

**The limit object.** The limit is a point (algebra C, state space a single point) with Hilbert space ker D, which is finite-dimensional because D has compact resolvent, and with zero Dirac operator. Before the corollary the paper puts it this way: "(C, C^n, 0) [...] arise naturally as limits [...] of arbitrary metric spectral triples collapsed to a point. Moreover, in that case, n is the dimension of the space of harmonic spinors." This corollary does not depend on the defect in Section 3.1 below, since D_h = 0. A direct proof is short:
- the quantum-metric extent is at most eps diam(A, D);
- by the spectral theorem, ||xi - p xi|| <= ||D xi||/delta = eps ||(1/eps) D xi||/delta;
- so Lambda_spec = O(eps).

**The product case** (Theorem 4.6). The limit is (A, H x ker S, D x 1), i.e. the base triple with multiplicity dim ker S and no internal Dirac operator. The internal factor survives only as the multiplicity space ker S.

**Can a nontrivial finite part survive?**
- **Finite algebra.** No. The limit algebra is always B ⊆ A, acting on ker D_v, so the finite part never carries an algebra of its own.
- **Finite Dirac operator.** Possibly yes. The limit operator is p D_h p, and it can have a nonzero finite piece when D_h contains a bounded term that commutes with A, preserves ker D_v and anticommutes with D_v. Example (ours, not in the paper):
  - Take A = C(S^1), H = L^2(S^1) x C^2 x C^k, D_v = -i d/dtheta x sigma_1 x 1 and D_h = 1 x sigma_2 x Phi with Phi = Phi* a k x k matrix.
  - All six hypotheses hold with B = C and E(f) = (1/2pi) integral of f, and D_h anticommutes with D_v.
  - The limit is (C, C^2 x C^k, sigma_2 x Phi), a finite spectral triple over C with spectrum ±Sp(Phi).
  - The paper contains no example with p D_h p != 0 and B = C.

## 3. Skeptical reading

### 3.1 Theorem 3.4 is missing a hypothesis

**Counterexample R1.**
- Let H have orthonormal basis e_0, e_1, e_2, ..., and let A = B = C act by scalars.
- Set D_v e_n = n e_n and D_h e_n = -n^2 e_n for n >= 0. Then D_eps e_n = (n/eps - n^2) e_n, which has compact resolvent for every eps.
- D_v has spectral gap 1 at 0, and D = D_1 has Sp(D) ∩ (-2, 2) = {0}. The projection p onto ker D_v = C e_0 commutes with D_h.
- Hypotheses (1)-(6) hold trivially, since commutators with scalars vanish and E = id. (C, C e_0, 0) is a metric spectral triple.
- Theorem 3.4 and Corollary 3.5 would therefore give Sp(D_B) = {0}.
- Fix x > 0 and let eps_n = 1/(n + x/n) -> 0. Then D_{eps_n} e_n = x e_n, so the constant sequence x lies in Sp(D_{eps_n}), and Corollary 3.5 would put x in Sp(D_B) = {0}.

Corollary 3.5 follows from Theorem 3.4 through Latrémolière's published continuity theorem, so the conclusion of Theorem 3.4 fails for this family.

**The failing step** is equation (main-eq-1) in the proof (v3 only):

    ||xi - p xi|| <= 4 sqrt(2 eps/delta) (||xi|| + ||(1/eps) D_v xi||) <= 4 sqrt(2 eps/delta) DN_eps(xi).

The second inequality needs ||(1/eps) D_v xi|| <= ||D_eps xi||, which is neither assumed nor proved. For xi = e_n at eps = eps_n, the left-hand side is 1 while the right-hand side is 4 sqrt(2 eps_n)(1 + x) -> 0.

**Repair.** Add the hypothesis that D_h and D_v anticommute on a common core. Then ||D_eps xi||^2 = ||D_h xi||^2 + eps^{-2} ||D_v xi||^2. A relative bound ||D_v xi|| <= C eps (||xi|| + ||D_eps xi||) also suffices. With anticommutation, the spectral theorem gives ||xi - p xi|| <= ||D_v xi||/delta <= (eps/delta) ||D_eps xi||; with the relative bound it gives ||xi - p xi|| <= (C eps/delta)(||xi|| + ||D_eps xi||). (The estimate for the relative bound is corrected on 3 Nov 2026, as Astra 6 noted.) Either one makes the Fourier Lemma 3.3 unnecessary and improves the rate from O(sqrt(eps)) to O(eps).

All applications in Section 1.4 satisfy anticommutation, so they are not affected by this defect. Theorem 3.4 itself, as printed in both arXiv versions and in the journal (Section 3.6), may not be cited without the extra hypothesis.

### 3.2 Other points in Section 3

- **Lemma 3.1** [2.1]. v3 added the hypothesis "D and D + S both have discrete spectra". The lemma is applied with D = D_h, and the paper itself says D_h has no compact resolvent in Section 5. The conclusion holds without discreteness: pH reduces both operators, and D_eps p = D_h p. So the proof is fixable and the statement is fine.
- **Inner Leibniz.** Definition 2.13 is ill-typed: it applies L to the non-self-adjoint inner product and names L_A where L_B is meant (the journal text corrects L_A to L_B and keeps the rest). Latrémolière's own definition (arXiv:1811.10843) bounds the real and imaginary parts. Noticed by the referee of lemma 15; the proofs are unaffected.
- **Time window.** The proof concludes with separation over 0 <= t <= M_eps where 1/M_eps is meant. The estimate is uniform in t, so this is harmless. "1/t-covariant reach" is leftover terminology from Latrémolière 2022.
- **Hypotheses that are strong or hard to verify in examples.**
  - (4) requires D_h to preserve ker D_v exactly. A mass or Yukawa term that mixes zero modes with excited modes violates it.
  - The exact kernel with a fixed gap excludes near-zero modes.
  - The fixed D_h excludes horizontal operators that change with eps: the Ammann-Bär term V_eps, curvature terms, non-constant fibre length.
  - (6) requires the horizontal derivative of base elements to be seen entirely on ker D_v.
  - (2) is automatic in Clifford-graded constructions and otherwise needs an argument.

### 3.3 Sections 4-6: sketched or delegated steps, and asserted examples

- **Theorem 4.6.** The check of hypothesis (6) is garbled; it bounds |phi x psi(c - E(c))| by "mk_D(phi, phi) + eps mk_S(psi, mu)". The needed bound ||c - E(c)|| <= diam(B', S) ||[1 x S, c]|| follows from Lemma 4.4. The statement writes "gamma x S" for gamma ⊗ S.
- **Section 5.** The spectral triple, its compact resolvent and the two sup-bounded commutator conditions are taken from Schwieger-Wagner (Adv. Math. 396 (2022)). Its representation is "a technical matter to check" (Section 5.3).
  - Lemma 5.2 uses ||[D, alpha^g(a)]|| = ||[D, a]|| for D in {D_h, D_v, D_A}.
  - For D_v = sum_j d_{e_j} x gamma_j this needs u^g D_v u^{g^-1} to be unitarily equivalent to D_v by a unitary commuting with A.
  - Such a unitary exists when the inner product on the Lie algebra of G is Ad-invariant, but the paper fixes only "some inner product" (a left-invariant metric).
  - All worked examples are tori, where the issue is absent. We have not checked Schwieger-Wagner's conventions to see whether they impose Ad-invariance.
- **Section 6, Theorem 6.3.**
  - (a) The theorem concerns D_eps = (1/l_eps) D_v + D_h. The Dirac operator of the shrunk metric is D_{M_eps} = D_eps + V_eps. The bounded term V_eps tends to 0 under the Ammann-Bär condition, but the passage to D_{M_eps} is not made (the abstract says "a bounded variation").
  - (b) The verification of the hypotheses is sketched and contains errors. Item (0) checks that 0 is isolated in Sp(D_eps) instead of Sp(D_v), and argues self-adjointness from "one of them being bounded", although both summands are unbounded. Item (1) cites the Fourier Lemma 3.3, which is irrelevant, and then Proposition 3.6, whose hypotheses (constant anticommuting unitaries commuting with the D_j) do not literally cover local Clifford frames. Item (2) "proves" [D_v, b] = 0 by displaying [D'_{h,k}, b] = 0, which is false for nonconstant b (it is Clifford multiplication by grad b). Item (3) cites an unrefereed web note (Orduz). Item (5) is delegated ("Verified in the same way as in the proof of Theorem 5.5"), and its displayed inequalities swap D_h and D_v.
  - The conclusions are correct classically, by pointwise Clifford anticommutation and fibre averaging, but the written proof does not establish them.
  - (c) Odd dim N is asserted "mutatis mutandi", and non-constant fibre length is left "to the interested reader".
- **Asserted examples.** The introduction of v1, of v3 and of the journal text lists "homogeneous spaces of compact Lie groups" (the abstract does not; an earlier version of this line said it did). The corresponding passage is commented out in both sources, so no such result is proved.

### 3.4 Dependencies

The proofs rest on published work:
- Latrémolière, Adv. Math. 404 (2022) and Math. Ann. 389 (2024);
- Farsi-Latrémolière-Packer, Adv. Math. (Paper No. 109442);
- Rieffel 1998, 1999, 2005;
- Schwieger-Wagner, Adv. Math. 396 (2022);
- Ammann 1999 and Ammann-Bär 1998.

No step relies on an unpublished or forthcoming result of the same authors. The preprints Schwieger-Wagner arXiv:2406.08145, Kaad arXiv:2410.03475 and Mesland-Rennie are cited for context only. One proof step (Theorem 6.3, item (3)) cites the web note by Orduz.

### 3.5 Changes from v1 to v3

v2 and v3 have identical sources. The arXiv comment says: restructured, introduction split, "Section 2 results were cleaned up and some statements corrected", references changed. From the diff:

- **Restructuring.** The background moved from the introduction into a new Section 2. Numbering shifts:
  - main theorem 2.5 -> 3.4;
  - spectral corollary 2.7 -> 3.5;
  - "Collapsing to a point", a separate section in v1 (Corollary 3.1), became subsection 4.1 (Corollary 4.1);
  - product theorem 4.5 -> 4.6;
  - comparison Lemma 2.4 -> Proposition 3.6.
  - Sections 5 and 6 keep their numbers.
- **Theorem 3.4.**
  - The statement is unchanged in substance: the same six hypotheses and the same Sp(D) typo.
  - v1's Remark 2.6 on domains ("Dom D = Dom D_h ∩ Dom D_v") was removed.
  - In the proof, v1's (main-eq-1), ||xi - p xi|| <= 4 sqrt(2 eps/delta), had no norm of xi on the right. v3 added (||xi|| + ||(1/eps) D_v xi||) <= DN_eps(xi), which makes the missing step of Section 3.1 explicit without justifying it.
  - v3 added the argument that p commutes with D_eps, so that DN_B(p xi) <= DN_eps(xi).
  - v3 corrected the circular "M_eps := alpha_eps + M_eps" to alpha_eps + K_eps.
- **Lemma 3.1.** The discrete-spectra hypothesis was added; v1's proof had silently used compact resolvent.
- **Corollary 3.5.** The stray notation D_{x,eps_n} was corrected to D_{eps_n}.
- **Lemma 4.4** [4.3]. v1's proof argued that psi([S, b_j]) = 0 for an extended state, which fails for non-self-adjoint b_j. v3 replaced it with an argument using the grading. The roles of phi and psi in the statement were corrected.
- **Section 5.** Conjugate representations were corrected (Phi_sigma : Gamma_A(sigma) x conj(V_sigma) -> A(conj sigma)), with a footnote reporting a typo in Schwieger-Wagner Eq. (16). Lemma 5.2 was extended to the L^1 bound for all three operators.
- **Section 6.** v1's Lemma 6.4 was folded into the proof with its errors unchanged. v1's Remark 6.5, which claimed the method covers Roos's weaker collapse condition, is commented out in v3. That claim has been withdrawn.
- The abstract was rewritten and references were added.

### 3.6 Published version

The arXiv record carries the journal reference, and an announcement page lists the paper as accepted. v2/v3 (Oct 2025) is therefore probably the accepted text. We could not see the journal version, so whether the hypothesis missing from Theorem 3.4 was added in print is unknown.

**Update (3 Nov 2026).** The journal text (J. London Math. Soc. (2) 114 (2026) e70628, first published 3 July 2026) has now been read, and the hypothesis was not added. We compared its prose word by word with the v3 source (Python) and read the following statements directly: Theorem 3.4, the step (main-eq-1), the constant K_eps, Corollaries 3.5 and 4.1, and the remark after 4.1. In those statements and in the prose, the differences are copy-editing: macros written out, step headings in the proof of Theorem 3.4, and L_A corrected to L_B in Definition 2.13. Astra 6 compared the main statements of Sections 3 to 6 and found no further change ([validation](2026-11-03_astra_validation_corrections.md), item 4); other equations were not compared. The printed Theorem 3.4 has the same six hypotheses and the same typo "0 is isolated in Sp(D)". The step of Section 3.1 is printed as equation (3.11). So Counterexample R1 applies to the printed statement, and the conclusions above on v3 carry over to the statements compared. Anticommutation and the relative bound are sufficient repairs, as Terra 6.1 and Astra 6 both note; the anticommuting applications avoid this defect. Astra 6 also notes that Theorem 4.6 and Corollary 4.7 need a nonzero vertical kernel for the displayed target to be a spectral triple, in v3 and in print.

## 4. Relevance to lemma 09 and STRATEGY T0

### 4.1 Our interval as a metric spectral triple

**The framework's prerequisites hold.** T_l = (C([0,l]), L^2([0,l]; C^2), D_M), with condition (c), is a metric spectral triple:
- the boundary conditions sit in Dom D_M, and multiplication by C^1 functions preserves them;
- the mass term M sigma_1 commutes with C([0,l]), so ||[D_M, f]|| = ||f'||_inf and Connes' distance is |x - y|;
- compact resolvent is Lemma 9.1.

**What the framework does not see.** T_l is even with grading Gamma, but the spectral propinquity ignores Gamma. No chirality statement (Theorem 9.2, P_0 Gamma P_0 = sigma_3 in Theorem 9.6) is visible to it, and neither is a real structure or a KO-dimension.

**Boundary identity.** Write D_M = D_0 + M sigma_1 with D_0 the massless operator. For psi = (L, R) in Dom under condition (c):

    ||D_M psi||^2 = ||D_0 psi||^2 + M^2 ||psi||^2 + M (|R(l)|^2 + |L(0)|^2),

since 2 Re <D_0 psi, sigma_1 psi> = [|R|^2]_0^l - [|L|^2]_0^l. After the dilation x = l y, D_M = (1/l) D_0^{[0,1]} + M sigma_1. This is the paper's form with eps = l, D_v = D_0 and D_h = M sigma_1. The anticommutator {D_0, sigma_1} vanishes in the interior, and its quadratic form is the boundary term above. So the hypothesis missing from Theorem 3.4 fails for our interval exactly by the term that creates the wall modes:
- For M = -mu the term is negative, and Theorem 9.4.1 gives one eigenvalue below mu.
- For M = +mu the identity gives ||D_M psi||^2 >= ((pi/(2l))^2 + mu^2) ||psi||^2. This is a one-line proof of the bound in Theorem 9.4.3.

### 4.2 Corollary 9.10 (fixed mu, l -> 0)

In dilated form this is the paper's setting with D_v = D_0 under condition (c). Hypothesis 0 in Sp(D_v) fails, because ker D_0 = 0 (Theorem 9.2(c)).
- D_l is a bounded perturbation, of norm mu, of (1/l) D_0, so every eigenvalue diverges.
- The remark after Corollary 4.1, together with Corollary 3.5, then excludes any limit in the spectral propinquity (apart from a degenerate triple on the zero Hilbert space).

This agrees with Corollary 9.10. **The paper covers it** only in this indirect sense: its remark treats pure rescalings, and the bounded-perturbation step is ours.

### 4.3 Theorem 9.9 (mu(l) tuned, l -> 0)

Here D_l = (1/l)(D_0 - c(l) sigma_1) with c(l) = mu(l) l -> infinity. In the paper's form D_h(l) = -mu(l) sigma_1 has norm mu(l) ~ log(1/l)/l -> infinity, and D_v = D_0 has no kernel. Three hypotheses of Theorem 3.4 fail: a fixed D_h, an exact kernel of D_v, and anticommutation. **The paper says nothing about this family**; this confirms the earlier note in LITERATURE.md. Its method does adapt:

**Lemma R2 (ours, proof sketch; to be written out and refereed).**
- **Statement.** Let P_l project onto the light pair ±m_f of Theorem 9.9, and let W : P_l H -> C^2 be the coordinates in the basis (u_L, u_R) of Theorem 9.6. Then Lambda_spec(T_l, (C, C^2, m_f sigma_1)) <= 2l for small l.
- **Quantum-metric tunnel.** Take C([0,l]) ⊕ C with seminorm max{||f'||_inf, ||f - z||/l}. Its extent is at most l, since Connes' metric of D_l is the Euclidean one.
- **Module tunnel.** Take H ⊕ C^2 with norm max{DN_l(xi), DN(eta), ||W xi - eta||/l}.
- **Key estimates.**
  - P_l is a spectral projection of D_l, and the next eigenvalue satisfies lambda_1(l) >= sqrt(mu^2 + (pi/l)^2) >= pi/l. Hence ||xi - P_l xi|| <= ||D_l xi||/lambda_1 <= l ||D_l xi||/pi, and exp(i t D_l) P_l = W* exp(i t m_f sigma_1) W for all t.
  - The modular Leibniz inequality needs no commutation of P_l with C([0,l]), because the limit algebra acts by scalars: ||W((f - z) xi)|| <= ||f - z|| ||xi||.
  - Inner Leibniz and separation follow as in the paper's proof, uniformly in t.
- **Consequences.**
  - Theorem 9.9 becomes a spectral-propinquity limit with rate O(l): the light sector survives as a finite triple over C with D_F = m_f sigma_1.
  - The limit algebra is C. The two-point algebra C ⊕ C of Theorem 9.6 is the range of the compression f -> P_l f P_l, and the limit object does not contain it.
  - |diam_A - diam_B| <= 2 Lambda for any tunnel. The Connes-Lott triple (C ⊕ C, C^2, m_f sigma_1) has diameter 1/m_f, and (C, C^2, m_f sigma_1) has diameter 0. Hence Lambda_spec(T_l, Connes-Lott(m_f)) >= 1/(2 m_f) - 2l.
  - So in this metric the tuned interval converges to a point carrying a two-dimensional massive Dirac block, and it stays at a fixed positive distance from the Connes-Lott triple.
- **Wording consequence for lemma 09.** The sentence "the light pair stays Connes-Lott with mass m_f, while the interval collapses to a point" in Theorem 9.9 is correct as a statement about the compression at each l. It should not be read as convergence to the Connes-Lott triple.

### 4.4 Theorem 9.8 (l -> infinity at fixed mu)

**Outside the paper's scope.** The propinquity concerns compact quantum metric spaces. The diameter l diverges, and |diam_A - diam_B| <= 2 Lambda rules out any limit. Decompactification would need a pointed or locally compact version of the metric, and we did not check whether one exists in Latrémolière's work.

### 4.5 As the convergence notion for T0

**Correction (3 Nov 2026).** The conclusions of this subsection on what T0 "needs" overread the metric; see [the assessment of the T0 note](2026-11-03_t0_note_assessment.md). Lemmas R2 and R3 are written out in [lemma 15](../lemmas/15_propinquity_collapse.md), which also corrects the lower bound of R2 (the cap sqrt(2)/2 of the metric was omitted, and the bound improves to (1/m_f - l)/2). The original text follows as a record.

**What it offers.**
- A genuine metric on metric spectral triples, with distance zero exactly at unitary equivalence.
- Convergence of the bounded functional calculus, and Kuratowski convergence of spectra.
- Corollary 4.1, Theorem 4.6 and Lemma R2 show it handles towerless limits whose finite part is a multiplicity space carrying a finite Dirac block over the base algebra.
- Latrémolière, arXiv:2603.19128 (Mar 2026; abstract only read), proves spectral-propinquity continuity for almost-commutative manifolds M x F as the metric and D_F vary. It is the nearest existing treatment of M x F in this metric.

**What it cannot do for T0.**

**Lemma R3 (ours, proof sketch).**
- **Statement.** If commutative quantum compact metric spaces (A_n, L_n) converge in the propinquity to (A, L), with Leibniz tunnels as in Definition 2.7, then A is commutative.
- **Proof sketch.**
  - Let a_1, a_2 be self-adjoint with finite L. Take a tunnel (D, L_D, pi_A, pi_n) of extent chi_n -> 0, and lifts d_i with pi_A(d_i) = a_i and L_D(d_i) <= L(a_i) + 1.
  - For self-adjoint e in D, every state of A pulls back to within chi_n of a state of A_n. Hence ||pi_A(e)|| <= ||pi_n(e)|| + chi_n L_D(e), and similarly ||d_i|| <= ||a_i|| + chi_n L_D(d_i).
  - Apply this to the Lie product e = (d_1 d_2 - d_2 d_1)/2i. Then pi_n(e) = 0 because A_n is commutative, and L_D(e) <= L_D(d_1) ||d_2|| + ||d_1|| L_D(d_2) by the Leibniz rule.
  - So ||[a_1, a_2]|| <= C chi_n -> 0. Self-adjoint Lipschitz elements are dense, so A is commutative.
- **Consequence.** The spectral propinquity dominates the propinquity, so every spectral-propinquity limit of commutative triples has a commutative algebra.

**Implications for the T0 family** (C^infinity(K_l), L^2(S x E_l), D_l, J_l, gamma_l):
- (a) Its limits in this metric can never carry a noncommutative A_F.
- (b) With K_l connected and D_l of Dirac type (Clifford symbol plus a zero-order endomorphism), Connes' metric on points is the Riemannian distance. A collapse of K_l therefore yields the base algebra alone, and the finite part appears as (C, H_F, D_F) tensored over the base. Several sheets (C^k) need disconnected K_l or a non-local D_l.
- (c) Gamma and J are not part of the data. KO-dimension and chirality would need an extension of the metric, for instance by adding gamma and J to the families whose separation is measured. We found no such extension in this paper.
- (d) Noncommutative limits do occur in Section 5, but only when the parent algebra is already noncommutative (the limit is its fixed-point algebra), as in Corollary 5.7.

So spectral propinquity can serve T0 for spectral and metric convergence of the Dirac data. Producing the finite algebra needs another mechanism: compressions or operator systems (Connes-van Suijlekom truncations, STRATEGY T6), or a noncommutative parent algebra.

## Verdict

**We may cite the paper for:**
- the framework of vertical collapse in the spectral propinquity (Sections 2-3, as a notion);
- Corollary 4.1: a fixed metric spectral triple scaled by 1/eps converges to (C, ker D, 0), and to nothing when ker D = 0. This is sound and independent of the defect below; it supports Corollary 9.10 in the indirect sense of Section 4.2;
- Theorems 4.6 and 5.5 (for tori) as statements in their anticommuting settings;
- Theorem 6.3 as a statement about D_h + D_v/l_eps, with the caveats of Section 3.3.

For spectral continuity we should cite Latrémolière, Math. Ann. 389 (2024), directly.

**We may not cite it for:**
- Theorem 3.4 in its printed generality, since it needs anticommutation of D_h and D_v or a relative bound (Counterexample R1);
- anything about Theorem 9.9, which lies outside all its hypotheses;
- l -> infinity (Theorem 9.8);
- grading, chirality, real structure or KO-dimension;
- Connes-Lott (or any noncommutative finite triple) as a limit;
- homogeneous spaces of compact Lie groups;
- the actual Dirac operator of the shrunk U(1)-bundle metric.

**Open doubts.**
- We have not seen the published version, which may have repaired Theorem 3.4. *(Answered on 3 Nov 2026: the published version keeps it; see Section 3.6.)*
- Lemma R2 (tuned interval -> (C, C^2, m_f sigma_1), at distance at least 1/(2 m_f) - 2l from Connes-Lott) and Lemma R3 (commutative limits are commutative) are our sketches. Both are short, and both bear directly on lemma 09 and on T0, so they should be written out and refereed before use.
- The G-invariance step in Lemma 5.2 for nonabelian G is unverified.

---

**Note added on 4 November 2026 (Claude Fable 5.1).** The main paper now states Counterexample R1 in its own text, by the rule that an obscure reference cannot carry a step of the argument. To avoid a second obscure source (the Corollary 3.5 route rests on Latrémolière, Math. Ann. 389 (2024)), the paper reaches the contradiction through the converse of Proposition G, Theorem 15.7 of lemma 15 (refereed by Terra 6.1): along epsilon_n = 1/(n + x/n) the eigenvalues 0 and x of D_epsilon stay bounded, and a limit (C, C e_0, 0) would need one eigenvalue near 0 with a diverging gap. This step was written by Claude Opus 5.5 and read by Claude Fable 5.1; no referee has checked this route, as distinct from R1 itself.
