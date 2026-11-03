# Boundary Yukawa matrices on the interval: from chiral to vectorlike boundary conditions, and towerless textures

Theorems T3 (remaining part) and T8 of [../STRATEGY.md](../STRATEGY.md). Proved by Claude Opus 5.5 without Astra or Fable. Refereed by Terra 6.1 (gpt-6.1-terra, effort max, 3 Nov 2026): of 9 statements, 4 correct, 2 needed amendments and 3 were wrong as first stated (Theorem 12.4 item 2, Theorem 12.7, Corollary 12.9); all corrections are incorporated below and the referee report is appended. The secular equation was checked against direct numerical integration of the ODE; the bounds of Theorem 12.6 and Lemma 12.8 were checked on random samples (section "Numerical check").

## Setting

Let I = [0, l]. A doublet-type field Q in L^2(I; C^2) (x) C^{N_Q} and a singlet-type field U in L^2(I; C^2) (x) C^{N_U} have components (L, R), with grading Gamma = diag(1, -1) on each. As in [lemma 09](09_massive_chiral_interval.md), the bulk operator is (D psi)_L = R' + M R, (D psi)_R = -L' + M L, with diagonal bulk masses M_Q = diag(m_i^Q) and M_U = diag(m_j^U). For a complex N_Q x N_U matrix X, let D_X be this operator on the domain of H^1 functions with

    Q_R(0) = 0,   U_L(0) = 0,   Q_R(l) = X U_R(l),   U_L(l) = -X^dagger Q_L(l).

At X = 0, Q has boundary type (a) and U type (b) of lemma 09. The matrix X is a boundary Yukawa coupling: it couples the two fields only at the wall x = l. We write c_i^Q = -m_i^Q l and c_j^U = m_j^U l, so that c > 0 means that the zero mode of the field at X = 0 is localized near x = 0, away from the Yukawa wall.

**Lemma 12.1.** D_X is self-adjoint with compact resolvent, and Gamma D_X = -D_X Gamma.

*Proof.* The boundary form of lemma 9.1, summed over both fields, is [conj(Q_R) phi_{Q,L} - conj(Q_L) phi_{Q,R} + conj(U_R) phi_{U,L} - conj(U_L) phi_{U,R}] evaluated between 0 and l. At x = l the conditions leave Q_L and U_R free, which is half of the boundary values, and on them the form becomes conj(U_R) X^dagger phi_{Q,L} - conj(Q_L) X phi_{U,R} - conj(U_R) X^dagger phi_{Q,L} + conj(Q_L) X phi_{U,R} = 0. At x = 0 the conditions are those of types (a) and (b). Hence the conditions define a Lagrangian subspace, and the argument of lemma 9.1 applies. Gamma flips the signs of Q_R and U_R together, so it preserves each condition. ∎

## Kernel, index and symmetry breaking

**Theorem 12.2.** For every X,

    ker D_X = {(e^{M_Q x} a, 0; 0, 0) : X^dagger e^{M_Q l} a = 0}  (+)  {(0, 0; 0, e^{-M_U x} b) : X e^{-M_U l} b = 0},

so dim ker_{Gamma=+1} = N_Q - rank X, dim ker_{Gamma=-1} = N_U - rank X, and ind D_X = N_Q - N_U.

*Proof.* As in Theorem 9.2, D psi = 0 forces L = e^{Mx} a and R = e^{-Mx} b on each field. The conditions at 0 remove Q_R and U_L, and the conditions at l reduce to X U_R(l) = 0 and X^dagger Q_L(l) = 0. ∎

Let a compact group G act unitarily on C^{N_Q} and C^{N_U} by rho_Q and rho_U, commuting with the bulk masses. The domain of D_X is G-invariant exactly for g in the stabilizer H_X = {g : rho_Q(g) X = X rho_U(g)}.

**Corollary 12.3 (equivariant index and a no-go).** In R(H_X),

    ind_{H_X} D_X = [ker X^dagger] - [ker X] = [rho_Q] - [rho_U]   (restricted to H_X),

because X maps (ker X)^perp isomorphically and H_X-equivariantly onto ran X = (ker X^dagger)^perp. At X = 0 we have H_X = G, and the index is the chiral class [V_L] - [V_R] of Corollary 9.3. D_X has no zero modes iff X is invertible. This requires rho_Q and rho_U to be isomorphic as H_X-representations, i.e. the residual theory must be vectorlike. For the Standard Model with H = SU(3) x U(1)_em, the quark sector satisfies this. A lepton sector without nu_R does not: a massless left-handed neutrino is forced for every X preserving electromagnetism (H contained in H_X), in agreement with the unpaired nu_L of [job 06](06_vectorlike_odd_factorization.md). ∎

