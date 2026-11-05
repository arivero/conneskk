# The torus Dirac operator with a Wilson line and a torsion commutes with the lift of a transposition exactly when both data lie in its mirror plane; then the window block commutes with the lifted transposition on both chiralities, the condition [D_F, C_F] = 0 of Chamseddine, Connes and Marcolli, and these are all the invariant blocks; nonzero data along a mirror break S_3 to that transposition, and no nonzero data are invariant under S_3

**Status.** Proposition 51.2. Proved by Claude Fable 5.1 on 5 November 2026 by hand; the covariance x c(v) x^{-1} = c(d tau v), the commutation exactly for data in the mirror plane and the fixed space of a three-cycle were checked with numpy (script not kept). Referee pending (Claude Opus 5.5). Ledger row `l51_photon_condition`. Not yet in a paper.

**Setting.** As in Proposition 51.1; tau a transposition of S_3 acting on A = a (x) R^2 by rho(tau) (x) 1, with mirror plane P_tau = n_tau^perp (x) R^2 (the tangent plane of the mirror z_i = z_j, a complex line of A) and lift x of order four (lemma 48), tau-tilde psi(z) = x psi(tau^{-1} z).

**Statement.** tau-tilde D_{A,H} tau-tilde^{-1} = D + c(d tau A) + i c(d tau eta) Gamma, so D_{A,H} commutes with tau-tilde exactly when A and eta lie in P_tau. Then Y = c(A) + i c(eta) Gamma commutes with x on both chiralities, that is with the algebra C = span_R(1, x) of the mirror stratum (Proposition 49.4), the restriction of C_F to the first sheet, so [D_F, C_F] = 0 (Proposition 49.3) holds; the blocks commuting with x are exactly these, a real four-dimensional family. A nonzero A or eta in P_tau is fixed by tau only (P_tau meets P_tau' in 0; a three-cycle fixes no vector), so D_{A,H} is S_3-invariant exactly when A = eta = 0: the symmetric points carry no Yukawa block. For v in P_tau^perp, x c(v) x^{-1} = -c(v): the charged Higgs directions.

*Scope.* The lift of the transposition acting on the whole torus with the periodic spin structure; the identification with C_F is that of Proposition 49.3.

**Proof.** Lemma 51, Proposition 51.2: D commutes with lifted isometries; x in Spin(4) commutes with Gamma; the two halves are independent; the dimension count against Proposition 49.3; the planes P_tau meet in 0 since the normals n_tau are independent in the two-dimensional a.

**What it leaves open.** A derivation of the choice of mirror; the three mirrors as three photon circles (lemma 49).
