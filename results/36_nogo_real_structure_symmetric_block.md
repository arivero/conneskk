# For an antiunitary J exchanging V and V-bar with J^2 = eps and a Hermitian X with J X = eps' X J, the particle-antiparticle block obeys B = eps eps' B^T, so in the labels 9, 10 and 11 a J-compatible operator has no nonzero antisymmetric block within one multiplet

**Status.** No-go theorem in its scope (Proposition 9.3). Proved by Claude Opus 5.5 from linear algebra and Connes's sign table; a proof by Terra 6.1 is written out in the section "Further proofs" of lemma 36. Claude Sonnet 5.5 showed that B ranges over exactly S^2 V for eps eps' = +1. Ledger row `d11_real_structure_diquarks` (depending on `d11_diquark_strings`, `l06_factorization`, `l21_so30` and `d11_wilson_top`). Proposition 9.3 in the section on J-compatible operators of paper/real_structure_note.tex ("\supp{36}"); stated in the section on the real structure of paper/connes_kk_dictionary_note.tex.

**Setting.** E = V + V-bar with V as in 36_diquark_counts_stack_image.md; an antiunitary J on E mapping V onto V-bar and V-bar onto V, with J^2 = eps; a Hermitian X on E with J X = eps' X J, the condition on inner fluctuations in a KO-dimension with signs (eps, eps'); B is the block of X from V-bar to V, an element of V (x) V.

**Statement.**

1. B = eps eps' B^T: B lies in S^2 V if eps eps' = +1 and in Lambda^2 V if eps eps' = -1.
2. In the KO-dimensions 5, 6 and 7 of the finite part for the labels 9, 10 and 11, (eps, eps') = (-1, -1), (+1, +1) and (+1, +1), so the diquark block of every J-compatible fluctuation lies in S^2 V, whose colour antitriplet (Lambda^2 5, 3-bar) has the counts (3, 6, 1), and it cannot carry the counts (6, 6, 3) of lemma 21.
3. For a connection on a circle with complex conjugation as real structure (KO-dimension 1, (eps, eps') = (+1, -1)) the block lies in Lambda^2 V, with the counts (6, 6, 3); the SO(32) Wilson line is of this type.

*Scope.* Hermitian J-compatible operators between one multiplet and its conjugate, with the stated signs. The signs permit all of S^2 V, and the algebra, grading and order conditions of a triple select a subspace; with D = 0 every inner one-form vanishes. Item 2 is the finite form of the symmetry of a Majorana mass matrix and of the Fermi-statistics constraint on a Lorentz-scalar bilinear of one Weyl multiplet without derivatives.

*Escapes, as the lemma states them.* Connection components along a circle or an interval (item 3); blocks between two distinct multiplets, which J relates only by B_21 = eps eps' B_12^T; derivative couplings; other real structures or signs.

**Proof.** Lemma 36, Proposition 9.3, and the section "Further proofs" there: with J(v, w) = (eps K^{-1} w, K v) and X = [[A, B], [B\*, D]], the V -> V component of J X = eps' X J gives eps K^{-1} B\* = eps' B K, so B = eps eps' B^T in coordinates where K is conjugation.

**What it leaves open.** The result points to the interval parent of lemma 22 and its gauge field: the interval component of an so(30) connection carries Lambda^2 V (38_interval_connection_so30.md), and its massless scalars need conditions at the walls (38_interval_scalar_zero_modes.md). Whether the (15, 3-bar) of the EPJC paper can be read as bilinears of two distinct multiplets is open.
