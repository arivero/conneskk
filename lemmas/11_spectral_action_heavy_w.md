# Heavy W in the spectral-action family forces a heavy fermion

Theorem T5 of [../STRATEGY.md](../STRATEGY.md). Proved by Claude Opus 5.5. The result is conditional on the Chamseddine-Connes-Marcolli normalization at the matching (unification) scale.

**Hypothesis (CCM relation).** In the spectral action of the almost-commutative Standard Model, the gauge normalization g^2 f_0 / (2 pi^2) = 1/4 and the Higgs normalization by a = Tr(Y_nu* Y_nu + Y_e* Y_e + 3(Y_u* Y_u + Y_d* Y_d)) give, at the matching scale,

    8 M_W^2 = sum over generations of (m_nu^2 + m_e^2 + 3 m_u^2 + 3 m_d^2),

where the m are Dirac masses (Chamseddine-Connes-Marcolli, Adv. Theor. Math. Phys. 11 (2007), section 5). In outline (H the unrescaled Higgs field of CCM; the normalization is the three-generation one): the Dirac masses satisfy sum N_f m_f^2 = a abs(<H>)^2, while M_W^2 = (g^2/4)(a f_0/pi^2) abs(<H>)^2 with f_0 = pi^2/(2 g^2). Majorana masses do not enter a. Equivalently, with normalized Yukawa couplings, m_f = y_f v/sqrt 2 and M_W = g v/2, the relation reads sum N_f y_f^2 = 4 g^2. The coefficient 8 is derived for three generations; replicating the gauge representations N_g times with the same normalization of the gauge kinetic term gives sum N_f m_f^2 = (8 N_g/3) M_W^2 instead, so for N_g != 3 the coefficient 8 below is an assumption.

**Proposition 11.1.** Assume the CCM relation at fixed gauge coupling, with N_g generations, and let m_max be the largest Dirac mass. Then

    m_max / (2 sqrt 2) <= M_W <= sqrt(N_g) m_max.

In particular M_W -> infinity if and only if m_max -> infinity.

*Proof.* Every term has weight at least 1, so 8 M_W^2 >= m_max^2. Each generation has weights 1 + 1 + 3 + 3 = 8, so 8 M_W^2 <= 8 N_g m_max^2. ∎

**Corollary 11.2 (no-go for the fixed-mass prescription).** The heavy-W prescription of canonical 14.1 and research_state 9 (v -> infinity with y_f v fixed for every fermion and the gauge couplings fixed, so that the Yukawa couplings tend to zero) is incompatible with the CCM relation: the right-hand side stays bounded while M_W -> infinity. In the spectral-action family a heavy-W/Z limit forces m_max -> infinity, with m_max >= M_W/sqrt(N_g); some species is then unbounded along a subsequence, though no single fixed species need diverge along the whole family (for example M_W = t, m_e = 2 sqrt(2) t cos theta(t) and m_nu = 2 sqrt(2) t sin theta(t), with theta(t) = (pi/4)(1 + sin t) and every other Dirac mass zero: m_e^2 + m_nu^2 = 8 t^2, and each mass vanishes on an unbounded sequence). ∎

**Corollary 11.3 (only the top heavy).** Assume that the up-type Dirac mass of one generation (three colors) diverges and every other Dirac mass stays bounded. Then

    m_t^2 = (8/3) M_W^2 + O(1),   so   m_t / M_W -> sqrt(8/3), approximately 1.633.

Top dominance is a hypothesis here: the relation alone also allows, for example, y_e = 2g with every other Yukawa zero, which gives m_e = 2 sqrt(2) M_W and m_t = 0. Under the hypothesis, the surviving SU(3) x U(1)_em theory is vectorlike and anomaly-free, and job 03 gives the residual kinetic weights. ∎

**Remark (interval comparison).** In the massless chiral interval of job 05, the fermion truncation mass and the Neumann-Dirichlet gauge mass both equal pi/(2l) (Lemma 9.11). Under top dominance (Corollary 11.3), the CCM relation instead fixes m_t / M_W = sqrt(8/3) at matching. The interval model and the spectral action therefore assign the top and the W to the same scale with different order-one ratios. Matching them is part of T4.

**Regime of validity.** The CCM relation is a relation in the truncated asymptotic (heat-kernel) action at the matching scale Lambda; small Dirac masses relative to Lambda alone do not make it exact for the full finite-cutoff action, which also needs control of momenta and of the Majorana sector. With fixed Yukawa couplings, M_W and every mass with nonzero Yukawa diverge together as v -> infinity, with ratios fixed by all the Yukawas through the matching constraint (for example y_t = y_nu = g gives m_t/M_W = sqrt 2); Corollary 11.3's ratio needs top dominance. At fixed Lambda a heavy-W limit leaves every fixed small-mass hierarchy (m_max <= eps Lambda implies M_W <= sqrt(N_g) eps Lambda), so it needs Lambda -> infinity jointly or a calculation of the finite-cutoff action. The weights f(m^2/Lambda^2) of [lemma 03](03_mass_weighted_kinetic_terms.md), Part A, hold under its commuting finite-operator hypothesis and do not apply directly to the broken gauge and Higgs kinetic terms (Part C's w_L(x, 0) = 1 - 3x/4 + O(x^2) differs from f); near the cutoff the coefficients need their own calculation (STRATEGY T5b).

**Literature ([../LITERATURE.md](../paper/LITERATURE.md), section E).** The mass relation and the top ratio are in CCM 2007: equation (1.5), Lemma 4.6 equation (4.16) and section 5.4 equation (5.27). Corollary 11.3 restates that result; Proposition 11.1 and Corollary 11.2 apply it to the heavy-W prescription of the corpus.
