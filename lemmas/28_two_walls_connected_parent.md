# Two sheets as the two ends of one connected commutative parent

For STRATEGY T0 and T0b, following [lemma 16](16_coarse_truncation.md) (Example 16.9), [lemma 24](24_commutative_parent.md) (Proposition 6) and [lemma 09](09_massive_chiral_interval.md). Propositions 28.1 to 28.4 and 28.13 are by Claude Opus 5.5. Results 28.8 to 28.12 and 28.14 to 28.21 are by Astra 6, job 28 ([report, with the full proofs](../reviews/2026-11-03_astra_job_28.md); [prompt](prompts/28_two_walls_connected_parent.md)), checked by Claude Opus 5.5 by hand and in Python. Proposition 28.13 and the numerics are refereed by Terra 6.1 ([report](../reviews/2026-11-03_terra_check_28.md)), with its corrections applied. The window is a conjecture with numerical support; the numbers come from [tools/lemma28_radial.py](../tools/lemma28_radial.py) (Python, numpy and scipy).

**Correction, 3 Nov 2026.** The first version of Result 28.5 and of the numbers in Remark 28.7 (commits dd1b14c, 530fa06) used the wrong sign of the spin connection in the Python slice operator. That changed the singular values and the boundary fibre parts, so those numbers are withdrawn, including the next singular value 1.04, the value 1.35 on the representation 16, and the boundary fibre parts -0.011 to -0.853. The exponents at the origin and the multiplicities are unaffected. Astra 6 did not reproduce the old boundary values and its proofs do not use them. We found the error when that operator gave a core zero mode in the representation 20, against the exact count of Proposition 28.11. The singular values, fibre parts and densities below are recomputed, and the script tests the operator against exact statements: {A_0, A_1} = 0, A_0^2 equal to the Casimir formula on S^4, D^2 on (0, 0)-forms with values in O(1) at the Fubini-Study radius equal to j(j + 4), and A_2 equal to its curvature contraction (the last test proposed by Terra 6.1).

**Outcome.**

1. *The mechanism is proved at the level of compression maps.* A smooth function on the disc bundle X has independent values on the zero section S^4 and on the boundary CP^3, and at the zero section it is a function on S^4 alone (Proposition 28.8). For prescribed windows over this X, real functions generate exactly M_2(H) + M_4(C) at every localization scale (Theorem 28.21). In Example 16.9 the second sheet and the restriction to S^4 were inputs, so this is a connected source for them.
2. *The two ends of an actual local operator are understood.* There is a self-adjoint operator with a local wall (Theorem 28.9). The core carries exactly four states in the representation 4 (Proposition 28.11). At the wall, large mass keeps a tangential mixing (Lemma 28.12). For the pull-back connection the boundary mode then has the fibre part -w(rho) in closed form, with w(rho) = 2(rho^2+2)^2/(9+2(rho^2+2)^2), which reaches the level-one value of Example 16.9 only as rho -> infinity (Proposition 28.13). This is a statement on the finite wall model, and its convergence from the full operator is numerical. A connection preserving the line summands in a collar, with the Fubini-Study metric at the wall, gives the level-one value in that model.
3. *The isolated window of the whole operator stays a conjecture* (Conjecture 28.6): what is missing is the normal reductions with their errors, the matching, and a coercive estimate uniform in the mass and in all representations of Sp(2) (Lemma 28.14).
4. *The algebra M_2(H) + M_4(C) is the algebra of the limit map.* Generated algebras do not converge when compression maps do (Counterexample 28.17). At the sample points resolved numerically, the core mode has a nonzero density breaking the quaternionic structure, empirically of order lambda^2; if it is nonzero in the continuum, Proposition 28.16 gives M_4(C) for the core block at those masses. This is numerical evidence and does not establish the exact algebra at any finite mass.

## Setting

Let G = Sp(2), K = Sp(1)_a x Sp(1)_b and H = Sp(1)_a x U(1)_b, so that G/K = S^4, K/H = S^2 and G/H = CP^3. Let S be the bundle G x_K (1, 2), so that CP^3 = P(S). The normal bundle of the zero section is G x_K (1, 3), and away from it X = (0, l] x CP^3, with radial coordinate x and S^2 fibres of radius rho(x), rho(x) ~ x at x = 0. Charges of U(1)_b are normalized so that the doublet of Sp(1)_b has +-1. The isotropy representation is (2)_{+-1} (+) (1)_{+-2}. The spinors of X restrict on a slice to Sigma_6 = Sigma^+ (+) Sigma^-, with c(d_x) = Z the chirality of Sigma_6, where

    Sigma^+ = (1)_2 (+) (1)_0 (+) (2)_{-1},   Sigma^- = (2)_1 (+) (1)_0 (+) (1)_{-2}.

