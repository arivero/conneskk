# Lemmas and conjectures

Priorities come from [../STRATEGY.md](../STRATEGY.md). Each job runs alone through `codex exec -m gpt-6-astra --disable multi_agent --disable multi_agent_v2 -s read-only` (`--disable memories` from job 03 on). Prompts are in `prompts/`. Every result is classed PROVED, DISPROVED or OPEN. Claude reviews each one by hand or numerically before filing it.

## Results

| # | claim tested | status | attempted by | checked by |
|---|---|---|---|---|
| [01](01_invariant_weyl_growth.md) | Circle-invariant sector of CP^3 has spectral dimension 5; N_0(K) = ((K+2)^5-(K+2))/30; resolvent collapse of D_tau (canonical 12) | **PROVED** with two added hypotheses (positive rank; Hermitian grading and self-adjoint closure). The effective circle acts freely off two fixed CP^1's and has no other exceptional orbits. | gpt-6-astra (codex 0.164, xhigh) | Claude Opus 5.5 (by hand) |
| [02](02_invariant_connections_monopole.md) | "Decisive monopole collapse": parallel algebra C+C+C on K_1+K_2+K_3 (canonical 8) | **PROVED for the canonical connection; DISPROVED as a general obstruction.** SU(3)-invariant off-diagonal connections give M_6(C) (flat) or **M_3(C)** (nonflat, triplet x doublet); on K_1+K_1+K_2 they give M_4(C) or M_3(C)+C. | gpt-6-astra (codex 0.164, xhigh) | Claude Opus 5.5 (numerical Wang closure) |
| [03](03_mass_weighted_kinetic_terms.md) | Gauge kinetic terms with heavy fermions; fate of cos^2 theta_W = 5/8 in the heavy-up limit (Sol review item 1; canonical 3, 14.3) | **PROVED.** Unbroken generators are weighted by f(m^2/Lambda^2), so the outcome depends on m_h/Lambda: 0 keeps the full trace, c gives f(c^2), infinity keeps the light trace only. Photon and gluon both drop to 5/6 (three generations, top heavy) with their ratio fixed at 8/3. For broken generators an explicit weight w(x) applies; cos^2 theta_NC stays exactly 5/8, while the charged matching angle runs to 103/157. | gpt-6-astra (codex 0.164, xhigh) | Claude Opus 5.5 (by hand and quadrature) |
| 05 | T1 deconstruction: Connes-Lott two-point space as the towerless truncation of a chiral interval, distance proportional to length (STRATEGY rank 1) | running | gpt-6-astra | |

## Open conjectures

None yet. An OPEN result is listed here with its precise statement, its strongest partial result and every model that attempted it.

## Parked

| # | claim | why parked |
|---|---|---|
| [04](prompts/04_berger_gauge_normalizations.md) | Q(x_a) = Gamma_a/5; Berger e^2/g_3^2 = 3(eta^2+3)/(8 eta^2) vs 3(eta^2+3)/(32 eta^2) (claimed "checked" but no script computes them) | off the critical path of STRATEGY.md; prompt kept |

## What job 02 changes in the paper

Canonical 8 and 15 present the flux-(1,2,3) failure as decisive, but it depends on choosing the canonical (block-diagonal) Berry connection. The invariant connection modelled on C^3 (x) C^2 has parallel algebra M_3(C) and su(2)+u(1) holonomy on the doublet; it reorganizes fluxes 1, 2 and 3 as triplet times doublet. Section 9 already shows how to engineer off-diagonal Berry connections. What remains open is whether this connection comes from an admissible horizontal distribution with a supporting field configuration.
