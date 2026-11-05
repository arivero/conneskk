# In the top-only heat-cutoff family the photon and gluon coefficients keep the ratio 8/3 and the neutral-current angle keeps cos^2 theta_NC = 5/8 for every m/Lambda, while M_Z tends to zero exponentially and the matching angle tends to 103/157

**Status.** Proposition (Proposition 6 of lemma 18). Proved by Astra 6 (job 18). Ledger row `l18_angles`. Item 2 of Proposition E.1 of paper/towerless_intervals.tex.

**Setting.** The family of 18_top_only_w_mass_at_fixed_cutoff.md; colour generators with tr_3 t_a t_b = (1/2) delta_ab and Q = T_3 + Y; kappa_em, kappa_s the full-trace coefficients of F_em^2 and G_a^2; K the particle-trace neutral q^2 coefficient in the coordinates (A_3, A_Y); v = (1, -1).

**Statement.**

1. kappa_em = (1/(24 pi^2)) (16/3) (5 + r) and kappa_s = (1/(24 pi^2)) 2 (5 + r), so kappa_em/kappa_s = 8/3; both approach 5/6 of their all-massless values.
2. K_33 = 21/4 + (3/4 - 3x/8) r, K_YY = 103/12 + (17/12 - 3x/8) r, K_3Y = -1/4 + (1/4 + 3x/8) r. K, K_W and the unbroken coefficients are positive for every x >= 0, with K >= (5 - 3/(4e)) I.
3. With J_Z proportional to T_3 - sin^2 theta_NC Q after diagonalizing the neutral kinetic form, cos^2 theta_NC = (K_YY + K_3Y)/(K_33 + 2 K_3Y + K_YY) = 5/8 for every x.
4. The matching angle cos^2 theta_match = K_YY/(K_W + K_YY) equals 5/8 at x = 0 and tends to 103/157 as x -> infinity, so the two definitions cease to describe one common electroweak angle.
5. M_{Z,Taylor}^2/Lambda^2 = (9/4) x r v^T K^{-1} v ~ (2/3) x e^{-x}, and for x > 0 there is one positive massive neutral pole besides the photon, with M_{Z,pole}^2/Lambda^2 ~ (2/3) x e^{-x}; so M_W^2/M_Z^2 does not stay at 5/8.
6. For every f in class (4), with 1 -> f(0), r -> f(x) and x r -> -x f'(x), the ratio 8/3, the value 5/8 and the limit 103/157 persist.

*Scope.* At the endpoint both neutral masses vanish, so the distinguished massive neutral direction, and with it the angle, requires continuation from finite x.

**Proof.** Lemma 18, Proposition 6; the proof is there. Photon and colour generators commute with V_0; a Dirac species of mass m with neutral charges q_L, q_R contributes e^{-x} [q_L^a q_L^b + q_R^a q_R^b - (x/2)(q_L^a - q_R^a)(q_L^b - q_R^b)] to K; and K_33 + K_3Y = 5 + r, K_YY + K_3Y = (5/3)(5 + r).

**What it leaves open.** The separate role of the top, which keeps both values when removed, is lemma 21: among single charged species only an up-type quark has this property (18_light_space_not_electroweak.md).
