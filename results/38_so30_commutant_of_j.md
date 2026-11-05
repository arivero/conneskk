# For s = +1 the skew-Hermitian operators on the 30-dimensional massless block of the five light quarks commuting with j form so(30) = u(15) + Lambda^2 V, with u(15) the commutant of quark number, and for s = -1 they form usp(30) = u(15) + S^2 V; the colour antitriplets carry the counts (6, 6, 3) and (3, 6, 1)

**Status.** Proposition (Proposition 11.1). Proved by Claude Opus 5.5 on 4 November 2026. The decomposition is one of real vector spaces, 435 = 225 + 210 for so(30) and 465 = 225 + 240 for usp(30), with no Lie algebra structure on the summands. Ledger row `d11_so30_block` (with Proposition 11.2). Proposition 1 of paper/connes_kk_dictionary_note.tex ("The proof is linear algebra (\supp{38})"), and Proposition 11.1 with its table of counts in the section on the sign of an odd factorization of paper/real_structure_note.tex.

**Setting.** V = C^5 (x) C^3 with Q = 2/3 on u, c and -1/3 on d, s, b. The chirality +1 subspace of the five light quarks with colour is H_+ = {q_L} + {conj(q_R)} = V + V-bar, of dimension 30. U is unitary and grading-reversing, with U q_L = q_R, U conj(q_R) = s conj(q_L) and U J_F = s J_F U; c is J_F restricted to H_+, and j = U^{-1} c is an antiunitary on H_+ with j^2 = s. Here U only defines j: the representation used in lemma 38 does not commute with U, so this is not a doubling in the sense of lemma 06.

**Statement.**

1. For s = +1, in the basis V + V-bar with j(v, w) = (K^{-1} w, K v), the skew-Hermitian a with j a j^{-1} = a are a = [[alpha, B], [conj(B), conj(alpha)]] with alpha^\* = -alpha and B^T = -B; they form so(30) = u(15) + (Lambda^2 V)_R as real vector spaces (435 = 225 + 210; not a direct sum of Lie algebras), and the Hermitian generator H = i a satisfies j H j^{-1} = -H.
2. For s = -1 the same computation gives usp(30) = u(15) + (S^2 V)_R, 465 = 225 + 240.
3. In the colour antitriplet, with charges (-2/3, +1/3, +4/3), Lambda^2 V contributes (S^2 5, 3-bar) with the counts (6, 6, 3) and S^2 V contributes (Lambda^2 5, 3-bar) with (3, 6, 1); the colour sextets are (Lambda^2 5, 6) and (S^2 5, 6).

*Scope.* The massless light block. The group statement is Proposition 8.1 of lemma 35 (35_orientifold_sign_commutant.md). So the SO(30) of lemma 21 is the symmetry of this block for s = +1, the sign that Proposition 8.1 and STRATEGY T2c associate with label 11 and with the seesaw, and the counts of lemma 21 select the same sign.

**Proof.** Lemma 38, Proposition 11.1: j a j^{-1} = a gives the block form, and a^\* = -a gives alpha^\* = -alpha and B^\* = -conj(B), that is B^T = -B; then j (i a) j^{-1} = -i a.

**What it leaves open.** The Lambda^2 V block as a connection along the interval is 38_interval_connection_so30.md, its massless scalars are 38_interval_scalar_zero_modes.md, and its image in the finite window is 38_window_shadow_of_connection.md. The relation to the top through the (30, 2) of SO(32), with the second factor as the top's SO(2), is open.
