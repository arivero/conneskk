# For M = F X G with graded positive diagonal F and G, the products sigma_1 ... sigma_p are bounded on both sides through the trailing minors of X, so with nonzero trailing minors the masses are m_k = f_k g_k (Delta_{N-k+1}/Delta_{N-k}) (1 + O(eps))

**Status.** Lemma (Lemma 12.8), with Corollary 12.9. Proved by Claude Opus 5.5; checked by Claude Opus 5.5 in Python (2000 random complex 3 x 3 cases with log-uniform gradings over 8 e-folds, 6000 inequalities, no violation) and by Terra 6.1 by hand, effort max: Lemma 12.8 correct, Corollary 12.9 wrong as first stated (without the minor condition) and corrected (report appended to lemma 12). Ledger row `l12_graded`. Item 5 of Theorem C of paper/towerless_intervals.tex ("\supp{12}").

**Setting.** F = diag(f_1 <= ... <= f_N) and G = diag(g_1 <= ... <= g_N) positive, X in M_N(C), M = F X G. For p = 1, ..., N: T_p = {N - p + 1, ..., N}, Delta_p = |det X_{T_p T_p}|, D_p = max over p-subsets I, J of |det X_{IJ}|, eps_p^F = f_{N-p}/f_{N-p+1} and eps_p^G = g_{N-p}/g_{N-p+1} (both 0 for p = N), K_p = binom(N, p) - 1, and f_I the product of f_i over i in I.

**Statement.**

1. (Lemma 12.8) f_{T_p} g_{T_p} Delta_p <= sigma_1 ... sigma_p <= f_{T_p} g_{T_p} [Delta_p + D_p ((1 + K_p eps_p^F)(1 + K_p eps_p^G) - 1)].
2. (Corollary 12.9) If every trailing minor Delta_p is nonzero, put E_0 = E_N = 0 and E_p = (D_p/Delta_p)((1 + K_p eps_p^F)(1 + K_p eps_p^G) - 1) for 1 <= p < N. Then 1/(1 + E_{p-1}) <= sigma_p/(f_{N-p+1} g_{N-p+1} Delta_p/Delta_{p-1}) <= 1 + E_p. Indexing generations by k = N - p + 1, m_k = f_k g_k (Delta_{N-k+1}/Delta_{N-k}) (1 + O(eps)) as eps = max_p (eps_p^F + eps_p^G) -> 0, for fixed X and N.
3. With M_F = Phi_Q Y_hat Phi_U and anarchic Y_hat (all minors of order one), the masses follow phi(c_k^Q) phi(c_k^U). Since phi(c) = (2c)^{1/2} e^{-c} (1 + O(e^{-2c})), order-one differences of the c's give exponential hierarchies, m_k/m_{k+1} ~ exp(-(c_k^Q - c_{k+1}^Q) - (c_k^U - c_{k+1}^U)) up to factors of order one; the ratio also carries sqrt(c_k^Q c_k^U/(c_{k+1}^Q c_{k+1}^U)), bounded when adjacent c's differ by bounded amounts.

*Scope.* Without the minor condition the mass formula fails: F = G = diag(t, 1) and X = sigma_1 give Delta_1 = 0 while both singular values equal t. Uniform statements need uniform bounds on D_p/Delta_p.

**Proof.** Lemma 12, Lemma 12.8 and Corollary 12.9; the proofs are there. By Cauchy-Binet the p-th compound of M has entries f_I g_J det X_{IJ} and norm sigma_1 ... sigma_p; its (T_p, T_p) entry gives the lower bound, and the sum of absolute entries the upper; dividing the bounds for p and p - 1 gives the corollary.

**What it leaves open.** The mixing pattern (12_mixing_upper_bound.md). The localization parameters c are free inputs of the construction.
