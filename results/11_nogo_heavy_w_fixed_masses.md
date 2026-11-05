# The heavy-W prescription with every fermion mass fixed is incompatible with the CCM relation, and a heavy-W limit forces m_max -> infinity

**Status.** No-go theorem in its scope (Corollary 11.2), conditional on the CCM relation. Proved by Claude Opus 5.5; Result 9 of lemma 20 (Astra 6) treats the same statement. Ledger row `l11_nogo`, depending on `l11_bounds`. Proposition E of paper/towerless_intervals.tex.

**Setting.** The heavy-W prescription of canonical 14.1 and research_state 9: v -> infinity with y_f v fixed for every fermion and the gauge couplings fixed, so that the Yukawa couplings tend to zero. The CCM relation and the bounds of 11_heavy_w_mass_bounds.md, with N_g generations.

**Statement.**

1. Under the CCM relation the right-hand side stays bounded while M_W -> infinity, so the prescription is impossible in the spectral-action family.
2. A heavy-W/Z limit forces m_max -> infinity, with m_max >= M_W/sqrt(N_g).
3. Some fixed species is then unbounded along a subsequence; no single fixed species need diverge along the whole family. Example: M_W = t, theta(t) = (pi/4)(1 + sin t), m_e = 2 sqrt 2 t cos theta(t), m_nu = 2 sqrt 2 t sin theta(t), all other Dirac masses zero; then m_e^2 + m_nu^2 = 8 t^2 and each mass vanishes on an unbounded sequence.

*Hypotheses and escapes (lemma 20, Result 9).* The relation belongs to the stated normalization of the truncated asymptotic spectral action at matching, and concerns Dirac Yukawa masses, including the neutrino Dirac parameters, rather than physical seesaw eigenmasses. For N_g != 3 the coefficient 8 is an assumed normalization. Changing the action or the normalization, controlling the full finite-cutoff action, varying the particle content, or allowing Dirac masses to grow changes the problem.

**Proof.** Lemma 11, Corollary 11.2, and lemma 20, Result 9; the proofs are there. Both follow from the bounds of Proposition 11.1.

**What it leaves open.** Extrapolation to a heavy-mass limit at fixed cutoff needs a separate calculation, and the result directs attention to it (lemma 20, Result 9). Lemma 18 does it in the exact quadratic spectral action, where the top-only family gives M_W -> 0 at fixed cutoff (18_top_only_w_mass_at_fixed_cutoff.md).
