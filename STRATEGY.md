# Which theorems to prove first

## The question

The intermediate "D = 10" object is the almost-commutative geometry M^4 x F_SM: KO-dimension 4 + 6 = 10 mod 8. The programme claims two limits of it.

- **Massless W, Z (v -> 0): one dimension emerges, 10 -> 11.**
- **Infinitely heavy W, Z (v -> infinity, with the top): one dimension collapses, 10 -> 9.** The heavy top raises no anomaly issue: the surviving SU(3) x U(1)_em theory is vectorlike.

We want to know how this works when the 10-dimensional object is a noncommutative geometry, and whether that geometry is the *towerless limit* of a Kaluza-Klein (KK) geometry.

## What the corpus already settles

1. A finite factor F has heat dimension 0 for every v (canonical 2.1). Light finite modes never create a continuum dimension. Any emerging dimension therefore needs a parent with an infinite tower, and F must be its truncation.
2. On the two-point space the Connes distance is 1/abs(m). As m -> 0 the points separate to infinite distance, and as m -> infinity they merge (canonical 2.3).
3. Heavy finite operators give embedded norm-resolvent limits onto ker T, with algebra A ∩ {T}' (canonical 2.2). The Feshbach version with an internal tower R^{-1} D_X + S is in research_state 6.10, and lemma 01 gives the circle case.
4. Chirality: I_G = [V_L] - [V_R] is nonzero for the electroweak group and restricts to 0 on SU(3) x U(1)_em (research_note 7, canonical 14.2). The heavy endpoint therefore admits a vectorlike (odd) description. The massless endpoint needs a boundary, defect or domain wall, since a closed odd bulk cannot carry it. A 7-dimensional spin bulk has a KO-degree-6 boundary class (canonical 11.1).
5. Naive compression fails metrically. With D_F = 0, compressing a shrinking S^2 to M_2(C) gives infinite distances where the sphere gives distances tending to 0 (research_state 6.10).
6. Lemma 02: invariant connections on the monopole kernels can produce M_3(C) and M_6(C) as parallel algebras. Towerless limits can therefore carry nonabelian finite algebras.

## Working hypothesis H: the two sheets are a towerless interval

The L and R sheets of F, at Connes distance 1/m, are the minimal (two-site) truncation of an interval I_l whose two ends carry opposite chiralities. Its length is l ~ 1/m ~ 1/M_W; the spectral-action relation sum m_f^2 = 8 M_W^2 (Chamseddine-Connes-Marcolli, at unification) ties M_W to the top. H predicts three regimes.

| regime | interval | what the three records of canonical 1 do | total |
|---|---|---|---|
| M_W -> 0 | l -> infinity: the tower n/l comes down and the interval is resolved, with chiral walls at its ends | heat dimension +1 above 1/l; chirality carried by the walls, as in Horava-Witten S^1/Z_2 | 11 |
| M_W finite, E << 1/l | towerless: two sheets with a finite D_F | heat 4; KO-6 grading essential; chiral | 10 |
| M_W -> infinity | l -> 0: the sheets merge and L, R pair into Dirac fermions | grading inessential; even triple = odd triple (x) Clifford point | 9 |

On the KK side this is dimensional deconstruction (Arkani-Hamed, Cohen and Georgi 2001: an N-site chain reproduces the tower 2 m sin(k pi / 2N)). It is also Higgsless symmetry breaking on an interval (Csaki et al. 2003: M_W ~ 1/l from boundary conditions). The Connes-Lott two-sheet model is the N = 2 member of such a chain.

H is falsifiable piece by piece, and each piece is a single-session theorem.

### What job 05 settled (T1)

**Theorem** ([lemmas/05](lemmas/05_deconstruction_interval.md)). Let I_l carry the Dirac operator with opposite chiral boundary conditions R(0) = 0 and L(l) = 0. Its minimal grading-preserving spectral truncation is unitarily equivalent to the Connes-Lott two-point space with abs(m) = pi/(2l), and the truncated end states lie at distance 2l/pi. An explicit N-site chain interpolates: its spectrum is +/- 2 h_N sin((2r-1) pi/(4N-2)), its site distances are abs(i-j)/h_N, it has a one-dimensional heat window, and it converges in Gromov-Hausdorff distance to I_l.

The identification "the two sheets are a truncated interval, with length proportional to 1/m" therefore holds. Two refinements follow.

- **Emergence needs the tower back.** At fixed rank, m -> 0 only separates the sheets. One heat dimension appears in a fixed energy window only when N m -> infinity, i.e. when the number of retained modes grows. The 10 -> 11 statement has to be phrased for the refined family, as the corpus no-go of canonical 2.1 already requires.
- **The bare interval has no zero mode.** As m -> infinity the metric collapses to a point, but every fermion mode becomes heavy, so no light fermions survive at fixed energy. Light fermions in the 9-dimensional endpoint must come from another sector: a bulk Dirac mass with near-zero modes localized at the walls, whose masses can be far below the tower scale pi/(2l) ~ M_W. This moves the fermion question into T3 and leaves the gauge question (l ~ 1/M_W) to T4.

## Ranking rules

1. **Critical path first:** a theorem must decide part of H, or of the user's 10 -> 11 / 10 -> 9 claims.
2. **One session:** finite-dimensional or classical analysis, decidable by one Astra run.
3. **Fail fast:** prefer results whose negation would kill or reshape H.
4. **Cite known theorems:** circle collapse (Ammann), adiabatic limits (Bismut-Cheeger, Dai), spectral truncations (Connes-van Suijlekom 2021), fuzzy KO types (Barrett 2015) and QED as NCG (van den Dungen-van Suijlekom 2013) are cited instead of re-proved.

