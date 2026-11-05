# A self-adjoint boundary condition for the derivative on an interval is a grading at each wall, and the finite Dirac operator is D_F = (1/2l) Gamma_0 log(Gamma_1 Gamma_0), with singular values the principal angles between the two gradings divided by l

**Status.** Theorem (Theorem 23.1). Proved by Claude Opus 5.5. Ledger row `l23_gradings` (depending on `l22_window`). Theorem 2 of paper/boundary_condition_note.tex; cited in paper/connes_kk_dictionary_note.tex.

**Setting.** H finite-dimensional, Gamma_0 and Gamma_1 self-adjoint involutions on H. On L^2([0, l]; C^2) (x) H, D = E d/dx with (E psi)_L = psi_R, (E psi)_R = -psi_L, on the domain Gamma_0 psi_L(0) = psi_L(0), Gamma_0 psi_R(0) = -psi_R(0), Gamma_1 psi_L(l) = psi_L(l), Gamma_1 psi_R(l) = -psi_R(l). Call it D(Gamma_0, Gamma_1), and let Gamma^ be +1 on psi_L and -1 on psi_R.

**Statement.**

1. D(Gamma_0, Gamma_1) is self-adjoint with compact resolvent, and it anticommutes with Gamma^.
2. Suppose the eigenspaces of Gamma_0 and Gamma_1 have equal dimensions and -1 is not an eigenvalue of Gamma_1 Gamma_0, and let theta_k in [0, pi/2) be the principal angles between the +1 eigenspaces. Then K = (1/2l) log(Gamma_1 Gamma_0), with the principal branch, is anti-Hermitian with Gamma_0 K Gamma_0 = -K; D_F = Gamma_0 K is self-adjoint, odd for Gamma_0, with singular values theta_k/l; and Gamma_1 = e^{lK} Gamma_0 e^{-lK}.
3. With X the H_- -> H_+ block of tan(l D_F), D(Gamma_0, Gamma_1) = D_X of lemma 22, so the spectral part of Theorem 22.1 gives the spectrum and the window, with no real structure needed. Conversely, every D_F odd for Gamma_0 with l ||D_F|| < pi/2 arises from exactly one Gamma_1.
4. An antiunitary J_1 with J_1^2 = -1 and J_1 Gamma_i J_1^-1 = -Gamma_i, i = 0, 1, defines by (J^ psi)_L = J_1 psi_R, (J^ psi)_R = -J_1 psi_L a real structure of signs (+, +, -). With J_F = Gamma_0 J_1 up to sign, J_F^2 = 1, J_F Gamma_0 = -Gamma_0 J_F and J_F D_F = D_F J_F, the signs of lemma 22, while J_F Gamma_1 J_F^-1 = -Gamma_0 Gamma_1 Gamma_0, the reflection of Gamma_1 through Gamma_0.

*Scope.* At theta_k = pi/2 the channel has type (c) of lemma 09, with no zero mode and lowest level pi/(2l), the Connes-Lott mass of Theorem A of paper/towerless_intervals.tex; there the principal logarithm and the isolated window cease to be unique. Everything finite is still an input.

**Proof.** Lemma 23, Theorem 23.1; the proof is there. U = Gamma_1 Gamma_0 is unitary with Gamma_0 U Gamma_0 = U^-1, its eigenvalues are e^{+-2 i theta_k} by the two-projection decomposition, and R(l) = e^{lK} carries H_+ and H_- to the graphs of -X\* and X, which are the eigenspaces of Gamma_1.

**What it leaves open.** The parent algebra is matrix-valued (23_aligned_walls_even_part.md). The relative position of the two gradings becomes the scalar modulus in 23_odd_fluctuations_radial_mode.md, and on the unfolded circle D_F is a Wilson line (25_unfolding_to_circle.md).
