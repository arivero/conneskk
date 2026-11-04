You are an independent mathematical referee. Work ALONE: do not spawn subagents and do not delegate. Follow AGENTS.md in the repository root. The repository is read-only for you. You may run Python in memory, and you may run `python3 tools/lemma28_radial.py` (add the argument `tables` for the slow part, about five minutes). If you compute, name the language and say what was computed. A computation never replaces a proof.

File under review: lemmas/28_two_walls_connected_parent.md. The report of Astra 6 is in historical/reviews/2026-11-03_astra_job_28.md; do not repeat that referee on its proofs, except where asked below. Authors of what is under review here: Claude Opus 5.5, for Proposition 28.13, Result 28.5 and the script tools/lemma28_radial.py.

Check these items, and for each answer Correct, Correct with amendment, or Error, with the reason.

1. The slice operator in the script. A previous version had the opposite sign of the spin connection, so test this independently: with Hermitian Clifford generators, is nabla = E - (1/4) Gamma_ijk c_j c_k right, with Gamma_ijk = <nabla_i e_j, e_k> from the Koszul formula for the reductive frame E_i = e_i/scale_i, with the H part of the brackets dropped? Is the derivative term -F V_i correct for the sections s_v(g) = F lambda(g)^-1 v? Is the pull-back connection term of E, with its sign relative to the spin part, correct? Is the radial form T = i Z d/dx + D_6(rho) + i phi tau correct, with the half-density absorbed so that no extra rho'/rho or h'/h term remains, given the metric of Theorem 28.9? State exactly what would change for a connection metric whose horizontal scale h(x) is not constant.

2. The tests: are {A_0, A_1} = 0, the Casimir formula D^2 = Cas_G(V) + 3/2 - Cas_K(tau) on S^4, and j(j + 4) for (0,0)-forms in O(1) at rho = 1 the right exact statements, and do they suffice to fix the sign and the normalization of each of A_0, A_1 and A_2? Identify the Fubini-Study radius for S^4 of radius 1, and confirm or refute rho = 1, with the nearly Kahler radius. If A_2 is not fixed by these tests, give a test that fixes it, and run it.

3. Proposition 28.13: the matrix A(rho), its kernel, the support statements, the formula w(rho) = 2(rho^2+2)^2/(9+2(rho^2+2)^2), the statements for the connection preserving the line summands, and whether the compression with the factors of Lemma 28.12 is the correct leading large-mass operator, including the sign conventions of the stable channels. Derive the entries of A by hand if possible. Say whether a first-order correction changes the limit at fixed rho.

4. Result 28.5: rerun what you can, and check the reading of each table: the exponent statement, kappa = phi/2 - 2/rho + O(1/phi); the claim of a discretization floor; the statement on the core density at finite mass and its order lambda^2, with its use of Proposition 28.16; and the statements on the other representations, including the identification of core values.

5. The header "Correction" paragraph and the "Outcome" paragraph: is each sentence accurate in its scope, and does the file anywhere claim more than is proved? Check Conjecture 28.6 as restated, and its compatibility with Counterexample 28.17.

6. The direction paragraph: on the concentration literature (Prokhorenkov-Richardson; Maridakis, arXiv:1510.07004, arXiv:2110.11654), is the operator D + i M Phi of this file a concentrating pair in that sense, and what would be needed to add the wall? Read arXiv LaTeX source first, arxiv.org/html next, and the PDF last. State what you read and what you did not.

Use "we" and "Let", and the established vocabulary (Theorem, Lemma, Proposition, Counterexample, No-go theorem, Conjecture, gap, error in the proof). Give a one-line count at the start: errors, amendments, correct.
