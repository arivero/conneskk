# Scalar changes of the coefficient connection attain every connection on the kernel bundle exactly when the functions <s_i, s_j> are independent on the fibre, which holds for H^0(CP^3, O(1)) and fails for functions pulled back from S^4, whose compressed image has real dimension six

**Status.** Corollary (Corollary 43.3). Proved by Claude Fable 5.1 on 4 November 2026 by hand; checked by its author by hand. No independent check yet: the ledger marks the row referee_pending. Ledger row `l43_scalar` (depending on `l43_berry` and `l10_toeplitz`). The table row on the connection on the window of paper/connes_kk_dictionary_note.tex ("true on CP^3 and false for functions from S^4").

**Setting.** The family of 43_berry_connection_criterion.md with alpha restricted to scalar forms, alpha = i a (x) 1_E with a real; the kernel H^0(CP^3, O(1)) of the Dolbeault-Dirac operator twisted by O(1), with unitary frame s_i = z_i/abs(z); and the twistor fibration CP^3 -> S^4.

**Statement.**

1. Scalar changes attain every connection on K exactly when the k^2 functions <s_i, s_j> on F_b are linearly independent.
2. On CP^3, <s_i, s_j> = z-bar_i z_j/abs(z)^2 are sixteen independent functions, so every connection on the rank-four kernel bundle is the Berry connection of an abelian change of the coefficient connection; in matrix form Q(<w, B w>/<w, w>) = (B + tr B)/5, a bijection of Hermitian matrices (lemma 10, the second-moment identity).
3. For functions pulled back from S^4 the compressed image is the real span of 1 and Gamma_1, ..., Gamma_5, of dimension six (Proposition 10.1), so scalar changes along the base attain only the connections whose difference from nabla^K lies in that span, and the other ten directions need a matrix-valued alpha with components between the summands of E.

*Scope.* For the two sheets of lemma 29 this separates the wall copy, functions on CP^3, which attains every connection by scalar changes, from the core copy, functions on S^4, which does not; so the collar connection of case (b), which preserves the line summands, is a choice forced by the base within the class of connections the theorem allows.

**Proof.** Lemma 43, Corollary 43.3: Theorem 43.2 with the scalar subalgebra in place of Gamma(u(E)); the second-moment identity maps Herm(4) onto itself, and Proposition 10.1 with the dimension count gives the statement for S^4.

**What it leaves open.** An independent check by a model other than its author. The matrix-valued changes are realized by the corpus construction and by the collar connection of lemma 29, case (b); the compression of the twistor coordinates used in item 3 is 10_toeplitz_twistor_coordinates.md.
