# Explicit masses in the reduced triple, the chiral limit and the set of reductions

Routine part of STRATEGY T10. Proved by Claude Opus 5.5 without Astra or Fable. The identities of Theorems 17.1 and 17.6 were checked with numpy on random finite models (section "Numerical check"). Refereed by Terra 6.1 (gpt-6.1-terra, effort max, 3 Nov 2026; [report](../historical/reviews/2026-11-03_terra_check_17.md)): of 10 items, 1 correct, 4 needed amendments, and 5 were wrong as first written (Corollary 17.4, Remark 17.7, Proposition 17.8, Proposition 17.9 and the consequence for T10, each by overreach). All corrections are incorporated below. Proposition 17.10 is the referee's.

**Outcome.** The fermion action of a product M x F, restricted to its physical subspace, is exactly the action of the odd triple M x T on an unconstrained spinor, with the Yukawa block becoming the constant matrix d in D_M + gamma_5 d (Theorem 17.1). A paired Dirac sector gives one Dirac action for either sign s, up to a change of Grassmann variables (Corollary 17.2); other sectors, such as a neutral one, have Majorana-type actions. On a subalgebra commuting with D_F there are no scalar fluctuations, so the mass is explicit (Proposition 17.3). At M = 0 the symmetry of the quark sector is U(N_f) x U(N_f) (Proposition 17.5). The admissible involutions of the quark sector are the Sigma in U(N_f) with Sigma\* M Hermitian, which are exactly the stationary points of the mass term Re tr(M Sigma\*); at M = 0 they form a homogeneous space of the chiral group (Theorem 17.6). All of this is kinematic. A pion kinetic term does not come from the fixed spectral action (Proposition 17.10). The condensate requires a measure on gauge fields, infinite volume and an order of limits (Proposition 17.8).

"D = 9" below is the formal KO-label 4 + 5 of Theorem D. The metric dimension of M x T is 4. The label exists only where an involution of sign s = -1 exists: charged paired sectors have one, and the strict light spectrum with one or three unpaired neutrinos has none, since its H_0 has odd dimension (lemma 06, Result 7).

## Setting

Let M be a compact Riemannian spin 4-manifold with (D_M, J_M, gamma_5), where J_M^2 = -1, J_M D_M = D_M J_M, J_M gamma_5 = gamma_5 J_M and gamma_5 D_M = -D_M gamma_5. Let F = (A_F, H_F, D_F, J_F, gamma_F) be a finite real triple with the KO-6 signs. On L^2(S) (x) H_F put

    D = D_M (x) 1 + gamma_5 (x) D_F,     J = J_M (x) J_F,     Gamma = gamma_5 (x) gamma_F,

with J^2 = -1, J D = D J and J Gamma = -Gamma J. Let H^+ be the Gamma = +1 subspace. The fermion action is (1/2) <J xi, D xi> on Grassmann variables xi in H^+ (Chamseddine-Connes-Marcolli 2007).

Let U be an admissible involution in the sense of Theorem D: U^2 = 1, U unitary, U gamma_F = -gamma_F U, [U, a] = [U, a°] = [U, D_F] = 0 and U J_F = s J_F U. On H_0 = {gamma_F = +1} put d = U D_F and j = U J_F, restricted to H_0, so that j^2 = s and j d = s d j.

## The reduced action

**Theorem 17.1.** Define R : L^2(S) (x) H_0 -> H^+ by R(phi (x) x) = phi_+ (x) x + phi_- (x) U x, with phi_+- the chiral parts of phi. Then R is unitary, and

    <J R psi, D R psi'> = <jj psi, DD psi'>,     DD = D_M (x) 1 + gamma_5 (x) d,

where jj = J_M (x) j for s = +1 and jj = gamma_5 J_M (x) j for s = -1, with jj^2 = -s and jj DD = s DD jj. Hence the action is (1/2) <jj psi, DD psi> on an unconstrained Grassmann spinor psi. Moreover DD^2 = D_M^2 (x) 1 + 1 (x) d^2, and if f(D^2/Lambda^2) is trace class, Tr f(D^2/Lambda^2) = 2 Tr f(DD^2/Lambda^2).

*Proof.* R is unitary because U exchanges the two gamma_F-eigenspaces. Let UU = 1 (x) U, which commutes with D and is an involution, so that <J xi, D xi'> = <UU J xi, UU D xi'>.

