# The axial anomaly on the reduced action, and the two-flavour discrete term

For STRATEGY T10 and T13, following [lemma 17](17_explicit_masses_chiral_limit.md) and open question 6 of the [steer note](../d9_masses_fermi_qcd_steer.md). Proved by Claude Opus 5.5, using the index theorem and Witten 1982 as references. Referee pending.

**Outcome.**

1. On the reduced operator D_M + gamma_5 d, with masses commuting with the gauge field, the regulated axial trace has an exact form at every cutoff: each flavour block contributes its index, weighted by f(m^2/Lambda^2) (Theorem 27.1). The regulated mass term equals it identically (Proposition 27.3). As Lambda -> infinity this is the anomaly with the coefficient 2 N_c tr(T^3 Q^2) = 1, on the action of Theorem 17.1 (Corollary 27.2).
2. The operator of Proposition 17.10 at M = 0 is the massless Dirac operator with a pure-gauge connection on one chirality. So for two flavours and a reduction Sigma : S^4 -> SU(2) in the nontrivial class, the classical action and the spectral action are unchanged, while the quark integral in that frame changes by (-1)^{N_c} (Proposition 27.5). This is the Z_2 of Witten's anomaly, the discrete term of the pion sigma model, and the mod-two index on S^5 of [the research state](../connes_kk_research_state.md#612-the-s5-reduction-and-a-protected-real-index-mode), for one and the same generator of a bordism group. The relation stops at the shared Z_2: the corpus S^5 is an internal space, and the S^5 here is the compactified S^4 x R of an auxiliary flow.

## Setting

Let M be a closed Riemannian spin 4-manifold. Following Corollary 17.2, a paired sector gives one Dirac fermion: we take the operator

    DD = D_M(A) + gamma_5 d,   d = diag(m_f) on E = C^{N_c} (x) C^{N_f},   m_f >= 0,

on L^2(S) (x) E, with action psi-bar DD psi, and with A the gauge connection of the commuting subalgebra: colour and electromagnetism, so that A is diagonal in the flavour index, with charge Q_f on flavour f. Let T be a Hermitian matrix on C^{N_f}, diagonal in the same basis, with eigenvalues tau_f. Then d and T commute with A, and Theorem 17.1 gives DD^2 = D_M(A)^2 + d^2.

Let f be a cutoff with f(DD^2/Lambda^2) trace class, for example in the positive Laplace class of lemma 18. Let ind_f be the index of D_M(A) on the block of flavour f.

The rotation psi -> exp(i alpha gamma_5 T) psi, psi-bar -> psi-bar exp(i alpha gamma_5 T) sends DD to D_M + gamma_5 d exp(2 i alpha gamma_5 T), since gamma_5 anticommutes with D_M. So the classical action is invariant at d = 0. Its Jacobian, regulated by the spectrum of DD, is exp(-2 i alpha Tr(gamma_5 T f(DD^2/Lambda^2))), up to the orientation convention.

## The axial trace

**Theorem 27.1.** For every Lambda > 0,

    Tr(gamma_5 T f(DD^2/Lambda^2)) = sum_f tau_f f(m_f^2/Lambda^2) ind_f.

*Proof.* On block f, DD^2 = D_f^2 + m_f^2, with D_f = D_M(A) on that block. The operator D_f anticommutes with gamma_5, so it maps the eigenspace of D_f^2 with eigenvalue mu > 0 isomorphically between the two chiralities. So these eigenspaces contribute zero to the trace with gamma_5, and only ker D_f remains, with weight f(m_f^2/Lambda^2) and signed dimension ind_f. ∎

No expansion in m/Lambda enters. By the index theorem,

    ind_f = (1/8 pi^2) int tr_f(F wedge F) - (N_c/24) p_1(M),

with F Hermitian, and with F = Q_f e F_em + g G on block f, tr_f(F wedge F) = N_c Q_f^2 e^2 F_em wedge F_em + g^2 tr_c(G wedge G).

**Corollary 27.2 (the anomaly on the reduced action).** Let Lambda -> infinity at fixed masses. If tr T = 0, then

    2 Tr(gamma_5 T f(DD^2/Lambda^2)) -> f(0) 2 N_c tr(T Q^2) (e^2/8 pi^2) int F_em wedge F_em,

