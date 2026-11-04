# The admissible involutions of each sign on the colour-only quark sector are the Sigma in U(N_f) with Sigma^\* M Hermitian, exactly the stationary points of Re tr(M Sigma^\*), and at M = 0 they form the homogeneous space (U(N_f) x U(N_f))/U(N_f)_V

**Status.** Theorem (Theorem 17.6), with Remark 17.7 on its scope. Proved by Claude Opus 5.5; checked by Claude Opus 5.5 in Python (numpy: involution conditions, the formula for d, which this check found wrong in a first version, finite-difference criticality) and by Terra 6.1 by hand, with corrections incorporated, Remark 17.7 having overreached as first written (historical/reviews/2026-11-03_terra_check_17.md). Ledger row `l17_reductions`.

**Setting.** The quark sector of 17_chiral_symmetry_group.md, with B containing only the colour algebra; admissible involutions of sign s as in Theorem D; V_M(Sigma) = -Re tr(M Sigma^\\*) on U(N_f).

**Statement.** The admissible involutions of sign s are exactly the operators, tensored with 1_3, U_{Sigma,s} = [[0, Sigma], [Sigma^\\*, 0]] on (q_L, q_R) and s [[0, conj(Sigma)], [Sigma^T, 0]] on (q-bar_L, q-bar_R), with Sigma in U(N_f) and Sigma^\\* M Hermitian; this condition holds iff Sigma is a stationary point of V_M, saddles and maxima included. The reduced mass operator on H_0 = (q_L, q-bar_R) is d_{Sigma,s} = (Sigma M^\\* (x) 1_3) + (s conj(Sigma^\\* M) (x) 1_3), and G(0) acts by Sigma -> V_L Sigma V_R^\\*. Hence:

1. At M = 0 the set is all of U(N_f), for each s, with transitive action and stabilizer of Sigma = 1 the diagonal U(N_f).
2. At M = m I, m > 0, it is {Sigma : Sigma^2 = 1, Sigma^\\* = Sigma}, the disjoint union of the Grassmannians of C^{N_f}.
3. For M positive diagonal with distinct entries, it is the 2^{N_f} matrices diag(+-1, ..., +-1).
4. For M invertible, the unique Sigma with Sigma^\\* M positive is the polar part of M; it is the unique global minimum of V_M and the unique Sigma for which the first block of d_{Sigma,s} is positive.

With the electric charge in B, the admissible set is the intersection with the commutant of the charge: diagonal phases at M = 0 for two differently charged flavours, and only signs +-1 for positive nonzero diagonal masses.

*Scope (Remark 17.7).* Item 1 is an equivariant statement, with the same stabilizer as in the symmetry breaking of QCD. The data contain no physical energy selecting among the stationary points; Dashen is cited for the vacuum-selection idea alone. Identifying a reduction with a condensate direction would need a map to a quantum order parameter, which lemma 17 does not have. A negative entry in the reduced mass block comes from choosing another reduction of one fixed even triple; a physical sign change at fixed fermion measure differs, with determinants at m and -m related by (-1)^{n_0}.

**Proof.** Lemma 17, Theorem 17.6; the proof is there. Along Sigma exp(itX), X Hermitian, the derivative of Re tr(M Sigma^\\*) at t = 0 is Im tr(HX) with H = Sigma^\\* M, which vanishes for all X exactly when H is Hermitian; item 4 is von Neumann's trace inequality.

**What it leaves open.** The pions as dynamical objects need the QCD measure and a quantum effective action; in QCD the anomalous singlet axial direction also prevents identifying the full classical U(N_f) with the pion manifold without qualification.
