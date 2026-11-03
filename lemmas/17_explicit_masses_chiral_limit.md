# Explicit masses in the reduced triple, the chiral limit and the set of reductions

Routine part of STRATEGY T10. Proved by Claude Opus 5.5 without Astra or Fable. The identities of Theorems 17.1 and 17.6 were checked with numpy on random finite models (section "Numerical check"). Referee pending. The references to Banks-Casher, Vafa-Witten, domain-wall fermions and vacuum alignment are quoted from memory, pending the literature check.

**Outcome.** The fermion action of a product M x F, restricted to its physical subspace, is exactly the action of the odd triple M x T on an unconstrained spinor, with the Yukawa block becoming the constant matrix d in D_M + gamma_5 d (Theorem 17.1). Both signs s give one and the same Dirac action (Corollary 17.2). On a subalgebra commuting with D_F there are no scalar fluctuations, so the mass is explicit (Proposition 17.3). At M = 0 the symmetry of the quark sector is U(N_f) x U(N_f) (Proposition 17.5). The admissible involutions of the quark sector are the Sigma in U(N_f) with Sigma\* M Hermitian, which are exactly the critical points of the mass term Re tr(M Sigma\*); at M = 0 they fill the chiral coset (Theorem 17.6). All of this is kinematic. The condensate requires a measure on gauge fields, infinite volume and an order of limits (Proposition 17.8).

"D = 9" below is the formal KO-label 4 + 5 of Theorem D. The metric dimension of M x T is 4.

## Setting

Let M be a compact Riemannian spin 4-manifold with (D_M, J_M, gamma_5), where J_M^2 = -1, J_M D_M = D_M J_M, J_M gamma_5 = gamma_5 J_M and gamma_5 D_M = -D_M gamma_5. Let F = (A_F, H_F, D_F, J_F, gamma_F) be a finite real triple with the KO-6 signs. On L^2(S) (x) H_F put

    D = D_M (x) 1 + gamma_5 (x) D_F,     J = J_M (x) J_F,     Gamma = gamma_5 (x) gamma_F,

with J^2 = -1, J D = D J and J Gamma = -Gamma J. Let H^+ be the Gamma = +1 subspace. The fermion action is (1/2) <J xi, D xi> on Grassmann variables xi in H^+ (Chamseddine-Connes-Marcolli 2007).

Let U be an admissible involution in the sense of Theorem D: U^2 = 1, U unitary, U gamma_F = -gamma_F U, [U, a] = [U, a°] = [U, D_F] = 0 and U J_F = s J_F U. On H_0 = {gamma_F = +1} put d = U D_F and j = U J_F, restricted to H_0, so that j^2 = s and j d = s d j.

## The reduced action

**Theorem 17.1.** Define R : L^2(S) (x) H_0 -> H^+ by R(phi (x) x) = phi_+ (x) x + phi_- (x) U x, with phi_+- the chiral parts of phi. Then R is unitary, and

    <J R psi, D R psi'> = <jj psi, DD psi'>,     DD = D_M (x) 1 + gamma_5 (x) d,

where jj = J_M (x) j for s = +1 and jj = gamma_5 J_M (x) j for s = -1. Hence the action is (1/2) <jj psi, DD psi> on an unconstrained Grassmann spinor psi. Moreover DD^2 = D_M^2 (x) 1 + 1 (x) d^2, and Tr f(D^2/Lambda^2) = 2 Tr f(DD^2/Lambda^2).

*Proof.* R is unitary because U exchanges the two gamma_F-eigenspaces. Let UU = 1 (x) U, which commutes with D and is an involution, so that <J xi, D xi'> = <UU J xi, UU D xi'>.

Put r x = (x + U x)/sqrt(2). Then D_F r = r d, since D_F r x = (D_F x + U D_F x)/sqrt(2) with U D_F x = d x and D_F x = U d x. Also (1 + UU) R/sqrt(2) = 1 (x) r. Since UU commutes with D, this gives UU D R = R DD.

For the real structure, J_F x = U j x and U J_F U = s J_F. As J_M preserves chirality,

    UU J R(phi (x) x) = J_M phi_+ (x) j x + s J_M phi_- (x) U j x = R((J_M phi_+ + s J_M phi_-) (x) j x) = R jj (phi (x) x).

Therefore <J R psi, D R psi'> = <UU J R psi, UU D R psi'> = <R jj psi, R DD psi'> = <jj psi, DD psi'>. The square follows from gamma_5 D_M = -D_M gamma_5. Finally, D is the direct sum of its restrictions to the eigenspaces of UU, on which it is equivalent to D_M + gamma_5 d and D_M - gamma_5 d, and gamma_5 exchanges those two up to sign. ∎

