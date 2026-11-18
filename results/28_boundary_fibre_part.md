# The displayed pull-back wall matrix gives fibre weight -w(rho), with w(1) = 2/3, conditional on identifying that matrix with the geometric operator

**Status.** Conditional proposition (Proposition 28.13), with Lemma 28.12. The finite-block calculation is by Claude Opus 5.5; Lemma 28.12 proved by Astra 6 (job 28, Lemma 5). Ledger rows `l28_wall` (depending on `l28_mixing`) and `l28_mixing`. The function w(rho) enters case (a) of Theorems 2 and 4 of paper/joint_limit_note.tex.

**Setting.** The operator of 28_self_adjoint_local_wall.md, with the sign of Phi for which the right singular vector of T is at the zero section, and its left singular vector v at the wall, in the domain Z v = +v of T\*. A wall profile exp(q(x - l)), q > 0, for T\* = i Z d/dx + D_6 + i phi tau with phi > 0 has q = -phi Z tau at leading order, so the stable channels of v are (Z, tau) = (+, -3/2) and (+, -1/2) twice, mapping to the channels (-, -1/2) twice. Horizontal scale 1.

**Statement.**

1. (Lemma 28.12) On a product collar, normalized stable profiles for mass eigenvalues M q_i overlap by 2 sqrt(q_i q_j)/(q_i + q_j), independently of M, which is sqrt(3)/2 for q = 1/2, 3/2. So large mass keeps the coupling between the stable channels O(3) and O(1), which in the pull-back connection has order 1/rho.
2. Assume the compression of D_6(rho) in unitary bases of the channels, including these overlaps, is A(rho) = [[3/(2 rho), 1/rho, rho + 1/rho], [0, sqrt(2), -sqrt(2)]], with kernel spanned by c = (-(2/3)(rho^2 + 2), 1, 1).
3. For the mode c, tr(B Gamma_5)/tr B = -1 and tr(B t-hat)/tr B = -w(rho), for every rho; for horizontal scale h, rho^2 is replaced by rho^2/h^2. So w = 8/17 as rho -> 0, w = 2/3 at the Fubini-Study radius rho = 1, and w -> 1, the level-one value, as rho -> infinity. The nonzero singular values of A at rho = 1 are 1.863 and 2.789. With the opposite sign of Phi the fibre part is +w(rho).
4. For the connection preserving the line summands, the first row of A is (0, 1/rho, rho + 1/rho), the kernel is (1, 0, 0), so w = 1 for every rho, and the block on tau = -1/2 is invertible for every rho > 0, with D^2 = 3, 6 at rho = 1.

*Scope.* Items 2–4 compute the displayed finite matrix. Identifying its entries with the geometric operator remains open in the live proof. Result 28.5 compares the resulting weight to a radial solve in Python: the difference falls from 0.037 to 0.009 at wall radius 0.5 and from 0.008 to 0.002 near radius 1, between phi_0 = 16 and 32.

**Proof.** Lemma 28, Proposition 28.13 and Lemma 28.12. The three stable channels all lie in Gamma_5 = -1 and have mutually orthogonal target spaces, so the cross terms vanish in the traces of Proposition 28.4.

**What it leaves open.** The geometric derivation of the matrix entries. At rho = 1 the half-cylinder kernel and convergence to the geometric endpoint map are proved with unsigned fibre weight at least 1/7 for the pull-back connection (29_window_case_a.md). The line-preserving case at rho = 1 gives the exact level-one value (29_window_case_b.md). Other radii need K(rho).
