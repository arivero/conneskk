# Two sheets as the two ends of one connected commutative parent

For STRATEGY T0 and T0b, following [lemma 16](16_coarse_truncation.md) (Example 16.9), [lemma 24](24_commutative_parent.md) (Proposition 6) and [lemma 09](09_massive_chiral_interval.md). The propositions are proved by Claude Opus 5.5 by representation theory; the window is a conjecture with numerical support (Python). Referee pending: Astra job 28 ([prompt](prompts/28_two_walls_connected_parent.md)).

**Outcome.** In Example 16.9 the second sheet and the restriction to functions on S^4 were inputs. Here they come from one connected space: the disc bundle X of Lambda^2_- T^*S^4 over S^4, the mapping cylinder of the twistor fibration, with zero section S^4 and boundary CP^3. A smooth function on X has an arbitrary boundary value on CP^3, and at the zero section it is the pullback of a function on S^4.

The line bundle O(1) of Example 16.9 does not extend over X (Proposition 28.1). A rank-4 bundle pulled back from S^4 does, with a hedgehog mass term, and then the numerics give one light pair in the Sp(2) representation 4, with one member at the zero section and the other at the boundary, exponentially small in the length, with a gap of order 1 (Result 28.5). The compressed functions on the two ends are as in Example 16.9: S^4 functions alone at the zero section, with generated real algebra M_2(H), and CP^3 functions at the boundary, with generated real algebra M_4(C) (Propositions 28.3, 28.4 and Result 28.5). If the conjecture holds, then the direct sum M_2(H) + M_4(C), with the grading by end, comes from one connected commutative algebra.

## Setting

Let G = Sp(2), K = Sp(1)_a x Sp(1)_b and H = Sp(1)_a x U(1)_b, so that G/K = S^4, K/H = S^2 and G/H = CP^3. Let S be the bundle G x_K (1, 2), so that CP^3 = P(S). The normal bundle of the zero section is G x_K (1, 3), and away from it X = (0, l] x CP^3, with radial coordinate x and S^2 fibres of radius rho(x), rho(x) ~ x at x = 0. Charges of U(1)_b are normalized so that the doublet of Sp(1)_b has +-1. The isotropy representation is (2)_{+-1} (+) (1)_{+-2}. The spinors of X restrict on a slice to Sigma_6 = Sigma^+ (+) Sigma^-, with c(d_x) = Z the chirality of Sigma_6, where

    Sigma^+ = (1)_2 (+) (1)_0 (+) (2)_{-1},   Sigma^- = (2)_1 (+) (1)_0 (+) (1)_{-2}.

The representation 4 of G restricts to (2)_0 (+) (1)_1 (+) (1)_{-1}, that is (2, 1) (+) (1, 2) of K. Let Gamma_a be the Clifford generators on 4, with Gamma_5 commuting with K and equal to +-1 on the two summands, and let x_a(g) be defined by lambda(g) Gamma_5 lambda(g)^-1 = x_a(g) Gamma_a.

**Proposition 28.1 (the twist).**

1. For k != 0, O(k) on CP^3 does not extend to a line bundle on X, since H^2(X) = H^2(S^4) = 0 while O(k) has degree k on the fibre S^2.
2. The pullback of S to X restricts on CP^3 to O(1) (+) O(-1), as the tautological splitting. So E = S^3(S), which is pulled back from S^4 and has trivial connection along the fibres, restricts to O(3) (+) O(1) (+) O(-1) (+) O(-3). The summand O(3) gives the Dolbeault operator on O(1) of Example 16.9, since Sigma (x) O(3) = Lambda^{0,*} (x) O(1).
3. On E the section Phi(v) = phi(|v|) (v-hat . T), with T the spin-3/2 generators and phi odd and smooth, is smooth and G-equivariant, with zero set exactly S^4. In the frame of the slice it is phi(x) tau, with tau diagonal in the summands, with eigenvalues +-3/2, +-1/2.

