# The weak-boson sum rule and the effective dimension of the interval

For STRATEGY T5b, T13 and T1, following [lemma 18](18_heavy_limit_near_cutoff.md), [lemma 22](22_dirac_operator_as_boundary_condition.md) and [lemma 23](23_two_gradings_interval.md). Proved by Claude Opus 5.5, with checks in Python (section "Numerical check"). Refereed by Terra 6.1 (effort max, 3 Nov 2026; [report](../reviews/2026-11-03_terra_check_25.md)): two errors and two gaps as first written, and amendments, all incorporated below.

**Outcome.** Unfolded, the interval parent is a circle of length 2l, and the parent operator is -i d/dx (x) 1 + 1 (x) D_F: the tower is D_F shifted by the momenta k_n = n pi/l. So the exact quadratic kernel of lemma 18 applies termwise over the tower. For small masses, at leading order, for the heat cutoff, the Taylor mass of a vector with constant profile in the transported frame is

    M^2 = ((3 - d_eff)/2) ||[D_F, T]||^2 / ||T||^2,      d_eff(s) = d log S / d log s,      S(s) = sum_{n in Z} exp(-n^2 pi^2/s^2),   s = l Lambda,

in Hilbert-Schmidt norms, where d_eff is the spectral dimension at the scale of the cutoff of the unfolded circle, equivalently of the paired Neumann and Dirichlet interval: 0 for l Lambda << 1 and 1 for l Lambda >> 1. For the Standard Model representation, at the same order,

    M_W^2 = ((3 - d_eff)/24) sum_f N_f m_f^2,       m_t/M_W = (8/(3 - d_eff))^{1/2} for the top alone,

with M_W^2/M_Z^2 = 5/8 for all s. So the relation 8 M_W^2 = sum N_f m_f^2 of the asymptotic spectral action is the zero-dimensional value, with m_t/M_W = sqrt(8/3). A resolved interval gives 12 M_W^2 = sum N_f m_f^2, with m_t = 2 M_W, as five-dimensional covariance requires for this operator on the circle. The endpoint m_t = 2 M_W is known in flat gauge-Higgs models with suitable representations (references below); in the inspected records the referee did not find the coefficient (3 - d_eff)/24 or its crossover, and priority remains open pending a wider search. The factor 3/2 in Proposition F of the paper, the finite-action coefficient relative to the Yang-Mills commutator quotient, is the ratio of these two endpoints. The crossover is at l Lambda about 2.

## Unfolding

Let D_X = E d/dx be the parent of lemma 22, and let D_0 + E Gamma_F D_F be its form after the transport of Corollary 22.2, where D_0 is the operator with X = 0.

**Proposition 25.1.** On the circle x in [-l, l] with periodic conditions, for psi in the domain of D_0, put

    Psi_Q(x) = Q_L(|x|) + i sgn(x) Q_R(|x|),      Psi_U(x) = U_R(|x|) - i sgn(x) U_L(|x|).

After multiplying by 1/sqrt(2), this is a unitary from the parent Hilbert space onto L^2(circle) (x) (H_+ (+) H_-), which maps the H^1 domain of D_0 onto the periodic H^1 domain, and it carries D_0 + E Gamma_F D_F to

    -i d/dx (x) 1 + 1 (x) D_F.

So the signed spectrum is k_n + mu_i, with k_n = n pi/l for n in Z and mu_i the eigenvalues of D_F. An even operator T = T_Q (+) T_U on H_F, constant in x in this transported frame and acting identically on both spin components, is carried to 1 (x) T.

*Proof.* Since Q_R(0) = Q_R(l) = 0 and U_L(0) = U_L(l) = 0, the functions Psi are continuous and periodic, and every smooth function on the circle arises from its even and odd parts. For x > 0, -i d/dx Psi_Q = Q_R' - i Q_L' = (D psi)_L + i (D psi)_R on Q, and -i d/dx Psi_U = -i U_R' - U_L' = (D psi)_R - i (D psi)_L on U, which are the transforms of D_0 psi; x < 0 is the same with the odd parts. For the connection term, with M\* the block of D_F, the term E Gamma_F D_F sends Psi_Q to M\* Psi_U and Psi_U to M Psi_Q. ∎

In this form D_F is a constant connection on the circle, with holonomy exp(2 i l D_F) up to the convention for parallel transport, and the two walls are the fixed points of the reflection that carries D_F to -D_F. With U = exp(-i pi Gamma_0/4), the identity of lemma 23 reads Gamma_1 Gamma_0 = exp(2 l Gamma_0 D_F) = U exp(2 i l D_F) U\*. This form of the interval as a circle with a reflection is the usual orbifold description. It also gives a one-line proof of the spectrum in Theorem 22.1.

