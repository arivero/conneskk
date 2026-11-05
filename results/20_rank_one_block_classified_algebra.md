# A rank-one connecting block T x = kappa K x K with K = v w^\* has intertwining algebra C + H + M_3(C), of real dimension 24, the unique maximal-dimensional admissible algebra up to automorphism

**Status.** Theorem (Result 2 of lemma 20). Proved by Astra 6 (job 20). Ledger row `l20_rank_one`. Item 2 of Proposition I of paper/towerless_intervals.tex.

**Setting.** W = W_+ + W_- with dim_H W_+ = dim_H W_- = 1, V = C^4, the adjoint-flip convention of 20_connecting_blocks.md, so A^ev = H_+ + H_- + M_4(C). Unit vectors w in W_+ and v in V, kappa != 0, e = w v^\\* in E, f = v w^\\* = ce, and T_kappa x = kappa (w^\\* x v) v w^\\* = kappa |f><e| x.

**Statement.**

1. T_kappa has complex rank one and satisfies T = tau(T) and hT + Tg = 0; S_{T_kappa} has complex rank two.
2. A(T_kappa) = {(lambda + q, lambda + m) : lambda in C, q in H, m in M_3(C)}, the first lambda acting on W_+ as diag(lambda, conj(lambda)) in a basis starting with w, and the second on Cv.
3. It has real dimension 2 + 4 + 18 = 24, and up to an automorphism of A^ev it is the unique maximal-dimensional involutive subalgebra admitting a nonzero sheet-connecting Dirac block with order one; a block of rank two gives at most 4 + 4 + 8 = 16.
4. At kappa = 0 the block has rank zero and the admissible algebra has dimension 40 (ledger row).

*Scope.* The connecting condition is relative to the sheet projections of the original prealgebra, [S_T, e_1] != 0. On the selected algebra this block commutes with the algebra, so additional sheet-diagonal Dirac terms are needed for the usual nontrivial finite one-forms and Yukawa data.

**Proof.** Lemma 20, Result 2; the proof is there. The intertwining equations make Cw and Cv reducing subspaces with the same scalar action; the dimension argument follows Chamseddine-Connes, section 4, by compressing an intertwiner to irreducible spaces K: C^2 -> C^4 of rank one or two.

**What it leaves open.** Deriving the grading, the Hom fibres and the connector from the commutative twistor parent remains open (lemma 20, consequence for T0b and T11).
