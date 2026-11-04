# The circle bundle Y_{a,b} over CP^2 x CP^1 with Euler class a h_1 + b h_2, a != 0, has H^2 = Z + Z/gcd(a, b), b_3 = 0 and H^4 of order a^2, and is spin exactly when a is odd and b is even; for (3, 2), H^2 = Z, H^4 = Z/9, and the divisor classes of U and V go to 2 and -3

**Status.** Proposition (Proposition 2.3). Proved by Claude Opus 5.5 (branch 11D; ledger agent `claude`); checked by its author in Python (historical/11D/checks_11d.py, section C: Smith invariants and the spin condition), by Terra 6.1 by hand, whose independent proof is written out in the Referee proofs of lemma 32 (the cited Kreck-Stolz paper was unavailable to the referee, so no comparison with it is claimed), and by Claude Sonnet 5.5 by hand (reports: historical/reviews/2026-11-04_terra_check_11d.md, historical/reviews/2026-11-04_sonnet_second_check_11d.md). Ledger row `d11_topology`. No paper cites it separately.

**Setting.** B = CP^2 x CP^1 with H^\*(B; Z) = Z[h_1, h_2]/(h_1^3, h_2^2), and Y_{a,b} -> B the circle bundle with Euler class e = a h_1 + b h_2, a != 0; g = gcd(a, b).

**Statement.**

1. H^2(Y) = Z + Z/g, and H^3(Y) = 0, so b_3(Y) = 0.
2. H^4(Y) = Z/g + Z/(a^2/g), a group of order a^2, cyclic when g = 1.
3. Y is spin exactly when a is odd and b is even.
4. For (a, b) = (3, 2): H^2 = Z, H^4 = Z/9, Y is spin, and the pullback H^2(B) = Z^2 -> H^2(Y) = Z is (x, y) -> 2x - 3y up to sign, so the divisor classes h_1 = [{l(U) = 0}] and h_2 = [{m(V) = 0}] go to 2 and -3, the values of 6Y on d^c and L.

The product member CP^2 x S^2 x S^1 of Witten's family (a = b = 0) is not spin.

*Scope.* The calculation is independent of the identification of Y_{3,2} with M^{111}.

**Proof.** Lemma 32, Proposition 2.3, and the Referee proofs there: the Gysin sequence, with the cup product H^2(B) -> H^4(B) of matrix [[a, 0], [b, a]], determinant a^2 and Smith invariants (g, a^2/g); w_2(Y) = pi^\*(h_1 mod 2), since the vertical tangent line is trivial, and the kernel of the pullback on H^2(B; Z/2) is spanned by e mod 2.

**What it leaves open.** The reading of the Betti class, which pairs with the two divisors as 2 and -3, as hypercharge is Proposal 3.1 of lemma 39 and has no file.
