# In a finite real triple with order zero and order one, a unitary u of the algebra whose inner automorphism u J u J^{-1} commutes with D commutes with D itself, so a metric such triple has no nontrivial unbroken inner gauge transformation

**Status.** Proposition (Proposition 15.10). Proved by Terra 6.1 in the referee report on lemma 15 (historical/reviews/2026-11-03_terra_check_15_16.md); checked by Claude Opus 5.5 by hand. Ledger row `l15_first_order`.

**Setting.** (A, H, D, J) a finite-dimensional real triple with order zero, order one and J D = eps' D J; u a unitary in A and v = J u J^{-1}. A metric triple has ker L_T = R 1 for L_T(a) = ||[D, a]||.

**Statement.**

1. If D commutes with u v, then [D, u] = 0.
2. If the triple is moreover metric, u is scalar, and the inner gauge transformation is trivial.
3. Among finite real first-order triples, the metric class therefore has no nontrivial unbroken inner gauge transformation.

*Scope.* Order one is needed (15_counterexample_order_one_needed.md). A metric triple has no nonscalar element commuting with D, so the Standard Model finite triple lies outside the class: D_F commutes with the nonscalar subalgebra C_F = {(lambda, lambda, 0)}, which keeps the photon massless, and colour is unbroken (Chamseddine-Connes-Marcolli 2007, section 2.6). Its almost-commutative product lies outside the class as well, and A_F, a real algebra, needs a complexification for the complex framework.

**Proof.** Lemma 15, Proposition 15.10; the proof is there: from [D, uv] = 0, a = u^\\* [D, u] = -[D, v] v^\\*, which commutes with u by order one and order zero, so [D, u^n] = n a u^n by induction and boundedness of D forces a = 0.

**What it leaves open.** The theorems of lemma 15 apply to metric triples and therefore do not reach the Standard Model finite triple as a limit; lemma 16 treats truncations instead (lemma 15, "What this says about T0", item 2).
