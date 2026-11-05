# On each eigenspace of d^2 in H_+, of dimension n, the unitaries commuting with the antiunitary j of an odd factorization, j^2 = s, form O(n) for s = +1 and USp(n) for s = -1, in which case n is even

**Status.** Proposition (Proposition 8.1). Proved by Claude Opus 5.5; a proof by Terra 6.1 is written out in the section "Further proofs" of lemma 35. Ledger row `d11_orientifold_sign` (depending on `l06_factorization`). Proposition 8.1 in the section on the sign of an odd factorization of paper/real_structure_note.tex ("\supp{35}"), and stated in the section on the real structure of paper/connes_kk_dictionary_note.tex ("\supp{35}").

**Setting.** A KO-6 finite triple factored as in lemma 06 through a grading-reversing unitary involution U, commuting with the algebra and with D, with U J = s J U: s = -1 gives KO-5 (label 9) and s = +1 gives KO-7 (label 11). The antiunitary j induced on H_+ has j^2 = s and commutes with d^2 = D^2 restricted to H_+.

**Statement.** Let E be an eigenspace of d^2 in H_+, of dimension n; j preserves E because it commutes with d^2.

1. If s = +1, j is a real structure on E, and the unitaries of E commuting with j form O(n).
2. If s = -1, j is a quaternionic structure on E, n is even, and the unitaries of E commuting with j form USp(n).

*Scope.* The commutant is defined by j and the eigenspace of d^2 alone, and it need not commute with d, with the represented algebra or with other physical structures: for j the complex conjugation of C^2 and d = diag(1, -1), a generic rotation in O(2) does not commute with d. The symmetries of the pair (j, d) are smaller, O(n_+) x O(n_-) for s = +1 and U(n/2) for s = -1, where j swaps the eigenspaces of d at +mu and -mu. O(n) is disconnected, with identity component SO(n) for n >= 2. The even dimension for s = -1 is the Kramers degeneracy already stated in lemma 06.

**Proof.** Lemma 35, Proposition 8.1, and the section "Further proofs" there: for j^2 = 1 the fixed points form a real subspace E_R with real inner product, and a real orthonormal basis of E_R identifies j with complex conjugation, whose unitary commutant is O(n); for j^2 = -1, v and jv are orthogonal, and induction gives a quaternionic orthonormal basis, so the commutant is USp(n).

**What it leaves open.** The reading of the two groups as the Chan-Paton groups of O^- and O^+ orientifold planes, with s = +1 selected by the seesaw sector (STRATEGY T2c), is a proposal of lemma 35, and it needs an explicit Chan-Paton representation compatible with the rest of the data. On the massless light block of the five light quarks the s = +1 commutant is the SO(30) of lemma 21 (38_so30_commutant_of_j.md). The relation between the window's degenerate levels in the bulk and the U(k) of k D8-branes in the bulk is open.