So the doubling is removed by the chirality projection, and the physical space is exactly the Hilbert space of M x T.

**Corollary 17.2 (one Dirac fermion, for both signs).** Let H_0 = span(e_L, conj(e_R)) with m > 0 and psi = (psi_1, psi_2). For (d_+, j_+) = (m I, sigma_1 K) and (d_-, j_-) = (diag(m, -m), [[0, 1], [-1, 0]] K) of lemma 06, the action is

    <J_M psi_2, (D_M + gamma_5 m) psi_1>     and     <gamma_5 J_M psi_2, (D_M + gamma_5 m) psi_1>

respectively. In each case the left argument is an independent Euclidean variable, psi-bar. With R_5 = exp(i pi gamma_5/4), R_5 (D_M + gamma_5 m) R_5 = D_M + i m. So the action is that of one Dirac fermion of explicit mass m, whichever sign s is used.

*Proof.* The total form is antisymmetric, so on Grassmann variables the two cross terms are equal, which cancels the factor 1/2. The rotation uses R_5 D_M R_5 = D_M. ∎

This agrees with Theorem D, item 5: the sign s is invisible in the action, because the two reductions describe one even triple. The rotation R_5 is formal here, and carries the anomaly in a quantized theory.

**Proposition 17.3 (no Higgs on a commuting subalgebra).** Let B in A_F be a unital subalgebra with [D_F, B] = 0, and let U commute with B and B°. The inner fluctuation of D by C^infinity(M) (x) B contains only Clifford one-forms, D_A commutes with UU, and D_A reduces to

    DD_A = D_M(A) + gamma_5 (x) d,

with d constant on M. If [D_F, B] != 0, the same reduction holds with d replaced by its finite fluctuation, a scalar field.

*Proof.* For a = f (x) alpha and b = g (x) beta, we have a [D, b] = f [D_M, g] (x) alpha beta + f g gamma_5 (x) alpha [D_F, beta], whose second term vanishes. The term J A J^-1 takes values in B°, which commutes with U. Theorem 17.1 applies pointwise with D_M(A) in place of D_M. In the other case, U commutes with [D_F, beta], so the fluctuation preserves the reduction. ∎

**Corollary 17.4 (Yukawa couplings to explicit masses).** After the strict projection of lemma 06, Proposition 5, with B = {(lambda, Q_lambda, m)} = C + M_3(C), the kept mass blocks commute with B. So DD_A = D_M(photon, gluons) + gamma_5 d, with d the direct sum of the kept mass matrices, and no Higgs field. In the Standard Model with fixed m_f, the radial mode couples to f with strength m_f/v, which tends to 0 as M_W = g v/2 tends to infinity. By Proposition E of the paper (lemma 11) such a limit needs a heavy Dirac fermion, the top, and holds below the cutoff; the regime near the cutoff is T5b. The same computation applies when only the top is removed, since u_L and u_R also pair identical B-bimodules.

## The chiral limit

Consider N_f quark flavours, with q_L, q_R in C^{N_f} (x) C^3, and q-bar_L, q-bar_R = J q_L, J q_R. Let D_F act on (q_L, q_R) by [[0, M], [M\*, 0]] (x) 1_3, and by the complex conjugate block on the antiparticles. Let M_3(C) act on the antiparticles on the left and on the particles through its opposite action.

**Proposition 17.5 (the symmetry restored at M = 0).** Let G(M) be the group of unitaries on this sector commuting with both actions of M_3(C), gamma_F, J_F and D_F. Then

    G(M) = {(V_L, V_R) in U(N_f) x U(N_f) : V_L M = M V_R},

acting by V_L, V_R on q_L, q_R and by the complex conjugates on q-bar_L, q-bar_R. So G(0) = U(N_f) x U(N_f), G(m I) = U(N_f)_V for m != 0, and G(M) = U(1)^{N_f}_V for M positive diagonal with distinct entries. With m_u = m_d = 0 and m_s != 0 in one block, G contains U(2) x U(2). If V is also required to commute with the electric charge, through lambda in B, then each V_L, V_R is diagonal between u and d, and G(0) = U(1)^4 for two flavours.

