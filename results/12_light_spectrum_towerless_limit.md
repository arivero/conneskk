# The light eigenvalues of the boundary-Yukawa interval are the fixed points lambda = sigma_k(A^{1/2} X B^{1/2}), with two-sided bounds, and in the towerless limit the retained block is the Yukawa block Phi_Q Y_hat Phi_U

**Status.** Theorem (Theorems 12.6 and 12.7). Proved by Claude Opus 5.5. Ledger row `l12_towerless`. Theorem C of paper/towerless_intervals.tex.

**Setting.** The secular data of 12_secular_equation.md. F_Q = diag(f_{Q_i}), F_U = diag(f_{U_j}), Y_0 = F_Q X F_U; Lambda_Q = min_i Lambda_i^Q, Lambda_U = min_j Lambda_j^U, lambda_\* = min(Lambda_Q, Lambda_U); for 0 < lambda < lambda_\*, A and B are positive and Y(lambda) = A(lambda)^{1/2} X B(lambda)^{1/2}; singular values in decreasing order. Towerless scaling: the c's and Y_hat = X/l fixed, l -> 0; Phi_Q = diag(phi(c_i^Q)), Phi_U = diag(phi(c_j^U)), M_F = Phi_Q Y_hat Phi_U.

**Statement.**

1. (Theorem 12.6) lambda in (0, lambda_\*) is an eigenvalue of multiplicity m iff exactly m indices k satisfy sigma_k(Y(lambda)) = lambda. Each equation lambda = sigma_k(Y(lambda)) has at most one solution lambda_k in (0, lambda_\*), and one whenever 0 < sigma_k(Y_0) < lambda_\*. Every solution satisfies sigma_k(Y_0) (1 - lambda_k^2/Lambda_Q^2 - lambda_k^2/Lambda_U^2) <= lambda_k <= sigma_k(Y_0).
2. (Theorem 12.7) For every E > 0 and all small l, the spectrum of D_X in [-E, E] consists of 0 with multiplicity N_Q + N_U - 2 rank Y_hat, and of +-lambda_k(l) for those k <= rank Y_hat with sigma_k(M_F) <= E, where 0 < sigma_k(M_F) - lambda_k(l) <= sigma_k(M_F)^3 l^2 (1/L_Q^2 + 1/L_U^2), with L_Q = l Lambda_Q and L_U = l Lambda_U depending only on the c's.
3. All eigenvalues outside zero and the light set have absolute value greater than lambda_\* = min(L_Q, L_U)/l, which tends to infinity.
4. For E > ||M_F|| the light space has dimension N_Q + N_U and, after grading-preserving unitary identifications, its compressed Dirac matrices converge to D_F = [[0, M_F], [M_F^dagger, 0]] on H_F = C^{N_Q} + C^{N_U} with Gamma_F = diag(1, -1): up to unitaries on each chirality, the Yukawa block of the Chamseddine-Connes finite Dirac operator.

*Scope.* Calling the limit a spectral triple requires specifying an algebra and its representation; in the spectral propinquity the algebra of the limit is C (15_gap_criterion.md, Corollary 15.6). At fixed fermion masses X = l Y_hat -> 0, so the boundary condition tends to the chiral type (a) + (b) while the wall values of the normalized profiles grow like l^{-1/2}.

**Proof.** Lemma 12, Theorems 12.6 and 12.7; the proofs are there. Conjugation by A^{1/2} turns the secular equation into the eigenvalue equation of Y Y^dagger; sigma_k(Y(lambda)) is continuous and nonincreasing; concavity places alpha_i and beta_j above their chords, giving the lower bound; and Y_0 = M_F by item 2 of Theorem 12.4.

**What it leaves open.** The texture of D_F is localization data times an order-one boundary matrix; its mass hierarchies are 12_graded_singular_values.md and its mixing 12_mixing_upper_bound.md. The algebra and representation of a limit triple are inputs.
