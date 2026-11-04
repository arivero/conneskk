# The interval component of an so(30) connection compresses to the finite window through its commutator with the masses, B_ij -> -((1 - cos(l (m_i - m_j)))/(l (m_i - m_j))) B_ij, which maps the (S^2 5, 3-bar) of Lambda^2 V onto the (Lambda^2 5, 3-bar) of S^2 V, with counts (3, 6, 1), and vanishes for a universal mass

**Status.** Proposition (Proposition 11.4). Proved by Claude Opus 5.5 on 4 November 2026; checked by its author in Python on a small model (V = C^3: reality, symmetry, the blocks of item 1 and their squares) and read independently by Claude Sonnet 5.5, who also checked the compression by direct quadrature of W^\* (E a_tot) W against Theorem 22.4, with five flavours in three colours (Python, to 10^-15) (historical/reviews/2026-11-04_sonnet_check_11d_10_11.md). No Terra referee was available, and the corrected text has not been read again. Ledger row `d11_shadow`. The displayed shadow formula in the section on the real structure of paper/connes_kk_dictionary_note.tex ("\supp{38}"), and Proposition 11.4 in the section on the compression to the window of paper/real_structure_note.tex.

**Setting.** s = +1; the mass block is M = U Lambda with Lambda real for j and symmetric, Lambda = diag(m_i) on flavours on both V and V-bar; a_tot is constant, equal to a in so(30) on H_+ and to U a U^{-1} on H_-.

**Statement.**

1. [D_F, a_tot] has the off-diagonal blocks U S and S U^{-1}, with S = [Lambda, a] real and symmetric, and [D_F, [D_F, a_tot]] is [Lambda, S] on H_+ and U [Lambda, S] U^{-1} on H_-.
2. By Theorem 22.4 the compression of E a_tot to the window is -l^{-1} int_0^l sin(x ad_{D_F})(a_tot) dx, which sends B_ij to -((1 - cos(l (m_i - m_j)))/(l (m_i - m_j))) B_ij, that is -(l/2)(m_i - m_j) B_ij to leading order, as a change of Lambda; the result is symmetric, as Proposition 9.3 requires of a finite J-compatible fluctuation.
3. For distinct masses B -> (m_i - m_j) B_ij maps (S^2 5, 3-bar) in Lambda^2 V onto (Lambda^2 5, 3-bar) in S^2 V, with kernel the five same-flavour diquarks, so (6, 6, 3) - (3, 0, 2) = (3, 6, 1), and maps (Lambda^2 5, 6) into (S^2 5, 6). With the wall condition imposed on the gauge unitaries, k_l is the commutant of Lambda in so(30); imposed on pi(f) itself, as in lemma 22, k_l = 0 for invertible M.
4. For a universal mass Lambda = m the compression vanishes: S = 0, and M = m U is invariant under SO(30).

*Scope.* First order, the fixed compression and constant a_tot. The shadow is tangent to the O(30) orbit of Lambda, so it gives no radial mode, in agreement with No-go theorem 22.7 (22_nogo_radial_mode.md), and a generator commuting with the masses has no shadow. So the counts (6, 6, 3) belong to the parent and (3, 6, 1) to its window, which reconciles Propositions 9.2 and 9.3 of lemma 36.

**Proof.** Lemma 38, Proposition 11.4: item 1 by direct multiplication; item 2 from sin(x ad)(a_tot) = (sin(x delta)/delta) ad(a_tot) on B_ij with delta = m_i - m_j; item 3 since (m_i - m_j) B_ij is antisymmetric in flavour when B_ij is symmetric in flavour.

**What it leaves open.** The moving window of Corollary 22.6, which gives -l [D_F, h] and a quadratic term (lemma 19); nonzero masses, where order one fails on the block; the relation to the top through the (30, 2) of SO(32).
