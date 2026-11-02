%% ledger.pl -- machine-readable ledger of claims, dependencies, checks and contradictions.
%% Load with:  swipl ledger.pl     Run consistency tests:  swipl -g run_tests -t halt ledger.pl
%% Maintained by hand from here on; sources: lemmas/README.md, connes_kk_research_state.md section 8,
%% canonical_research.md status labels, STRATEGY.md, DUPLICATES.md section 5.
%%
%% claim(Id, Kind, Status, Label, Statement)
%%    Kind:   theorem | lemma | proposition | corollary | counterexample | no_go | conjecture | example | claim
%%    Status: proved | conditional | reference | numerical | conjectural | open | reported | not_reconstructed | refuted | example | other
%%    Label:  the status wording used in the source document
%% source(Id, File, Anchor)            Anchor: markdown heading anchor ('' for the file itself)
%% depends(Id, Dep)                    Dep: a claim Id or hyp(Name)
%% hypothesis(Name, Statement)
%% attempted_by(Id, Agent)             Agent: astra6 | claude_opus_5_5 | terra | sol | chatgpt | corpus
%% checked_by(Id, Agent, Method)       Method: by_hand | python(Description) | not_recorded(Description)
%% overturn(Id, Text)                  what would overturn applicability (research-state ledger)
%% strategy(T, Status, Text)           Status: settled | partial | open
%% addresses(T, Id)                    strategy item T is addressed by claim Id
%% contradiction(N, Where, Finding, Resolution, State)    State: resolved | open | compatible

:- discontiguous claim/5, source/3, depends/2, hypothesis/2, attempted_by/2, checked_by/3, overturn/2.
:- use_module(library(lists)).