The representation 4 of G restricts to (2)_0 (+) (1)_1 (+) (1)_{-1}, that is (2, 1) (+) (1, 2) of K. Let Gamma_a be the Clifford generators on 4, with Gamma_5 commuting with K and equal to +-1 on the two summands, and let x_a(g) be defined by lambda(g) Gamma_5 lambda(g)^-1 = x_a(g) Gamma_a.

**Proposition 28.1 (the twist).**

1. For k != 0, O(k) on CP^3 does not extend to a line bundle on X, since H^2(X) = H^2(S^4) = 0 while O(k) has degree k on the fibre S^2.
2. The pullback of S to X restricts on CP^3 to O(1) (+) O(-1), as the tautological splitting. So E = S^3(S), which is pulled back from S^4 and has trivial connection along the fibres, restricts to O(3) (+) O(1) (+) O(-1) (+) O(-3). The summand O(3) gives the Dolbeault operator on O(1) of Example 16.9, since Sigma (x) O(3) = Lambda^{0,*} (x) O(1).
3. On E the section Phi(v) = phi(|v|) (v-hat . T), with T the spin-3/2 generators and phi odd and smooth, is smooth and G-equivariant, with zero set exactly S^4. In the frame of the slice it is phi(x) tau, with tau diagonal in the summands, with eigenvalues +-3/2, +-1/2.

So we take the Callias-type operator T = D_X(E) + i Phi on spinors of X tensored with E, and the self-adjoint operator D-hat = [[0, T^*], [T, 0]], with the grading Gamma-hat = diag(1, -1). At x = l we take the local condition Gamma-hat Z = -1 on the doubled spinor, that is u_even(l) = 0 for T and v_odd(l) = 0 for T^*. It is a chirality condition, elliptic and local, and it preserves the domain under all smooth functions on X.

**Proposition 28.2 (multiplicities).** On a slice, Hom_H(4, Sigma^+ (x) E) and Hom_H(4, Sigma^- (x) E) each have dimension 5. For the summand O(3), the dimensions are 1 and 0. So on 4, the operator on the summand O(3) with its U(1) connection vanishes for every G-invariant metric on the slice, and its kernel contains H^0(CP^3, O(1)) = 4 for every fibre radius. This concerns the separate line connection. The pull-back connection of E does not preserve the summands, and its slice operator is invertible for small fibres (Proposition 28.10).

*Proof.* Tensoring the lists above with the charges of E gives the multiplicities. The operator is odd under Z and maps the multiplicity space of 4 into itself. ∎

**Proposition 28.3 (the zero section).** The fibre operator c_N . nabla + i Phi on R^3 with values in E has zero modes (1, 3) (+) (1, 1) of K, by the Callias count for the positive weights 3/2 and 1/2, with one sign of Phi. On S^4 this gives the Dirac operator twisted by (1, 3) (+) (1, 1). Then Hom_K(4, S^- (x) (1, 3)) has dimension 1, through (1, 2), and Hom_K(4, S^+ (x) (1, 3)) = 0, so the twisted operator vanishes on that copy of 4, in agreement with its index 4. The untwisted part (1, 1) has eigenvalue 2 on the representation 4. Every map in Hom_K(4, S^- (x) (1, 3)) annihilates (2, 1) in 4. These are the twistor spinors of S^4, as sections of S.

*Proof.* The representation count is as in Proposition 28.2, and the Callias count is a reference, with the exact count in Proposition 28.11. For the last sentence, the first-order operator from (1, 2) to (2, 3) in the slice limit is the twistor operator, and its kernel is the 4. ∎

On a representation V the twisted operator has D^2 = Cas_G(V) + 3/2 - Cas_K(tau), for the twist tau, with Cas_G(4) = 5/2, Cas_G(16) = 15/2, Cas_G(20) = 21/2, Cas_G(40) = 29/2, Cas_K(j_a, j_b) = 2 j_a(j_a+1) + 2 j_b(j_b+1). With the twist (1, 3) this gives 0, 5, 8, 12, and with the twist (1, 1) on the representation 4 it gives 4. The slice operator reproduces these (Result 28.5).

