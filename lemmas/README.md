# Lemmas and conjectures

Priorities come from [../STRATEGY.md](../STRATEGY.md). Each job runs alone through `codex exec -m gpt-6-astra --disable multi_agent --disable multi_agent_v2 -s read-only` (`--disable memories` from job 03 on); prompts are in `prompts/`. Claude checks each result by hand or numerically before it is filed.

## Results

| # | question | outcome | attempted by | checked by |
|---|---|---|---|---|
| [01](01_invariant_weyl_growth.md) | Spectral dimension of the circle-invariant sector of CP^3 (canonical 12) | **Theorem**: the invariant counting function grows like Lambda^5, given positive rank, a Hermitian grading and the self-adjoint closure. **Lemma**: N_0(K) = ((K+2)^5-(K+2))/30 and N_0(K-abs(r)) <= N_r(K) <= N_0(K). **Lemma**: norm-resolvent collapse of D_tau. The effective circle acts freely off two fixed CP^1's. | gpt-6-astra (codex 0.164, xhigh) | Claude Opus 5.5 (by hand) |
| [02](02_invariant_connections_monopole.md) | The "decisive monopole collapse" on K_1+K_2+K_3 (canonical 8) | **Theorem** (canonical connection): parallel algebra C+C+C, and the sum of M_{r_n}(C) with multiplicities. **Counterexample** to the obstruction for general SU(3)-invariant connections: M_6(C) (flat, Sym^2 C^3 model) and **M_3(C)** (nonflat, C^3 (x) C^2 model). **Theorem**: full classification of the parallel algebras for K_1+K_2+K_3, K_1+K_1+K_2 and K_1+K_2. | gpt-6-astra (codex 0.164, xhigh) | Claude Opus 5.5 (numerical Wang closure) |
| [03](03_mass_weighted_kinetic_terms.md) | Gauge kinetic terms with heavy fermions; cos^2 theta_W = 5/8 in the heavy-up limit (Sol review item 1; canonical 3, 14.3) | **Theorem**: unbroken generators are weighted by f(m^2/Lambda^2). **Proposition**: photon and gluon both drop to 5/6 (three generations, top heavy) with ratio 8/3. **Proposition**, conditional on the transverse-quadratic prescription: an explicit weight w(x) for broken generators; cos^2 theta_NC = 5/8 exactly, while the charged matching angle tends to 103/157. | gpt-6-astra (codex 0.164, xhigh) | Claude Opus 5.5 (by hand and quadrature) |
| 05 | T1: the Connes-Lott two-point space as the two-site truncation of a chiral interval, with distance proportional to length (STRATEGY rank 1) | running | gpt-6-astra | |

## Conjectures

None so far. Each conjecture will be listed with its statement, the strongest partial result and every model that attempted it.

## Parked

| # | question | reason |
|---|---|---|
| [04](prompts/04_berger_gauge_normalizations.md) | Q(x_a) = Gamma_a/5; Berger e^2/g_3^2 = 3(eta^2+3)/(8 eta^2) vs 3(eta^2+3)/(32 eta^2), labelled "checked" in the corpus but computed by no script | off the critical path of STRATEGY.md |

## Consequence of job 02 for the paper

Canonical 8 and 15 present the flux-(1,2,3) failure as decisive; Theorem 02-A confirms it only for the canonical (block-diagonal) Berry connection. The invariant connection modelled on C^3 (x) C^2 has parallel algebra M_3(C) and su(2)+u(1) holonomy on the doublet, reorganizing fluxes 1, 2 and 3 as triplet times doublet. Section 9 already shows how off-diagonal Berry connections can be engineered. Whether this connection comes from an admissible horizontal distribution with a supporting field configuration is open.