%% ---------------------------------------------------------------- lemmas
claim(l01_count, theorem, proved, "Lemma 1", "Exact scalar count on CP^3 (invariant sector): N_0(K) = ((K+2)^5-(K+2))/30 and N_0(K-|r|) <= N_r(K) <= N_0(K).").
source(l01_count, 'lemmas/01_invariant_weyl_growth.md', 'lemma-1--exact-scalar-count').
attempted_by(l01_count, astra6).
checked_by(l01_count, claude_opus_5_5, by_hand).
claim(l01_dim5, theorem, conditional, "Lemma 2", "The circle-invariant sector has spectral dimension five (counting function ~ Lambda^5).").
source(l01_dim5, 'lemmas/01_invariant_weyl_growth.md', 'lemma-2--invariant-spectral-dimension-five').
depends(l01_dim5, l01_count).
depends(l01_dim5, hyp(positive_rank)).
attempted_by(l01_dim5, astra6).
checked_by(l01_dim5, claude_opus_5_5, by_hand).
claim(l01_resolvent, theorem, proved, "Lemma 3", "Resolvent collapse: norm((1-P_0)(D_tau - i)^-1) <= (1+tau^2)^(-1/2).").
source(l01_resolvent, 'lemmas/01_invariant_weyl_growth.md', 'lemma-3--resolvent-collapse').
attempted_by(l01_resolvent, astra6).
checked_by(l01_resolvent, claude_opus_5_5, by_hand).
claim(l02_canonical, theorem, proved, "Theorem (Part A)", "Canonical connection on K_1+K_2+K_3 over S^5: holonomy SU(2), parallel algebra C+C+C.").
source(l02_canonical, 'lemmas/02_invariant_connections_monopole.md', 'part-a--canonical-connection').
attempted_by(l02_canonical, astra6).
checked_by(l02_canonical, claude_opus_5_5, python("numerical Wang closure")).
claim(l02_invariant, theorem, proved, "Theorem (Parts B1-B3)", "Invariant connections form an 11-dimensional affine space; parallel algebras range from M_6(C) (flat Sym^2 model) to C; the corpus obstruction of canonical 8 holds only for the canonical connection.").
source(l02_invariant, 'lemmas/02_invariant_connections_monopole.md', 'part-b1--all-invariant-connection-parameters').
depends(l02_invariant, l02_canonical).
attempted_by(l02_invariant, astra6).
checked_by(l02_invariant, claude_opus_5_5, python("numerical Wang closure")).
claim(l03_weights, theorem, conditional, "Theorem", "Mass-weighted gauge kinetic terms f(m^2/Lambda^2); kappa_em/kappa_s = 8/3; cos^2 theta_NC = 5/8; running weak angles in the heavy-top limit.").
source(l03_weights, 'lemmas/03_mass_weighted_kinetic_terms.md', '').
depends(l03_weights, hyp(heat_kernel_spectral_action)).
attempted_by(l03_weights, astra6).
checked_by(l03_weights, claude_opus_5_5, python("by hand and quadrature")).
claim(l05_truncation, theorem, proved, "Theorem", "Connes-Lott two-point space = minimal grading-preserving spectral truncation of the chiral interval, |m| = pi/(2l); truncated distance 2l/pi.").
source(l05_truncation, 'lemmas/05_deconstruction_interval.md', 'part-3-minimal-spectral-truncation').
attempted_by(l05_truncation, astra6).
checked_by(l05_truncation, claude_opus_5_5, python("spectra, commutator norms, distances, truncation")).
claim(l05_limits, no_go, proved, "Proposition", "At fixed N: m -> 0 gives no heat dimension; m -> infinity leaves no light fermions (bare interval has no zero mode).").
source(l05_limits, 'lemmas/05_deconstruction_interval.md', 'part-4-the-two-limits').
depends(l05_limits, l05_truncation).
attempted_by(l05_limits, astra6).
checked_by(l05_limits, claude_opus_5_5, python("spectra")).
claim(l06_factorization, theorem, proved, "Theorem", "A KO-6 triple factors as (KO-7) x P_7 or (KO-5) x P_1 iff there is a grading-reversing involution U commuting with a, a°, D and UJ = sJU (s = +1: 11, s = -1: 9).").
source(l06_factorization, 'lemmas/06_vectorlike_odd_factorization.md', '').
attempted_by(l06_factorization, astra6).
checked_by(l06_factorization, claude_opus_5_5, python("both involutions on the electrodynamics triple")).
claim(l06_counterexample, counterexample, proved, "Counterexample", "Electrodynamics admits both U_+ and U_-: J alone does not select 9 versus 11.").
source(l06_counterexample, 'lemmas/06_vectorlike_odd_factorization.md', '').
depends(l06_counterexample, l06_factorization).
attempted_by(l06_counterexample, astra6).
checked_by(l06_counterexample, claude_opus_5_5, python("both involutions on the electrodynamics triple")).
claim(l06_nuL, no_go, proved, "No-go", "An unpaired nu_L allows only KO-7 (formally 11); no factorization while H is in the algebra.").
source(l06_nuL, 'lemmas/06_vectorlike_odd_factorization.md', 'consequence-for-the-10---9-claim').
depends(l06_nuL, l06_factorization).
attempted_by(l06_nuL, astra6).
checked_by(l06_nuL, claude_opus_5_5, by_hand).
claim(l07_real, lemma, proved, "Lemma 1", "Real structures on the chiral interval are diag(alpha,beta)K with eps = eps'' = +1 and alpha = eps' beta (KO-0).").
source(l07_real, 'lemmas/07_interval_selects_ko.md', '').
depends(l07_real, l05_truncation).
attempted_by(l07_real, claude_opus_5_5).
checked_by(l07_real, claude_opus_5_5, by_hand).
claim(l07_reflection, lemma, proved, "Lemma 3", "The reflection sigma gives s = eps': 9 versus 11 is the choice J versus J gamma.").
source(l07_reflection, 'lemmas/07_interval_selects_ko.md', '').
depends(l07_reflection, l07_real).
depends(l07_reflection, l06_factorization).
attempted_by(l07_reflection, claude_opus_5_5).
checked_by(l07_reflection, claude_opus_5_5, by_hand).
claim(conj07_4, conjecture, open, "Conjecture 07.4", "For F_0 x (collapsing chiral interval), U = 1 x sigma has UJ = sJU with s fixed by eps' and the product grading twist; 9 versus 11 is decided by whether J_M or J_M gamma_5 is physical charge conjugation.").
source(conj07_4, 'lemmas/07_interval_selects_ko.md', '').
depends(conj07_4, l07_reflection).
depends(conj07_4, l06_factorization).
attempted_by(conj07_4, claude_opus_5_5).
claim(l09_index, theorem, proved, "Theorem 9.2, Corollary 9.3", "Index +1, -1, 0 for boundary types (a), (b), (c), independent of M and l; equivariant index [V_L]-[V_R].").
source(l09_index, 'lemmas/09_massive_chiral_interval.md', 'chirality-lives-in-the-boundary-conditions').
attempted_by(l09_index, claude_opus_5_5).
checked_by(l09_index, claude_opus_5_5, python("first-order discretization, N = 4000")).
claim(l09_lightpair, theorem, proved, "Theorems 9.4, 9.6", "Bulk mass -mu, mu l > 1: one light pair lambda_0 = mu sech(kappa_0 l) ~ 2 mu e^(-mu l); its truncation is Connes-Lott with distance 1/lambda_0.").
source(l09_lightpair, 'lemmas/09_massive_chiral_interval.md', 'spectrum-of-the-mixed-condition-with-a-bulk-mass').
depends(l09_lightpair, l05_truncation).
attempted_by(l09_lightpair, claude_opus_5_5).
checked_by(l09_lightpair, claude_opus_5_5, python("first-order discretization, N = 4000")).
claim(l09_limits, theorem, proved, "Theorems 9.8, 9.9", "l -> infinity: chiral walls and a 1D Weyl law above mu (10 -> 11); l -> 0 at fixed light mass: unique mu(l), interval collapses with the light pair kept (10 -> 9).").
source(l09_limits, 'lemmas/09_massive_chiral_interval.md', 'the-two-limits').
depends(l09_limits, l09_lightpair).
attempted_by(l09_limits, claude_opus_5_5).
checked_by(l09_limits, claude_opus_5_5, python("secular equation, collapse table")).
claim(l10_toeplitz, proposition, proved, "Proposition 10.1", "Q(x_a) = Gamma_a/5, Q(x_a)^2 = I/25, Q(x_a^2) = I/5 on CP^3.").
source(l10_toeplitz, 'lemmas/10_toeplitz_twistor.md', '').
attempted_by(l10_toeplitz, claude_opus_5_5).
checked_by(l10_toeplitz, claude_opus_5_5, python("Monte Carlo, 2e6 samples")).
claim(l11_bounds, proposition, conditional, "Proposition 11.1", "m_max/(2 sqrt 2) <= M_W <= sqrt(N_g) m_max.").
source(l11_bounds, 'lemmas/11_spectral_action_heavy_w.md', '').
depends(l11_bounds, hyp(ccm_relation)).
attempted_by(l11_bounds, claude_opus_5_5).
checked_by(l11_bounds, claude_opus_5_5, by_hand).
claim(l11_nogo, no_go, conditional, "Corollary 11.2", "The heavy-W limit with all fermion masses fixed (canonical 14.1) is impossible in the spectral-action family.").
source(l11_nogo, 'lemmas/11_spectral_action_heavy_w.md', '').
depends(l11_nogo, l11_bounds).
attempted_by(l11_nogo, claude_opus_5_5).
checked_by(l11_nogo, claude_opus_5_5, by_hand).
claim(l11_top, corollary, conditional, "Corollary 11.3", "With only the top heavy, m_t/M_W -> sqrt(8/3).").
source(l11_top, 'lemmas/11_spectral_action_heavy_w.md', '').
depends(l11_top, l11_bounds).
attempted_by(l11_top, claude_opus_5_5).
checked_by(l11_top, claude_opus_5_5, by_hand).
claim(l12_index, theorem, proved, "Theorem 12.2, Corollary 12.3", "Boundary Yukawa X: ind = N_Q - N_U for all X; zero modes all lift only for a vectorlike residual theory; without nu_R a massless nu_L is forced.").
source(l12_index, 'lemmas/12_boundary_yukawa_interval.md', 'kernel-index-and-symmetry-breaking').
depends(l12_index, l09_index).
attempted_by(l12_index, claude_opus_5_5).
checked_by(l12_index, claude_opus_5_5, by_hand).
claim(l12_secular, theorem, proved, "Theorem 12.4, Example 12.5", "Exact secular equation det(lambda^2 - A X B X^dagger) = 0; one massless flavor: (n pi +- arctan|X|)/l, interpolating from (a)+(b) to (c)+(c).").
source(l12_secular, 'lemmas/12_boundary_yukawa_interval.md', 'exact-secular-equation').
depends(l12_secular, l09_lightpair).
attempted_by(l12_secular, claude_opus_5_5).
checked_by(l12_secular, claude_opus_5_5, python("scipy solve_ivp shooting")).
claim(l12_towerless, theorem, proved, "Theorems 12.6, 12.7", "Light eigenvalues are fixed points lambda = sigma_k(A^1/2 X B^1/2) with two-sided bounds; towerless limit: D_F Yukawa block Phi_Q Y_hat Phi_U.").
source(l12_towerless, 'lemmas/12_boundary_yukawa_interval.md', 'light-spectrum-and-towerless-limit').
depends(l12_towerless, l12_secular).
attempted_by(l12_towerless, claude_opus_5_5).
checked_by(l12_towerless, claude_opus_5_5, python("secular roots, random samples")).
claim(l12_graded, lemma, proved, "Lemma 12.8, Corollary 12.9", "Graded singular values via compound matrices: masses ~ phi(c_k^Q) phi(c_k^U), exponential hierarchies.").
source(l12_graded, 'lemmas/12_boundary_yukawa_interval.md', 'hierarchies-from-localization').
attempted_by(l12_graded, claude_opus_5_5).
checked_by(l12_graded, claude_opus_5_5, python("2000 random complex 3x3 cases")).
claim(l12_mixing, claim, numerical, "Remark 12.10", "Left mixing follows doublet localization: |V_ij| ~ phi(c_i^Q)/phi(c_j^Q).").
source(l12_mixing, 'lemmas/12_boundary_yukawa_interval.md', 'hierarchies-from-localization').
depends(l12_mixing, l12_graded).
attempted_by(l12_mixing, claude_opus_5_5).
checked_by(l12_mixing, claude_opus_5_5, python("500 anarchic samples")).
attempted_by(conj07_4, astra6).  % job 07 cut off by the usage limit; job 08 queued

hypothesis(ccm_relation, "Chamseddine-Connes-Marcolli normalization at the matching scale: 8 M_W^2 = sum of N_f m_f^2 over Dirac masses.").
hypothesis(positive_rank, "The twisting bundle has positive rank, with the equivariant self-adjoint realization.").
hypothesis(heat_kernel_spectral_action, "Heat-kernel cutoff spectral action with a vectorial gauge background commuting with the mass matrix.").