## Ranked list

| rank | id | theorem to settle | decides | size |
|---|---|---|---|---|
| 1 | T1 | **Deconstruction.** Settled by job 05 (Theorem above): Connes-Lott is the minimal truncation of the chiral interval, l = pi/(2 abs(m)). | towerless = KK (P4); both limits of H | done |
| 2 | T2 | **KO parity.** Settled by job 06: the criterion is a grading-reversing involution U with UJ = sJU, and s = -1 gives 9 while s = +1 gives 11. J alone does not choose: electrodynamics admits both. The strict heavy limit with an unpaired nu_L gives only 11. No doubling exists while H stays in the algebra. | 10 -> 9 inside NCG | done |
| 2b | T2b | **Settled by jobs 07-08.** In the standard internal-first KO-6 product the bare interval reflection gives s = -1 (formally 9) for either interval convention (Theorem 08.5). A fixed spacetime J_M and particle-number conservation admit both signs (Counterexample 08.11, Theorem 08.12), so physical charge conjugation does not select 9 or 11; choosing the lift of the L/R reflection is extra data. | 9 versus 11 | small |
| 2c | T2c | **Majorana terms and the sign of the reduction.** Theorem 08.12 pairs the two signs only when [Q, D] = 0. Combined with job 06 (an unpaired nu_L forces 11): without nu_R the sign is +1; with nu_R and Dirac masses both signs occur; with a Majorana mass for nu_R, does a unique admissible sign remain, and which? Hard: Astra. | 9 versus 11 with the physical neutrino sector | high |
| 3 | T3 | **Settled by lemmas 09 and 12** (the boundary Yukawa X interpolates from (a)+(b) to (c)+(c) at constant index; Corollary 12.3 gives the symmetry-breaking condition). **Core settled by lemma 09** (index by boundary type; light pair mu sech(kappa_0 l); both limits). Remaining: the Higgs-coupled interpolation from types (a)/(b) at v = 0 to vectorlike type (c) pairs, i.e. symmetry breaking by boundary conditions, with the light spectrum tracked. **Original statement:** chiral endpoint as a boundary, with light fermions. Add a bulk Dirac mass M to the chiral interval of job 05: near-zero modes localized at the two walls, with masses well below pi/(2l). An equivariant Callias / domain-wall index reproduces I_G = [V_L] - [V_R] as a boundary class. Decide whether the light modes survive both limits l -> 0 and l -> infinity at fixed physical masses. | 10 -> 11 and the fermions of 10 -> 9 | medium |
| 4 | T4 | **Gauge sector of the towerless interval.** Truncate a Higgsless interval gauge field to N = 2 and compare with Connes-Lott inner fluctuations: M_W ~ 1/l, rho = 1? | ties M_W to l | medium |
| 5 | T5 | **Settled by lemma 11**, conditional on the CCM relation: heavy W forces a heavy Dirac fermion, and m_t/M_W -> sqrt(8/3) when only the top is heavy. **Original statement:** heavy-W scaling. In the spectral-action family, M_W -> infinity iff the largest Yukawa -> infinity, with the light algebra the centralizer. Combine with job 03 (kinetic weights f(m^2/Lambda^2)). | 10 -> 9 normalization | small |
| 6 | T6 | **Metric-compatible towerless limits.** Operator-system truncation (Connes-van Suijlekom) in place of the compressed algebra, fixing the S^2 mismatch of research_state 6.10. | general P4 | medium |
| 8 | T8 | **Largely settled by lemma 12** (towerless D_F Yukawa block Phi_Q Y_hat Phi_U, hierarchies exponential in the localization c's; mixing pattern numerical only). **Fermion masses as internal momenta (Yukawa textures).** In the interval family, masses are quantized internal momenta, and the light-pair mass mu sech(kappa_0 l) depends exponentially on mu l (lemma 09, Remark). Derive the D_F texture of N_g generations from bulk masses mu_i and wall-localized Higgs overlaps. Which hierarchies and mixings are reachable, and what remains of them in the towerless (finite NCG) limit? | mass patterns from geometry | medium |
| 7 | T7 | **Towerless S^2, CP^2 to H, M_3(C) with the right real structure**, extending lemma 02 (J^2 = -1 issue of canonical 8). | algebra of F | medium |

**Parked:** job 04 (Berger e^2/g_3^2 normalizations), Aloff-Wallach topology, torus/Weyl crossed products and the Weinberg-angle geometry. They stay in the record but are off the critical path.

## What would sink H

- **T1:** settled in favour of H (job 05). Its no-go part says the bare interval loses all fermions in the collapse; T3 must supply them.
- **T2b:** settled by job 08: the standard product with the bare reflection gives 9, but neither J_M nor particle number selects the sign (Counterexample 08.11). The open form of the question is T2c.
- **T2:** answered by job 06. Factorizations exist, but J does not select 9 over 11, and an unpaired nu_L forces 11. The 10 -> 9 claim therefore needs either a geometric selection of s (T2b) or a neutral sector with nu_R and Dirac masses together with that selection.
- **T3:** I_G is not the boundary index of any odd bulk with the required equivariance. Then the 10 -> 11 emergence needs a different mechanism than walls.
