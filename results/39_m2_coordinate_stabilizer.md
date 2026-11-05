# On the brane coordinates (U, V) with Betti charges (2, -3), the point U = 0, V = (v, 0) is fixed by SU(3) and by T_3 + Y and moved by T_3 - Y, and the Fayet-Iliopoulos quotient at zeta != 0 has residual Z_3 or Z_2 stabilizers along CP^1 or CP^2, so it is a partial orbifold resolution

**Status.** Proposition (the proved part of Proposal 3.4 of lemma 39), conditional on the proposed action of the Betti U(1) of Proposal 3.1 on the brane coordinates. The Fayet-Iliopoulos quotient is a partial (orbifold) resolution only, with Z_3 and Z_2 stabilizers on the exceptional loci. Computed by Claude Opus 5.5 (Python); a proof of the stabilizer and of the residual stabilizers by Terra 6.1 is written out in the section "Further proofs" of lemma 39. Ledger row `d11_higgs_m2`, of kind conjecture, since the row covers the whole proposal. No paper cites it.

**Setting.** The cone C^5 // U(1)_Y of 32_witten_space_hypercharge_quotient.md partially (orbifold) resolved by a Fayet-Iliopoulos parameter, 2 abs(U)^2 - 3 abs(V)^2 = zeta, with the action lambda (U, V) = (lambda^2 U, lambda^{-3} V); T_3 = diag(1/2, -1/2) on V, Y(V) = -1/2 and Q = T_3 + Y.

**Statement.**

1. The value V = (v, 0), U = 0 on the doublet line is fixed by SU(3) and by T_3 + Y, and moved by T_3 - Y; in the quotient geometry, where U(1)_Y is divided out, the same point is fixed by T_3. Q gives U the charge +1/3 of d^c and V the charges (0, -1) of (nu, e).
2. For zeta < 0 every point has V != 0; points with U != 0 have trivial stabilizer, and the locus U = 0 has stabilizer Z_3, acting faithfully on the three transverse U coordinates, with coarse exceptional locus CP^1 and transverse singularity C^3/Z_3.
3. For zeta > 0 the locus V = 0 has stabilizer Z_2, acting by -1 on the two transverse V coordinates, with coarse exceptional locus CP^2 and transverse singularity C^2/Z_2.

*Scope.* Identifying the action of the Betti U(1) with the electroweak one is part of Proposal 3.4, and the quotient needs further geometric data to be a smooth resolution.

**Proof.** Lemma 39, section "Further proofs", the proof of the proved part of Proposal 3.4: (T_3 + Y) V = (1/2 - 1/2) V = 0 on the first component, and on the level sets the stabilizers are lambda^3 = 1 on U = 0 and lambda^2 = 1 on V = 0.

**What it leaves open.** Proposal 3.4 itself, the Higgs as the position of the M2-brane on the doublet line with the group restored at the apex as zeta -> 0, is a proposal with no file, and the relation between M_W and zeta is the next computation. At fixed N the Kaluza-Klein scale of AdS4 x Y_{3,2} does not depend on zeta, so zeta -> 0 restores the group at a fixed tower; a joint family needs N -> infinity, against the N = 1 that Proposal 3.1 needs for the baryons to be d^c and L.
