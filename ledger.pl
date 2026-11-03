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
%% refuted_by(Claim, Counterexample)
%% prior_work(Claim, Verdict, Reference)   Verdict: known | partial | not_found  (from LITERATURE.md)
%% claim_amended(Claim, By): Claim stands, with an amendment proved in By

:- discontiguous refuted_by/2.
:- discontiguous prior_work/3.
:- discontiguous claim/5, source/3, depends/2, hypothesis/2, attempted_by/2, checked_by/3, overturn/2, addresses/2, strategy/3.
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
claim(l06_nuL, no_go, proved, "No-go", "The strict light spectrum of the Standard Model representation with one or three unpaired nu_L and no Majorana term admits only the KO-7 factorization (odd multiplicity in the neutral criterion); no factorization while H is in the algebra. A statement about that finite triple, not about a parent manifold.").
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
claim(conj07_4, conjecture, refuted, "Conjecture 07.4 (false as stated)", "For F_0 x (collapsing chiral interval), U = 1 x sigma has UJ = sJU with s fixed by eps' and the product grading twist; 9 versus 11 is decided by whether J_M or J_M gamma_5 is physical charge conjugation.").
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
claim(l11_nogo, no_go, conditional, "Corollary 11.2", "The heavy-W limit with all fermion masses fixed (canonical 14.1) is impossible in the spectral-action family; M_W -> infinity forces m_max -> infinity.").
source(l11_nogo, 'lemmas/11_spectral_action_heavy_w.md', '').
depends(l11_nogo, l11_bounds).
attempted_by(l11_nogo, claude_opus_5_5).
checked_by(l11_nogo, claude_opus_5_5, by_hand).
claim(l11_top, corollary, conditional, "Corollary 11.3", "If the top is the only diverging Dirac mass (a hypothesis), m_t/M_W -> sqrt(8/3).").
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
attempted_by(conj07_4, astra6).  % job 07 cut off by the usage limit; job 08 answered it
refuted_by(conj07_4, l08_both_signs).

%% ---------------------------------------------------------------- lemma 08 (Astra job 08)
claim(l08_ce_reality, counterexample, proved, "Counterexample 4", "Without pointwise reality, J_ref = sigma_1 R_l K has KO-6 signs on the chiral interval; the compressed two-point data with the diagonal algebra fail first order.").
source(l08_ce_reality, 'lemmas/08_product_selects_ko.md', '').
depends(l08_ce_reality, l07_real).
attempted_by(l08_ce_reality, astra6).
checked_by(l08_ce_reality, claude_opus_5_5, by_hand).
claim(l08_product, theorem, proved, "Theorem 5", "In the internal-first KO-6 product F_0 x interval, the KO-6 conditions force a = 0 and t(-1)^b = -1; the bare reflection 1 x sigma has s = -1 (formally 9).").
source(l08_product, 'lemmas/08_product_selects_ko.md', '').
depends(l08_product, l07_reflection).
depends(l08_product, l06_factorization).
attempted_by(l08_product, astra6).
checked_by(l08_product, claude_opus_5_5, python("numpy; scratch check job08_check")).
claim(l08_lift, proposition, proved, "Proposition 6", "Twisting the reflection by Gamma_0 flips s but commutes with D_F only if D_0 = 0; equivalent product conventions preserve s.").
source(l08_lift, 'lemmas/08_product_selects_ko.md', '').
depends(l08_lift, l08_product).
attempted_by(l08_lift, astra6).
checked_by(l08_lift, claude_opus_5_5, python("numpy; scratch check job08_check")).
claim(l08_reconcile, theorem, proved, "Theorem 7", "The scalar-algebra truncated product is exactly T_5(m) x P_1 with d_5 = D_0 + m Gamma_0 and j_5 = J_0 Gamma_0.").
source(l08_reconcile, 'lemmas/08_product_selects_ko.md', '').
depends(l08_reconcile, l08_product).
depends(l08_reconcile, l06_factorization).
attempted_by(l08_reconcile, astra6).
checked_by(l08_reconcile, claude_opus_5_5, python("numpy; scratch check job08_check")).
claim(l08_nogo, no_go, proved, "No-go theorem 8", "Literal collapse of the massless chiral interval in the product leaves no light sector: |D_F| >= pi/(2l).").
source(l08_nogo, 'lemmas/08_product_selects_ko.md', '').
depends(l08_nogo, l05_limits).
attempted_by(l08_nogo, astra6).
checked_by(l08_nogo, claude_opus_5_5, python("numpy; scratch check job08_check")).
claim(l08_spacetime, proposition, proved, "Proposition 9", "Spacetime grading twists (J_M versus J_M gamma) do not select the finite involution; both reductions use the same J_M.").
source(l08_spacetime, 'lemmas/08_product_selects_ko.md', '').
depends(l08_spacetime, l06_factorization).
attempted_by(l08_spacetime, astra6).
checked_by(l08_spacetime, claude_opus_5_5, by_hand).
claim(l08_chargeconj, proposition, proved, "Proposition 10", "Euclidean J_M is the charge conjugation in the CCM and van den Dungen-van Suijlekom conventions; Lorentzian C_L is neither J_M nor J_M gamma_5.").
source(l08_chargeconj, 'lemmas/08_product_selects_ko.md', '').
attempted_by(l08_chargeconj, astra6).
checked_by(l08_chargeconj, claude_opus_5_5, by_hand).
claim(l08_both_signs, counterexample, proved, "Counterexample 11", "A scalar-interval product with fixed D_F, J_F, Gamma_F, Q admits particle-preserving involutions U_- and U_+ = Q U_- of opposite signs.").
source(l08_both_signs, 'lemmas/08_product_selects_ko.md', '').
depends(l08_both_signs, l08_product).
attempted_by(l08_both_signs, astra6).
checked_by(l08_both_signs, claude_opus_5_5, python("numpy; scratch check job08_check")).
claim(l08_pairing, theorem, proved, "Theorem 12", "If [Q, D] = 0 and QJ = -JQ, particle-preserving doubling involutions come in pairs of opposite sign; an unpaired nu_L obstructs particle-preserving doubling.").
source(l08_pairing, 'lemmas/08_product_selects_ko.md', '').
depends(l08_pairing, l08_both_signs).
attempted_by(l08_pairing, astra6).
checked_by(l08_pairing, claude_opus_5_5, by_hand).
checked_by(l07_real, astra6, by_hand).  % job 08, under pointwise reality
checked_by(l07_reflection, astra6, by_hand).  % job 08
claim_amended(l07_real, l08_ce_reality).
claim_amended(l07_reflection, l08_product).

checked_by(l09_index, terra_6_1, by_hand).  % referee, 3 Nov 2026
checked_by(l09_lightpair, terra_6_1, by_hand).  % referee, 3 Nov 2026
checked_by(l09_limits, terra_6_1, by_hand).  % referee, 3 Nov 2026

