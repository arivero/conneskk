# If the up-type Dirac mass of one generation is the only diverging Dirac mass, the CCM relation gives m_t/M_W -> sqrt(8/3)

**Status.** Proposition (Corollary 11.3), conditional on the CCM relation and on top dominance, which is a hypothesis. Proved by Claude Opus 5.5. Ledger row `l11_top`, depending on `l11_bounds`. Proposition E of paper/towerless_intervals.tex. The result restates CCM 2007, section 5.4, equation (5.27).

**Setting.** The CCM relation of 11_heavy_w_mass_bounds.md. The up-type Dirac mass m_t of one generation (three colours) diverges, and every other Dirac mass stays bounded.

**Statement.**

1. With R the weighted sum of the other Dirac masses squared, R = O(1) and 8 M_W^2 = 3 m_t^2 + R, so m_t^2 = (8/3) M_W^2 + O(1).
2. Hence m_t/M_W -> sqrt(8/3), about 1.633.
3. Under the hypothesis, the surviving SU(3) x U(1)_em theory is vectorlike and anomaly-free, each surviving charged Dirac fermion having identical left and right representations of the unbroken group.

*Hypothesis.* Top dominance is assumed. The relation alone allows, for example, y_e = 2g with every other Yukawa zero, which gives m_e = 2 sqrt 2 M_W and m_t = 0. With fixed Yukawas, y_t = y_nu = g gives m_t/M_W = sqrt 2, with both masses diverging as v -> infinity.

**Proof.** Lemma 11, Corollary 11.3; the proof is there, by item 1.

**What it leaves open.** The ratio holds in the asymptotic matching regime. At fixed cutoff the top-only family gives M_W^2 ~ Lambda^4/m_t^2 instead (18_top_only_w_mass_at_fixed_cutoff.md), and m_t/M_W -> sqrt(8/3) with all scales diverging needs Lambda -> infinity with m_t/Lambda -> 0 (18_joint_limit.md). The massless chiral interval assigns the top and the W to the same scale with a different order-one ratio (lemma 11, remark on the interval comparison).
