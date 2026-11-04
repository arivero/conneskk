# With an inherited pointwise real structure J_0 a J_0^{-1} = a^\*, compressed data satisfy order zero if and only if the generated algebra is commutative

**Status.** No-go theorem in its scope (Proposition 16.1). Proved by Claude Opus 5.5; checked by Terra 6.1 by hand, with an amendment incorporated (historical/reviews/2026-11-03_terra_check_15_16.md), and by Astra 6 by hand (lemma 20, Result 10, a consensus check). Ledger row `l16_standard_nogo`. Item 2 of Proposition H of paper/towerless_intervals.tex; cited as "\supp{16}, Proposition 16.1" in paper/connes_kk_dictionary_note.tex.

**Setting.** The compression setting of 16_compressed_algebras_noncommutative.md, with a real structure J_0 on H_0 (antiunitary, J_0^2 = +-1, with the grading sign) such that J_0 a J_0^{-1} = a^\\* for all a in A_0 and J_0 D_0 = eps' D_0 J_0; J_F = J_0 restricted to V, which J_0 preserves because Sigma = -Sigma.

**Statement.**

1. J_F Q(a)^\\* J_F^{-1} = Q(a) for every a in A_0.
2. The data (A_F, V, d, J_F) satisfy order zero if and only if A_F is commutative.
3. The same holds for a product with a fixed finite factor that itself satisfies order zero, with the compatible product real structure; the commutativity then concerns the compressed function algebra, and the separate finite factor may be noncommutative.

*Hypotheses (lemma 20, Result 10).* Compression followed by algebra generation, with this inherited pointwise reality and a J_0-invariant window, on the standard correspondence L^2(A_0). Together with lemma 07, Amendment 2 (first order fails for C + C with the inherited J_2), this is the form of the obstruction.

*Escapes (lemma 20, Result 10).* The coarse correspondence supplies a separate opposite action and escapes the hypothesis, as Theorem 16.2 shows (16_coarse_correspondence_order_one.md). Other representations or real structures require their own order-zero calculation.

**Proof.** Lemma 16, Proposition 16.1, and lemma 20, Result 10; the proofs are there. Order zero would make Q(a) commute with Q(b)° = Q(b) for all a, b, so O_F and A_F would be commutative; conversely J_F A_F J_F^{-1} = A_F.

**What it leaves open.** A noncommutative window needs a doubling of the parent, a second sheet, or another real structure; lemma 16 develops the first two (16_two_sheet_parent.md).
