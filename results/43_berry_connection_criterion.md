# Changing the coefficient connection by alpha changes the Berry connection on a constant-rank kernel bundle by the fibrewise compression P alpha P, and every connection on the kernel bundle is a Berry connection exactly when the compression Gamma(F_b, u(E)) -> u(K_b) is surjective at every point, that is, when the products s_j s_i^\* of a kernel frame are linearly independent

**Status.** Theorem (Proposition 43.1 and Theorem 43.2). Proved by Claude Fable 5.1 on 4 November 2026 by hand; checked by its author by hand. No independent check yet: the ledger marks the row referee_pending. Ledger row `l43_berry`. The table row on the connection on the window of paper/connes_kk_dictionary_note.tex ("Theorem, unrefereed, lemma 43").

**Setting.** pi: P -> B a fibre bundle with compact fibres F_b and a horizontal distribution; E -> P a Hermitian vector bundle with a unitary connection nabla; D = (D_b) a smooth family of fibrewise elliptic self-adjoint operators whose kernels K_b have constant dimension k, with projections P_b. The Berry connection is nabla^K_X s = P_b nabla_{X^h} s, with X^h the horizontal lift. C_b(X) = P_b X P_b on Gamma(F_b, End(E)) has the adjoint C_b^\*(Y) = sum_{ij} Y_{ij} s_j s_i^\* in a unitary frame s_1, ..., s_k of K_b.

**Statement.**

1. (Proposition 43.1) For nabla' = nabla + alpha with alpha in Omega^1(P, u(E)), the Berry connection is nabla^K + beta with beta_b(X) = C_b(alpha(X^h) restricted to F_b). The vertical components of alpha and the change of the operators do not enter at this order; for a family depending on the connection the statement holds with the kernels held fixed, and the kernels move by the ordinary perturbation of the family, a separate effect.
2. (Theorem 43.2) The following are equivalent: every unitary connection on K -> B is the Berry connection of nabla + alpha for some alpha; C_b : Gamma(F_b, u(E)) -> u(K_b) is surjective for every b; for every b and a unitary frame of K_b, the k^2 sections s_j s_i^\* of End(E) over F_b are linearly independent.
3. When these hold, alpha(X^h) = C_b^\*(C_b C_b^\*)^{-1} beta_b(X) is a smooth preimage, and any vertical component can be added.

*Scope.* Constant-rank kernels, compact fibres and unitary connections; the Berry connection as the compressed horizontal derivative; first order in the change of the connection, with the kernels held fixed. The theorem is linear algebra fibre by fibre with a smoothness remark.

**Proof.** Lemma 43, Proposition 43.1 and Theorem 43.2: P_b applied to alpha(X^h) s is C_b(alpha(X^h)) s; C_b is surjective exactly when C_b^\* is injective; and C_b C_b^\* is positive, invertible and smooth in b.

**What it leaves open.** An independent check by a model other than its author. The engineered connection of the corpus on the Berger family of S^5 with flux (1, 1, 2), with its integrality statement for eta^2, stays a record that the theorem does not redo (Remark 43.4). The application to the two sheets of lemma 29 is 43_scalar_changes_cp3_s4.md.