## Exact secular equation

For a field of mass m and lambda > 0 let omega = (m^2 - lambda^2)^{1/2}, and read omega coth(omega l) as k cot(k l) when omega = ik and as 1/l when omega = 0. Define

    alpha_i(lambda) = omega coth(omega l) + m_i^Q,     beta_j(lambda) = omega coth(omega l) - m_j^U,

A = diag(alpha_i) and B = diag(beta_j). Let W be the set of lambda > 0 with lambda^2 < m^2 + pi^2/l^2 for every bulk mass m of the system.

**Theorem 12.4.** For lambda in W, lambda is an eigenvalue of D_X iff det(lambda^2 - A(lambda) X B(lambda) X^dagger) = 0, and its multiplicity is dim ker(lambda^2 - A X B X^dagger). Moreover:

1. alpha_i(0) = 2m/(1 - e^{-2ml}) with m = m_i^Q, which equals f_{Q_i}^2, the value at x = l of the normalized zero mode e^{mx}; likewise beta_j(0) = 2m/(e^{2ml} - 1) = f_{U_j}^2 for e^{-mx}. In terms of c, f^2 = phi(c)^2/l with phi(c)^2 = 2c/(e^{2c} - 1) and phi(0) = 1.
2. On its own window 0 < lambda^2 < m^2 + pi^2/l^2, each alpha_i (and each beta_j) is a strictly decreasing, concave function of lambda^2, positive at 0 and tending to -infinity at the edge of that window, so it vanishes at exactly one point: the lowest positive eigenvalue Lambda_i^Q of Q_i alone with R(0) = 0 and L(l) = 0, respectively Lambda_j^U of U_j alone with L(0) = 0 and R(l) = 0 (the type-(c) problems of lemma 09). On the common window W it is still decreasing and concave but may stay positive (e.g. l = 1, M_Q = diag(0, 4): alpha_2 > 0 on all of W = (0, pi)).

*Proof.* With R(0) = 0, the Q-field solution is R = a sinh(omega x)/omega and L = a(cosh(omega x) + m sinh(omega x)/omega)/lambda. With L(0) = 0, the U-field solution is L = b sinh(omega x)/omega and R = b(m sinh(omega x)/omega - cosh(omega x))/lambda. On W, every S = sinh(omega l)/omega is nonzero. Inserting these into the conditions at l and eliminating b gives lambda^2 c = X B X^dagger A c for c = diag(S_Q) a. The map c -> eigenfunction is linear and injective. Finally, lambda^2 - X B X^dagger A and lambda^2 - A X B X^dagger have kernels of equal dimension for lambda != 0. For item 2, the expansion x coth x = 1 + sum_{n >= 1} 2x^2/(x^2 + n^2 pi^2) gives

    z^{1/2} coth(z^{1/2} l) = (1/l) [1 + sum_{n >= 1} 2 z l^2 / (z l^2 + n^2 pi^2)],

which is strictly increasing and concave in z > -pi^2/l^2. Substituting z = m^2 - lambda^2 gives the claim. The function tends to -infinity at the edge of its own window, and alpha_i = 0 means Q_L(l) = 0. ∎

**Example 12.5 (one flavor, no bulk mass: the interpolation).** For N_Q = N_U = 1 and m = 0 we get alpha = beta = lambda cot(lambda l), and the equation reduces to tan^2(lambda l) = abs(X)^2. With theta = arctan abs(X) in [0, pi/2], the positive spectrum is

    theta/l,   (n pi - theta)/l,   (n pi + theta)/l   (n >= 1).

At X = 0 the light pair is the pair of chiral zero modes of types (a) and (b): zero then has multiplicity two and the positive eigenvalues are n pi/l, each of multiplicity two; theta = pi/2 is reached only as a limit. As abs(X) -> infinity the conditions tend to Q_L(l) = 0 and U_R(l) = 0, so each field becomes type (c), and the spectrum tends to two copies of (r - 1/2) pi/l. The light pair theta/l therefore interpolates continuously between the chiral zero modes and the Connes-Lott mass pi/(2l) of [job 05](05_deconstruction_interval.md). Its eigenvectors span a Gamma-graded two-dimensional space on which D acts as (theta/l) sigma_1, with the Gamma = +1 vector carried by (Q_L, U_L) and the Gamma = -1 vector by (Q_R, U_R). ∎

