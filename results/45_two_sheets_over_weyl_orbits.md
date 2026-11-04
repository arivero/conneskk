# The 18-state orientable KO-6 bimodule of the corpus is the two-sheet construction of lemma 16 over the two orbit types of the Weyl crossed product

**Status.** Theorem (Theorem 45.2), with Proposition 45.1 on the fibres of the crossed product. Proved by Claude Fable 5.1 on 4 November 2026, by hand, from Corollary 16.8 (row `l16_two_sheets`, refereed by Terra 6.1) and standard crossed-product facts; no referee has read it (ledger rows `l45_fibres`, `l45_two_sheets`, referee pending). Addresses STRATEGY T16; it proves structurally the corpus rows rs_N18 (the finite quotient) and identifies rs_N6 (the 18-state bimodule).

**Setting.** X = T^6 = A x E with the Weyl group W = S_3 x Z_2 of SU(3) x SU(2) acting, X/W = CP^2 x CP^1; B = C(X) x W. The fixed point x_0 and a three-point orbit O with stabilizer S_2 x Z_2 are the two orbit types used.

**Statement.**

1. (Proposition 45.1) Evaluation at x_0 maps B onto C\*(W) = C^4 + M_2(C) + M_2(C); restriction to O maps B onto C(O) x W = M_3(C\*(S_2 x Z_2)) = M_3(C)^4; selecting the trivial character and the standard representation of S_3 at x_0 and one character of the stabilizer on O gives a surjection B -> C + M_2(C) + M_3(C).
2. (Theorem 45.2) Corollary 16.8 with the sheets V_X = C + C^2 (algebra C + M_2(C), grading diag(1, -1, -1), d_X = D_v) and V_Y = C^3 (algebra M_3(C), d_Y = 0) gives H_F = Hom(V_Y, V_X) + Hom(V_X, V_Y), of dimension 18, with J_F(x, y) = (y^dagger, x^dagger), Gamma_F(x, y) = (G x, -y G) and D_F(x, y) = (D_v x, y D_v): the KO-6 signs, order zero, order one, nonzero one-forms and the real orientability relation Gamma_F = pi(z c) c° with c = (G, 1), z = (1, -1). This is the bimodule of the corpus, section 6.5; its intersection form is skew of rank 2 with kernel (2, 1, 0).

*Hypotheses.* Finite groups and finite orbits; the Dirac operator D_v is an input; the two representations are selected by hand among those of C\*(W) and of the stabilizer.

**Proof.** Lemma 45, Propositions 45.1 and Theorem 45.2; the proofs are there: evaluation at a fixed point respects the covariance relation, Green's imprimitivity gives the orbit fibre, and the data satisfy the hypotheses of Corollary 16.8, whose grading uses the sheet sign and the central difference G of the fixed-point fibre, so no spin lift of the Weyl action enters.

**What it leaves open.** The quaternionic real form H inside M_2(C) (the corpus took it from the binary dihedral lift Dic_3; here it is a choice), a Dirac operator from the geometry in place of D_v (the coupled-window problem of lemma 20 with a discrete group), and a criterion for the selection of the two representations. Poincaré duality fails in the trace form at rank 2, as at every step of lemma 41.
