# Every monomial in U, V and every state of Lambda^\*(5-bar) satisfies 2t + 3d + 6Y = 0 mod 6, the U(1)_Y-neutral monomials have zero triality and integer weak isospin, and no tensor Kaluza-Klein mode on Y_{3,2}, on an invariant background, is a colour triplet or a weak doublet

**Status.** Proposition (Proposition 2.4). Proved by Claude Opus 5.5; Terra 6.1 extended item 2 to all monomials in U, V and their conjugates (section "Further proofs" of lemma 32). Ledger row `d11_z6` (depending on `d11_quotient`). Stated in the section on the string dualities of paper/connes_kk_dictionary_note.tex ("no bosonic Kaluza-Klein mode is a triplet or a doublet", "\supp{32}").

**Setting.** t is the triality (1 for 3, -1 for 3-bar) and d = 2j mod 2; U and V are as in 32_witten_space_hypercharge_quotient.md, with (t, d, 6Y) = (-1, 0, 2) on U and (0, 1, -3) on V.

**Statement.**

1. Every monomial in U and V, and every state of the exterior algebra Lambda^\*(5-bar), satisfies 2t + 3d + 6Y = 0 mod 6.
2. The U(1)_Y-neutral monomials in U, V and their conjugates have zero triality and d = 0.
3. Every tensor field on Y_{3,2} carries a representation of (U(3) x U(2))/U(1)_Y, on which SU(3) x SU(2) acts through PSU(3) x SO(3). So no tensor Kaluza-Klein mode on Y_{3,2}, on a background invariant under the displayed action, is a colour triplet or a weak doublet.

4. The semisimple action on the ordinary spin bundle also factors through PSU(3) x SO(3), so its spinors have trivial triality and integer weak isospin. This agrees with the restrictions on all multiplets in [Fabbri et al., eq. (3.1)](https://arxiv.org/pdf/hep-th/9903036#page=15).

Item 1 is the statement that the Standard Model group is (SU(3) x SU(2) x U(1))/Z_6 = S(U(3) x U(2)); in the quotient realization the Z_6 is the kernel of SU(3) x SU(2) -> Isom(Y_{3,2}).

*Scope.* Tensor fields and ordinary spinors on a background invariant under the displayed semisimple action. Additional gauge twists can carry independent centre characters.

**Proof.** Lemma 32, Proposition 2.4, and the section "Further proofs" there: the congruence holds on U and V, is additive and is reversed by conjugation; neutrality 2 Delta_U = 3 Delta_V gives 3 divides Delta_U and 2 divides Delta_V; the semisimple kernel is Z_6. For item 4, PSU(3) x SO(3) acts on the canonical bundle K_B, preserving the holomorphic volume form on its total space. Its invariant SU(4) frames lift to Spin(8), and restricting to the unit circle bundle Y gives the unique spin structure there.

**What it leaves open.** The effect of independently specified equivariant twists and the brane representations. States with fractional hypercharge are charged under the quotient circle and cannot be functions or tensors on Y_{3,2}, which points to states outside its Kaluza-Klein spectrum for the quarks and leptons (39_nogo_three_form_colour.md).
