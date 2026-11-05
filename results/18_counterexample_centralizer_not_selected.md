# As m_t -> infinity at fixed cutoff the broken vectors keep a finite nonzero kinetic form and a vanishing mass, so heavy fermions do not select the centralizer by mass decoupling

**Status.** Counterexample (Counterexample 8 of lemma 18). Proved by Astra 6 (job 18). Ledger row `l18_no_centralizer`. Item 4 of Proposition E.1 of paper/towerless_intervals.tex.

**Setting.** The data of Proposition 4 of lemma 18 (top-only, heat cutoff; 18_top_only_w_mass_at_fixed_cutoff.md) and the centralizer g_{V_0} = {X in g_SM : [X, V_0] = 0}, which for nonzero top mass is the represented unbroken algebra su(3) + u(1)_em.

**Statement.**

1. For fixed y, h_x(y) -> 0 as x -> infinity, so C_W(q^2) -> (Lambda^2/(4 pi^2)) (9/2) g(q^2/Lambda^2).
2. For y > 0, g(y) = 4y int_0^1 u(1 - u) exp(-y u(1 - u)) du > 0: a charged generator outside g_{V_0} keeps a finite nonzero quadratic kinetic form and a nonvanishing propagator at every fixed positive momentum, while its mass tends to zero.
3. The neutral kernel similarly leaves the positive matrix B_inf g(y), including the additional neutral direction.
4. These facts contradict decoupling of the broken vectors through diverging masses or vanishing propagators.
5. The narrower statement holds: if the connection is restricted to the centralizer from the outset, the finite mass blocks are invariant, the heat trace factorizes, the heavy block carries exp(-s m^2/Lambda^2) -> 0, and the restricted action converges to the light-block spectral action.

*Scope.* The top-only quadratic family at fixed Lambda. Item 5 proves decoupling of a finite fermion block under that restriction, without any dynamical elimination of the other gauge fields. Amendment to lemma 03, Part C: its transverse weights, including w_L(x, 0) = w(x), and its weak-angle formulas are correct under their conventions, must be accompanied by the mass coefficient with the quadratic-vertex subtraction, and do not give a centralizer-only endpoint.

**Proof.** Lemma 18, Counterexample 8; the proof is there, from the integration-by-parts form h_x(y) = 2 int_0^1 u [x + 2y(1 - u)] exp(-xu - yu(1 - u)) du.

**What it leaves open.** Lemma 18 supplies no mechanism selecting the centralizer; mass decoupling in this action does not do it.