%% ---------------------------------------------------------------- lemma 13 (Astra job 13, T4)
claim(l13_compression, theorem, proved, "Theorem 2", "Exact compression of the fluctuated product to the lowest pair: weighted sheet connections and link phi = m + iB; image phi + phi* = 2m.").
source(l13_compression, 'lemmas/13_gauge_sector_truncation.md', '').
depends(l13_compression, l05_truncation).
attempted_by(l13_compression, astra6).
checked_by(l13_compression, claude_opus_5_5, by_hand).
claim(l13_not_covariant, no_go, proved, "No-go theorem 3", "Fixed compression is not gauge covariant: a gauge-trivial A_5 with trivial Wilson line changes the compressed spectrum.").
source(l13_not_covariant, 'lemmas/13_gauge_sector_truncation.md', '').
depends(l13_not_covariant, l13_compression).
attempted_by(l13_not_covariant, astra6).
checked_by(l13_not_covariant, claude_opus_5_5, by_hand).
claim(l13_kk_mass, lemma, proved, "Lemma 4", "The continuum vector mass pi/(2l) requires Neumann-Dirichlet gauge boundary conditions.").
source(l13_kk_mass, 'lemmas/13_gauge_sector_truncation.md', '').
attempted_by(l13_kk_mass, astra6).
checked_by(l13_kk_mass, claude_opus_5_5, by_hand).
claim(l13_mass_formula, proposition, proved, "Proposition 5", "Spectral-action vector masses: M^2 = (3/2) Q^{-1/2} K Q^{-1/2}.").
source(l13_mass_formula, 'lemmas/13_gauge_sector_truncation.md', '').
attempted_by(l13_mass_formula, astra6).
checked_by(l13_mass_formula, claude_opus_5_5, by_hand).
claim(l13_sqrt6, counterexample, proved, "Counterexample 6", "The minimal two-sheet spectral action gives the relative vector mass sqrt(6) m, against the tower mass m.").
source(l13_sqrt6, 'lemmas/13_gauge_sector_truncation.md', '').
depends(l13_sqrt6, l13_mass_formula).
depends(l13_sqrt6, l13_kk_mass).
attempted_by(l13_sqrt6, astra6).
checked_by(l13_sqrt6, claude_opus_5_5, by_hand).
claim(l13_ccm, corollary, proved, "Corollary 7", "With the CCM Standard Model trace and one massive colour triplet of mass m, M_W = sqrt(3/8) m.").
source(l13_ccm, 'lemmas/13_gauge_sector_truncation.md', '').
depends(l13_ccm, l13_mass_formula).
depends(l13_ccm, hyp(ccm_relation)).
attempted_by(l13_ccm, astra6).
claim(l13_rho, proposition, proved, "Proposition 8", "With a Higgs doublet, rho = 1 and M_W/M_Z = sqrt(5/8) at the CCM matching scale.").
source(l13_rho, 'lemmas/13_gauge_sector_truncation.md', '').
depends(l13_rho, l13_mass_formula).
attempted_by(l13_rho, astra6).
addresses(t4, l13_compression).  addresses(t4, l13_not_covariant).  addresses(t4, l13_sqrt6).  addresses(t4, l13_ccm).  addresses(t4b, l13_not_covariant).

claim(l06_neutral, theorem, proved, "Lemma 4, Proposition 7", "Neutral-sector criterion: KO-7 always exists; KO-5 exists iff every singular value of the neutral mass matrix has even multiplicity; generic Majorana masses exclude KO-5.").
source(l06_neutral, 'lemmas/06_vectorlike_odd_factorization.md', '').
depends(l06_neutral, l06_factorization).
attempted_by(l06_neutral, astra6).
checked_by(l06_neutral, claude_opus_5_5, by_hand).

checked_by(l12_index, terra_6_1, by_hand).  % referee, 3 Nov 2026
checked_by(l12_secular, terra_6_1, by_hand).  % referee, 3 Nov 2026
checked_by(l12_towerless, terra_6_1, by_hand).  % referee, 3 Nov 2026
checked_by(l12_graded, terra_6_1, by_hand).  % referee, 3 Nov 2026

%% ---------------------------------------------------------------- prior work (LITERATURE.md, 3 Nov 2026)
prior_work(l05_truncation, partial, "Connes-Lott 1991 sections I, III; Viet-Wali 1996; Dimakis-Muller-Hoissen 1994 section VII; truncation theorem not found").
prior_work(l09_limits, partial, "Jackiw-Rebbi 1976; Kaplan 1992; Shamir 1993; Farsi-Latremoliere 2026 Cor. 4.1 (fixed-mu collapse); tuned collapse outside its hypotheses").
prior_work(l12_secular, known, "one-flavour spectrum: Csaki et al. 2004 eq. (5.6)").
prior_work(l12_towerless, partial, "Casagrande et al. 2008 (warped textures); no NCG derivation of D_F found").
prior_work(l06_factorization, partial, "Dabrowski-Dossena 2011; Vanhecke-da Silva-Sigaud; criterion not found").
prior_work(l11_top, known, "CCM 2007 eqs. (4.16), (5.27)").
prior_work(rs_G3, known, "Niemi-Slizovskiy arXiv:1004.0212 eqs. (94)-(95)").
prior_work(paper_14_3_1, known, "Niemi-Slizovskiy arXiv:1004.0212 eqs. (94)-(95)").

%% ---------------------------------------------------------------- lemma 14 (Astra job 14, T4b)
claim(l14_covariant, theorem, proved, "Theorems 1-2", "The gapped spectral projection P_A is gauge covariant and carries an induced Grassmannian connection on the light-fermion bundle.").
source(l14_covariant, 'lemmas/14_gauge_covariant_reduction.md', '').
depends(l14_covariant, l13_not_covariant).
attempted_by(l14_covariant, astra6).
claim(l14_image, theorem, proved, "Theorem 3", "For the mixed interval with gauge-invariant bulk mass the induced finite link has fixed singular values and does not supply the full two-sheet fluctuation space.").
source(l14_image, 'lemmas/14_gauge_covariant_reduction.md', '').
depends(l14_image, l14_covariant).
attempted_by(l14_image, astra6).
claim(l14_sum_rule, theorem, proved, "Theorem 5", "At leading spectral-action order, M_spec = M_KK iff an explicit trace-and-overlap sum rule holds (M_spec^2 = (3/2) Q^-1/2 K Q^-1/2, M_KK^2 = G^-1/2 H G^-1/2).").
source(l14_sum_rule, 'lemmas/14_gauge_covariant_reduction.md', '').
depends(l14_sum_rule, l13_mass_formula).
depends(l14_sum_rule, l14_covariant).
attempted_by(l14_sum_rule, astra6).
checked_by(l14_sum_rule, claude_opus_5_5, by_hand).
claim(l14_three_fifths, counterexample, proved, "Counterexample 6", "The covariant lowest-mode reduction at zero bulk mass gives M_spec^2 = (3/5) M_KK^2.").
source(l14_three_fifths, 'lemmas/14_gauge_covariant_reduction.md', '').
depends(l14_three_fifths, l14_sum_rule).
attempted_by(l14_three_fifths, astra6).
checked_by(l14_three_fifths, claude_opus_5_5, by_hand).
claim(l14_tuned, proposition, proved, "Proposition 7", "Equality holds for some bulk mass 0 < M_* < 3 pi/(4l); the matched fermion sits at the tower scale.").
source(l14_tuned, 'lemmas/14_gauge_covariant_reduction.md', '').
depends(l14_tuned, l14_sum_rule).
depends(l14_tuned, l09_lightpair).
attempted_by(l14_tuned, astra6).
checked_by(l14_tuned, claude_opus_5_5, by_hand).
claim(l14_nogo_collapse, no_go, proved, "No-go theorem 8", "Bounded light fermions give M_spec^2 <= 6 C^2 and cannot match the collapsing Neumann-Dirichlet tower pi/(2l).").
source(l14_nogo_collapse, 'lemmas/14_gauge_covariant_reduction.md', '').
depends(l14_nogo_collapse, l14_sum_rule).
depends(l14_nogo_collapse, l13_kk_mass).
attempted_by(l14_nogo_collapse, astra6).
checked_by(l14_nogo_collapse, claude_opus_5_5, by_hand).
claim(l14_normalizations, proposition, proved, "Proposition 9", "Matching one vector mass does not fix relative gauge couplings or all scalar kinetic coefficients.").
source(l14_normalizations, 'lemmas/14_gauge_covariant_reduction.md', '').
depends(l14_normalizations, l14_sum_rule).
attempted_by(l14_normalizations, astra6).
addresses(t4b, l14_sum_rule).  addresses(t4b, l14_tuned).  addresses(t4b, l14_nogo_collapse).

