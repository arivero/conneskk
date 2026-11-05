# With a boundary Yukawa matrix X between a doublet-type and a singlet-type field on the interval, D_X is self-adjoint, its kernel is ker X^dagger + ker X, and ind D_X = N_Q - N_U for every X; equivariantly the index is [rho_Q] - [rho_U]

**Status.** Theorem (Lemma 12.1, Theorem 12.2 and the index part of Corollary 12.3). Proved by Claude Opus 5.5. Ledger row `l12_index`, depending on `l09_index`. Theorem C of paper/towerless_intervals.tex.

**Setting.** A doublet-type field Q in L^2(I; C^2) (x) C^{N_Q} and a singlet-type field U in L^2(I; C^2) (x) C^{N_U}, components (L, R), grading Gamma = diag(1, -1) on each, bulk operator (D psi)_L = R' + M R, (D psi)_R = -L' + M L with diagonal M_Q, M_U. For a complex N_Q x N_U matrix X, D_X acts on the H^1 functions with

    Q_R(0) = 0,   U_L(0) = 0,   Q_R(l) = X U_R(l),   U_L(l) = -X^dagger Q_L(l).

At X = 0, Q has boundary type (a) and U type (b) of lemma 09. A compact group G acts unitarily by rho_Q, rho_U commuting with the bulk masses; the domain is invariant exactly under the stabilizer H_X = {g : rho_Q(g) X = X rho_U(g)}.

**Statement.**

1. (Lemma 12.1) D_X is self-adjoint with compact resolvent, and Gamma D_X = -D_X Gamma.
2. (Theorem 12.2) ker D_X = {(e^{M_Q x} a, 0; 0, 0) : X^dagger e^{M_Q l} a = 0} + {(0, 0; 0, e^{-M_U x} b) : X e^{-M_U l} b = 0}, so dim ker_{Gamma=+1} = N_Q - rank X, dim ker_{Gamma=-1} = N_U - rank X, and ind D_X = N_Q - N_U.
3. (Corollary 12.3, index) In R(H_X), ind_{H_X} D_X = [ker X^dagger] - [ker X] = [rho_Q] - [rho_U] restricted to H_X. At X = 0, H_X = G and the index is the chiral class [V_L] - [V_R] of Corollary 9.3.

**Proof.** Lemma 12, Lemma 12.1, Theorem 12.2 and Corollary 12.3; the proofs are there. The boundary conditions form a Lagrangian subspace for the boundary form; zero modes are exponentials on each field, and the conditions at l reduce to X U_R(l) = 0 and X^dagger Q_L(l) = 0; X maps (ker X)^perp isomorphically and H_X-equivariantly onto ran X = (ker X^dagger)^perp.

**What it leaves open.** The index N_Q - N_U is constant along X; what changes is the symmetry, reduced from G to H_X. Which zero modes lift is the no-go of 12_nogo_zero_modes_lift_only_vectorlike.md.
