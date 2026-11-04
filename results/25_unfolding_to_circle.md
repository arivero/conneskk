# Unfolded, the interval parent is -i d/dx (x) 1 + 1 (x) D_F on a circle of length 2l, so its tower is D_F shifted by the momenta n pi/l, D_F is a constant connection, and an even generator constant in the transported frame becomes 1 (x) T

**Status.** Proposition (Proposition 25.1). Proved by Claude Opus 5.5; checked by Claude Opus 5.5 in Python (the level blocks of the interval against the shifted spectrum) and by Terra 6.1 by hand, effort max, whose report on lemma 25 found two errors and two gaps as first written, all corrected (historical/reviews/2026-11-03_terra_check_25.md). Ledger row `l25_unfold` (depending on `l22_window`). Stated before Theorem 9 of paper/boundary_condition_note.tex; the Wilson-line form is cited in paper/connes_kk_dictionary_note.tex ("the periodic circle of \supp{25}").

**Setting.** D_X = E d/dx is the parent of lemma 22, and D_0 + E Gamma_F D_F its form after the transport of Corollary 22.2, with D_0 the operator at X = 0. On the circle x in [-l, l] with periodic conditions, for psi in the domain of D_0, put Psi_Q(x) = Q_L(|x|) + i sgn(x) Q_R(|x|) and Psi_U(x) = U_R(|x|) - i sgn(x) U_L(|x|).

**Statement.**

1. After multiplication by 1/sqrt(2), psi -> (Psi_Q, Psi_U) is a unitary from the parent Hilbert space onto L^2(circle) (x) (H_+ (+) H_-); it maps the H^1 domain of D_0 onto the periodic H^1 domain and carries D_0 + E Gamma_F D_F to -i d/dx (x) 1 + 1 (x) D_F.
2. The signed spectrum is k_n + mu_i, with k_n = n pi/l, n in Z, and mu_i the eigenvalues of D_F. This gives a one-line proof of the spectrum in Theorem 22.1.
3. An even operator T = T_Q (+) T_U on H_F, constant in x in the transported frame and acting identically on both spin components, is carried to 1 (x) T.
4. D_F is a constant connection on the circle, with holonomy exp(2 i l D_F) up to the convention for parallel transport, and the two walls are the fixed points of the reflection that carries D_F to -D_F. With U = exp(-i pi Gamma_0/4), the identity of lemma 23 reads Gamma_1 Gamma_0 = exp(2 l Gamma_0 D_F) = U exp(2 i l D_F) U\*.

*Scope.* This is the usual orbifold description of an interval as a circle with a reflection. A generator constant after transport is R(x) T R(x)\* in the original frame of D_X, which generally varies with x and has an odd bulk component; conversely, a constant generator in the original frame need not preserve the coupled wall if it is broken. So the fields used in this frame need an admissible enlarged gauge algebra, as the prealgebra P of lemma 23, and are generally not fields of the even algebra of lemma 22.

**Proof.** Lemma 25, Proposition 25.1; the proof is there. Since Q_R(0) = Q_R(l) = 0 and U_L(0) = U_L(l) = 0, the functions Psi are continuous and periodic; for x > 0, -i d/dx Psi_Q and -i d/dx Psi_U are the transforms of D_0 psi, and E Gamma_F D_F sends Psi_Q to M\* Psi_U and Psi_U to M Psi_Q.

**What it leaves open.** In this form the exact quadratic kernel of lemma 18 applies termwise over the tower, which is 25_sum_rule_effective_dimension.md.
