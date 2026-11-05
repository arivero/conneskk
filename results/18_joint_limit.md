# In the top-only heat-cutoff family, m_t, M_W and M_Z diverge together only jointly with Lambda -> infinity, and the limit m_t/M_W -> sqrt(8/3) needs m_t/Lambda -> 0

**Status.** Corollary (Corollary 10 of lemma 18). Proved by Astra 6 (job 18). Ledger row `l18_joint`.

**Setting.** The background family and mass definitions of 18_top_only_w_mass_at_fixed_cutoff.md and 18_unbroken_coefficients_and_angles.md, with mu = m_t/Lambda.

**Statement.**

1. At fixed Lambda with mu -> infinity: m_t = mu Lambda -> infinity; M_{W,Taylor} and M_{W,pole} behave as Lambda/mu -> 0; M_{Z,Taylor} and M_{Z,pole} behave as sqrt(2/3) Lambda mu e^{-mu^2/2} -> 0; and m_t/M_W ~ mu^2 -> infinity.
2. At fixed 0 < mu < infinity with Lambda -> infinity, all four vector masses grow linearly with Lambda, as does m_t, and the ratios are functions of mu.
3. A controlled family with Lambda -> infinity, mu -> 0 and mu Lambda -> infinity has M_W, m_t -> infinity and m_t/M_W -> sqrt(8/3).

*Scope.* The top-only heat-cutoff Taylor family; other finite data and mass definitions need their own argument (ledger row). The obstruction has three scopes: the CCM identity belongs to the asymptotic truncation and cannot be extrapolated to mu -> infinity at fixed cutoff; the exact top-only quadratic action obstructs a fixed-cutoff heavy-W limit, for the heat cutoff under both mass definitions and for class (4) under the Taylor definition; and a family of actual nonzero stationary vacua meets the separate obstruction of No-go theorem 9 (18_nogo_radial_vacuum.md). Counterexample 7 excludes extending the exact mass conclusions to arbitrary finite representations.

**Proof.** Lemma 18, Corollary 10; the proof is there, from the limits of Proposition 4, Theorem 5 and Proposition 6 and the scaling of the dimensionless mass functions with Lambda.

**What it leaves open.** Neither centralizer-only decoupling nor a stationary Higgs vacuum follows from the joint scaling (lemma 18, consequence for T5b). In this family m_t/M_W differs from sqrt(8/3) for every x > 0 (18_weighted_sum_rule.md).
