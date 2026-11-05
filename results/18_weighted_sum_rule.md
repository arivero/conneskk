# For the heat cutoff and doublets with one massive member, 8 kappa M_{W,Taylor}^2 = sum_f N_f m_f^2 rho(m_f^2/Lambda^2) with rho(x) = 2[1 - (1 + x) e^{-x}]/x^2, so the CCM relation is the small-mass term of a weighted sum rule

**Status.** Proposition, proved (Remark 16 of lemma 18). Proved by Claude Opus 5.5. Ledger row `l18_sum_rule`. Stated after Proposition E.1 of paper/towerless_intervals.tex.

**Setting.** Heat cutoff; the mass-compatible doublet decomposition of Proposition 13 of lemma 18: P the particle-trace weight of complete massless doublets, heavy doublets i of weight d_i with one massive member of mass m_i, N_i = 2 d_i and P + sum_i d_i = 6; x_i = m_i^2/Lambda^2, w(x) = 3 int_0^1 u^2 e^{-xu} du, A(x) as in Proposition 4.

**Statement.**

1. 8 kappa M_{W,Taylor}^2 = sum_i N_i m_i^2 rho(x_i), with rho(x) = A(x)/x = 2[1 - (1 + x) e^{-x}]/x^2 and kappa = (P + sum_i d_i w(x_i))/6.
2. As every x_i -> 0, rho and kappa tend to 1, which is the CCM relation; its range is m << Lambda.
3. For the top alone, kappa = (3 + w)/4. Then m/M_W departs from sqrt(8/3) by 5% at m about 0.45 Lambda, and M_W has a unique maximum, M_W/Lambda = 0.5242 at x = 2.024 (by a sign argument and Python).
4. In the top-only heat-cutoff family m_t/M_W differs from sqrt(8/3) for every x > 0, since 3 + w - 4 rho vanishes at zero and is increasing; so the limit with M_W and m_t diverging together and m_t/M_W -> sqrt(8/3) needs Lambda -> infinity faster than m_t (Corollary 10).

*Scope.* Item 4 is a necessity for that family: with one complete massless lepton doublet and one member of each other doublet of common mass m, the weighted sum equals the unweighted CCM sum at some x_\* > 0. A massive diagonal contribution to the trace is exponentially suppressed above the cutoff, while the mixed loop with a massless partner has rho ~ 2/x^2 at large x, so a vacuum with no other mass leaves the W mass with no source.

**Proof.** Lemma 18, Remark 16; the derivation is there, from Proposition 13.

**What it leaves open.** Whether the classical action is meaningful for m > Lambda is a separate question, on which these formulas do not decide (lemma 18, Remark 16).
