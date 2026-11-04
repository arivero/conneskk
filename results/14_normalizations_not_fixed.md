# Matching one vector mass fixes neither the relative gauge couplings nor the scalar kinetic coefficients transverse to the gauge orbit

**Status.** Proposition (Result 9 of lemma 14). Proved by Astra 6 (job 14); checked by Terra 6.1 by hand (historical/reviews/2026-11-03_terra_check_08_13_14.md). Ledger row `l14_normalizations`.

**Setting.** A finite gauge kinetic form diagonal on two specified factors, Q restricted to g_s equal to q_s I for s = 1, 2, with fixed generator normalizations; five-dimensional couplings g_{5,s} and J_s = int f_s(x)^2 dx; eta = f_0/(24 pi^2). Scalar coordinates phi^i with induced connection A_mu = B_i(phi) d_mu phi^i at vanishing ambient A_mu, and H_i = d_i V + i [B_i, V].

**Statement.**

1. The leading finite spectral action predicts 1/g_{4,s}^2 = 4 eta q_s and g_{4,1}^2/g_{4,2}^2 = q_2/q_1, while the KK action gives 1/g_{4,s}^2 = J_s/g_{5,s}^2.
2. Rescaling g_{5,s}^{-2} multiplies G^(5)_s and H^(5)_s by the same factor and leaves every KK mass unchanged, so mass matching cannot determine g_{5,1}/g_{5,2}.
3. The spectral-action scalar metric, in the convention (1/2) Z_ij d phi^i d phi^j, is Z_ij^spec = 6 eta Re Tr(H_i H_j). Mass matching constrains it on the gauge-orbit directions: for the eaten scalar of Result 6, with G = l/(2 g_5^2), q = c_L^2 + c_R^2 and d = c_L - c_R, matching the gauge kinetic coefficient (4 eta q = G) and the vector mass (3 lambda^2 d^2 = kappa^2 q) gives Z_b^spec = 12 eta lambda^2 d^2/kappa^2 = G with no separate tuning.
4. A direction transverse to the gauge orbit is not tested by the mass equation. In the commuting-bulk mixed model A_5 supplies only the unitary link of Result 3, so there is no radial Higgs kinetic term to match.

*Scope.* A common simple parent group with a specified invariant form could remove the freedom in g_{5,1}/g_{5,2}; that is additional geometric input.

**Proof.** Lemma 14, Result 9; the proof is there, by canonical normalization of eta q_s F_s^2 and by D_mu V = H_i d_mu phi^i substituted in 3 eta Tr(D_mu V D^mu V).

**What it leaves open.** Boundary Yukawa matrices promoted to independent scalar fields need their continuum dynamics, including any boundary kinetic form, specified separately. Hypothesis H needs additional geometric relations (lemma 14, consequence).