So we take the Callias-type operator T = D_X(E) + i Phi on spinors of X tensored with E, and the self-adjoint operator D-hat = [[0, T^*], [T, 0]], with the grading Gamma-hat = diag(1, -1). At x = l we take the local condition Gamma-hat Z = -1 on the doubled spinor, that is u_even(l) = 0 for T and v_odd(l) = 0 for T^*. It is a chirality condition, elliptic and local, and it preserves the domain under all smooth functions on X.

**Proposition 28.2 (multiplicities).** On a slice, Hom_H(4, Sigma^+ (x) E) and Hom_H(4, Sigma^- (x) E) each have dimension 5. For the summand O(3), the dimensions are 1 and 0. So on 4, the operator on the summand O(3) with its U(1) connection vanishes for every G-invariant metric on the slice, and its kernel contains H^0(CP^3, O(1)) = 4 for every fibre radius.

*Proof.* Tensoring the lists above with the charges of E gives the multiplicities. The operator is odd under Z and maps the multiplicity space of 4 into itself. ∎

**Proposition 28.3 (the zero section).** The fibre operator c_N . nabla + i Phi on R^3 with values in E has zero modes (1, 3) (+) (1, 1) of K, by the Callias count for the positive weights 3/2 and 1/2, with one sign of Phi. On S^4 this gives the Dirac operator twisted by (1, 3) (+) (1, 1). Then Hom_K(4, S^- (x) (1, 3)) has dimension 1, through (1, 2), and Hom_K(4, S^+ (x) (1, 3)) = 0, so the twisted operator vanishes on that copy of 4, in agreement with its index 4. The untwisted part (1, 1) has eigenvalue 2 on the representation 4. Every map in Hom_K(4, S^- (x) (1, 3)) annihilates (2, 1) in 4. These are the twistor spinors of S^4, as sections of S.

*Proof.* The representation count is as in Proposition 28.2, and the Callias count is a reference. For the last sentence, the first-order operator from (1, 2) to (2, 3) in the slice limit is the twistor operator, and its kernel is the 4. ∎

**Proposition 28.4 (the compression).** Let s_v(g) = F lambda(g)^-1 v be a section in the multiplicity space of 4 on a slice, with B = F^* F, which commutes with lambda(H). Write t-hat = 2 i t_3 of Sp(1)_b. Then, with normalization by the norm of s_v,

    Q(x_a) = (tr(B Gamma_5)/tr B) Gamma_a/5,

and for the functions y_T(g) = tr(T Ad(g) t-hat) with T in the Lie algebra sp(2), Q(y_T) is a multiple of T, proportional to tr(B t-hat)/tr B.

*Proof.* End_H(4) is spanned by 1, Gamma_5 and t-hat. Since int lambda(g) Gamma_5 lambda(g)^-1 x_a = int x_a x_b Gamma_b = Gamma_a/5, the part with Gamma_5 gives the first formula. Equivariant maps from 5 to End(4) are multiples of Gamma_a, and tr(Gamma_a Ad(g) t-hat) = 0, so 1 and t-hat contribute nothing. The second formula is Schur's lemma on the representation 10. ∎

Consequently, a mode with F supported on (1, 2) and K-symmetric has tr(B Gamma_5)/tr B = +-1 and tr(B t-hat) = 0. That is the zero section: Q(x_a) = +-Gamma_a/5, and the part of a function that depends on the fibre gives zero. On the boundary with the pure level-one mode, B is the projection on (1)_{-1}, so that tr(B t-hat)/tr B = +-1. Example 16.9 has these values.

**Conjecture 28.6 (the window).** For large phi and l, in the representation 4, T has exactly one small singular value, with right singular vector at the zero section and left singular vector at the boundary. The singular value tends to zero exponentially in l, and the other singular values on all representations stay bounded away from zero. As phi -> infinity, the compression of a smooth function a to the window converges to (Q_S(a|_{S^4}), Q_R(a|_{CP^3})), with Q_S as in Proposition 28.3, and with Q_R(x_a) = -Gamma_a/5 and Q_R(y_T) a nonzero multiple of T, which tends to the level-one value of Example 16.9 as the fibre radius grows.

