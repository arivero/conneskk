# A scalar connection along the interval moves the second wall grading along its unitary orbit, and its odd part changes the principal angles, which supplies a radial mode; for M_2(H) the field space is S^4 and the Higgs modulus is half the geodesic distance between the points chosen by the two walls

**Status.** Theorem (Theorem 23.4), with Example 23.5. Proved by Claude Opus 5.5. Ledger row `l23_radial`. Part of Theorem 6 of paper/boundary_condition_note.tex, with the odd escape and S^4 stated after it; cited in paper/connes_kk_dictionary_note.tex ("\supp{23}") and, as the odd escape, in paper/real_structure_note.tex.

**Setting.** D(Gamma_0, Gamma_1) with the prealgebra P of 23_aligned_walls_even_part.md; h smooth with anti-Hermitian values in P, u' = -h u, u(0) = 1, w = u(l). For Example 23.5: W = H^2 = C^4 with the Clifford generators Gamma_a of lemma 16 and Gamma_p = p_a Gamma_a for unit p in R^5; H = Hom(V, W) (+) Hom(W, V), J(x, y) = (y\*, x\*), Gamma_0(x, y) = (gamma x, -y gamma) with gamma = Gamma_{p_0}, and K(x, y) = (theta/l)(F x, y F), with F an odd anti-Hermitian element of M_2(H), F^2 = -1.

**Statement.**

1. D(Gamma_0, Gamma_1) + E h = u D(Gamma_0, w\* Gamma_1 w) u\*. An even connection gives w commuting with Gamma_0 and keeps the principal angles; if h has an odd part, the angles between Gamma_0 and w\* Gamma_1 w change in general.
2. With H_i = Stab(Gamma_i) in the connected unitary group G of P, the scalar moduli of the parent are the double cosets H_1 \ G / H_0, the relative position of the two gradings, with the moving window.
3. (Example 23.5) The gradings of W with one-dimensional quaternionic +1 and -1 eigenspaces are the Gamma_p, forming S^4 = Sp(2)/(Sp(1) x Sp(1)); for two points at geodesic distance d all principal angles equal theta = d/2.
4. D_F = Gamma_0 K has all singular values theta/l, a universal Dirac mass for all colours. The second grading is Gamma_1(x, y) = (Gamma_p x, -y Gamma_{p'}), with p at distance 2 theta from p_0 and p' its mirror image through p_0, and J_1 = Gamma_0 J satisfies item 4 of Theorem 23.1, while J alone does not.
5. The coordinates (theta, q) on S^4, with F determined by the unit quaternion q, are polar coordinates of a Higgs quaternion: theta is radial, bounded by pi/2, and q gives three angular directions, undefined at the poles.

*Scope.* This lies outside No-go theorem 22.7, whose hypotheses include the even algebra. At theta = pi/2 the finite logarithm and the lowest window are degenerate. A canonically normalized field needs the scalar kinetic term, which lemma 23 does not compute. The field space is the coset of the minimal composite Higgs model (Agashe, Contino and Pomarol, 2005), whose warped interval and additional fermion and boundary data do not identify the actions or potentials. The appearance of the S^4 of the twistor window is an observation, with no identification between the two roles of S^4.

**Proof.** Lemma 23, Theorem 23.4 and Example 23.5; the proofs are there. u\* D u = D + E u\* u' and u\* E h u = E u\* h u cancel the connection, and at l the substitution psi = u phi gives the grading w\* Gamma_1 w. In the example Gamma_q Gamma_p = p . q + (p wedge q), with eigenvalues e^{+-i d}.

**What it leaves open.** The scalar kinetic normalization, and the relation between the two roles of S^4 (lemma 23, open questions 2 and 6). With bulk masses the light masses are about (tan(theta)/l) Phi_Q Phi_U by Theorem 12.6, before flavour data. Whether a potential selects an interior theta is treated in 23_nogo_one_loop_interior_minimum.md and in lemma 26.
