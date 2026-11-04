# Among the circle quotients Y_{a,b} of S^5 x S^3 with coprime weights only (3, 2) has a Calabi-Yau cone, and a free circle quotient of a moment level in a complex representation of dimension n has dimension 2n - 3, which is 7 only for n = 5: for SU(5) with hypercharge, the 5 and the 5-bar

**Status.** Proposition (Proposition 2.2). Proved by Claude Opus 5.5 (branch 11D; ledger agent `claude`); checked by its author in Python (historical/11D/checks_11d.py, section A), by Terra 6.1 by hand and by Claude Sonnet 5.5 by hand (reports: historical/reviews/2026-11-04_terra_check_11d.md, historical/reviews/2026-11-04_sonnet_second_check_11d.md). Ledger row `d11_unique` (depending on `d11_quotient`). Stated in the section on the string dualities of paper/connes_kk_dictionary_note.tex ("11 = 4 + (2 x 5 - 3)", "\supp{32}").

**Setting.** Y_{a,b} = (S^5 x S^3)/U(1), with weights b on C^3 and -a on C^2, gcd(a, b) = 1 and a, b > 0; and, for item 2, a complex representation of dimension n with a free circle action and its moment map mu.

**Statement.**

1. The cone over Y_{a,b} is Calabi-Yau only for (a, b) = (3, 2).
2. (S^{2n-1} cap mu^{-1}(0))/U(1) has dimension 2n - 3, which is 7 only for n = 5. Among representations of SU(5), with hypercharge as the circle, only the 5 and the 5-bar give a seven-dimensional quotient; the 10 gives 17 and the 5 + 10 gives 27.

So Witten's count reads 11 = 4 + (2 x 5 - 3), with the seven internal dimensions coming from the smallest representation of SU(5) and hypercharge as the circle.

*Scope.* Free circle quotients of moment levels in unit spheres; the Calabi-Yau condition of the cone as the vanishing of the sum of weights.

**Proof.** Lemma 32, Proposition 2.2: the Calabi-Yau condition is 3b - 2a = 0; the dimension is 2n - 1 for the sphere, minus one for the moment map and one for the circle; the irreducible representations of SU(5) of dimension 5 are the 5 and the 5-bar.

**What it leaves open.** The count fixes the representation. The eleven-dimensional vacuum AdS4 x Y_{3,2} as the v -> 0 endpoint, with hypercharge from the three-form, rests on Proposals 3.1 and 3.4 of lemma 39, which have no files.
