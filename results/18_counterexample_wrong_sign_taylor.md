# For V_0 = m sigma_3 and T = sigma_1 the Taylor kinetic coefficient of the exact quadratic spectral action is negative for m^2 > Lambda^2, while the full form has a unique positive pole with M^2 ~ 4 m^2

**Status.** Counterexample (Counterexample 7 of lemma 18). Proved by Astra 6 (job 18); checked by Claude Opus 5.5 in Python (direct heat trace at nonzero momentum against the kernel) and by Terra 6.1 by hand (historical/reviews/2026-11-03_terra_check_18_16b.md). Ledger row `l18_wrong_sign`.

**Setting.** H_F = C^2, V_0 = m sigma_3, T = sigma_1, x = m^2/Lambda^2, with the spacetime and trace conventions of Theorem 1 of lemma 18 (18_exact_quadratic_kernel.md).

**Statement.**

1. For the heat cutoff, C_T(q^2) = (Tr(T^2) Lambda^2/(8 pi^2)) e^{-x} [(2 + 4x + y) H(y) - 2].
2. Its q^2 Taylor coefficient is proportional to e^{-x}(1 - x): it vanishes at x = 1 and is negative for x > 1, so the two-derivative truncation has a wrong-sign vector kinetic term. M_Taylor^2 = 6 m^2/(1 - x) is a positive mass only for x < 1.
3. The full quadratic form has a unique positive real timelike pole with positive residue, with 4x < M_pole^2/Lambda^2 < 4x + 2, so M_pole ~ 2m diverges at fixed cutoff.
4. For every f in class (4), the Taylor kinetic coefficient is proportional to f(x) + x f'(x) = d/dx [x f(x)], which is negative somewhere, since x f(x) > 0 for x > 0 and x f(x) -> 0 at infinity.

*Scope.* Arbitrary finite data; the top-only Standard Model family lies outside it. It distinguishes a wrong-sign Taylor truncation from a negative-residue pole of the full form factor. Absence of complex poles or other nonlocal problems is not proved in either model.

**Proof.** Lemma 18, Counterexample 7; the proof is there. The generator connects the eigenvalues m and -m, so d_ij^2 = 4 m^2 while both squared eigenvalues equal m^2; the pole equation has the form z - 2 + 2/H(-z) = beta of the neutral massive mode (equation (36) of lemma 18) with beta = 4x, and evaluating C_T at y = -4x and y = -4x - 2 gives the bounds.

**What it leaves open.** The exact mass conclusions of the top-only family therefore do not extend to arbitrary finite representations (lemma 18, after Corollary 10); each set of finite data needs its own computation.
