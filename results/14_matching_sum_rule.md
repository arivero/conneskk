# At leading spectral-action order, equality of the spectral-action vector masses with the Kaluza-Klein masses on a common profile space is an explicit trace-and-overlap sum rule

**Status.** Theorem (Theorem 5 of lemma 14). Proved by Astra 6 (job 14); checked by Claude Opus 5.5 by hand (both mass matrices as quadratic forms) and by Terra 6.1 by hand, with an amendment requiring a common profile space (historical/reviews/2026-11-03_terra_check_08_13_14.md). Ledger row `l14_sum_rule`. Cited after Proposition F of paper/towerless_intervals.tex.

**Setting.** Five-dimensional Yang-Mills with no boundary kinetic or mass terms and positive invariant form <,>_5 including its couplings; retained transverse vectors A_mu = sum_a a_mu^a(y) F_a(x) with fixed Hermitian profiles F_a obeying the chosen gauge boundary conditions; G^(5)_ab = int <F_a, F_b>_5 dx, H^(5)_ab = int <F_a', F_b'>_5 dx. A light frame U_0 at the background, T_a = U_0^dagger F_a U_0, V_0 = U_0^dagger D_I U_0; the literal spectral trace through a_4, f_0 > 0, no independent kinetic terms; Q and K as in 13_spectral_action_vector_mass_formula.md; eta = f_0/(24 pi^2).

**Statement.**

1. M_KK^2 = (G^(5))^{-1/2} H^(5) (G^(5))^{-1/2}, and on the subspace where Q > 0, M_spec^2 = (3/2) Q^{-1/2} K Q^{-1/2}.
2. Equality of the vector mass spectra is equivalent to spec((3/2) K, Q) = spec(H^(5), G^(5)); for a retained sector with KK mass matrix kappa^2 I it is the sum rule K = (2/3) kappa^2 Q. Equality of the quadratic actions in the same coordinates is stronger: G^(5) = 4 eta Q and H^(5) = 6 eta K.
3. For a chiral block V_0 = [[0, Y], [Y^dagger, 0]] and T_a = diag(t_{L,a}, t_{R,a}), with C_a = t_{L,a} Y - Y t_{R,a}: Q_ab = Re Tr(t_{L,a} t_{L,b} + t_{R,a} t_{R,b}) and K_ab = 2 Re Tr(C_a^dagger C_b).
4. For mixed pairs r of masses lambda_r, one gauge profile f with overlaps c_{L,r} = int |p_{L,r}|^2 f, c_{R,r} = int |p_{R,r}|^2 f and multiplicities tau_r, the one-vector condition is 3 sum_r tau_r lambda_r^2 (c_{L,r} - c_{R,r})^2 = kappa^2 sum_r tau_r (c_{L,r}^2 + c_{R,r}^2). If both sheet connections fluctuate independently, M_relative^2 = 6 sum_r tau_r lambda_r^2/sum_r tau_r, a comparison with an additional massless diagonal vector.

*Scope (amendment).* Both forms must be compared on one common profile space on which G^(5) and Q are positive, since a KK profile can be invisible to compression: for the massless mixed pair, f = cos(2 pi x/l) has positive norm while int w_L f = int w_R f = 0. The equalities concern the a_4 approximation and the chosen vacuum and compare quadratic transverse actions; a nonabelian truncation to nonconstant lowest profiles need not be closed under gauge transformations.

**Proof.** Lemma 14, Theorem 5; the proof is there, by expanding both actions and normalizing canonically, with a_can = 2 sqrt(eta) Q^{1/2} a.

**What it leaves open.** Covariance does not enforce the sum rule: it fails at zero bulk mass (14_counterexample_three_fifths.md) and holds at a tuned bulk mass (14_matching_at_tuned_bulk_mass.md).