%% ---------------------------------------------------------------- connes_kk_research_state.md section 8 (parsed)
claim(rs_G1, claim, proved, "proved geometrically", "The \\(7\\to6\\to5\\) orbit dimensions occur in a smooth commutative 7-manifold: proved geometrically. The product parent is non-spin.").
source(rs_G1, 'connes_kk_research_state.md', '21-a-commutative-11--10--9-pattern').
overturn(rs_G1, "A physical realization also requires a suitable twist and fields solving the equations.").
attempted_by(rs_G1, corpus).
claim(rs_G2, claim, proved, "proved", "\\(\\Lambda_{p,q}=\\mathbb Z^2+\\mathbb Z(1,q)/p\\), and primitive lattice vectors give closed circles: proved.").
source(rs_G2, 'connes_kk_research_state.md', '31-all-globally-closed-torus-circles').
overturn(rs_G2, "A different quotient action or ineffectively normalized torus requires recalculation.").
attempted_by(rs_G2, corpus).
claim(rs_G2a, claim, proved, "proved by the Hopf quotient", "\\(L(p,1)\\) is a smooth principal circle bundle over \\(\\mathbb{CP}^1\\) with Chern number \\(\\pm p\\): proved by the Hopf quotient.").
source(rs_G2a, 'connes_kk_research_state.md', '21-a-commutative-11--10--9-pattern').
overturn(rs_G2a, "A noncentral quotient or a different reduction circle requires a different bundle or an orbifold treatment.").
attempted_by(rs_G2a, corpus).
claim(rs_G3, claim, proved, "proved in the displayed KK ansatz; quadrature verified", "Berger formula and \\(p\\)-cancellation: proved in the displayed KK ansatz; quadrature verified.").
source(rs_G3, 'connes_kk_research_state.md', '32-one-precise-berger-calculation').
overturn(rs_G3, "Extra action terms, changed gauge embedding, broken \\(U(2)\\) isometry or thresholds invalidate direct physical use.").
attempted_by(rs_G3, corpus).
claim(rs_G4, claim, proved, "proved by two metrics on the same \\(L(5,1)\\)", "Quotient topology alone fixes no angle: proved by two metrics on the same \\(L(5,1)\\).").
source(rs_G4, 'connes_kk_research_state.md', '').
depends(rs_G4, rs_G2).
depends(rs_G4, rs_G3).
overturn(rs_G4, "A specified physical theory may forbid one metric; it must prove an additional selection law.").
attempted_by(rs_G4, corpus).
claim(rs_G5, claim, conditional, "conditional on a closed primitive neutral circle and exact deck–center intersection", "\\(p=5\\) gives \\(5/8\\): conditional on a closed primitive neutral circle and exact deck–center intersection, not a topology-only result.").
source(rs_G5, 'connes_kk_research_state.md', '42-a-precise-conditional-occurrence-of-p5').
depends(rs_G5, rs_G3).
overturn(rs_G5, "Allowing dense neutral flow or just deck containment removes the unique \\(p=5\\) inference.").
attempted_by(rs_G5, corpus).
claim(rs_G6, claim, conditional, "proved conditionally", "The \\(p=5\\) neutral quotient is a weighted-projective orbifold: proved conditionally.").
source(rs_G6, 'connes_kk_research_state.md', '').
depends(rs_G6, rs_G5).
overturn(rs_G6, "A different reduction circle or a different geometric quotient need not have this stabilizer.").
attempted_by(rs_G6, corpus).
claim(rs_G7, claim, proved, "proved in the chosen embedding", "At the \\(z_1=0\\) endpoint, the original \\(Q=T_3+Y\\) acts trivially tangentially and rotates the normal plane: proved in the chosen embedding.").
source(rs_G7, 'connes_kk_research_state.md', '53-the-endpoint-geometry-charge-and-spin-structure').
overturn(rs_G7, "A normal-bundle gauge field or a different geometric embedding may realize electromagnetism by another route.").
attempted_by(rs_G7, corpus).
claim(rs_G8, claim, proved, "proved", "\\(\\mathbb{CP}^2\\times S^1\\) has no ordinary spin structure, and \\(s+q\\ell\\equiv0\\bmod p\\) for the stated scalar normal modes: proved.").
source(rs_G8, 'connes_kk_research_state.md', '53-the-endpoint-geometry-charge-and-spin-structure').
overturn(rs_G8, "Spin-\\(c\\), other bundle twists and different spin lifts alter the fermionic mode rule.").
attempted_by(rs_G8, corpus).
claim(rs_G9, claim, proved, "proved geometrically", "\\(N=S(Q)\\) is spin and has the three displayed \\(S^1,S^2,S^3\\) bundle projections: proved geometrically.").
source(rs_G9, 'connes_kk_research_state.md', '23-a-spin-seven-manifold-with-flag-and-sphere-quotients').
overturn(rs_G9, "A proposed background may fail the field equations or choose incompatible flux, spin lift or metric.").
attempted_by(rs_G9, corpus).
claim(rs_G10, claim, proved, "proved", "Neither \\(F_3\\) nor \\(\\mathbb{CP}^2\\times\\mathbb{CP}^1\\) has a smooth surjective submersion to a five-manifold or a uniformly sectional-curvature-bounded collapse to a fixed smooth closed 5D target: proved.").
source(rs_G10, 'connes_kk_research_state.md', '23-a-spin-seven-manifold-with-flag-and-sphere-quotients').
overturn(rs_G10, "Singular collapse, unbounded curvature, a stratified or boundary endpoint, and other six-manifolds are outside the statement.").
attempted_by(rs_G10, corpus).
claim(rs_G11, claim, proved, "proved", "Flag and product have different integral cohomology rings and spin properties: proved.").
source(rs_G11, 'connes_kk_research_state.md', '24-projective-candidates-spin-and-the-quaternionic-hopf-bundle').
overturn(rs_G11, "Different spaces or twisted structures require a separate comparison.").
attempted_by(rs_G11, corpus).
claim(rs_G12, claim, proved, "proved", "The displayed torus/Weyl quotient is \\(\\mathbb{CP}^2\\times\\mathbb{CP}^1\\) as a complex variety: proved.").
source(rs_G12, 'connes_kk_research_state.md', '25-an-exact-torus-quotient-with-fixed-points').
overturn(rs_G12, "It is not a free quotient or a smooth flat metric quotient; another finite-group action may differ.").
attempted_by(rs_G12, corpus).
claim(rs_G13, claim, proved, "proved", "\\(S(Q)\\) and the \\(c_2=\\pm2\\) pulled-back quaternionic Hopf bundle are distinct: proved.").
source(rs_G13, 'connes_kk_research_state.md', '24-projective-candidates-spin-and-the-quaternionic-hopf-bundle').
overturn(rs_G13, "Altering either bundle changes the comparison.").
attempted_by(rs_G13, corpus).
claim(rs_E1, claim, conditional, "proved conditionally", "Spectral-action and Berger \\(5/8\\) use compatible local charge conventions: proved conditionally.").
source(rs_E1, 'connes_kk_research_state.md', '33-comparison-with-the-reported-14-and-spectral-action-58').
overturn(rs_E1, "A mismatch in represented charges, normalization, global gauge group or scale defeats physical identification.").
attempted_by(rs_E1, corpus).
claim(rs_E2, claim, not_reconstructed, "not reconstructed from the parallel transcript", "Reported flag \\(1/4\\): not reconstructed from the parallel transcript.").
source(rs_E2, 'connes_kk_research_state.md', '33-comparison-with-the-reported-14-and-spectral-action-58').
overturn(rs_E2, "The original flag embedding or kinetic matrix could give another ratio.").
attempted_by(rs_E2, corpus).
claim(rs_E3, claim, proved, "proved in that model", "Same-metric orbit model has \\(\\rho=\\xi^{-2}\\), so \\(5/8\\) and \\(\\rho=1\\) are incompatible: proved in that model.").
source(rs_E3, 'connes_kk_research_state.md', '5-the-fermi-scale-and-an-independent-mass-test').
overturn(rs_E3, "A derived extra mass sector, threshold corrections, or a different model can evade the premises.").
attempted_by(rs_E3, corpus).
claim(rs_E4, claim, proved, "proved in the single-\\(W\\) orbit model", "\\(G_F=1/(\\sqrt2\\kappa a^2)\\): proved in the single-\\(W\\) orbit model, not a geometric prediction of \\(G_F\\).").
source(rs_E4, 'connes_kk_research_state.md', '').
depends(rs_E4, rs_E3).
overturn(rs_E4, "Additional light mediators, different current normalization or a derived \\(\\kappa\\) change the inference.").
attempted_by(rs_E4, corpus).
claim(rs_E5, claim, conditional, "proved conditionally", "In the fixed-coupling \\(M_W\\to\\infty\\) limit the tree-level Fermi coefficient tends to zero; beta decay is absent if no other charged-current operator survives: proved conditionally.").
source(rs_E5, 'connes_kk_research_state.md', '51-the-9d-endpoint-and-beta-decay').
overturn(rs_E5, "Independent contact interactions, other mediators, or nonstandard simultaneous coupling scaling change the conclusion.").
attempted_by(rs_E5, corpus).
claim(rs_F1, claim, conditional, "conditional algebraic derivation", "The chosen dominant top \\(T\\) has centralizer \\(\\mathbb C\\oplus M_3(\\mathbb C)\\): conditional algebraic derivation.").
source(rs_F1, 'connes_kk_research_state.md', '72-the-reported-heavy-top-selection').
overturn(rs_F1, "A different \\(T\\), representation, color action, or degeneracy alters the centralizer.").
attempted_by(rs_F1, corpus).
claim(rs_F2, claim, proved, "proved as logical constructions", "Algebra centralization, kernel compression and lifted gauge stabilization are distinct: proved as logical constructions.").
source(rs_F2, 'connes_kk_research_state.md', '72-the-reported-heavy-top-selection').
overturn(rs_F2, "Equivalence in any specific model requires a separate explicit isomorphism.").
attempted_by(rs_F2, corpus).
claim(rs_F3, claim, reference, "standard result", "A single 9D Majorana scalar bilinear vanishes, while paired real fields and complex Dirac fields can have mass: standard result.").
source(rs_F3, 'connes_kk_research_state.md', '52-massive-9d-spinors-and-4d-dirac-masses').
overturn(rs_F3, "A non-scalar background coupling, broken 9D symmetry, different gauge module or 4D effective mass is a different question.").
attempted_by(rs_F3, corpus).
claim(rs_F4, claim, proved, "proved in the elementary electroweak model", "At fixed \\(g_2\\), the usual \\(v\\to\\infty\\) weak limit keeps \\(m_f\\ne0\\) only with \\(y_f\\sim1/v\\): proved in the elementary electroweak model.").
source(rs_F4, 'connes_kk_research_state.md', '55-a-second-endpoint-s5-and-the-correlated-weak-limit').
overturn(rs_F4, "Independent mass generation or other mediators change the conclusion.").
attempted_by(rs_F4, corpus).
claim(rs_N1, claim, proved, "proved; finite-matrix checked", "The compressed operator system has complex dimension \\(12\\), while the generated algebra is the stated three matrix blocks of dimension \\(14\\): proved; finite-matrix checked.").
source(rs_N1, 'connes_kk_research_state.md', '62-an-exact-1oplus2oplus3-construction').
overturn(rs_N1, "A different bundle, projection or demand that compression itself be a homomorphism changes the claim.").
attempted_by(rs_N1, corpus).
claim(rs_N1a, claim, proved, "proved; finite-matrix checked", "At \\(p=5\\), the degree-one projective doublet is not an untwisted scalar Hopf mode; the first positive compatible degree gives a six-dimensional holomorphic sector: proved; finite-matrix checked.").
source(rs_N1a, 'connes_kk_research_state.md', '62-an-exact-1oplus2oplus3-construction').
depends(rs_N1a, rs_G2a).
overturn(rs_N1a, "A flat deck-character twist, different field bundle or another spectral sector changes the selection rule.").
attempted_by(rs_N1a, corpus).
claim(rs_N1b, claim, proved, "proved within the two displayed constructions", "At fixed projective base and bundle, changing the Hopf radius varies the Berger angle while leaving that base zero-mode algebra fixed: proved within the two displayed constructions.").
source(rs_N1b, 'connes_kk_research_state.md', '62-an-exact-1oplus2oplus3-construction').
depends(rs_N1b, rs_G2a).
depends(rs_N1b, rs_G3).
overturn(rs_N1b, "A physical full-operator spectral threshold can change the retained sector and requires separate analysis.").
attempted_by(rs_N1b, corpus).
claim(rs_N2, claim, proved, "proved", "This zero-mode model has no inherited KO-6 structure or Dirac one-forms; no symmetric cutoff of the same index-\\(6\\) operator can supply an anti-commuting \\(J\\) for the inherited grading: proved.").
source(rs_N2, 'connes_kk_research_state.md', '63-the-zero-mode-obstruction-and-the-higher-mode-obstruction').
depends(rs_N2, rs_N1).
overturn(rs_N2, "An opposite-index sector, different graded correspondence, or a changed representation escapes the hypotheses.").
attempted_by(rs_N2, corpus).
claim(rs_N3, claim, proved, "proved", "Higher modes of the same diagonal background cannot generate cross-bundle one-forms: proved.").
source(rs_N3, 'connes_kk_research_state.md', '63-the-zero-mode-obstruction-and-the-higher-mode-obstruction').
depends(rs_N3, rs_N1).
depends(rs_N3, rs_N2).
overturn(rs_N3, "A derived operator that mixes the bundle summands or a different correspondence evades the hypothesis.").
attempted_by(rs_N3, corpus).
claim(rs_N4, claim, conditional, "proved conditionally", "Naively inherited \\(J\\) fails order-zero for noncommuting compressions: proved conditionally.").
source(rs_N4, 'connes_kk_research_state.md', '63-the-zero-mode-obstruction-and-the-higher-mode-obstruction').
overturn(rs_N4, "A different bimodule/real structure, or absence of a parent \\(J\\), escapes the lemma.").
attempted_by(rs_N4, corpus).
claim(rs_N5, claim, numerical, "explicit finite-matrix calculation", "A doubled \\(\\mathbb C\\oplus\\mathbb H\\) toy model has KO-6 signs, order-zero, first-order and nonzero one-forms, but fails finite orientability: explicit finite-matrix calculation.").
source(rs_N5, 'connes_kk_research_state.md', '64-continuing-the-obstruction-test-a-finite-repair-and-orientability').
overturn(rs_N5, "A different representation may satisfy orientability; it would still need a controlled geometric derivation.").
checked_by(rs_N5, corpus, not_recorded("explicit finite-matrix calculation")).
attempted_by(rs_N5, corpus).
claim(rs_N6, claim, numerical, "explicit finite-matrix calculation", "An 18-dimensional bimodule over \\(\\mathbb C\\oplus\\mathbb H\\oplus M_3(\\mathbb C)\\) satisfies KO-6 signs, order-zero, first-order, orientability and nonzero one-forms; the intersection pairing has rank \\(2\\): explicit finite-matrix calculation.").
source(rs_N6, 'connes_kk_research_state.md', '65-an-orientable-real-bimodule-from-the-1oplus2oplus3-spaces').
overturn(rs_N6, "A different bimodule can alter the pairing entries, but the odd-rank obstruction N7 persists; a KK derivation and gauge lift remain unproved.").
checked_by(rs_N6, corpus, not_recorded("explicit finite-matrix calculation")).
attempted_by(rs_N6, corpus).
claim(rs_N7, claim, proved, "proved under the trace-pairing definition", "The ordinary finite intersection form for a real KO-6 bimodule over the three-summand \\(A_F\\) is skew and hence singular: proved under the trace-pairing definition.").
source(rs_N7, 'connes_kk_research_state.md', '65-an-orientable-real-bimodule-from-the-1oplus2oplus3-spaces').
overturn(rs_N7, "A different real Kasparov duality or multi-class construction is not decided by this matrix.").
attempted_by(rs_N7, corpus).
claim(rs_N8, claim, numerical, "explicit 32D finite-matrix model", "An orientable four-summand parent can reduce to a nonorientable, faithful three-summand finite triple with nonzero one-forms, while preserving first-order throughout: explicit 32D finite-matrix model.").
source(rs_N8, 'connes_kk_research_state.md', '66-orientation-loss-under-a-heavy-centralizer-and-spectral-projection').
overturn(rs_N8, "Projection alone preserves orientability and makes the two scalar states infinitely distant; the algebra restriction and the geometric justification remain independent requirements.").
checked_by(rs_N8, corpus, not_recorded("explicit 32D finite-matrix model")).
attempted_by(rs_N8, corpus).
claim(rs_N9, claim, proved, "proved", "A nonzero grading-odd bimodule-linear finite mass forbids the usual finite orientability cycle: proved, with the published QED triple as a concrete example.").
source(rs_N9, 'connes_kk_research_state.md', '54-direct-link-between-a-central-dirac-mass-and-finite-orientability').
overturn(rs_N9, "Mere gauge invariance or the absence of a propagating Higgs is weaker and does not entail the result.").
attempted_by(rs_N9, corpus).
claim(rs_N10, claim, numerical, "explicit matrix calculation", "A relative \\(U(1)\\) can act through the real lift while the inner automorphism group is trivial: explicit matrix calculation.").
source(rs_N10, 'connes_kk_research_state.md', '68-gauge-symmetry-on-each-side').
overturn(rs_N10, "A different \\(J\\) or representation changes the kernel and gauge lift.").
checked_by(rs_N10, corpus, not_recorded("explicit matrix calculation")).
attempted_by(rs_N10, corpus).
claim(rs_N11, claim, proved, "proved and numerically checked", "Round-sphere rotations become inner automorphisms of the compressed \\(M_2\\) algebra: proved and numerically checked.").
source(rs_N11, 'connes_kk_research_state.md', '69-an-isometry-becoming-inner-after-compression').
overturn(rs_N11, "Other projections or backgrounds can break equivariance or alter the resulting algebra.").
attempted_by(rs_N11, corpus).
claim(rs_N12, claim, proved, "proved under the bounded-perturbation assumptions", "A gapped Dirac family has a finite low-energy sector with the stated \\(O(R)\\) Feshbach correction: proved under the bounded-perturbation assumptions.").
source(rs_N12, 'connes_kk_research_state.md', '610-what-towerless-can-mean').
overturn(rs_N12, "Missing zero modes, closing gap, or unbounded \\(R\\)-dependent couplings require a new estimate.").
attempted_by(rs_N12, corpus).
claim(rs_N13, claim, proved, "proved under the displayed assumptions", "The standard connected metric collapse selects asymptotically constant bounded-Lipschitz scalar functions; the simple \\((M_2,\\mathbb C^2,0)\\) projection does not reproduce the collapsing spectral metric: proved under the displayed assumptions.").
source(rs_N13, 'connes_kk_research_state.md', '610-what-towerless-can-mean').
depends(rs_N13, rs_N11).
depends(rs_N13, rs_N12).
overturn(rs_N13, "Different rescaling, correspondence, spectral data, or an explicitly derived finite geometry are separate possibilities.").
attempted_by(rs_N13, corpus).
claim(rs_N14, claim, proved, "proved as a logical limitation", "Isometry–inner group agreement produces neither the Standard Model finite triple nor coupling matching by itself: proved as a logical limitation.").
source(rs_N14, 'connes_kk_research_state.md', '68-gauge-symmetry-on-each-side').
overturn(rs_N14, "An explicit model satisfying the missing geometric and representation data would establish more, not contradict this limitation.").
attempted_by(rs_N14, corpus).
claim(rs_N15, claim, proved, "proved", "The flag-fiber kernels are \\(1,Q^*,\\operatorname{Sym}^2Q^*\\); they define a nonconstant matrix algebra bundle and a nonconstant quaternion algebra bundle: proved.").
source(rs_N15, 'connes_kk_research_state.md', '611-flag-fiber-zero-modes-and-a-quaternion-algebra-bundle').
overturn(rs_N15, "Other twists or a different projection change the bundles; a derived bimodule and KO-6 structure remain separate.").
attempted_by(rs_N15, corpus).
claim(rs_N16, claim, proved, "proved under the stated \\(SU(2)\\)-compatible twist", "The \\(N\\to S^5\\) degree-two fiber kernel is a quaternionic line with nonzero reduced \\(KSp\\) class, and the corresponding twisted base Dirac kernel has odd parity: proved under the stated \\(SU(2)\\)-compatible twist. The homogeneous singlet is neutral under the specified real Hopf lift.").
source(rs_N16, 'connes_kk_research_state.md', '612-the-s5-reduction-and-a-protected-real-index-mode').
overturn(rs_N16, "A connection breaking quaternionic compatibility, a different circle lift, conjugate-sector mixing or a different background changes the applicable operator.").
attempted_by(rs_N16, corpus).
claim(rs_N17, claim, proved, "proved under the stated spectral assumptions", "The associated connection-metric family has a twisted 7D eigenvalue within \\(C\\varepsilon\\) of zero; the \\(SU(3)\\)-homogeneous subfamily has an exact zero for every \\(\\varepsilon>0\\): proved under the stated spectral assumptions.").
source(rs_N17, 'connes_kk_research_state.md', '612-the-s5-reduction-and-a-protected-real-index-mode').
depends(rs_N17, rs_N16).
overturn(rs_N17, "Different background terms or the pulled-back Fubini–Study connection change the effective operator; no 11D solution is implied.").
attempted_by(rs_N17, corpus).
claim(rs_N18, claim, proved, "proved; exact finite-matrix checked", "The stated torus crossed product has a finite quotient \\(\\mathbb C\\oplus M_2\\oplus M_3\\): proved; exact finite-matrix checked.").
source(rs_N18, 'connes_kk_research_state.md', '613-torus-crossed-product-finite-quotient-versus-mode-compression').
overturn(rs_N18, "Another group action, a required real structure or an actual spectral cutoff demands additional work.").
attempted_by(rs_N18, corpus).
claim(rs_N19, claim, proved, "proved", "A nonzero finite-rank compression of all scalar multipliers on a nonatomic space cannot be multiplicative: proved.").
source(rs_N19, 'connes_kk_research_state.md', '613-torus-crossed-product-finite-quotient-versus-mode-compression').
overturn(rs_N19, "Atomic measures, approximate or nonmultiplicative compression, and abstract quotient representations are outside the statement.").
attempted_by(rs_N19, corpus).
claim(rs_N20, claim, proved, "proved", "The torus Weyl action has no honest equivariant ordinary spin lift at the transposition fixed point: proved.").
source(rs_N20, 'connes_kk_research_state.md', '613-torus-crossed-product-finite-quotient-versus-mode-compression').
overturn(rs_N20, "A spin-\\(c\\), projective or internally twisted action is a different construction.").
attempted_by(rs_N20, corpus).
claim(rs_N21, claim, conditional, "proved conditionally", "The natural connection-Laplacian zero-mode algebra of the displayed flag or \\(S^5\\) endomorphism bundles is \\(\\mathbb C^3\\): proved conditionally.").
source(rs_N21, 'connes_kk_research_state.md', '611-flag-fiber-zero-modes-and-a-quaternion-algebra-bundle').
overturn(rs_N21, "Other operators, background couplings, gauge-isometry modes or unrelated connections can change the massless spectrum.").
attempted_by(rs_N21, corpus).
claim(rs_K1, claim, proved, "proved", "The specified six-dimensional function algebra and \\(A_F\\) are not directly KK-equivalent: proved.").
source(rs_K1, 'connes_kk_research_state.md', '71-the-k-theory-obstruction-has-a-precise-scope').
overturn(rs_K1, "Changing the comparison algebra or asking only for a noninvertible correspondence avoids the conclusion.").
attempted_by(rs_K1, corpus).
claim(rs_K2, claim, conditional, "conditional illustration, without a construction for this model", "A KO-6 factor can survive a metric collapse in principle: conditional illustration, without a construction for this model.").
source(rs_K2, 'connes_kk_research_state.md', '22-metric-dimension-chirality-and-ko-dimension').
overturn(rs_K2, "Failure of a vertical zero mode or inability to define the required real structure in the chosen family.").
attempted_by(rs_K2, corpus).
claim(rs_K3, claim, proved, "proved", "Product and flag are complex \\(KK\\)-equivalent but the standard real forms are not \\(KKO\\)-equivalent: proved.").
source(rs_K3, 'connes_kk_research_state.md', '71-the-k-theory-obstruction-has-a-precise-scope').
overturn(rs_K3, "Different real structures, noninvertible cycles or dropping the requirement of an invertible equivalence are separate questions.").
attempted_by(rs_K3, corpus).
claim(rs_K4, claim, proved, "proved by the spin-submersion theorem", "The \\(N\\to S^5\\) twisted Dirac operator factors through the vertical family in complex Kasparov theory: proved by the spin-submersion theorem.").
source(rs_K4, 'connes_kk_research_state.md', '612-the-s5-reduction-and-a-protected-real-index-mode').
overturn(rs_K4, "The factorization does not imply an equivalence to \\(A_F\\), a finite KO-6 triple, or a dynamical solution.").
attempted_by(rs_K4, corpus).
claim(rs_D1, claim, open, "open", "A common stabilized geometry fixes both \\(5/8\\) and \\(G_F\\) without unrelated tunings: open.").
source(rs_D1, 'connes_kk_research_state.md', '').
depends(rs_D1, rs_E1).
depends(rs_D1, rs_E3).
depends(rs_D1, rs_E4).
depends(rs_D1, rs_G3).
overturn(rs_D1, "Any candidate is falsified if the solutions retain free shape/scale moduli or fail the mass and coupling relations.").
attempted_by(rs_D1, corpus).
%% ---------------------------------------------------------------- canonical_research.md status labels (parsed)
claim(paper_1_1, claim, proved, "Proved distinction.", "Its product KO-degree is $4+6=10$ modulo eight. This does not assert ten ordinary metric dimensions [19].").
source(paper_1_1, 'canonical_research.md', '1-what-the-numbers-9-10-and-11-mean').
attempted_by(paper_1_1, corpus).
claim(paper_2_1_1, claim, example, "Example", "(proved: the spectrum is derived in `research_limits/research_note.md` §2; checked numerically in Python, research_checks_knowledge.md §1.1-1.2). A doubled matrix approximation to a two-sphere, with matrix size $N$ and").
source(paper_2_1_1, 'canonical_research.md', '21-heat-dimension-and-the-order-of-limits').
attempted_by(paper_2_1_1, corpus).
checked_by(paper_2_1_1, corpus, python("see research_checks_knowledge.md")).
claim(paper_2_2_1, claim, proved, "Proved.", "This has an embedded norm-resolvent limit on the light space, with finite operator $PSP$. Bounded light-heavy mixing is allowed. Finite-dimensional perturbation gives a unitary $1+O(t^{-1})$ identifying the low spectral").
source(paper_2_2_1, 'canonical_research.md', '22-heavy-finite-operators').
attempted_by(paper_2_2_1, corpus).
claim(paper_3_1, claim, proved, "Proved; checked numerically in Python", "(research_checks_knowledge.md §2). Its algebra commutant requires").
source(paper_3_1, 'canonical_research.md', '3-the-finite-algebra-chain-and-the-electron').
attempted_by(paper_3_1, corpus).
checked_by(paper_3_1, corpus, python("see research_checks_knowledge.md")).
claim(paper_4_1, claim, proved, "Proved", "in `research_limits/research_note.md` §4; checked numerically in Python (research_checks_knowledge.md §1.5). Compressed real base functions generate $M_2(\\mathbb H)$; real functions on the total projective space generat").
source(paper_4_1, 'canonical_research.md', '4-the-six-dimensional-twistor-geometry-and-the-higgs').
attempted_by(paper_4_1, corpus).
checked_by(paper_4_1, corpus, python("see research_checks_knowledge.md")).
claim(paper_5_1, claim, proved, "Proved:", "At $(\\mathbb Ce_1,e_2)$, its SU(3) stabilizer is $\\operatorname{diag}(e^{it},1,e^{-it})$. Permuting coordinates identifies this with the (1,-1,0) convention for the Aloff-Wallach space.").
source(paper_5_1, 'canonical_research.md', '5-seven-dimensions-the-exact-fibrations').
attempted_by(paper_5_1, corpus).
claim(paper_5_2, claim, proved, "Proved (table row)", "| $N\\to\\mathbb{CP}^2_{\\ell}$ | $S^3$ | Forget u | Proved |").
source(paper_5_2, 'canonical_research.md', '5-seven-dimensions-the-exact-fibrations').
attempted_by(paper_5_2, corpus).
claim(paper_5_3, claim, proved, "Proved (table row)", "| $N\\to F=SU(3)/T^2$ | $S^1$ | Send $(\\ell,u)$ to $(\\ell,\\mathbb Cu)$ | Proved |").
source(paper_5_3, 'canonical_research.md', '5-seven-dimensions-the-exact-fibrations').
attempted_by(paper_5_3, corpus).
claim(paper_5_4, claim, proved, "Proved (table row)", "| $N\\to S^5=SU(3)/SU(2)$ | $S^2$ | Send $(\\ell,u)$ to $u$ | Proved |").
source(paper_5_4, 'canonical_research.md', '5-seven-dimensions-the-exact-fibrations').
attempted_by(paper_5_4, corpus).
claim(paper_5_5, claim, proved, "Proved", "gives $w_2(N)=p^*(3h+h)=0$ modulo two. Thus N is spin and simply connected. Its integral cohomology is Z in degrees 0,2,5,7 and zero otherwise; in particular $H^4(N;\\mathbb Z)=0$. , using the $S^3$-sphere-bundle Gysin se").
source(paper_5_5, 'canonical_research.md', '5-seven-dimensions-the-exact-fibrations').
attempted_by(paper_5_5, corpus).
claim(paper_5_6, claim, proved, "Proved as quotient geometry.", "L has three fixed $\\mathbb{CP}^1$ strata; its central $\\mathbb Z_3$ kernel on F must be removed for an effective action. The induced metric on Y is singular. The residual connected symmetry inherited from this quotient").
source(paper_5_6, 'canonical_research.md', 'a-genuine-sequential-orbit-space-chain-also-exists').
attempted_by(paper_5_6, corpus).
claim(paper_5_7, claim, conditional, "Conditional:", "The second step can use the spectral family $D_\\tau=D_F+\\tau\\Gamma_F L$, on an equivariant bundle with an effective projectable lift. Its square is $D_F^2+\\tau^2L^2$, so nonzero circle momentum is suppressed with resolve").
source(paper_5_7, 'canonical_research.md', 'a-genuine-sequential-orbit-space-chain-also-exists').
attempted_by(paper_5_7, corpus).
claim(paper_6_1, claim, proved, "Proved (table row)", "| Integral ring | $\\mathbb Z[h,y]/(h^3,y^2)$ | $\\mathbb Z[h,x]/(h^3,x^2+hx+h^2)$ | Proved |").
source(paper_6_1, 'canonical_research.md', '6-keep-the-product-and-flag-candidates-separate').
attempted_by(paper_6_1, corpus).
claim(paper_6_2, claim, proved, "Proved (table row)", "| Betti numbers in degrees 0,2,4,6 | 1,2,2,1 | 1,2,2,1 | Proved |").
source(paper_6_2, 'canonical_research.md', '6-keep-the-product-and-flag-candidates-separate').
attempted_by(paper_6_2, corpus).
claim(paper_6_3, claim, proved, "Proved (table row)", "| $c_1$ for the indicated complex structure | $3h+2y$ | $4h+2x$ | Proved (below) |").
source(paper_6_3, 'canonical_research.md', '6-keep-the-product-and-flag-candidates-separate').
attempted_by(paper_6_3, corpus).
claim(paper_6_4, claim, proved, "Proved (table row)", "| $w_2$ | h mod 2 | 0 | Proved |").
source(paper_6_4, 'canonical_research.md', '6-keep-the-product-and-flag-candidates-separate').
attempted_by(paper_6_4, corpus).
claim(paper_6_5, claim, proved, "Proved (table row)", "| $p_1$ | $3h^2$ | 0 | Proved (below) |").
source(paper_6_5, 'canonical_research.md', '6-keep-the-product-and-flag-candidates-separate').
attempted_by(paper_6_5, corpus).
claim(paper_6_6, claim, conditional, "Proved/conditional as indicated.", "One spin distinction matters: the vertical tangent of F→$\\mathbb{CP}^2$ has $c_1=h+2x$ and is not spin by itself. Its $w_2$ cancels the base $w_2$ in the total flag. A family of ordinary fibre spin bundles cannot be assu").
source(paper_6_6, 'canonical_research.md', '6-keep-the-product-and-flag-candidates-separate').
attempted_by(paper_6_6, corpus).
claim(paper_7_1, claim, proved, "Proved.", "There is a further distinction: Its vertical principal-bundle tangent is trivial, so $TP\\simeq q_P^*T\\mathbb{CP}^2\\oplus\\mathbb R^3$ and $w_2(P)=q_P^*h\\ne0$. The $S^3$-fibre sequence makes $q_P^*$ injective in degree tw").
source(paper_7_1, 'canonical_research.md', '7-three-sphere-bundles-and-the-circle-endpoints').
attempted_by(paper_7_1, corpus).
claim(paper_7_2, claim, proved, "Proved.", "Principal circle bundles $P_k$ over $\\mathbb{CP}^2$ have Euler/Chern class k h. Their total spaces are $\\mathbb{CP}^2$×$S^1$ for k=0, $S^5$ for |k|=1, and $S^5/\\mathbb Z_{|k|}$ for |k|>1, up to orientation conventions. S").
source(paper_7_2, 'canonical_research.md', '7-three-sphere-bundles-and-the-circle-endpoints').
attempted_by(paper_7_2, corpus).
claim(paper_8_1, claim, proved, "Proved", "with multiplicity n+2p per sign. The vertical gap is therefore uniform and grows as $\\epsilon^{-1}$. by the $\\mathbb{CP}^1$ spin/Dolbeault identification and the angular-momentum spectrum.").
source(paper_8_1, 'canonical_research.md', '8-the-decisive-monopole-collapse').
attempted_by(paper_8_1, corpus).
claim(paper_8_2, claim, proved, "Proved outcome:", "the flux choice (1,2,3) gives a positive-chirality kernel of rank six with").
source(paper_8_2, 'canonical_research.md', 'the-induced-connection-is-decisive').
attempted_by(paper_8_2, corpus).
claim(paper_8_3, claim, proved, "Proved", "Charge conjugation reverses flux and chirality. On W plus its conjugate, merely choosing a conjugate exchange with $J^2=+1$ or $-1$ changes the real commutant. The finite check gives unitary commutant Lie dimension three").
source(paper_8_3, 'canonical_research.md', 'real-structures-cannot-be-inferred-from-pseudoreality').
attempted_by(paper_8_3, corpus).
checked_by(paper_8_3, corpus, python("see research_checks_knowledge.md")).
claim(paper_9_1, claim, proved, "Proved existence of an engineered connection:", "the fibrewise Toeplitz map from horizontal $\\operatorname{End}(V)$-valued symbols onto $\\operatorname{End}(K)$ is surjective. Constant symbols on the two L copies supply $M_2(\\mathbb C)$, scalar symbols on $L^2$ give $\\").
source(paper_9_1, 'canonical_research.md', '9-constructing-a-surviving-spinor-bundle').
attempted_by(paper_9_1, corpus).
claim(paper_9_2, claim, conditional, "Conditional", "on the analytic connection and spin-lift formulas (the phase arithmetic is checked in Python, research_checks_knowledge.md §4.7): for the specified connection and spin lifts, all three coefficient lines retain a circle").
source(paper_9_2, 'canonical_research.md', 'a-concrete-wilson-line-compatibility-test').
attempted_by(paper_9_2, corpus).
checked_by(paper_9_2, corpus, python("see research_checks_knowledge.md")).
claim(paper_9_3, claim, conditional, "Conditional application:", "The homogeneous connection transports the vertical operator by fibre isometries. Adding the specified horizontal multiplication operators changes $\\{A,B\\}$ by a bounded vertical commutator. These are the required compati").
source(paper_9_3, 'canonical_research.md', 'the-analytic-limit-and-its-scope').
attempted_by(paper_9_3, corpus).
claim(paper_10_1, claim, proved, "Proved", ", with primary general context in [6]. These are smooth complex quotient varieties, with branched quotient maps and singular quotient metrics. The isotropy stack and crossed product retain extra information. The equality").
source(paper_10_1, 'canonical_research.md', '10-torusweyl-quotients-and-what-the-spin-lift-changes').
attempted_by(paper_10_1, corpus).
claim(paper_10_2, claim, numerical, "Numerical check in Python", "The Frobenius-Schur indicators are zero for the conjugate one-dimensional characters and minus one for the doublet. Explicit six-dimensional Clifford matrices verify the representation and its faithfulness on a chiral sp").
source(paper_10_2, 'canonical_research.md', 'a-real-algebra-improvement').
attempted_by(paper_10_2, corpus).
checked_by(paper_10_2, corpus, python("see research_checks_knowledge.md")).
claim(paper_10_3, claim, proved, "Proved", "is a corner of a finite-orbit quotient of the spin-twisted real crossed product. algebraic statement; checked numerically in Python (research_checks_knowledge.md §4.4). It is not a result about the original untwisted co").
source(paper_10_3, 'canonical_research.md', 'a-real-algebra-improvement').
attempted_by(paper_10_3, corpus).
checked_by(paper_10_3, corpus, python("see research_checks_knowledge.md")).
claim(paper_11_1_1, claim, proved, "Proved obstruction.", "This follows by integrating $e^{kh}(1-h^2/6)$ over $\\mathbb{CP}^3$. The spin Dirac operator twisted by $\\mathcal O(3)$, which equals the Dolbeault operator on $\\mathcal O(1)$ because $S=\\Lambda^{0,*}\\otimes\\mathcal O(-2)").
source(paper_11_1_1, 'canonical_research.md', '111-a-genuine-change-of-ko-degree').
attempted_by(paper_11_1_1, corpus).
claim(paper_12_1, claim, proved, "Proved operator limit:", "With $P_0$ projecting onto $\\ker L$, the heavy resolvent is bounded by $(1+\\tau^2)^{-1/2}$. only circle-invariant modes survive. Uniformly bounded commutators retain invariant scalar functions.").
source(paper_12_1, 'canonical_research.md', '12-a-controlled-six-to-five-operator-limit').
attempted_by(paper_12_1, corpus).
claim(paper_13_1_1, claim, conditional, "Conditional normalization", "(derived analytically in `research_limits/nine_dimensional_construction.md` from the sphere averages $\\langle z^*T^2z\\rangle=1/6$ and $\\langle(z^*Tz)^2\\rangle=1/24$; no script computes it; §13.2 uses a different charge").
source(paper_13_1_1, 'canonical_research.md', '131-one-electron-from-a-specified-character').
attempted_by(paper_13_1_1, corpus).
claim(paper_14_3_1, claim, proved, "Proved", "The lens order $p$ cancels in the common volume factor. The value $5/8$ requires $\\xi^2=5/2$; the unsourced Einstein condition selects the round $\\xi=1$, giving $1/2$. Topology can constrain a charge lattice, but it does").
source(paper_14_3_1, 'canonical_research.md', '143-the-angle-test').
attempted_by(paper_14_3_1, corpus).
checked_by(paper_14_3_1, corpus, python("see research_checks_knowledge.md")).
%% ---------------------------------------------------------------- STRATEGY.md
strategy(t1, settled, "Deconstruction: Connes-Lott is the minimal truncation of the chiral interval.").
strategy(t2, settled, "KO parity: grading-reversing involution U with UJ = sJU; s = -1 gives 9, s = +1 gives 11; J alone does not decide.").
strategy(t2b, partial, "Geometric selection of the sign s by the interval.").
strategy(t3, settled, "Chirality from boundary conditions; the boundary Yukawa interpolates (a)+(b) to (c)+(c) at constant index.").
strategy(t4, open, "Gauge sector of the towerless interval versus Connes-Lott inner fluctuations.").
strategy(t5, settled, "Heavy W forces a heavy Dirac fermion (conditional on the CCM relation).").
strategy(t6, open, "Metric-compatible towerless limits (operator-system truncations).").
strategy(t7, open, "Towerless S^2, CP^2 to H, M_3(C) with the right real structure.").
strategy(t8, partial, "Fermion masses as internal momenta: towerless Yukawa textures; mixing pattern numerical only.").
addresses(t1, l05_truncation).  addresses(t1, l05_limits).
addresses(t2, l06_factorization).  addresses(t2, l06_counterexample).  addresses(t2, l06_nuL).
addresses(t2b, l07_reflection).  addresses(t2b, conj07_4).
addresses(t3, l09_index).  addresses(t3, l09_lightpair).  addresses(t3, l09_limits).  addresses(t3, l12_index).  addresses(t3, l12_secular).
addresses(t5, l11_bounds).  addresses(t5, l11_nogo).  addresses(t5, l11_top).
addresses(t7, l02_invariant).
addresses(t8, l12_towerless).  addresses(t8, l12_graded).  addresses(t8, l12_mixing).