with no gluonic and no gravitational term. For two flavours with T = T^3 and Q = diag(2/3, -1/3), the coefficient is 2 N_c tr(T^3 Q^2) = 1, so that the right side is f(0) (e^2/16 pi^2) int F_em,mu nu F-tilde_em^mu nu, with F-tilde^mu nu = (1/2) epsilon^mu nu rho sigma F_rho sigma. A singlet T = 1 on N_f flavours gives in addition the gluonic term f(0) 2 N_f (g^2/8 pi^2) int tr_c(G wedge G) and the gravitational term, up to the normalization by f(0). ∎

The normalization f(0) = 1 is the usual convention for a regulator, and it is the value that makes the Jacobian the anomaly. The local form, with a smooth function chi on M inserted, follows at Lambda -> infinity from the a_4 coefficient, (1/16 pi^2) tr(gamma_5 T (E^2/2 + Omega^2/12)), which gives the integrands above: the factor exp(-t d^2) commutes with the heat kernel and changes only higher orders in t. So the algebraic coefficient quoted in the steer note, item 6, now has the regulated trace and measure that it lacked.

**Proposition 27.3 (the mass term equals it at every cutoff).** Let m_f > 0 for all f. Then

    Tr(f(DD^2/Lambda^2) d T DD^-1) = Tr(gamma_5 T f(DD^2/Lambda^2)) = sum_f tau_f f(m_f^2/Lambda^2) ind_f.

*Proof.* DD^-1 = (D_M + gamma_5 d)(D_M^2 + d^2)^-1. The term with D_M has zero trace, by conjugation with gamma_5, since all other factors commute with gamma_5. The remaining term is Tr(f gamma_5 T d^2 (D_M^2 + d^2)^-1). On the nonzero spectrum of D_f it vanishes by the pairing of Theorem 27.1, and on ker D_f the factor m_f^2/m_f^2 is 1. ∎

So the integrated Ward identity holds in a fixed background at every Lambda, with a common factor f(m_f^2/Lambda^2) on both sides, and the two sides carry the same content. The pseudoscalar density sees the signed count ind_f, and the scalar density of Proposition 17.8 sees the unsigned count n_0.

**Proposition 27.4 (a heavy flavour at fixed cutoff).** With the weights of Theorem 27.1, for T^3 on a doublet (t, b) with m_b/Lambda -> 0, the electromagnetic coefficient is

    2 N_c (1/2) (Q_t^2 f(x) - Q_b^2 f(0)) / f(0),   x = m_t^2/Lambda^2.

It equals 1 at x = 0. For the heat cutoff and x -> infinity it tends to -N_c Q_b^2 = -1/3, with gluonic and gravitational terms proportional to f(x) - f(0). ∎

This is the fixed-cutoff family of lemma 18, where the top is heavy at fixed Lambda. The regulated trace there is the anomaly of the remaining incomplete doublet. In a low-energy theory, the difference is carried by a Wess-Zumino term, as in D'Hoker and Farhi (Nucl. Phys. B 248 (1984) 59 and 77, named in the steer note, and not read here). The weights are a statement about the regulator, since Proposition 27.3 cancels them in the Ward identity. They become physical only if f is part of the action at a finite scale, as in lemma 18 and lemma 25.

## The two-flavour discrete term

Take N_f = 2 and M = 0, with electromagnetism off, so that SU(2)_L x SU(2)_R is a symmetry of the reduced sector (Proposition 17.5). By Theorem 17.6, at M = 0 the admissible involutions are U_Sigma, with Sigma in U(N_f), exchanging the two eigenspaces of gamma_F by Sigma. Let Sigma(x) be a smooth map, and take the pointwise reduction of Proposition 17.10. Its operator at d = 0 is

    D_M + c^mu P_- B_mu,   B_mu = Sigma d_mu Sigma^*,        (1)

up to the convention for which side carries Sigma. On the chirality selected by P_- this is the massless Dirac operator with the pure-gauge connection B of SU(2), and on the other chirality it has no flavour connection. The colour connection is unaffected.

Let Sigma : S^4 -> SU(2) generate pi_4(SU(2)) = Z_2, on the round S^4, with colour background zero, so that D_M has no kernel. Let Pf_-(B) and Pf_+(0) be the square roots of Witten 1982 for one Weyl doublet of each chirality, defined by following the eigenvalues from Sigma = 1.

**Proposition 27.5.** In the frame of (1), the quark integral is Pf_-(B)^{N_c} Pf_+(0)^{N_c}, and

    Pf_-(B)^{N_c} Pf_+(0)^{N_c} = (-1)^{N_c} Pf_-(0)^{N_c} Pf_+(0)^{N_c}.

