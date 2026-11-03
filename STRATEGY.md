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
| 0 | T0 | **Founding problem: finite triples as limits of commutative Kaluza-Klein data.** Find a family (C^infinity(K_l), L^2(S_{K_l} (x) E_l), D_l, J_l, gamma_l) and notions of spectral, operator-algebraic and K-theoretic convergence under which it tends to a finite real triple (A_F, H_F, D_F, J_F, gamma_F), in particular a noncommutative one; compressions P a P are operator systems, so the algebra must be produced by the limit. The target is the structure of finite triples in general (reality, grading, chirality, noncommutativity), not specifically the Standard Model algebra. KO-degrees are not metric dimensions: a change of Weyl exponent needs a singular limit. | the question itself | open, framing |
| 0b | T0b | **Reach the current Connes et al. framework, beyond Connes-Lott.** Lemma 05 only reaches the 1990 two-point layer (no real structure, no KO-dimension). Test the towerless picture against the current finite geometry: KO-6 real triples with order zero and order one and fermion doubling (Connes 2006, CCM 2007); the classification of irreducible finite geometries leading to M_2(H) + M_4(C) with dim H_F = 2k^2 = 32 (Chamseddine-Connes 2007-08); inner fluctuations without the first-order condition and Pati-Salam (Chamseddine-Connes-van Suijlekom 2013); the grand symmetry and twisted spectral triples (Devastato-Lizzi-Martinetti; Landi-Martinetti). First step: a background note on that framework, then ask which of its structures a Kaluza-Klein limit can produce. | the obsolete layer is what we reproduce now | high |
| 1 | T1 | **Deconstruction.** Settled by job 05 (Theorem above): Connes-Lott is the minimal truncation of the chiral interval, l = pi/(2 abs(m)). | towerless = KK (P4); both limits of H | done |
| 2 | T2 | **KO parity.** Settled by job 06: the criterion is a grading-reversing involution U with UJ = sJU, and s = -1 gives 9 while s = +1 gives 11. J alone does not choose: electrodynamics admits both. The strict heavy limit with an unpaired nu_L gives only 11. No doubling exists while H stays in the algebra. | 10 -> 9 inside NCG | done |
| 2b | T2b | **Settled by jobs 07-08.** In the standard internal-first KO-6 product the bare interval reflection gives s = -1 (formally 9) for either interval convention (Theorem 08.5). A fixed spacetime J_M and particle-number conservation admit both signs (Counterexample 08.11, Theorem 08.12), so physical charge conjugation does not select 9 or 11; choosing the lift of the L/R reflection is extra data. | 9 versus 11 | small |
| 2c | T2c | **Answered by lemma 06 (Lemma 4 and Proposition 7), overlooked when T2c was opened.** For the reduced triple after the heavy-W limit, with a generic Majorana block R the KO-7 factorization always exists and KO-5 exists only where every singular value of the neutral mass matrix [[0, Y_nu^T], [Y_nu, R]] has even multiplicity (for one generation, only at R = 0). With pure Dirac neutrinos both signs occur; without nu_R only KO-7. So a realistic seesaw sector selects s = +1 (formally 11), within these hypotheses. | 9 versus 11 with the physical neutrino sector | high |
| 3 | T3 | **Settled by lemmas 09 and 12** (the boundary Yukawa X interpolates from (a)+(b) to (c)+(c) at constant index; Corollary 12.3 gives the symmetry-breaking condition). **Core settled by lemma 09** (index by boundary type; light pair mu sech(kappa_0 l); both limits). Remaining: the Higgs-coupled interpolation from types (a)/(b) at v = 0 to vectorlike type (c) pairs, i.e. symmetry breaking by boundary conditions, with the light spectrum tracked. **Original statement:** chiral endpoint as a boundary, with light fermions. Add a bulk Dirac mass M to the chiral interval of job 05: near-zero modes localized at the two walls, with masses well below pi/(2l). An equivariant Callias / domain-wall index reproduces I_G = [V_L] - [V_R] as a boundary class. Decide whether the light modes survive both limits l -> 0 and l -> infinity at fixed physical masses. | 10 -> 11 and the fermions of 10 -> 9 | medium |
| 4 | T4 | **Answered by job 13, negatively in the naive form.** The fixed compression to the light pair is exact but not gauge covariant, its links satisfy phi + phi* = 2m, and the finite spectral action gives vector masses fixed by the whole fermion trace (sqrt(6) m minimally, sqrt(3/8) m with the CCM trace and one massive triplet) against m = pi/(2l) from the Neumann-Dirichlet tower. | ties M_W to l | medium |
| 4b | T4b | **Gauge-covariant reduction.** Project onto the low spectral subspace of the fluctuated operator (P_A instead of a fixed P), derive the induced finite gauge fluctuations and bosonic action, and decide whether the vector spectrum then matches the interval tower; include the gauge boundary conditions as data. Hard: Astra. | whether H survives in the gauge sector | high |
| 5 | T5 | **Settled by lemma 11**, conditional on the CCM relation: heavy W forces a heavy Dirac fermion, and m_t/M_W -> sqrt(8/3) when only the top is heavy. **Original statement:** heavy-W scaling. In the spectral-action family, M_W -> infinity iff the largest Yukawa -> infinity, with the light algebra the centralizer. Combine with job 03 (kinetic weights f(m^2/Lambda^2)). | 10 -> 9 normalization | small |
| 5b | T5b | **Heavy limit near the cutoff.** The CCM relation holds for masses well below Lambda (lemma 11). For masses near or above Lambda the heat-kernel coefficients carry the weights f(m^2/Lambda^2) of lemma 03; redo the heavy-W limit at fixed Lambda with those weights, and compare with Lambda -> infinity. | where a genuine heavy-limit obstruction would sit | medium |
| 6 | T6 | **Metric-compatible towerless limits.** Operator-system truncation (Connes-van Suijlekom) in place of the compressed algebra, fixing the S^2 mismatch of research_state 6.10. | general P4 | medium |
| 10 | T10 | **From Yukawa couplings to explicit masses in the D = 9 action, and the chiral limit.** In the 10 -> 9 reduction the Higgs is frozen and the Yukawa couplings become explicit fermion mass terms of the odd triple: d_5 = D_0 + m Gamma_0 (Theorem 08.7); on a charged sector d_+ = m I (KO-7), d_- = diag(m, -m) (KO-5), both surviving at m = 0 (lemma 06, Result 3). Bimodule-linear (explicit) masses conflict with finite orientability (notes 5.4). Questions: write the nine-dimensional Dirac operator with its explicit mass terms; identify the symmetry of the reduced triple restored at m_u = m_d = 0 (light-quark chiral symmetry, ungauged); decide what the spectral data can and cannot say about the condensate and the pions, which are dynamical. Motivation: the chiral limit carries the condensate and the pion physics, to be connected with the existence proof of QCD with fermions that the user expects from Gross's team. | how masses enter the 9D theory; the chiral limit | medium-high |
| 8 | T8 | **Largely settled by lemma 12** (towerless D_F Yukawa block Phi_Q Y_hat Phi_U, hierarchies exponential in the localization c's; mixing pattern numerical only). **Fermion masses as internal momenta (Yukawa textures).** In the interval family, masses are quantized internal momenta, and the light-pair mass mu sech(kappa_0 l) depends exponentially on mu l (lemma 09, Remark). Derive the D_F texture of N_g generations from bulk masses mu_i and wall-localized Higgs overlaps. Which hierarchies and mixings are reachable, and what remains of them in the towerless (finite NCG) limit? | mass patterns from geometry | medium |
| 7 | T7 | **Towerless S^2, CP^2 to H, M_3(C) with the right real structure**, extending lemma 02 (J^2 = -1 issue of canonical 8). | algebra of F | medium |

**External context for T10 (reported, unverified; searched 3 Nov 2026).** OpenAI announced on 26 Oct 2026 an AI-produced existence proof for certain interacting 4D quantum field theories, including Yang-Mills and QCD; the mass gap is not claimed and the materials are unreleased. A group led by David Gross (Douglas, Jaffe, Klebanov, Nekrasov) is studying them and will write them up, with no date given. Separately, Alpoge and Sussman are completing Balaban's approach in public (3D existence posted, 4D in preparation). Which quark masses the QCD claim covers is not public; for the chiral limit the questions to check are whether m_q = 0 is included, which axioms and limits are established, and whether anything about chiral symmetry breaking is proved (existence alone says nothing about the condensate).

**Note on obstructions.** The obstructions of the corpus concern particular representations, connections and ansatze; they are not general no-go theorems for a Kaluza-Klein realization (review of 3 Nov 2026).

**Parked:** job 04 (Berger e^2/g_3^2 normalizations), Aloff-Wallach topology, torus/Weyl crossed products and the Weinberg-angle geometry. They stay in the record but are off the critical path.

## What would sink H

- **T1:** settled in favour of H (job 05). Its no-go part says the bare interval loses all fermions in the collapse; T3 must supply them.
- **T2b:** settled by job 08: the standard product with the bare reflection gives 9, but neither J_M nor particle number selects the sign (Counterexample 08.11). The open form of the question is T2c.
- **T2:** answered by job 06. Factorizations exist, but J does not select 9 over 11, and an unpaired nu_L admits only the KO-7 factorization (a statement about the finite triple, not about a parent manifold). The 10 -> 9 claim therefore needs either a geometric selection of s (T2b) or a neutral sector with nu_R and Dirac masses together with that selection.
- **T3:** I_G is not the boundary index of any odd bulk with the required equivariance. Then the 10 -> 11 emergence needs a different mechanism than walls.
