# Under pointwise reality the real structures of the chiral interval are diag(alpha, beta) K with signs (+, eps', +), they compress to the two-point truncation, and the reflection x -> l - x has sign s = eps' against them

**Status.** Lemma (Lemmas 1, 2 and 3 of lemma 07), conditional on pointwise reality J f J^{-1} = conj(f). Proved by Claude Opus 5.5 (the Astra job stopped on the usage limit); Results 1 to 3 of lemma 08 (Astra 6, job 08) treat the statements under pointwise reality and add the amendments below. Ledger rows `l07_real` (amended by `l08_ce_reality`) and `l07_reflection` (amended by `l08_product`). Item 3 of Theorem D of paper/towerless_intervals.tex.

**Setting.** I_l = [0, l], H = L^2(I_l, C^2), D = E d/dx with E = [[0, 1], [-1, 0]], Dom D = {psi in H^1 : R(0) = 0, L(l) = 0}, Gamma = diag(1, -1); D and Gamma are real. J is antiunitary with J f J^{-1} = conj(f) for f in C^infinity(I_l), J Dom D = Dom D, J^2 = eps, JD = eps' DJ, J Gamma = eps'' Gamma J.

**Statement.**

1. (Lemma 1) J = diag(alpha, beta) K with constant |alpha| = |beta| = 1, eps = eps'' = +1 and alpha = eps' beta. Both values of eps' occur and are exchanged by J -> J Gamma. With Connes' even convention eps' = +1 the chiral interval has KO-dimension 0; eps' = -1 is the extended convention 0_-. The chiral boundary conditions exclude every real structure of this form anticommuting with Gamma, while the bare line allows some (W = E, signs (-1, +1, -1)).
2. (Lemma 2) Every such J commutes with P = 1_{[0,E]}(|D|), and on the truncation span(u_L, u_R) of lemma 05 it induces J_2 = diag(alpha, beta) K, with D_2 = m_1 sigma_1, Gamma_2 = sigma_3 and signs (+1, eps', +1).
3. (Lemma 3) The reflection (sigma psi)(x) = a (R(l - x), L(l - x)) preserves Dom D, anticommutes with Gamma and commutes with constants; it commutes with D exactly when the phases on the two components agree, and sigma^2 = 1 forces a = +1 or -1. On the truncation sigma = a sigma_1, and sigma J = s J sigma with s = beta/alpha = eps'.

*Amendments (job 08).* Lemma 1 needs pointwise reality: without it J_ref = sigma_1 R_l K has the KO-6 signs (08_counterexample_pointwise_reality_first_order.md). Lemma 2 holds for the compressed operators; with the full compressed diagonal algebra and J_2, first order fails. The sign s = eps' is the sign against the interval's own J; in the internal-first KO-6 product the bare reflection has s = -1 for either eps' (08_product_reflection_sign.md). The reflection commutes with constants and generally not with the interval algebra, since sigma f sigma^{-1} = f(l - .).

**Proof.** Lemma 07, Lemmas 1 to 3, and lemma 08, Results 1 to 3; the proofs are there. Antilinearity with J f = conj(f) J gives J = W K for a unitary matrix function W, the derivative term forces W constant, and the two boundary conditions force W diagonal.

**What it leaves open.** The interval fixes s only as far as its real structure is fixed, so the 9 versus 11 ambiguity here is the J versus J gamma ambiguity of even real triples (Dabrowski-Dossena). Conjecture 07.4, that physical charge conjugation selects the sign in F_0 x interval, is false as stated (08_counterexample_both_signs_fixed_data.md).
