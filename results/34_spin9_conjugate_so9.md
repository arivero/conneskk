# The so(9) fixed by the Chevalley involution on sl(9) is conjugate in E8 to the Spin(9) of the four-family count, with k = so(9) + 84 and p = 44 + 84, the 44 inside the gravity sector, and both are SO(9) inside E8

**Status.** Proposition (Proposition 5.6 of lemma 34, stated in Reading 3b (c)). Stated by Claude Sonnet 5.5 on 4 November 2026; proved and refereed by Claude Opus 5.5 (effort max, 5 November 2026; report in historical/reviews/2026-11-05_opus_check_05_21_34.md), with the weight-multiset branchings and Dynkin indices computed in Python with exact fractions (scripts not kept). Ledger row `d11_spin9_conjugate`. Stated after Proposition 12 of paper/generations_note.tex.

**Setting.** h a Cartan subalgebra of e8 inside the regular sl(9) of lemma 33, theta the Chevalley involution for h (-1 on h, e_alpha -> -e_{-alpha}); sigma the involution of the root table of lemma 34, +1 on the integer roots and -1 on the 128 half-integer roots, with fixed algebra so(16)_sigma; the Spin(9) of Reading 3 is the image of Spin(9) under its spinor 16 inside so(16)_sigma, in the class with 128 -> 44 + 84.

**Statement.**

1. theta preserves sl(9), acts on it by an outer involution, and its fixed algebra so(9)_theta is conjugate in SL(9) to the so(9) of lemma 33.
2. k_theta = so(16) as an algebra; as so(9)_theta-modules k_theta = 36 + 84 and p_theta = 44 + 84, with 44 = p_theta ∩ sl(9) in the gravity sector and the two 84 the graphs x ± theta x of Λ^3 C^9, each meeting the C_3 and C_6 sectors equally.
3. so(9)_theta acts on the vector 16 of k_theta by the spinor.
4. so(9)_theta is conjugate in E8 to the Spin(9) of Reading 3; under both, 248 = 36 + 44 + 84 + 84.
5. Inside E8 both connected subgroups are SO(9); the other spinor class, with 248 = 36 + 84 + 128, is Spin(9).

*Scope.* The two specific subalgebras; no claim that the decomposition 36 + 44 + 84 + 84 alone is one conjugacy class. The two placements of the top (C_3 sector of the SU(9) grading; with the fourth family in the 44 of Spin(9)) use two frames for conjugate subgroups, and no identification between the sectors is claimed.

**Proof.** Lemma 34, Proposition 5.6; the proof is there: -1 lies outside W(A_8), so theta is outer on sl(9); the fixed algebra of theta has dimension 120 and is so(16); Λ^2(16) = 36 + 84 forces the spinor; involutions of e8 with a 120-dimensional fixed algebra form one class, and the spinor embeddings with 128 -> 44 + 84 one class under Spin(16)/Z_2, since det A = -1 would exchange the half-spinors; the tensor modules 36, 44, 84 see no centre.

**What it leaves open.** A second independent reading. How the 96 states of the three-family frame sit against the conjugated Spin(9): for theta itself the projection of H_F to the 128 has 3 dimensions in the 44 and 45 in the 84 for t = +1/2, so the top meets only the three-form, against the numerical count of Reading 3b (a); the Spin(8) x Spin(8) frame of the commuting pair sigma, theta is where to compute it (lemma 34, What remains open).
