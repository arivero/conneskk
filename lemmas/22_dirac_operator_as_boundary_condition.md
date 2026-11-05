# The finite Dirac operator as a boundary condition on an interval

For STRATEGY T0, T0b, T10 and T13, following [lemma 12](12_boundary_yukawa_interval.md) and [lemma 20](20_connecting_operator.md). Proved by Claude Opus 5.5, with the identities checked in Python (section "Numerical check").

**Outcome.** Let (H_F, D_F, J_F, Gamma_F) be finite data of signs (+, +, -), and let l ||D_F|| < pi/2. Then D_F, with J_F and Gamma_F, is exactly the lowest spectral window of the pure derivative on an interval of length l, with no bulk mass and no Yukawa term, on the domain fixed by the boundary coupling tan(l D_F). So all the eigenvalues of D_F, Yukawa and Majorana blocks alike, are quantized internal momenta k with tan(k l) equal to a singular value of the coupling. The input is the finite triple: the content is that a consistent parent exists, with these properties:

- Preservation of the domain forces the observables at the wall into C_F, the commutant of D_F in A_F, while A_F acts freely in the bulk.
- The parent satisfies order one for any finite data with order zero.
- The compression is the exact average Q_l(a) = (2l)^-1 int_{-l}^{l} e^{ixD_F} a e^{-ixD_F} dx, so it tends to the finite representation as l -> 0, with defects of order l^2.
- The scalar inner fluctuations of the parent are pure gauge under its allowed endpoint gauge group. On the moving window, they act by the gauge orbit of D_F through the transport along the interval. This reproduces the quadratic term of Chamseddine-Connes-van Suijlekom on the orbit, and it leaves the singular values fixed, so the radial mode of the Higgs field is absent from this parent.

With the family X(l) = tan(l M) and l -> 0, the couplings of the light fermions vanish as m l at fixed mass, the tower decouples, and the broken gauge directions go to pi/(2l). The parent algebra is matrix-valued, so T0 for a commutative parent remains open.

## Setting

Let H_F = H_+ (+) H_- be finite-dimensional, Gamma_F = diag(1, -1), let c : H_+ -> H_- be antiunitary, and put J_F(a, b) = (c^-1 b, c a), so that J_F^2 = 1 and J_F Gamma_F = -Gamma_F J_F. Let D_F = [[0, M\*], [M, 0]] with M : H_+ -> H_-. Then J_F D_F = D_F J_F is equivalent to M = c M\* c. By the Takagi factorization, in bases related by c, we may write M = V |M| with a unitary V satisfying V = c V\* c.

Let l > 0 with l ||D_F|| < pi/2, and define X : H_- -> H_+ by

    tan(l D_F) = [[0, X], [X\*, 0]],   that is,   X = tan(l |M|) V\*.

Since J_F commutes with real functions of D_F, c X = X\* c^-1. Conversely, every X with c X = X\* c^-1 arises from exactly one such D_F, namely D_F = l^-1 arctan of the block operator. In the limit, X = l M\* + O(l^3).

**The parent.** On H_l = L^2([0, l]; C^2) (x) (H_+ (+) H_-), write psi = (Q_L, Q_R; U_L, U_R), with Q valued in H_+ and U in H_-. Let (D psi)_L = psi_R' and (D psi)_R = -psi_L' on both fields, the operator of lemma 12 with no bulk mass, on the domain

    Q_R(0) = 0,   U_L(0) = 0,   Q_R(l) = X U_R(l),   U_L(l) = -X\* Q_L(l).

Call it D_X. Put Gamma^ psi = (Q_L, -Q_R; U_L, -U_R) and J^ psi = (c^-1 U_R, -c^-1 U_L; -c Q_R, c Q_L). Let (E psi)_L = psi_R and (E psi)_R = -psi_L, so that D_X = E d/dx on its domain.