## Light spectrum and towerless limit

Let F_Q = diag(f_{Q_i}), F_U = diag(f_{U_j}) and Y_0 = F_Q X F_U. Let Lambda_Q = min_i Lambda_i^Q, Lambda_U = min_j Lambda_j^U and lambda_* = min(Lambda_Q, Lambda_U). For 0 < lambda < lambda_* the matrices A and B are positive, and we put Y(lambda) = A(lambda)^{1/2} X B(lambda)^{1/2}. Singular values sigma_k are listed in decreasing order.

**Theorem 12.6.**

1. lambda in (0, lambda_*) is an eigenvalue of multiplicity m iff exactly m indices k satisfy sigma_k(Y(lambda)) = lambda.
2. For each k, the equation lambda = sigma_k(Y(lambda)) has at most one solution lambda_k in (0, lambda_*). It has one whenever 0 < sigma_k(Y_0) < lambda_*.
3. Every such solution satisfies

       sigma_k(Y_0) (1 - lambda_k^2/Lambda_Q^2 - lambda_k^2/Lambda_U^2) <= lambda_k <= sigma_k(Y_0).

*Proof.* Each Lambda lies in the window of its own field, so (0, lambda_*) is contained in W. (1) Conjugating by A^{1/2} turns A X B X^dagger into Y Y^dagger, and dim ker(lambda^2 - Y Y^dagger) = #{k : sigma_k(Y) = lambda}. Then apply Theorem 12.4. (2) A and B decrease entrywise in lambda, and sigma_k(P Z Q) <= norm(P) norm(Q) sigma_k(Z). Hence sigma_k(Y(lambda)) is continuous and nonincreasing, so lambda - sigma_k(Y(lambda)) is strictly increasing. It is negative near 0 and at least lambda_* - sigma_k(Y_0) > 0 near lambda_*. (3) The upper bound is (2). For the lower bound, concavity places alpha_i above its chord: alpha_i(lambda) >= alpha_i(0)(1 - lambda^2/(Lambda_i^Q)^2), and likewise for beta_j. Therefore Y(lambda) = D_1 Y_0 D_2 with diagonal D_1, D_2 whose entries are at least (1 - t_Q)^{1/2} and (1 - t_U)^{1/2}, where t_Q = lambda^2/Lambda_Q^2 and t_U = lambda^2/Lambda_U^2. Hence sigma_k(Y) >= ((1 - t_Q)(1 - t_U))^{1/2} sigma_k(Y_0) >= (1 - t_Q - t_U) sigma_k(Y_0). The last step uses a^2 + ab + b^2 <= a + b when a + b <= 1; for a + b > 1 the bound is trivial. ∎

**Theorem 12.7 (towerless limit of the texture).** Fix the localization parameters c_i^Q and c_j^U and the matrix Y_hat = X/l, and let l -> 0. Put Phi_Q = diag(phi(c_i^Q)), Phi_U = diag(phi(c_j^U)) and M_F = Phi_Q Y_hat Phi_U. For every E > 0 and all small l, the spectrum of D_X in [-E, E] consists of:

- 0 with multiplicity N_Q + N_U - 2 rank Y_hat;
- plus/minus lambda_k(l) for those k <= rank Y_hat with sigma_k(M_F) <= E (since lambda_k(l) < sigma_k(M_F) and lambda_k(l) -> sigma_k(M_F)), where

      abs(lambda_k(l) - sigma_k(M_F)) <= sigma_k(M_F)^3 l^2 (1/L_Q^2 + 1/L_U^2),

  and L_Q = l Lambda_Q and L_U = l Lambda_U depend only on the c's.

All eigenvalues outside zero and the light set {+/- lambda_k} have absolute value greater than lambda_* = min(L_Q, L_U)/l, which tends to infinity. For E > norm(M_F) the light space has dimension N_Q + N_U and, after grading-preserving unitary identifications, its compressed Dirac matrices converge to D_F below. Calling the limit a spectral triple requires specifying an algebra and its representation; with that understood, the towerless remnant is the finite even triple with H_F = C^{N_Q} (+) C^{N_U}, Gamma_F = diag(1, -1) and

    D_F = [[0, M_F], [M_F^dagger, 0]],   M_F = Phi_Q Y_hat Phi_U,

up to unitaries on each chirality, which is the Yukawa block of the Chamseddine-Connes finite Dirac operator.