The spectral action and the classical fermion action do not depend on Sigma.

*Proof.* The first statement counts N_c Weyl doublets of SU(2) on each side, with chiralities as in (1). The second is the main result of Witten 1982: (det i D-slash)^(1/2) of one doublet is odd under a gauge transformation in the nontrivial class of pi_4(SU(2)) (Eq. (6) there, read on 3 Nov 2026). The last sentence is item 1 of Proposition 17.10. ∎

So the pointwise map R of Theorem 17.1 preserves every classical quantity of the sector. For N_c odd it reverses the sign of the fermion integral between the two classes of reductions. For a dynamical pion field this is the sign of the discrete term in the N_f = 2 sigma model: Lee, Ohmori and Tachikawa (arXiv:2009.00033, section on N_f = 2, read in the LaTeX source) define the coupling as (-1)^{N_c [sigma]}, with [sigma] the class in the reduced spin bordism group of SU(2), which is Z_2. The original discussion is Witten 1983 (*Global aspects of current algebra*), which we have not read. For sigma a dynamical field, Proposition 17.10 still says that a kinetic term needs a new operator or a quantum effective action, and Proposition 27.5 supplies only the sign.

**Remark 27.6 (the relation with the S^5 index).** By Witten 1982, the sign equals (-1) to the number of zero modes of the five-dimensional Dirac operator on S^4 x R, with the flow from 1 to Sigma, and footnote 2 there compactifies this to S^5, with the invariant zero mode. For isospin j the parity is that of 2 tr T^2 = 2 j (j + 1)(2j + 1)/3, which is odd exactly at j = 2k + 1/2 ([LITERATURE](../LITERATURE.md), section G). So the discrete term, with N_c colours, has the parity of N_c times the mod-two index of the doublet on the nontrivial SU(2) bundle on S^5. That is the index of the operator D_{S^5,V} in section 6.12 of the research state, on the same generator of Omega_5^Spin(BSU(2)) = Z_2.

The scope of this identification is the bundle and the index. In the research state the S^5 is an internal space, the base of the chain 7 -> 5. In Proposition 27.5 the S^5 is the compactification of spacetime and the auxiliary flow parameter, with the flavour group of the quarks as structure group. We have not proved a relation between those two spaces, or between their SU(2) groups, and open question 6 of the steer note stays open for that part.

## Caveats

- The background is fixed in Theorem 27.1 and Proposition 27.3. A measure on gauge fields and the order of limits are separate, as in Proposition 17.8.
- T, d and A commute by hypothesis. So T^3 and the W are excluded: this is the commuting subalgebra of Proposition 17.3. Off-diagonal d is outside Theorem 27.1, where DD^2 has a term gamma_5 [d, D_M].
- Proposition 27.5 has colour background zero and M = 0. For a nonzero colour background the integral is complex in general, and the statement on the sign is on the class of Sigma through the flow, which we have not developed.
- The regulated Jacobian by the spectrum of DD is one choice. It is gauge invariant under the commuting group, which is why the anomaly falls entirely on the axial current.

## Consequence for T10

The chiral limit now has, on the reduced action: the anomaly with its coefficient, the Ward identity at every cutoff, the top against the cutoff, and the discrete term. Still to be supplied are a measure on gauge fields, the map to a quantum order parameter, and the kinetic term of a pion field, which need a quantum effective action.

## Numerical check

By Claude Opus 5.5, in Python (fractions, numpy), 3 Nov 2026, in a temporary directory, not kept. These check the arithmetic and the pairing, and the proofs stand without them.

- 2 N_c tr(T^3 Q^2) = 1 and tr T^3 = 0, in exact fractions. The third-generation coefficient for the heat cutoff at x = 0, 0.1, 1, 5, 50 is 1.0000, 0.8731, 0.1572, -0.3243, -0.3333.
- On T^2 x T^2 with fluxes n_1, n_2 and Landau spectra, truncated to 2000 levels: Tr(gamma_5 exp(-t(D^2 + m^2))) = exp(-t m^2) n_1 n_2 to 15 digits, at (n_1, n_2, t, m) = (1, 1, 0.3, 0.7), (2, 3, 0.05, 1.2), (4, 1, 1, 0).
- tr T^2 half-integer at j = 2k + 1/2 and integer at j = 2k + 3/2 for k up to 20, in exact fractions.