*Proof.* Both actions of M_3(C) separate particles from antiparticles, since they carry inequivalent representations under the left action. By Schur, V = V' (x) 1_3 on each. The grading separates L and R, and J_F fixes the antiparticle part. Commutation with D_F gives V_L M = M V_R and V_R M\* = M\* V_L, which are equivalent for unitaries. ∎

These groups are not inner: at M = 0 the axial part is an ungauged symmetry of the reduced triple. The Lagrangian symmetry U(1)_A is anomalous in the quantum theory, which the classical data do not show.

**Theorem 17.6 (the set of reductions).** Let B contain only the colour algebra. The admissible involutions of sign s on this sector are exactly the operators

    U_{Sigma,s} = [[0, Sigma], [Sigma\*, 0]] on (q_L, q_R),     s [[0, conj(Sigma)], [Sigma^T, 0]] on (q-bar_L, q-bar_R),

with Sigma in U(N_f) and Sigma\* M Hermitian. This condition holds if and only if Sigma is a critical point of V_M(Sigma) = -Re tr(M Sigma\*) on U(N_f). The reduced mass operator on H_0 = (q_L, q-bar_R) is

    d_{Sigma,s} = Sigma M\* (+) s conj(Sigma\* M).

Hence:

1. At M = 0 the set is all of U(N_f) = (U(N_f) x U(N_f))/U(N_f)_V, for each s.
2. At M = m I with m > 0 it is {Sigma : Sigma^2 = 1}, the disjoint union of the Grassmannians of C^{N_f}.
3. For M positive diagonal with distinct entries, it is the 2^{N_f} matrices diag(+-1, ..., +-1).
4. For M invertible, the unique Sigma with Sigma\* M positive is the polar part of M. It is the unique global minimum of V_M, and it is the unique Sigma for which all masses in the first block of d_{Sigma,s} are positive.

With the electric charge in B, Sigma must also commute with the charge, which leaves the diagonal phases in the two-flavour case.

*Proof.* An admissible U commutes with both colour actions, so it acts on each of q, q-bar as U' (x) 1_3; it reverses the grading, so it is off-diagonal between L and R; U^2 = 1 with U unitary gives the form [[0, Sigma], [Sigma\*, 0]] with Sigma unitary. Then U J_F = s J_F U fixes the antiparticle block. Commutation with D_F is Sigma M\* = M Sigma\* and Sigma\* M = M\* Sigma, and the first follows from the second by conjugating with Sigma. Along Sigma exp(i t X), X Hermitian, the derivative of Re tr(M Sigma\*) at t = 0 is Im tr(Sigma\* M X), which vanishes for all Hermitian X exactly when Sigma\* M is Hermitian. The formula for d is direct, using q-bar_R = J q_R. Items 1 to 3 are linear algebra: in item 3, the two conditions force (m_i^2 - m_j^2) Sigma_ij = 0 and real diagonal entries. Item 4 is von Neumann's trace inequality, Re tr(M Sigma\*) <= tr |M|, with equality exactly at the polar part. ∎

**Remark 17.7 (scope).** The coset in item 1 has the same form as the target of the chiral Lagrangian, and the condition on Sigma is the condition of vacuum alignment (Dashen). Both express that a pairing of L with R is compatible with M, so the coincidence has an elementary origin, and we claim no more for it. It shows where a condensate could point, within the choice of odd factorization. It does not show that a condensate forms, and it selects no point of U(N_f) at M = 0: the data contain no potential. Other critical points have non-positive signature in Sigma\* M, corresponding to sign changes of masses, which are related to shifts of theta in the quantized theory.

Taking Sigma to vary over M makes U_Sigma fail to commute with D_M, by a Clifford term in d Sigma. So a pion-like field appears as a spacetime-dependent choice of reduction. Whether the spectral action then yields a kinetic term tr|d Sigma|^2, with what normalization, is not computed here. This question is a natural next step.

## What the spectral data say about the condensate

**Proposition 17.8.** Let D_M(A) have eigenvalues lambda_n, with n_0 zero modes, on M of volume V, and for m > 0 put

    c_V(m; A) = (1/V) sum_n m/(lambda_n^2 + m^2) = (1/V) d/dm log |det (D_M(A) + gamma_5 m)|,

which is formal and needs a regularization, with its divergent terms proportional to m subtracted.

1. At fixed A on compact M, c_V(m; A) = n_0/(V m) + O(m) as m -> 0. So at finite volume and fixed background, no nonzero limit exists beyond the zero-mode term.
2. If rho_m(lambda) = lim_{V -> infinity} <(1/V) sum_n delta(lambda - lambda_n)>_m is continuous at 0, uniformly as m -> 0, for a measure <.>_m on gauge fields, then lim_{m -> 0} lim_{V -> infinity} <c_V> = pi rho_0(0). This is the Banks-Casher relation for the condensate.