**Proposition 28.4 (the compression).** Let s_v(g) = F lambda(g)^-1 v be a section in the multiplicity space of 4 on a slice, with B = F^* F, which commutes with lambda(H). Write t-hat = 2 i t_3 of Sp(1)_b. Then, with normalization by the norm of s_v,

    Q(x_a) = (tr(B Gamma_5)/tr B) Gamma_a/5,

and for the functions y_T(g) = tr(T Ad(g) t-hat) with T in the Lie algebra sp(2), Q(y_T) is a multiple of T, proportional to tr(B t-hat)/tr B.

*Proof.* End_H(4) is spanned by 1, Gamma_5 and t-hat. Since int lambda(g) Gamma_5 lambda(g)^-1 x_a = int x_a x_b Gamma_b = Gamma_a/5, the part with Gamma_5 gives the first formula. Equivariant maps from 5 to End(4) are multiples of Gamma_a, and tr(Gamma_a Ad(g) t-hat) = 0, so 1 and t-hat contribute nothing. The second formula is Schur's lemma on the representation 10. ∎

Consequently, a mode with F supported on (1, 2) and K-symmetric has tr(B Gamma_5)/tr B = +-1 and tr(B t-hat) = 0. That is the zero section: Q(x_a) = +-Gamma_a/5, and the part of a function that depends on the fibre gives zero. On the boundary with the pure level-one mode, B is the projection on (1)_{-1}, so that tr(B t-hat)/tr B = +-1. Example 16.9 has these values.

## The operator and its two ends

**Proposition 28.8 (endpoint restrictions).** Restriction C^infinity(X, R) -> C^infinity(S^4, R) + C^infinity(CP^3, R) is surjective, and in normal coordinates a(y, v) = a(y, 0) + O(|v|), uniformly on bounded subsets of C^1(X). (Report, Proposition 1.)

**Theorem 28.9 (a self-adjoint realization).** Take the connection metric g = dr^2 + h(r)^2 pi^* g_{S^4} + rho(r)^2 g_{S^2} with h smooth, even and positive at 0, rho odd and smooth with rho(r) = r + O(r^3), and a product near r = l. Let Phi_M = M b(|v|^2) v . J with b smooth and positive, T_M = D_X^E + i Phi_M, and D-hat_M the doubled operator. At r = l set Z = -i c(dr), chi = Gamma-hat Z, and impose chi psi = -psi. Then D-hat_M on this H^1 domain is self-adjoint, elliptic and odd, with compact resolvent, and every smooth scalar function preserves the domain. No boundary condition enters at the zero section: after the outer condition is fixed, removing S^4 creates no further self-adjoint extension. (Report, Theorem 2, using Bär-Ballmann, Corollary 4.18.)

**Proposition 28.10 (three slice operators).** For the standard complex structure on CP^3: (1) the kernel of the Dolbeault-Dirac operator on O(1) is C^4 for every Hermitian metric; (2) the Levi-Civita Dirac operator twisted by the separate line bundle O(3) with its invariant connection vanishes on the 4 for every invariant squashing, which gives a kernel of dimension at least four, with any further kernel in other representations at a locally discrete set of squashings; (3) the Levi-Civita Dirac operator twisted by the full pull-back connection on E is invertible for small fibres, since (D^E_rho)^2 >= 1/(2 rho^2) - C_0 - C_1 rho^2. (Report, Proposition 3.) In Python, on the representation 4, the smallest |eigenvalue| of that operator is 3.235, 1.842, 1.200, 0.722, 0.148 at rho = 0.3, 0.5, 0.707, 1, 2. So the window comes from the competition between the normal operator and the mass.

**Proposition 28.11 (normal model).** Let Q = sigma . d_y + y . J on L^2(R^3; C^2 (x) C^4), with J Hermitian of spin 3/2. Then ker Q = 0 and ker Q^* = 3 (+) 1 under the normal Sp(1), with a positive gap above the zero modes; changing the sign of the mass exchanges the two kernels. The proof uses Q^* Q = -Laplacian + (y . J)^2 - sigma . J >= 0, with equality excluded since sum_i J_i^2 = 15/4, and the Callias index for the positive eigenbundles of n . J, of degrees 3 and 1. The induced bundle over S^4 is S^2(S) (+) 1, the operator on Sigma (x) S^2(S) has exactly four zero modes, in one chirality, and on the parallel inclusion S -> S (x) S^2(S) the twisted equation is a multiple of the twistor equation. So the kernel consists of harmonic spinors of the twisted operator, which are twistor spinors as sections of S. Rescaling gives the localization scale r = O(M^{-1/2}) at the core and O(M^{-1}) at the wall. (Report, Proposition 4.) In Python, in an oscillator basis: Q^* Q starts at 1.02, QQ^* has four near-zero values, with total spin 0 and three values near spin 1, then 1.02.

