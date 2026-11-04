# In a four-family finite geometry with KO-6 signs, the flip of colour and family through a unitary identification is a unitary involution commuting with gamma and J that conjugates the top Dirac block into the Dirac blocks of the neutrinos of families 1, 2 and 3, so the two heavy limits have conjugate light spaces of 116 states

**Status.** Proposition (Proposition 5.3, with the referee amendment that the identification iota be unitary, or unitary up to a common scalar). Proved by Claude Opus 5.5 (branch 11D; ledger agent `claude`) by hand; checked by its author by hand, by Terra 6.1 by hand, whose example iota(ell) = 2 e_0 shows that an arbitrary isomorphism does not make F unitary (Referee proofs of lemma 34), and by Claude Sonnet 5.5 in Python (unitarity, F^2, commutation, conjugation of the blocks, F against M) (reports: historical/reviews/2026-11-04_terra_check_11d.md, historical/reviews/2026-11-04_sonnet_second_check_11d.md). Ledger row `d11_flip` (depending on `d11_transposition`). Proposition 10 of paper/generations_note.tex.

**Setting.** H_f = (C^2_L + C^2_R) (x) C^4_c (x) C^4_f and H = H_f + conj(H_f), with J the antilinear exchange of the two summands and gamma = +1 on C^2_L, -1 on C^2_R in H_f and its negative on conj(H_f), the signs of KO-dimension six. iota: C^4_c -> C^4_f is unitary, sends the lepton line ell to e_0 and C^3 onto the span of e_1, e_2, e_3, and F(x (x) y) = iota^{-1}(y) (x) iota(x) on C^4_c (x) C^4_f, extended by the identity on the chirality factor and to conj(H_f) by J F J^{-1}.

**Statement.**

1. F is unitary, F^2 = 1, and F commutes with gamma and J.
2. For T_top = Y (x) P_q (x) P_0 and T_nu = Y (x) P_ell (x) (1 - P_0), with Y the map of the up state of C^2_L to the up state of C^2_R and P_ell, P_q = 1 - P_ell, P_0 the lepton, quark and family-0 projectors, F T_top F^{-1} = T_nu; likewise for the down-type block of family 0 and the charged leptons of families 1, 2, 3.
3. For D commuting with F, D + t T_top and D + t T_nu are conjugate by F for every t, and their heavy limits have conjugate light spaces of 116 states. The light algebras correspond when the algebra is F-invariant; the Pati-Salam and Standard Model algebras act on C^4_c alone and are not F-invariant.

*Scope.* F equals M of 34_colour_family_transposition.md on the left-handed states and M followed by the particle-antiparticle exchange on the right-handed ones, where M reverses gamma on 64 states, so F lies outside W(E8). F maps the top Yukawa block to Dirac blocks of neutrinos, and it does not map the Majorana block to a Dirac block, since the Majorana block joins H_f to conj(H_f).

**Proof.** Lemma 34, Proposition 5.3: F acts on C^4_c (x) C^4_f only, conjugating a (x) b to iota^{-1} b iota (x) iota a iota^{-1}, so P_q (x) P_0 goes to P_ell (x) (1 - P_0); the two Dirac blocks have rank 12 and kernels of dimension 128 - 12 = 116.

**What it leaves open.** A finite geometry whose generation space is C^4 with an algebra exchangeable with M_4(C), and a Dirac operator compatible with the exchange (reading 2 of lemma 34, a proposal); a Pati-Salam finite geometry on C^4_colour (x) C^4_family in which the flip exchanges the sigma field with the top Yukawa direction (reading 4).
