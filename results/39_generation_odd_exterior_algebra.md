# As SU(3) x SU(2) x U(1)_Y representations, Lambda^1 + Lambda^3 + Lambda^5 of the 5-bar is one generation with nu^c, the 16, and Lambda^0 + Lambda^2 + Lambda^4 is its conjugate, with the charge X = 5 - 2k on Lambda^k

**Status.** Proposition (Proposition 3.2). Proved by Claude Opus 5.5 by enumeration; a proof by Terra 6.1 is written out in the section "Further proofs" of lemma 39. The identification of the 16 of SO(10) with the odd forms on C^5 is standard, and the ledger records it as known prior work. Ledger row `d11_fock`. No paper cites it separately.

**Setting.** 5-bar = U + V with U = (3-bar, 1)_{1/3} and V = (1, 2)_{-1/2}, with 6Y = 2 on U and -3 on V, as in the quotient of 32_witten_space_hypercharge_quotient.md.

**Statement.**

1. Lambda^1(5-bar) = d^c + L; Lambda^3(5-bar) = Lambda^3 U + Lambda^2 U (x) V + U (x) Lambda^2 V = e^c + Q + u^c, with 6Y = 6, 1 and -4; Lambda^5(5-bar) = nu^c, since the determinant charge is 3 x 2 + 2 x (-3) = 0.
2. The odd degrees have dimension 5 + 10 + 1 = 16, the even degrees are their conjugates, and the 32 states are the finite Hilbert space of one generation with nu^c (dim H_F = 96 for three).
3. The charge of SO(10)/SU(5) is X = 5 - 2k on Lambda^k, so 3, -1 and -5 on the odd degrees.

*Scope.* The representation and charge count is the standard spinor construction. With the divisor classes of Proposition 2.3 added formally with the weights 2 and -3, a state of Lambda^k carries the total class of k cycles, which is its 6Y (for Q = U^1 U^2 V^1, 2 + 2 - 3 = 1); the identification of these classes with wrapped-brane states is a proposal.

**Proof.** Lemma 39, Proposition 3.2, and the section "Further proofs" there: Lambda^3 3-bar = 1, Lambda^2 3-bar = 3 and Lambda^2 2 = 1, and Lambda^k(5-bar) is dual to Lambda^{5-k}(5-bar) when the determinant is trivial.

**What it leaves open.** Conjecture 3.3 of lemma 39, a brane reading with no file: at N = 1 one generation and its conjugate are the exterior algebra of five fermionic zero modes of fivebranes wrapped on the baryonic cycles {U^i = 0} and {V^A = 0}, with hypercharge the homology class and X the number of fivebranes. It needs the fermionic statistics of the wrapped states, the regime N = 1 and three generations, and it rests on Proposal 3.1, which reads hypercharge as the Betti vector of Y_{3,2}.
