# A block T: E -> E^\* added to a sheet-diagonal finite Dirac operator keeps the KO-6 signs iff T = tau(T) and hT + Tg = 0, and has order one on B iff T pi_1(a) - pi_2(a) T intertwines the opposite actions; the maximal such B are the maximal A(R) over odd R with T = R + tau(R)

**Status.** Theorem (Result 1 of lemma 20). Proved by Astra 6 (job 20); checked by Claude Opus 5.5 in Python (the example with T different from R) and by hand (the averaging proof), and by Terra 6.1 by hand (historical/reviews/2026-11-03_terra_check_20_21.md). Ledger row `l20_blocks`. Item 1 of Proposition I of paper/towerless_intervals.tex.

**Setting.** E = Hom(V, W), E^\\* = Hom(W, V) with Hilbert-Schmidt products; c: E -> E^\\* the antiunitary of the real structure, J(x, y) = (c^{-1} y, cx), Gamma = diag(g, h) with h = -c g c^{-1} (in Example 16.9, cx = x^\\*, gx = gamma_W x, hy = -y gamma_W). A^ev acts diagonally by pi_1, pi_2, with opposite actions rho_1, rho_2; the sheet-diagonal D_F already satisfies self-adjointness, oddness, J D_F = D_F J and order one on A^ev (Corollary 16.8). S_T = [[0, T^\\*], [T, 0]], D = D_F + S_T, tau(T) = c T^\\* c. A(R) = {a in A^ev : pi_2(a) R = R pi_1(a), pi_2(a^\\*) R = R pi_1(a^\\*)}, the commutation algebra of Chamseddine-Connes, section 4.

**Statement.**

1. D has the required signs and satisfies order one on a unital involutive subalgebra B of A^ev exactly when T = tau(T), hT + Tg = 0, and (T pi_1(a) - pi_2(a) T) rho_1(b) = rho_2(b) (T pi_1(a) - pi_2(a) T) for all a, b in B. In bases related by c, T = tau(T) says that the matrix of T is complex symmetric.
2. For fixed T, the maximal admissible algebras are the inclusion-maximal members of {A(R) : hR + Rg = 0, T = R + tau(R)}, so maximal dimension is reached by maximizing over these algebras.
3. The distinction between T and R is necessary: for ungraded W = V = C^2 (g = 1, h = -1), B = {(diag(alpha, beta), diag(alpha, beta))} and T e_11 = f_12, T e_12 = f_11, T is symmetric and odd and satisfies order one, but fails to intertwine the left actions when alpha != beta.

**Proof.** Lemma 20, Result 1; the proof is there. Averaging T over the compact unitary group of B gives R_0 intertwining the left actions and Q_0 = T - R_0 intertwining the opposite ones; tau exchanges the two conditions, and R = (R_0 + tau(Q_0))/2 satisfies T = R + tau(R).

**What it leaves open.** Which blocks a parent supplies: the rank-one case is 20_rank_one_block_classified_algebra.md and a parent is 20_interval_parent_connector.md.
