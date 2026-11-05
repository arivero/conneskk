# Unital completely positive maps that converge in norm can generate M_4(C) for every positive parameter and M_2(H) at the limit, so generated algebras need not converge when compression maps do

**Status.** Counterexample (Counterexample 28.17), to the claim that convergence of compression maps carries the generated algebras along. Constructed by Astra 6, job 28 (Counterexample 9). Ledger row `l28_generation` (depending on `l28_symmetry`). The caution is stated after Theorem 4 of paper/joint_limit_note.tex and in the section on the algebra of paper/connes_kk_dictionary_note.tex.

**Setting.** On the disc bundle of lemma 28, R_0 = Q_B E_fib, with E_fib the fibre average on CP^3, R_1 = Q_Y, and R_eps = (1 - eps) R_0 + eps R_1.

**Statement.**

1. The R_eps are unital completely positive, and ||R_eps - R_0|| <= 2 eps.
2. Real functions generate M_4(C) under R_eps for every eps > 0.
3. Real functions generate M_2(H) under R_0.

*Scope.* The correct limit statement concerns specified compression maps, and it gives no convergence of the generated algebras.

*The exact test at finite mass (Proposition 28.16, Astra 6; ledger row `l28_symmetry`).* For an equivariant copy of the 4, B(r) = F(r)\* F(r) = diag(b_a(r) I_2, b_+(r), b_-(r)). All real scalar functions compress to operators commuting with the quaternionic antiunitary j if and only if b_+(r) = b_-(r) for almost every r; if in addition the 5 component is nonzero, the block generates M_2(H), and if both the 5 and the 10 components are nonzero, it generates M_4(C). A vanishing integral of tr(B(r) t-hat) alone does not decide this. At the limit the real linear image is Herm_2(H) + Herm_4(C), of real dimension 22, and the generated real algebra has dimension 48. At the sample points resolved numerically (Result 28.5, Python), the core mode has a nonzero density breaking the quaternionic structure, empirically of order lambda^2.

**Proof.** Lemma 28, Counterexample 28.17; the construction and its proof are there.

**What it leaves open.** The result points to statements about bounded expressions in compressed observables: the quaternionic defect of the core block is O(M^{-1/2}) for products of bounded real observables, and exponentially small when j_E is parallel (30_quaternionic_defect.md). The exact generated algebra at any finite mass is not established.
