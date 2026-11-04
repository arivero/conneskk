# In the three-generation Standard Model with only the top massive, the W mass at fixed cutoff tends to zero as M_W^2 ~ Lambda^4/m_t^2 for both the Taylor and the pole definitions, with M_W^2 <= Lambda^2/e

**Status.** Proposition 4 and Theorem 5 of lemma 18. Proved by Astra 6 (job 18); checked by Claude Opus 5.5 in Python (closed forms, limits, the bound, the root of the pole equation) and by Terra 6.1 by hand (historical/reviews/2026-11-03_terra_check_18_16b.md). Ledger row `l18_taylor`. Item 1 of Proposition E.1 of paper/towerless_intervals.tex.

**Setting.** The full three-generation Standard Model representation with charge conjugates; zero Majorana matrix; every Dirac mass zero except one up-type colour triplet of mass m = mu Lambda; x = mu^2, r = e^{-x}; heat cutoff f(z) = e^{-z}. H(y) = int_0^1 exp(-y u(1 - u)) du, g(y) = (2 + y) H(y) - 2, h_x(y) = (2 + x + y) int_0^1 exp(-xu - yu(1 - u)) du - 1 - e^{-x}, A(x) = 2[1 - (1 + x) e^{-x}]/x, w(x) = 3 int_0^1 u^2 e^{-xu} du.

**Statement.**

1. (Proposition 4) The charged-vector kernel is C_W(q^2) = (Lambda^2/(4 pi^2)) [(9/2) g(y) + (3/2) h_x(y)], y = q^2/Lambda^2, and K_W(x) = 9/2 + (3/2) w(x) > 0.
2. M_{W,Taylor}^2/Lambda^2 = 9 A(x)/(4 K_W(x)) = 3[1 - (1 + x) e^{-x}]/(x[3 + w(x)]) = (3/8) x - (23/128) x^2 + O(x^3), and ~ 1/x as x -> infinity. So m/M_{W,Taylor} -> sqrt(8/3) as mu -> 0 and ~ mu^2 as mu -> infinity.
3. For every f in class (4), M_{W,Taylor}^2 ~ (3/8) m^2 as x -> 0 and M_{W,Taylor}^2/Lambda^2 ~ (int s^{-2} d nu(s))/(f(0) x) as x -> infinity, so the constant 1/e of item 5 is specific to the heat cutoff.
4. (Theorem 5) For every x > 0, C_W(-M_{W,pole}^2) = 0 has exactly one solution with M_{W,pole}^2 > 0; it is simple, with positive residue, and z(x) = M_{W,pole}^2/Lambda^2 ~ (3/8) x as x -> 0 and ~ 1/x as x -> infinity.
5. Both mass definitions obey 0 < M_{W,Taylor}^2, M_{W,pole}^2 <= Lambda^2/e.

*Scope.* If the other Dirac masses are small and nonzero, the answer depends on them, and masses of surviving light doublets can leave a residual vector mass. No closed-form inversion of the pole equation, no classification of complex poles and no Lorentzian unitarity theorem is asserted; the pole statements extend to measures nu supported in a compact subset of (0, infinity), and for the rest of class (4) only the Euclidean and Taylor conclusions are established. The pole mass governs the linearized dispersion of the continued quadratic action, the Taylor mass its two-derivative truncation, and they need not coincide near the cutoff.

**Proof.** Lemma 18, Proposition 4 and Theorem 5; the proofs are there. The massive block has eigenvalues +-m, connected to the massless down states with d_ij^2 = m^2; h_x'(y) > 0 for y <= 0 gives monotonicity of F_x = (9/2) g + (3/2) h_x, and F_x' >= 3 with the mean-value theorem gives z(x) <= A(x)/2 <= 1/e.

**What it leaves open.** Within this family the results refute an infinitely heavy W, Z, t limit at fixed cutoff for these mass definitions. Other finite data (18_fully_massive_family.md), a different action or constraint, a joint limit with Lambda -> infinity (18_joint_limit.md) and a quantum effective theory lie outside them (lemma 18, Scope).