Put r x = (x + U x)/sqrt(2). Then D_F r = r d, since D_F r x = (D_F x + U D_F x)/sqrt(2) with U D_F x = d x and D_F x = U d x. Also (1 + UU) R/sqrt(2) = 1 (x) r. Since UU commutes with D, this gives UU D R = R DD.

For the real structure, J_F x = U j x and U J_F U = s J_F. As J_M preserves chirality,

    UU J R(phi (x) x) = J_M phi_+ (x) j x + s J_M phi_- (x) U j x = R((J_M phi_+ + s J_M phi_-) (x) j x) = R jj (phi (x) x).

Therefore <J R psi, D R psi'> = <UU J R psi, UU D R psi'> = <R jj psi, R DD psi'> = <jj psi, DD psi'>. The square follows from gamma_5 D_M = -D_M gamma_5. Finally, D is the direct sum of its restrictions to the eigenspaces of UU, on which it is equivalent to D_M + gamma_5 d and D_M - gamma_5 d, and conjugation by gamma_5 sends the first to minus the second, so their squares are unitarily equivalent. ∎

So the doubling is removed by the chirality projection, and the physical space is exactly the Hilbert space of M x T.

**Corollary 17.2 (a paired sector gives one Dirac fermion, for both signs).** Let H_0 = span(e_L, conj(e_R)) with m > 0 and psi = (psi_1, psi_2). For (d_+, j_+) = (m I, sigma_1 K) and (d_-, j_-) = (diag(m, -m), [[0, 1], [-1, 0]] K) of lemma 06, the action is

    S_+ = <J_M psi_2, (D_M + gamma_5 m) psi_1>     and     S_- = <gamma_5 J_M psi_2, (D_M + gamma_5 m) psi_1>

respectively, with S_-(psi_1, psi_2) = S_+(psi_1, gamma_5 psi_2). After the charge-conjugation matrix is absorbed, the left argument is an independent Euclidean variable psi-bar, in the Grassmann-bilinear sense of Chamseddine-Connes-Marcolli, section 4. With R_5 = exp(i pi gamma_5/4), R_5 (D_M + gamma_5 m) R_5 = D_M + i m. So the action is that of one Dirac fermion of explicit mass m, whichever sign s is used, up to the displayed invertible change of Grassmann variables.

*Proof.* The total form is antisymmetric, so on Grassmann variables the two cross terms are equal, which cancels the factor 1/2. The rotation uses R_5 D_M R_5 = D_M. ∎

This agrees with Theorem D, item 5: at the level of the classical fermion action, s labels two coordinate descriptions of one bilinear form, and no anomaly or theta shift follows from changing s alone. The rotation R_5 is a formal chiral change of both independent variables; in a quantized theory its Jacobian must be included.

An admissible reduction need not have this paired form. For gamma_F = sigma_3, J_F = sigma_1 K, D_F = m sigma_1 and U = sigma_1 we have s = +1, H_0 is one-dimensional, and the action is the Majorana-type (1/2) <J_M psi, (D_M + gamma_5 m) psi>. The neutral sector of the strict light spectrum has this form with m = 0.

**Proposition 17.3 (no Higgs on a commuting subalgebra).** Let B in A_F be a unital subalgebra with [D_F, B] = 0, and let U commute with B and B°. The inner fluctuation of D by C^infinity(M) (x) B contains only Clifford one-forms, D_A commutes with UU, and D_A reduces to

    DD_A = D_M(A) + gamma_5 (x) d,

with d constant on M. If [D_F, B] != 0, the same reduction holds, and the fluctuation permits a finite scalar field d_A(x) in place of d.

*Proof.* For a = f (x) alpha and b = g (x) beta, we have a [D, b] = f [D_M, g] (x) alpha beta + f g gamma_5 (x) alpha [D_F, beta], whose second term vanishes. The term J A J^-1 is a Clifford one-form whose finite coefficients lie in B°. Since U commutes with B and with B°, Theorem 17.1 applies pointwise with D_M(A) in place of D_M. In the other case, U commutes with [D_F, beta], so the fluctuation preserves the reduction. ∎