**The frame.** By Corollary 22.2, D_X = R (D_0 + E Gamma_F D_F) R\*, with R(x) = exp(x Gamma_F D_F). A generator T constant after transport is R(x) T R(x)\* in the original frame of D_X, which generally varies with x and has an odd bulk component. Conversely, a constant generator in the original frame need not preserve the coupled wall, if it is broken. So the field used here requires an admissible enlarged gauge algebra, as in the prealgebra P of lemma 23, and it is generally not a field of the even algebra of lemma 22.

## The kernel over the tower

Let A_mu(y) = a_mu(y) T on M^4 = R^4, with T even and constant along x, and consider D = -i gamma^mu (d_mu + i A_mu) + gamma_5 V with V = -i d/dx (x) 1 + 1 (x) D_F. Theorem 1 of lemma 18 has this form, with V_0 = V, whose eigenvalues are k_n + mu_i, and T_{n i, n' j} = delta_{n n'} T_{ij}.

**Theorem 25.2.** With d_ij = mu_i - mu_j, for the heat cutoff t = 1/Lambda^2, the kernel is

    C_t(q^2) = (1/(8 pi^2)) sum_{n in Z} sum_{ij} |T_ij|^2 [ (2/t + d_ij^2 + q^2) I_t((k_n + mu_i)^2, (k_n + mu_j)^2; q^2) - (e^{-t (k_n + mu_i)^2} + e^{-t (k_n + mu_j)^2})/t ],

with I_t as in lemma 18. The sum converges, and it holds without expansion in D_F. Expanding in D_F, with C_t = C_0 + q^2 C_1 + ..., and with t = 1, so with k_n = n pi/(l Lambda) dimensionless,

    C_0 = (1/(8 pi^2)) ||[D_F, T]||^2 sum_n e^{-k_n^2} (1 - (2/3) k_n^2) + O(||D_F||^4),
    C_1 = (1/(8 pi^2)) (2/3) ||T||^2 sum_n e^{-k_n^2} + O(||D_F||^2).

So, with <k^2> = sum k_n^2 e^{-k_n^2} / sum e^{-k_n^2}, at fixed s and for fixed nonzero T,

    M^2 = C_0/C_1 = (3/2 - <k^2>) ||[D_F, T]||^2/||T||^2 + O(||D_F||^4 / Lambda^2).

*Proof.* V and T split into finite-dimensional blocks indexed by n, so equation (1) of lemma 18 applies to symmetric finite sets of blocks, and the limit is justified by Gaussian bounds, uniform for D_F in a bounded neighborhood of zero. The same bounds justify the Taylor expansion under the sum. Terms odd in k cancel between n and -n: exactly, the bracket at q = 0 is d_ij^2 int_0^1 E(u) [1 - u(1-u)(2k + mu_i + mu_j)^2] du, with E(u) = exp(-(1-u)(k + mu_i)^2 - u (k + mu_j)^2), whose next term is d_ij^2 e^{-k^2} ((2k^3 - 5k)/3)(mu_i + mu_j), and the bracket at order q^2 begins e^{-k^2} (2/3 - (2k/3)(mu_i + mu_j)). For the leading term of the expansion, put a_i = (k + mu_i)^2 = k^2 + p mu_i + mu_i^2 with p = 2k. To second order in mu,

    I(a_i, a_j) = e^{-k^2} [1 - (p/2)(mu_i + mu_j) - (mu_i^2 + mu_j^2)/2 + (p^2/6)(mu_i^2 + mu_j^2 + mu_i mu_j)],

and e^{-a_i} = e^{-k^2} [1 - p mu_i - mu_i^2 + p^2 mu_i^2/2]. Therefore

    2 I(a_i, a_j) - e^{-a_i} - e^{-a_j} = -(p^2/6) d_ij^2 e^{-k^2},

and adding d_ij^2 I gives d_ij^2 e^{-k^2} (1 - p^2/6) = d_ij^2 e^{-k^2} (1 - (2/3) k^2). Finally, sum_ij |T_ij|^2 d_ij^2 = ||[D_F, T]||^2. For C_1, at D_F = 0 the bracket in equation (3) of lemma 18 has d_ij = 0 and integrates to 2/3. ∎

Differentiating directly, <k^2> = (1/2) d log S/d log s = (s/2) d log S/ds, with S(s) = sum_n exp(-n^2 pi^2/s^2). This S is the heat trace of the Dirac operator of the unshifted circle of length 2l at t = 1/Lambda^2, equivalently the paired Neumann and Dirichlet trace on the interval, with S_N = (S + 1)/2 and S_D = (S - 1)/2 separately. So d_eff = d log S/d log s = -2 d log Tr e^{-t D^2}/d log t is its spectral dimension at that scale. For nonzero D_F, the parent trace has e^{-t (k_n + mu_i)^2}, and S is the unperturbed trace used in the leading expansion. Hence, at leading order,

    M^2 = ((3 - d_eff)/2) ||[D_F, T]||^2/||T||^2.

