# With one copy of the 4 of Sp(2) in each degree of the end grading, the off-diagonal part of the window operator is a scalar lambda_M I_4, invariant under Sp(2), so the equivariant window operator carries no Higgs representation; G-breaking off-diagonal blocks do

**Status.** Proposition (Proposition 42.1), for the G-invariant block, with the escape through G-breaking blocks. Proved by Claude Fable 5.1 on 4 November 2026 by hand, from Proposition 28.19 (Schur's lemma). Ledger row `l42_no_higgs_in_window` (depending on `l28_tunnelling`). The table row on the Higgs doublet of paper/connes_kk_dictionary_note.tex.

**Setting.** The eight-state window W + V of lemma 29 on the disc bundle (29_window_case_b.md, 29_window_case_a.md), two copies of the 4 of G = Sp(2), one in each degree of the end grading: the core copy W, on which real functions of S^4 compress to M_2(H), and the wall copy V, on which real functions of CP^3 compress to M_4(C).

**Statement.**

1. After equivariant identifications the window operator is d_M = [[0, conj(lambda_M) I_4], [lambda_M I_4, 0]], and a phase makes lambda_M >= 0.
2. So its off-diagonal part is a multiple of the identity, G-invariant, and it transforms trivially under the isotropy group of any marked point.
3. The question of item (ii) of CORPUS_SALVAGE, whether that part transforms as T_p S^4, the Higgs representation of the first-stage note of the corpus, has the answer no for the G-invariant block.
4. (Escape.) Hom(W, V) = 4 (x) 4 = 1 + 5 + 10 as a representation of G contains T_p S^4 = (2, 2) twice after restriction to the isotropy group of p, once in the 5 and once in the 10; a G-breaking off-diagonal block at p, such as d = mu n^a Gamma_a of Example 16.9 with n orthogonal to the axis, carries the representation of item (ii).

*Scope.* The Sp(2)-equivariant window of lemma 29, with one copy of the 4 in each degree of the end grading; the G-invariant block.

**Proof.** Lemma 42, Proposition 42.1, by Proposition 28.19: an equivariant map between two copies of the irreducible 4 is a scalar. The decomposition 4 (x) 4 = 1 + 5 + 10 under Sp(2) = Spin(5) and its restriction to Spin(4) give item 4.

**What it leaves open.** Where the Higgs representation sits: in the variation of the marked lines of the connector of lemma 20, once the connector is a field (42_tangent_of_marked_line.md, 42_connector_moduli.md), and in the G-breaking blocks, which the vector sector of the window (STRATEGY T14) would have to supply. The connector is an input of the window, since Theorem 28.21 prescribes the windows and the connector is not derived.
