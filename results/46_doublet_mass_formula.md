# A Yukawa block X = q + i q' on a doublet, with q and q' quaternions, gives the two members the masses m_+-^2 = |q|^2 + |q'|^2 +- 2 |Im(conj(q) q')|: equal exactly when X is quaternionic up to a complex factor, as every block compressed from a function on S^4 is; one massless member exactly when X has rank one with the two halves of equal norm; and when split, the masses fix the U(1)_b of lemma 42 inside SU(2)_R

**Status.** Proposition (Proposition 46.2), with Corollary 46.4. Proved by Claude Fable 5.1 on 5 November 2026 by hand; the mass formula and the rank-one limit were checked with numpy on random quaternions (script not kept). No independent check yet: the ledger marks the rows referee_pending. Ledger rows `l46_doublet_masses` (depending on `l46_odd_blocks`) and `l46_hypercharge_direction` (depending on `l46_doublet_masses`, `l42_tangent` and `l20_rank_one`). Not yet in a paper.

**Setting.** The sheet W = H^2 with axis p of 46_odd_blocks_bidoublet.md; L_p and L_p^perp identified with H = C^2 through j, so that X in Hom_C(L_p, L_p^perp) is L_q + i L_{q'} with q, q' quaternions acting by left multiplication, the j-linear and the j-antilinear halves. The Yukawa block of a sheet-diagonal operator of Corollary 16.8 is [[0, X^\*], [X, 0]] (x) 1_V, the same for the lepton and the three colours, and the masses of the two members of a doublet are the singular values of X.

**Statement.**

1. m_+-^2 = |q|^2 + |q'|^2 +- 2 |Im(conj(q) q')|.
2. m_+ = m_- exactly when conj(q) q' is real, that is X = z L_q with z complex; the odd part of the compression of any real function on S^4 is j-linear and gives equal masses.
3. m_- = 0 < m_+ exactly when q' = q u with u a unit imaginary quaternion, that is X = L_q (1 + i L_u) = 2 L_q P_u of rank one, with the two halves of equal norm: the heavy-top-only pattern of lemma 21.
4. With |q'| = t |q| and Re(conj(q) q') = |q| |q'| cos phi, m_+-^2 = |q|^2 (1 + t^2 +- 2 t sin phi).
5. (Corollary 46.4) If m_+ != m_-, the commutant of X^\* X in Sp(1)_b is a circle U(1)_b, the one lemma 42 marked by hand, with weight lines the two mass eigenlines in L_p; under it T_p S^4 restricts to one complex doublet of hypercharge 1/2, and the Majorana line w of the connector of lemma 20 is a Dirac-mass eigenstate exactly when it is one of the two eigenlines, a fixed point of U(1)_b on the twistor fibre. For a j-linear block neither U(1)_b nor the position of w is determined.

*Scope.* One generation; three generations replace q and q' by 3 x 3 quaternionic matrices with the same structure in the singular values. The block is an input; nothing here derives it or a potential.

**Proof.** Lemma 46, Proposition 46.2 and Corollary 46.4: X^\* X = |q|^2 + |q'|^2 + 2 i L_w with w = Im(conj(q) q'), and left multiplication by an imaginary quaternion has eigenvalues +- i |w|; the rank-one case is the equality case of |w| <= |q| |q'| <= (|q|^2 + |q'|^2)/2; the commutant of a Hermitian 2 x 2 matrix with distinct eigenvalues in SU(2) is its maximal torus.

**What it leaves open.** An independent reading. A parent in which the block is the compression of a function on the wall sheet, so that the up-down splitting is the fibre dependence of that function, and a potential driving the third-generation block to rank one (lemma 46, Scope).
