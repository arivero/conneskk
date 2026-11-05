# In the covariant mixed-interval reduction, M_spec = M_KK holds for some bulk mass 0 < M_\* < 3 pi/(4l), at which the matched fermion sits at the tower scale

**Status.** Proposition (Result 7 of lemma 14). Proved by Astra 6 (job 14). Ledger row `l14_tuned`, depending on `l09_lightpair`. Cited after Proposition F of paper/towerless_intervals.tex.

**Setting.** The gauge and fermion boundary conditions of 14_counterexample_three_fifths.md at fixed l, with the fermion bulk mass varying over 0 <= M <= 3 pi/(4l).

**Statement.**

1. At least one value 0 < M_\* < 3 pi/(4l) satisfies M_spec(M_\*) = M_KK.
2. An exact defining condition is 3 lambda(M_\*)^2 (c_L(M_\*) - c_R(M_\*))^2 = (pi^2/(4l^2)) (c_L(M_\*)^2 + c_R(M_\*)^2).
3. No uniqueness is asserted.
4. At M = 3 pi/(4l): lambda^2 = 9 pi^2/(8l^2), c_L = 9/(3 pi + 2), c_R = 6/(3 pi + 2), and M_spec^2/M_KK^2 = 27/26 > 1; at M = 0 the ratio is 3/5 < 1.
5. So universal impossibility of mass matching is false, and automatic matching is false as well.

*Scope.* The matching bulk mass M_\* > 0 leaves no light pair (lemma 09, Theorem 9.4, case 3), so the matched fermion has a mass of the order of the tower scale (lemma 14, header).

**Proof.** Lemma 14, Result 7; the proof is there. With t = kl in [pi/2, pi), M = -k cot t and lambda = k/sin t, with profiles proportional to sin(k(l - x)) and sin(kx); the lowest eigenvalue is simple, root and profiles depend continuously on M, and the intermediate value theorem applies.

**What it leaves open.** Covariance supplies no selection principle for M_\* (lemma 14, consequence). With bounded light fermions no matching is possible as l -> 0 (14_nogo_bounded_light_fermions.md).