**Corollary 17.4 (Yukawa couplings to explicit masses).** In the representation of lemma 06, Result 5, with B = {(lambda, Q_lambda, m)} = C + M_3(C), u_L and u_R carry the same left character lambda and the same opposite colour action, d_L and d_R carry the left character conj(lambda) and the same opposite colour action, and e_L and e_R pair as well. So the kept mass blocks commute with B, in the strict projection of lemma 06 and also when only a vectorlike top pair is removed. Hence DD_A = D_M(A) + gamma_5 d, with d the direct sum of the kept mass matrices, and no Higgs field.

Two qualifications apply. First, U(B) contains U(1) x U(3), so before unimodularity or an inherited restriction from the Standard Model gauge group, two independent abelian gauge fields act on the surviving charged fermions; the reading "photon and gluons" needs that restriction. Second, a canonically normalized radial field couples to a fermion of fixed mass m_f with strength m_f/v, which tends to 0 if v tends to infinity at fixed gauge coupling. Under the CCM relation (lemma 11), keeping all Dirac masses fixed while M_W tends to infinity is impossible: some Dirac mass must become unbounded. It need not be the top; top dominance is a further hypothesis. The relation holds in the asymptotic matching regime, and the regime near the cutoff is T5b.

## The chiral limit

Consider N_f quark flavours, with q_L, q_R in C^{N_f} (x) C^3, and q-bar_L, q-bar_R = J q_L, J q_R. Let D_F act on (q_L, q_R) by [[0, M], [M\*, 0]] (x) 1_3, and by the complex conjugate block on the antiparticles. Let M_3(C) act on the antiparticles on the left and on the particles through its opposite action.

**Proposition 17.5 (the symmetry restored at M = 0).** Let G(M) be the group of unitaries on this sector commuting with both actions of M_3(C), gamma_F, J_F and D_F. Then

    G(M) = {(V_L, V_R) in U(N_f) x U(N_f) : V_L M = M V_R},

acting by V_L, V_R on q_L, q_R and by the complex conjugates on q-bar_L, q-bar_R. So G(0) = U(N_f) x U(N_f), G(m I) = U(N_f)_V for m != 0, and G(M) = U(1)^{N_f}_V for M positive diagonal with distinct entries. With m_u = m_d = 0 and m_s != 0 in one block, G contains U(2) x U(2). If V is also required to commute with the electric charge, through lambda in B, then each V_L, V_R is diagonal between u and d, and G(0) = U(1)^4 for two flavours.

*Proof.* The colour identity separates particles from antiparticles, since its left action is zero on particles and the identity on antiparticles. The commutant of the colour matrix algebra is scalar on colour, so V = V' (x) 1_3 on each. The grading separates L and R, and J_F fixes the antiparticle part. Commutation with D_F gives V_L M = M V_R, whose adjoint with unitarity gives the other block equation. ∎

The nonabelian flavour transformations are not colour gauge transformations, and at M = 0 the axial part is an ungauged symmetry of the reduced triple. If the central U(1) of U(3) is retained in the gauge group, it contains a common vector phase, which an imposed unimodularity condition can remove. The Lagrangian symmetry U(1)_A is anomalous in the quantum theory, which the classical data do not show.

**Theorem 17.6 (the set of reductions).** Let B contain only the colour algebra. The admissible involutions of sign s on this sector are exactly the operators, tensored with 1_3,

    U_{Sigma,s} = [[0, Sigma], [Sigma\*, 0]] on (q_L, q_R),     s [[0, conj(Sigma)], [Sigma^T, 0]] on (q-bar_L, q-bar_R),

with Sigma in U(N_f) and Sigma\* M Hermitian. This condition holds if and only if Sigma is a stationary point of V_M(Sigma) = -Re tr(M Sigma\*) on U(N_f). The reduced mass operator on H_0 = (q_L, q-bar_R) is

    d_{Sigma,s} = (Sigma M\* (x) 1_3) (+) (s conj(Sigma\* M) (x) 1_3).

The group G(0) acts by Sigma -> V_L Sigma V_R\*. Hence:

1. At M = 0 the set is all of U(N_f), for each s, and the action is transitive with stabilizer of Sigma = 1 the diagonal U(N_f): the reductions form the homogeneous space (U(N_f) x U(N_f))/U(N_f)_V.
2. At M = m I with m > 0 it is {Sigma : Sigma^2 = 1, Sigma\* = Sigma}, the disjoint union of the Grassmannians of C^{N_f}.
3. For M positive diagonal with distinct entries, it is the 2^{N_f} matrices diag(+-1, ..., +-1).
4. For M invertible, the unique Sigma with Sigma\* M positive is the polar part of M. It is the unique global minimum of V_M, and it is the unique Sigma for which the first block of d_{Sigma,s} is positive.