In the Standard Model form of the classification, with E = Hom(V, W) and W = W_+ (+) W_-, one takes H_+ = E_+ (+) E_-\* and H_- = E_- (+) E_+\*, with c the adjoint map. At X = 0, the Q-fields have boundary type (a) and the U-fields type (b), in the terms of lemma 09; for X != 0 the modes continue from those zero modes, which generally lift. A single matrix X encodes the Yukawa blocks and the Majorana block together. Its entries need not keep the original block pattern, since the tangent brings in higher powers of D_F: for M = [[a, b], [b, 0]] real symmetric, X_22 = (l^3/3) a b^2 + O(l^5).

## The window

**Theorem 22.1.** D_X is self-adjoint with compact resolvent, and J^^2 = 1, J^ D_X = D_X J^, J^ Gamma^ = -Gamma^ J^, Gamma^ D_X = -D_X Gamma^. Let R(x) = exp(x Gamma_F D_F), and define W : H_F -> H_l so that for phi = (a, b), the L-components (Q_L, U_L) of W phi at x are l^{-1/2} R(x)(a, 0), and the R-components (Q_R, U_R) are l^{-1/2} R(x)(0, b). Then W is an isometry and

    D_X W = W D_F,    J^ W = W J_F,    Gamma^ W = W Gamma_F.

With sigma_k the singular values of M and theta_k = l sigma_k, the signed spectrum of D_X is (n pi +- theta_k)/l, n in Z, with multiplicities added when values coincide; a zero singular value gives a zero mode of multiplicity two. So the spectrum of |D_X| consists of the sigma_k and of (n pi +- theta_k)/l for n >= 1, and ran W is the spectral subspace of |D_X| <= ||D_F||, and the next level is at least (pi - l ||D_F||)/l.