%% ---------------------------------------------------------------- DUPLICATES.md section 5
contradiction(1, "canonical 11.1", "CP^3 index statement named the Kahler operator twisted by O(3)", "corrected: spin Dirac twisted by O(3) = Dolbeault on O(1)", resolved).
contradiction(2, "canonical 13.1", "e^2/g_3^2 labelled checked; no script computes it", "relabelled Conditional; 8 eta^2 and 32 eta^2 belong to two charge generators", resolved).
contradiction(3, "canonical 4", "Toeplitz identities labelled checked; no script computes them", "proved in lemma 10", resolved).
contradiction(4, "research_note 5, 8", "labels older than the paper", "listed in the appendix header", resolved).
contradiction(5, "canonical 13.1", "V undefined", "defined as Vol(S^5, g_eta)", resolved).
contradiction(6, "research_state 6.12", "O(eps) quasimode derived from compressions alone", "kernel-preservation argument added", resolved).
contradiction(7, "research_state 2.3", "stabilizer given without base point", "base points named", resolved).
contradiction(8, "canonical 14.3 vs research_state 3.2, 4.2", "Berger angle: Checked calculation versus Proved; p = 5 -> 5/8 unconditional versus conditional", "paper relabelled Proved with the derivation in research_state 3.2", resolved).
contradiction(9, "canonical 8 vs research_state 6.12", "no parity restriction on n versus odd index only for |n| = 2 mod 4", "different operators; both hold", compatible).
contradiction(10, "canonical 2.2 and 3", "alpha used for two quantities; staircase b/a = 0.02 versus 0.01", "notation only", open).