**The two limits.** We first take the coefficient at small D_F/Lambda at fixed s, and then the limit in s. Explicitly, d_eff ~ (4 pi^2/s^2) exp(-pi^2/s^2) as s -> 0, and d_eff = 1 - 4 s^2 exp(-s^2) + O(s^2 exp(-2 s^2)) as s -> infinity.

1. For s << 1, only n = 0 contributes. Then d_eff = 0, the factor is 3/2, and this is the towerless regime of lemma 18 and Proposition F of the paper.
2. For s >> 1, the sum is a Gaussian integral, with <k^2> = 1/2. Then d_eff = 1, and the factor is 1. This is forced by covariance on the unfolded circle: V is the fifth component of a five-dimensional Dirac operator with constant A_5 = D_F, and the local five-dimensional heat coefficient contains F_{MN} F^{MN}, with F_{5 mu} = i [D_F, A_mu] up to convention and with the same coefficient as F_{mu nu}^2. So the mass is the Hilbert-Schmidt commutator norm alone, as at small angle for the Yang-Mills parent of Theorem 23.6. On a general space with boundary, the bulk coefficient alone does not exclude boundary contributions; here the operator with these transported fields is unitarily equivalent to the circle problem, which is the reason they are absent.

In table form, at small masses:

| s = l Lambda | 0.3 | 1 | 1.5 | 2 | 2.5 | 3 | 5 |
|---|---|---|---|---|---|---|---|
| (3 - d_eff)/2 | 1.5000 | 1.4990 | 1.3935 | 1.1414 | 1.0240 | 1.0022 | 1.0000 |

**Corollary 25.3 (the sum rule).** For the three-generation Standard Model representation, with the literal particle and antiparticle trace, with Dirac masses small compared with Lambda and with 1/l, and with T a charged generator of SU(2)_L, at leading order,

    M_W^2 = ((3 - d_eff)/24) sum_f N_f m_f^2,

which at d_eff = 0 is 8 M_W^2 = sum N_f m_f^2, and at d_eff = 1 is 12 M_W^2 = sum N_f m_f^2. For the top alone,

    m_t/M_W = (8/(3 - d_eff))^{1/2},

from sqrt(8/3) = 1.633 at d_eff = 0 to 2 at d_eff = 1. The neutral direction scales with the same factor, so M_W^2/M_Z^2 = 5/8 at all s to this order, and the massless directions keep zero mass coefficient, while their kinetic coefficients can change. These are leading-order statements: already in the towerless top-only family, M_W^2 = (3/8) m_t^2 - (23/128) m_t^4/Lambda^2 + ... (equation (19) of lemma 18).

*Proof.* The trace gives ||T||^2 proportional to Q_11 = 12 and ||[D_F, T]||^2 proportional to K_11 = sum N_f m_f^2, which gives the coefficient. At d_eff = 0 this is the CCM relation (hep-th/0610241, Eq. (4.16)), as recovered in Proposition 4 and Remark 16 of lemma 18 at small x. The factor is common to all generators in Theorem 25.2. ∎

In terms of Yukawa couplings, with m_t = y_t v/sqrt(2) and M_W = g v/2, this reads y_t^2 = 4 g^2/(3 - d_eff), so y_t = 2 g/sqrt(3) at d_eff = 0, the top-dominance value of CCM (Eq. (5.27) there), and y_t = sqrt(2) g at d_eff = 1.

**Remark (positive Laplace cutoffs).** For f(z) = int e^{-tz} dnu(t) as in equation (4) of lemma 18, with t measured in units of 1/Lambda^2, the same computation gives at leading order

    M^2 = ((3 - d_nu)/2) ||[D_F, T]||^2/||T||^2,     S_nu(s) = int S(s/sqrt(t)) dnu(t),     d_nu = d log S_nu/d log s = 2 <t k^2>_nu,

where the average has weights dnu(t) e^{-t k_n^2}. Under the moment hypotheses there, dominated convergence gives the same endpoints, and the crossover and its corrections depend on nu. A general smooth cutoff, such as one flat near zero, need not belong to this class.

## Scope