checked_by(l10_toeplitz, terra_6_1, by_hand).  % referee, 3 Nov 2026
checked_by(l11_bounds, terra_6_1, by_hand).  % referee, 3 Nov 2026
checked_by(l11_nogo, terra_6_1, by_hand).  % referee, 3 Nov 2026
checked_by(l11_top, terra_6_1, by_hand).  % referee, 3 Nov 2026

claim(fl_R1, counterexample, proved, "Counterexample R1", "Theorem 3.4 of Farsi-Latremoliere (arXiv v1-v3) needs anticommutation of D_h and D_v or a relative bound: a scalar-algebra family meets its six hypotheses and contradicts Corollary 3.5.").
source(fl_R1, 'reviews/2026-11-03_farsi_latremoliere_assessment.md', '31-theorem-34-is-missing-a-hypothesis').
attempted_by(fl_R1, claude_subagent).
checked_by(fl_R1, claude_opus_5_5, by_hand).
claim(fl_R2, corollary, proved, "Corollary 15.5 (Lemma R2)", "The tuned interval of Theorem 9.9 converges in spectral propinquity to (C, C^2, m_f sigma_1), with l/2 <= Lambda_spec <= l/2 + l^2/(pi^2 + c^2), at distance at least min(sqrt(2)/2, (1/m_f - l)/2) from the Connes-Lott triple.").
source(fl_R2, 'lemmas/15_propinquity_collapse.md', 'the-gap-criterion-lemma-r2').
depends(fl_R2, l09_limits).
depends(fl_R2, l15_gap).
attempted_by(fl_R2, claude_subagent).
attempted_by(fl_R2, claude_opus_5_5).
claim(fl_R3, theorem, proved, "Theorem 15.2 (Lemma R3)", "Propinquity limits of commutative quantum compact metric spaces are commutative, and the number of connected components does not increase in the limit.").
source(fl_R3, 'lemmas/15_propinquity_collapse.md', 'limits-of-commutative-spaces-lemma-r3').
attempted_by(fl_R3, claude_subagent).
attempted_by(fl_R3, claude_opus_5_5).
claim(l15_gap, theorem, proved, "Theorem 15.3", "A metric triple with a finite spectral block and gap g has min(sqrt(2)/2, delta/2) <= Lambda_spec(T, (C, C^N, D_F)) <= 1/g^2 + max(delta/2, Delta) + Delta + sqrt(Delta); no anticommutation hypothesis.").
source(l15_gap, 'lemmas/15_propinquity_collapse.md', 'the-gap-criterion-lemma-r2').
attempted_by(l15_gap, claude_opus_5_5).
claim(l15_yukawa, corollary, proved, "Corollary 15.6", "The towerless Yukawa family of Theorem 12.7 converges at rate O(l) to (C, C^(N_Q+N_U), D_F) with D_F the Yukawa block Phi_Q Y_hat Phi_U.").
source(l15_yukawa, 'lemmas/15_propinquity_collapse.md', 'the-gap-criterion-lemma-r2').
depends(l15_yukawa, l15_gap).
attempted_by(l15_yukawa, claude_opus_5_5).
claim(l15_converse, theorem, proved, "Theorem 15.7", "Convergence to (C, C^N, D_F) in Lambda_spec holds iff the diameter tends to 0, the gap to infinity and the light block to D_F with multiplicities.").
source(l15_converse, 'lemmas/15_propinquity_collapse.md', 'the-converse').
depends(l15_converse, l15_gap).
attempted_by(l15_converse, claude_opus_5_5).
claim(l15_finite_limits, corollary, proved, "Corollary 15.8", "The finite limits in Lambda_spec of connected commutative metric triples are exactly (C, C^N, D_F), with every Hermitian D_F arising. A statement about this metric only.").
source(l15_finite_limits, 'lemmas/15_propinquity_collapse.md', 'the-converse').
depends(l15_finite_limits, fl_R3).
depends(l15_finite_limits, l15_converse).
attempted_by(l15_finite_limits, claude_opus_5_5).
claim(l15_grading, proposition, proved, "Proposition 15.9", "For a symmetric spectral block, gamma and J descend exactly with their signs, and the tunnels of Theorem 15.3 control them.").
source(l15_grading, 'lemmas/15_propinquity_collapse.md', 'grading-and-real-structure').
depends(l15_grading, l15_gap).
attempted_by(l15_grading, claude_opus_5_5).
claim(l16_interval_algebra, claim, proved, "Example 16(b)", "The compression of C([0,l]) to the second spectral level of the chiral interval is a 4-dimensional operator system generating M_2(C) + M_2(C), at fixed truncation.").
source(l16_interval_algebra, 'lemmas/16_coarse_truncation.md', 'setting').
attempted_by(l16_interval_algebra, claude_opus_5_5).
checked_by(l16_interval_algebra, claude_opus_5_5, python("numpy quadrature: dimensions 4 and 8, the two displayed compressions")).
claim(l16_standard_nogo, no_go, proved, "Proposition 16.1", "With pointwise reality J a J^-1 = a*, the compressed data with inherited J satisfy order zero iff the generated algebra is commutative.").
source(l16_standard_nogo, 'lemmas/16_coarse_truncation.md', 'the-standard-correspondence').
attempted_by(l16_standard_nogo, claude_opus_5_5).
claim(l16_coarse, theorem, proved, "Theorem 16.2", "On H_0 (x) conj(H_0), with the graded flip J and DD = D_0 (x) 1 + gamma_0 (x) D^c, A_0 acting on the left gives a real even triple with signs (+,+,+), order zero and order one.").
source(l16_coarse, 'lemmas/16_coarse_truncation.md', 'the-coarse-correspondence').
attempted_by(l16_coarse, claude_opus_5_5).
checked_by(l16_coarse, claude_opus_5_5, python("numpy on random finite data: all signs, order zero, order one")).
claim(l16_truncation, corollary, proved, "Corollaries 16.3 and 16.4", "The truncation of the doubled parent is a finite real even triple with order zero and order one for every generated algebra, noncommutative or not; a Clifford point gives the KO-6 signs and dim H = 2 k^2.").
source(l16_truncation, 'lemmas/16_coarse_truncation.md', 'the-coarse-correspondence').
depends(l16_truncation, l16_coarse).
attempted_by(l16_truncation, claude_opus_5_5).
checked_by(l16_truncation, claude_opus_5_5, python("numpy on random finite data: KO-6 signs")).
claim(t0_note_overread, claim, refuted, "Earlier T0 note", "A noncommutative A_F must come from compressions, operator systems or a noncommutative parent, and compressions being operator systems forces the algebra to be produced by a limit.").
source(t0_note_overread, 'reviews/2026-11-03_t0_note_assessment.md', 'claim-by-claim').
attempted_by(t0_note_overread, claude_opus_5_5).
claim(l10_generates_m4, counterexample, proved, "Proposition 10.1 and example 16(c)", "Compression of functions on connected CP^3 generates M_4(C) with no limit, against the earlier T0 note.").
source(l10_generates_m4, 'lemmas/16_coarse_truncation.md', 'setting').
depends(l10_generates_m4, l10_toeplitz).
attempted_by(l10_generates_m4, claude_opus_5_5).
refuted_by(t0_note_overread, l10_generates_m4).
%% Referee of lemmas 15 and 16 (Terra 6.1, 3 Nov 2026): reviews/2026-11-03_terra_check_15_16.md
checked_by(fl_R2, terra_6_1, by_hand).  checked_by(fl_R3, terra_6_1, by_hand).
checked_by(l15_gap, terra_6_1, by_hand).  checked_by(l15_yukawa, terra_6_1, by_hand).
checked_by(l15_converse, terra_6_1, by_hand).  checked_by(l15_finite_limits, terra_6_1, by_hand).
checked_by(l15_grading, terra_6_1, by_hand).  checked_by(l16_interval_algebra, terra_6_1, by_hand).
checked_by(l16_standard_nogo, terra_6_1, by_hand).  checked_by(l16_coarse, terra_6_1, by_hand).
checked_by(l16_truncation, terra_6_1, by_hand).
claim(l15_first_order, proposition, proved, "Proposition 15.10", "In a finite real triple with order zero and order one, if D commutes with u J u J^-1 then [D, u] = 0; in a metric such triple, u is scalar.").
source(l15_first_order, 'lemmas/15_propinquity_collapse.md', 'unbroken-symmetry-and-the-metric-class').
attempted_by(l15_first_order, terra_6_1).
checked_by(l15_first_order, claude_opus_5_5, by_hand).
claim(l15_symmetry_ce, counterexample, proved, "Counterexample 15.11", "A metric triple on M_2(C) with D the traceless projection has every conjugation commuting with D; it fails order one.").
source(l15_symmetry_ce, 'lemmas/15_propinquity_collapse.md', 'unbroken-symmetry-and-the-metric-class').
attempted_by(l15_symmetry_ce, terra_6_1).
checked_by(l15_symmetry_ce, claude_opus_5_5, by_hand).
claim(t0_unbroken_unrestricted, claim, refuted, "First version of the T0 section of lemma 15", "A metric spectral triple excludes every unbroken inner gauge symmetry.").
source(t0_unbroken_unrestricted, 'reviews/2026-11-03_terra_check_15_16.md', 'i-unbroken-symmetry-and-the-standard-model').
attempted_by(t0_unbroken_unrestricted, claude_opus_5_5).
refuted_by(t0_unbroken_unrestricted, l15_symmetry_ce).
claim(l16_formal, claim, proved, "Remark 16.5", "Order zero and order one on the tensor square hold for every finite even representation, so they are formal and carry nothing specific about A_F.").
source(l16_formal, 'lemmas/16_coarse_truncation.md', 'the-coarse-correspondence').
attempted_by(l16_formal, terra_6_1).
checked_by(l16_formal, claude_opus_5_5, by_hand).
claim(l16_family, claim, proved, "Example 16.6", "On the doubled parent of twisted CP^3, DD/l has kernel C^4 (x) C^4 and gap of order 1/l; compression then generation gives constant A_F = M_4(C), while the whole triple converges to (C, C^16, 0).").
source(l16_family, 'lemmas/16_coarse_truncation.md', 'the-coarse-correspondence').
depends(l16_family, l16_truncation).
depends(l16_family, l15_gap).
attempted_by(l16_family, terra_6_1).
checked_by(l16_family, claude_opus_5_5, by_hand).
addresses(t0, fl_R3).  addresses(t0, l15_finite_limits).  addresses(t0, l16_truncation).  addresses(t0b, l16_truncation).

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
claim(rs_N5, claim, proved, "proved by direct calculation (exact algebra)", "A doubled \\(\\mathbb C\\oplus\\mathbb H\\) toy model has KO-6 signs, order-zero, first-order and nonzero one-forms, but fails finite orientability: explicit finite-matrix calculation.").
source(rs_N5, 'connes_kk_research_state.md', '64-continuing-the-obstruction-test-a-finite-repair-and-orientability').
overturn(rs_N5, "A different representation may satisfy orientability; it would still need a controlled geometric derivation.").
checked_by(rs_N5, claude_opus_5_5, by_hand).  % 3 Nov 2026
attempted_by(rs_N5, corpus).
claim(rs_N6, claim, proved, "proved by direct calculation (exact algebra)", "An 18-dimensional bimodule over \\(\\mathbb C\\oplus\\mathbb H\\oplus M_3(\\mathbb C)\\) satisfies KO-6 signs, order-zero, first-order, orientability and nonzero one-forms; the intersection pairing has rank \\(2\\): explicit finite-matrix calculation.").
source(rs_N6, 'connes_kk_research_state.md', '65-an-orientable-real-bimodule-from-the-1oplus2oplus3-spaces').
overturn(rs_N6, "A different bimodule can alter the pairing entries, but the odd-rank obstruction N7 persists; a KK derivation and gauge lift remain unproved.").
checked_by(rs_N6, claude_opus_5_5, by_hand).  % 3 Nov 2026
attempted_by(rs_N6, corpus).
claim(rs_N7, claim, proved, "proved under the trace-pairing definition", "The ordinary finite intersection form for a real KO-6 bimodule over the three-summand \\(A_F\\) is skew and hence singular: proved under the trace-pairing definition.").
source(rs_N7, 'connes_kk_research_state.md', '65-an-orientable-real-bimodule-from-the-1oplus2oplus3-spaces').
overturn(rs_N7, "A different real Kasparov duality or multi-class construction is not decided by this matrix.").
attempted_by(rs_N7, corpus).
claim(rs_N8, claim, proved, "proved for the colour-preserving bridge exchange (Terra 6.1 referee)", "An orientable four-summand parent can reduce to a nonorientable, faithful three-summand finite triple with nonzero one-forms, while preserving first-order throughout: explicit 32D finite-matrix model.").
source(rs_N8, 'connes_kk_research_state.md', '66-orientation-loss-under-a-heavy-centralizer-and-spectral-projection').
overturn(rs_N8, "Projection alone preserves orientability and makes the two scalar states infinitely distant; the algebra restriction and the geometric justification remain independent requirements.").
checked_by(rs_N8, terra_6_1, by_hand).  % referee, 3 Nov 2026
%% rs_N8 amended in place: the bridge exchange is the colour-preserving swap (section 6.6).
attempted_by(rs_N8, corpus).
claim(rs_N9, claim, proved, "proved", "A nonzero grading-odd bimodule-linear finite mass forbids the usual finite orientability cycle: proved, with the published QED triple as a concrete example.").
source(rs_N9, 'connes_kk_research_state.md', '54-direct-link-between-a-central-dirac-mass-and-finite-orientability').
overturn(rs_N9, "Mere gauge invariance or the absence of a propagating Higgs is weaker and does not entail the result.").
attempted_by(rs_N9, corpus).
claim(rs_N10, claim, proved, "proved by direct calculation (exact algebra)", "A relative \\(U(1)\\) can act through the real lift while the inner automorphism group is trivial: explicit matrix calculation.").
source(rs_N10, 'connes_kk_research_state.md', '68-gauge-symmetry-on-each-side').
overturn(rs_N10, "A different \\(J\\) or representation changes the kernel and gauge lift.").
checked_by(rs_N10, claude_opus_5_5, by_hand).  % 3 Nov 2026
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
%% Referee of lemmas 08, 13 and 14 (Terra 6.1, 3 Nov 2026): reviews/2026-11-03_terra_check_08_13_14.md
checked_by(l08_both_signs, terra_6_1, by_hand).
checked_by(l08_ce_reality, terra_6_1, by_hand).
checked_by(l08_chargeconj, terra_6_1, by_hand).
checked_by(l08_lift, terra_6_1, by_hand).
checked_by(l08_nogo, terra_6_1, by_hand).
checked_by(l08_pairing, terra_6_1, by_hand).
checked_by(l08_product, terra_6_1, by_hand).
checked_by(l08_reconcile, terra_6_1, by_hand).
checked_by(l08_spacetime, terra_6_1, by_hand).
checked_by(l13_ccm, terra_6_1, by_hand).
checked_by(l13_compression, terra_6_1, by_hand).
checked_by(l13_kk_mass, terra_6_1, by_hand).
checked_by(l13_mass_formula, terra_6_1, by_hand).
checked_by(l13_not_covariant, terra_6_1, by_hand).
checked_by(l13_rho, terra_6_1, by_hand).
checked_by(l13_sqrt6, terra_6_1, by_hand).
checked_by(l14_covariant, terra_6_1, by_hand).
checked_by(l14_image, terra_6_1, by_hand).
checked_by(l14_nogo_collapse, terra_6_1, by_hand).
checked_by(l14_normalizations, terra_6_1, by_hand).
checked_by(l14_sum_rule, terra_6_1, by_hand).
checked_by(l14_three_fifths, terra_6_1, by_hand).
checked_by(l14_tuned, terra_6_1, by_hand).
claim(terra_two_neutral_pairs, counterexample, proved, "Referee's counterexample to the unqualified D.2", "H = C^2 (x) C^2, A = C, D = 0, Gamma = 1 (x) sigma_3, J = (1 (x) sigma_1) K: two unpaired neutral states, no Majorana term, with involutions 1 (x) sigma_1 and sigma_2 (x) sigma_1 of opposite signs.").
source(terra_two_neutral_pairs, 'reviews/2026-11-03_terra_check_08_13_14.md', 'section-6-theorem-d').
attempted_by(terra_two_neutral_pairs, terra_6_1).
checked_by(terra_two_neutral_pairs, claude_opus_5_5, python("numpy: both involutions and their signs")).
claim(paper_D2_unqualified, claim, refuted, "First version of Theorem D item 2", "Any finite triple with an unpaired left-handed neutrino and no Majorana term admits only s = +1.").
source(paper_D2_unqualified, 'reviews/2026-11-03_terra_check_08_13_14.md', 'section-6-theorem-d').
attempted_by(paper_D2_unqualified, claude_opus_5_5).
refuted_by(paper_D2_unqualified, terra_two_neutral_pairs).
claim(terra_winding, counterexample, proved, "Referee's counterexample to the global form of Theorem 14.3", "On S^1 x S^3, the fixed-singular-value link lambda exp(i theta) is not attained, since every globally smooth real A_5 gives zero winding.").
source(terra_winding, 'reviews/2026-11-03_terra_check_08_13_14.md', 'lemma-14').
attempted_by(terra_winding, terra_6_1).
checked_by(terra_winding, claude_opus_5_5, by_hand).