**Lemma 28.12 (tangential mixing).** On a product collar, normalized stable profiles for mass eigenvalues M q_i overlap by 2 sqrt(q_i q_j)/(q_i + q_j), independently of M, which is sqrt(3)/2 for q = 1/2, 3/2. So large mass does not remove the coupling between the stable channels O(3) and O(1), which in the pull-back connection has order 1/rho. (Report, Lemma 5.)

**Proposition 28.13 (the boundary operator on the representation 4).** Take the sign of Phi for which the right singular vector of T is at the zero section. Its left singular vector v is at the wall, in the domain Z v = +v of Theorem 28.9 for T^*. A wall profile exp(q(x - l)), q > 0, for T^* = i Z d/dx + D_6 + i phi tau, with phi > 0, has q = -phi Z tau at leading order. So the stable channels of v are (Z, tau) = (+, -3/2) and (+, -1/2) twice, and they map to the channels (-, -1/2) twice. In unitary bases of these, the compression of D_6(rho) with the overlaps of Lemma 28.12 is

    A(rho) = ( 3/(2 rho)   1/rho   rho + 1/rho )
             (     0       sqrt 2     -sqrt 2  )

with the matrix elements computed in Python, and reproduced by Terra 6.1 in exact symbolic arithmetic from the bracket and Clifford data. Its kernel is spanned by c = (-(2/3)(rho^2 + 2), 1, 1). The channel tau = -3/2 and one channel tau = -1/2 are supported on (1)_{-1} of the 4; the other channel tau = -1/2 is supported on (1)_{+1}. All three lie in Gamma_5 = -1, and their target spaces are mutually orthogonal, so the cross terms vanish in the traces of Proposition 28.4. Hence for the mode c

    tr(B Gamma_5)/tr B = -1,    tr(B t-hat)/tr B = -w(rho),    w(rho) = 2(rho^2 + 2)^2 / (9 + 2(rho^2 + 2)^2),

for every rho, with horizontal scale 1; for horizontal scale h, replace rho^2 by rho^2/h^2. So w = 8/17 as rho -> 0, w = 2/3 at the Fubini-Study radius rho = 1 (the nearly Kähler radius is 1/sqrt 2), and w -> 1 as rho -> infinity, the level-one value. The nonzero singular values of A are the next wall values on the 4: 1.863 and 2.789 at rho = 1, with the core value 2 in between. With the opposite sign of Phi, the right singular vector is at the wall, in the channels Z = -1, tau > 0, with fibre part +w(rho), and its left singular vector at the zero section.

For the connection preserving the line summands, the first row is replaced by (0, 1/rho, rho + 1/rho), the kernel is (1, 0, 0), so w = 1 for every rho, and the block on tau = -1/2 has singular values with sum of squares rho^2 + 2/rho^2 + 6 and product sqrt 2 (rho^2 + 2)/rho, so it is invertible for every rho > 0, with D^2 = 3, 6 at rho = 1. This is the collar repair of the report: an invariant connection preserving the four line summands in a collar extends into X with a cutoff, with the pull-back connection near the zero section. At the Fubini-Study metric the stable boundary model is then a sum of line-twisted Dirac operators, with four zero modes on O(3) and none on O(1), since H^q(CP^3, O(-1)) = 0 for all q.

*Status.* The kernel and the traces are exact for this finite block, which is the leading formal wall operator; the next correction is O(1/M) in the fixed-block expansion and does not change the limiting kernel, since the kernel is separated from the other singular values. That the boundary mode of T_M converges to it as M -> infinity is a numerical statement here (Result 28.5), since a uniform global reduction is unproved: the difference falls as phi_0 grows, from 0.037 to 0.009 at wall radius 0.5 and from 0.008 to 0.002 at wall radius near 1, between phi_0 = 16 and 32. The value 2/3 tests the factor sqrt 3/2, since without it w(1) would be 3/5.

**Lemma 28.14 (a sufficient spectral criterion).** Let U_M : C^8 -> Dom D-hat_M be an isometry with ||D-hat_M U_M|| <= eps_M -> 0 and ||D-hat_M psi|| >= delta ||psi|| for psi orthogonal to the range, with delta > 0 independent of M. Then for large M, D-hat_M has exactly eight eigenvalues in (-delta, delta), and the spectral space is within O(eps_M/delta) of the range. (Report, Lemma 6.) The missing steps for Conjecture 28.6 are the normal reduction with its errors, and the coercive estimate on every representation of Sp(2).

