# If the cubic couplings come from the structure constants of e8 and both gradings are symmetries, the up-type Yukawa couplings have all three fields in the C_3 sector, and the down-type, charged-lepton and Dirac-neutrino couplings take one field from each sector

**Status.** Proposition (Proposition 4.5), conditional on the two gradings being symmetries and on the cubic couplings being structure constants of e8, as in heterotic and Hořava-Witten compactifications. Proved by Claude Opus 5.5 by hand; a proof with the family tensor by Terra 6.1 is written out in the section "Further proofs" of lemma 33. Ledger row `d11_yukawa_brackets` (depending on `d11_e8_grading`). Proposition 5 of paper/generations_note.tex.

**Setting.** The placement of 33_e8_two_gradings_placement.md, with H_u in the 5 in g_{1,1} and H_d in the 5-bar of the 10 of E6, in g_{1,1-2t}; a coupling needs grades summing to (0, 0) mod 3.

**Statement.** For either sign t:

1. Q u^c H_u has all three fields in the C_3 sector.
2. Q d^c H_d, L e^c H_d and L nu^c H_u have one field in each of the three sectors.
3. In Dirac form the top mass is ad(<H_u>) : g_{1,1} -> g_{2,2}, the wedge Lambda^3 -> Lambda^6 with the Higgs trivector, and the Dirac-neutrino mass is a bracket through the gravity sector, Lambda^6 -> sl(9) for t = +1/2 and sl(9) -> Lambda^3 for t = -1/2.

*Scope.* These are necessary grade conditions; a particular bracket or four-dimensional coupling may still vanish, and they establish neither a physical top mass nor its family hierarchy. In the literal 3_f (x) 27 realization with exact SU(3)_f the family tensor is epsilon_{ijk}, and Y_{ij} = epsilon_{ijk} h_k has Y^\* Y = norm(h)^2 I - h h^\*, two equal nonzero singular values and zero on h, so the exact one-Higgs family tensor gives no isolated top mass.

**Proof.** Lemma 33, Proposition 4.5, and the section "Further proofs" there: the b-grades are (1, 1, 1) for the up type and {1, 1 + 2t, 1 - 2t} = {1, 2, 0} for the others, with family grades 1, 1, 1; the Dirac masses pair a left-handed field with the conjugate of the right-handed one through the Killing form between g_{a,b} and g_{-a,-b}.

**What it leaves open.** The reading that the top takes its mass from the metric-independent C_3 bracket is a proposal of lemma 33. A compactification in which family labels are cohomology labels and couplings are overlap integrals may evade the triplet-tensor restriction, and its mode functions and intersections must be supplied before the physical Yukawa matrix is identified; the M-grading survives the standard embedding, with s_M = s_f exp(2 pi i (2/3) T_3).
