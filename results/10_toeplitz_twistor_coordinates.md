# The level-one Berezin-Toeplitz compression on CP^3 sends the twistor coordinates x_a to Gamma_a/5, with Q(x_a)^2 = I/25 and Q(x_a^2) = I/5

**Status.** Proposition (Proposition 10.1). Proved by Claude Opus 5.5; checked by Claude Opus 5.5 by Monte Carlo (2 x 10^6 samples; deviations at most 0.0009 and 0.0006, at a sampling error of about 10^-3) and by Terra 6.1 by hand, effort max: the three identities correct, and an index error in the displayed fourth moment of the proof corrected (report appended to lemma 11). Ledger row `l10_toeplitz`. It answers Part A of parked job 04, which the corpus had labelled a checked calculation without a script. Used in Proposition H of paper/towerless_intervals.tex ("\supp{10} and \supp{16}").

**Setting.** Gamma_1, ..., Gamma_5 Hermitian generators of Cl(5) on C^4, Gamma_a Gamma_b + Gamma_b Gamma_a = 2 delta_ab. For [w] in CP^3, x_a([w]) = w^\\* Gamma_a w/w^\\* w, and the level-one Berezin-Toeplitz compression is

    Q(f) = 4 int_{CP^3} f([w]) P_w d mu([w]),

with P_w the rank-one projector onto w and mu the Fubini-Study probability measure, so that Q(1) = I.

**Statement.**

1. Q(x_a) = Gamma_a/5.
2. Q(x_a)^2 = I/25.
3. Q(x_a^2) = I/5.
4. In particular Q is not multiplicative.
5. More generally (referee report appended to lemma 11), Q(w^\\* A w/w^\\* w) = (tr(A) I + A)/5 for every 4 x 4 matrix A; lemma 16 uses this for Hermitian A.

**Proof.** Lemma 10, Proposition 10.1; the proof is there. Lift to w uniform on S^7 in C^4; Wick's theorem gives E[w_j w_k conj(w_i) conj(w_l)] = (delta_ij delta_kl + delta_jl delta_ki)/20 and the sixth moment as the sum over the six matchings divided by 120; tr Gamma_a = 0 and Gamma_a^2 = I.

**What it leaves open.** These compressions generate M_4(C) at level one with no limit taken (16_compressed_algebras_noncommutative.md), and the real functions of S^4 generate M_2(H) (16_twistor_level_one_m2h_m4c.md). Part B of job 04, the Berger gauge normalizations, stays parked (lemmas/README.md).
