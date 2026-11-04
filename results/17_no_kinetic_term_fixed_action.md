# A spacetime-dependent reduction of the fixed operator gives no kinetic term for Sigma: the spectral action of D is unchanged, and a kinetic term needs a new operator with m != 0, whose coefficient is N_c f(0) m^2/(4 pi^2)

**Status.** Proposition (Proposition 17.10). Proved by Terra 6.1 in the referee report on lemma 17 (historical/reviews/2026-11-03_terra_check_17.md); checked by Claude Opus 5.5 by hand (the spin trace evaluated with explicit Dirac matrices). Ledger row `l17_no_kinetic`.

**Setting.** U(x) a pointwise admissible involution on M, c^mu = [D_M, x^mu], B_mu = (U d_mu U) restricted to H_0, R defined pointwise as in Theorem 17.1 (17_reduced_action.md), P_- = (1 - gamma_5)/2. The quark sector of 17_set_of_reductions.md with N_c colours.

**Statement.**

1. R^{-1} UU D R = D_M + c^mu P_- B_mu + gamma_5 d(x), an operator that is generally not self-adjoint.
2. If Sigma(x) only changes coordinates for the fixed operator D, the spectral action of D does not depend on Sigma, and conjugating D by a smooth unitary preserves its spectrum; neither produces a two-derivative term.
3. A kinetic term needs an additional choice of operator. For D_new = D_M + gamma_5 d_Sigma(x) on flat M, with M = m I, Sigma^\\* = Sigma and Sigma^2 = 1, the heat expansion of Tr f(D_new^2/Lambda^2) contains (N_c f(0) m^2/(4 pi^2)) int tr(d_mu Sigma^\\* d^mu Sigma), tracing over both reduced blocks; the sign is positive when f(0) > 0.
4. At M = 0 this operator does not depend on Sigma.

*Scope.* On the even triple, D_M + gamma_5 S(x) with S built from Phi = m Sigma(x) is self-adjoint for every unitary Sigma, and its kinetic term is the Higgs-type term of an inner fluctuation, available when A_F contains flavour algebras acting on L and R, which brings flavour gauge fields with it. The coefficient is proportional to N_c m^2, as in constituent-quark estimates of f_pi^2 (quoted from memory in the lemma); here it is a classical spectral-action coefficient, and m is not derived.

**Proof.** Lemma 17, Proposition 17.10; the proof is there. B_mu is anti-Hermitian and P_- c^mu = c^mu P_+, which gives the adjoint; for the coefficient, D_new^2 = -(nabla^2 + E) with E containing -i gamma^mu gamma_5 d_mu d, and the a_4 term (1/(16 pi^2)) tr(E^2/2) gives (1/(8 pi^2)) tr_{H_0}(d_mu d d^mu d), the two blocks of d giving 2 N_c m^2 tr(d_mu Sigma d^mu Sigma).

**What it leaves open.** A kinetic term at m = 0 needs a quantum effective action (lemma 17).
