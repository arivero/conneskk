# At finite volume and fixed background the regulated condensate tends to zero as m -> 0 apart from the zero-mode term, and the Banks-Casher form pi rho_0(0) needs a gauge measure, infinite volume, an order of limits and uniform control

**Status.** Proposition (Proposition 17.8). Proved by Claude Opus 5.5. Ledger row `l17_condensate`.

**Setting.** D_M(A) with eigenvalues lambda_n and n_0 zero modes on M of volume V. For m > 0, c_V(m; A) = (1/V) sum_n m/(lambda_n^2 + m^2) = (1/V) d/dm log |det(D_M(A) + gamma_5 m)|, formal on a compact four-manifold and needing ultraviolet regularization, with subtraction of divergent terms including m Lambda^2, m^3 log Lambda and possibly curvature terms.

**Statement.**

1. With a subtraction compatible with the pairing +-lambda whose finite remainder is O(m), for example odd and analytic in m, at fixed A on compact M, c_V(m; A) = n_0/(V m) + O(m) as m -> 0. A subtraction merely regular at m = 0 may leave a constant. So at finite volume and fixed background no nonzero limit exists beyond the zero-mode term.
2. Let rho_m(lambda) = lim_{V -> infinity} <(1/V) sum_n delta(lambda - lambda_n)>_m for a measure <.>_m on gauge fields. Assume the family is equicontinuous at 0 with rho_m(0) -> rho_0(0), the tails and the ultraviolet subtraction are controlled uniformly in m, and the infinite-volume limit may be taken inside the integral. Then lim_{m -> 0} lim_{V -> infinity} <c_V> = pi rho_0(0), the form of the Banks-Casher relation as stated by Giusti and Lüscher.
3. Equicontinuity alone is insufficient: rho_m(lambda) = (1 + (1/2) sin(1/m)) exp(-lambda^2) gives no limit.

*Scope.* The hypotheses of item 2 are those of the lemma; the original Banks-Casher paper has neither the factor pi nor an order of limits with the volume, and the sign and flavour normalization of a condensate depend on convention. The spectral triple supplies the operator D_M + gamma_5 m, the density of each fixed operator and the continuity of m -> 0 at fixed background; the gauge-averaged density, the regulated determinant or Pfaffian measure, the sequence of volumes and the order of limits need further input.

**Proof.** Lemma 17, Proposition 17.8; the proof is there: for a cutoff preserving the pairs, |det| = m^{n_0} times the product of (lambda^2 + m^2) over lambda > 0, and m/(lambda^2 + m^2) is pi times the Poisson kernel at scale m.

**What it leaves open.** A proof of existence of QCD with fermions would supply a measure without by itself giving rho_0(0) > 0; the points to check when it appears are whether m_q = 0 is included and whether infinite volume is reached (STRATEGY T10).
