# Heavy W in the spectral-action family forces a heavy fermion

Theorem T5 of [../STRATEGY.md](../STRATEGY.md). Proved by Claude Opus 5.5 without Astra or Fable. The result is conditional on the Chamseddine-Connes-Marcolli normalization at the matching (unification) scale.

**Hypothesis (CCM relation).** In the spectral action of the almost-commutative Standard Model, the gauge normalization g^2 f_0 / (2 pi^2) = 1/4 and the Higgs normalization by a = Tr(Y_nu* Y_nu + Y_e* Y_e + 3(Y_u* Y_u + Y_d* Y_d)) give, at the matching scale,

    8 M_W^2 = sum over generations of (m_nu^2 + m_e^2 + 3 m_u^2 + 3 m_d^2),

where the m are Dirac masses (Chamseddine-Connes-Marcolli, Adv. Theor. Math. Phys. 11 (2007), section 5). In outline: the Dirac masses satisfy sum N_f m_f^2 = a abs(<H>)^2, while M_W^2 = (g^2/4)(a f_0/pi^2) abs(<H>)^2 with f_0 = pi^2/(2 g^2). Majorana masses do not enter a.

**Proposition 11.1.** Assume the CCM relation at fixed gauge coupling, with N_g generations, and let m_max be the largest Dirac mass. Then

    m_max / (2 sqrt 2) <= M_W <= sqrt(N_g) m_max.

In particular M_W -> infinity if and only if m_max -> infinity.

*Proof.* Every term has weight at least 1, so 8 M_W^2 >= m_max^2. Each generation has weights 1 + 1 + 3 + 3 = 8, so 8 M_W^2 <= 8 N_g m_max^2. ∎

**Corollary 11.2 (no-go for the fixed-mass prescription).** The heavy-W prescription of canonical 14.1 and research_state 9 (v -> infinity with y_f v fixed for every fermion and the couplings fixed) is incompatible with the CCM relation: the right-hand side stays bounded while M_W -> infinity. In the spectral-action family the heavy-W/Z limit forces at least one Dirac mass to diverge, with m_max >= M_W/sqrt(N_g). ∎

**Corollary 11.3 (only the top heavy).** If the up-type Dirac mass of one generation (three colors) diverges and every other Dirac mass stays bounded, then

    m_t^2 = (8/3) M_W^2 + O(1),   so   m_t / M_W -> sqrt(8/3), approximately 1.633.

The heavy top is therefore a consequence of the spectral action, not an extra choice. The surviving SU(3) x U(1)_em theory is vectorlike and anomaly-free, and job 03 gives the residual kinetic weights. ∎

**Remark (interval comparison).** In the massless chiral interval of job 05, the fermion truncation mass and the Neumann-Dirichlet gauge mass both equal pi/(2l) (Lemma 9.11). The CCM relation instead fixes m_t / M_W = sqrt(8/3) at matching. The interval model and the spectral action therefore assign the top and the W to the same scale with different order-one ratios. Matching them is part of T4.