*Proof.* Item 1: the nonzero eigenvalues are bounded away from 0, and the sum converges after regularization. Item 2: m/(lambda^2 + m^2) is pi times the Poisson kernel at scale m. ∎

So the spectral triple supplies the operator D_M + gamma_5 m, the density rho, and the reason that m -> 0 is continuous at fixed background, since DD^2 = D_M^2 + m^2. The value rho_0(0) requires the measure <.>_m, with its fermion determinant, and the limit V -> infinity before m -> 0. Both lie outside the spectral data of a compact product.

A proof of existence of QCD with fermions would supply a measure. It would not by itself give rho_0(0) > 0. The points to check when it appears are those in STRATEGY T10: whether m_q = 0 is included, and whether infinite volume is reached. For m > 0 and theta = 0 the determinant of D_M + i m is positive, the input of the Vafa-Witten theorems.

## The chiral limit on the interval

**Proposition 17.9.** In the realization F_0 x I_l of Theorem 08.7, DD = D_M (x) 1 + gamma_5 (x) (D_0 + m Gamma_0), so the interval mass is an explicit mass term with the internal grading. The limit m -> 0 has two distinct routes:

1. *Localization (lemma 09).* With a bulk mass, m = lambda_0 = mu sech(kappa_0 l), of order 2 mu exp(-mu l), which is positive for all finite l. So the chiral limit is reached only as mu l -> infinity, and the mass is an exponentially small residue. This is the mechanism of domain-wall fermions (Kaplan; Shamir).
2. *Boundary Yukawa (lemma 12).* At X = 0 the zero modes are exact (Theorem 12.2), with boundary types (a) and (b). For degenerate bulk masses M_Q = m_Q I and M_U = m_U I, D_0 commutes with U(N_Q) x U(N_U) on the whole tower. The boundary coupling X preserves exactly the stabilizer {(V_Q, V_U) : V_Q X = X V_U}, which is G(M_F) of Proposition 17.5, since M_F is proportional to X. So X acts as a spurion located on the wall x = l, and the symmetry is exact at finite l when X = 0.

*Proof.* Item 1 is Theorem 9.4 and Lemma 9.5. Item 2 follows from the invariance of the domain of D_X (lemma 12), and from M_F = phi(c_Q) phi(c_U) Y_hat for degenerate c's. ∎

## Caveats

1. **Classical data.** Everything here is at the level of the classical fermion operator. Anomalies, the running of masses and confinement do not appear.
2. **QED.** With the photon present, the axial group reduces as stated in Proposition 17.5, and pions other than the neutral ones are excluded from the set of reductions of Theorem 17.6.
3. **Regime.** Corollary 17.4 inherits the regime of the CCM relation, below the cutoff.
4. **Label.** The reduction is a rewriting of one even triple. It gives no parent nine-dimensional geometry, in agreement with Theorem D.

## Consequence for T10

The first question is settled: the explicit nine-dimensional action is (1/2) <jj psi, (D_M(A) + gamma_5 d) psi> on an unconstrained spinor, and it is one ordinary Dirac action for either sign. The symmetry restored at m_u = m_d = 0 is U(2) x U(2) on the colour-only algebra, and the set of odd reductions there is the chiral coset U(2), with masses aligning it as in Dashen's condition. The spectral data can state the operator, the symmetry, the coset and the density entering Banks-Casher; the condensate and the pions as dynamical objects require the QCD measure. The natural next computation is the spectral action on a spacetime-dependent Sigma.

## Numerical check

Python (numpy, scipy), run on 3 Nov 2026 in a temporary directory, not kept. On a random finite model with KO-4 signs for M (dimension 8) and a quark sector with N_f = 3 and random complex M, for three sign patterns of Sigma and both s: U^2 = 1, U gamma_F = -gamma_F U, [U, D_F] = 0 and U J_F = s J_F U hold to machine precision; R is unitary; the form <J R psi, D R psi'> equals <jj psi, DD psi'> to about 10^-14 and is antisymmetric; j^2 = s and j d = s d j; the formula for d_{Sigma,s} holds, after a first version of it was found wrong by this check; finite differences confirm that V_M is critical at these Sigma; a generic unitary Sigma gives norm([U, D_F]) of about 10. R_5 (D_M + gamma_5 m) R_5 = D_M + i m holds to machine precision.