**Conjecture 28.6 (the window).** Take Theorem 28.9 with the sign of Proposition 28.13 and with (a) the pull-back connection and wall radius rho, or (b) the collar connection of Proposition 28.13 and the Fubini-Study metric at the wall. For large M the hypotheses of Lemma 28.14 hold, with the eight states being one copy of the 4 at the zero section in one Gamma-hat degree and one at the boundary in the other. For a family of metrics and mass profiles with a uniform positive decay rate, the off-diagonal block is exponentially small in l. The compression of a smooth function tends to (Q_B(a|_{S^4}), Q_Y(a|_{CP^3})), with Q_B and Q_Y(x_a) = -Gamma_a/5, and Q_Y(y_T) a multiple of T, equal to the level-one value of Example 16.9 times w(rho) in case (a), and equal to it in case (b). This concerns compression maps, in line with Counterexample 28.17.

**Result 28.5 (Python, the radial system).** We solve T on the multiplicity spaces, with Hermitian Clifford generators, so that c(dx) = i Z in the skew convention of Theorem 28.9. For horizontal scale h, after absorbing the half-density h^2 rho, T = i Z d/dx + A_0/h + A_1/rho + (rho/h^2) A_2 + i phi tau, with -s(x) A_E/rho added for a collar connection. We take h = 1, so that T = i Z d/dx + D_6(rho(x)) + i phi(x) tau, with D_6 built from the structure constants of sp(2), rho(x) = rho_inf tanh(x/rho_inf), phi(x) = phi_0 tanh(x/w_0), w_0 = 0.3, in units with S^4 of radius 1, by the quadratic form of T^* T with P1 elements on a graded grid. This rho is not exactly a product near the wall. Rayleigh quotients of the exact form bound the values from above, and with three-point quadrature they approximate those bounds. Small entries have a mesh floor that depends on the parameters: at (phi_0, l) = (6, 4) the lowest value is 0.00548, 0.00401, 0.00355 for 2500, 5000, 10000 elements, so such entries do not establish a zero continuum value. At x = 0 the exponents are the values for R^3: +-1, +-2 (three times), +-3 on the 4.

| phi_0 | l = 2 | l = 3 | l = 4 | next singular value, l = 4 |
|---|---|---|---|---|
| 3 | 0.406 | 0.159 | 0.066 | 1.293 |
| 4 | 0.288 | 0.088 | 0.028 | 1.452 |
| 5 | 0.200 | 0.045 | 0.011 | 1.665 |
| 6 | 0.132 | 0.021 | floor | 1.818 |
| 8 | 0.049 | floor | floor | 1.852 |

(rho_inf = 1, representation 4; the next value at larger phi_0 is 1.86 to 1.87.) The lowest value falls with the exponent of the constant-coefficient system, the smallest |Re kappa| of i Z (D_6(rho) - i phi tau): measured between l = 3 and 4, 0.877, 1.155, 1.464 at phi_0 = 3, 4, 5, against 0.856, 1.151, 1.476, as numerical evidence for these profiles, without a general tunnelling theorem. At large phi, kappa = phi/2 - 2/rho + O(1/phi) (phi = 64: 30.07 at rho = 1, 31.07 at rho = 2). The formula 2 mu exp(-mu l) of lemma 09 belongs to a separable interval and does not carry over.

On the two modes, at rho_inf = 1, l = 3, with the sign of Proposition 28.13, the boundary mode being the left singular vector; the core fibre parts at phi_0 = 16, 40 are below what the computation resolves:

| phi_0 | zero section: position, Q(x_a)/(Gamma_a/5), tr(B t-hat)/tr B | boundary: position, Q(x_a)/(Gamma_a/5), tr(B t-hat)/tr B, Z, tau |
|---|---|---|
| 10 | 0.39, -1.0000, -3e-7 | 2.93, -1.0000, -0.645, 0.944, -1.117 |
| 16 | 0.28, -1.0000, 1e-11 | 2.96, -1.0000, -0.658, 0.976, -1.146 |
| 40 | 0.16, -1.0000, 1e-11 | 2.99, -1.0000, -0.663, 0.996, -1.162 |

Against Proposition 28.13, at l = 3:

