# Limits in the propinquity of commutative quantum compact metric spaces are commutative, and the number of connected components does not increase in the limit

**Status.** Theorem (Theorem 15.2, Lemma R3 of the Farsi-Latrémolière assessment), with Lemma 15.1. Sketch by a Claude reading subagent; proof by Claude Opus 5.5 from the definitions in the LaTeX source of arXiv:2404.00240v3, Section 2. Ledger row `fl_R3`; Corollary 15.8 (row `l15_finite_limits`) depends on it. Item 3 of Proposition G of paper/towerless_intervals.tex, whose proof also uses Lemma 15.1.

**Setting.** Quantum compact metric spaces (A, L), quantum isometries, tunnels with their extent chi, and the propinquity Lambda, as in the Conventions of lemma 15 (Farsi-Latrémolière, Section 2). The spectral propinquity dominates Lambda up to the cap: Lambda_spec(T_1, T_2) >= min(sqrt(2)/2, Lambda(A_1, A_2)) (consequence (b)).

**Statement.**

1. (Lemma 15.1) For a tunnel (E, L_E, pi_1, pi_2) of extent chi and e = e^\\* with L_E(e) finite, ||pi_j e|| <= ||pi_k e|| + chi L_E(e) and ||e|| <= ||pi_j e|| + chi L_E(e) for {j, k} = {1, 2}; for a real polynomial p = sum p_m x^m, L_E(p(e)) <= L_E(e) sum_{m >= 1} |p_m| m ||e||^{m-1}.
2. (Theorem 15.2, item 1) If (A_n, L_n) -> (A, L) in the propinquity and every A_n is commutative, then A is commutative.
3. (Theorem 15.2, item 2) If every A_n = C(X_n) with X_n having at most k connected components, the spectrum of A has at most k connected components. A finite-dimensional limit is C^j with j <= k, and for k = 1 it is C.
4. Both statements hold for limits in Lambda_spec, by consequence (b).

*Scope.* One metric, the propinquity or the spectral propinquity, applied to the whole scalar algebra. The theorem is one-directional: noncommutative spaces may converge to commutative ones, as matrix algebras do to the sphere. Morita equivalence does not remove the restriction to the scalar algebra: C(K) and C(K, M_n) are Morita equivalent with different limits, and replacing the represented algebra by End(E) is a change of data. Truncations lie outside the scope (lemma 16).

**Proof.** Lemma 15, Lemma 15.1 and Theorem 15.2; the proofs are there. For item 1, lifts of two elements to the tunnel have a Lie product killed by one projection and of uniformly bounded L_E, so its image has norm at most chi_n times a bound. For item 2, polynomial approximations of step functions on the spectrum, together with Lemma 15.1, separate k + 1 clopen pieces and give a contradiction.

**What it leaves open.** We did not find Theorem 15.2 stated in arXiv:1302.4058, 1311.0104, 2404.00240 or 2603.19128; its proof is elementary and it may be folklore. Noncommutative finite data from commutative parents need truncations or a change of the represented algebra (lemma 15, "What this says about T0").
