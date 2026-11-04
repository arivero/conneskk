# On the massive chiral interval the index is +1, -1 or 0 for the boundary types (a), (b), (c), independent of the bulk mass and the length, and equivariantly it is [V_L] - [V_R]

**Status.** Theorem (Theorem 9.2 and Corollary 9.3). Proved by Claude Opus 5.5; checked by Claude Opus 5.5 against a first-order discretization (N = 4000) and by Terra 6.1 by hand, effort max: Theorem 9.2 correct, Corollary 9.3 correct with the amendment below (report appended to lemma 09). Ledger row `l09_index`.

**Setting.** I = [0, l], H = L^2(I; C^2) with psi = (L, R), Gamma = diag(1, -1), A = -d/dx + M with M real, D_M psi = (A^dagger R, A L), that is (D psi)_L = R' + M R and (D psi)_R = -L' + M L. Boundary types: (a) R(0) = R(l) = 0; (b) L(0) = L(l) = 0; (c) R(0) = 0 and L(l) = 0, the chiral interval of lemma 05. For each type D_M is self-adjoint on the H^1 functions with that condition and has compact resolvent (Lemma 9.1, with the graph-norm estimate ||psi'|| <= ||D_M psi|| + |M| ||psi||).

**Statement.**

1. (Theorem 9.2) For every M in R and l > 0: in type (a), ker D = C (e^{Mx}, 0) and ind = dim ker_{Gamma=+1} - dim ker_{Gamma=-1} = +1; in type (b), ker D = C (0, e^{-Mx}) and ind = -1; in type (c), ker D = 0 and ind = 0.
2. (Corollary 9.3) Let a compact group G act on H_G = sum_rho V_rho (x) L^2(I; C^2), a sum of finitely many finite-dimensional representations V_rho, with boundary type tau(rho) and mass M_rho on each summand. The G-index of D in R(G) is the sum of [V_rho] over tau(rho) = a minus the sum of [V_rho] over tau(rho) = b, independent of every M_rho and of l.
3. Assigning (a) to the summands of V_L and (b) to those of V_R realizes I_G = [V_L] - [V_R]; vectorlike pairs of type (c) contribute 0.

*Amendment (Terra 6.1).* The direct sum must be finite. With infinitely many summands the operator need not be Fredholm: for l = 1, G = S^1, V_j(z) = z^j with j >= 2 and M_j = -j, all of type (c), the direct sum has no kernel and is not bounded below, so its R(G)-valued index is undefined.

**Proof.** Lemma 09, Theorem 9.2 and Corollary 9.3; the proofs are there. D psi = 0 forces L = alpha e^{Mx} and R = beta e^{-Mx}, and since exponentials never vanish a condition at either end kills the corresponding coefficient.

**What it leaves open.** Chirality is placed by the boundary conditions, as an input. The light spectrum of type (c) with a bulk mass is computed next (09_spectrum_with_bulk_mass.md), and boundary Yukawa couplings that deform types (a) + (b) into type (c) are lemma 12.