- This is the Taylor quotient of a prescribed constant-profile vector, at leading order in D_F, about a prescribed background and not a demonstrated vacuum. Taylor and pole masses differ in general. Calling it the leading term of a lowest-mode mass also needs an admissible gauge field, a positive kinetic form and an isolated lowest branch; on the circle, translation invariance separates the zero Fourier sector, within which the generator matrix must still be diagonalized. For finite angles in the Yang-Mills parent, the exact masses are in Theorem 23.6, which expands as M_W^2 = 2 m^2 - (4/3) m^4 l^2 + ... and M_Z^2 = (16/5) m^2 - (64/75) m^4 l^2 + ..., in agreement with d_eff = 1 at leading order. That theorem is for its own Yang-Mills boundary problem, and it does not establish the full finite-cutoff gauge spectrum of the spectral action.
- T must be even and constant in the transported frame, so it preserves both walls there, and it needs the enlarged gauge algebra noted above. Vectors that are Dirichlet at a strict wall, as in Proposition 22.8, are a different boundary problem.
- All fields have flat profiles on one interval, with no bulk masses. In particular, for the top-only statement, the kinetic term counts all twelve doublets of three generations on the same interval, with the same S. With bulk masses to localize light fields, the spectra and overlaps change, and the kinetic coefficient must be recomputed from all eigenstates and overlaps.
- The spectral action is taken as a function of the fermion operator at a matching scale, with no running.
- For a boundary with reflection, the walls contribute heat-kernel boundary terms in general. Here the unfolding removes them for this operator and these generators.
- Other priority: the endpoint m_t = 2 M_W appears at tree level in Cacciapaglia, Csaki and Park, Fully radiative electroweak symmetry breaking, arXiv:hep-ph/0510366, section 5, for a suitable rank-four representation, and a limit approaching 2 M_W in Adachi and Maru, arXiv:1804.06012, Eq. (3.23). These are representation-dependent mechanisms, and they do not give the spectral-action crossover. Universal propagation alone does not impose it in ordinary universal extra dimensions (Cordero-Cid et al., arXiv:1108.2926, section 2).

## Reading

This connects three items of the project.

1. *The emergence of a dimension.* The heat dimension of the interval, which distinguishes the labels 10 and 11, enters the mass relation directly. As the cutoff resolves the interval, the coefficient moves from the finite-space value to the five-dimensional value.
2. *Proposition F and lemma 13.* The factor 3/2 is the finite-action coefficient relative to the Yang-Mills commutator quotient, and in this constant-profile calculation the two are the two ends of one function. Proposition F also contains a bounded-fermion against tower-scale obstruction and overlap conditions, which keep their separate hypotheses.
3. *The measured ratio.* With the Particle Data Group 2026 listings, m_t = 172.60 +- 0.27 GeV as a direct-measurement Monte Carlo mass, and M_W = 80.3625 +- 0.0077 GeV, the ratio is 2.148, which would formally correspond to d_eff = 1.27, outside the range. With a running mass of about 163 GeV (Yoon and Peskin, arXiv:1810.12352, section 3.3 and Eq. (23), for a pole mass of 173 GeV, with about 147 GeV at 2 TeV), it is 2.03, which corresponds to d_eff = 1.06. Dividing a running mass by an on-shell W mass is only a formal orientation and not a matching test at a common scale, and no running from the matching scale has been computed, so we draw no conclusion from this comparison. The known spectral-action value y_t = 2 g/sqrt(3) is the d_eff = 0 boundary condition. A tower near the weak scale, as in the separate unrefereed estimate of [the steer note](../d9_masses_fermi_qcd_steer.md), item 9, would use the d_eff = 1 boundary condition y_t = sqrt(2) g, at a matching scale of that order, in a specified effective theory with thresholds and a renormalization prescription.

## Numerical check

By Claude Opus 5.5, in Python (numpy), 3 Nov 2026, in a temporary directory, not kept. The kernel of lemma 18, with quadrature in u, was summed over the tower, with explicit 4 x 4 level blocks for the operator on the interval, independently of the unfolding.

- Random complex K_1 and Hermitian T_Q, T_U on C^3, with ||K|| = 10^-3 min(s, 1): the ratio of C_0/C_1 to the Hilbert-Schmidt quotient agrees with 3/2 - <k^2> to six digits, for s in {0.3, 1, 1.5, 2, 2.5, 3, 5, 10}.
- Three generations, top only, with T = sigma_x/2 on the U-fields: m_t/M_W agrees with (8/(3 - d_eff))^{1/2} to six digits on the same grid, from 1.63299 at s = 0.3 to 2.00000 at s = 5.
- The neutral direction, with weights for lepton and colour: M_Z^2/m^2 goes from 4.801 to 3.200 for universal mass, and M_W^2/M_Z^2 stays at 0.625 to four digits.
- Finite mass in the top-only family: M^2/m^2 at s = 5 is 0.2500, 0.2498, 0.2477, 0.2409, 0.2241, 0.1478 for m/Lambda = 0.02, 0.1, 0.3, 0.6, 1, 2, and at s = 0.5 it is 0.3749, 0.3732, 0.3591, 0.3145, 0.2277, 0.0555, the latter matching lemma 18.
