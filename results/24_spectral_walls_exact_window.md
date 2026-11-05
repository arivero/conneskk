# On CP^3 x I, nonlocal spectral walls that prescribe two gradings on the level-one kernel C^4 give exactly the two-gradings window of lemma 23, with every other mode above Delta_K/r, so the higher K-modes decouple as the radius shrinks

**Status.** Theorem (Result 1 of lemma 24, Theorem 24.1 in the ledger), with Result 5, a theorem on the radius collapse. Proved by Astra 6. Ledger row `l24_spectral`; Result 5 has no row of its own. Stated in the Status section of paper/boundary_condition_note.tex ("\supp{24}"), and used in the section on the cylinder of paper/joint_limit_note.tex ("the spectral walls of \supp{24}").

**Setting.** K = CP^3 with the Fubini-Study metric, H_K = L^2(K, Lambda^{0,\*} (x) O(1)), A = sqrt(2) (dbar + dbar\*), gamma_K = (-1)^deg, V = ker A = C^4 with projection Pi, and Delta_K > 0 the smallest nonzero |eigenvalue| of A; the radius r replaces A by A/r. On L^2(I_l; C^2 (x) H_K), D_r = E d_x + Z A/r and gamma^ = Z gamma_K. Gamma_0, Gamma_1 are self-adjoint involutions on V with two-dimensional eigenspaces and -1 not in spec(Gamma_1 Gamma_0), C_i = Pi Gamma_i Pi, and the walls are chi_0 psi(0) = psi(0), chi_l psi(l) = psi(l), with chi_0 = Z C_0 - S sgn A and chi_l = Z C_1 + S sgn A, sgn A = 0 on V.

**Statement.**

1. The H^1 realization of D_r is self-adjoint with compact resolvent and anticommutes with gamma^.
2. Pi (x) 1 reduces the operator, including its domain, and on this subspace the operator is exactly D(Gamma_0, Gamma_1) of lemma 23.
3. Every eigenvalue on the complement satisfies |lambda| >= Delta_K/r. With K_F = (1/2l) log(Gamma_1 Gamma_0) and D_F = Gamma_0 K_F, the window embedding W_l gives D_r W_l = W_l D_F and gamma^ W_l = W_l Gamma_0, exact when Delta_K/r > ||D_F||, and the next eigenvalue is at least min{Delta_K/r, (pi - l ||D_F||)/l}.
4. (Result 5) At fixed l, ||(D_r - i)^-1 - iota_Pi (D(Gamma_0, Gamma_1) - i)^-1 iota_Pi\*|| <= r/Delta_K. For fixed D_F and Gamma_1(l) = e^{l Gamma_0 D_F} Gamma_0 e^{-l Gamma_0 D_F}, r -> 0 and l -> 0 decouple both towers and leave D_F, with no relation between the two rates.
5. (Result 5) For an x-independent T = Q_K(f), ||Phi_l(f) - E_0(T)|| <= l ||D_F|| ||T||, and Phi_l(f) = sinc(l ad_{D_F})(T) when T is even. For F(y, s) fixed on K x [0, 1] and f_l(y, x) = F(y, x/l), Phi_l(f_l) tends to E_0 Q_K(int_0^1 F(., s) ds).

*Scope.* On V^perp these are APS conditions with the inward-normal sign reversed between the walls, and they restrict scalar functions at the walls to constants (24_local_and_spectral_walls.md). The analytic data are those of Example 16.9; an operator on S^4 with the required kernel and compression map would have to be specified separately. Convergence of compression maps needs a common domain and a collapse map: with aligned walls, f_l = 6 (x/l)(1 - x/l) has zero endpoint values and Phi_l(f_l) = 1. The mixing bound (18) for common-domain perturbations needs, in addition, r (b_r + L) <= (1 - epsilon) Delta_K.

**Proof.** Lemma 24, Results 1 and 5; the proofs are there. With B = S A/r, D_r = E (d_x + B); the chi_i are self-adjoint involutions anticommuting with E, so their positive eigenspaces are maximal isotropic, and integration by parts gives ||D_r q||^2 >= ||q'||^2 + (Delta_K^2/r^2) ||q||^2 on the complement. The resolvent is block diagonal with respect to Pi.

**What it leaves open.** The window is prescribed through the walls, and the derivation of a nontrivial local grading and of the desired algebra from one coupled scalar window remains open (lemma 24, consequence for T0). The joint scaling with r_eps = r_\* eps^{-gamma} is Corollary 30.4 (30_window_and_tower_on_interval.md), and a window from a local operator on the disc bundle is 29_window_case_b.md.
