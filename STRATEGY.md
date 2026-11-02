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

## Ranking rules

1. **Critical path first:** a theorem must decide part of H, or of the user's 10 -> 11 / 10 -> 9 claims.
2. **One session:** finite-dimensional or classical analysis, decidable by one Astra run.
3. **Fail fast:** prefer results whose negation would kill or reshape H.
4. **Cite known theorems:** circle collapse (Ammann), adiabatic limits (Bismut-Cheeger, Dai), spectral truncations (Connes-van Suijlekom 2021), fuzzy KO types (Barrett 2015) and QED as NCG (van den Dungen-van Suijlekom 2013) are cited instead of re-proved.

## Ranked list

| rank | id | theorem to settle | decides | size |
|---|---|---|---|---|
| 1 | T1 | **Deconstruction.** N-site chiral chain to interval: spectrum, heat window, Connes distance between end sites as N -> infinity at fixed l. N = 2 equals Connes-Lott. Is the minimal truncation's distance proportional to l? | towerless = KK (P4); both limits of H | medium |
| 2 | T2 | **KO parity.** An even real finite triple is unitarily (A, J)-equivalent to odd (x) Clifford point iff it is vectorlike. Apply this to the heavy limit of F_SM: do nu_L or the Majorana block obstruct it? | 10 -> 9 inside NCG | small |
| 3 | T3 | **Chiral endpoint as a boundary.** An equivariant Callias / domain-wall index on F x R (or F x interval) reproduces I_G = [V_L] - [V_R] as a boundary class. Identify the two-wall interval of H as the KK-theory boundary of an odd bulk. | 10 -> 11 inside NCG | medium |
| 4 | T4 | **Gauge sector of the towerless interval.** Truncate a Higgsless interval gauge field to N = 2 and compare with Connes-Lott inner fluctuations: M_W ~ 1/l, rho = 1? | ties M_W to l | medium |
| 5 | T5 | **Heavy-W scaling.** In the spectral-action family, M_W -> infinity iff the largest Yukawa -> infinity, with the light algebra the centralizer. Combine with job 03 (kinetic weights f(m^2/Lambda^2)). | 10 -> 9 normalization | small |
| 6 | T6 | **Metric-compatible towerless limits.** Operator-system truncation (Connes-van Suijlekom) in place of the compressed algebra, fixing the S^2 mismatch of research_state 6.10. | general P4 | medium |
| 7 | T7 | **Towerless S^2, CP^2 to H, M_3(C) with the right real structure**, extending lemma 02 (J^2 = -1 issue of canonical 8). | algebra of F | medium |

**Parked:** job 04 (Berger e^2/g_3^2 normalizations), Aloff-Wallach topology, torus/Weyl crossed products and the Weinberg-angle geometry. They stay in the record but are off the critical path.

## What would sink H

- **T1:** no natural truncation gives an end-to-end distance proportional to l. Then 1/m measures only the tower scale, and the "sheets = interval ends" reading fails.
- **T2:** the heavy-limit light triple admits no odd factorization compatible with J. Then 10 -> 9 needs an explicit treatment of the neutral sector before it holds in NCG terms.
- **T3:** I_G is not the boundary index of any odd bulk with the required equivariance. Then the 10 -> 11 emergence needs a different mechanism than walls.

## Protocol for Astra

Jobs run one at a time through `codex exec -m gpt-6-astra --disable multi_agent --disable multi_agent_v2 --disable memories -s read-only`. Every result is classed **PROVED**, **DISPROVED** or **OPEN**. An OPEN result is filed as a conjecture with its strongest partial result and the list of models that attempted it (see `lemmas/README.md`).
