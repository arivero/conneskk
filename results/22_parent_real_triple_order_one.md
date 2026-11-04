# On the interval parent a smooth A_F-valued function preserves the domain iff its wall value lies in the commutant C_F of D_F, and the parent is then a real even spectral triple with order zero and order one for any finite data with order zero

**Status.** Theorem (Theorem 22.3). Proved by Claude Opus 5.5; checked by Claude Opus 5.5 by hand and by Terra 6.1 by hand (historical/reviews/2026-11-03_terra_check_22.md). Ledger row `l22_parent` (depending on `l22_window`). Theorem 3 of paper/boundary_condition_note.tex; cited in paper/real_structure_note.tex ("\supp{22}, Theorem 22.3").

**Setting.** The window of 22_finite_dirac_operator_as_window.md, with an even representation pi = pi_+ (+) pi_- of a unital finite-dimensional real or complex \*-algebra A_F, faithful, unital and with order zero, and pi°(b) = J_F pi(b)\* J_F^-1. Order one is not assumed. Let C_F = {a in A_F : [pi(a), D_F] = 0} and A_l = {f in C^infinity([0, l], A_F) : f(l) in C_F}, with f acting pointwise by pi_+(f(x)) on Q and pi_-(f(x)) on U.

**Statement.**

1. A function f in C^infinity([0, l], A_F) preserves Dom D_X if and only if f(l) lies in C_F.
2. (A_l, H_l, D_X, J^, Gamma^) is a real even spectral triple, with [D_X, pi(f)] = E pi(f') and J^ pi(g)\* J^^-1 = pi°(g) pointwise.
3. It satisfies order zero and order one, with signs (+, +, -).

So A_F acts freely in the bulk, and the boundary condition restricts the observables at the wall to C_F. In the Standard Model data with nonzero Yukawa blocks, C_F is {(lambda, lambda, m)}, the algebra of the photon and the gluons; with vanishing Yukawa blocks the commutant is larger.

*Scope.* Order one holds in the parent for its pointwise algebra whatever the finite data; the finite condition appears only on the truncation, and arbitrary compressions need not preserve either order condition. This agrees with Counterexample 4 of lemma 20, whose finite data A_F = C + C, D_F = m sigma_1 fail order one while the parent satisfies it.

**Proof.** Lemma 22, Theorem 22.3; the proof is there. Applying f to the wall conditions gives [pi(f(l)), tan(l D_F)] = 0, equivalent to [pi(f(l)), D_F] = 0 since l ||D_F|| < pi/2 makes D_F a function of tan(l D_F); order one follows from [E pi(f'), pi°(g)] = E [pi(f'), pi°(g)] = 0 by finite order zero.

**What it leaves open.** The parent algebra is matrix-valued, so T0 for a commutative parent stays open, and the represented algebra is reached through compression, with no exact representation of A_F at l > 0 (22_compression_as_average.md). The parent with a bulk prealgebra and gradings at both walls is 23_aligned_walls_even_part.md.