By Schur's lemma, the off-diagonal block is then lambda times the identity on 4, with lambda the small singular value, so that D_F = lambda sigma_1 on 4 (+) 4, and the grading of the window is Gamma-hat, which is the end. Since Gamma_a generate M_2(H) as a real algebra with the quaternionic structure, and adding a nonzero multiple of a Hermitian element of the 10 breaks it, the real algebras generated by the blocks are M_2(H) and M_4(C). Radial cutoffs make the two blocks independent.

**Result 28.5 (Python, the radial system).** We solve T on the multiplicity spaces, with T = i Z d/dx + D_6(rho(x)) + i phi(x) tau, D_6 built from the structure constants of sp(2), rho(x) = rho_inf tanh(x/rho_inf), phi(x) = phi_0 tanh(x/w), in units with S^4 of radius 1, by the quadratic form of T^* T with P1 elements on a graded grid. At x = 0 the exponents are kappa = +-1, +-2 (three times), +-3, the values for R^3, so no boundary condition is needed there.

| phi_0 | l = 2 | l = 3 | l = 4 | next singular value, l = 4 |
|---|---|---|---|---|
| 5 | 0.744 | 0.350 | 0.175 | 0.973 |
| 6 | 0.540 | 0.174 | 0.058 | 1.013 |
| 8 | 0.217 | 0.028 | 0.0037 | 1.041 |

(rho_inf = 1, w = 0.3, representation 4.) So the lowest singular value falls exponentially in l, at a rate of about 2 per unit length at phi_0 = 8. At larger phi_0 it reaches the floor of the discretization, about 0.004 to 0.02, against a stable next value near 1.04. The Rayleigh quotient bounds it from above. For the representation 16 at phi_0 = 10, the lowest singular value is 1.35. The representations 1, 5, 10, 14, 35 have zero multiplicity. The adjoint pair of problems, with the sign of Phi and the wall condition exchanged, gives the same singular values to four digits when resolved.

On the two modes, at rho_inf = 1, l = 3:

| phi_0 | zero section: position, Q(x_a)/(Gamma_a/5), tr(B t-hat)/tr B | boundary: position, Q(x_a)/(Gamma_a/5), tr(B t-hat)/tr B, Z |
|---|---|---|
| 10 | 0.58, -1.0000, 0.0000 | 2.88, -1.0000, -0.163, 0.865 |
| 16 | 0.38, -1.0000, 0.0000 | 2.94, -1.0000, -0.173, 0.947 |
| 40 | 0.20, -1.0000, 0.0000 | 2.98, -1.0000, -0.171, 0.992 |

At the boundary, for fixed phi_0 = 16, tr(B t-hat)/tr B against rho_inf = 0.5, 0.7, 1, 1.5, 2, 3 is -0.011, -0.047, -0.173, -0.486, -0.698, -0.853, so it tends to the level-one value -1 as the fibre grows, and it is nonzero throughout. With the wall condition above, the boundary mode has a mixture of the summands O(3) and O(+-1), which stays finite as phi_0 grows, since the vertical connection of E couples them at order 1/rho.

**Balance against Proposition 6 of lemma 24.** Derived here, if the conjecture holds: the second sheet, as the second end; the restriction to S^4, from the fibre collapse; the independence of the two blocks, from radial cutoffs; the grading, as the end. Inputs still: the choice of X and of E = S^3(S), the hedgehog Phi, the wall condition, the doubling of Theorem 16.2 to reach E (+) E^*, the real structure and the connector. So T0 stays open, and this is a candidate for its first half.

## Numerical check

By Claude Opus 5.5, in Python (numpy, scipy), 3 Nov 2026; scripts not kept in the repository. The slice operator on each multiplicity space is Hermitian, odd under Z, and closes on Hom_H. The structure constants reproduce [t_1, t_2] = t_3 in Sp(1)_a and Sp(1)_b. The decomposition D_6(rho) = A_0 + A_1/rho + A_2 rho is verified at a fourth value of rho. The form uses three-point Gauss quadrature on each element.