With the electric charge in B, the admissible set is the intersection of this set with the commutant of the charge. For two differently charged flavours this keeps diagonal phases at M = 0, and only signs +-1 for positive nonzero diagonal masses.

*Proof.* An admissible U commutes with both colour actions, so it acts on each of q, q-bar as U' (x) 1_3; it reverses the grading, so it is off-diagonal between L and R; U^2 = 1 with U unitary gives the form [[0, Sigma], [Sigma\*, 0]] with Sigma unitary. Then U J_F = s J_F U fixes the antiparticle block. Commutation with D_F is Sigma M\* = M Sigma\* and Sigma\* M = M\* Sigma. If H = Sigma\* M is Hermitian, then Sigma M\* = Sigma H Sigma\* is Hermitian, so the two are equivalent. Along Sigma exp(i t X), X Hermitian, the derivative of Re tr(M Sigma\*) at t = 0 is Im tr(H X), which vanishes for all Hermitian X exactly when H is Hermitian. The formula for d is direct, using q-bar_R = J q_R. Item 1 is immediate. For item 2 the condition is Sigma\* = Sigma. For item 3, H^2 = M\* M forces H to be diagonal with entries +- m_i. Item 4 is von Neumann's trace inequality, Re tr(M Sigma\*) <= tr |M|, with equality exactly at the polar part, and the first block is Sigma H Sigma\*. ∎

**Remark 17.7 (scope).** Item 1 is an equivariant statement: the reductions form a homogeneous space of the chiral group, with the same stabilizer as in the symmetry breaking of QCD. The mass condition has an elementary origin, since it says that H = Sigma\* M is Hermitian, and for invertible M the positive choice is the polar decomposition. Its equality with the stationarity equation of -Re tr(M Sigma\*) is exact, and it captures all stationary points, including saddles and maxima. Vacuum alignment (Dashen) asks which stationary point minimizes a physical energy, and the data here contain no such energy; the stationarity calculation is our derivation, and Dashen is cited for the vacuum-selection idea alone.

So the theorem shows the shape of the set of reductions. Identifying a reduction with a condensate direction would need an explicit map to a quantum order parameter, which we do not have. In QCD, the anomalous singlet axial direction also means that the full classical U(N_f) cannot be identified without qualification with the pion manifold.

For invertible M, every stationary point other than the polar part has at least one negative eigenvalue of Sigma\* M; for singular M there may be a continuum of minima, as for M = diag(1, 0) and Sigma = diag(1, exp(i theta)). A negative entry in the reduced mass block comes from choosing another reduction of one fixed even triple, and is not a physical mass-sign change at fixed fermion measure. A physical sign change is different: for one Dirac flavour in a background with n_0 zero modes, the determinants at m and -m differ by the factor (-1)^{n_0}, the factor associated with a shift of theta by pi.

## Spacetime-dependent Sigma

**Proposition 17.10 (referee; no kinetic term from the fixed action).** Let U(x) be a pointwise admissible involution on M, with c^mu = [D_M, x^mu] and B_mu = (U d_mu U) restricted to H_0. With R defined pointwise,

    R^-1 UU D R = D_M + c^mu P_- B_mu + gamma_5 d(x),

where P_- = (1 - gamma_5)/2. This operator is generally not self-adjoint. So:

1. If Sigma(x) only changes coordinates for the fixed operator D, the spectral action of D does not depend on Sigma, and conjugating D by a smooth unitary preserves its spectrum. Neither produces a two-derivative term.
2. A kinetic term needs an additional choice of operator. For D_new = D_M + gamma_5 d_Sigma(x) on flat M, with M = m I and Sigma\* = Sigma, Sigma^2 = 1, the heat expansion of Tr f(D_new^2/Lambda^2) contains

       (N_c f(0) m^2/(4 pi^2)) int tr(d_mu Sigma\* d^mu Sigma),

   tracing over both reduced blocks. The sign is positive when f(0) > 0. At M = 0 this operator has no dependence on Sigma.

