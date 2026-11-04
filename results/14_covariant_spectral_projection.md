# A gapped spectral projection of the fluctuated interval operator is gauge covariant and carries an induced Grassmannian connection on the light-fermion bundle, and the compressed operator is the Dirac operator of that bundle

**Status.** Theorem (Theorems 1 and 2 of lemma 14). Proved by Astra 6 (job 14); checked by Terra 6.1 by hand, with an amendment to Theorem 1 on the double-coset statement (historical/reviews/2026-11-03_terra_check_08_13_14.md). Ledger row `l14_covariant`. Cited after Proposition F of paper/towerless_intervals.tex ("\supp{14}").

**Setting.** I = [0, l], E = [[0, 1], [-1, 0]], Gamma = diag(1, -1); the vertical operator D_{A_5, M, B} = E (d/dx + i A_5) + [[0, M], [M, 0]] with Hermitian matrix functions A_5 and M and a self-adjoint boundary domain B; gauge transformations act in the same representation on both chiralities. A family smooth in y in the norm-resolvent sense, after local identification of domains, whose selected light cluster is separated from the rest of the spectrum and contains complete eigenspaces; P_A(y) its spectral projection. On a closed Riemannian spin four-manifold, D_A = -i gamma^mu (nabla_mu^S + d_mu + i A_mu) + gamma_5 D_{I,A_5}.

**Statement.**

1. (Theorem 1) P_{A^g} = G_g P_A G_g^dagger, provided the transformation includes A_5^g = g A_5 g^dagger + i (dg/dx) g^dagger, M^g = g M g^dagger and B^g = G_g B.
2. With transport dW/dx = -i A_5 W, W(0) = 1, the vertical spectrum is determined by W^dagger M W and W^dagger B. For a gauge-invariant bulk mass and R(0) = 0, L(l) = 0, the entire spectrum is independent of A_5. The open Wilson line transforms as W_l^g = g(l) W_l g(0)^dagger; with endpoint groups H_0, H_l acting independently, its class lies in H_l \ G / H_0.
3. (Theorem 2) With E_y = Ran P_A(y), the induced connection is nabla^E_mu = P_A (d_mu + i A_mu) P_A and the vertical endomorphism is V = P_A D_{I,A_5} P_A, and exactly P_A D_A P_A = -i gamma^mu (nabla_mu^S + nabla_mu^E) + gamma_5 V.
4. In a local orthonormal frame U(y), A_mu = U^dagger A_mu U - i U^dagger d_mu U and V_F = U^dagger D_{I,A_5} U, with curvature P_A (i F) P_A + P_A [nabla P_A, nabla P_A] P_A; under U^g = G_g U h^dagger the data transform covariantly.

*Scope (amendment).* The double-coset statement needs the endpoint transformations to act independently through H_0 and H_l, with extendability understood, and is a local pointwise classification unless the global topology is specified; periodic conditions require g(l) = g(0), and then the holonomy is classified by conjugation. If the gap closes, no fixed-rank smooth light bundle is asserted. The compression differs from eliminating the other fermions, which adds -P_A D_A P^perp [P^perp (D_A - z) P^perp]^{-1} P^perp D_A P_A.

**Proof.** Lemma 14, Theorems 1 and 2; the proofs are there. Conjugation of the resolvent in the contour formula for P_A proves covariance, W^dagger D W removes the connection, and the frame computation gives the connection and curvature.

**What it leaves open.** Covariance alone fixes neither the fluctuation image (14_link_fixed_singular_values.md) nor equality of the vector masses with the tower (14_matching_sum_rule.md).
