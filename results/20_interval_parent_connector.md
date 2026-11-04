# Two massless interval fields valued in E and E^\* with wall coupling X = t S^\* and constant multipliers B = A(S) give, in the lowest window, finite data with connecting block m S, m = arctan(t)/l, the KO-6 signs, order zero and order one

**Status.** Theorem (Result 5 of lemma 20). Proved by Astra 6 (job 20); checked by Claude Opus 5.5 by hand (including the transport (21) and its compression to m(S + S^\\*)) and by Terra 6.1 by hand (historical/reviews/2026-11-03_terra_check_20_21.md). Ledger row `l20_parent`. Items 3 and 4 of Proposition I of paper/towerless_intervals.tex.

**Setting.** The Hom representation, c, g and h of 20_connecting_blocks.md; k = c g c^{-1}, h = -k; a unit vector e in E with ge = e, f = ce, S = |f><e| and X = t S^\\*: E^\\* -> E with t > 0. Massless interval fields Q valued in E and U valued in E^\\*, with the boundary conditions of lemma 12; constant elements of A^ev acting by pi_1 on Q and by pi_2 on U; Gamma-hat = (g Q_L, -g Q_R; k U_L, -k U_R) and J-hat = (c^{-1} U_R, -c^{-1} U_L; -c Q_R, c Q_L); n = dim_C E, theta = arctan t, m = theta/l, and m < Lambda_0 < (pi - theta)/l.

**Statement.**

1. The domain-preserving algebra of constant multipliers is B = A(S).
2. P = 1_{[-Lambda_0, Lambda_0]}(D_X) has rank 2n, and under an explicit identification PH = E + E^\\* the finite data are (B, E + E^\\*, [[0, m S^\\*], [m S, 0]], J, diag(g, -k)): self-adjoint and odd, with order zero, order one and the signs (+, +, -); the connecting block T = mS has complex rank one.
3. With t(l) = tan(ml), 0 < ml < pi/2, the finite mass stays exactly m while the next absolute eigenvalue pi/l - m tends to infinity.
4. The transport U(x) = exp(mxF), F rotating the coupled field channels, gives U^\\* D_X U = D_0 + m F (x) E_spin: a constant matrix connection with relative endpoint rotation angle theta = ml, whose compression to the uncoupled zero modes is m(S + S^\\*).
5. For E = Hom(C^4, H^2) and e = w v^\\* of Result 2, B = C + H + M_3(C), dim_C H_fin = 32, and the connecting block is the rank-one block of Result 2 with kappa = m. For E = E^\\* = C, B = C and the finite triple is (C, C^2, m sigma_1, sigma_1 K, sigma_3).

*Scope.* The Hom fibres, the constant matrix multipliers, the grading and the coupled channel are inputs; this parent is not built from scalar functions on the twistor parent. The usual zero-dimensional orientability axiom fails: the linked vectors e and f have identical left and opposite characters and opposite gradings. The block commutes with B, so it supplies no finite one-forms and no Higgs field.

**Proof.** Lemma 20, Result 5; the proof is there. The coupled channels have the eigenvectors of Result 4 with e and f inserted; the other channels are chiral zero modes of types (a) and (b) with next level pi/l; cX = X^\\* c^{-1} makes J-hat preserve the domain.

**What it leaves open.** Deriving these inputs from the commutative twistor parent, and one interval parent carrying both the Dirac Yukawa block of lemma 12 and this connector with order one on B; lemma 20 lists the latter as its next calculation (Readings, item 4).
