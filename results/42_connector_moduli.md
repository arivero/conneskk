# The Sp(2)-orbits of the pair of marked lines (Cw, Cv) of the connector are classified by a = abs(h(w, v)) and b = abs(omega(w, v)), with a^2 + b^2 <= 1, and the coupling modulus abs(kappa) is the third parameter

**Status.** Proposition (Proposition 42.3). Proved by Claude Fable 5.1 on 4 November 2026 by hand; checked by its author by hand. No independent check yet: the ledger marks the row referee_pending. Ledger row `l42_moduli` (depending on `l20_rank_one`). No paper states it separately.

**Setting.** The connector of Theorem 20.2, the rank-one block T_kappa x = kappa K x K with K = v w^\*: a complex line Cw in the core copy W, a complex line Cv in the wall copy V, and the coupling kappa, with G = Sp(2) acting on both copies of the 4 by the same representation (42_tangent_of_marked_line.md). h and omega are the G-invariant Hermitian and symplectic forms on C^4, with omega(x, y) = h(jx, y). The centralizer of T_kappa is C + H + M_3(C) (20_rank_one_block_classified_algebra.md).

**Statement.**

1. The G-orbits of the pair of lines (Cw, Cv) are classified by a = abs(h(w, v)) and b = abs(omega(w, v)), with a^2 + b^2 <= 1, and kappa adds its modulus abs(kappa).
2. The orbit of the pair is determined by the position of Cv relative to the quaternionic line L of w: a^2 + b^2 is the squared norm of the component of v in L, a the overlap with l = Cw and b the overlap with jl.

*Scope.* The proposition counts moduli; it does not identify them with a vacuum expectation value, fixes no coupling and computes no potential.

**Proof.** Lemma 42, Proposition 42.3: G acts transitively on the unit sphere of H^2 with stabilizer Sp(1)_a, which acts transitively on each sphere of L^perp; writing v = alpha w + beta jw + u with u in L^perp, rephasing w by e^{i phi} and v by e^{i theta} sends (alpha, beta) to (e^{i(theta - phi)} alpha, e^{i(theta + phi)} beta) and removes both phases.

**What it leaves open.** A parent in which the connector, and with it these moduli, is a field; Theorem 28.21 prescribes the windows, and the connector is not derived.
