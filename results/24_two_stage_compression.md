# The compression from the scalar cylinder to the finite window is Phi_l(f) = l^-1 int_0^l E_0(R(x)\* T_f(x) R(x)) dx, independent of the radius, and with aligned walls it generates R + R on the S^4 factor, against H + H when M_2(H) is generated between the two stages

**Status.** Theorem (Result 4 of lemma 24). Proved by Astra 6. Ledger row `l24_two_stage`. Stated in the Status section of paper/boundary_condition_note.tex ("\supp{24}").

**Setting.** The exact spectral construction of 24_spectral_walls_exact_window.md. For a scalar multiplier f(y, x), T_f(x) = Q_K(f(., x)) and E_0(T) = (T + Gamma_0 T Gamma_0)/2. Real-valued functions and real algebra generation are used for M_2(H).

**Statement.**

1. The direct compression is Phi_l(f) = l^-1 int_0^l E_0(R(x)\* T_f(x) R(x)) dx, and it does not depend on r.
2. Q_K(C^infinity(S^4, R)) = span_R{1, Gamma_1, ..., Gamma_5}.
3. For aligned walls Gamma_1 = Gamma_0 = Gamma_p, E_p(Gamma_a) = p_a Gamma_p, so direct scalar compression on the S^4 factor has image span_R{1, Gamma_p}, which is the algebra R + R. Generating M_2(H) first and then compressing gives E_p(M_2(H)) = {a : [a, Gamma_p] = 0} = H + H.
4. On the CP^3 factor, real scalar compression is onto the Hermitian 4 x 4 matrices, and a 2 + 2 aligned grading generates M_2(C) + M_2(C). For the two-sheet coarse correspondence of Example 16.9, with Gamma_0(xi, eta) = (Gamma_p xi, -eta Gamma_p), direct aligned scalar compression generates R + R + M_4(C).
5. Endpoint restrictions do not change these finite-dimensional images, by the separation argument of Result 7 of lemma 20.

*Scope.* Equation (16) has the two Hom spaces and the two scalar algebras of Example 16.9 as inputs, and the endpoint argument proves equality of finite-dimensional linear images without identifying the parent algebras, norms, gauge groups or one-forms. At the intermediate stage spectral walls still give scalar endpoint values, and enlarging them to the stabilizers of Gamma_0 and Gamma_1, as in lemma 23, is another change of the parent algebra.

**Proof.** Lemma 24, Result 4; the proof is there. Inserting the window embedding on both sides of the multiplication operator gives item 1; all compressed real S^4 functions are quaternionic Hermitian, a space of real dimension six spanned by the displayed matrices; Clifford multiplication gives E_p(Gamma_a) = p_a Gamma_p.

**What it leaves open.** In the second procedure the noncommuting products that generate the quaternionic blocks are inserted between the two compressions, and a commutative parent producing H + H directly is open. Result 6 of lemma 24 records that the second sheet, the compatible reality, the quaternionic grading and the connector remain prescribed data. The disc bundle of lemma 28 gives a connected scalar parent whose prescribed windows generate M_2(H) + M_4(C) (28_prescribed_windows_m2h_m4c.md).