*Proof.* The first display is direct differentiation in Theorem 17.1. Since B_mu is anti-Hermitian and P_- c^mu = c^mu P_+, the derivative term has adjoint c^mu P_+ B_mu. For the coefficient, D_new^2 = -(nabla^2 + E) with E containing -i gamma^mu gamma_5 d_mu d, and tr over spinors of the square of that term is 4 tr(d_mu d d^mu d); then the a_4 coefficient (1/16 pi^2) tr(E^2/2) gives (1/(8 pi^2)) tr_{H_0}(d_mu d d^mu d), and the two blocks of d give 2 N_c m^2 tr(d_mu Sigma d^mu Sigma). ∎

So the idea of a pion as a spacetime-dependent reduction, in the form we first proposed, does not produce a kinetic term: the kinetic term needs a nonzero m and a new operator, or a quantum effective action. On the even triple, D_M + gamma_5 S(x) with S built from Phi = m Sigma(x) is self-adjoint for every unitary Sigma. Its kinetic term is the Higgs-type term of an inner fluctuation, available when A_F contains flavour algebras acting on L and R, and then flavour gauge fields accompany it. The coefficient is proportional to N_c m^2, as in constituent-quark estimates of f_pi^2 (quoted from memory); here it is a classical spectral-action coefficient, and m is not derived.

## What the spectral data say about the condensate

**Proposition 17.8.** Let D_M(A) have eigenvalues lambda_n, with n_0 zero modes, on M of volume V, and for m > 0 put

    c_V(m; A) = (1/V) sum_n m/(lambda_n^2 + m^2) = (1/V) d/dm log |det (D_M(A) + gamma_5 m)|,

which is formal on a compact four-manifold and needs ultraviolet regularization, with subtraction of divergent terms including m Lambda^2, m^3 log Lambda and possibly curvature terms.

1. With a subtraction compatible with the pairing +-lambda whose finite remainder is O(m), for example odd and analytic in m, at fixed A on compact M, c_V(m; A) = n_0/(V m) + O(m) as m -> 0. A subtraction merely regular at m = 0 may leave a constant. So at finite volume and fixed background, no nonzero limit exists beyond the zero-mode term.
2. Let rho_m(lambda) = lim_{V -> infinity} <(1/V) sum_n delta(lambda - lambda_n)>_m for a measure <.>_m on gauge fields. Assume that the family is equicontinuous at 0 with rho_m(0) -> rho_0(0), that the tails and the ultraviolet subtraction are controlled uniformly in m, and that the infinite-volume limit may be taken inside the integral. Then lim_{m -> 0} lim_{V -> infinity} <c_V> = pi rho_0(0). This has the form of the Banks-Casher relation as stated by Giusti and Lüscher (the original, Nucl. Phys. B 169, eqs. (49), (50), has neither the factor pi nor an order of limits with the volume); the sign and flavour normalization of a condensate depend on convention, and the hypotheses here are ours.

Equicontinuity alone is insufficient: rho_m(lambda) = (1 + (1/2) sin(1/m)) exp(-lambda^2) gives no limit.

*Proof.* Item 1: for a cutoff preserving the pairs +-lambda, the determinant has absolute value m^{n_0} times the product of (lambda^2 + m^2) over lambda > 0, and the nonzero eigenvalues are bounded away from 0. Item 2: m/(lambda^2 + m^2) is pi times the Poisson kernel at scale m. ∎

So the spectral triple supplies the operator D_M + gamma_5 m, the density rho_A of each fixed operator, and the continuity of m -> 0 at fixed background, since DD^2 = D_M^2 + m^2. The gauge-averaged density, the regulated determinant or Pfaffian measure, the sequence of volumes and the order of limits need further input. A spectral action may contribute to a proposed gauge weight, but a single compact spectral triple does not specify the functional integral or the thermodynamic limit.

A proof of existence of QCD with fermions would supply a measure. It would not by itself give rho_0(0) > 0. The points to check when it appears are those in STRATEGY T10: whether m_q = 0 is included, and whether infinite volume is reached. With the anti-self-adjoint operator slashed-D = -i D_M and a compatible regulator, det(slashed-D + m) = m^{n_0} times the product over lambda > 0 of (lambda^2 + m^2), which is positive for m > 0; this positivity is part of the method of Vafa and Witten.

## The chiral limit on the interval

