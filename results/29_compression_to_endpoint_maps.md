# On the eight-state window, the compression of a C^1 function on the disc bundle converges to the pair of endpoint maps (Q_B(a|_{S^4}), Q_Y(a|_{CP^3})) with error O(M^{-1/2}), and at rho = 1 real functions generate M_2(H) + M_4(C) under the limit map

**Status.** Theorem (Theorem 29.9). Proved by Claude Opus 5.5. Ledger row `l29_compression` (depending on `l29_window_b`, `l28_compression` and `l28_endpoints`). Theorem 4 of paper/joint_limit_note.tex; cited in the section on the algebra of paper/connes_kk_dictionary_note.tex.

**Setting.** The window of Theorem 29.7 (case (b)) or Theorem 29.11 (case (a) at rho = 1, or at radius rho under K(rho)), with equivariant unitary identifications of the window spaces with the model copies of the 4; a in C^1(X).

**Statement.**

1. ||Q_M(a) - (Q_B(a|_{S^4}) (+) Q_Y(a|_{CP^3}))|| <= C ||a||_{C^1} M^{-1/2}.
2. Q_B(a) = int a(x) 2 P_x d mu(x), with P_x = (1 - x . Gamma)/2.
3. Q_Y(a) = int a(z) B(z) d mu(z). In case (b), B(z) = 4 p_z, the level-one map of Example 16.9. In case (a) at radius rho, B(z) = 2 ((1 + w) p_z + (1 - w) p_{jz}), with p_{jz} the quaternionic partner of p_z, and w the signed imbalance of the two angular weights in the geometric kernel of F^*. Thus Q_Y(x_a) = -Gamma_a/5 and Q_Y(y_T) is w times the level-one value. At rho = 1, w >= 1/7. The explicit formula for w(rho), including w(1) = 2/3, is conditional on the matrix in Proposition 28.13.
4. Restriction to the two ends is surjective (Proposition 28.8), so real functions on X generate M_2(H) + M_4(C) under the limit map, by lemma 10 and Example 16.9, whenever w != 0.

*Scope.* A statement about compression maps: generated algebras at finite mass stay outside it (Counterexample 28.17). The sign in P_x follows from the core support on the (1, 2) summand and the conventions of Proposition 28.4.

**Proof.** Lemma 29, Theorem 29.9; the proof is there. It is Theorem 28.15 with eta_M = O(M^{-1/2}) from Theorems 29.7 and 29.11; the normal first moments are O(M^{-1/2}) at the core, by the Gaussian decay of the model, and O(M^{-1}) at the wall. At the core, F in Hom_K(4, (1, 2) (x) (1, 3)) kills (2, 1), so B = 2 P_x; at the wall the support and channel weights come from the geometric stable kernel.

**What it leaves open.** The quaternionic defect of the core block at finite mass (30_quaternionic_defect.md), the joint limit with the dilation (30_joint_limit_disc_bundle.md), and the connector of Proposition 28.20 and the quaternionic grading of Proposition 28.19, which stay inputs (lemma 29, Scope).