claim(l16_two_sheets, theorem, proved, "Theorem 16.7 and Corollary 16.8", "A two-sheet coarse parent gives KO-6 signs, order zero and order one; its truncation has dim 2 k_X k_Y, real orientability when the gradings lie in the algebras, and for equal dimensions and full algebras the Chamseddine-Connes pair with centre C + C. D_F commutes with the two sheet projections, not necessarily with the whole centre.").
source(l16_two_sheets, 'lemmas/16_coarse_truncation.md', 'two-sheets-the-form-of-the-classification').
depends(l16_two_sheets, l16_coarse).
attempted_by(l16_two_sheets, claude_opus_5_5).
checked_by(l16_two_sheets, claude_opus_5_5, python("numpy on random finite data: signs, order zero, order one, orientability")).
claim(l16_twistor, claim, proved, "Example 16.9", "At twistor level one on two sheets, real functions on S^4 and on CP^3 generate M_2(H) + M_4(C) on E (-) E* of dimension 32 with J(x, y) = (y*, x*). The second sheet, the base-function restriction and the window are inputs; the grading is added after truncation (abstract finite data, not an even truncation of the parent); no operator connects the two pieces.").
source(l16_twistor, 'lemmas/16_coarse_truncation.md', 'two-sheets-the-form-of-the-classification').
depends(l16_twistor, l16_two_sheets).
depends(l16_twistor, l10_toeplitz).
attempted_by(l16_twistor, claude_opus_5_5).
checked_by(l16_twistor, claude_opus_5_5, python("numpy: real dimensions 16 and 32, j, the structure on k = 4")).
addresses(t0b, l16_two_sheets).  addresses(t0b, l16_twistor).
%% Astra job 18 (T5b). Referee: reviews/2026-11-03_terra_check_18_16b.md
claim(l18_kernel, theorem, proved, "Theorem 1, Lemma 2, Corollary 3", "Exact quadratic kernel of the spectral action for a transverse vector about constant V_0, for f a Laplace transform of a positive measure with moment conditions; gauge invariance through the Goldstone orbit; the asymptotic expansion reproduces Proposition 13.5 and the CCM relation.").
source(l18_kernel, 'lemmas/18_heavy_limit_near_cutoff.md', '').
depends(l18_kernel, l03_weights).
attempted_by(l18_kernel, astra6).
checked_by(l18_kernel, claude_opus_5_5, python("direct heat traces at zero and nonzero momentum, independent of the kernel")).
claim(l18_taylor, proposition, proved, "Proposition 4, Theorem 5", "Top-only Standard Model family at fixed Lambda: M_W^2 -> 3 m^2/8 at small m/Lambda, M_W^2 ~ Lambda^4/m^2 at large m/Lambda, for the Taylor and pole masses, with M_W^2 <= Lambda^2/e (pole for the heat cutoff; Taylor for the whole class).").
source(l18_taylor, 'lemmas/18_heavy_limit_near_cutoff.md', '').
depends(l18_taylor, l18_kernel).
attempted_by(l18_taylor, astra6).
checked_by(l18_taylor, claude_opus_5_5, python("closed forms, limits, bound, root of the pole equation")).
claim(l18_angles, proposition, proved, "Proposition 6", "In the same family kappa_em/kappa_s = 8/3 and the neutral-current cos^2 theta = 5/8 for all m/Lambda; the matching angle tends to 103/157; M_Z^2 ~ (2/3) x exp(-x) Lambda^2.").
source(l18_angles, 'lemmas/18_heavy_limit_near_cutoff.md', '').
depends(l18_angles, l18_kernel).
attempted_by(l18_angles, astra6).
checked_by(l18_angles, claude_opus_5_5, python("neutral matrix recomputed from Standard Model charges")).
claim(l18_wrong_sign, counterexample, proved, "Counterexample 7", "For V_0 = m sigma_3, T = sigma_1, the Taylor kinetic coefficient is negative for m^2 > Lambda^2 (heat cutoff; negative somewhere for all f in the class), while the full form has a unique positive pole with M^2 ~ 4 m^2.").
source(l18_wrong_sign, 'lemmas/18_heavy_limit_near_cutoff.md', '').
depends(l18_wrong_sign, l18_kernel).
attempted_by(l18_wrong_sign, astra6).
checked_by(l18_wrong_sign, claude_opus_5_5, python("direct heat trace at nonzero momentum against the kernel")).
claim(l18_no_centralizer, counterexample, proved, "Counterexample 8", "As m_t -> infinity at fixed Lambda, the broken vectors keep a finite nonzero kinetic form and a vanishing mass: heavy fermions do not select the centralizer by mass decoupling. Restricting the connection to the centralizer from the outset does give decoupling of the heavy block.").
source(l18_no_centralizer, 'lemmas/18_heavy_limit_near_cutoff.md', '').
depends(l18_no_centralizer, l18_taylor).
attempted_by(l18_no_centralizer, astra6).
claim(l18_radial, no_go, proved, "No-go theorem 9", "For f in the positive Laplace class, without an added potential or constraint, no finite c > 0 is stationary along V = c V_*: the constant-background density decreases monotonically.").
source(l18_radial, 'lemmas/18_heavy_limit_near_cutoff.md', '').
attempted_by(l18_radial, astra6).
checked_by(l18_radial, claude_opus_5_5, by_hand).
claim(l18_joint, corollary, proved, "Corollary 10", "The limit m_t/M_W -> sqrt(8/3) with all scales diverging needs Lambda -> infinity with m_t/Lambda -> 0; at fixed m_t/Lambda > 0, masses scale with Lambda and the ratio is a function of m_t/Lambda.").
source(l18_joint, 'lemmas/18_heavy_limit_near_cutoff.md', '').
depends(l18_joint, l18_taylor).
attempted_by(l18_joint, astra6).
addresses(t5b, l18_taylor).  addresses(t5b, l18_no_centralizer).  addresses(t5b, l18_radial).  addresses(t5b, l18_joint).
claim(l18_radial_general, proposition, proved, "Proposition 11", "On flat R^4, U'(c) = -(c Lambda^2/2 pi^2) sum lambda_j^2 int f over the tail; for nonnegative f of unbounded support there is no finite stationary point, and compact support gives a plateau.").
source(l18_radial_general, 'lemmas/18_heavy_limit_near_cutoff.md', '').
attempted_by(l18_radial_general, terra_6_1).
checked_by(l18_radial_general, claude_opus_5_5, python("numerical derivative against the formula for a compact bump")).
claim(l18_several, proposition, proved, "Propositions 12 and 13", "The top-only Taylor result holds for nonnegative compactly supported f; with several heavy doublets and P > 0 the Taylor mass tends to 0, and with P = 0 it scales as m^4/(2 Lambda^2) with pole m^2/2.").
source(l18_several, 'lemmas/18_heavy_limit_near_cutoff.md', '').
depends(l18_several, l18_taylor).
attempted_by(l18_several, terra_6_1).
checked_by(l18_several, claude_opus_5_5, python("Taylor ratio and pole root at large x")).
claim(l18_fully_massive, proposition, proved, "Proposition 14", "With both members of every doublet of equal mass and no Majorana masses, the pole masses diverge at fixed cutoff (2x < z_W < 2x + 2, 16x/5 < z_Z < 16x/5 + 2), M_W^2/M_Z^2 -> 5/8 for x -> 0 and x -> infinity, the kernel vanishes at fixed momentum and the Taylor kinetic term has the wrong sign for x > 2. No light fermions.").
source(l18_fully_massive, 'lemmas/18_heavy_limit_near_cutoff.md', '').
depends(l18_fully_massive, l18_kernel).
attempted_by(l18_fully_massive, terra_6_1).
attempted_by(l18_fully_massive, claude_opus_5_5).
checked_by(l18_fully_massive, claude_opus_5_5, python("direct doublet kernel from equation (1), pole equations, the ratio")).
claim(l18_not_unbroken, claim, proved, "Remark 15", "In the top-only limit the compressed generators on b_L do not satisfy the SU(2) relations, and the limiting coefficients have K_W != K_33 and K_3Y != 0; vanishing vector masses do not show unbroken SU(2) x U(1) on the light space.").
source(l18_not_unbroken, 'lemmas/18_heavy_limit_near_cutoff.md', '').
depends(l18_not_unbroken, l18_angles).
attempted_by(l18_not_unbroken, terra_6_1).
checked_by(l18_not_unbroken, claude_opus_5_5, by_hand).
claim(l16_ce_centre, counterexample, proved, "Referee's counterexample in Corollary 16.8", "V_X = C^2, gamma_X = sigma_3, d_X = sigma_1, A_X = C + C and V_Y = C: the central (diag(1, 0), 0) does not commute with D_F.").
source(l16_ce_centre, 'lemmas/16_coarse_truncation.md', 'two-sheets-the-form-of-the-classification').
attempted_by(l16_ce_centre, terra_6_1).
checked_by(l16_ce_centre, claude_opus_5_5, by_hand).
claim(l16_grading_not_even, no_go, proved, "Example 16.9, grading", "An even parent has [P gamma P, P a P] = 0 for compressed functions, while Gamma_5 = 5 Q(x_5) anticommutes with Q(x_1); so the grading of the classification cannot come from the stated even parent.").
source(l16_grading_not_even, 'lemmas/16_coarse_truncation.md', 'two-sheets-the-form-of-the-classification').
attempted_by(l16_grading_not_even, terra_6_1).
checked_by(l16_grading_not_even, claude_opus_5_5, by_hand).
checked_by(l18_kernel, terra_6_1, by_hand).
checked_by(l18_taylor, terra_6_1, by_hand).
checked_by(l18_angles, terra_6_1, by_hand).
checked_by(l18_wrong_sign, terra_6_1, by_hand).
checked_by(l18_no_centralizer, terra_6_1, by_hand).
checked_by(l18_radial, terra_6_1, by_hand).
checked_by(l18_joint, terra_6_1, by_hand).
checked_by(l16_two_sheets, terra_6_1, by_hand).
checked_by(l16_twistor, terra_6_1, by_hand).
addresses(t5b, l18_fully_massive).  addresses(t5b, l18_not_unbroken).  addresses(t0b, l16_grading_not_even).
claim(l18_sum_rule, claim, proved, "Remark 16", "For doublets with one massive member at the heat cutoff, 8 kappa M_W^2 = sum N_f m_f^2 rho(m_f^2/Lambda^2), with rho, kappa -> 1 as x -> 0: the CCM relation is the small-mass form of this sum.").
source(l18_sum_rule, 'lemmas/18_heavy_limit_near_cutoff.md', '').
depends(l18_sum_rule, l18_several).
attempted_by(l18_sum_rule, claude_opus_5_5).
checked_by(l18_sum_rule, claude_opus_5_5, python("agreement with equation (18) to rounding, for x from 1e-3 to 1e3")).
addresses(t5b, l18_sum_rule).
%% Lemma 19 (T0b, step 1). Referee: reviews/2026-11-03_terra_check_nogo_19.md
claim(l19_fluct, theorem, proved, "Theorem 19.1", "On the two-point data the inner fluctuation of arXiv:1304.7583 factorizes: m |Phi|^2 sigma_1 with pointwise J, and link m Phi^2 with the reflection J (KO-6 signs).").
source(l19_fluct, 'lemmas/19_fluctuations_without_order_one.md', 'the-fluctuated-operator').
attempted_by(l19_fluct, claude_opus_5_5).
checked_by(l19_fluct, claude_opus_5_5, python("numpy on random data: both factorizations, gauge covariance")).
claim(l19_gauge, corollary, proved, "Corollary 19.2", "U = 1 for pointwise J, with a neutral real radial field; charge 2 for the reflection J, with image all of C; along a gauge orbit the quadratic term keeps the modulus of the link fixed.").
source(l19_gauge, 'lemmas/19_fluctuations_without_order_one.md', 'the-fluctuated-operator').
depends(l19_gauge, l19_fluct).
attempted_by(l19_gauge, claude_opus_5_5).
checked_by(l19_gauge, claude_opus_5_5, python("numpy: orbit and covariance")).
claim(l19_parent, proposition, proved, "Proposition 19.3", "Compared with the parent: with pointwise reality the truncated data have a radial field with no parent scalar behind it; with the reflection J, the modulus along a gauge orbit behaves as for the covariant projection with the quadratic term, and as for the fixed compression without it. A parallel, no identification.").
source(l19_parent, 'lemmas/19_fluctuations_without_order_one.md', 'comparison-with-the-parent').
depends(l19_parent, l19_gauge).
depends(l19_parent, l13_compression).
attempted_by(l19_parent, claude_opus_5_5).
addresses(t0b, l19_fluct).  addresses(t0b, l19_parent).
%% Lemma 21 (T12). Referee pending.
claim(l21_removal, proposition, proved, "Proposition 21.1", "Among single charged species, only an up-type quark can be removed while keeping cos^2 theta_NC = 5/8 and the photon/gluon ratio 8/3; a down-type gives 59/92 and 46/15, a charged lepton 17/28 and 7/3; d + e together contribute as u.").
source(l21_removal, 'lemmas/21_top_counting.md', 'removal-identities').
depends(l21_removal, l18_angles).
attempted_by(l21_removal, claude_opus_5_5).
checked_by(l21_removal, claude_opus_5_5, python("exact fractions")).
claim(l21_counts, claim, proved, "Propositions 21.2 and 21.3", "The finite trace with a top mass is 84 + 12 exp(-x). 96 = 84 + 12 in two ways: five quarks and all leptons plus the top; charged fermions plus the neutrinos, the first with Dirac neutrinos. C_3 and C_6 have 84 on-shell components.").
source(l21_counts, 'lemmas/21_top_counting.md', 'the-two-families-of-84').
attempted_by(l21_counts, claude_opus_5_5).
checked_by(l21_counts, claude_opus_5_5, python("exact counting")).
claim(l21_so30, claim, proved, "SO(30) branching", "The adjoint of SO(30) with 30 = (5,3) + conjugate contains (15,3bar) and (25,1), with the charged scalar counts of three generations, plus three triplets of charge 4/3 and one neutral state.").
source(l21_so30, 'lemmas/21_top_counting.md', 'so30').
attempted_by(l21_so30, claude_opus_5_5).
checked_by(l21_so30, claude_opus_5_5, python("exact counting")).
prior_work(l21_so30, partial, "hep-ph/0512065, an early preprint: the 15 diquarks and 25 mesons, the 4/3 states, and the top unable to form them; neither SO(30) nor a role for SO(32)").
addresses(t12, l21_removal).  addresses(t12, l21_counts).  addresses(t12, l21_so30).
checked_by(l19_fluct, terra_6_1, by_hand).
checked_by(l19_gauge, terra_6_1, by_hand).
checked_by(l19_parent, terra_6_1, by_hand).
checked_by(l05_limits, terra_6_1, by_hand).
checked_by(l06_nuL, terra_6_1, by_hand).
checked_by(l06_factorization, terra_6_1, by_hand).
checked_by(l06_counterexample, terra_6_1, by_hand).
checked_by(l06_neutral, terra_6_1, by_hand).
%% Lemma 17 (T10, routine part). Referee: reviews/2026-11-03_terra_check_17.md
claim(l17_action, theorem, proved, "Theorem 17.1", "The fermion action of M x F on the Gamma = +1 subspace equals (1/2) <jj psi, (D_M + gamma_5 d) psi> on an unconstrained spinor, with jj = J_M (x) j for s = +1 and gamma_5 J_M (x) j for s = -1.").
source(l17_action, 'lemmas/17_explicit_masses_chiral_limit.md', 'the-reduced-action').
depends(l17_action, l08_reconcile).
attempted_by(l17_action, claude_opus_5_5).
checked_by(l17_action, claude_opus_5_5, python("numpy on a random finite model: the bilinear forms agree to 1e-14 for both signs")).
claim(l17_one_dirac, corollary, proved, "Corollary 17.2", "Both reductions of a paired Dirac sector give one Dirac action of explicit mass m, up to an invertible change of Grassmann variables; an unpaired reduction has a Majorana-type action. The rotation exp(i pi gamma_5/4) sends D_M + gamma_5 m to D_M + i m, formally.").
source(l17_one_dirac, 'lemmas/17_explicit_masses_chiral_limit.md', 'the-reduced-action').
depends(l17_one_dirac, l17_action).
attempted_by(l17_one_dirac, claude_opus_5_5).
claim(l17_no_higgs, proposition, proved, "Proposition 17.3 and Corollary 17.4", "On a subalgebra commuting with D_F and U, inner fluctuations have no scalar part and d stays constant: the Yukawa block is an explicit mass.").
source(l17_no_higgs, 'lemmas/17_explicit_masses_chiral_limit.md', 'the-reduced-action').
depends(l17_no_higgs, l17_action).
attempted_by(l17_no_higgs, claude_opus_5_5).
claim(l17_symmetry, proposition, proved, "Proposition 17.5", "On the quark sector, G(M) = {(V_L, V_R) : V_L M = M V_R}, with G(0) = U(N_f) x U(N_f).").
source(l17_symmetry, 'lemmas/17_explicit_masses_chiral_limit.md', 'the-chiral-limit').
attempted_by(l17_symmetry, claude_opus_5_5).
claim(l17_reductions, theorem, proved, "Theorem 17.6", "Admissible involutions of each sign on the colour-only quark sector correspond to Sigma in U(N_f) with Sigma* M Hermitian, the stationary points of Re tr(M Sigma*), including saddles and maxima; at M = 0 they form a homogeneous space of U(N_f) x U(N_f). No energy selects among them.").
source(l17_reductions, 'lemmas/17_explicit_masses_chiral_limit.md', 'the-chiral-limit').
attempted_by(l17_reductions, claude_opus_5_5).
checked_by(l17_reductions, claude_opus_5_5, python("numpy: involution conditions, the formula for d, finite-difference criticality")).
claim(l17_condensate, proposition, proved, "Proposition 17.8", "At finite volume and fixed background the regularized function has no limit beyond the zero-mode term; the Banks-Casher form needs a measure, infinite volume, the order of limits and uniform control, stated as hypotheses.").
source(l17_condensate, 'lemmas/17_explicit_masses_chiral_limit.md', 'what-the-spectral-data-say-about-the-condensate').
attempted_by(l17_condensate, claude_opus_5_5).
claim(l17_interval, proposition, proved, "Proposition 17.9", "On the interval the chiral limit has two routes: exponentially small residual mass by localization, at fixed mu or under a scaling hypothesis, and exact zero modes at X = 0, where X is a spurion on the wall; M_F is proportional to X only in the towerless limit.").
source(l17_interval, 'lemmas/17_explicit_masses_chiral_limit.md', 'the-chiral-limit-on-the-interval').
depends(l17_interval, l09_limits).
attempted_by(l17_interval, claude_opus_5_5).
claim(l17_no_kinetic, proposition, proved, "Proposition 17.10", "A spacetime-dependent reduction of the fixed operator gives a non-self-adjoint operator and leaves the spectral action unchanged; a kinetic term needs a new operator with m != 0, whose coefficient is N_c f(0) m^2/(4 pi^2), or a quantum effective action.").
source(l17_no_kinetic, 'lemmas/17_explicit_masses_chiral_limit.md', 'spacetime-dependent-sigma').
depends(l17_no_kinetic, l17_action).
attempted_by(l17_no_kinetic, terra_6_1).
checked_by(l17_no_kinetic, claude_opus_5_5, by_hand).
checked_by(l17_action, terra_6_1, by_hand).  checked_by(l17_one_dirac, terra_6_1, by_hand).  checked_by(l17_no_higgs, terra_6_1, by_hand).
checked_by(l17_symmetry, terra_6_1, by_hand).  checked_by(l17_reductions, terra_6_1, by_hand).  checked_by(l17_condensate, terra_6_1, by_hand).
checked_by(l17_interval, terra_6_1, by_hand).
addresses(t10, l17_no_kinetic).  addresses(t10, l17_action).  addresses(t10, l17_symmetry).  addresses(t10, l17_reductions).  addresses(t10, l17_condensate).
%% ---------------------------------------------------------------- STRATEGY.md
strategy(t0, open, "Founding problem: finite real triples (in general, not specifically the Standard Model) from commutative Kaluza-Klein data, with specified spectral, operator-algebraic, K-theoretic or truncation convergence.").
strategy(t0b, open, "Reach the current Connes et al. framework (KO-6, order one, doubling, classification, beyond first order, twisted triples) beyond the Connes-Lott layer.").
strategy(t10, open, "Yukawa couplings as explicit mass terms in the D = 9 action (d_5 = D_0 + m Gamma_0) and the chiral limit m_u = m_d = 0.").
strategy(t5b, open, "Heavy-W limit at fixed cutoff: in the top-only family, M_W and M_Z tend to 0 as m_t -> infinity, with a heavy limit jointly with Lambda -> infinity; with every doublet heavy and no light fermions the pole masses diverge (lemma 18; classical, bosonic).").
strategy(t1, settled, "Deconstruction: Connes-Lott is the minimal truncation of the chiral interval.").
strategy(t2, settled, "KO parity: grading-reversing involution U with UJ = sJU; s = -1 gives 9, s = +1 gives 11; J alone does not decide.").
strategy(t2b, settled, "Selection of s by the interval: the bare reflection gives 9 in the standard product; J_M and particle number do not select the sign.").
strategy(t2c, settled, "With a generic Majorana mass for nu_R the reduced triple admits only the KO-7 factorization (lemma 06, Lemma 4 and Proposition 7).").
strategy(t3, settled, "Chirality from boundary conditions; the boundary Yukawa interpolates (a)+(b) to (c)+(c) at constant index.").
strategy(t4, open, "Gauge sector of the towerless interval: fixed compression is not gauge covariant and the finite spectral action does not reproduce the tower mass.").
strategy(t4b, open, "Gauge-covariant reduction: matching with the tower only via a sum rule (tuned bulk mass, tower-scale fermion); impossible with bounded light fermions in the collapse.").
strategy(t5, settled, "Heavy W forces a heavy Dirac fermion (conditional on the CCM relation).").
strategy(t13, open, "Mass generation from D = 9 to D = 4 and the anchoring of the QCD and condensation scales to the Fermi scale; speculative steer for the next paper, in d9_masses_fermi_qcd_steer.md.").
strategy(t12, open, "The separate role of the top: removal identities, SO(30) from the five other quarks, inside SO(32), Seiberg duality with emergent supersymmetry, and the two families of 84 states against C_3, M2 and M5.").
strategy(t11, open, "Horava-Witten as a two-sheet geometry: walls as sheets, wall algebras as summands, bulk as connecting operator; compare the chiralities of the walls first.").
strategy(t6, open, "Metric-compatible towerless limits (operator-system truncations).").
strategy(t7, open, "Towerless S^2, CP^2 to H, M_3(C) with the right real structure.").
strategy(t8, partial, "Fermion masses as internal momenta: towerless Yukawa textures; mixing pattern numerical only.").
addresses(t1, l05_truncation).  addresses(t1, l05_limits).
addresses(t2, l06_factorization).  addresses(t2, l06_counterexample).  addresses(t2, l06_nuL).
addresses(t2b, l07_reflection).  addresses(t2b, conj07_4).  addresses(t2b, l08_product).  addresses(t2b, l08_both_signs).  addresses(t2b, l08_pairing).
addresses(t2c, l08_pairing).  addresses(t2c, l06_nuL).  addresses(t2c, l06_neutral).
addresses(t3, l09_index).  addresses(t3, l09_lightpair).  addresses(t3, l09_limits).  addresses(t3, l12_index).  addresses(t3, l12_secular).
addresses(t5b, l03_weights).  addresses(t10, l08_reconcile).  addresses(t10, l06_factorization).  addresses(t0, l05_truncation).  addresses(t0, l13_not_covariant).
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

