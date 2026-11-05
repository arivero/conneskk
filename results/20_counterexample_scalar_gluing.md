# Full scalar gluing f_Q(l) = f_U(l) on the one-flavour boundary-coupled interval gives a parent with signs (+, +, -), order zero and order one whose lowest window C + C, m sigma_1, sigma_1 K fails order one

**Status.** Counterexample (Result 4 of lemma 20). Proved by Astra 6 (job 20). Ledger row `l20_gluing_fails`. Item 5 of Proposition I of paper/towerless_intervals.tex.

**Setting.** Lemma 12 with N_Q = N_U = 1, both bulk masses zero and X = t > 0; theta = arctan t in (0, pi/2), m = theta/l. The full domain-preserving scalar algebra A_glue = {(f_Q, f_U) : f_Q(l) = f_U(l)} (Lemma 3 of lemma 20); Gamma(Q_L, Q_R; U_L, U_R) = (Q_L, -Q_R; U_L, -U_R) and J(Q_L, Q_R; U_L, U_R) = (conj U_R, -conj U_L; -conj Q_R, conj Q_L).

**Statement.**

1. The parent satisfies the signs (+, +, -), order zero and order one: the opposite algebra acts by the two scalar functions exchanged.
2. The lowest window is spanned by u_+ = l^{-1/2} (cos mx, 0; -sin mx, 0) and u_- = l^{-1/2} (0, sin mx; 0, cos mx), with the next absolute eigenvalue (pi - theta)/l.
3. The window gives A_fin = C + C, D_fin = m sigma_1, J_fin = sigma_1 K and Gamma_fin = sigma_3, and for p = diag(1, 0), p° = 1 - p and [[D_fin, p], p°] = -D_fin != 0: the finite data fail order one.
4. The projection onto the Q-field compresses to diag(1/2 + sin(2 theta)/(4 theta), 1/2 - sin(2 theta)/(4 theta)), which is not a projection: the coupled window does not preserve the original field decomposition.

*Scope.* The full scalar gluing algebra: agreement of scalar functions at a wall does not survive compression as the finite order-one restriction, even when the parent has all the required signs and order conditions. Constant multipliers selected by the domain, as in 20_interval_parent_connector.md, avoid the failure.

**Proof.** Lemma 20, Result 4; the proof is there. A nonnegative bump f_Q supported near zero with f_U = 0 satisfies the wall equality and separates the diagonal entries of the compression, by (1/l) int f_Q cos(2mx) dx > 0.

**What it leaves open.** The finite summands require an identification, such as continuation from the uncoupled zero modes (lemma 20, after Result 4).
