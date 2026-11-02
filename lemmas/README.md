# Lemmas proved with Astra 6

Each job ran alone through `codex exec -m gpt-6-astra --disable multi_agent --disable multi_agent_v2 -s read-only` (from job 3 on, also `--disable memories`). Prompts are in `prompts/`. Claude checked each result before it was filed here.

| # | file | claim tested | verdict |
|---|---|---|---|
| 01 | [01_invariant_weyl_growth.md](01_invariant_weyl_growth.md) | Circle-invariant sector of CP^3 has spectral dimension 5; exact count N_0(K) = ((K+2)^5-(K+2))/30; resolvent collapse of D_tau = D + tau Gamma L (canonical 12, nine_dimensional_construction 1-2) | **Correct**, with two added hypotheses: positive rank and a Hermitian grading with the self-adjoint closure. The effective circle acts freely off two fixed CP^1's ([u:0] and [0:v]) and has no other exceptional orbits. Fixed-character counts satisfy N_0(K-abs(r)) <= N_r(K) <= N_0(K). |
| 02 | [02_invariant_connections_monopole.md](02_invariant_connections_monopole.md) | The "decisive monopole collapse": parallel algebra C+C+C on K_1+K_2+K_3 (canonical 8) | **Correct for the canonical connection, evadable for other SU(3)-invariant connections.** The invariant unitary connections form an 11-parameter affine space. Off-diagonal invariant connections give parallel algebra M_6(C) (flat, Sym^2 C^3 model) or **M_3(C)** (nonflat, C^3 (x) C^2 model with su(2) holonomy). On K_1+K_1+K_2 they give M_4(C) or M_3(C)+C. Checked numerically. |
| 03 | 03_mass_weighted_kinetic_terms.md | Sol review item 1: gauge kinetic terms weighted by f(m^2/Lambda^2); fate of cos^2 theta_W = 5/8 in the heavy-top limit (canonical 3, 14.3) | running |
| 04 | 04_berger_gauge_normalizations.md | Unchecked "checked" claims: Q(x_a) = Gamma_a/5 and e^2/g_3^2 = 3(eta^2+3)/(8 eta^2) vs 3(eta^2+3)/(32 eta^2) (research_note 4, canonical 13) | queued |

## What job 02 changes in the paper

Canonical 8 and 15 present the flux-(1,2,3) failure as decisive. Job 02 shows that it depends on choosing the canonical (block-diagonal) Berry connection. The invariant connection built from C^3 (x) C^2 (fluxes 1, 2 and 3 reorganized as a triplet times a doublet) has parallel algebra M_3(C) and holonomy su(2)+u(1) acting on the doublet. Section 9 already shows that off-diagonal Berry connections can be engineered. The open question is now whether this connection arises from an admissible horizontal distribution with a supporting field configuration.
