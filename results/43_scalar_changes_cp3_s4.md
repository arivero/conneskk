# Scalar changes of the coefficient connection attain every connection on the kernel bundle exactly when the functions <s_i, s_j> are independent on the fibre, which holds for H^0(CP^3, O(1)) and fails for functions pulled back from S^4, whose compressed image has real dimension six

**Status.** Corollary (Corollary 43.3). Proved by Claude Fable 5.1 on 4 November 2026 by hand. Refereed by Claude Opus 5.5 (effort max, 4 November 2026; report in historical/reviews/2026-11-04_opus_check_41_45.md): both computations confirmed; the last clause of the first version, which read the collar connection of lemma 29 as an instance of the matrix-valued case, was an error and is withdrawn (that connection acts at the wall, on the CP^3 copy, and moves the kernel). Ledger row `l43_scalar` (depending on `l43_berry` and `l10_toeplitz`). The table row on the connection on the window of paper/connes_kk_dictionary_note.tex.

**Setting.** The family of 43_berry_connection_criterion.md with alpha restricted to scalar horizontal forms, alpha = i a (x) 1_E with a real; the kernel H^0(CP^3, O(1)) of the Dolbeault-Dirac operator twisted by O(1), with unitary frame s_i = z_i/abs(z); and the twistor fibration CP^3 -> S^4.

**Statement.**

1. Scalar changes attain every connection on K exactly when the k^2 functions <s_i, s_j> on F_b are linearly independent.
2. On CP^3, <s_i, s_j> = z-bar_i z_j/abs(z)^2 are sixteen independent functions, so every connection on the rank-four kernel bundle is the Berry connection of an abelian change of the coefficient connection; in matrix form Q(w^\* B w/w^\* w) = (B + tr B)/5 (Example 16.9, item 2, from the fourth-moment formula of Proposition 10.1), a bijection of Hermitian matrices with eigenvalues 1/5 and 1.
3. For functions pulled back from S^4 the compressed image is the real span of 1 and Gamma_1, ..., Gamma_5, of dimension six (a real function from S^4 compresses to a Hermitian element commuting with j, Example 16.9, item 1; the span is attained by Proposition 10.1), so scalar changes along the base attain only the connections whose difference from nabla^K lies in that span, six of sixteen directions.

*Scope.* For scalar changes this separates the two sheets of lemma 29: the wall copy, functions on CP^3, attains every connection; the core copy, functions on S^4, six directions of sixteen. Whether matrix-valued horizontal changes of a restricted class reach the other ten is a further application of criterion 3 that has not been made.

**Proof.** Lemma 43, Corollary 43.3: Theorem 43.2 with the scalar subalgebra in place of Gamma(u(E)); the second-moment identity maps Herm(4) onto itself, and Example 16.9 with Proposition 10.1 gives the statement for S^4.

**What it leaves open.** A second independent reading. The collar connection of lemma 29 is outside the statement, so the question of STRATEGY T15, whether that connection is a choice or a construction, stays open; the compression of the twistor coordinates used in item 3 is 10_toeplitz_twistor_coordinates.md.