**Proposition 17.9.** In the scalar-algebra realization F_0 x I_l of Theorem 08.7, DD = D_M (x) 1 + gamma_5 (x) (D_0 + m Gamma_0), so the interval mass is an explicit mass term with the internal grading. The limit m -> 0 has two distinct routes:

1. *Localization (lemma 09).* With bulk mass -mu and mu l > 1, m = lambda_0 = mu sech(kappa_0 l), of order 2 mu exp(-mu l), which is positive at finite parameters. At fixed mu > 0, l -> infinity gives m -> 0 as an exponentially small residue. The relevant control is the dimensionless suppression: an absolute limit needs a scaling hypothesis, since mu = 2/l gives m -> 0 at fixed mu l, and mu l -> infinity does not ensure m -> 0 if mu grows fast enough. The localization and overlap mechanism is that of domain-wall fermions (Kaplan; Shamir), though this is neither lattice operator.
2. *Boundary Yukawa (lemma 12).* At X = 0 the zero modes are exact (Theorem 12.2), with boundary types (a) and (b). For flavour-degenerate bulk masses, D_0 commutes with U(N_Q) x U(N_U) on the whole tower, and at any l the boundary coupling X preserves exactly the stabilizer {(V_Q, V_U) : V_Q X = X V_U}. So X acts as a spurion located on the wall x = l, and the symmetry is exact at finite l when X = 0. In the towerless limit X = l Y_hat, M_F is proportional to X, and for N_Q = N_U the stabilizer is G(M_F) of Proposition 17.5. At finite l, M_F is not proportional to X: for one flavour with zero bulk masses, the light eigenvalue is arctan(abs(X))/l.

The boundary-coupled operator of route 2 is a different construction from the tensor-product truncation of Theorem 08.7, and an identification of the two at finite l would need a proof.

*Proof.* Route 1 is Theorem 9.4 and Lemma 9.5, and the scaling examples are direct. Route 2 follows from the invariance of the domain of D_X (lemma 12), Theorem 12.7 and Example 12.5. ∎

## Caveats

1. **Classical data.** Everything here is at the level of the classical fermion operator. Anomalies, the running of masses and confinement do not appear.
2. **QED.** With the photon present, the axial group reduces as stated in Proposition 17.5, and the set of reductions reduces as stated in Theorem 17.6.
3. **Regime.** Corollary 17.4 inherits the regime of the CCM relation.
4. **Label.** A reduction is a rewriting of one even triple. It gives no parent nine-dimensional geometry, in agreement with Theorem D, and the KO-5 label exists only where an s = -1 involution exists.

## Consequence for T10

The reduced action is (1/2) <jj psi, (D_M(A) + gamma_5 d) psi> on an unconstrained spinor, whenever the chosen admissible involution exists. A paired charged sector gives one Dirac action of explicit mass for either sign, up to a change of variables; a neutral unpaired sector gives a Majorana-type action and has only the KO-7 reduction, so the formal label 9 is available only for sectors with the required s = -1 involution. The symmetry restored at m_u = m_d = 0 is U(2) x U(2) on the colour-only algebra, and the reductions there form the homogeneous space U(2), with the mass condition picking out the stationary points of the mass term. The spectral data state the operator, the symmetry, this homogeneous space and the density of each fixed operator. The condensate and the pions as dynamical objects need the QCD measure and a quantum effective action.

## Numerical check

Python (numpy, scipy), run on 3 Nov 2026 in a temporary directory, not kept. On a random finite model with KO-4 signs for M (dimension 8) and a quark sector with N_f = 3 and random complex M, for three sign patterns of Sigma and both s: U^2 = 1, U gamma_F = -gamma_F U, [U, D_F] = 0 and U J_F = s J_F U hold to machine precision; R is unitary; the form <J R psi, D R psi'> equals <jj psi, DD psi'> to about 10^-14 and is antisymmetric; j^2 = s and j d = s d j; the formula for d_{Sigma,s} holds, after a first version of it was found wrong by this check; finite differences confirm that V_M is stationary at these Sigma; a generic unitary Sigma gives norm([U, D_F]) of about 10. R_5 (D_M + gamma_5 m) R_5 = D_M + i m holds to machine precision. The spin trace in Proposition 17.10 was evaluated with explicit Dirac matrices (tr of the square equals 4 |a|^2).
