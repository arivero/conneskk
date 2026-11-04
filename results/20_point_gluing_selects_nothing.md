# In unchanged separate windows, scalar gluing on closed sets with empty interior leaves the compressed image unchanged, so marking points on the twistor windows selects no further algebra

**Status.** Proposition (Result 7 of lemma 20); the ledger records it as a no-go (kind no_go) with its escapes. Proved by Astra 6 (job 20); checked by Claude Opus 5.5 by hand and by Terra 6.1 by hand, with one amendment (historical/reviews/2026-11-03_terra_check_20_21.md). Ledger row `l20_no_selection`. Item 5 of Proposition I of paper/towerless_intervals.tex ("\supp{20}").

**Setting.** Q_i(f) = P_i M_f P_i, with P_i projecting onto finite-dimensional spaces of smooth sections on compact manifolds M_i; closed subsets Z_i with empty interior; any scalar gluing condition that allows independent functions vanishing near Z_1 and Z_2, including equality at two marked points.

**Statement.**

1. Q_i(C_c^infinity(M_i \ Z_i)) = Q_i(C^infinity(M_i)).
2. Hence the image of the glued algebra under the unchanged separate compressions Q_1 + Q_2 equals the image of the unrestricted pair algebra.
3. In Example 16.9, with one observable algebra restricted to pullbacks from S^4, the generated real algebra in the original level-one windows remains M_2(H) + M_4(C), so scalar agreement at a base point, a point of CP^3 or a twistor fibre derives no further reduction.

*Hypotheses.* Unchanged separate windows. For a subset upstairs in twistor space, its image in S^4 must have empty interior, so that independent base test functions exist (referee amendment).

*Escapes.* A new coupled window, boundary degrees of freedom, matrix multipliers or a different observable representation lie outside the hypotheses. A marked base point does provide a quaternionic line through Pi_p = (1 + p_a Gamma_a)/2, and with a complex line inside it, a complex line in the other four-space and the rank-one map between the Hom vectors, the stabilizer calculation of Result 2 gives C + H + M_3(C); the grading 2 Pi_p - 1 and the rule selecting this connector are then additional finite data.

**Proof.** Lemma 20, Result 7; the proof is there: a linear functional separating the two images would be integration against a smooth density vanishing on a dense set, hence zero.

**What it leaves open.** An analytic parent for Example 16.9 needs an interface or interval collar, boundary trace spaces, self-adjoint coupling conditions, a compatible real structure and grading, and the spectral window of the coupled operator (lemma 20, after Result 7).