| rho_inf | wall radius | -w(rho) | phi_0 = 16 | phi_0 = 32 | next value, phi_0 = 16 | second singular value of A |
|---|---|---|---|---|---|---|
| 0.5 | 0.500 | -0.529 | -0.493 | -0.521 | 1.992 | 1.992 |
| 0.7 | 0.700 | -0.579 | -0.562 | -0.575 | 1.966 | 1.966 |
| 1.0 | 0.995 | -0.665 | -0.658 | -0.663 | 1.864 | 1.865 |
| 1.5 | 1.446 | -0.788 | -0.785 | -0.787 | 1.660 | 1.661 |
| 2.0 | 1.810 | -0.861 | -0.858 | -0.860 | 1.557 | 1.556 |
| 3.0 | 2.285 | -0.921 | -0.918 | -0.919 | 1.487 | 1.486 |

*Collar connection.* With rho(l) = 1 and s(x) = (1 + tanh((x - l + 1)/0.15))/2 multiplying the vertical connection term to be removed, at phi_0 = 8, 16, 32: the boundary mode has tr(B t-hat)/tr B = -1.0000 and Q(x_a)/(Gamma_a/5) = -1.0000, the next value is 1.733, that is sqrt 3, and the core mode is unchanged. The switch is nonzero, though tiny, at x = 0, whereas the smooth extension needs a cutoff vanishing near the zero section, so these rounded values support the limiting model and do not establish exact finite-mass equality.

*Other representations.* The multiplicity is zero on 1, 5, 10, 14, 35. At phi_0 = 16, rho_inf = 1, l = 3, the lowest singular values are 2.188 (wall) and 2.235 (core) on the 16, 1.920 (wall) and 2.828 (core) on the 20, and 3.381 (wall) and 3.463 (core) on the 40, the core values being sqrt 5, sqrt 8 and sqrt 12 up to the mass. The multiplicity zero follows from the central character. The finite wall operator A_V(rho) has no zero at 1500 sampled radii in [0.1, 20] on the 16, 20, 40, 64, a sampled statement; its smallest singular value tends to the core value as rho -> 0 and falls slowly at large rho on the 16 and the 40 (0.33 and 0.67 at rho = 20). Higher representations were not computed, and no estimate in the representation is proved.

*Core block at finite mass.* The density of Proposition 28.16 is nonzero at these points, stable in the mesh to five digits:

| phi_0, l | lambda | tr(B t-hat)/tr B, integrated | max of abs tr(B t-hat) over max of tr B | sup of the pointwise ratio | integrated value over lambda^2 |
|---|---|---|---|---|---|
| 4, 3 | 0.0882 | -5.71e-3 | 6.48e-3 | 0.849 | -0.73 |
| 5, 3 | 0.0453 | -1.84e-3 | 1.97e-3 | 0.856 | -0.89 |
| 6, 3 | 0.0212 | -4.55e-4 | 4.73e-4 | 0.858 | -1.01 |

The pointwise ratio reaches its maximum at the outer wall, where the core density is small, so the breaking comes from the tail of the core mode at the wall. Over phi_0 = 3 to 6, l = 2 to 4, the integrated value over lambda^2 lies between -0.4 and -1.0, an empirical observation with no O(lambda^2) asymptotic proved. These values support the hypothesis of Proposition 28.16 at the sample points, conditional on the density being nonzero in the continuum.

## The compression and the algebra

**Theorem 28.15 (compression, conditional on localization).** Assume an eight-dimensional spectral window splitting under Gamma-hat as W_M (+) V_M with dimensions 4, 4. Then scalar compression is exactly block diagonal. If the isometries differ by at most eta_M from model embeddings with angular compressions Q_B, Q_Y and normal measures with first moments at most C M^{-1/2} at the core and C M^{-1} at the wall, then

    || Q_M(a) - (Q_B(a|_B) (+) Q_Y(a|_Y)) || <= C ||a||_{C^1} M^{-1/2} + 4 ||a||_infinity eta_M.

(Report, Theorem 7.) For a spectral wall as in lemma 24, the domain has constant boundary values, and if a|_Y = c then any boundary-localized family has ||Q_{Y,M}(a) - c|| <= C M^{-1} ||d_r a||_infinity. So localization just inside a spectral wall does not recover arbitrary boundary functions for a fixed smooth a, and the limit needs a local wall or an explicitly different comparison algebra.