*Proof.* By item 1 of Theorem 12.4, Y_0 = (1/l) Phi_Q X Phi_U = M_F. Rescaling x -> x/l shows that l Lambda_i depends on c_i alone. Apply Theorem 12.6 with sigma_k(Y_0) fixed and lambda_* -> infinity, and use lambda_k <= sigma_k(M_F) in the error term. Theorem 12.2 counts the zero modes. ∎

At fixed fermion masses, the towerless limit therefore requires X = l Y_hat -> 0: the boundary condition tends to the chiral type (a) (+) (b), while the normalized profiles at the wall grow like l^{-1/2}.

## Hierarchies from localization

**Lemma 12.8 (graded singular values).** Let M = F X G with F = diag(f_1 <= ... <= f_N) and G = diag(g_1 <= ... <= g_N) positive, and X in M_N(C). For p = 1, ..., N let T_p = {N-p+1, ..., N}, Delta_p = abs(det X_{T_p T_p}), D_p = max over p-subsets I, J of abs(det X_{IJ}), eps_p^F = f_{N-p}/f_{N-p+1}, eps_p^G = g_{N-p}/g_{N-p+1} (both 0 for p = N), and K_p = binom(N, p) - 1. Then

    f_{T_p} g_{T_p} Delta_p  <=  sigma_1 ... sigma_p  <=  f_{T_p} g_{T_p} [Delta_p + D_p ((1 + K_p eps_p^F)(1 + K_p eps_p^G) - 1)],

where f_I is the product of f_i over i in I.

*Proof.* By Cauchy-Binet, the p-th compound is Lambda^p M = Lambda^p F Lambda^p X Lambda^p G, with entries f_I g_J det X_{IJ}, and sigma_1 ... sigma_p = norm(Lambda^p M). The lower bound is the (T_p, T_p) entry. For the upper bound, norm(A) <= sum abs(A_{IJ}). Any p-subset I != T_p trades at least one index of T_p for an index <= N - p, so f_I/f_{T_p} <= eps_p^F. Hence sum_I f_I <= f_{T_p}(1 + K_p eps_p^F), and similarly for g. ∎

**Corollary 12.9 (masses from localization).** Assume every trailing minor Delta_p is nonzero. Put E_0 = E_N = 0 and E_p = (D_p/Delta_p)((1 + K_p eps_p^F)(1 + K_p eps_p^G) - 1) for 1 <= p < N. Then

    1/(1 + E_{p-1}) <= sigma_p / (f_{N-p+1} g_{N-p+1} Delta_p/Delta_{p-1}) <= 1 + E_p,

by dividing the bounds of Lemma 12.8 for p and p - 1. Indexing generations by k = N - p + 1, m_k = f_k g_k (Delta_{N-k+1}/Delta_{N-k})(1 + O(eps)) as eps = max_p (eps_p^F + eps_p^G) -> 0, for fixed X and N (uniform statements need uniform bounds on D_p/Delta_p). Without the minor condition the formula fails: F = G = diag(t, 1) and X = sigma_1 give Delta_1 = 0 while both singular values equal t. With M_F = Phi_Q Y_hat Phi_U and Y_hat anarchic (all minors of order one), the masses follow phi(c_k^Q) phi(c_k^U). Since phi(c) = (2c)^{1/2} e^{-c} (1 + O(e^{-2c})) for large c, order-one differences of the c's between generations give exponential hierarchies (the ratio also carries the factor sqrt(c_k^Q c_k^U/(c_{k+1}^Q c_{k+1}^U)), bounded when adjacent c's differ by bounded amounts):

    m_k / m_{k+1} ~ e^{-(c_k^Q - c_{k+1}^Q) - (c_k^U - c_{k+1}^U)}   up to factors of order one. ∎

**Remark 12.10 (mixing; numerical, not proved here).** For an up sector and a down sector sharing Phi_Q, we drew 500 anarchic complex samples with c^Q = (3, 2, 0.5). The medians of abs(V_ij)/(phi(c_i^Q)/phi(c_j^Q)) were 1.02, 0.92 and 1.09 for (ij) = (12), (23) and (13). So the left mixing follows the doublet localization alone, abs(V_ij) ~ phi(c_i^Q)/phi(c_j^Q), as in the split-fermion and warped-flavor literature (Huber-Shafi 2001; Agashe-Perez-Soni 2005; Casagrande et al. 2008). We have not proved a bound with explicit constants.

## Consequences for STRATEGY

