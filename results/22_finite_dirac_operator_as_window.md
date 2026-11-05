# Every finite (H_F, D_F, J_F, Gamma_F) of signs (+, +, -) with l ||D_F|| < pi/2 is exactly the lowest spectral window of the pure derivative on an interval of length l, with the wall coupling X = tan(l D_F)

**Status.** Theorem (Theorem 22.1), with Corollary 22.2. Proved by Claude Opus 5.5. Ledger row `l22_window`. Theorem 1 of paper/boundary_condition_note.tex; stated in paper/connes_kk_dictionary_note.tex and in paper/real_structure_note.tex ("Theorem 22.1", "\supp{22}"); the input of Theorem 1 of paper/joint_limit_note.tex.

**Setting.** H_F = H_+ (+) H_-, Gamma_F = diag(1, -1), c : H_+ -> H_- antiunitary, J_F(a, b) = (c^-1 b, c a), and D_F = [[0, M\*], [M, 0]] with M = c M\* c, which is J_F D_F = D_F J_F. By the Takagi factorization M = V |M| with V = c V\* c, and X = tan(l |M|) V\* is the H_- -> H_+ block of tan(l D_F); conversely every X with c X = X\* c^-1 arises from exactly one D_F. On H_l = L^2([0, l]; C^2) (x) (H_+ (+) H_-), with psi = (Q_L, Q_R; U_L, U_R), D_X = E d/dx, (E psi)_L = psi_R and (E psi)_R = -psi_L, on the domain Q_R(0) = 0, U_L(0) = 0, Q_R(l) = X U_R(l), U_L(l) = -X\* Q_L(l); Gamma^ and J^ are as in the lemma.

**Statement.**

1. D_X is self-adjoint with compact resolvent, and J^^2 = 1, J^ D_X = D_X J^, J^ Gamma^ = -Gamma^ J^, Gamma^ D_X = -D_X Gamma^.
2. With R(x) = exp(x Gamma_F D_F), let W send (a, b) to the function with L-components l^{-1/2} R(x)(a, 0) and R-components l^{-1/2} R(x)(0, b). Then W is an isometry, and D_X W = W D_F, J^ W = W J_F, Gamma^ W = W Gamma_F.
3. With theta_k = l sigma_k for the singular values sigma_k of M, the signed spectrum of D_X is (n pi +- theta_k)/l, n in Z, and a zero singular value gives a zero mode of multiplicity two. So ran W is the spectral subspace of |D_X| <= ||D_F||, and the next level is at least (pi - l ||D_F||)/l.
4. (Corollary 22.2) D_X = R (D_0 + E Gamma_F D_F) R\*, with D_0 the uncoupled operator, X = 0. After this unitary change of domain, D_F is a constant matrix connection, odd for the grading, with relative endpoint rotation R(l).

*Scope.* The finite data are inputs, so the existence of the window is close to a reparametrization, X = tan(l D_F). D_X has no mass term: a fermion mass is a momentum k with tan(k l) equal to a singular value of X, and in the finite description that condition is lost. One matrix X encodes the Yukawa and Majorana blocks together, and its entries need not keep the original block pattern.

**Proof.** Lemma 22, Theorem 22.1 and Corollary 22.2; the proofs are there. R(x)(a, 0) = (C(x) a, -S(x) a) and R(x)(0, b) = (S(x)\* b, C'(x) b) give the wall conditions from X = tan(l |M|) V\*, and constant unitaries on Q and U reduce X to diag(tan theta_k), which is Example 12.5 in each channel.

**What it leaves open.** The window identifies D_F, J_F and Gamma_F exactly and does not select A_F; the parent algebra is matrix-valued (22_parent_real_triple_order_one.md). Lemma 24 realizes the window on CP^3 x I with spectral walls (24_spectral_walls_exact_window.md), and the commutative-parent question T0 remains open.