**Proposition 28.16 (the exact symmetry test).** For an equivariant copy of 4, B(r) = F(r)^* F(r) = diag(b_a(r) I_2, b_+(r), b_-(r)). All real scalar functions compress to operators commuting with the quaternionic antiunitary j if and only if b_+(r) = b_-(r) for almost every r. If in addition the 5 component is nonzero, the block generates M_2(H). If both the 5 and the 10 components are nonzero, it generates M_4(C). A vanishing integral of tr(B(r) t-hat) alone does not decide this. If a radial h has Q_M(h) = alpha I_W + beta I_V with alpha != beta, then the block projections lie in the generated algebra. (Report, Proposition 8.) At the limit, the real linear image is Herm_2(H) + Herm_4(C), of real dimension 6 + 16 = 22, and the generated real algebra has dimension 16 + 32 = 48.

**Counterexample 28.17 (generation is discontinuous under convergence of compression maps).** Let R_0 = Q_B E_fib, with E_fib the fibre average on CP^3, R_1 = Q_Y, and R_eps = (1 - eps) R_0 + eps R_1. These are unital completely positive, ||R_eps - R_0|| <= 2 eps, and real functions generate M_4(C) under R_eps for every eps > 0, and M_2(H) at eps = 0. So the correct limit statement concerns specified compression maps, and it gives no convergence of the generated algebras. (Report, Counterexample 9.)

**Theorem 28.21 (prescribed windows on the same X).** Let P_y = (1 + y_a Gamma_a)/2 and p_z <= P_{pi(z)} the tautological rank-one projector. With normalized radial profiles chi_0, chi_l supported in disjoint eps-neighbourhoods of the two ends, U_0 v = sqrt 2 chi_0 P_y v and U_l v = 2 chi_l p_z v are isometries into L^2(X; C^4) (+) L^2(X; C^4). Real functions compressed by them generate M_2(H) + M_4(C) at every eps, and the compression differs from Q_B (+) Q_Y by at most C eps ||a||_{C^1}. (Report, Theorem 13.) This proves the connected-space mechanism without Conjecture 28.6, with the window as input. Allowing nonlocal smoothing perturbations, (1 - P) D (1 - P) + P d P makes such a window reducing, which enlarges the operator class and keeps the window as input.

## The finite data

**Proposition 28.18 (charge conjugation and the wall).** With Hermitian generators J_i, C = C_7 (x) j_E has C^2 = -1 and commutes with T_M, D-hat_M and Gamma-hat as a differential expression, and CZ = -ZC. So it exchanges the two local wall conditions and does not preserve the chosen domain. If a pointwise parent antiunitary preserves a window and commutes with real multiplication, every real compressed multiplier commutes with its restriction, which cannot hold on a generated full M_4(C). (Report, Proposition 10.) The complex boundary block therefore requires this loss of the inherited symmetry, or a different real correspondence.

**Remark 28.7 (why one block is quaternionic and the other complex).** Proposition 28.18 proves the signs argument of the first version, with one correction of wording: j_E commutes with the anti-Hermitian Lie algebra action and reverses the Hermitian generators, so that C commutes with i Phi. Numerically (Python, phi_0 = 16, l = 3, rho_inf = 1), exchanging the wall condition exchanges (Z, tau, tr(B t-hat)/tr B) = (0.976, -1.146, -0.658) and (-0.976, 1.146, 0.658) on the boundary mode, with the same singular values, and leaves the zero-section mode unchanged. The formal parent symmetry does not by itself prove that the finite-mass core space is preserved, since C changes the wall domain, and the breaking computed in Result 28.5 shows the size of the effect at the sample points.

**Proposition 28.19 (tunnelling and the grading).** If the window consists of one copy of the 4 in each Gamma-hat degree, then d_M = [[0, conj(lambda_M) I_4], [lambda_M I_4, 0]] after equivariant unitary identifications, by Schur's lemma, and lambda_M = (1/4) Tr(U_{Y,M}^* T_M U_{B,M}). The inherited grading is I_W (+) (-I_V), the auxiliary grading of the doubling, which labels the two ends under localization. The radial Clifford involution Z does not extend across the zero section, so it does not serve as an interval chirality. This grading leaves all four core states in one degree, so W = H (+) H, for the even algebra H + H + M_4(C), still needs a chosen quaternionic grading, such as a marked Gamma_p. (Report, Proposition 11.)

**Proposition 28.20 (the doubled bimodule).** With H = W (+) V, Theorem 16.2 gives K = H (x) conj(H), of dimension 64, with DD = d (x) 1 + Gamma-hat (x) d^c. Its odd part is exactly K^- = Hom(V, W) (+) Hom(W, V), with the desired bimodule actions, and order zero and order one hold exactly on the full K, for its actual even algebra. If lambda != 0, then DD maps K^- into K^+, P_- DD P_- = 0 and DD^2 = 2 lambda^2. So K^- is not a reducing subspace. On K^- the inherited tensor grading is constant; the sheet-sign grading of Theorem 16.7 gives J(x, y) = (y^*, x^*), J^2 = 1, J Gamma_6 = -Gamma_6 J, with zero Dirac operator. The tunnelling map W -> V does not provide the map Hom(V, W) -> Hom(W, V) of lemma 20. (Report, Proposition 12.)

