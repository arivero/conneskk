# At leading spectral-action order, bounded light fermions give M_spec^2 <= 6 C^2, so they cannot match the collapsing Neumann-Dirichlet tower mass pi/(2l)

**Status.** No-go theorem in its scope (No-go theorem 8 of lemma 14). Proved by Astra 6 (job 14). Ledger row `l14_nogo_collapse`. Cited after Proposition F of paper/towerless_intervals.tex.

**Setting.** A family of induced finite operators with ||V_0(l)|| <= C < infinity; the leading spectral action of 14_matching_sum_rule.md, with no additional vector-mass or kinetic terms. The retained gauge couplings may depend on l, and any finite multiplicities may be included.

**Statement.**

1. Every canonically normalized spectral-action vector mass satisfies M_spec^2 <= 6 C^2, also after restriction to any gauge-profile subspace; multiplicities cannot evade the bound because they enter both Hilbert-Schmidt norms.
2. Consequently M_spec^2 cannot equal M_KK^2 = pi^2/(4l^2) for arbitrarily small l, and matching any such vector requires ||V_0(l)|| >= pi/(2 sqrt6 l).
3. This applies to the fixed-light-mass collapse of lemma 09 (Theorem 9.9) and to the bounded-texture limit of lemma 14, Result 4.

*Hypotheses.* Leading (a_4) spectral-action order, no added bosonic terms, retained fermion masses bounded uniformly in l.

*Escapes, as the lemma states them.* Some retained fermion scale growing at least as 1/l, or a change of the bosonic action or of the stated approximation. Near the cutoff the leading formula is replaced by the exact kernel of lemma 18, from which the bound M^2 <= 6 ||V_0||^2 follows only through its asymptotic form (lemma 18, remark after Corollary 3).

**Proof.** Lemma 14, No-go theorem 8; the proof is there: ||[T, V_0]||_HS <= 2C ||T||_HS gives K <= 4 C^2 Q as quadratic forms, and the mass formula gives M_spec^2 <= 6 C^2 I.

**What it leaves open.** The result points to tower-scale fermions in the trace (14_matching_at_tuned_bulk_mass.md) or to a different bosonic action.