*Proof.* Self-adjointness is Lemma 12.1. Since Gamma_F D_F is anti-Hermitian, R(x) is unitary, and with C(x) = cos(x |M|), C'(x) = cos(x |M\*|), S(x) = V sin(x |M|),

    R(x)(a, 0) = (C(x) a, -S(x) a),    R(x)(0, b) = (S(x)\* b, C'(x) b).

Isometry follows from the unitarity of R(x) and the orthogonality of the L- and R-components. The conditions at 0 hold since S(0) = 0. At l, using V\* cos(l |M\*|) = cos(l |M|) V\*, we get X C'(l) = S(l)\* and X\* C(l) = S(l), which are the conditions at the wall. For the derivative, the L-part of D W phi is d/dx R(x)(0, b) = R(x) Gamma_F D_F (0, b) = R(x)(M\* b, 0), and the R-part is -d/dx R(x)(a, 0) = R(x)(0, M a); together these are W D_F phi. The relations for Gamma^ are direct. For J^, use c |M| c^-1 = |M\*| and V = c V\* c, which give c^-1 C' = C c^-1 and c S(x)\* = S(x) c^-1. The signs of the parent follow in the same way, using c X = X\* c^-1 for the domain. For the spectrum, constant unitaries on Q and on U commute with E d/dx and bring X to diag(tan theta_k), which reduces to Example 12.5 in each channel. ∎

**Corollary 22.2 (conjugated form).** D_X = R (D_0 + E Gamma_F D_F) R\*, with R acting pointwise on the pair (Q, U) and D_0 the uncoupled operator, X = 0. So after this unitary change of domain, D_F is a constant matrix connection, odd for the grading, with relative endpoint rotation R(l). This is equation (21) of lemma 20, for general D_F.

*Proof.* D(R phi) = R(D phi + E R\* R' phi), and R\* R' = Gamma_F D_F. For phi in the uncoupled domain, the computation at the wall in the proof above shows that R phi satisfies the coupled conditions. ∎

So in this family a fermion mass is a momentum: D_X has no mass term, and the light eigenvalue k = theta/l is fixed by tan(k l) = tan(theta), a singular value of X. In the finite description, the condition relating k to l is lost and the value appears as free data in D_F.

## The parent as a real spectral triple

Let (A_F, H_F, D_F, J_F, Gamma_F) be finite data as above, with an even representation pi = pi_+ (+) pi_- of a unital finite-dimensional real or complex \*-algebra A_F, faithful, unital and satisfying order zero, with pi°(b) = J_F pi(b)\* J_F^-1. Order one is not assumed. Let

    C_F = {a in A_F : [pi(a), D_F] = 0},    A_l = {f in C^infinity([0, l], A_F) : f(l) in C_F},

with f acting pointwise by pi_+(f(x)) on Q and pi_-(f(x)) on U.

**Theorem 22.3.**

1. A function f in C^infinity([0, l], A_F) preserves Dom D_X if and only if f(l) lies in C_F.
2. (A_l, H_l, D_X, J^, Gamma^) is a real even spectral triple, with [D_X, pi(f)] = E pi(f') and J^ pi(g)\* J^^-1 = pi°(g) pointwise.
3. It satisfies order zero and order one, with signs (+, +, -).

So A_F acts freely in the bulk, and the boundary condition restricts the observables at the wall to the commutant of D_F. In the Standard Model data with nonzero Yukawa blocks, this is the algebra {(lambda, lambda, m)} of the photon and gluons; with vanishing Yukawa blocks the commutant is larger. Order one holds in this parent whatever the finite data, for its pointwise algebra: the finite condition appears only on the truncation, and arbitrary compressions need not preserve either order condition.

*Proof.* Item 1: at l, the traces Q_L(l) and U_R(l) are free, and applying f to the conditions gives pi_+(f(l)) X = X pi_-(f(l)) and pi_-(f(l)) X\* = X\* pi_+(f(l)), as in Result 3 of lemma 20. That is [pi(f(l)), tan(l D_F)] = 0, equivalent to [pi(f(l)), D_F] = 0 because l ||D_F|| < pi/2 makes D_F a function of tan(l D_F). At 0 the conditions are preserved since pi is even. Item 2: the commutator is the Leibniz rule. Conjugation by J^ acts on (Q, U) as J_F does, and pi(g) acts identically on the two spin components, which gives the second formula. This preserves the domain since J_F commutes with D_F. Item 3: pi(f(x)) and pi°(g(x)) commute at each x by finite order zero, and E commutes with both; so [E pi(f'), pi°(g)] = E [pi(f'), pi°(g)] = 0. ∎

This is consistent with Counterexample 4 of lemma 20, whose finite data A_F = C + C, D_F = m sigma_1 fail order one while the parent satisfies it.

## The compression

Let Q_l(T) = W\* T W for a bounded operator T on H_l. For T(x) a bounded function with values in the even operators on H_F, acting pointwise and identically on both spin components, we write T for the multiplication operator.

**Theorem 22.4.**

    Q_l(T) = l^-1 int_0^l cos(x ad_{D_F})(T(x)) dx,      Q_l(E T) = -l^-1 int_0^l sin(x ad_{D_F})(T(x)) dx.

For constant a in A_F,

    Q_l(a) = sinc(l ad_{D_F})(pi(a)) = (2l)^-1 int_{-l}^{l} e^{ix D_F} pi(a) e^{-ix D_F} dx,

so in an eigenbasis of D_F with eigenvalues mu_i, the matrix elements are pi(a)_{ij} sin(l (mu_i - mu_j))/(l (mu_i - mu_j)). Moreover:

1. Q_l(A_l) = Q_l(C^infinity([0, l], A_F)), so the image of the parent algebra contains Q_l(a) for every a in A_F.
2. ||Q_l(a) - pi(a)|| <= (l^2/6) ||[D_F, [D_F, pi(a)]]|| <= (2/3) l^2 ||D_F||^2 ||a||.
3. Q_l([D_X, f]) = [D_F, Q_l(f)] for f in A_l.
4. With a' = Q_l(a) and b' = J_F Q_l(b)\* J_F^-1, ||[a', b']|| <= (8/3) l^2 ||D_F||^2 ||a|| ||b||, and ||[[D_F, a'], b'] - [[D_F, pi(a)], pi°(b)]|| <= (16/3) l^2 ||D_F||^3 ||a|| ||b||.

So as l -> 0 with D_F fixed, D_F, J_F and Gamma_F stay exact, and the compressed observables converge to pi(A_F) with rate l^2. The finite order conditions hold in the limit exactly when they hold for the finite data.

*Proof.* From the definition of W, the expectation of T splits into the L- and R-parts, so Q_l(T) is l^-1 int of the Gamma_F-even part of R(x)\* T(x) R(x). Put K = Gamma_F D_F. For even Z, ad_K Z = Gamma_F [D_F, Z], which is odd, and ad_K (Gamma_F [D_F, Z]) = -[D_F, [D_F, Z]]. So the even part of e^{-xK} T e^{xK} is cos(x ad_{D_F})(T). Likewise, E exchanges the L- and R-parts with a sign, so Q_l(E T) is l^-1 int of Gamma_F times the odd part of R\* T R, and that odd part is -Gamma_F sin(x ad_{D_F})(T). The formula for constant a follows from cos(x ad_D)(Z) = (e^{ixD} Z e^{-ixD} + e^{-ixD} Z e^{ixD})/2.

Item 1: the map f -> Lambda(Q_l(f)), for a linear functional Lambda, is integration against a smooth density. If it vanishes on A_l, which contains all f of compact support in [0, l), the density vanishes on [0, l), hence everywhere by continuity. Item 2: by Taylor's formula with integral remainder, ||cos(x ad_D)(Z) - Z|| <= (x^2/2) ||ad_D^2 Z||, since cos(x ad_D) has norm at most 1 by the average formula; averaging over x gives l^2/6. Item 3: P commutes with D_X. It also follows from the two formulas by integration by parts, where the boundary term at l vanishes because f(l) is in C_F. Item 4: J_F commutes with D_F, so b' is the same average of pi°(b). Expand both commutators with the bound of item 2 and ||[D_F, Z]|| <= 2 ||D_F|| ||Z||. ∎

The convergence is a statement about the maps Q_l, on the operator systems, in the setting of Connes and van Suijlekom (arXiv:2004.14115, sections 1 and 3). The generated algebra is not continuous at l = 0. An analytic example: let M = [[0, 0, 1], [0, 0, 1], [1, 1, 0]], D = [[0, M], [M, 0]], with A_F = C^3 acting diagonally and equally on the two blocks. With P_1, P_2 the first two channel projections, [Q_l(P_1), Q_l(P_2)]_{12} = -l^2/3 + O(l^4), so the compressions of commuting projections generate a noncommutative algebra for small nonzero l. On the one-generation Standard Model data, a numerical closure with tolerance 10^-7 gives complex dimension 15 for the algebra generated by pi(B), with B = C + H + M_3(C), and 30 for Q_l(B) at l = 0.3; these are numerical values with no certified rank.

## Scalar fluctuations

**Theorem 22.5.** Let h be smooth with values in the anti-Hermitian elements of A_F. The self-adjoint one-forms of the parent are exactly the E pi(h). Let u' = -h u, u(0) = 1, and let w = u(l), a unitary of A_F. Then

    D_X + E pi(h) = pi(u) D_{X_w} pi(u)\*,     X_w = pi_+(w)\* X pi_-(w),

and the window of D_{X_w} carries pi(w)\* D_F pi(w). With the real structure, for A = E pi(h) we have J^ A J^^-1 = E J_F pi(h) J_F^-1, and D_X + A + J^ A J^^-1 has the window U_w\* D_F U_w, with U_w = pi(w) J_F pi(w) J_F^-1, and this commutes with J_F. Moreover, with u~(x) = u(x) w\*, which lies in A_l since u~(l) = 1, and U~ = pi(u~) J_F pi(u~) J_F^-1,

    D_X + A + J^ A J^^-1 = U~ D_X U~\*.

So every scalar connection in this model is gauge equivalent to the original parent under the allowed endpoint gauge group.

*Proof.* A one-form is sum f_1 [D_X, f_2] = E pi(sum f_1 f_2'), and E pi(h) is self-adjoint exactly when h is anti-Hermitian, since E is anti-Hermitian and commutes with pi(h) and pi is faithful. Every smooth such h arises: with b(x) = int_l^x h, we have b(l) = 0, so b is in A_l, and [D_X, b] = E pi(h). Next, pi(u)\* D pi(u) = D + E pi(u\* u'), and pi(u)\* E pi(h) pi(u) = E pi(u\* h u), so the sum is D with no connection term. At 0 the conditions are unchanged. At l, the substitution psi = pi(u) phi gives the conditions with X_w. Then tan(l pi(w)\* D_F pi(w)) has the block X_w. For general w, this operator need not commute with J_F, so we use the spectrum and the isometry of Theorem 22.1 without its real-structure part. For the real fluctuation, J^ commutes with E, u(x) is replaced by pi(u) J_F pi(u) J_F^-1, using finite order zero, and U_w commutes with J_F, so the real window follows. The last formula follows by differentiating, with the endpoint condition. ∎

**Corollary 22.6 (the quadratic term as transport).** By Chamseddine-Connes-van Suijlekom (arXiv:1304.7583, section III), for unitary v in A_F, with U = v J v J^-1, one has U D U\* = D + A_(1) + A~_(1) + A_(2), for the universal form v delta(v\*). Taking v = w\*, on the gauge orbit the fluctuation of the parent, which satisfies order one and has no quadratic term, gives on the moving window exactly the fluctuated operator of that framework (equations (10)-(11) of section III.2 there), quadratic term included, for finite data that fail order one. This answers the first open point of [lemma 19](19_fluctuations_without_order_one.md) on these gauge orbits and with the moving window. For the two-point data with J = sigma_1 K and w = diag(e^{i alpha}, e^{i beta}), it gives the upper link m e^{-2 i (alpha - beta)}, which is m e^{2 i psi} of Corollary 19.2 with psi defined from v = w\*. Theorem 22.5 and the covariant projection of [lemma 14](14_gauge_covariant_reduction.md) share a transport principle. The fixed compression, as in [lemma 13](13_gauge_sector_truncation.md), is a different object: by Theorem 22.4, it gives Q_l(E pi(h)) = -[D_F, l^-1 int_0^l x pi(h) dx] + O(l^3 ||D_F||^3 ||h||) for h fixed, so that for constant h it is -(l/2)[D_F, h], while the first derivative of the transported operator is -l [D_F, h]. The difference is the contribution of the moving spectral projection.

**No-go theorem 22.7 (the radial mode).** *Hypotheses:* the parent above, on one interval, with fixed X, no bulk masses, and scalar inner fluctuations from the even algebra A_l, with the moving spectral window. *Conclusion:* the fluctuations leave all singular values of the finite Dirac operator fixed. In the usual Standard Model representation with nonzero Yukawa data, the normalized shifted Higgs quaternion runs through the unit quaternions, a three-dimensional gauge orbit, with no radial mode. Degenerate data can have a smaller orbit. A fixed compression can show changes in singular values at second order, so the window has to be named.

*Proof.* Theorem 22.5: D_F and pi(w)\* D_F pi(w) are unitarily equivalent. The same holds with U_w. ∎

*Known escapes.*

These lie outside the hypotheses, and each needs its own construction.

- The coupling X as a field on the wall, with its own kinetic term and potential.
- Connections odd for the grading, as in Corollary 22.2 and [lemma 23](23_two_gradings_interval.md): the fluctuation K -> K + delta K changes the singular values.
- Bulk masses that do not commute with the gauge action.
- Two or more internal dimensions, where a connection has curvature, although curvature alone does not prove a radial mode.
- An additional composite or other degree of freedom; a quantum effective action on the same configuration space does not by itself add a radial coordinate.
- A fluctuation of the finite data alone, as with the radial parameter of lemma 19, which is not the moving window.

*Direction.* On the interval, the even connection is pure gauge up to its boundary effect, so the finite orbit is all it can reach. The physical Higgs modulus must then be sought at the wall, in odd directions, or in more dimensions. At the 10 -> 9 endpoint this agrees with T10, where the Higgs is frozen.

## The gauge sector and the 10 -> 9 family

**Proposition 22.8.** Consider the product of M^4 with this parent, with algebra of functions f(y, x) valued in A_F and f(y, l) in C_F. Then the gauge one-forms sum f_1 d_mu f_2 take values in C_F at x = l. Assume, in addition, a flat product, a positive five-dimensional Yang-Mills kinetic form, the trivial background, unrestricted endpoint variation in the allowed directions, and no additional boundary kinetic or mass terms. Then the directions in the Lie algebra of C_F have masses n pi/l, n >= 0, and the orthogonal directions have masses (n - 1/2) pi/l, n >= 1. The physical gauge algebra comes from the skew-adjoint elements through the real gauge representation, with its kernel and any unimodularity condition.

*Proof.* The first statement is direct evaluation at x = l. The rest is the interval spectrum in the gauge A_5 = 0, with Neumann conditions at 0, and with Neumann or Dirichlet conditions at l. ∎

In the Standard Model data with nonzero Yukawas, M_W = M_Z = pi/(2l). The Lie algebra of C_F has dimension 10 before unimodularity; with the unimodularity condition of Chamseddine-Connes-Marcolli (arXiv:hep-th/0610241, section 2.5), the massless modes are the photon and the gluons. These are the boundary conditions of Higgsless models (Csaki, Grojean, Murayama, Pilo and Terning, Phys. Rev. D 69 (2004) 055006), and the fermion formula tan(m L) = M_D L is equation (5.6) of Csaki, Grojean, Hubisz, Shirman and Terning (Phys. Rev. D 70 (2004) 015012); [paper/LITERATURE.md](../paper/LITERATURE.md), section C. Boundary spectral geometry for the Standard Model has been studied by Chamseddine and Connes (arXiv:1008.3980, section 5). What is added here, as far as our searches went, is the combination: the real structure, the finite triple as an exact window, the wall algebra C_F, the compression formula and the fluctuations. A wider claim of novelty would need a fuller comparison.

**Corollary 22.9 (the 10 -> 9 family).** Fix a block M_0 for the light fermions and a block Theta/l on an orthogonal channel, compatible with J_F and the grading, with 0 < Theta < pi/2, for the top and if wanted for the Majorana block. Let D_F(l) have M(l) = M_0 (+) Theta/l, and let l -> 0. Then:

1. X(l) has the light block tan(l |M_0|) V_0\* = l M_0\* + O(l^3) and a heavy block with singular values tan(Theta): the light couplings vanish as m l at fixed mass m.
2. The heavy channel has mass Theta/l, the broken gauge directions have mass pi/(2l), and the other levels diverge.
3. The massless gauge sector is C_F. Let P_L be the projection reducing D_F(l) to the fixed light block D_L. For constant a, P_L Q_l(a) P_L = sinc(l ad_{D_L})(P_L pi(a) P_L), with ||P_L Q_l(a) P_L - P_L pi(a) P_L|| <= (2/3) l^2 ||D_L||^2 ||pi(a)||, also when pi(a) mixes light and heavy channels. The limiting light compression need not be a representation, since products can pass through the heavy subspace. The full estimate of Theorem 22.4 does not apply, because l ||D_F(l)|| tends to Theta. For example, with D_F(l) = sigma_1 (x) diag(m, Theta/l) and pi(a) = 1 (x) sigma_1, one has Q_l(a) = sinc(Theta - l m) pi(a), which tends to sinc(Theta) pi(a).
4. With l = pi/(2 M_W), we get X_q ~ (pi/2) m_q/M_W, which has the form of y_q = sqrt(2) m_q/v -> 0 at fixed mass, as the coupling vanishes while the mass stays. Identifying X_q with the four-dimensional Yukawa coupling is a hypothesis.
5. The ratio is m_t/M_W = 2 Theta/pi < 1, and M_W/M_Z = 1.

So the 10 -> 9 proposal is realized at this level as a limit l -> 0, with W, Z and top at the tower scale and the light fermions keeping explicit masses. Item 5 does not reach m_t/M_W = sqrt(8/3), which belongs to the interior. This is a statement in the stated family: lowest level, no bulk mass, strict wall algebra. Bulk masses for the top, and a changed gauge wall condition, are directions beyond it.

**A numerical comparison for the interior (Python).** A separate model, with a finite wall scalar and Neumann conditions at 0, lies outside Proposition 22.8 and No-go theorem 22.7. In it, the mass of a broken direction satisfies t tan t = s, with t = M l and s = g^2 v^2 l^2/4 (for the Z, s/cos^2 theta_0), which has the form of M_k tan(M_k pi R) = -V in Csaki et al. (arXiv:hep-ph/0305237, section on mixed boundary conditions, read in the LaTeX source), with the sign convention of V there. If g'^2/g^2 = 3/5 is taken at all scales, M_W^2/M_Z^2 goes from 5/8 as s -> 0 to 1 as s -> infinity. It equals the measured 0.777 at M_W l = 1.03, with 1/l = 78 GeV and a next W level at 280 GeV; whether collider searches allow this would need the couplings, branching fractions and an applicable limit, which we have not analyzed. The top needs M_W l < 0.96 for m_t/M_W = sqrt(8/3), or M_W l < 0.73 for the measured ratio, in the lowest level with no bulk mass. So in the flat tree-level toy without bulk masses or running, the top and gauge requirements are incompatible. It does show the interior interpolating between the spectral-action value 5/8 and the endpoint value 1. The directions are bulk masses, warping and running.

## What is input and what is derived

The finite data (A_F, H_F, D_F, J_F, Gamma_F) are all inputs, so the existence of the window is close to a reparametrization: X = tan(l D_F). The derived statements are the wall algebra C_F for that input, the order conditions of the parent, the compression formula with its rate, the form of the fluctuations, and the gauge spectrum under the stated assumption. The window identifies D_F, J_F and Gamma_F exactly, while the represented algebra is obtained through compression and is not an exact representation of A_F at l > 0. In particular, this does not select A_F. T0 asks for a commutative parent: a natural next step is a two-stage parent, compressing functions on S^4 and CP^3 at level one to get A_F-valued functions on the interval, and then taking this window, where the difficulty is the same interface problem as after Result 7 of lemma 20.

## Numerical check

By Claude Opus 5.5, in Python (numpy and scipy), 3 Nov 2026, in a temporary directory, not kept.

- Random complex symmetric M on C^5, l ||M|| = 1.3: D u_+(a) = u_-(M a) and D u_-(b) = u_+(M\* b) by finite differences, to about 10^-9; boundary conditions and J^ to about 10^-15; norm of W to 10^-13.
- Q_l(a) = sinc(l ad)(a), by quadrature, to 2 x 10^-8. The formula for Q_l(E T), with a nonconstant T, to 10^-14.
- One-generation Standard Model data with Yukawas and the rank-one Majorana block, with signs, order zero and order one exact on B = C + H + M_3(C), and commutant of D in B of real dimension 20. At l = 0.1 and 0.03, ||Q_l(a) - a + (l^2/6)[D, [D, a]]|| is 10^-5 and 4 x 10^-8, and the order-one defect of Q_l is 1.5 x 10^-4 and 1.2 x 10^-5, which scales as l^2.
- The dimensions of the generated algebras quoted above, 15 and 30, from a numerical closure with tolerance 10^-7, not retained and not certified; at smaller l the numerical rank depends on the tolerance.
- The roots of t tan t = s, and the values quoted in the comparison for the interior.
- On the two-point data with J = sigma_1 K: D + A_(1) + A~_(1) + A_(2) = U D U\* to 4 x 10^-16, and the link of U_w\* D U_w equal to m e^{-2 i psi}.
- The bounds of Theorem 22.4, items 2 and 4, on 30 random samples of the one-generation data: largest ratios to the bound 0.33, 10^-4 and 10^-3.