## Balance against Proposition 6 of lemma 24

(Report, Proposition 14, with the numerical statements updated.)

| Structure | What follows |
|---|---|
| Connected scalar parent | Supplied by the chosen disc bundle X. |
| Independent endpoint functions | Derived, by restriction and extension. |
| Base-function restriction at the collapsed end | Derived geometrically; quantitative for localized states. |
| Four core states | Proved for the linear normal model and the resulting twisted operator on S^4. |
| Four boundary states | Proved for the separated collar model; for the pull-back connection, the finite block of Proposition 28.13, with the convergence numerical. |
| Isolated 4 + 4 window | Conjecture 28.6. |
| Limiting quaternionic core compression | Derived once convergence to the core model is established. |
| Exact finite-mass quaternionic block | Requires b_+ = b_-; numerically not satisfied at the sample points resolved. |
| Exact level-one boundary compression | Requires rho -> infinity or the separated collar connection. |
| End grading | Inherited from the chosen self-adjoint doubling. |
| Quaternionic grading axis | Input. |
| The two Hom spaces | The odd part of the coarse correspondence; the selection is additional. |
| KO-6 reality and order conditions | Exact after the specified correspondence and grading choices. |
| Nonzero connector of lemma 20 | Input. |
| Mass value and dependence on l | Radial matching; equivariance gives only lambda I_4; the exponent is computed numerically in Result 28.5. |

Choices that stay inputs: X, E = S^3(S), the hedgehog, the wall condition, the collar connection in case (b), and the doubling of Theorem 16.2. A double with two identical collapsed zero sections removes the outer boundary condition, but the same local core construction gives two quaternionic endpoint maps, so obtaining a complex block needs different structure at one end. T0 stays open, and this is a candidate for its first half.

**Direction.** The next analytic step is the coercive estimate of Lemma 28.14, in case (b) first, where both end models have exact kernels. Since Phi commutes with the Clifford symbol, D + iM Phi is a concentrating pair in the sense of Maridakis ([arXiv:1510.07004](https://arxiv.org/abs/1510.07004), Definition 2.1 and Lemma 2.2), with [D, Phi] of order zero; the symbol condition goes back to Prokhorenkov and Richardson ([arXiv:math/0307251](https://arxiv.org/abs/math/0307251)). Two things are missing there. The spectral separation theorem of [arXiv:2110.11654](https://arxiv.org/abs/2110.11654) (section 2, Assumption 3) needs a leading endomorphism independent of the normal direction, and this fails here, since (n . J)^2 depends on n for spin 3/2; so a separate core analysis or an anisotropic extension is needed. And the wall adds a boundary layer: on a half-line ||(d_t + M) f||^2 = ||f'||^2 + M^2 ||f||^2 - M |f(0)|^2, and exp(-Mt) is a zero mode away from the zero set of the mass. (Read by Terra 6.1 in arXiv HTML; the LaTeX sources were not available to it.)

## Numerical check

By Claude Opus 5.5, in Python (numpy, scipy), 3 Nov 2026: [tools/lemma28_radial.py](../tools/lemma28_radial.py) runs the tests as assertions, and with the argument `tables` it prints the main tables. The slice operator on each multiplicity space is Hermitian, odd under Z, and closes on Hom_H. The structure constants reproduce [t_1, t_2] = t_3 in Sp(1)_a and Sp(1)_b. The decomposition D_6(rho) = A_0 + A_1/rho + A_2 rho holds. The form uses three-point Gauss quadrature on each element. The exact tests are {A_0, A_1} = 0, A_0^2 = 0, 4 on the 4, 5, 9 on the 16, 0, 8 on the 20, 12, 16 on the 40 (the value 0 on the 20 has the twist (1, 5) and gives no core zero mode), A_2 = -(i/8) sum C_ab^alpha c_a c_b c_alpha, and at rho = 1 with the line connection the values D^2 = 0, 5, 5, 12 on the summand O(3) of the 4, 16, 20, 40, against j(j + 4) for (0, 0)-forms in O(1); the whole summand also has the value 10 on the 20. The closed form of Proposition 28.13 is tested to ten digits, and the core mode density in the mesh.