%% nogo_models(-C, -Models): the distinct models behind a no-go result.
%% A no-go is a guide to where to go next, and needs consensus among models.
nogo_models(C, Models) :-
    claim(C, no_go, _, _, _),
    findall(A, attempted_by(C, A), As),
    findall(B, checked_by(C, B, _), Bs),
    append(As, Bs, All),
    sort(All, Models).

%% nogo_below_consensus(-C, -Models): fewer than the three models Astra, Claude and Terra.
nogo_below_consensus(C, Models) :- nogo_models(C, Models), length(Models, N), N < 3.

%% refuted(-C, -By): claims shown false, with the counterexample.
refuted(C, By) :- refuted_by(C, By).

where(C) :- source(C, F, A), (A == '' -> format("~w~n", [F]) ; format("~w#~w~n", [F, A])).
show(C) :- claim(C, K, S, L, T), format("~w  [~w, ~w: ~w]~n  ~w~n", [C, K, S, L, T]), where(C).

%% known_in_literature(-C, -Ref): claims whose statement is already in print.
known_in_literature(C, R) :- prior_work(C, known, R).

%% ---------------------------------------------------------------- consistency tests
:- begin_tests(ledger).
test(every_claim_has_a_source, [nondet]) :- forall(claim(C, _, _, _, _), source(C, _, _)).
test(sources_exist) :- forall(source(_, F, _), exists_file(F)).
test(dependencies_resolve) :- forall(depends(_, D), (D = hyp(H) -> hypothesis(H, _) ; claim(D, _, _, _, _))).
test(no_circular_dependency) :- \+ rests_on(C, C).
test(refutations_resolve) :- forall(refuted_by(C, B), (claim(C, _, refuted, _, _), claim(B, counterexample, _, _, _))).
test(amendments_resolve) :- forall(claim_amended(C, B), (claim(C, _, _, _, _), claim(B, _, _, _, _))).
test(prior_work_resolves) :- forall(prior_work(C, V, _), (claim(C, _, _, _, _), memberchk(V, [known, partial, not_found]))).
test(every_nogo_has_two_models) :- forall(nogo_models(_, Ms), (length(Ms, N), N >= 2)).
test(addresses_resolve) :- forall(addresses(T, C), (strategy(T, _, _), claim(C, _, _, _, _))).
:- end_tests(ledger).