- **T3 (remaining part).** The boundary Yukawa X deforms the chiral types (a) (+) (b) (X = 0) continuously into two copies of the vectorlike type (c) (abs(X) -> infinity). The index N_Q - N_U is constant along the way. What changes is the symmetry: X reduces G to H_X, and the zero modes lift exactly as far as the H_X-index allows (Corollary 12.3).
- **T8.** In the towerless limit, the Yukawa block of D_F is Phi_Q Y_hat Phi_U. The texture of the finite geometry is localization data (the c's) times an order-one boundary matrix, the masses are internal momenta and overlaps, and the hierarchies are exponential in the c's (Corollary 12.9).

## Numerical check (Claude)

Method: roots of the secular equation are bracketed on fine grids and refined by Brent's method; the shooting check integrates the ODE from x = 0 with scipy `solve_ivp` (rtol 1e-12) and finds the zeros of the boundary-condition determinant at x = l.

- **Secular equation against ODE shooting** (scipy `solve_ivp`, rtol 1e-12, real X). For one massless flavor and X = 0.3, 1 and 5, the shooting roots agree with (n pi +/- arctan X)/l to 6 digits. For three flavors with masses (-3, -1.5, 0.2) and (2.5, 1, -0.3), l = 1 and random X, both methods give 0.024689, 0.048653, 0.534569 and 2.03374.
- **Theorem 12.6** (c^Q = (2, 1, 0), c^U = (1.5, 0.5, -0.5), X = 0.05 x Gaussian, lambda_* = 0.577). The eigenvalues in the window are 0.000576, 0.035602 and 0.061096, against sigma_k(Y_0) = 0.000576, 0.035632 and 0.061188. All three two-sided bounds hold.
- **Theorem 12.7** (c^Q = (4, 2, 0.3), c^U = (3, 1, -0.2), Gaussian Y_hat, sigma(M_F) = 0.000735, 0.072042, 0.786929). The relative errors of the three light eigenvalues are:

  | l | relative errors | lambda_* |
  |---|---|---|
  | 1 | 1.5e-5, 1.1e-2, 2.5e-1 | 0.147 |
  | 0.1 | below 1e-6, 1.1e-4, 4.2e-3 | 1.47 |
  | 0.03 | below 1e-6, 1.0e-5, 3.9e-4 | 4.90 |

  The errors decrease as l^2.
- **Lemma 12.8:** no violation in 2000 random complex 3 x 3 cases with log-uniform gradings over 8 e-folds (6000 inequalities).

## Referee report (gpt-6.1-terra, effort max, 3 Nov 2026)

Prompt: [prompts/terra_check_12.md](prompts/terra_check_12.md). Reproduced as received; the corrections above implement it. Claude checked the three counterexamples (M_Q = diag(0, 4); arctan(l)/l -> 1; F = G = diag(t, 1), X = sigma_1) by hand.

We take \(\ell>0\) and the bulk masses to be real, as in Lemma 09. All arguments below are analytic; we used no numerical computation.

### Lemma 12.1

**Verdict: Correct.**

At \(x=\ell\), the free boundary values are \(Q_L(\ell)\) and \(U_R(\ell)\). Substitution of the boundary conditions into the boundary form gives zero, and the allowed boundary values have half the total boundary dimension. The conditions at \(x=0\) are likewise maximal isotropic. The adjoint boundary conditions therefore coincide with the stated ones, so \(D_X\) is self-adjoint.

The graph norm controls the \(H^1\)-norm, and the embedding \(H^1([0,\ell])\hookrightarrow L^2([0,\ell])\) is compact. Thus the resolvent is compact. Finally, \(\Gamma\) preserves the boundary conditions and anticommutes with the differential expression.

### Theorem 12.2

**Verdict: Correct.**

The zero-mode equations give
\[
L(x)=e^{Mx}a,\qquad R(x)=e^{-Mx}b.
\]
The conditions at \(0\) remove \(Q_R\) and \(U_L\), and those at \(\ell\) impose exactly the two displayed kernel conditions.

The endpoint exponentials are invertible, so the two chiral kernel dimensions are \(N_Q-\operatorname{rank}X\) and \(N_U-\operatorname{rank}X\). Their difference is \(N_Q-N_U\).

### Corollary 12.3

**Verdict: Correct with amendment.** The neutrino conclusion holds for every \(X\) that preserves the stated electromagnetic symmetry, meaning \(H\subseteq H_X\). The phrase “for every X” needs that qualification.

The endpoint exponentials commute with the group actions. They identify the actual chiral kernels equivariantly with \(\ker X^\dagger\) and \(\ker X\). The orthogonal complements are equivariantly isomorphic through \(X\), proving the displayed index identity. Both kernels vanish exactly when \(X\) is invertible, in which case \(X\) is an equivariant isomorphism.

If electromagnetic symmetry is not required, the neutrino assertion can fail. For one lepton generation with zero bulk masses, take
\[
Q_L=(\nu_L,e_L),\qquad U_R=e_R,\qquad
X=\begin{pmatrix}1\\0\end{pmatrix}.
\]
The left kernel is then spanned by \(e_L\), while \(\nu_L\) is coupled to \(e_R\). This \(X\) breaks electromagnetic charge. If \(X\) intertwines the electromagnetic representations and there is no neutral right-handed lepton, the neutrino subspace lies in \(\ker X^\dagger\), as claimed.

### Theorem 12.4

**Verdict: Error.** The secular equation, multiplicity formula, endpoint values, monotonicity and concavity are correct. The assertion that *each* function has a zero **on the common window \(W\)** is false.

For example, take \(\ell=1\), \(M_Q=\operatorname{diag}(0,4)\), and \(M_U=(0)\). Then \(W=(0,\pi)\), but throughout \(W\),
\[
\alpha_2(\lambda)
=\sqrt{16-\lambda^2}\,
  \coth\!\sqrt{16-\lambda^2}+4>0.
\]
Its individual lowest mixed-boundary eigenvalue is greater than \(4\), hence lies outside \(W\). The proof’s assertion that every function tends to \(-\infty\) at the edge of \(W\) fails for the same reason.

The corrected zero statement uses each mass’s **individual** first-pole window
\[
0<\lambda<\sqrt{m^2+\pi^2/\ell^2}.
\]
On that interval the corresponding \(\alpha\) or \(\beta\) has exactly one zero, at the lowest positive eigenvalue of its mixed-boundary problem. The \(U\) problem is equivalent to the type-(c) problem after exchanging components and changing the mass sign.

For the monotonicity and concavity, write \(s=\lambda^2\) and \(a_n=(n\pi/\ell)^2\). Differentiating the displayed partial-fraction expansion on the individual window gives
\[
\frac{d}{ds}\bigl(\omega\coth(\omega\ell)\bigr)
=-\frac{2}{\ell}\sum_{n\ge1}
  \frac{a_n}{(m^2-s+a_n)^2}<0,
\]
\[
\frac{d^2}{ds^2}\bigl(\omega\coth(\omega\ell)\bigr)
=-\frac{4}{\ell}\sum_{n\ge1}
  \frac{a_n}{(m^2-s+a_n)^3}<0.
\]
The function is positive at \(s=0\) after the appropriate \(\pm m\) is added, and tends to \(-\infty\) at its own first pole. This proves the corrected zero claim.

For the secular equation, the proof’s boundary variables \(c,d\) satisfy
\[
\lambda c=-XBd,\qquad \lambda d=-X^\dagger A c.
\]
Eliminating \(d\) gives \(\lambda^2c=XB X^\dagger A c\). For \(\lambda\ne0\), the kernels of \(\lambda^2I-CA\) and \(\lambda^2I-AC\), with \(C=XBX^\dagger\), are isomorphic via \(A\), with inverse \(C/\lambda^2\). This also proves the stated multiplicity.

### Example 12.5

**Verdict: Correct with amendment.** At \(X=0\), omit \(\theta/\ell=0\) from the **positive** spectrum; instead, zero has multiplicity two. The positive eigenvalues are then \(n\pi/\ell\), each with multiplicity two. For finite \(X\), \(\theta<\pi/2\); the endpoint \(\theta=\pi/2\) is a limit.

For all positive \(\lambda\), direct substitution of the massless solutions into the boundary conditions gives
\[
\sin^2(\lambda\ell)-|X|^2\cos^2(\lambda\ell)=0.
\]
For \(X\ne0\), its roots are exactly the listed values. This derivation also includes the roots at \(n\pi/\ell\) when \(X=0\), even though the secular formula of Theorem 12.4 was derived only before the first pole. The negative spectrum follows by grading symmetry. The stated two-dimensional graded block and the limiting mixed-boundary spectrum follow from these roots and their eigenvectors.

### Theorem 12.6

**Verdict: Correct.**

Although Theorem 12.4 requires the correction above, it still supplies what is needed here. The smallest individual first pole belongs to some field; that field’s first zero lies before its pole. Consequently, \(\lambda_*\) lies before the smallest first pole, and \((0,\lambda_*)\subset W\).

On this interval \(A,B\) are positive. Conjugation reduces the secular equation to the eigenvalue equation for \(Y(\lambda)Y(\lambda)^\dagger\), proving the multiplicity claim. If \(\lambda_2>\lambda_1\), then
\[
Y(\lambda_2)=P\,Y(\lambda_1)\,Q
\]
for diagonal contractions \(P,Q\). Thus every singular value is continuous and nonincreasing, so it meets the strictly increasing function \(\lambda\) at most once. The stated condition at \(\lambda=0\) gives a crossing before \(\lambda_*\).

Concavity gives, with \(t_Q=\lambda^2/\Lambda_Q^2\) and \(t_U=\lambda^2/\Lambda_U^2\),
\[
\sigma_k(Y(\lambda))
\ge \sqrt{(1-t_Q)(1-t_U)}\,\sigma_k(Y_0)
\ge (1-t_Q-t_U)\sigma_k(Y_0).
\]
Together with \(\sigma_k(Y(\lambda))\le\sigma_k(Y_0)\), this proves both bounds.

### Theorem 12.7

**Verdict: Error.** The fixed-energy spectrum cannot contain every listed light eigenvalue for every \(E>0\).

Take one massless flavor, \(\widehat Y=1\), and \(E=1/2\). Then \(X=\ell\), and Example 12.5 gives the positive light eigenvalue
\[
\lambda(\ell)=\frac{\arctan\ell}{\ell}\longrightarrow1.
\]
For sufficiently small \(\ell\), it is outside \([-1/2,1/2]\), contrary to the stated list.

The corrected fixed-energy statement includes only those \(\pm\lambda_k(\ell)\) with \(\lambda_k(\ell)\le E\). Equivalently, for each fixed \(E>0\) and all sufficiently small \(\ell\), include exactly those indices for which
\[
\sigma_k(M_F)\le E.
\]
The equality case is included because the strict decrease of \(A\) and \(B\) gives \(\lambda_k(\ell)<\sigma_k(M_F)\) for every positive light eigenvalue.

The displayed error estimate follows from Theorem 12.6:
\[
0<\sigma_k(M_F)-\lambda_k(\ell)
\le \sigma_k(M_F)^3\ell^2
   \left(L_Q^{-2}+L_U^{-2}\right).
\]
Zero has the stated multiplicity. Apart from zero and the **entire** light set \(\{\pm\lambda_k\}\), the eigenvalues have **absolute value** greater than \(\lambda_*\) for small \(\ell\). At \(\lambda_*\), the limiting matrices \(A,B\) are nonnegative and the relevant singular values are at most \(\|M_F\|\), whereas \(\lambda_*\to\infty\); hence equality at the boundary is excluded for small \(\ell\).

For \(E>\|M_F\|\), the full low-energy space has dimension \(N_Q+N_U\). After grading-preserving unitary identifications, its compressed Dirac matrices converge to the displayed \(D_F\). Calling the limit a spectral triple additionally requires an algebra and its representation to be specified.

### Lemma 12.8

**Verdict: Correct.**

The entries of \(\bigwedge^p M\) are \(f_Ig_J\det X_{IJ}\), and its operator norm is \(\sigma_1\cdots\sigma_p\). Its \((T_p,T_p)\) entry gives the lower bound.

For every \(I\ne T_p\), at least one factor from the top \(p\) indices is replaced by one no larger than \(N-p\), so \(f_I/f_{T_p}\le\epsilon_p^F\); the analogous estimate holds for \(g\). Bounding the operator norm by the sum of absolute entries, while keeping the \((T_p,T_p)\) entry separate, gives the upper bound. For \(p=N\), both bounds reduce to the determinant identity.

### Corollary 12.9

**Verdict: Error.** The displayed mass formula is not valid under the hypotheses of Lemma 12.8: its denominator can vanish, and its leading term can be zero when the singular value is positive.

For \(0<t<1\), take
\[
F=G=\operatorname{diag}(t,1),\qquad
X=\begin{pmatrix}0&1\\1&0\end{pmatrix}.
\]
Then \(FXG\) has both singular values equal to \(t\), but \(\Delta_1=0\) and \(\Delta_2=1\). The formula for \(m_2\) gives zero, and the formula for \(m_1\) divides by zero.

A sufficient correction is to require every trailing minor \(\Delta_p\) to be nonzero and to define the small parameter. More precisely, put \(E_0=E_N=0\) and, for \(1\le p<N\),
\[
E_p=\frac{D_p}{\Delta_p}
 \left[(1+K_p\epsilon_p^F)(1+K_p\epsilon_p^G)-1\right].
\]
Lemma 12.8 then gives the explicit bounds
\[
\frac{1}{1+E_{p-1}}
\le
\frac{\sigma_p}
 {f_{N-p+1}g_{N-p+1}\Delta_p/\Delta_{p-1}}
\le 1+E_p.
\]
Indeed, apply the lemma to the products of the first \(p\) and first \(p-1\) singular values and divide their bounds. For fixed \(X,N\), if
\[
\epsilon=\max_{p<N}(\epsilon_p^F+\epsilon_p^G)\longrightarrow0,
\]
these inequalities give the stated \(1+O(\epsilon)\) formula. Uniform estimates require uniform bounds on \(D_p/\Delta_p\).

The localization conclusion follows under quantitative order-one upper and lower bounds on the relevant minors. For large positive \(c\), the mass ratio also contains the factor
\[
\sqrt{\frac{c_k^Q c_k^U}
           {c_{k+1}^Q c_{k+1}^U}}.
\]
It is bounded when the adjacent large \(c\)’s differ by bounded amounts; without such control it cannot be suppressed uniformly as an order-one factor.

### Remark 12.10

**Bound.** We can prove an upper bound independent of the right-hand localization profiles. It does not prove the reported sample medians or a universal lower bound.

For each sector \(s=u,d\), let
\[
M_s=F X_s G_s,\qquad
F=\operatorname{diag}(f_1\le f_2\le f_3),\qquad
G_s=\operatorname{diag}(g_1^{(s)}\le g_2^{(s)}\le g_3^{(s)}),
\]
with all diagonal entries positive. Assume \(X_s\) is invertible and its trailing minors \(\Delta_1^{(s)},\Delta_2^{(s)}\) are nonzero. With \(D_p^{(s)}\) as in Lemma 12.8, define
\[
K_s=
\left(1+\frac{\sqrt3D_1^{(s)}}{\Delta_1^{(s)}}\right)
\left(1+\frac{\sqrt3D_2^{(s)}}{\Delta_2^{(s)}}\right).
\]
Choose the columns of the left singular-vector matrices \(U_s\) in increasing order of singular value, and put \(V=U_u^\dagger U_d\). Then, for \(i<j\),
\[
\boxed{\quad |V_{ij}|\le 3K_uK_d\,\frac{f_i}{f_j}.\quad}
\]

To prove this, set \(H_s=M_sM_s^\dagger\), and temporarily suppress \(s\). Write
\[
a=\frac{\sqrt3D_1}{\Delta_1},\qquad
b=\frac{\sqrt3D_2}{\Delta_2}.
\]
For the largest eigenvalue \(\lambda_3\) of \(H\),
\[
\lambda_3\ge f_3^2g_3^2\Delta_1^2,
\qquad H_{ii}\le3D_1^2f_i^2g_3^2.
\]
Cauchy–Schwarz therefore gives \(|U_{i3}|\le a f_i/f_3\). Applying the same argument to \(H^{-1}\), and using
\((X^{-1})_{11}=\det X_{\{2,3\},\{2,3\}}/\det X\), gives
\(|U_{i1}|\le b f_1/f_i\). Cofactor identities for the unitary \(U\) bound the two remaining off-diagonal entries. Together,
\[
|U_{ij}|\le (1+a)(1+b)
 \min\!\left(\frac{f_i}{f_j},\frac{f_j}{f_i}\right).
\]
Summing the three terms in \(V_{ij}=\sum_k\overline{(U_u)_{ki}}(U_d)_{kj}\) proves the boxed inequality.

There is no corresponding positive universal lower bound: identical up and down matrices have \(V=I\), including when their minors are nonzero. The numerical medians also require the sampling distribution and sampled matrices, neither of which is specified in the remark.

### Amendments and errors

- **12.3:** Restrict the neutrino assertion to couplings preserving electromagnetic symmetry.
- **12.4:** State the unique-zero claim on each field’s individual first-pole window; it can fail on the common window.
- **12.5:** Treat zero separately at \(X=0\), and treat \(\theta=\pi/2\) as a limit.
- **12.7:** Filter the light eigenvalues by \(E\); state the gap in absolute value; specify an algebra and representation for a spectral-triple claim.
- **12.9:** Require nonzero trailing minors and define the separation parameter and its dependence. Retain the square-root localization factors unless they are uniformly bounded.

**Overall:** 9 statements checked: 4 correct, 2 correct with amendment, 0 gaps, and 3 errors.