%% ---------------------------------------------------------------- rules
:- table rests_on/2.
rests_on(C, D) :- depends(C, D).
rests_on(C, D) :- depends(C, E), rests_on(E, D).

%% falls_if_false(+Dep, -Claim): Claim rests (transitively) on Dep.
falls_if_false(Dep, C) :- rests_on(C, Dep).

%% numerical_only(-C): no proof, only a numerical check.
numerical_only(C) :- claim(C, _, numerical, _, _).

%% language_not_recorded(-C): a computation whose language/tool the source does not name.
language_not_recorded(C) :- checked_by(C, _, not_recorded(_)).

%% self_checked_only(-C): every recorded checker is also an author of the claim.
self_checked_only(C) :-
    claim(C, _, S, _, _), memberchk(S, [proved, conditional]),
    findall(A, checked_by(C, A, _), Cs), Cs \== [],
    forall(member(A, Cs), attempted_by(C, A)).

%% unchecked(-C): proved or conditional, with no recorded checker (corpus claims included).
unchecked(C) :- claim(C, _, S, _, _), memberchk(S, [proved, conditional]), \+ checked_by(C, _, _).

%% open_items(-X): conjectures, open claims, open strategy items and open contradictions.
open_items(claim(C)) :- claim(C, _, S, _, _), memberchk(S, [open, conjectural]).
open_items(strategy(T)) :- strategy(T, S, _), S \== settled.
open_items(contradiction(N)) :- contradiction(N, _, _, _, open).

where(C) :- source(C, F, A), (A == '' -> format("~w~n", [F]) ; format("~w#~w~n", [F, A])).
show(C) :- claim(C, K, S, L, T), format("~w  [~w, ~w: ~w]~n  ~w~n", [C, K, S, L, T]), where(C).

%% ---------------------------------------------------------------- consistency tests
:- begin_tests(ledger).
test(every_claim_has_a_source, [nondet]) :- forall(claim(C, _, _, _, _), source(C, _, _)).
test(sources_exist) :- forall(source(_, F, _), exists_file(F)).
test(dependencies_resolve) :- forall(depends(_, D), (D = hyp(H) -> hypothesis(H, _) ; claim(D, _, _, _, _))).
test(no_circular_dependency) :- \+ rests_on(C, C).
test(addresses_resolve) :- forall(addresses(T, C), (strategy(T, _, _), claim(C, _, _, _, _))).
:- end_tests(ledger).

