%% ledger.pl -- machine-readable ledger of claims, dependencies, checks and contradictions.
%% Load with:  swipl ledger.pl     Run consistency tests:  swipl -g run_tests -t halt ledger.pl
%% Maintained by hand from here on; sources: lemmas/README.md, historical/corpus/connes_kk_research_state.md section 8,
%% historical/corpus/canonical_research.md status labels, STRATEGY.md, historical/DUPLICATES.md section 5.
%%
%% claim(Id, Kind, Status, Label, Statement)
%%    Kind:   theorem | lemma | proposition | corollary | counterexample | no_go | conjecture | example | claim
%%    Status: proved | conditional | reference | numerical | conjectural | open | reported | not_reconstructed | refuted | example | other
%%    Label:  the status wording used in the source document
%%    not_reconstructed: a reported value whose derivation is missing from the records. It is a missing record, with no verdict on the value; open_items/1 lists it.
%% source(Id, File, Anchor)            Anchor: markdown heading anchor ('' for the file itself)
%% depends(Id, Dep)                    Dep: a claim Id or hyp(Name)
%% hypothesis(Name, Statement)
%% attempted_by(Id, Agent)             Agent: astra6 | claude_opus_5_5 | claude_fable_5_2 | terra | sol | chatgpt | corpus
%% checked_by(Id, Agent, Method)       Method: by_hand | partial(Description) | python(Description) | not_recorded(Description)
%%    by_hand: the claim re-derived by hand in full. partial(Description): the structure and the steps named were re-derived by hand, and the forms or numbers named were taken from the results file; it is a consistency check (regrade of 20 Nov 2026 after the second referee, historical/reviews/2026-11-20_fable_second_referee.md).
%%    Each checked_by row stands in the block of its claim, so that the block reads as the whole record.
%% referee_report(File, Report)        the referee of File (by Terra 6.1, by Claude Opus 5.5 from 4 Nov 2026, or by Claude Fable 5.2 from 20 Nov 2026) is in Report (the lemma table records it)
%%    The test on these rows checks bookkeeping: a Terra checker, Terra authorship or an exception. It reads neither the statement nor the verdict of the report.
%% outside_referee(Claim, Why)         a proved or conditional claim of a refereed File that its Report did not cover
%% referee_pending(Claim)              a new claim checked only by its author, with a referee queued
%% awaits_pending(Claim)               a checked claim that rests (transitively) on a claim still referee pending; its check holds given that claim
%% overturn(Id, Text)                  what would overturn applicability (research-state ledger)
%% strategy(T, Status, Text)           Status: settled | partial | open
%% addresses(T, Id)                    strategy item T is addressed by claim Id
%% contradiction(N, Where, Finding, Resolution, State)    State: resolved | open | compatible
%% refuted_by(Claim, Counterexample)
%% prior_work(Claim, Verdict, Reference)   Verdict: known | partial | not_found  (from paper/LITERATURE.md)
%% claim_amended(Claim, By): Claim stands, with an amendment proved in By
%% stated_in_draft(Claim, File)        a draft in paper/ states Claim (mapping in historical/reviews/2026-11-04_unchecked_claims_audit.md)
%% covered_by(Claim, Lemma)             the content of a corpus Claim is proved in the checked row Lemma

:- discontiguous refuted_by/2.
:- discontiguous prior_work/3.
:- discontiguous claim/5, source/3, depends/2, hypothesis/2, attempted_by/2, checked_by/3, overturn/2, addresses/2, strategy/3.
:- discontiguous referee_report/2, outside_referee/2, referee_pending/1.
:- discontiguous stated_in_draft/2, covered_by/2, claim_amended/2.
:- use_module(library(lists)).
:- use_module(library(readutil)).

%% ---------------------------------------------------------------- lemmas
claim(l01_count, theorem, proved, "Lemma 1", "Exact scalar count on CP^3 (invariant sector): N_0(K) = ((K+2)^5-(K+2))/30 and N_0(K-|r|) <= N_r(K) <= N_0(K) for K >= |r|. For K < |r|, N_r(K) = 0.").
source(l01_count, 'lemmas/01_invariant_weyl_growth.md', 'lemma-1--exact-scalar-count').
attempted_by(l01_count, astra6).
checked_by(l01_count, claude_opus_5_5, by_hand).
claim(l01_dim5, theorem, conditional, "Lemma 2", "The circle-invariant sector has spectral dimension five (two-sided counting bound Theta(Lambda^5)).").
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
claim(l03_weights, theorem, conditional, "Theorem", "Commuting gauge connections give kinetic weights f(m^2/Lambda^2). Broken generators use a separate quadratic, low-momentum form factor. The unbroken traces give kappa_em/kappa_s = 8/3 and cos^2 theta_NC = 5/8 in the stated heavy-top family.").
source(l03_weights, 'lemmas/03_mass_weighted_kinetic_terms.md', '').
depends(l03_weights, hyp(heat_kernel_spectral_action)).
attempted_by(l03_weights, astra6).
checked_by(l03_weights, claude_opus_5_5, python("by hand and quadrature")).
claim(l05_truncation, theorem, proved, "Theorem", "The minimal grading-preserving spectral truncation of the chiral interval gives compressed complex two-point data with |m| = pi/(2l); the two states of the compressed operator system have distance 2l/pi, and their pullbacks are smeared measures. The full diagonal algebra with the inherited J fails first order.").
source(l05_truncation, 'lemmas/05_deconstruction_interval.md', 'part-3-minimal-spectral-truncation').
attempted_by(l05_truncation, astra6).
checked_by(l05_truncation, claude_opus_5_5, python("spectra, commutator norms, distances, truncation")).
checked_by(l05_truncation, terra_6_1, by_hand).  % as Theorem A of the paper, report 08_13_14
claim(l05_limits, no_go, proved, "Proposition", "At fixed N: m -> 0 gives no heat dimension; m -> infinity leaves no light fermions (bare interval has no zero mode).").
source(l05_limits, 'lemmas/05_deconstruction_interval.md', 'part-4-the-two-limits').
depends(l05_limits, l05_truncation).
attempted_by(l05_limits, astra6).
checked_by(l05_limits, claude_opus_5_5, python("spectra")).
checked_by(l05_limits, terra_6_1, by_hand).
claim(l05_chain, theorem, proved, "Parts 1 and 2", "The staggered N-site chain with hopping h_N = pi/(4 l sin(pi/(4N-2))), asymptotic to (2N-1)/(2l), has spectrum +-2 h_N sin((2r-1) pi/(4N-2)), r = 1..N-1, with smallest positive eigenvalue pi/(2l) at every N, and Connes distances abs(i-j)/h_N between sites. As N -> infinity each eigenvalue increases to (2r-1) pi/(2l), the heat trace converges uniformly on [eps, infinity) for every eps > 0, and the pure-state metric spaces converge to [0, l] with the metric abs(x-y), at Gromov-Hausdorff distance at most l/(N-1).").
source(l05_chain, 'lemmas/05_deconstruction_interval.md', '').
attempted_by(l05_chain, astra6).
checked_by(l05_chain, claude_opus_5_5, python("spectra and distances of the chain, with the truncation check of l05_truncation")).
checked_by(l05_chain, claude_opus_5_5, python("spectra and commutator norms to N = 39, heat traces, path distances; the row's hopping and range of r corrected")).  % refereed 5 Nov 2026
addresses(t1, l05_chain).
claim(l06_factorization, theorem, proved, "Theorem", "A KO-6 triple factors as (KO-7) x P_7 or (KO-5) x P_1 iff there is a grading-reversing involution U commuting with a, a°, D and UJ = sJU (s = +1: 11, s = -1: 9).").
source(l06_factorization, 'lemmas/06_vectorlike_odd_factorization.md', '').
attempted_by(l06_factorization, astra6).
checked_by(l06_factorization, claude_opus_5_5, python("both involutions on the electrodynamics triple")).
checked_by(l06_factorization, terra_6_1, by_hand).
claim(l06_counterexample, counterexample, proved, "Counterexample", "Electrodynamics admits both U_+ and U_-: J alone does not select 9 versus 11.").
source(l06_counterexample, 'lemmas/06_vectorlike_odd_factorization.md', '').
depends(l06_counterexample, l06_factorization).
attempted_by(l06_counterexample, astra6).
checked_by(l06_counterexample, claude_opus_5_5, python("both involutions on the electrodynamics triple")).
checked_by(l06_counterexample, terra_6_1, by_hand).
claim(l06_nuL, no_go, proved, "No-go", "The strict light spectrum of the Standard Model representation with one or three unpaired nu_L and no Majorana term admits only the KO-7 factorization (odd multiplicity in the neutral criterion); no factorization while H is in the algebra. A statement about that finite triple, not about a parent manifold.").
source(l06_nuL, 'lemmas/06_vectorlike_odd_factorization.md', 'consequence-for-the-10---9-claim').
depends(l06_nuL, l06_factorization).
attempted_by(l06_nuL, astra6).
checked_by(l06_nuL, claude_opus_5_5, by_hand).
checked_by(l06_nuL, terra_6_1, by_hand).
claim(l07_real, lemma, proved, "Lemma 1", "Under pointwise reality, real structures on the chiral interval are diag(alpha,beta)K with eps = eps'' = +1 and alpha = eps' beta. Only eps' = +1 has standard KO-0 signs; the other sign uses the extended convention.").
source(l07_real, 'lemmas/07_interval_selects_ko.md', '').
depends(l07_real, l05_truncation).
attempted_by(l07_real, claude_opus_5_5).
checked_by(l07_real, claude_opus_5_5, by_hand).
checked_by(l07_real, astra6, by_hand).  % job 08, under pointwise reality
claim(l07_reflection, lemma, proved, "Lemma 3", "For the bare interval, the reflection sign equals eps'. This calculation does not select a physical odd factorization of a fixed product triple.").
source(l07_reflection, 'lemmas/07_interval_selects_ko.md', '').
depends(l07_reflection, l07_real).
depends(l07_reflection, l06_factorization).
attempted_by(l07_reflection, claude_opus_5_5).
checked_by(l07_reflection, claude_opus_5_5, by_hand).
checked_by(l07_reflection, astra6, by_hand).  % job 08
claim(conj07_4, conjecture, refuted, "Conjecture 07.4 (false as stated)", "For F_0 x (collapsing chiral interval), U = 1 x sigma has UJ = sJU with s fixed by eps' and the product grading twist; 9 versus 11 is decided by whether J_M or J_M gamma_5 is physical charge conjugation.").
source(conj07_4, 'lemmas/07_interval_selects_ko.md', '').
depends(conj07_4, l07_reflection).
depends(conj07_4, l06_factorization).
attempted_by(conj07_4, claude_opus_5_5).
claim(l09_index, theorem, proved, "Theorem 9.2, Corollary 9.3", "Index +1, -1, 0 for boundary types (a), (b), (c), independent of M and l; equivariant index [V_L]-[V_R].").
source(l09_index, 'lemmas/09_massive_chiral_interval.md', 'chirality-lives-in-the-boundary-conditions').
attempted_by(l09_index, claude_opus_5_5).
checked_by(l09_index, claude_opus_5_5, python("first-order discretization, N = 4000")).
checked_by(l09_index, terra_6_1, by_hand).  % referee, 3 Nov 2026
claim(l09_lightpair, theorem, proved, "Theorems 9.4, 9.6", "Bulk mass -mu, mu l > 1: one light pair lambda_0 = mu sech(kappa_0 l) ~ 2 mu e^(-mu l); its compressed complex two-point data have mass lambda_0 and distance 1/lambda_0. The full diagonal algebra with the inherited real structure fails first order.").
source(l09_lightpair, 'lemmas/09_massive_chiral_interval.md', 'spectrum-of-the-mixed-condition-with-a-bulk-mass').
depends(l09_lightpair, l05_truncation).
attempted_by(l09_lightpair, claude_opus_5_5).
checked_by(l09_lightpair, claude_opus_5_5, python("first-order discretization, N = 4000")).
checked_by(l09_lightpair, terra_6_1, by_hand).  % referee, 3 Nov 2026
claim(l09_limits, theorem, proved, "Theorems 9.8, 9.9", "l -> infinity at fixed mu: chiral walls, and a 1D Weyl law above the bulk threshold mu; l -> 0 at fixed light mass: unique mu(l), and the interval collapses with the light pair kept. The readings 10 -> 11 and 10 -> 9 are proposed interpretations; compatibility with the KO factorizations is not established.").
source(l09_limits, 'lemmas/09_massive_chiral_interval.md', 'the-two-limits').
depends(l09_limits, l09_lightpair).
attempted_by(l09_limits, claude_opus_5_5).
checked_by(l09_limits, claude_opus_5_5, python("secular equation, collapse table")).
checked_by(l09_limits, terra_6_1, by_hand).  % referee, 3 Nov 2026
claim(l10_toeplitz, proposition, proved, "Proposition 10.1", "Q(x_a) = Gamma_a/5, Q(x_a)^2 = I/25, Q(x_a^2) = I/5 on CP^3.").
source(l10_toeplitz, 'lemmas/10_toeplitz_twistor.md', '').
attempted_by(l10_toeplitz, claude_opus_5_5).
checked_by(l10_toeplitz, claude_opus_5_5, python("Monte Carlo, 2e6 samples")).
checked_by(l10_toeplitz, terra_6_1, by_hand).  % referee, 3 Nov 2026
claim(l11_bounds, proposition, conditional, "Proposition 11.1", "m_max/(2 sqrt 2) <= M_W <= sqrt(N_g) m_max.").
source(l11_bounds, 'lemmas/11_spectral_action_heavy_w.md', '').
depends(l11_bounds, hyp(ccm_relation)).
attempted_by(l11_bounds, claude_opus_5_5).
checked_by(l11_bounds, claude_opus_5_5, by_hand).
checked_by(l11_bounds, terra_6_1, by_hand).  % referee, 3 Nov 2026
claim(l11_nogo, no_go, conditional, "Corollary 11.2", "The heavy-W limit with all fermion masses fixed (canonical 14.1) is impossible in the spectral-action family; M_W -> infinity forces m_max -> infinity.").
source(l11_nogo, 'lemmas/11_spectral_action_heavy_w.md', '').
depends(l11_nogo, l11_bounds).
attempted_by(l11_nogo, claude_opus_5_5).
checked_by(l11_nogo, claude_opus_5_5, by_hand).
checked_by(l11_nogo, terra_6_1, by_hand).  % referee, 3 Nov 2026
checked_by(l11_nogo, astra6, by_hand).
claim(l11_top, corollary, conditional, "Corollary 11.3", "If the top is the only diverging Dirac mass (a hypothesis), m_t/M_W -> sqrt(8/3).").
source(l11_top, 'lemmas/11_spectral_action_heavy_w.md', '').
depends(l11_top, l11_bounds).
attempted_by(l11_top, claude_opus_5_5).
checked_by(l11_top, claude_opus_5_5, by_hand).
checked_by(l11_top, terra_6_1, by_hand).  % referee, 3 Nov 2026
claim(l12_index, theorem, proved, "Theorem 12.2, Corollary 12.3", "Boundary Yukawa X: ind = N_Q - N_U for all X; zero modes all lift only for a vectorlike residual theory; without nu_R a massless nu_L is forced for every X preserving electromagnetic symmetry.").
source(l12_index, 'lemmas/12_boundary_yukawa_interval.md', 'kernel-index-and-symmetry-breaking').
depends(l12_index, l09_index).
attempted_by(l12_index, claude_opus_5_5).
checked_by(l12_index, claude_opus_5_5, by_hand).
checked_by(l12_index, terra_6_1, by_hand).  % referee, 3 Nov 2026
claim(l12_secular, theorem, proved, "Theorem 12.4, Example 12.5", "Exact secular equation det(lambda^2 - A X B X^dagger) = 0, with the unique-zero claim on each field's first-pole window; one massless flavor: (n pi +- arctan|X|)/l, interpolating from (a)+(b) to (c)+(c), with zero of multiplicity two at X = 0 and arctan|X| = pi/2 as a limit.").
source(l12_secular, 'lemmas/12_boundary_yukawa_interval.md', 'exact-secular-equation').
depends(l12_secular, l09_lightpair).
attempted_by(l12_secular, claude_opus_5_5).
checked_by(l12_secular, claude_opus_5_5, python("scipy solve_ivp shooting")).
checked_by(l12_secular, terra_6_1, by_hand).  % referee, 3 Nov 2026
claim(l12_towerless, theorem, proved, "Theorems 12.6, 12.7", "Light eigenvalues are fixed points lambda = sigma_k(A^1/2 X B^1/2) with two-sided bounds. Towerless limit: in a fixed spectral window whose boundary avoids the limiting spectrum, precisely the eigenvalues of D_F in that window are retained; the full Yukawa block Phi_Q Y_hat Phi_U is retained when E > ||D_F||; the exterior gap is in absolute value. A statement on spectral triples needs a specified algebra and representation.").
source(l12_towerless, 'lemmas/12_boundary_yukawa_interval.md', 'light-spectrum-and-towerless-limit').
depends(l12_towerless, l12_secular).
attempted_by(l12_towerless, claude_opus_5_5).
checked_by(l12_towerless, claude_opus_5_5, python("secular roots, random samples")).
checked_by(l12_towerless, terra_6_1, by_hand).  % referee, 3 Nov 2026
claim(l12_graded, lemma, proved, "Lemma 12.8, Corollary 12.9", "Graded singular values via compound matrices; with nonzero trailing minors and small separation parameters, masses ~ phi(c_k^Q) phi(c_k^U), exponential hierarchies.").
source(l12_graded, 'lemmas/12_boundary_yukawa_interval.md', 'hierarchies-from-localization').
attempted_by(l12_graded, claude_opus_5_5).
checked_by(l12_graded, claude_opus_5_5, python("2000 random complex 3x3 cases")).
checked_by(l12_graded, terra_6_1, by_hand).  % referee, 3 Nov 2026
claim(l12_mixing, claim, numerical, "Remark 12.10", "In 500 anarchic samples the medians of |V_ij|/(phi(c_i^Q)/phi(c_j^Q)) are 1.02, 0.92, 1.09: left mixing follows doublet localization. The rigorous statement is the upper bound l12_mixing_bound; there is no universal lower bound.").
source(l12_mixing, 'lemmas/12_boundary_yukawa_interval.md', 'hierarchies-from-localization').
depends(l12_mixing, l12_graded).
attempted_by(l12_mixing, claude_opus_5_5).
checked_by(l12_mixing, claude_opus_5_5, python("500 anarchic samples")).
claim(l12_mixing_bound, proposition, proved, "Remark 12.10, bound", "For M_s = F X_s G_s with X_s invertible and nonzero trailing minors, |V_ij| <= 3 K_u K_d f_i/f_j for i < j, independent of the right-hand profiles; identical sectors give V = 1, so there is no universal lower bound.").
source(l12_mixing_bound, 'lemmas/12_boundary_yukawa_interval.md', 'hierarchies-from-localization').
attempted_by(l12_mixing_bound, terra_6_1).  % in the referee report on lemma 12
checked_by(l12_mixing_bound, claude_opus_5_5, python("numpy: 60000 inequalities on 20000 random complex 3x3 pairs, no violation; a numerical check of the bound, the proof is the referee's")).
checked_by(l12_mixing_bound, astra6, by_hand).  % Astra validation, 3 Nov 2026, item 10: proof with the cofactor step
attempted_by(conj07_4, astra6).  % job 07 cut off by the usage limit; job 08 answered it
refuted_by(conj07_4, l08_both_signs).

%% ---------------------------------------------------------------- lemma 08 (Astra job 08)
claim(l08_ce_reality, counterexample, proved, "Counterexample 4", "Without pointwise reality, J_ref = sigma_1 R_l K has KO-6 signs on the chiral interval; the compressed two-point data with the diagonal algebra fail first order.").
source(l08_ce_reality, 'lemmas/08_product_selects_ko.md', '').
depends(l08_ce_reality, l07_real).
attempted_by(l08_ce_reality, astra6).
checked_by(l08_ce_reality, claude_opus_5_5, by_hand).
checked_by(l08_ce_reality, terra_6_1, by_hand).
claim(l08_product, theorem, proved, "Theorem 5", "In the internal-first KO-6 product F_0 x interval, the KO-6 conditions force a = 0 and t(-1)^b = -1; the bare reflection 1 x sigma has s = -1 (formally 9).").
source(l08_product, 'lemmas/08_product_selects_ko.md', '').
depends(l08_product, l07_reflection).
depends(l08_product, l06_factorization).
attempted_by(l08_product, astra6).
checked_by(l08_product, claude_opus_5_5, python("numpy; scratch check job08_check")).
checked_by(l08_product, terra_6_1, by_hand).
claim(l08_lift, proposition, proved, "Proposition 6", "Twisting the reflection by Gamma_0 flips s but commutes with D_F only if D_0 = 0; equivalent product conventions preserve s.").
source(l08_lift, 'lemmas/08_product_selects_ko.md', '').
depends(l08_lift, l08_product).
attempted_by(l08_lift, astra6).
checked_by(l08_lift, claude_opus_5_5, python("numpy; scratch check job08_check")).
checked_by(l08_lift, terra_6_1, by_hand).
claim(l08_reconcile, theorem, proved, "Theorem 7", "The scalar-algebra truncated product is exactly T_5(m) x P_1 with d_5 = D_0 + m Gamma_0 and j_5 = J_0 Gamma_0.").
source(l08_reconcile, 'lemmas/08_product_selects_ko.md', '').
depends(l08_reconcile, l08_product).
depends(l08_reconcile, l06_factorization).
attempted_by(l08_reconcile, astra6).
checked_by(l08_reconcile, claude_opus_5_5, python("numpy; scratch check job08_check")).
checked_by(l08_reconcile, terra_6_1, by_hand).
claim(l08_nogo, no_go, proved, "No-go theorem 8", "Literal collapse of the massless chiral interval in the product leaves no light sector: |D_F| >= pi/(2l).").
source(l08_nogo, 'lemmas/08_product_selects_ko.md', '').
depends(l08_nogo, l05_limits).
attempted_by(l08_nogo, astra6).
checked_by(l08_nogo, claude_opus_5_5, python("numpy; scratch check job08_check")).
checked_by(l08_nogo, terra_6_1, by_hand).
claim(l08_spacetime, proposition, proved, "Proposition 9", "Spacetime grading twists (J_M versus J_M gamma) do not select the finite involution; both reductions use the same J_M.").
source(l08_spacetime, 'lemmas/08_product_selects_ko.md', '').
depends(l08_spacetime, l06_factorization).
attempted_by(l08_spacetime, astra6).
checked_by(l08_spacetime, claude_opus_5_5, by_hand).
checked_by(l08_spacetime, terra_6_1, by_hand).
claim(l08_chargeconj, proposition, proved, "Proposition 10", "Euclidean J_M is the charge conjugation in the CCM and van den Dungen-van Suijlekom conventions; Lorentzian C_L is neither J_M nor J_M gamma_5.").
source(l08_chargeconj, 'lemmas/08_product_selects_ko.md', '').
attempted_by(l08_chargeconj, astra6).
checked_by(l08_chargeconj, claude_opus_5_5, by_hand).
checked_by(l08_chargeconj, terra_6_1, by_hand).
claim(l08_both_signs, counterexample, proved, "Counterexample 11", "A scalar-interval product with fixed D_F, J_F, Gamma_F, Q admits particle-preserving involutions U_- and U_+ = Q U_- of opposite signs.").
source(l08_both_signs, 'lemmas/08_product_selects_ko.md', '').
depends(l08_both_signs, l08_product).
attempted_by(l08_both_signs, astra6).
checked_by(l08_both_signs, claude_opus_5_5, python("numpy; scratch check job08_check")).
checked_by(l08_both_signs, terra_6_1, by_hand).
claim(l08_pairing, theorem, proved, "Theorem 12", "Let Q be a self-adjoint involution commuting with Gamma, A, A° and D and anticommuting with J, and let the admissible U commute with Q. Then particle-preserving doubling involutions come in pairs of opposite sign; in the specified particle bimodules, an unpaired nu_L obstructs particle-preserving doubling.").
source(l08_pairing, 'lemmas/08_product_selects_ko.md', '').
depends(l08_pairing, l08_both_signs).
attempted_by(l08_pairing, astra6).
checked_by(l08_pairing, claude_opus_5_5, by_hand).
checked_by(l08_pairing, terra_6_1, by_hand).
claim_amended(l07_real, l08_ce_reality).
claim_amended(l07_reflection, l08_product).


%% ---------------------------------------------------------------- lemma 13 (Astra job 13, T4)
claim(l13_compression, theorem, proved, "Theorem 2", "Exact compression of the fluctuated product to the lowest pair: weighted sheet connections and link phi = m + iB; image phi + phi* = 2m.").
source(l13_compression, 'lemmas/13_gauge_sector_truncation.md', '').
depends(l13_compression, l05_truncation).
attempted_by(l13_compression, astra6).
checked_by(l13_compression, claude_opus_5_5, by_hand).
checked_by(l13_compression, terra_6_1, by_hand).
claim(l13_not_covariant, no_go, proved, "No-go theorem 3", "Fixed compression is not gauge covariant: a gauge-trivial A_5 with trivial Wilson line changes the compressed spectrum.").
source(l13_not_covariant, 'lemmas/13_gauge_sector_truncation.md', '').
depends(l13_not_covariant, l13_compression).
attempted_by(l13_not_covariant, astra6).
checked_by(l13_not_covariant, claude_opus_5_5, by_hand).
checked_by(l13_not_covariant, terra_6_1, by_hand).
claim(l13_kk_mass, lemma, proved, "Lemma 4", "The continuum vector mass pi/(2l) requires Neumann-Dirichlet gauge boundary conditions.").
source(l13_kk_mass, 'lemmas/13_gauge_sector_truncation.md', '').
attempted_by(l13_kk_mass, astra6).
checked_by(l13_kk_mass, claude_opus_5_5, by_hand).
checked_by(l13_kk_mass, terra_6_1, by_hand).
claim(l13_mass_formula, proposition, proved, "Proposition 5", "Spectral-action vector masses: M^2 = (3/2) Q^{-1/2} K Q^{-1/2}.").
source(l13_mass_formula, 'lemmas/13_gauge_sector_truncation.md', '').
attempted_by(l13_mass_formula, astra6).
checked_by(l13_mass_formula, claude_opus_5_5, by_hand).
checked_by(l13_mass_formula, terra_6_1, by_hand).
claim(l13_sqrt6, counterexample, proved, "Counterexample 6", "The minimal two-sheet spectral action gives the relative vector mass sqrt(6) m, against the tower mass m.").
source(l13_sqrt6, 'lemmas/13_gauge_sector_truncation.md', '').
depends(l13_sqrt6, l13_mass_formula).
depends(l13_sqrt6, l13_kk_mass).
attempted_by(l13_sqrt6, astra6).
checked_by(l13_sqrt6, claude_opus_5_5, by_hand).
checked_by(l13_sqrt6, terra_6_1, by_hand).
claim(l13_ccm, corollary, proved, "Corollary 7", "With the CCM Standard Model trace and one massive colour triplet of mass m, M_W = sqrt(3/8) m.").
source(l13_ccm, 'lemmas/13_gauge_sector_truncation.md', '').
depends(l13_ccm, l13_mass_formula).
depends(l13_ccm, hyp(ccm_relation)).
attempted_by(l13_ccm, astra6).
checked_by(l13_ccm, terra_6_1, by_hand).
claim(l13_rho, proposition, proved, "Proposition 8", "With a Higgs doublet, rho = 1 and M_W/M_Z = sqrt(5/8) at the CCM matching scale.").
source(l13_rho, 'lemmas/13_gauge_sector_truncation.md', '').
depends(l13_rho, l13_mass_formula).
attempted_by(l13_rho, astra6).
checked_by(l13_rho, terra_6_1, by_hand).
addresses(t4, l13_compression).  addresses(t4, l13_not_covariant).  addresses(t4, l13_sqrt6).  addresses(t4, l13_ccm).  addresses(t4b, l13_not_covariant).

claim(l06_neutral, theorem, proved, "Lemma 4, Proposition 7", "Neutral-sector criterion: KO-7 always exists; KO-5 exists iff every singular value of the neutral mass matrix has even multiplicity; generic Majorana masses exclude KO-5.").
source(l06_neutral, 'lemmas/06_vectorlike_odd_factorization.md', '').
depends(l06_neutral, l06_factorization).
attempted_by(l06_neutral, astra6).
checked_by(l06_neutral, claude_opus_5_5, by_hand).
checked_by(l06_neutral, terra_6_1, by_hand).


%% ---------------------------------------------------------------- prior work (paper/LITERATURE.md, 3 Nov 2026)
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
checked_by(l14_covariant, terra_6_1, by_hand).
claim(l14_image, theorem, proved, "Theorem 3", "For the mixed interval with gauge-invariant bulk mass the induced finite link has fixed singular values and does not supply the full two-sheet fluctuation space.").
source(l14_image, 'lemmas/14_gauge_covariant_reduction.md', '').
depends(l14_image, l14_covariant).
attempted_by(l14_image, astra6).
checked_by(l14_image, terra_6_1, by_hand).
claim(l14_sum_rule, theorem, proved, "Theorem 5", "At leading spectral-action order, M_spec = M_KK iff an explicit trace-and-overlap sum rule holds (M_spec^2 = (3/2) Q^-1/2 K Q^-1/2, M_KK^2 = G^-1/2 H G^-1/2).").
source(l14_sum_rule, 'lemmas/14_gauge_covariant_reduction.md', '').
depends(l14_sum_rule, l13_mass_formula).
depends(l14_sum_rule, l14_covariant).
attempted_by(l14_sum_rule, astra6).
checked_by(l14_sum_rule, claude_opus_5_5, by_hand).
checked_by(l14_sum_rule, terra_6_1, by_hand).
claim(l14_three_fifths, counterexample, proved, "Counterexample 6", "The covariant lowest-mode reduction at zero bulk mass gives M_spec^2 = (3/5) M_KK^2.").
source(l14_three_fifths, 'lemmas/14_gauge_covariant_reduction.md', '').
depends(l14_three_fifths, l14_sum_rule).
attempted_by(l14_three_fifths, astra6).
checked_by(l14_three_fifths, claude_opus_5_5, by_hand).
checked_by(l14_three_fifths, terra_6_1, by_hand).
claim(l14_tuned, proposition, proved, "Proposition 7", "Equality holds for some bulk mass 0 < M_* < 3 pi/(4l); the matched fermion sits at the tower scale.").
source(l14_tuned, 'lemmas/14_gauge_covariant_reduction.md', '').
depends(l14_tuned, l14_sum_rule).
depends(l14_tuned, l09_lightpair).
attempted_by(l14_tuned, astra6).
checked_by(l14_tuned, claude_opus_5_5, by_hand).
checked_by(l14_tuned, terra_6_1, by_hand).
claim(l14_nogo_collapse, no_go, proved, "No-go theorem 8", "Bounded light fermions give M_spec^2 <= 6 C^2 and cannot match the collapsing Neumann-Dirichlet tower pi/(2l).").
source(l14_nogo_collapse, 'lemmas/14_gauge_covariant_reduction.md', '').
depends(l14_nogo_collapse, l14_sum_rule).
depends(l14_nogo_collapse, l13_kk_mass).
attempted_by(l14_nogo_collapse, astra6).
checked_by(l14_nogo_collapse, claude_opus_5_5, by_hand).
checked_by(l14_nogo_collapse, terra_6_1, by_hand).
claim(l14_normalizations, proposition, proved, "Proposition 9", "Matching one vector mass does not fix relative gauge couplings or all scalar kinetic coefficients.").
source(l14_normalizations, 'lemmas/14_gauge_covariant_reduction.md', '').
depends(l14_normalizations, l14_sum_rule).
attempted_by(l14_normalizations, astra6).
checked_by(l14_normalizations, terra_6_1, by_hand).
addresses(t4b, l14_sum_rule).  addresses(t4b, l14_tuned).  addresses(t4b, l14_nogo_collapse).


claim(fl_R1, counterexample, proved, "Counterexample R1", "Theorem 2.5 of arXiv v1 of Farsi-Latremoliere, Theorem 3.4 in v3 and in J. London Math. Soc. 114 (2026) e70628, with the same six hypotheses and the step printed as (3.11): the printed hypotheses are insufficient, since a scalar-algebra family meets them and contradicts Corollary 3.5. Anticommutation of D_h and D_v, or the stated uniform relative bound, supplies a sufficient additional hypothesis; the anticommuting applications avoid this defect.").
source(fl_R1, 'historical/reviews/2026-11-03_farsi_latremoliere_assessment.md', '31-theorem-34-is-missing-a-hypothesis').
source(fl_R1, 'results/R1_counterexample_farsi_latremoliere.md', '').  % the statement, the failing step and the sufficient repairs, written out on 4 Nov 2026
attempted_by(fl_R1, claude_subagent).
checked_by(fl_R1, claude_opus_5_5, by_hand).
checked_by(fl_R1, terra_6_1, by_hand).  % report paper_note, item 49, on arXiv v3
checked_by(fl_R1, astra6, by_hand).  % Astra validation, 3 Nov 2026, item 4: against the journal text
claim(fl_R2, corollary, proved, "Corollary 15.5 (Lemma R2)", "The tuned interval of Theorem 9.9 converges in spectral propinquity to (C, C^2, m_f sigma_1), with min(sqrt(2)/2, l/2) <= Lambda_spec <= l/2 + l^2/(pi^2 + c^2), at distance at least min(sqrt(2)/2, (1/m_f - l)/2) from the Connes-Lott triple.").
source(fl_R2, 'lemmas/15_propinquity_collapse.md', 'the-gap-criterion-lemma-r2').
depends(fl_R2, l09_limits).
depends(fl_R2, l15_gap).
attempted_by(fl_R2, claude_subagent).
attempted_by(fl_R2, claude_opus_5_5).
checked_by(fl_R2, terra_6_1, by_hand).
claim(fl_R3, theorem, proved, "Theorem 15.2 (Lemma R3)", "Propinquity limits of commutative quantum compact metric spaces are commutative, and the number of connected components does not increase in the limit.").
source(fl_R3, 'lemmas/15_propinquity_collapse.md', 'limits-of-commutative-spaces-lemma-r3').
attempted_by(fl_R3, claude_subagent).
attempted_by(fl_R3, claude_opus_5_5).
checked_by(fl_R3, terra_6_1, by_hand).
claim(l15_gap, theorem, proved, "Theorem 15.3", "A metric triple with a finite spectral block and gap g has min(sqrt(2)/2, delta/2) <= Lambda_spec(T, (C, C^N, D_F)) <= 1/g^2 + max(delta/2, Delta) + Delta + sqrt(Delta); no anticommutation hypothesis.").
source(l15_gap, 'lemmas/15_propinquity_collapse.md', 'the-gap-criterion-lemma-r2').
attempted_by(l15_gap, claude_opus_5_5).
checked_by(l15_gap, terra_6_1, by_hand).
claim(l15_yukawa, corollary, proved, "Corollary 15.6", "The towerless Yukawa family of Theorem 12.7 converges at rate O(l) to (C, C^(N_Q+N_U), D_F) with D_F the Yukawa block Phi_Q Y_hat Phi_U.").
source(l15_yukawa, 'lemmas/15_propinquity_collapse.md', 'the-gap-criterion-lemma-r2').
depends(l15_yukawa, l15_gap).
attempted_by(l15_yukawa, claude_opus_5_5).
checked_by(l15_yukawa, terra_6_1, by_hand).
claim(l15_converse, theorem, proved, "Theorem 15.7", "Convergence to (C, C^N, D_F) in Lambda_spec holds iff the diameter tends to 0 and there exist light projections and identifying unitaries with light-block error tending to 0 and exterior gap tending to infinity.").
source(l15_converse, 'lemmas/15_propinquity_collapse.md', 'the-converse').
depends(l15_converse, l15_gap).
attempted_by(l15_converse, claude_opus_5_5).
checked_by(l15_converse, terra_6_1, by_hand).
claim(l15_finite_limits, corollary, proved, "Corollary 15.8", "The finite limits in Lambda_spec of connected commutative metric triples are exactly (C, C^N, D_F), with every Hermitian D_F arising. A statement about this metric only.").
source(l15_finite_limits, 'lemmas/15_propinquity_collapse.md', 'the-converse').
depends(l15_finite_limits, fl_R3).
depends(l15_finite_limits, l15_converse).
attempted_by(l15_finite_limits, claude_opus_5_5).
checked_by(l15_finite_limits, terra_6_1, by_hand).
claim(l15_grading, proposition, proved, "Proposition 15.9", "For a symmetric spectral block, the signs and Dirac relations of gamma and J descend exactly for the compressed operator D_B. Relative to an independently chosen D_F, the Dirac-relation defects are at most 2 Delta; control of J requires the stated extension to antilinear functionals.").
source(l15_grading, 'lemmas/15_propinquity_collapse.md', 'grading-and-real-structure').
depends(l15_grading, l15_gap).
attempted_by(l15_grading, claude_opus_5_5).
checked_by(l15_grading, terra_6_1, by_hand).
claim(l16_interval_algebra, claim, proved, "Example 16(b)", "The compression of C([0,l]) to the second spectral level of the chiral interval is a 4-dimensional operator system generating M_2(C) + M_2(C), at fixed truncation.").
source(l16_interval_algebra, 'lemmas/16_coarse_truncation.md', 'setting').
attempted_by(l16_interval_algebra, claude_opus_5_5).
checked_by(l16_interval_algebra, claude_opus_5_5, python("numpy quadrature: dimensions 4 and 8, the two displayed compressions")).
checked_by(l16_interval_algebra, terra_6_1, by_hand).
claim(l16_standard_nogo, no_go, proved, "Proposition 16.1", "With pointwise reality J a J^-1 = a*, the compressed data with inherited J satisfy order zero iff the generated algebra is commutative.").
source(l16_standard_nogo, 'lemmas/16_coarse_truncation.md', 'the-standard-correspondence').
attempted_by(l16_standard_nogo, claude_opus_5_5).
checked_by(l16_standard_nogo, terra_6_1, by_hand).
checked_by(l16_standard_nogo, astra6, by_hand).
claim(l16_coarse, theorem, proved, "Theorem 16.2", "On H_0 (x) conj(H_0), with the graded flip J and DD = D_0 (x) 1 + gamma_0 (x) D^c, A_0 acting on the left gives a real even triple with signs (+,+,+), order zero and order one.").
source(l16_coarse, 'lemmas/16_coarse_truncation.md', 'the-coarse-correspondence').
attempted_by(l16_coarse, claude_opus_5_5).
checked_by(l16_coarse, claude_opus_5_5, python("numpy on random finite data: all signs, order zero, order one")).
checked_by(l16_coarse, terra_6_1, by_hand).
claim(l16_truncation, corollary, proved, "Corollaries 16.3 and 16.4", "The truncation of the doubled parent is a finite real even triple with order zero and order one for every generated algebra, noncommutative or not; a Clifford point gives the KO-6 signs and dim H = 2 k^2.").
source(l16_truncation, 'lemmas/16_coarse_truncation.md', 'the-coarse-correspondence').
depends(l16_truncation, l16_coarse).
attempted_by(l16_truncation, claude_opus_5_5).
checked_by(l16_truncation, claude_opus_5_5, python("numpy on random finite data: KO-6 signs")).
checked_by(l16_truncation, terra_6_1, by_hand).
claim(t0_note_overread, claim, refuted, "Earlier T0 note", "A noncommutative A_F must come from compressions, operator systems or a noncommutative parent, and compressions being operator systems forces the algebra to be produced by a limit.").
source(t0_note_overread, 'historical/reviews/2026-11-03_t0_note_assessment.md', 'claim-by-claim').
attempted_by(t0_note_overread, claude_opus_5_5).
claim(l10_generates_m4, counterexample, proved, "Proposition 10.1 and example 16(c)", "Compression of functions on connected CP^3 generates M_4(C) with no limit, against the earlier T0 note.").
source(l10_generates_m4, 'lemmas/16_coarse_truncation.md', 'setting').
depends(l10_generates_m4, l10_toeplitz).
attempted_by(l10_generates_m4, claude_opus_5_5).
checked_by(l10_generates_m4, terra_6_1, by_hand).  % report 15_16, under Proposition 10.1 and example (c)
refuted_by(t0_note_overread, l10_generates_m4).
%% Referee of lemmas 15 and 16 (Terra 6.1, 3 Nov 2026): historical/reviews/2026-11-03_terra_check_15_16.md
claim(l15_first_order, proposition, proved, "Proposition 15.10", "In a finite real triple with order zero and order one, if D commutes with u J u J^-1 then [D, u] = 0; in a metric such triple, u is scalar.").
source(l15_first_order, 'lemmas/15_propinquity_collapse.md', 'unbroken-symmetry-and-the-metric-class').
attempted_by(l15_first_order, terra_6_1).
checked_by(l15_first_order, claude_opus_5_5, by_hand).
claim(l15_symmetry_ce, counterexample, proved, "Counterexample 15.11", "A metric triple on M_2(C) with D the traceless projection has every conjugation commuting with D; it fails order one.").
source(l15_symmetry_ce, 'lemmas/15_propinquity_collapse.md', 'unbroken-symmetry-and-the-metric-class').
attempted_by(l15_symmetry_ce, terra_6_1).
checked_by(l15_symmetry_ce, claude_opus_5_5, by_hand).
claim(t0_unbroken_unrestricted, claim, refuted, "First version of the T0 section of lemma 15", "A metric spectral triple excludes every unbroken inner gauge symmetry.").
source(t0_unbroken_unrestricted, 'historical/reviews/2026-11-03_terra_check_15_16.md', 'i-unbroken-symmetry-and-the-standard-model').
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

hypothesis(sheet_diagonal_ps, "At the Pati-Salam step of lemma 41 the finite D is sheet-diagonal, of the form of Corollary 16.8 (a Pati-Salam-symmetric Yukawa, no Majorana block), so that order one holds there; with the Majorana block order one fails and Theorem 20.2 selects A_SM.").
hypothesis(ccm_relation, "Chamseddine-Connes-Marcolli normalization at the matching scale: 8 M_W^2 = sum of N_f m_f^2 over Dirac masses.").
hypothesis(positive_rank, "The twisting bundle has positive rank, with the equivariant self-adjoint realization.").
hypothesis(heat_kernel_spectral_action, "Heat-kernel cutoff spectral action with a vectorial gauge background commuting with the mass matrix.").

%% ---------------------------------------------------------------- historical/corpus/connes_kk_research_state.md section 8 (parsed)
claim(rs_G1, claim, proved, "proved geometrically", "The \\(7\\to6\\to5\\) orbit dimensions occur in a smooth commutative 7-manifold: proved geometrically. The product parent is non-spin.").
source(rs_G1, 'historical/corpus/connes_kk_research_state.md', '21-a-commutative-11--10--9-pattern').
overturn(rs_G1, "A physical realization also requires a suitable twist and fields solving the equations.").
attempted_by(rs_G1, corpus).
claim(rs_G2, claim, proved, "proved", "\\(\\Lambda_{p,q}=\\mathbb Z^2+\\mathbb Z(1,q)/p\\), and primitive lattice vectors give closed circles: proved.").
source(rs_G2, 'historical/corpus/connes_kk_research_state.md', '31-all-globally-closed-torus-circles').
overturn(rs_G2, "A different quotient action or ineffectively normalized torus requires recalculation.").
attempted_by(rs_G2, corpus).
claim(rs_G2a, claim, proved, "proved by the Hopf quotient", "\\(L(p,1)\\) is a smooth principal circle bundle over \\(\\mathbb{CP}^1\\) with Chern number \\(\\pm p\\): proved by the Hopf quotient.").
source(rs_G2a, 'historical/corpus/connes_kk_research_state.md', '21-a-commutative-11--10--9-pattern').
overturn(rs_G2a, "A noncentral quotient or a different reduction circle requires a different bundle or an orbifold treatment.").
attempted_by(rs_G2a, corpus).
claim(rs_G3, claim, proved, "proved in the displayed KK ansatz; quadrature verified", "Berger formula and \\(p\\)-cancellation: proved in the displayed KK ansatz; quadrature verified.").
source(rs_G3, 'historical/corpus/connes_kk_research_state.md', '32-one-precise-berger-calculation').
overturn(rs_G3, "Extra action terms, changed gauge embedding, broken \\(U(2)\\) isometry or thresholds invalidate direct physical use.").
attempted_by(rs_G3, corpus).
checked_by(rs_G3, corpus, not_recorded("numerical quadrature reported in section 3.2; language not recorded")).
claim(rs_G4, claim, proved, "proved by two metrics on the same \\(L(5,1)\\)", "Quotient topology alone fixes no angle: proved by two metrics on the same \\(L(5,1)\\).").
source(rs_G4, 'historical/corpus/connes_kk_research_state.md', '').
depends(rs_G4, rs_G2).
depends(rs_G4, rs_G3).
overturn(rs_G4, "A specified physical theory may forbid one metric; it must prove an additional selection law.").
attempted_by(rs_G4, corpus).
claim(rs_G5, claim, conditional, "conditional on a closed primitive neutral circle and exact deck–center intersection", "\\(p=5\\) gives \\(5/8\\): conditional on a closed primitive neutral circle and exact deck–center intersection, not a topology-only result.").
source(rs_G5, 'historical/corpus/connes_kk_research_state.md', '42-a-precise-conditional-occurrence-of-p5').
depends(rs_G5, rs_G3).
overturn(rs_G5, "Allowing dense neutral flow or just deck containment removes the unique \\(p=5\\) inference.").
attempted_by(rs_G5, corpus).
claim(rs_G6, claim, conditional, "proved conditionally", "The \\(p=5\\) neutral quotient is a weighted-projective orbifold: proved conditionally.").
source(rs_G6, 'historical/corpus/connes_kk_research_state.md', '').
depends(rs_G6, rs_G5).
overturn(rs_G6, "A different reduction circle or a different geometric quotient need not have this stabilizer.").
attempted_by(rs_G6, corpus).
claim(rs_G7, claim, proved, "proved in the chosen embedding", "At the \\(z_1=0\\) endpoint, the original \\(Q=T_3+Y\\) acts trivially tangentially and rotates the normal plane: proved in the chosen embedding.").
source(rs_G7, 'historical/corpus/connes_kk_research_state.md', '53-the-endpoint-geometry-charge-and-spin-structure').
overturn(rs_G7, "A normal-bundle gauge field or a different geometric embedding may realize electromagnetism by another route.").
attempted_by(rs_G7, corpus).
claim(rs_G8, claim, proved, "proved", "\\(\\mathbb{CP}^2\\times S^1\\) has no ordinary spin structure, and \\(s+q\\ell\\equiv0\\bmod p\\) for the stated scalar normal modes: proved.").
source(rs_G8, 'historical/corpus/connes_kk_research_state.md', '53-the-endpoint-geometry-charge-and-spin-structure').
overturn(rs_G8, "Spin-\\(c\\), other bundle twists and different spin lifts alter the fermionic mode rule.").
attempted_by(rs_G8, corpus).
claim(rs_G9, claim, proved, "proved geometrically", "\\(N=S(Q)\\) is spin and has the three displayed \\(S^1,S^2,S^3\\) bundle projections: proved geometrically.").
source(rs_G9, 'historical/corpus/connes_kk_research_state.md', '23-a-spin-seven-manifold-with-flag-and-sphere-quotients').
overturn(rs_G9, "A proposed background may fail the field equations or choose incompatible flux, spin lift or metric.").
attempted_by(rs_G9, corpus).
claim(rs_G10, claim, proved, "proved", "Neither \\(F_3\\) nor \\(\\mathbb{CP}^2\\times\\mathbb{CP}^1\\) has a smooth surjective submersion to a five-manifold or a uniformly sectional-curvature-bounded collapse to a fixed smooth closed 5D target: proved.").
source(rs_G10, 'historical/corpus/connes_kk_research_state.md', '23-a-spin-seven-manifold-with-flag-and-sphere-quotients').
overturn(rs_G10, "Singular collapse, unbounded curvature, a stratified or boundary endpoint, and other six-manifolds are outside the statement.").
attempted_by(rs_G10, corpus).
claim(rs_G11, claim, proved, "proved", "Flag and product have different integral cohomology rings and spin properties: proved.").
source(rs_G11, 'historical/corpus/connes_kk_research_state.md', '24-projective-candidates-spin-and-the-quaternionic-hopf-bundle').
overturn(rs_G11, "Different spaces or twisted structures require a separate comparison.").
attempted_by(rs_G11, corpus).
claim(rs_G12, claim, proved, "proved", "The displayed torus/Weyl quotient is \\(\\mathbb{CP}^2\\times\\mathbb{CP}^1\\) as a complex variety: proved.").
source(rs_G12, 'historical/corpus/connes_kk_research_state.md', '25-an-exact-torus-quotient-with-fixed-points').
overturn(rs_G12, "It is not a free quotient or a smooth flat metric quotient; another finite-group action may differ.").
attempted_by(rs_G12, corpus).
claim(rs_G13, claim, proved, "proved", "\\(S(Q)\\) and the \\(c_2=\\pm2\\) pulled-back quaternionic Hopf bundle are distinct: proved.").
source(rs_G13, 'historical/corpus/connes_kk_research_state.md', '24-projective-candidates-spin-and-the-quaternionic-hopf-bundle').
overturn(rs_G13, "Altering either bundle changes the comparison.").
attempted_by(rs_G13, corpus).
claim(rs_E1, claim, conditional, "proved conditionally", "Spectral-action and Berger \\(5/8\\) use compatible local charge conventions: proved conditionally.").
source(rs_E1, 'historical/corpus/connes_kk_research_state.md', '33-comparison-with-the-reported-14-and-spectral-action-58').
overturn(rs_E1, "A mismatch in represented charges, normalization, global gauge group or scale defeats physical identification.").
attempted_by(rs_E1, corpus).
claim(rs_E2, claim, not_reconstructed, "not reconstructed from the parallel transcript", "Reported flag \\(1/4\\): not reconstructed from the parallel transcript.").
source(rs_E2, 'historical/corpus/connes_kk_research_state.md', '33-comparison-with-the-reported-14-and-spectral-action-58').
overturn(rs_E2, "The original flag embedding or kinetic matrix could give another ratio.").
attempted_by(rs_E2, corpus).
claim(rs_E3, claim, proved, "proved in that model", "Same-metric orbit model has \\(\\rho=\\xi^{-2}\\), so \\(5/8\\) and \\(\\rho=1\\) are incompatible: proved in that model.").
source(rs_E3, 'historical/corpus/connes_kk_research_state.md', '5-the-fermi-scale-and-an-independent-mass-test').
overturn(rs_E3, "A derived extra mass sector, threshold corrections, or a different model can evade the premises.").
attempted_by(rs_E3, corpus).
claim(rs_E4, claim, proved, "proved in the single-\\(W\\) orbit model", "\\(G_F=1/(\\sqrt2\\kappa a^2)\\): proved in the single-\\(W\\) orbit model, not a geometric prediction of \\(G_F\\).").
source(rs_E4, 'historical/corpus/connes_kk_research_state.md', '').
depends(rs_E4, rs_E3).
overturn(rs_E4, "Additional light mediators, different current normalization or a derived \\(\\kappa\\) change the inference.").
attempted_by(rs_E4, corpus).
claim(rs_E5, claim, conditional, "proved conditionally", "In the fixed-coupling \\(M_W\\to\\infty\\) limit the tree-level Fermi coefficient tends to zero; beta decay is absent if no other charged-current operator survives: proved conditionally.").
source(rs_E5, 'historical/corpus/connes_kk_research_state.md', '51-the-9d-endpoint-and-beta-decay').
overturn(rs_E5, "Independent contact interactions, other mediators, or nonstandard simultaneous coupling scaling change the conclusion.").
attempted_by(rs_E5, corpus).
claim(rs_F1, claim, conditional, "conditional algebraic derivation", "The chosen dominant top \\(T\\) has centralizer \\(\\mathbb C\\oplus M_3(\\mathbb C)\\): conditional algebraic derivation.").
source(rs_F1, 'historical/corpus/connes_kk_research_state.md', '72-the-reported-heavy-top-selection').
overturn(rs_F1, "A different \\(T\\), representation, color action, or degeneracy alters the centralizer.").
attempted_by(rs_F1, corpus).
claim(rs_F2, claim, proved, "proved as logical constructions", "Algebra centralization, kernel compression and lifted gauge stabilization are distinct: proved as logical constructions.").
source(rs_F2, 'historical/corpus/connes_kk_research_state.md', '72-the-reported-heavy-top-selection').
overturn(rs_F2, "Equivalence in any specific model requires a separate explicit isomorphism.").
attempted_by(rs_F2, corpus).
claim(rs_F3, claim, reference, "standard result", "A single 9D Majorana scalar bilinear vanishes, while paired real fields and complex Dirac fields can have mass: standard result.").
source(rs_F3, 'historical/corpus/connes_kk_research_state.md', '52-massive-9d-spinors-and-4d-dirac-masses').
overturn(rs_F3, "A non-scalar background coupling, broken 9D symmetry, different gauge module or 4D effective mass is a different question.").
attempted_by(rs_F3, corpus).
claim(rs_F4, claim, proved, "proved in the elementary electroweak model", "At fixed \\(g_2\\), the usual \\(v\\to\\infty\\) weak limit keeps \\(m_f\\ne0\\) only with \\(y_f\\sim1/v\\): proved in the elementary electroweak model.").
source(rs_F4, 'historical/corpus/connes_kk_research_state.md', '55-a-second-endpoint-s5-and-the-correlated-weak-limit').
overturn(rs_F4, "Independent mass generation or other mediators change the conclusion.").
attempted_by(rs_F4, corpus).
claim(rs_N1, claim, proved, "proved; finite-matrix checked", "The compressed operator system has complex dimension \\(12\\), while the generated algebra is the stated three matrix blocks of dimension \\(14\\): proved; finite-matrix checked.").
source(rs_N1, 'historical/corpus/connes_kk_research_state.md', '62-an-exact-1oplus2oplus3-construction').
overturn(rs_N1, "A different bundle, projection or demand that compression itself be a homomorphism changes the claim.").
attempted_by(rs_N1, corpus).
checked_by(rs_N1, corpus, not_recorded("finite-matrix computation of the complex dimension, section 6.2")).
claim(rs_N1a, claim, proved, "proved; finite-matrix checked", "At \\(p=5\\), the degree-one projective doublet is not an untwisted scalar Hopf mode; the first positive compatible degree gives a six-dimensional holomorphic sector: proved; finite-matrix checked.").
source(rs_N1a, 'historical/corpus/connes_kk_research_state.md', '62-an-exact-1oplus2oplus3-construction').
depends(rs_N1a, rs_G2a).
overturn(rs_N1a, "A flat deck-character twist, different field bundle or another spectral sector changes the selection rule.").
attempted_by(rs_N1a, corpus).
checked_by(rs_N1a, corpus, not_recorded("finite-matrix rank calculation, section 6.2")).
claim(rs_N1b, claim, proved, "proved within the two displayed constructions", "At fixed projective base and bundle, changing the Hopf radius varies the Berger angle while leaving that base zero-mode algebra fixed: proved within the two displayed constructions.").
source(rs_N1b, 'historical/corpus/connes_kk_research_state.md', '62-an-exact-1oplus2oplus3-construction').
depends(rs_N1b, rs_G2a).
depends(rs_N1b, rs_G3).
overturn(rs_N1b, "A physical full-operator spectral threshold can change the retained sector and requires separate analysis.").
attempted_by(rs_N1b, corpus).
claim(rs_N2, claim, proved, "proved", "This zero-mode model has no inherited KO-6 structure or Dirac one-forms; no symmetric cutoff of the same index-\\(6\\) operator can supply an anti-commuting \\(J\\) for the inherited grading: proved.").
source(rs_N2, 'historical/corpus/connes_kk_research_state.md', '63-the-zero-mode-obstruction-and-the-higher-mode-obstruction').
depends(rs_N2, rs_N1).
overturn(rs_N2, "An opposite-index sector, different graded correspondence, or a changed representation escapes the hypotheses.").
attempted_by(rs_N2, corpus).
claim(rs_N3, claim, proved, "proved", "Higher modes of the same diagonal background cannot generate cross-bundle one-forms: proved.").
source(rs_N3, 'historical/corpus/connes_kk_research_state.md', '63-the-zero-mode-obstruction-and-the-higher-mode-obstruction').
depends(rs_N3, rs_N1).
depends(rs_N3, rs_N2).
overturn(rs_N3, "A derived operator that mixes the bundle summands or a different correspondence evades the hypothesis.").
attempted_by(rs_N3, corpus).
claim(rs_N4, claim, conditional, "proved conditionally", "Naively inherited \\(J\\) fails order-zero for noncommuting compressions: proved conditionally.").
source(rs_N4, 'historical/corpus/connes_kk_research_state.md', '63-the-zero-mode-obstruction-and-the-higher-mode-obstruction').
overturn(rs_N4, "A different bimodule/real structure, or absence of a parent \\(J\\), escapes the lemma.").
attempted_by(rs_N4, corpus).
claim(rs_N5, claim, proved, "proved by direct calculation (exact algebra)", "A doubled \\(\\mathbb C\\oplus\\mathbb H\\) toy model has KO-6 signs, order-zero, first-order and nonzero one-forms, but fails finite orientability: explicit finite-matrix calculation.").
source(rs_N5, 'historical/corpus/connes_kk_research_state.md', '64-continuing-the-obstruction-test-a-finite-repair-and-orientability').
overturn(rs_N5, "A different representation may satisfy orientability; it would still need a controlled geometric derivation.").
checked_by(rs_N5, claude_opus_5_5, by_hand).  % 3 Nov 2026
attempted_by(rs_N5, corpus).
claim(rs_N6, claim, proved, "proved by direct calculation (exact algebra)", "An 18-dimensional bimodule over \\(\\mathbb C\\oplus\\mathbb H\\oplus M_3(\\mathbb C)\\) satisfies KO-6 signs, order-zero, first-order, orientability and nonzero one-forms; the intersection pairing has rank \\(2\\): explicit finite-matrix calculation.").
source(rs_N6, 'historical/corpus/connes_kk_research_state.md', '65-an-orientable-real-bimodule-from-the-1oplus2oplus3-spaces').
overturn(rs_N6, "A different bimodule can alter the pairing entries, but the odd-rank obstruction N7 persists; a KK derivation and gauge lift remain unproved.").
checked_by(rs_N6, claude_opus_5_5, by_hand).  % 3 Nov 2026
attempted_by(rs_N6, corpus).
claim(rs_N7, claim, proved, "proved under the trace-pairing definition", "The ordinary finite intersection form for a real KO-6 bimodule over the three-summand \\(A_F\\) is skew and hence singular: proved under the trace-pairing definition.").
source(rs_N7, 'historical/corpus/connes_kk_research_state.md', '65-an-orientable-real-bimodule-from-the-1oplus2oplus3-spaces').
overturn(rs_N7, "A different real Kasparov duality or multi-class construction is not decided by this matrix.").
attempted_by(rs_N7, corpus).
claim(rs_N8, claim, proved, "proved for the colour-preserving bridge exchange", "An orientable four-summand parent can reduce to a nonorientable, faithful three-summand finite triple with nonzero one-forms, while preserving first-order throughout: explicit 32D finite-matrix model.").
source(rs_N8, 'historical/corpus/connes_kk_research_state.md', '66-orientation-loss-under-a-heavy-centralizer-and-spectral-projection').
source(rs_N8, 'results/orientability_under_heavy_centralizer.md', '').  % statement and the proof by hand of Terra 6.1, written out on 4 Nov 2026
overturn(rs_N8, "Projection alone preserves orientability and makes the two scalar states infinitely distant; the algebra restriction and the geometric justification remain independent requirements.").
checked_by(rs_N8, terra_6_1, by_hand).  % referee, 3 Nov 2026
%% rs_N8 amended in place: the bridge exchange is the colour-preserving swap (section 6.6).
attempted_by(rs_N8, corpus).
claim(rs_N9, claim, proved, "proved", "A nonzero grading-odd bimodule-linear finite mass forbids the usual finite orientability cycle: proved, with the published QED triple as a concrete example.").
source(rs_N9, 'historical/corpus/connes_kk_research_state.md', '54-direct-link-between-a-central-dirac-mass-and-finite-orientability').
overturn(rs_N9, "Mere gauge invariance or the absence of a propagating Higgs is weaker and does not entail the result.").
attempted_by(rs_N9, corpus).
claim(rs_N10, claim, proved, "proved by direct calculation (exact algebra)", "A relative \\(U(1)\\) can act through the real lift while the inner automorphism group is trivial: explicit matrix calculation.").
source(rs_N10, 'historical/corpus/connes_kk_research_state.md', '68-gauge-symmetry-on-each-side').
overturn(rs_N10, "A different \\(J\\) or representation changes the kernel and gauge lift.").
checked_by(rs_N10, claude_opus_5_5, by_hand).  % 3 Nov 2026
attempted_by(rs_N10, corpus).
claim(rs_N11, claim, proved, "proved and numerically checked", "Round-sphere rotations become inner automorphisms of the compressed \\(M_2\\) algebra: proved and numerically checked.").
source(rs_N11, 'historical/corpus/connes_kk_research_state.md', '69-an-isometry-becoming-inner-after-compression').
overturn(rs_N11, "Other projections or backgrounds can break equivariance or alter the resulting algebra.").
attempted_by(rs_N11, corpus).
checked_by(rs_N11, corpus, not_recorded("numerical check reported in section 6.9")).
claim(rs_N12, claim, proved, "proved under the bounded-perturbation assumptions", "A gapped Dirac family has a finite low-energy sector with the stated \\(O(R)\\) Feshbach correction: proved under the bounded-perturbation assumptions.").
source(rs_N12, 'historical/corpus/connes_kk_research_state.md', '610-what-towerless-can-mean').
overturn(rs_N12, "Missing zero modes, closing gap, or unbounded \\(R\\)-dependent couplings require a new estimate.").
attempted_by(rs_N12, corpus).
claim(rs_N13, claim, proved, "proved under the displayed assumptions", "The standard connected metric collapse selects asymptotically constant bounded-Lipschitz scalar functions; the simple \\((M_2,\\mathbb C^2,0)\\) projection does not reproduce the collapsing spectral metric: proved under the displayed assumptions.").
source(rs_N13, 'historical/corpus/connes_kk_research_state.md', '610-what-towerless-can-mean').
depends(rs_N13, rs_N11).
depends(rs_N13, rs_N12).
overturn(rs_N13, "Different rescaling, correspondence, spectral data, or an explicitly derived finite geometry are separate possibilities.").
attempted_by(rs_N13, corpus).
claim(rs_N14, claim, proved, "proved as a logical limitation", "Isometry–inner group agreement produces neither the Standard Model finite triple nor coupling matching by itself: proved as a logical limitation.").
source(rs_N14, 'historical/corpus/connes_kk_research_state.md', '68-gauge-symmetry-on-each-side').
overturn(rs_N14, "An explicit model satisfying the missing geometric and representation data would establish more, not contradict this limitation.").
attempted_by(rs_N14, corpus).
claim(rs_N15, claim, proved, "proved", "The flag-fiber kernels are \\(1,Q^*,\\operatorname{Sym}^2Q^*\\); they define a nonconstant matrix algebra bundle and a nonconstant quaternion algebra bundle: proved.").
source(rs_N15, 'historical/corpus/connes_kk_research_state.md', '611-flag-fiber-zero-modes-and-a-quaternion-algebra-bundle').
overturn(rs_N15, "Other twists or a different projection change the bundles; a derived bimodule and KO-6 structure remain separate.").
attempted_by(rs_N15, corpus).
claim(rs_N16, claim, proved, "proved under the stated \\(SU(2)\\)-compatible twist", "The \\(N\\to S^5\\) degree-two fiber kernel is a quaternionic line with nonzero reduced \\(KSp\\) class, and the corresponding twisted base Dirac kernel has odd parity: proved under the stated \\(SU(2)\\)-compatible twist. The homogeneous singlet is neutral under the specified real Hopf lift.").
source(rs_N16, 'historical/corpus/connes_kk_research_state.md', '612-the-s5-reduction-and-a-protected-real-index-mode').
overturn(rs_N16, "A connection breaking quaternionic compatibility, a different circle lift, conjugate-sector mixing or a different background changes the applicable operator.").
attempted_by(rs_N16, corpus).
claim(rs_N17, claim, proved, "proved under the stated spectral assumptions", "The associated connection-metric family has a twisted 7D eigenvalue within \\(C\\varepsilon\\) of zero; the \\(SU(3)\\)-homogeneous subfamily has an exact zero for every \\(\\varepsilon>0\\): proved under the stated spectral assumptions.").
source(rs_N17, 'historical/corpus/connes_kk_research_state.md', '612-the-s5-reduction-and-a-protected-real-index-mode').
depends(rs_N17, rs_N16).
overturn(rs_N17, "Different background terms or the pulled-back Fubini–Study connection change the effective operator; no 11D solution is implied.").
attempted_by(rs_N17, corpus).
claim(rs_N18, claim, proved, "proved; exact finite-matrix checked", "The stated torus crossed product has a finite quotient \\(\\mathbb C\\oplus M_2\\oplus M_3\\): proved; exact finite-matrix checked.").
source(rs_N18, 'historical/corpus/connes_kk_research_state.md', '613-torus-crossed-product-finite-quotient-versus-mode-compression').
overturn(rs_N18, "Another group action, a required real structure or an actual spectral cutoff demands additional work.").
attempted_by(rs_N18, corpus).
checked_by(rs_N18, corpus, not_recorded("exact finite-matrix check reported in section 6.13")).
claim(rs_N19, claim, proved, "proved", "A nonzero finite-rank compression of all scalar multipliers on a nonatomic space cannot be multiplicative: proved.").
source(rs_N19, 'historical/corpus/connes_kk_research_state.md', '613-torus-crossed-product-finite-quotient-versus-mode-compression').
overturn(rs_N19, "Atomic measures, approximate or nonmultiplicative compression, and abstract quotient representations are outside the statement.").
attempted_by(rs_N19, corpus).
claim(rs_N20, claim, proved, "proved", "The torus Weyl action has no honest equivariant ordinary spin lift at the transposition fixed point: proved.").
source(rs_N20, 'historical/corpus/connes_kk_research_state.md', '613-torus-crossed-product-finite-quotient-versus-mode-compression').
overturn(rs_N20, "A spin-\\(c\\), projective or internally twisted action is a different construction.").
attempted_by(rs_N20, corpus).
claim(rs_N21, claim, conditional, "proved conditionally", "The natural connection-Laplacian zero-mode algebra of the displayed flag or \\(S^5\\) endomorphism bundles is \\(\\mathbb C^3\\): proved conditionally.").
source(rs_N21, 'historical/corpus/connes_kk_research_state.md', '611-flag-fiber-zero-modes-and-a-quaternion-algebra-bundle').
overturn(rs_N21, "Other operators, background couplings, gauge-isometry modes or unrelated connections can change the massless spectrum.").
attempted_by(rs_N21, corpus).
claim(rs_K1, claim, proved, "proved", "The specified six-dimensional function algebra and \\(A_F\\) are not directly KK-equivalent: proved.").
source(rs_K1, 'historical/corpus/connes_kk_research_state.md', '71-the-k-theory-obstruction-has-a-precise-scope').
overturn(rs_K1, "Changing the comparison algebra or asking only for a noninvertible correspondence avoids the conclusion.").
attempted_by(rs_K1, corpus).
claim(rs_K2, claim, conditional, "conditional illustration, without a construction for this model", "A KO-6 factor can survive a metric collapse in principle: conditional illustration, without a construction for this model.").
source(rs_K2, 'historical/corpus/connes_kk_research_state.md', '22-metric-dimension-chirality-and-ko-dimension').
overturn(rs_K2, "Failure of a vertical zero mode or inability to define the required real structure in the chosen family.").
attempted_by(rs_K2, corpus).
claim(rs_K3, claim, proved, "proved", "Product and flag are complex \\(KK\\)-equivalent but the standard real forms are not \\(KKO\\)-equivalent: proved.").
source(rs_K3, 'historical/corpus/connes_kk_research_state.md', '71-the-k-theory-obstruction-has-a-precise-scope').
overturn(rs_K3, "Different real structures, noninvertible cycles or dropping the requirement of an invertible equivalence are separate questions.").
attempted_by(rs_K3, corpus).
claim(rs_K4, claim, proved, "proved by the spin-submersion theorem", "The \\(N\\to S^5\\) twisted Dirac operator factors through the vertical family in complex Kasparov theory: proved by the spin-submersion theorem.").
source(rs_K4, 'historical/corpus/connes_kk_research_state.md', '612-the-s5-reduction-and-a-protected-real-index-mode').
overturn(rs_K4, "The factorization does not imply an equivalence to \\(A_F\\), a finite KO-6 triple, or a dynamical solution.").
attempted_by(rs_K4, corpus).
claim(rs_D1, claim, open, "open", "A common stabilized geometry fixes both \\(5/8\\) and \\(G_F\\) without unrelated tunings: open.").
source(rs_D1, 'historical/corpus/connes_kk_research_state.md', '').
depends(rs_D1, rs_E1).
depends(rs_D1, rs_E3).
depends(rs_D1, rs_E4).
depends(rs_D1, rs_G3).
overturn(rs_D1, "Any candidate is falsified if the solutions retain free shape/scale moduli or fail the mass and coupling relations.").
attempted_by(rs_D1, corpus).
%% ---------------------------------------------------------------- historical/corpus/canonical_research.md status labels (parsed)
claim(paper_1_1, claim, proved, "Proved distinction.", "Its product KO-degree is $4+6=10$ modulo eight. This does not assert ten ordinary metric dimensions [19].").
source(paper_1_1, 'historical/corpus/canonical_research.md', '1-what-the-numbers-9-10-and-11-mean').
attempted_by(paper_1_1, corpus).
claim(paper_2_1_1, claim, example, "Example", "(proved: the spectrum is derived in `historical/corpus/research_note.md` §2; checked numerically in Python, historical/corpus/research_checks_knowledge.md §1.1-1.2). A doubled matrix approximation to a two-sphere, with matrix size $N$ and").
source(paper_2_1_1, 'historical/corpus/canonical_research.md', '21-heat-dimension-and-the-order-of-limits').
attempted_by(paper_2_1_1, corpus).
checked_by(paper_2_1_1, corpus, python("see historical/corpus/research_checks_knowledge.md")).
claim(paper_2_2_1, claim, proved, "Proved.", "This has an embedded norm-resolvent limit on the light space, with finite operator $PSP$. Bounded light-heavy mixing is allowed. Finite-dimensional perturbation gives a unitary $1+O(t^{-1})$ identifying the low spectral").
source(paper_2_2_1, 'historical/corpus/canonical_research.md', '22-heavy-finite-operators').
attempted_by(paper_2_2_1, corpus).
claim(paper_3_1, claim, proved, "Proved; checked numerically in Python", "(historical/corpus/research_checks_knowledge.md §2). Its algebra commutant requires").
source(paper_3_1, 'historical/corpus/canonical_research.md', '3-the-finite-algebra-chain-and-the-electron').
attempted_by(paper_3_1, corpus).
checked_by(paper_3_1, corpus, python("see historical/corpus/research_checks_knowledge.md")).
claim(paper_4_1, claim, proved, "Proved", "in `historical/corpus/research_note.md` §4; checked numerically in Python (historical/corpus/research_checks_knowledge.md §1.5). Compressed real base functions generate $M_2(\\mathbb H)$; real functions on the total projective space generat").
source(paper_4_1, 'historical/corpus/canonical_research.md', '4-the-six-dimensional-twistor-geometry-and-the-higgs').
attempted_by(paper_4_1, corpus).
checked_by(paper_4_1, corpus, python("see historical/corpus/research_checks_knowledge.md")).
claim(paper_5_1, claim, proved, "Proved:", "At $(\\mathbb Ce_1,e_2)$, its SU(3) stabilizer is $\\operatorname{diag}(e^{it},1,e^{-it})$. Permuting coordinates identifies this with the (1,-1,0) convention for the Aloff-Wallach space.").
source(paper_5_1, 'historical/corpus/canonical_research.md', '5-seven-dimensions-the-exact-fibrations').
attempted_by(paper_5_1, corpus).
claim(paper_5_2, claim, proved, "Proved (table row)", "| $N\\to\\mathbb{CP}^2_{\\ell}$ | $S^3$ | Forget u | Proved |").
source(paper_5_2, 'historical/corpus/canonical_research.md', '5-seven-dimensions-the-exact-fibrations').
attempted_by(paper_5_2, corpus).
claim(paper_5_3, claim, proved, "Proved (table row)", "| $N\\to F=SU(3)/T^2$ | $S^1$ | Send $(\\ell,u)$ to $(\\ell,\\mathbb Cu)$ | Proved |").
source(paper_5_3, 'historical/corpus/canonical_research.md', '5-seven-dimensions-the-exact-fibrations').
attempted_by(paper_5_3, corpus).
claim(paper_5_4, claim, proved, "Proved (table row)", "| $N\\to S^5=SU(3)/SU(2)$ | $S^2$ | Send $(\\ell,u)$ to $u$ | Proved |").
source(paper_5_4, 'historical/corpus/canonical_research.md', '5-seven-dimensions-the-exact-fibrations').
attempted_by(paper_5_4, corpus).
claim(paper_5_5, claim, proved, "Proved", "gives $w_2(N)=p^*(3h+h)=0$ modulo two. Thus N is spin and simply connected. Its integral cohomology is Z in degrees 0,2,5,7 and zero otherwise; in particular $H^4(N;\\mathbb Z)=0$. , using the $S^3$-sphere-bundle Gysin se").
source(paper_5_5, 'historical/corpus/canonical_research.md', '5-seven-dimensions-the-exact-fibrations').
attempted_by(paper_5_5, corpus).
claim(paper_5_6, claim, proved, "Proved as quotient geometry.", "L has three fixed $\\mathbb{CP}^1$ strata; its central $\\mathbb Z_3$ kernel on F must be removed for an effective action. The induced metric on Y is singular. The residual connected symmetry inherited from this quotient").
source(paper_5_6, 'historical/corpus/canonical_research.md', 'a-genuine-sequential-orbit-space-chain-also-exists').
attempted_by(paper_5_6, corpus).
claim(paper_5_7, claim, conditional, "Conditional:", "The second step can use the spectral family $D_\\tau=D_F+\\tau\\Gamma_F L$, on an equivariant bundle with an effective projectable lift. Its square is $D_F^2+\\tau^2L^2$, so nonzero circle momentum is suppressed with resolve").
source(paper_5_7, 'historical/corpus/canonical_research.md', 'a-genuine-sequential-orbit-space-chain-also-exists').
attempted_by(paper_5_7, corpus).
claim(paper_6_1, claim, proved, "Proved (table row)", "| Integral ring | $\\mathbb Z[h,y]/(h^3,y^2)$ | $\\mathbb Z[h,x]/(h^3,x^2+hx+h^2)$ | Proved |").
source(paper_6_1, 'historical/corpus/canonical_research.md', '6-keep-the-product-and-flag-candidates-separate').
attempted_by(paper_6_1, corpus).
claim(paper_6_2, claim, proved, "Proved (table row)", "| Betti numbers in degrees 0,2,4,6 | 1,2,2,1 | 1,2,2,1 | Proved |").
source(paper_6_2, 'historical/corpus/canonical_research.md', '6-keep-the-product-and-flag-candidates-separate').
attempted_by(paper_6_2, corpus).
claim(paper_6_3, claim, proved, "Proved (table row)", "| $c_1$ for the indicated complex structure | $3h+2y$ | $4h+2x$ | Proved (below) |").
source(paper_6_3, 'historical/corpus/canonical_research.md', '6-keep-the-product-and-flag-candidates-separate').
attempted_by(paper_6_3, corpus).
claim(paper_6_4, claim, proved, "Proved (table row)", "| $w_2$ | h mod 2 | 0 | Proved |").
source(paper_6_4, 'historical/corpus/canonical_research.md', '6-keep-the-product-and-flag-candidates-separate').
attempted_by(paper_6_4, corpus).
claim(paper_6_5, claim, proved, "Proved (table row)", "| $p_1$ | $3h^2$ | 0 | Proved (below) |").
source(paper_6_5, 'historical/corpus/canonical_research.md', '6-keep-the-product-and-flag-candidates-separate').
attempted_by(paper_6_5, corpus).
claim(paper_6_6, claim, conditional, "Proved/conditional as indicated.", "One spin distinction matters: the vertical tangent of F→$\\mathbb{CP}^2$ has $c_1=h+2x$ and is not spin by itself. Its $w_2$ cancels the base $w_2$ in the total flag. A family of ordinary fibre spin bundles cannot be assu").
source(paper_6_6, 'historical/corpus/canonical_research.md', '6-keep-the-product-and-flag-candidates-separate').
attempted_by(paper_6_6, corpus).
claim(paper_7_1, claim, proved, "Proved.", "There is a further distinction: Its vertical principal-bundle tangent is trivial, so $TP\\simeq q_P^*T\\mathbb{CP}^2\\oplus\\mathbb R^3$ and $w_2(P)=q_P^*h\\ne0$. The $S^3$-fibre sequence makes $q_P^*$ injective in degree tw").
source(paper_7_1, 'historical/corpus/canonical_research.md', '7-three-sphere-bundles-and-the-circle-endpoints').
attempted_by(paper_7_1, corpus).
claim(paper_7_2, claim, proved, "Proved.", "Principal circle bundles $P_k$ over $\\mathbb{CP}^2$ have Euler/Chern class k h. Their total spaces are $\\mathbb{CP}^2$×$S^1$ for k=0, $S^5$ for |k|=1, and $S^5/\\mathbb Z_{|k|}$ for |k|>1, up to orientation conventions. S").
source(paper_7_2, 'historical/corpus/canonical_research.md', '7-three-sphere-bundles-and-the-circle-endpoints').
attempted_by(paper_7_2, corpus).
claim(paper_8_1, claim, proved, "Proved", "with multiplicity n+2p per sign. The vertical gap is therefore uniform and grows as $\\epsilon^{-1}$. by the $\\mathbb{CP}^1$ spin/Dolbeault identification and the angular-momentum spectrum.").
source(paper_8_1, 'historical/corpus/canonical_research.md', '8-the-decisive-monopole-collapse').
attempted_by(paper_8_1, corpus).
claim(paper_8_2, claim, proved, "Proved outcome:", "the flux choice (1,2,3) gives a positive-chirality kernel of rank six with").
source(paper_8_2, 'historical/corpus/canonical_research.md', 'the-induced-connection-is-decisive').
attempted_by(paper_8_2, corpus).
claim(paper_8_3, claim, proved, "Proved", "Charge conjugation reverses flux and chirality. On W plus its conjugate, merely choosing a conjugate exchange with $J^2=+1$ or $-1$ changes the real commutant. The finite check gives unitary commutant Lie dimension three").
source(paper_8_3, 'historical/corpus/canonical_research.md', 'real-structures-cannot-be-inferred-from-pseudoreality').
attempted_by(paper_8_3, corpus).
checked_by(paper_8_3, corpus, python("see historical/corpus/research_checks_knowledge.md")).
claim(paper_9_1, claim, proved, "Proved existence of an engineered connection:", "the fibrewise Toeplitz map from horizontal $\\operatorname{End}(V)$-valued symbols onto $\\operatorname{End}(K)$ is surjective. Constant symbols on the two L copies supply $M_2(\\mathbb C)$, scalar symbols on $L^2$ give $\\").
source(paper_9_1, 'historical/corpus/canonical_research.md', '9-constructing-a-surviving-spinor-bundle').
attempted_by(paper_9_1, corpus).
claim(paper_9_2, claim, conditional, "Conditional", "on the analytic connection and spin-lift formulas (the phase arithmetic is checked in Python, historical/corpus/research_checks_knowledge.md §4.7): for the specified connection and spin lifts, all three coefficient lines retain a circle").
source(paper_9_2, 'historical/corpus/canonical_research.md', 'a-concrete-wilson-line-compatibility-test').
attempted_by(paper_9_2, corpus).
checked_by(paper_9_2, corpus, python("see historical/corpus/research_checks_knowledge.md")).
claim(paper_9_3, claim, conditional, "Conditional application:", "The homogeneous connection transports the vertical operator by fibre isometries. Adding the specified horizontal multiplication operators changes $\\{A,B\\}$ by a bounded vertical commutator. These are the required compati").
source(paper_9_3, 'historical/corpus/canonical_research.md', 'the-analytic-limit-and-its-scope').
attempted_by(paper_9_3, corpus).
claim(paper_10_1, claim, proved, "Proved", ", with primary general context in [6]. These are smooth complex quotient varieties, with branched quotient maps and singular quotient metrics. The isotropy stack and crossed product retain extra information. The equality").
source(paper_10_1, 'historical/corpus/canonical_research.md', '10-torusweyl-quotients-and-what-the-spin-lift-changes').
attempted_by(paper_10_1, corpus).
claim(paper_10_2, claim, numerical, "Numerical check in Python", "The Frobenius-Schur indicators are zero for the conjugate one-dimensional characters and minus one for the doublet. Explicit six-dimensional Clifford matrices verify the representation and its faithfulness on a chiral sp").
source(paper_10_2, 'historical/corpus/canonical_research.md', 'a-real-algebra-improvement').
attempted_by(paper_10_2, corpus).
checked_by(paper_10_2, corpus, python("see historical/corpus/research_checks_knowledge.md")).
claim(paper_10_3, claim, proved, "Proved", "is a corner of a finite-orbit quotient of the spin-twisted real crossed product. algebraic statement; checked numerically in Python (historical/corpus/research_checks_knowledge.md §4.4). It is not a result about the original untwisted co").
source(paper_10_3, 'historical/corpus/canonical_research.md', 'a-real-algebra-improvement').
attempted_by(paper_10_3, corpus).
checked_by(paper_10_3, corpus, python("see historical/corpus/research_checks_knowledge.md")).
claim(paper_11_1_1, claim, proved, "Proved obstruction.", "This follows by integrating $e^{kh}(1-h^2/6)$ over $\\mathbb{CP}^3$. The spin Dirac operator twisted by $\\mathcal O(3)$, which equals the Dolbeault operator on $\\mathcal O(1)$ because $S=\\Lambda^{0,*}\\otimes\\mathcal O(-2)").
source(paper_11_1_1, 'historical/corpus/canonical_research.md', '111-a-genuine-change-of-ko-degree').
attempted_by(paper_11_1_1, corpus).
claim(paper_12_1, claim, proved, "Proved operator limit:", "With $P_0$ projecting onto $\\ker L$, the heavy resolvent is bounded by $(1+\\tau^2)^{-1/2}$. only circle-invariant modes survive. Uniformly bounded commutators retain invariant scalar functions.").
source(paper_12_1, 'historical/corpus/canonical_research.md', '12-a-controlled-six-to-five-operator-limit').
attempted_by(paper_12_1, corpus).
claim(paper_13_1_1, claim, conditional, "Conditional normalization", "(derived analytically in `historical/corpus/nine_dimensional_construction.md` from the sphere averages $\\langle z^*T^2z\\rangle=1/6$ and $\\langle(z^*Tz)^2\\rangle=1/24$; no script computes it; §13.2 uses a different charge").
source(paper_13_1_1, 'historical/corpus/canonical_research.md', '131-one-electron-from-a-specified-character').
attempted_by(paper_13_1_1, corpus).
claim(paper_14_3_1, claim, proved, "Proved", "The lens order $p$ cancels in the common volume factor. The value $5/8$ requires $\\xi^2=5/2$; the unsourced Einstein condition selects the round $\\xi=1$, giving $1/2$. Topology can constrain a charge lattice, but it does").
source(paper_14_3_1, 'historical/corpus/canonical_research.md', '143-the-angle-test').
attempted_by(paper_14_3_1, corpus).
checked_by(paper_14_3_1, corpus, python("see historical/corpus/research_checks_knowledge.md")).
%% Referee of lemmas 08, 13 and 14 (Terra 6.1, 3 Nov 2026): historical/reviews/2026-11-03_terra_check_08_13_14.md
claim(terra_two_neutral_pairs, counterexample, proved, "Counterexample to the unqualified D.2", "H = C^2 (x) C^2, A = C, D = 0, Gamma = 1 (x) sigma_3, J = (1 (x) sigma_1) K: two unpaired neutral states, no Majorana term, with involutions 1 (x) sigma_1 and sigma_2 (x) sigma_1 of opposite signs.").
source(terra_two_neutral_pairs, 'historical/reviews/2026-11-03_terra_check_08_13_14.md', 'section-6-theorem-d').
attempted_by(terra_two_neutral_pairs, terra_6_1).
checked_by(terra_two_neutral_pairs, claude_opus_5_5, python("numpy: both involutions and their signs")).
claim(paper_D2_unqualified, claim, refuted, "First version of Theorem D item 2", "Any finite triple with an unpaired left-handed neutrino and no Majorana term admits only s = +1.").
source(paper_D2_unqualified, 'historical/reviews/2026-11-03_terra_check_08_13_14.md', 'section-6-theorem-d').
attempted_by(paper_D2_unqualified, claude_opus_5_5).
refuted_by(paper_D2_unqualified, terra_two_neutral_pairs).
claim(terra_winding, counterexample, proved, "Counterexample to the global form of Theorem 14.3", "On S^1 x S^3, the fixed-singular-value link lambda exp(i theta) is not attained, since every globally smooth real A_5 gives zero winding.").
source(terra_winding, 'historical/reviews/2026-11-03_terra_check_08_13_14.md', 'lemma-14').
attempted_by(terra_winding, terra_6_1).
checked_by(terra_winding, claude_opus_5_5, by_hand).

claim(l16_two_sheets, theorem, proved, "Theorem 16.7 and Corollary 16.8", "A two-sheet coarse parent gives KO-6 signs, order zero and order one; its truncation has dim 2 k_X k_Y, real orientability when the gradings lie in the algebras, and for equal dimensions and full algebras the Chamseddine-Connes pair with centre C + C. D_F commutes with the two sheet projections, not necessarily with the whole centre.").
source(l16_two_sheets, 'lemmas/16_coarse_truncation.md', 'two-sheets-the-form-of-the-classification').
depends(l16_two_sheets, l16_coarse).
attempted_by(l16_two_sheets, claude_opus_5_5).
checked_by(l16_two_sheets, claude_opus_5_5, python("numpy on random finite data: signs, order zero, order one, orientability")).
checked_by(l16_two_sheets, terra_6_1, by_hand).
claim(l16_twistor, claim, proved, "Example 16.9", "At twistor level one on two sheets, real functions on S^4 and on CP^3 generate M_2(H) + M_4(C) on E (-) E* of dimension 32 with J(x, y) = (y*, x*). The second sheet, the base-function restriction and the window are inputs; the grading is added after truncation (abstract finite data, not an even truncation of the parent); no operator connects the two pieces.").
source(l16_twistor, 'lemmas/16_coarse_truncation.md', 'two-sheets-the-form-of-the-classification').
depends(l16_twistor, l16_two_sheets).
depends(l16_twistor, l10_toeplitz).
attempted_by(l16_twistor, claude_opus_5_5).
checked_by(l16_twistor, claude_opus_5_5, python("numpy: real dimensions 16 and 32, j, the structure on k = 4")).
checked_by(l16_twistor, terra_6_1, by_hand).
addresses(t0b, l16_two_sheets).  addresses(t0b, l16_twistor).
%% Astra job 18 (T5b). Referee: historical/reviews/2026-11-03_terra_check_18_16b.md
claim(l18_kernel, theorem, proved, "Theorem 1, Lemma 2, Corollary 3", "Exact quadratic kernel of the spectral action for a transverse vector about constant V_0, for f a Laplace transform of a positive measure with moment conditions; gauge invariance through the Goldstone orbit; the asymptotic expansion reproduces Proposition 13.5 and the CCM relation.").
source(l18_kernel, 'lemmas/18_heavy_limit_near_cutoff.md', '').
depends(l18_kernel, l03_weights).
attempted_by(l18_kernel, astra6).
checked_by(l18_kernel, claude_opus_5_5, python("direct heat traces at zero and nonzero momentum, independent of the kernel")).
checked_by(l18_kernel, terra_6_1, by_hand).
claim(l18_taylor, proposition, proved, "Proposition 4, Theorem 5", "Top-only Standard Model family at fixed Lambda. For the heat cutoff: M_W^2 -> 3 m^2/8 at small m/Lambda, M_W^2 ~ Lambda^4/m^2 at large m/Lambda, for the Taylor and pole masses, with M_W^2 <= Lambda^2/e for both. For the positive Laplace class, the Taylor mass at large m/Lambda is M_W^2 ~ (int s^-2 d nu(s)/f(0)) Lambda^4/m^2, so the constant 1/e is specific to the heat cutoff.").
source(l18_taylor, 'lemmas/18_heavy_limit_near_cutoff.md', '').
depends(l18_taylor, l18_kernel).
attempted_by(l18_taylor, astra6).
checked_by(l18_taylor, claude_opus_5_5, python("closed forms, limits, bound, root of the pole equation")).
checked_by(l18_taylor, terra_6_1, by_hand).
claim(l18_angles, proposition, proved, "Proposition 6", "In the same family kappa_em/kappa_s = 8/3 and the neutral-current cos^2 theta = 5/8 for all m/Lambda; the matching angle tends to 103/157; M_Z^2 ~ (2/3) x exp(-x) Lambda^2.").
source(l18_angles, 'lemmas/18_heavy_limit_near_cutoff.md', '').
depends(l18_angles, l18_kernel).
attempted_by(l18_angles, astra6).
checked_by(l18_angles, claude_opus_5_5, python("neutral matrix recomputed from Standard Model charges")).
checked_by(l18_angles, terra_6_1, by_hand).
claim(l18_wrong_sign, counterexample, proved, "Counterexample 7", "For V_0 = m sigma_3, T = sigma_1, the Taylor kinetic coefficient is negative for m^2 > Lambda^2 (heat cutoff; negative somewhere for all f in the class), while the full form has a unique positive pole with M^2 ~ 4 m^2.").
source(l18_wrong_sign, 'lemmas/18_heavy_limit_near_cutoff.md', '').
depends(l18_wrong_sign, l18_kernel).
attempted_by(l18_wrong_sign, astra6).
checked_by(l18_wrong_sign, claude_opus_5_5, python("direct heat trace at nonzero momentum against the kernel")).
checked_by(l18_wrong_sign, terra_6_1, by_hand).
claim(l18_no_centralizer, counterexample, proved, "Counterexample 8", "As m_t -> infinity at fixed Lambda, the broken vectors keep a finite nonzero kinetic form and a vanishing mass: heavy fermions do not select the centralizer by mass decoupling. Restricting the connection to the centralizer from the outset does give decoupling of the heavy block.").
source(l18_no_centralizer, 'lemmas/18_heavy_limit_near_cutoff.md', '').
depends(l18_no_centralizer, l18_taylor).
attempted_by(l18_no_centralizer, astra6).
checked_by(l18_no_centralizer, terra_6_1, by_hand).
claim(l18_radial, no_go, proved, "No-go theorem 9", "For f in the positive Laplace class and V_* != 0, without an added potential or constraint, no finite c > 0 is stationary along V = c V_*: the constant-background density decreases monotonically.").
source(l18_radial, 'lemmas/18_heavy_limit_near_cutoff.md', '').
attempted_by(l18_radial, astra6).
checked_by(l18_radial, claude_opus_5_5, by_hand).
checked_by(l18_radial, terra_6_1, by_hand).
claim(l18_joint, corollary, proved, "Corollary 10", "In the top-only heat-cutoff Taylor family, the limit m_t/M_W -> sqrt(8/3) with all scales diverging needs Lambda -> infinity with m_t/Lambda -> 0; at fixed m_t/Lambda > 0, masses scale with Lambda and the ratio is a function of m_t/Lambda. Other finite data and mass definitions need their own argument.").
source(l18_joint, 'lemmas/18_heavy_limit_near_cutoff.md', '').
depends(l18_joint, l18_taylor).
attempted_by(l18_joint, astra6).
checked_by(l18_joint, terra_6_1, by_hand).
addresses(t5b, l18_taylor).  addresses(t5b, l18_no_centralizer).  addresses(t5b, l18_radial).  addresses(t5b, l18_joint).
claim(l18_radial_general, proposition, proved, "Proposition 11", "On flat R^4, with V_* != 0, U'(c) = -(c Lambda^2/2 pi^2) sum lambda_j^2 int f over the tail; for nonnegative f of unbounded support there is no finite stationary point, and compact support gives a plateau.").
source(l18_radial_general, 'lemmas/18_heavy_limit_near_cutoff.md', '').
attempted_by(l18_radial_general, terra_6_1).
checked_by(l18_radial_general, claude_opus_5_5, python("numerical derivative against the formula for a compact bump")).
claim(l18_several, proposition, proved, "Propositions 12 and 13", "The top-only Taylor result holds for nonnegative compactly supported f. For the heat cutoff and finitely many doublets, each with one massive and one massless member: with several heavy doublets and P > 0 the Taylor mass tends to 0; with P = 0 and all massive members of the same m, it scales as m^4/(2 Lambda^2) with pole m^2/2.").
source(l18_several, 'lemmas/18_heavy_limit_near_cutoff.md', '').
depends(l18_several, l18_taylor).
attempted_by(l18_several, terra_6_1).
checked_by(l18_several, claude_opus_5_5, python("Taylor ratio and pole root at large x")).
claim(l18_fully_massive, proposition, proved, "Proposition 14", "For the heat cutoff, with one common Dirac mass m > 0 for all species, including neutrinos, and no Majorana masses: the pole masses diverge at fixed cutoff (2x < z_W < 2x + 2, 16x/5 < z_Z < 16x/5 + 2), M_W^2/M_Z^2 -> 5/8 for x -> 0 and x -> infinity, the kernel vanishes at fixed momentum and the charged Taylor kinetic coefficient has the wrong sign for x > 2. No light fermions.").
source(l18_fully_massive, 'lemmas/18_heavy_limit_near_cutoff.md', '').
depends(l18_fully_massive, l18_kernel).
attempted_by(l18_fully_massive, terra_6_1).
attempted_by(l18_fully_massive, claude_opus_5_5).
checked_by(l18_fully_massive, claude_opus_5_5, python("direct doublet kernel from equation (1), pole equations, the ratio")).
checked_by(l18_fully_massive, astra6, by_hand).  % Astra validation, 3 Nov 2026, item 11: complete proof
claim(l18_not_unbroken, claim, proved, "Remark 15", "In the top-only limit the compressed generators on b_L do not satisfy the SU(2) relations, and the limiting coefficients have K_W != K_33 and K_3Y != 0; vanishing vector masses do not show unbroken SU(2) x U(1) on the light space.").
source(l18_not_unbroken, 'lemmas/18_heavy_limit_near_cutoff.md', '').
depends(l18_not_unbroken, l18_angles).
attempted_by(l18_not_unbroken, terra_6_1).
checked_by(l18_not_unbroken, claude_opus_5_5, by_hand).
claim(l16_ce_centre, counterexample, proved, "Counterexample in Corollary 16.8", "V_X = C^2, gamma_X = sigma_3, d_X = sigma_1, A_X = C + C and V_Y = C: the central (diag(1, 0), 0) does not commute with D_F.").
source(l16_ce_centre, 'lemmas/16_coarse_truncation.md', 'two-sheets-the-form-of-the-classification').
attempted_by(l16_ce_centre, terra_6_1).
checked_by(l16_ce_centre, claude_opus_5_5, by_hand).
claim(l16_grading_not_even, no_go, proved, "Example 16.9, grading", "An even parent has [P gamma P, P a P] = 0 for compressed functions, while Gamma_5 = 5 Q(x_5) anticommutes with Q(x_1); so the grading of the classification cannot come from the stated even parent.").
source(l16_grading_not_even, 'lemmas/16_coarse_truncation.md', 'two-sheets-the-form-of-the-classification').
attempted_by(l16_grading_not_even, terra_6_1).
checked_by(l16_grading_not_even, claude_opus_5_5, by_hand).
checked_by(l16_grading_not_even, astra6, by_hand).
addresses(t5b, l18_fully_massive).  addresses(t5b, l18_not_unbroken).  addresses(t0b, l16_grading_not_even).
claim(l18_sum_rule, claim, proved, "Remark 16", "For the heat cutoff and the specified mass-compatible doublet decomposition, 8 kappa M_W,Taylor^2 = sum_i N_i m_i^2 rho(x_i), where rho(x) = 2[1 - (1 + x) exp(-x)]/x^2, kappa = (P + sum_i d_i w(x_i))/6, N_i = 2 d_i, P + sum_i d_i = 6 and w(x) = 3 int_0^1 u^2 exp(-x u) du. The CCM relation follows to leading order when every x_i -> 0.").
source(l18_sum_rule, 'lemmas/18_heavy_limit_near_cutoff.md', '').
depends(l18_sum_rule, l18_several).
attempted_by(l18_sum_rule, claude_opus_5_5).
checked_by(l18_sum_rule, claude_opus_5_5, python("agreement with equation (18) to rounding, for x from 1e-3 to 1e3")).
checked_by(l18_sum_rule, terra_6_1, by_hand).  % report paper_note, items 13 to 15
addresses(t5b, l18_sum_rule).
%% Lemma 19 (T0b, step 1). Referee: historical/reviews/2026-11-03_terra_check_nogo_19.md
claim(l19_fluct, theorem, proved, "Theorem 19.1", "On the two-point data the inner fluctuation of arXiv:1304.7583 factorizes: m |Phi|^2 sigma_1 with pointwise J, and link m Phi^2 with the reflection J (KO-6 signs).").
source(l19_fluct, 'lemmas/19_fluctuations_without_order_one.md', 'the-fluctuated-operator').
attempted_by(l19_fluct, claude_opus_5_5).
checked_by(l19_fluct, claude_opus_5_5, python("numpy on random data: both factorizations, gauge covariance")).
checked_by(l19_fluct, terra_6_1, by_hand).
claim(l19_gauge, corollary, proved, "Corollary 19.2", "U = 1 for pointwise J, with a neutral real radial field; charge 2 for the reflection J, with image all of C; along a gauge orbit the quadratic term keeps the modulus of the link fixed.").
source(l19_gauge, 'lemmas/19_fluctuations_without_order_one.md', 'the-fluctuated-operator').
depends(l19_gauge, l19_fluct).
attempted_by(l19_gauge, claude_opus_5_5).
checked_by(l19_gauge, claude_opus_5_5, python("numpy: orbit and covariance")).
checked_by(l19_gauge, terra_6_1, by_hand).
claim(l19_parent, proposition, proved, "Proposition 19.3", "Compared with the parent: with pointwise reality the truncated data have a radial field with no parent scalar behind it; with the reflection J, the modulus along a gauge orbit behaves as for the covariant projection with the quadratic term, and as for the fixed compression without it. A parallel, no identification.").
source(l19_parent, 'lemmas/19_fluctuations_without_order_one.md', 'comparison-with-the-parent').
depends(l19_parent, l19_gauge).
depends(l19_parent, l13_compression).
attempted_by(l19_parent, claude_opus_5_5).
checked_by(l19_parent, terra_6_1, by_hand).
addresses(t0b, l19_fluct).  addresses(t0b, l19_parent).
%% Lemma 20 (T0b, T11). Astra 6; referee: historical/reviews/2026-11-03_terra_check_20_21.md
claim(l20_blocks, theorem, proved, "Theorem 20.1", "A block T : E -> E* added to a sheet-diagonal D_F keeps the signs iff T = tau(T), h T + T g = 0, and has order one on B iff T pi_1(a) - pi_2(a) T intertwines the opposite actions; the maximal B are the maximal A(R) over odd R with T = R + tau(R).").
source(l20_blocks, 'lemmas/20_connecting_operator.md', '').
attempted_by(l20_blocks, astra6).
checked_by(l20_blocks, claude_opus_5_5, python("the example with T different from R; the averaging proof by hand")).
checked_by(l20_blocks, terra_6_1, by_hand).
claim(l20_rank_one, theorem, proved, "Theorem 20.2", "For kappa != 0 and nonzero decomposable K = v w*, T x = kappa K x K has complex rank one and A(T) = C + H + M_3(C), of real dimension 24, unique up to automorphism at maximal dimension; a rank-two compressed intertwiner K: C^2 -> C^4 bounds the dimension by 16. A rank-two connecting block T can still be admissible on the algebra of dimension 24. At kappa = 0 the block has rank zero and the admissible algebra has dimension 40.").
source(l20_rank_one, 'lemmas/20_connecting_operator.md', '').
depends(l20_rank_one, l20_blocks).
attempted_by(l20_rank_one, astra6).
checked_by(l20_rank_one, claude_opus_5_5, python("real dimensions 24 and 16 by linear algebra; signs and order conditions on random elements")).
checked_by(l20_rank_one, terra_6_1, by_hand).
claim(l20_gluing_fails, counterexample, proved, "Counterexample 20.4", "Full scalar gluing on the one-flavor interval: the parent has signs (+,+,-), order zero and order one; the lowest window gives C + C, m sigma_1, sigma_1 K, which fails order one.").
source(l20_gluing_fails, 'lemmas/20_connecting_operator.md', '').
attempted_by(l20_gluing_fails, astra6).
checked_by(l20_gluing_fails, claude_opus_5_5, python("eigenvectors and J by hand; the compression by quadrature")).
checked_by(l20_gluing_fails, terra_6_1, by_hand).
claim(l20_parent, theorem, proved, "Theorem 20.5", "Two massless interval fields valued in E, E* with wall coupling X = t S*, and constant multipliers B = A(S), give in the lowest window finite data with connecting block m S, m = arctan(t)/l, signs (+,+,-), order zero and order one; X(l) = tan(m l) keeps m and decouples the tower; the transport exp(m x F) gives a constant connection.").
source(l20_parent, 'lemmas/20_connecting_operator.md', '').
depends(l20_parent, l20_rank_one).
attempted_by(l20_parent, astra6).
checked_by(l20_parent, claude_opus_5_5, by_hand).
checked_by(l20_parent, terra_6_1, by_hand).
claim(l20_no_selection, no_go, proved, "Proposition 20.7", "For separate compressions in unchanged windows, scalar gluing on closed sets with empty interior leaves the image unchanged, including the level-one twistor windows, where the image of the glued subset in S^4 must have empty interior. Escapes: a coupled window, boundary degrees of freedom, matrix multipliers.").
source(l20_no_selection, 'lemmas/20_connecting_operator.md', '').
attempted_by(l20_no_selection, astra6).
checked_by(l20_no_selection, claude_opus_5_5, by_hand).
checked_by(l20_no_selection, terra_6_1, by_hand).
claim(l20_hw, proposition, proved, "Proposition 20.8", "The same-chirality analogue of the Horava-Witten walls is type (a) at both ends, with opposite localization masses; unbroken E_8 x E_8 allows no bilinear connector between (248,1) and (1,248).").
source(l20_hw, 'lemmas/20_connecting_operator.md', '').
attempted_by(l20_hw, astra6).
checked_by(l20_hw, terra_6_1, by_hand).
addresses(t0b, l20_blocks).  addresses(t0b, l20_rank_one).  addresses(t0b, l20_parent).  addresses(t0b, l20_no_selection).
addresses(t11, l20_hw).
%% Consensus checks by Astra 6 in lemma 20, Results 9 to 11.
%% Lemma 22 (T0, T0b, T10, T13). Claude; referee: historical/reviews/2026-11-03_terra_check_22.md
claim(l22_window, theorem, proved, "Theorem 22.1", "Finite data of signs (+,+,-) with l ||D_F|| < pi/2 are exactly the lowest window of the derivative on an interval with coupling tan(l D_F); D, J and Gamma all exact; next level at least (pi - l ||D_F||)/l.").
source(l22_window, 'lemmas/22_dirac_operator_as_boundary_condition.md', 'the-window').
attempted_by(l22_window, claude_opus_5_5).
checked_by(l22_window, claude_opus_5_5, python("eigenvectors, boundary conditions, J, norm on random symmetric M")).
checked_by(l22_window, terra_6_1, by_hand).
claim(l22_parent, theorem, proved, "Theorem 22.3", "The parent with A_l = {f : f(l) in C_F} is a real even spectral triple with order zero and order one; order one needs only finite order zero; preservation of the domain is equivalent to f(l) in C_F.").
source(l22_parent, 'lemmas/22_dirac_operator_as_boundary_condition.md', 'the-parent-as-a-real-spectral-triple').
depends(l22_parent, l22_window).
attempted_by(l22_parent, claude_opus_5_5).
checked_by(l22_parent, claude_opus_5_5, by_hand).
checked_by(l22_parent, terra_6_1, by_hand).
claim(l22_compression, theorem, proved, "Theorem 22.4", "Q_l(a) = sinc(l ad_D)(a), the average of e^{ixD} a e^{-ixD} over abs(x) <= l; Q_l(E T) = -l^-1 int sin(x ad_D)(T); order defects O(l^2) with explicit constants.").
source(l22_compression, 'lemmas/22_dirac_operator_as_boundary_condition.md', 'the-compression').
depends(l22_compression, l22_window).
attempted_by(l22_compression, claude_opus_5_5).
checked_by(l22_compression, claude_opus_5_5, python("quadrature against the Schur form; one-generation Standard Model data")).
checked_by(l22_compression, terra_6_1, by_hand).
claim(l22_transport, theorem, proved, "Theorem 22.5, Corollary 22.6", "Self-adjoint scalar one-forms act on the window by the gauge orbit through the transport along the interval, reproducing D + A_(1) + A~_(1) + A_(2) of arXiv:1304.7583 on the orbit.").
source(l22_transport, 'lemmas/22_dirac_operator_as_boundary_condition.md', 'scalar-fluctuations').
depends(l22_transport, l22_parent).
attempted_by(l22_transport, claude_opus_5_5).
checked_by(l22_transport, claude_opus_5_5, python("the quadratic-term identity on two-point data")).
checked_by(l22_transport, terra_6_1, by_hand).
claim(l22_no_radial, no_go, proved, "No-go theorem 22.7", "One interval, fixed X, no bulk masses, even scalar inner fluctuations, moving spectral window: singular values fixed, so no radial Higgs mode; a fixed compression can change singular values at second order. Escapes: X as a wall field, odd connections, noncommuting bulk masses, two or more internal dimensions, quantum effective action, finite-only fluctuation.").
source(l22_no_radial, 'lemmas/22_dirac_operator_as_boundary_condition.md', 'scalar-fluctuations').
depends(l22_no_radial, l22_transport).
attempted_by(l22_no_radial, claude_opus_5_5).
checked_by(l22_no_radial, claude_opus_5_5, by_hand).
checked_by(l22_no_radial, astra6, by_hand).
checked_by(l22_no_radial, terra_6_1, by_hand).
claim(l22_family, corollary, proved, "Corollary 22.9", "The 10 -> 9 family: light couplings vanish as m l at fixed mass; W, Z at pi/(2l), top at Theta/l; massless gauge sector the physical real gauge representation of C_F, with its kernel and any unimodularity condition (u(C_F) itself has an extra abelian direction before that restriction), under an assumed five-dimensional Yang-Mills action; m_t/M_W < 1 and M_W = M_Z in this family.").
source(l22_family, 'lemmas/22_dirac_operator_as_boundary_condition.md', 'the-gauge-sector-and-the-10---9-family').
depends(l22_family, l22_window).
attempted_by(l22_family, claude_opus_5_5).
checked_by(l22_family, terra_6_1, by_hand).
addresses(t10, l22_family).  addresses(t0b, l22_transport).  addresses(t13, l22_window).  addresses(t13, l22_family).
%% Lemma 23 (T0b, T5b, T10, T13). Claude; referee: historical/reviews/2026-11-03_terra_check_23.md
claim(l23_gradings, theorem, proved, "Theorem 23.1", "The derivative on an interval with a grading at each wall has D_F = (1/2l) Gamma_0 log(Gamma_1 Gamma_0), with singular values the principal angles over l; real structure from an antiunitary J_1, J_1^2 = -1, anticommuting with both gradings.").
source(l23_gradings, 'lemmas/23_two_gradings_interval.md', 'two-gradings').
depends(l23_gradings, l22_window).
attempted_by(l23_gradings, claude_opus_5_5).
checked_by(l23_gradings, claude_opus_5_5, python("random symmetric M: log formula and principal angles")).
checked_by(l23_gradings, terra_6_1, by_hand).
claim(l23_aligned, theorem, proved, "Theorem 23.2", "A bulk prealgebra with gradings at the walls: domain preserved iff commuting at each wall; aligned walls give Q(a) = E_0(a) for constant ambient multipliers, with image E_0(P), equal to the even part of P when Gamma_0 P Gamma_0 = P, and the grading inherited from spin chirality.").
source(l23_aligned, 'lemmas/23_two_gradings_interval.md', 'the-bulk-prealgebra').
attempted_by(l23_aligned, claude_opus_5_5).
checked_by(l23_aligned, claude_opus_5_5, by_hand).
checked_by(l23_aligned, terra_6_1, by_hand).
claim(l23_radial, theorem, proved, "Theorem 23.4, Example 23.5", "Scalar fluctuations move the second grading along its orbit; odd ones change the principal angles; for M_2(H) the field space is S^4 and the Higgs modulus is half the geodesic distance.").
source(l23_radial, 'lemmas/23_two_gradings_interval.md', 'odd-fluctuations-and-the-radial-mode').
attempted_by(l23_radial, claude_opus_5_5).
checked_by(l23_radial, claude_opus_5_5, python("universal connection on E + E*, signs and J_1")).
checked_by(l23_radial, terra_6_1, by_hand).
claim(l23_wz, theorem, conditional, "Theorem 23.6", "With a connector at one wall and an assumed five-dimensional Yang-Mills field of one coupling: tan^2(M_W l) = sin^2(2 theta)/(1 + cos^2(2 theta)), tan^2(M_Z l) = 4 sin^2(2 theta)/(1 + 4 cos^2(2 theta)); nine massless modes for 0 < theta < pi/2, with larger symmetry at the endpoints; constants 2 and 16/5 at small theta.").
source(l23_wz, 'lemmas/23_two_gradings_interval.md', 'the-weak-bosons').
attempted_by(l23_wz, claude_opus_5_5).
checked_by(l23_wz, claude_opus_5_5, python("boundary problem on Sp(2) x SU(4) solved as a linear system")).
checked_by(l23_wz, terra_6_1, by_hand).
claim(l23_theta, proposition, proved, "Proposition 23.7", "For the heat cutoff the channel trace is a Jacobi theta function of theta, decreasing on [0, pi/2], stationary at theta = pi/2, with towerless limit 2 exp(-x).").
source(l23_theta, 'lemmas/23_two_gradings_interval.md', 'the-spectral-action-on-the-interval').
attempted_by(l23_theta, claude_opus_5_5).
checked_by(l23_theta, claude_opus_5_5, python("Poisson and triple product identities")).
checked_by(l23_theta, terra_6_1, by_hand).
addresses(t0b, l23_aligned).  addresses(t13, l23_gradings).  addresses(t13, l23_radial).  addresses(t5b, l23_wz).  addresses(t5b, l23_theta).
%% Lemma 25 (T5b, T13, T1). Claude; referee: historical/reviews/2026-11-03_terra_check_25.md
claim(l25_unfold, proposition, proved, "Proposition 25.1", "Unfolded, the parent is -i d/dx (x) 1 + 1 (x) D_F on a circle of length 2l; the tower is D_F shifted by n pi/l; an even constant generator is 1 (x) T.").
source(l25_unfold, 'lemmas/25_sum_rule_effective_dimension.md', 'unfolding').
depends(l25_unfold, l22_window).
attempted_by(l25_unfold, claude_opus_5_5).
checked_by(l25_unfold, claude_opus_5_5, python("level blocks of the interval against the shifted spectrum")).
checked_by(l25_unfold, terra_6_1, by_hand).
claim(l25_mass, theorem, proved, "Theorem 25.2", "The kernel of lemma 18 over the tower; for the heat cutoff, at leading order in small masses, the leading Taylor quotient for the specified constant transported profile is M^2 = ((3 - d_eff)/2) ||[D_F, T]||^2/||T||^2, with d_eff the spectral dimension of the unfolded circle at the cutoff, from the unshifted heat trace. A lowest physical gauge branch needs the additional admissibility, positivity and isolation hypotheses.").
source(l25_mass, 'lemmas/25_sum_rule_effective_dimension.md', 'the-kernel-over-the-tower').
depends(l25_mass, l25_unfold).
attempted_by(l25_mass, claude_opus_5_5).
checked_by(l25_mass, claude_opus_5_5, python("random matrices, six digits, s from 0.3 to 10")).
checked_by(l25_mass, terra_6_1, by_hand).
claim(l25_sum_rule, corollary, proved, "Corollary 25.3", "To leading order, as Taylor quotients for the constant transported profile: M_W^2 = ((3 - d_eff)/24) sum N_f m_f^2; for the top alone m_t/M_W = (8/(3 - d_eff))^{1/2}, from sqrt(8/3) to 2; M_W^2/M_Z^2 = 5/8 at all s; flat profiles, matching scale, no running.").
source(l25_sum_rule, 'lemmas/25_sum_rule_effective_dimension.md', 'the-kernel-over-the-tower').
depends(l25_sum_rule, l25_mass).
attempted_by(l25_sum_rule, claude_opus_5_5).
checked_by(l25_sum_rule, claude_opus_5_5, python("top-only family and neutral direction")).
checked_by(l25_sum_rule, terra_6_1, by_hand).
addresses(t5b, l25_mass).  addresses(t5b, l25_sum_rule).  addresses(t13, l25_sum_rule).
%% Lemma 24 (T0, T0b). Astra 6; referee: historical/reviews/2026-11-03_terra_check_24.md
claim(l24_spectral, theorem, proved, "Theorem 24.1", "On CP^3 x I, spectral walls with finite gradings on the level-one kernel give an exact reduction to the two-gradings operator, with the modes orthogonal to the tangential kernel at or above Delta_K/r.").
source(l24_spectral, 'lemmas/24_commutative_parent.md', '').
attempted_by(l24_spectral, astra6).
checked_by(l24_spectral, terra_6_1, by_hand).
claim(l24_walls, proposition, proved, "Propositions 24.2, 24.3", "Local walls under an ellipticity condition preserve all scalar functions; spectral walls only constants at the wall; a local grading whose compression to the level-one window is a grading compresses to +-1.").
source(l24_walls, 'lemmas/24_commutative_parent.md', '').
attempted_by(l24_walls, astra6).
checked_by(l24_walls, claude_opus_5_5, python("trace of the auxiliary field")).
checked_by(l24_walls, terra_6_1, by_hand).
claim(l24_two_stage, theorem, proved, "Theorem 24.4", "Direct aligned compression of real functions on S^4 generates R + R, against H + H with an intermediate matrix algebra.").
source(l24_two_stage, 'lemmas/24_commutative_parent.md', '').
attempted_by(l24_two_stage, astra6).
checked_by(l24_two_stage, claude_opus_5_5, python("conditional expectation of the Clifford generators")).
checked_by(l24_two_stage, terra_6_1, by_hand).
claim(l24_no_minimum, no_go, proved, "Theorem 24.9", "Flat massless one-loop potential, frequency-one fermions, the stated gauge towers, no wall terms: theta = pi/2 is the unique global minimum; strictly decreasing for n_f >= 54/5; for smaller n_f exactly one interior stationary point, a strict maximum. Escapes: frequency-two fermions, warping or other form factors, bulk-mass sectors, wall potentials and wall terms.").
source(l24_no_minimum, 'lemmas/24_commutative_parent.md', '').
attempted_by(l24_no_minimum, astra6).
checked_by(l24_no_minimum, claude_opus_5_5, python("monotonicity of H and e on grids")).
checked_by(l24_no_minimum, terra_6_1, by_hand).
addresses(t0, l24_spectral).  addresses(t0b, l24_two_stage).  addresses(t13, l24_no_minimum).
%% Lemma 21 (T12). Referee: historical/reviews/2026-11-03_terra_check_20_21.md
claim(l21_removal, proposition, proved, "Proposition 21.1", "Among single charged species, only an up-type quark can be removed while keeping cos^2 theta_NC = 5/8 and the photon/gluon ratio 8/3; a down-type gives 59/92 and 46/15, a charged lepton 17/28 and 7/3; d + e together contribute as u.").
source(l21_removal, 'lemmas/21_top_counting.md', 'removal-identities').
depends(l21_removal, l18_angles).
attempted_by(l21_removal, claude_opus_5_5).
checked_by(l21_removal, claude_opus_5_5, python("exact fractions")).
checked_by(l21_removal, terra_6_1, by_hand).
claim(l21_counts, claim, proved, "Propositions 21.2 and 21.3", "The finite trace with a top mass is 84 + 12 exp(-x). 96 = 84 + 12 in two ways: five quarks and all leptons plus the top; charged fermions plus the neutrinos, the first with Dirac neutrinos. C_3 and C_6 have 84 on-shell components.").
source(l21_counts, 'lemmas/21_top_counting.md', 'the-two-families-of-84').
attempted_by(l21_counts, claude_opus_5_5).
checked_by(l21_counts, claude_opus_5_5, python("exact counting")).
checked_by(l21_counts, terra_6_1, by_hand).
claim(l21_so30, claim, proved, "SO(30) branching", "The adjoint of SO(30) with 30 = (5,3) + conjugate contains (15,3bar) and (25,1), with the charged scalar counts of three generations, plus three triplets of charge 4/3 and one neutral state.").
source(l21_so30, 'lemmas/21_top_counting.md', 'so30').
attempted_by(l21_so30, claude_opus_5_5).
checked_by(l21_so30, claude_opus_5_5, python("exact counting")).
prior_work(l21_so30, partial, "hep-ph/0512065, Tables 1-2, an early preprint: the 15 diquarks and 25 mesons, the 4/3 states, and the top unable to form them; neither SO(30) nor a role for SO(32)").
addresses(t12, l21_removal).  addresses(t12, l21_counts).  addresses(t12, l21_so30).
checked_by(l21_so30, terra_6_1, by_hand).
claim(l21_exotic, proposition, proved, "Proposition 21.4 and Corollary 21.5", "For n_u up-type and n_d down-type light quarks the symmetric diquark antitriplets number n_d(n_d+1)/2, n_u n_d, n_u(n_u+1)/2 at charges -2/3, 1/3, 4/3; the antisquark counts 6 and 6 of three generations force (n_u, n_d) = (2, 3), the top out, and leave 3 states of charge 4/3, half of a chiral-multiplet pairing; as superpartners their fermions would be three Weyl (3bar, 4/3) singlets, anomalous alone. Readings: partnerless scalars, or the top in with the 1/3 count broken to 9 and SO(36) in place of SO(32). In the window of lemma 38, for distinct masses, the counts become (3, 6, 1) in reading (a), with one state of charge 4/3, and (3, 9, 3) in reading (b).").
source(l21_exotic, 'lemmas/21_top_counting.md', 'so30').
attempted_by(l21_exotic, claude_fable_5_1).
checked_by(l21_exotic, claude_fable_5_1, by_hand).  % arithmetic; the anomaly traces are standard
depends(l21_exotic, l21_so30).
addresses(t12, l21_exotic).
checked_by(l21_exotic, claude_opus_5_5, python("exhaustive diquark counts, the window counts, all eight anomaly assignments; the window clause corrected for reading (b)")).  % refereed 5 Nov 2026
claim(l41_forms, theorem, proved, "Lemma 41.1 and Theorem 41.2", "For a finite real KO-6 triple with order zero the trace form Q_ij = Tr(gamma p_i p_j^o) is skew. Along the chain A_PS -> A_SM -> C + M_3(C) of lemma 20 and lemma 06 (one generation, Dirac neutrinos) the forms are [[0,0,-2],[0,0,2],[2,-2,0]], [[0,-2,-2],[2,0,2],[2,-2,0]] and 0, of ranks 2, 2, 0: the trace-form Poincare duality fails at every step, at the last because every range rho(p_i) rho(p_j)^o of the light block has graded dimension zero (the bimodule balance of lemma 06, weaker than vectorlikeness: the unpaired nu_L coexists with Q_B = 0).").
source(l41_forms, 'lemmas/41_axioms_along_the_chain.md', 'poincaré-duality').
attempted_by(l41_forms, claude_fable_5_1).
checked_by(l41_forms, claude_fable_5_1, python("the three matrices on the 32-state representation, not kept")).
depends(l41_forms, l20_rank_one).  depends(l41_forms, l06_nuL).
checked_by(l41_forms, claude_opus_5_5, by_hand).  % recomputed the three matrices; corrected the reading of Q_B = 0 (bimodule balance, not vectorlikeness)
claim(l41_orient, proposition, proved, "Proposition 41.4", "The Pati-Salam data are orientable, with the cycle gamma = rho(p_L' - p_R') rho(1_4)^o - rho(1_4) rho(p_L' - p_R')^o; the Standard Model data with nu_R are not (nu_R and J nu_R share both characters with opposite gradings; e_R and J e_R have conjugate character pairs and a cycle has conjugate values on them, so the failure does not depend on nu_R); the light block of the third step is not, since its nonzero mass blocks commute with B (a nonzero D commuting with both actions forbids every orientation cycle, the corpus statement rs_N9, proved here).").
source(l41_orient, 'lemmas/41_axioms_along_the_chain.md', 'orientability').
attempted_by(l41_orient, claude_fable_5_1).
checked_by(l41_orient, claude_fable_5_1, python("the Pati-Salam cycle on the 32-state representation, not kept")).
depends(l41_orient, l17_no_higgs).
depends(l41_orient, hyp(sheet_diagonal_ps)).
checked_by(l41_orient, claude_opus_5_5, by_hand).  % added the e_R/J e_R obstruction and the sheet-diagonal hypothesis at the Pati-Salam step
claim(l41_unimod, proposition, proved, "Proposition 41.5", "The left-action traces of the abelian generator of the summand C, taken as the element (i, 0, 0) of A_SM and (i, Q_i, 0) of B, and of the common colour phase are (4i, 12i) on the 32 states, (2i, 12i) with the Majorana pair removed, (-2i, 6i) with the up-type sector removed and nu_R kept (20 states), and (-4i, 6i) on the light block (18 states); the inherited unimodularity condition theta_lambda + 3 theta_c = 0 gives the charges (2/3, -1/3, -1, 0) and the one reimposed on the light block, -4 theta_lambda + 6 theta_c = 0, gives (1/6, -5/6, -1, 0), so only the inherited lift gives the photon.").
source(l41_unimod, 'lemmas/41_axioms_along_the_chain.md', 'unimodularity').
attempted_by(l41_unimod, claude_fable_5_1).
checked_by(l41_unimod, claude_fable_5_1, python("the six traces of the first version, not kept")).
checked_by(l41_unimod, claude_opus_5_5, by_hand).  % found the first version used (i, 0, 0) outside B and counted 26 states for 20; recomputed the traces and the charges
addresses(t17, l41_forms).  addresses(t17, l41_orient).  addresses(t17, l41_unimod).
claim(l42_no_higgs_in_window, proposition, proved, "Proposition 42.1", "With one copy of the 4 of Sp(2) in each degree of the end grading, the off-diagonal part of the window operator is lambda I_4 (Proposition 28.19, Schur), G-invariant, so it transforms trivially under the isotropy group of any marked point and carries no Higgs representation.").
source(l42_no_higgs_in_window, 'lemmas/42_higgs_as_connector_moduli.md', 'statements').
attempted_by(l42_no_higgs_in_window, claude_fable_5_1).
checked_by(l42_no_higgs_in_window, claude_fable_5_1, by_hand).
depends(l42_no_higgs_in_window, l28_tunnelling).
checked_by(l42_no_higgs_in_window, claude_opus_5_5, by_hand).  % correct for the G-invariant block; Hom(W, V) = 1 + 5 + 10 contains T_p S^4 twice, so G-breaking blocks carry the representation
claim(l42_tangent, proposition, proved, "Proposition 42.2", "For a marked complex line l in the quaternionic sheet W = H^2 with quaternionic line L over p in S^4: T_L S^4 = (2,2) of Sp(1)_a x Sp(1)_b = Hom_H(L, L^perp), and T_l CP^3 = (2)_{+-1} + (1)_{+-2} under Sp(1)_a x U(1)_b: the Higgs doublet of hypercharge 1/2 (the horizontal part) and a charged singlet of hypercharge 1 along the twistor fibre.").
source(l42_tangent, 'lemmas/42_higgs_as_connector_moduli.md', 'statements').
attempted_by(l42_tangent, claude_fable_5_1).
checked_by(l42_tangent, claude_fable_5_1, by_hand).
checked_by(l42_tangent, claude_opus_5_5, by_hand).  % stabilizer dimensions and ad-eigenvalues recomputed
claim(l42_moduli, proposition, proved, "Proposition 42.3", "The Sp(2)-orbits of the pair of marked lines (Cw, Cv) of the connector are classified by a = |h(w,v)| and b = |omega(w,v)|, a^2 + b^2 <= 1; the orbits of the connector T_kappa are classified by a, b, |kappa| and, when alpha = h(w,v) is nonzero, the phase of the invariant kappa alpha^2 = tr T_kappa(1): four real moduli on the generic stratum a > 0, b > 0, a^2 + b^2 < 1; two (b, |kappa|) on the alpha = 0 stratum with 0 < b < 1, with fewer on its boundary.").
source(l42_moduli, 'lemmas/42_higgs_as_connector_moduli.md', 'statements').
attempted_by(l42_moduli, claude_fable_5_1).
checked_by(l42_moduli, claude_fable_5_1, by_hand).
depends(l42_moduli, l20_rank_one).
checked_by(l42_moduli, claude_opus_5_5, by_hand).  % found the missing invariant arg(kappa alpha^2), with T_kappa and T_{-kappa} as the counterexample to the first count
addresses(t14, l42_no_higgs_in_window).  addresses(t14, l42_tangent).  addresses(t0, l42_moduli).
claim(l43_berry, theorem, proved, "Proposition 43.1 and Theorem 43.2", "Changing the coefficient connection by a horizontal alpha (vanishing on vertical vectors, so the fibre operators and their kernels are unchanged) changes the Berry connection on a constant-rank kernel bundle by the fibrewise compression P alpha P, exactly; for dim B > 0 every connection on the kernel bundle is a Berry connection of such a change iff the fibrewise compression Gamma(F_b, u(E)) -> u(K_b) is surjective at every point, iff the products s_i s_j^* of a kernel frame are linearly independent over the fibre; then a smooth preimage is C^*(C C^*)^{-1} beta. With volume-preserving horizontal transport, or with the common mean-curvature term added.").
source(l43_berry, 'lemmas/43_engineered_connections.md', 'statements').
attempted_by(l43_berry, claude_fable_5_1).
checked_by(l43_berry, claude_fable_5_1, by_hand).
checked_by(l43_berry, claude_opus_5_5, by_hand).  % amendments: mean-curvature term, transposed adjoint, vertical components excluded (they can change the operator and move the kernel)
claim(l43_scalar, corollary, proved, "Corollary 43.3", "For dim B > 0, scalar changes attain every connection iff the functions <s_i, s_j> are independent on the fibre: true for H^0(CP^3, O(1)) (sixteen functions z-bar_i z_j/|z|^2, the second-moment identity a bijection of Herm(4)), false for functions pulled back from S^4 (image of real dimension six, Example 16.9 with Proposition 10.1), so scalar changes along the base reach six of sixteen directions on the core copy of lemma 29. The collar connection of lemma 29 is outside the theorem: it acts at the wall on the CP^3 copy; its effect on the kernel requires separate analysis.").
source(l43_scalar, 'lemmas/43_engineered_connections.md', 'statements').
attempted_by(l43_scalar, claude_fable_5_1).
checked_by(l43_scalar, claude_fable_5_1, by_hand).
depends(l43_scalar, l43_berry).  depends(l43_scalar, l10_toeplitz).
checked_by(l43_scalar, claude_opus_5_5, by_hand).  % both computations confirmed; the last clause of the first version, reading the collar connection as an instance, withdrawn
addresses(t15, l43_berry).  addresses(t15, l43_scalar).
claim(l44_algebra, proposition, proved, "Proposition 44.1 and Corollary 44.3", "For D_t = t T_R + t^alpha V_nu + S with the Majorana block T_R and the neutrino Dirac block V_nu (y nonzero), the algebra retained by bounded commutators is C + H + M_3(C) for alpha = 0 and {(lambda, Q_lambda, m)} = C + M_3(C) for 0 < alpha < 1; under this criterion a finite seesaw mass (alpha = 1/2) and the Standard Model algebra belong to two different limits of the family. Under the order-one criterion of Theorem 20.2, which V_nu satisfies on A_SM, A_SM stays admissible at every alpha: the two criteria agree for T_R and differ for V_nu.").
source(l44_algebra, 'lemmas/44_seesaw_scaling_retained_algebra.md', 'statements').
attempted_by(l44_algebra, claude_fable_5_1).
checked_by(l44_algebra, claude_fable_5_1, by_hand).
depends(l44_algebra, l20_rank_one).
checked_by(l44_algebra, claude_opus_5_5, by_hand).  % commutants recomputed; the dependence on the criterion made explicit; the conjugate states give no condition
claim(l44_light_mass, proposition, proved, "Proposition 44.2", "For 0 <= alpha < 1 and y nonzero, after rephasing the symmetric neutral block, the spectrum of t T_R + t^alpha V_nu is plus and minus the roots of mu^2 - t mu - t^{2 alpha} |y|^2, and the light mass is |mu_-| with mu_- = -2 t^{2 alpha} |y|^2/(t + sqrt(t^2 + 4 t^{2 alpha} |y|^2)) ~ -|y|^2 t^{2 alpha - 1}: the signed mu_- tends to zero for alpha < 1/2, to -|y|^2 at alpha = 1/2, and diverges for 1/2 < alpha < 1.").
source(l44_light_mass, 'lemmas/44_seesaw_scaling_retained_algebra.md', 'statements').
attempted_by(l44_light_mass, claude_fable_5_1).
checked_by(l44_light_mass, claude_fable_5_1, by_hand).
checked_by(l44_light_mass, claude_opus_5_5, python("eigenvalues at t = 10^4 for alpha = 1/4, 1/2, 3/4 against the asymptotics")).
addresses(t2c, l44_algebra).  addresses(t2c, l44_light_mass).
claim(l45_fibres, proposition, proved, "Proposition 45.1", "For B = C(T^6) x W, W = S_3 x Z_2 the Weyl group of SU(3) x SU(2): evaluation at the fixed point maps B onto C*(W) = C^4 + M_2(C)^2; restriction to a three-point orbit maps B onto M_3(C*(S_2 x Z_2)) = M_3(C)^4; selecting the trivial character, the standard representation of S_3 and one character of the stabilizer gives B -> C + M_2(C) + M_3(C), the complex finite algebra with M_2(C) in place of H, the corpus row rs_N18 proved structurally; C*(W) has six irreducible representations.").
source(l45_fibres, 'lemmas/45_weyl_crossed_product_two_sheets.md', 'statements').
attempted_by(l45_fibres, claude_fable_5_1).
checked_by(l45_fibres, claude_fable_5_1, by_hand).
checked_by(l45_fibres, claude_opus_5_5, by_hand).  % amendments: not the complexification of A_F; the Z_2 characters in the selection; six irreducible representations, not eight
claim(l45_two_sheets, theorem, proved, "Theorem 45.2", "The finite content of Corollary 16.8 with the sheets V_X = C + C^2 (algebra C + M_2(C), grading diag(1,-1,-1) as a chosen central element, d_X = D_v) and V_Y = C^3 (algebra M_3(C), d_Y = 0) gives, in Hilbert space, D, J and grading, the 18-state bimodule of the corpus (rs_N6) with KO-6 signs, order zero, order one, nonzero one-forms and the real orientability relation; over the complex algebra its intersection form on minimal projections is [[0,0,1],[0,0,-1],[-1,1,0]], skew of rank 2 on a K_0 of rank 3 with kernel (1, 1, 0), and the corpus form with entries 2 is the one over the real algebra C + H + M_3(C). The two sheets are the two orbit types of the Weyl action, as quotients of the crossed product.").
source(l45_two_sheets, 'lemmas/45_weyl_crossed_product_two_sheets.md', 'statements').
attempted_by(l45_two_sheets, claude_fable_5_1).
checked_by(l45_two_sheets, claude_fable_5_1, by_hand).
depends(l45_two_sheets, l16_two_sheets).  depends(l45_two_sheets, l45_fibres).
checked_by(l45_two_sheets, claude_opus_5_5, by_hand).  % the intersection form over the complex algebra, the formal use of 16.8, the grading as a choice; Remark 45.3 corrected (H arises at the orbit type (a, a, a), not at the fixed point)
addresses(t16, l45_fibres).  addresses(t16, l45_two_sheets).
claim(l46_odd_blocks, proposition, proved, "Proposition 46.1", "On the quaternionic sheet W = H^2 with grading axis p, the Hermitian blocks odd for Gamma_p are Hom_C(L_p, L_p^perp) = (2,2) (x) C under Sp(1)_a x Sp(1)_b; the j-linear part is the real span of the Gamma_a with a orthogonal to p, equal to Hom_H(L_p, L_p^perp) = T_p S^4 and to the odd parts of the compressed coordinates of S^4; the j-antilinear part is the span of the i Gamma_a Gamma_p, outside M_2(H) and equal to the grading-odd part of the compression of the real functions on CP^3 odd under the fibre involution; the whole fibre-odd Hermitian image has ten real directions, four grading-odd (Q(f o j) = j Q(f) j^-1); End_C(W) = 1 + 5 + 10 restricts to K_p as (1,1), (1,1) + (2,2), (3,1) + (1,3) + (2,2).").
source(l46_odd_blocks, 'lemmas/46_odd_blocks_quaternionic_sheet.md', 'statements').
attempted_by(l46_odd_blocks, claude_fable_5_1).
checked_by(l46_odd_blocks, claude_fable_5_1, python("Clifford relations, j, commutant dimensions 16, 8, 16, K_p-invariance of the two spans; not kept")).
depends(l46_odd_blocks, l10_toeplitz).  depends(l46_odd_blocks, l16_two_sheets).
checked_by(l46_odd_blocks, claude_opus_5_5, python("the Clifford structure, j, the dimensions and spans, a Monte Carlo compression of a fibre-odd function")).  % 5 Nov 2026: item 3 sharpened
claim(l46_doublet_masses, proposition, proved, "Proposition 46.2", "For a Yukawa block X = L_q + i L_q' on a doublet, with q, q' quaternions acting by left multiplication, the two masses are m_+-^2 = |q|^2 + |q'|^2 +- 2 |Im(conj(q) q')|; they are equal iff X = z L_h (z complex, h quaternionic), including the purely anti-quaternionic case q = 0; the equal-mass condition holds for the odd part of the compression of every real function on S^4; m_- = 0 < m_+ iff q != 0 and q' = q u with u a unit imaginary quaternion, that is X = 2 L_q P_u of rank one with the two halves of equal norm.").
source(l46_doublet_masses, 'lemmas/46_odd_blocks_quaternionic_sheet.md', 'statements').
attempted_by(l46_doublet_masses, claude_fable_5_1).
checked_by(l46_doublet_masses, claude_fable_5_1, python("the mass formula and the rank-one limit on random quaternions; not kept")).
depends(l46_doublet_masses, l46_odd_blocks).
checked_by(l46_doublet_masses, claude_opus_5_5, python("the mass formula on 2000 random pairs, det X, the rank-one case, three generations")).  % 5 Nov 2026: convention of L_q, case q = 0, the lepton block; a restatement of the bidoublet mass matrices in print
claim(l46_hypercharge_direction, corollary, proved, "Corollary 46.4", "If a doublet has m_+ != m_-, the commutant of X^* X in Sp(1)_b is a circle U(1)_b with weight lines the two mass eigenlines of L_p: a maximal torus of the kind lemma 42 marked by hand, equal to lemma 42's U(1)_b (the stabilizer of the connector's line) iff that line is one of its weight lines, under which T_p S^4 restricts to one complex doublet of hypercharge 1/2; with the axis under the connector's quaternionic line, the Majorana state is a Dirac-mass eigenstate iff w is an eigenline of X^* X; the stabilizer of nonzero X in K_p is a conjugate diagonal Sp(1) for equal masses and a circle for split ones; X = 0 has the full stabilizer K_p, and X and the connector's line leave a common circle unbroken iff the eigenline condition holds; for a j-linear block neither is determined.").
source(l46_hypercharge_direction, 'lemmas/46_odd_blocks_quaternionic_sheet.md', 'statements').
attempted_by(l46_hypercharge_direction, claude_fable_5_1).
checked_by(l46_hypercharge_direction, claude_fable_5_1, by_hand).
depends(l46_hypercharge_direction, l46_doublet_masses).  depends(l46_hypercharge_direction, l42_tangent).  depends(l46_hypercharge_direction, l20_rank_one).
checked_by(l46_hypercharge_direction, claude_opus_5_5, python("stabilizer dimensions 3, 1, 1, 0")).  % 5 Nov 2026: the identification with lemma 42's U(1)_b made conditional; stabilizers added
claim(l46_cross_blocks, proposition, proved, "Proposition 46.3", "In the window of Theorem 29.7, under the weighted estimates of Proposition 29.8, |<v, B u>| <= C_eta ||B|| exp(-(1 - eta)(M/2) int f) for a unit core state u, a unit wall state v and a bounded multiplication operator B (false for a general bounded operator, B = v u^*): for an odd inter-copy perturbation the cross block is bounded by the exponential that bounds lambda_M, with no lower bound; ordinary diagonal multiplication has zero inter-copy block. For a coordinate x_a of S^4 the odd inter-copy block is c_M Gamma_a by Schur; c_M != 0 is not shown and arg(c_M conj(lambda_M)) is invariant when both coefficients are nonzero; 2 ||B|| below the actual spectral separation is sufficient for isolation, and higher-order tunnelling is unestimated; a window operator with block lambda + mu n.Gamma has eigenvalues +-|lambda + mu| and +-|lambda - mu|, each of multiplicity two.").
source(l46_cross_blocks, 'lemmas/46_odd_blocks_quaternionic_sheet.md', 'statements').
attempted_by(l46_cross_blocks, claude_fable_5_1).
checked_by(l46_cross_blocks, claude_fable_5_1, python("the spectrum with a complex mu; not kept")).
depends(l46_cross_blocks, l29_tunnelling).  depends(l46_cross_blocks, l28_tunnelling).
checked_by(l46_cross_blocks, claude_opus_5_5, python("the window spectrum")).  % 5 Nov 2026: hypothesis corrected to multiplication operators; weights extended; upper bound only
addresses(t14, l46_odd_blocks).  addresses(t14, l46_doublet_masses).  addresses(t14, l46_cross_blocks).  addresses(t0, l46_hypercharge_direction).  addresses(t12, l46_doublet_masses).
claim(l47_killing_form, proposition, proved, "Proposition 47.1", "On the Berger five-sphere (Hopf fibre scaled by eta, volume V_eta), the Kaluza-Klein kinetic form of the Killing vectors is <K_T, K_T'> = V_eta (3 + eta^2) tr(T T')/12 for Hermitian traceless T, T' on C^3, <K_c, K_c> = V_eta eta^2 c^2 for the central circle with charge c on the coordinates, and <K_T, K_c> = 0.").
source(l47_killing_form, 'lemmas/47_berger_sphere_coupling_normalization.md', 'statements').
attempted_by(l47_killing_form, claude_fable_5_1).
checked_by(l47_killing_form, claude_fable_5_1, python("the two sphere moments by Monte Carlo (2 x 10^6 points); not kept")).
checked_by(l47_killing_form, claude_opus_5_5, python("the two moments and the Berger form at eta = 0.5, 1, 2, 3 by Monte Carlo with 4 x 10^6 points")).  % 5 Nov 2026
claim(l47_coupling_ratio, corollary, proved, "Corollary 47.2", "e^2/g_s^2 = (3 + eta^2)/(24 eta^2 c^2) at tree level; the two formulas of the parked job 04 are c = 1/3 and c = 2/3; the spinor unit at the round point (the 4 of SU(4) restricting to U(3) as 3_{-1/3} + 1_1, the coordinates at 2/3 in Lambda^2(4)) gives 3(eta^2 + 3)/(32 eta^2), equal to Connes' matching value 3/8 at eta = 1 (also by Schur's lemma: tr Q^2 = 4/3 against tr T^2 = 1/2, so independent of any SO(6)-invariant source), and in the Einstein-term reduction decreasing to 3/32 as eta -> infinity; c = 2/3 is the superconformal R-charge of Barnes, Gorbatov, Intriligator and Wright, whose tau_SU(3)/tau_RR = 3/8.").
source(l47_coupling_ratio, 'lemmas/47_berger_sphere_coupling_normalization.md', 'statements').
attempted_by(l47_coupling_ratio, claude_fable_5_1).
checked_by(l47_coupling_ratio, claude_fable_5_1, python("the formula at eta = 1, 2, 1/2 against the Monte Carlo moments; the charges of Lambda^2(4); not kept")).
depends(l47_coupling_ratio, l47_killing_form).
checked_by(l47_coupling_ratio, claude_opus_5_5, python("the charges of Lambda^2(4), the traces in the 4 and the 6, the ratio with a Ricci-weighted term")).  % 5 Nov 2026: Weinberg's formula; Einstein-term scope of the curve; enhancement proved via the Ricci eigenvalues
addresses(t18, l47_killing_form).  addresses(t18, l47_coupling_ratio).
claim(l47_matching_radius, proposition, proved, "The Berger radius at fixed gauge matching", "At fixed nine-dimensional Einstein coefficient C9 and spinor charge unit c=2/3, relative full-module gauge matching on the Berger S^5 selects (R,eta)=(R,1) for every R>0. Both subgroup couplings squared scale as R^-7. Independently fixing the spectral moment f0 as well selects R^7=12 f0/(C9 pi^5). The round isometry is SO(6).").
source(l47_matching_radius, 'results/47_berger_radius_at_matching.md', '').
depends(l47_matching_radius, l47_coupling_ratio).
attempted_by(l47_matching_radius, codex_gpt_6).
checked_by(l47_matching_radius, terra_6_1, by_hand).
addresses(t13, l47_matching_radius).  addresses(t18, l47_matching_radius).
claim(l48_spin_lift, proposition, proved, "Proposition 48.1", "On T^6 = A x E with the flat metric, a transposition of S_3 acts on T A = a (x) R^2 as the rotation by pi in a two-plane, both lifts to Spin(4) having order four (rs_N20: no homomorphic lift of S_3), a three-cycle lifts to order three, the lift of S_3 is Dic_3, the inversion of E lifts to a central element of square -1, and the lift group of W = S_3 x Z_2 is (Dic_3 x Z_4)/Z_2 of order 24, isomorphic to S_3 x Z_4 (the twisted S_3 pairing odd permutations with the inversion lifts homomorphically), with lifted stabilizers Dic_3 at an orbit of stabilizer S_3, the whole group at the fixed point, and (Z_4 x Z_4)/Z_2 at the three-point orbit.").
source(l48_spin_lift, 'lemmas/48_spin_lift_quaternions_weyl_orbits.md', 'statements').
attempted_by(l48_spin_lift, claude_fable_5_1).
checked_by(l48_spin_lift, claude_fable_5_1, by_hand).
depends(l48_spin_lift, l45_fibres).
checked_by(l48_spin_lift, claude_opus_5_5, python("an explicit Cl(6): the lifts and the groups they generate with their element orders; the S_3-invariant spin structures of A")).  % 5 Nov 2026
claim(l48_spinorial_algebras, proposition, proved, "Proposition 48.2", "R[Dic_3] = R + R + M_2(R) + C + H, with spinorial part (-1 acting as -1) C + H: the conjugate pair of characters with the lifted transposition acting as +-i, and the faithful two-dimensional representation, of quaternionic type; at the fixed point the central lift of the inversion acts as +-i on every spinorial representation, which are then of complex type, and the spinorial part is C + C + M_2(C); at the three-point orbit it is C + C.").
source(l48_spinorial_algebras, 'lemmas/48_spin_lift_quaternions_weyl_orbits.md', 'statements').
attempted_by(l48_spinorial_algebras, claude_fable_5_1).
checked_by(l48_spinorial_algebras, claude_fable_5_1, by_hand).
depends(l48_spinorial_algebras, l48_spin_lift).
checked_by(l48_spinorial_algebras, claude_opus_5_5, python("spinor decompositions by characters and Frobenius-Schur sums; real spans and centres")).  % 5 Nov 2026: the matrix of the standard representation corrected
claim(l48_real_two_sheets, theorem, proved, "Theorem 48.3", "The fibre of the spinorial real crossed product at an orbit of type (a, a, a) is M_2(C + H), with corner C + H, and at the three-point orbit M_3(C + C); the two-sheet bimodule of Theorem 45.2 with its first sheet at such an orbit (V_X = C + C^2, A_{F,X} = C + H, G = (1, -1), d_X = D_v; V_Y = C^3, M_3(C)) has the KO-6 signs, order zero, order one, nonzero one-forms and the real orientability relation over the real algebra C + H + M_3(C), with the corpus intersection form of rank 2; the spinorial condition fixes the algebra on each of the six orbit types, the quaternionic summand occurring only at stabilizer S_3 and the matrix size 3 only at the three-point orbit, so a first-sheet point corner and a whole second-sheet simple quotient force the two orbit types. A rank-three corner of M_6(C) is an alternative if arbitrary second-sheet corners are allowed; V_X keeps one of the two conjugate characters (a choice of submodule), and the corner at O_1 against the quotient at O_2 is a choice.").
source(l48_real_two_sheets, 'lemmas/48_spin_lift_quaternions_weyl_orbits.md', 'statements').
attempted_by(l48_real_two_sheets, claude_fable_5_1).
checked_by(l48_real_two_sheets, claude_fable_5_1, by_hand).
depends(l48_real_two_sheets, l48_spinorial_algebras).  depends(l48_real_two_sheets, l45_two_sheets).  depends(l48_real_two_sheets, l16_two_sheets).
checked_by(l48_real_two_sheets, claude_opus_5_5, python("the fibres of the spinorial crossed product at the two orbits; the bimodule axioms and the intersection form on the 18 states")).  % 5 Nov 2026: corner/quotient choice stated; selection restated as the forcing of the orbit types
addresses(t16, l48_spin_lift).  addresses(t16, l48_spinorial_algebras).  addresses(t16, l48_real_two_sheets).
claim(l49_sheet_is_spinor_fibre, proposition, proved, "Proposition 49.1", "The spinor fibre Sigma_4 of the flat four-torus A with the Clifford action c(e_a) (a = 1..4), the chirality Gamma and the quaternionic structure j is the sheet W = H^2 of Example 16.9 with axis p = e_5: the chirality is the grading axis, the two chiralities are L_p and L_p^perp, Spin(4) is K_p, and v -> c(v)|_{Sigma_+} is a Spin(4)-equivariant isomorphism from T A = R^4 onto Hom_H(Sigma_+, Sigma_-) = T_p S^4; the even algebra is End_H(Sigma_+) + End_H(Sigma_-) = H_R + H_L.").
source(l49_sheet_is_spinor_fibre, 'lemmas/49_spinor_fibre_is_the_quaternionic_sheet.md', 'statements').
attempted_by(l49_sheet_is_spinor_fibre, claude_fable_5_1).
checked_by(l49_sheet_is_spinor_fibre, claude_fable_5_1, python("Cl(4) with chirality as Cl(5); j commuting with all generators; not kept")).
depends(l49_sheet_is_spinor_fibre, l46_odd_blocks).
checked_by(l49_sheet_is_spinor_fibre, claude_opus_5_5, python("explicit Cl(4) with chirality and j; ranks; the centralizer of Gamma_5 in sp(2); the orientation that fixes Sigma_R")).  % 5 Nov 2026
claim(l49_hypercharge_is_transposition, proposition, proved, "Proposition 49.2", "The lifted stabilizer Dic_3 of the orbit type (a, a, a) acts on one chirality Sigma_R through Z_4 (the three-cycles trivially, the lifted transposition x with eigenvalues +-i) and on the other Sigma_L through its faithful representation; the real algebra it generates on Sigma_4 is C + H with C = span(1, x|Sigma_R) acting as (lambda, conj lambda), the Cartan of H_R, and H = End_H(Sigma_L): the part on the first sheet of the Standard Model algebra of Chamseddine-Connes-Marcolli (Proposition 2.11) inside the Pati-Salam pair; the circle of the lifted transposition is the T_3R torus, the same for the three transpositions, equal to lemma 42's U(1)_b iff the connector's line is one of its weight lines and to Corollary 46.4's torus iff the mass eigenlines are its weight lines.").
source(l49_hypercharge_is_transposition, 'lemmas/49_spinor_fibre_is_the_quaternionic_sheet.md', 'statements').
attempted_by(l49_hypercharge_is_transposition, claude_fable_5_1).
checked_by(l49_hypercharge_is_transposition, claude_fable_5_1, python("the lifts in Cl(4), their eigenvalues on the two chiralities, the real span of dimension 6; not kept")).
depends(l49_hypercharge_is_transposition, l48_spin_lift).  depends(l49_hypercharge_is_transposition, l48_spinorial_algebras).  depends(l49_hypercharge_is_transposition, l42_tangent).
checked_by(l49_hypercharge_is_transposition, claude_opus_5_5, python("the lifts from their adjoint action, the group of order 12, the action on the chiralities, the real spans 6, 2, 4")).  % 5 Nov 2026: the eigenline condition for lemma 42 added; the embedding is CCM's Proposition 2.11
claim(l49_invariant_yukawa, proposition, proved, "Proposition 49.3", "With x acting as L_i on both chiralities, the odd Hermitian blocks commuting with x are X = diag(y_1, y_2) in the bases (1, j), complex dimension two, the Y_u and Y_d of the spectral Standard Model; X = L_a + i L_c with a = (y_1 + conj y_2)/2 and c = (y_1 - conj y_2)/(2i), the quaternionic ones having y_2 = conj y_1; commuting with x is the condition [D_F, C_F] = 0 of Chamseddine-Connes-Marcolli (Definition 2.20), and no nonzero odd block is invariant under the circle of x on Sigma_R alone or commutes with all of Dic_3.").
source(l49_invariant_yukawa, 'lemmas/49_spinor_fibre_is_the_quaternionic_sheet.md', 'statements').
attempted_by(l49_invariant_yukawa, claude_fable_5_1).
checked_by(l49_invariant_yukawa, claude_fable_5_1, python("complex dimensions 2 and 0 of the commuting blocks; not kept")).
depends(l49_invariant_yukawa, l49_hypercharge_is_transposition).  depends(l49_invariant_yukawa, l46_doublet_masses).
checked_by(l49_invariant_yukawa, claude_opus_5_5, python("invariant blocks of real dimensions 4, 0, 0; the inversion formulas and the mass formula on random data")).  % 5 Nov 2026: the phrase 'invariant under the hypercharge circle' corrected
claim(l49_orbit_types_groups, proposition, proved, "Proposition 49.4", "The stabilizers in S_3 of the points of A are S_3 at the nine points (a, a, a) with 3a = 0, <tau> on the mirror planes and trivial elsewhere; the lifted stabilizer algebras on Sigma_4 are C + H, C (the circle of the lifted transposition on both chiralities, the common unbroken circle of Corollary 46.4 for a diagonal block with distinct moduli and a weight line) and R, with unitary groups U(1) x SU(2), U(1) and {+-1}; the middle algebra is CCM's C_F on the first sheet; the Clifford element of a displacement along a mirror is a quaternionic block commuting with x.").
source(l49_orbit_types_groups, 'lemmas/49_spinor_fibre_is_the_quaternionic_sheet.md', 'statements').
attempted_by(l49_orbit_types_groups, claude_fable_5_1).
checked_by(l49_orbit_types_groups, claude_fable_5_1, by_hand).
depends(l49_orbit_types_groups, l49_hypercharge_is_transposition).  depends(l49_orbit_types_groups, l46_hypercharge_direction).
checked_by(l49_orbit_types_groups, claude_opus_5_5, python("stabilizers in spin(4) of diagonal, rank-one and quaternionic blocks; the displacements along and across the mirror")).  % 5 Nov 2026: unitary group of R is {+-1}
claim(l49_quark_generation, proposition, proved, "Proposition 49.5", "Corollary 16.8 with V_X = Sigma_4, A_{F,X} = C + H, grading the chirality of A (for the orientation making Sigma_R the line of H_R), d_X a nonzero odd block, and V_Y = C^3 with M_3(C) gives a 24-state bimodule over C + H + M_3(C) with the KO-6 signs, order zero, order one, nonzero one-forms and the orientability relation: the quark sector of one generation of the spectral Standard Model, with intersection form [[0,0,2],[0,0,-2],[-2,2,0]] of rank 2, the quark summand H_F^(3) of Chamseddine-Connes-Marcolli with their printed pairing (Proposition 2.30); the 18-state Hilbert space of Theorem 48.3 is the sub-bimodule on one weight line, preserved by D_F iff X vanishes on the other.").
source(l49_quark_generation, 'lemmas/49_spinor_fibre_is_the_quaternionic_sheet.md', 'statements').
attempted_by(l49_quark_generation, claude_fable_5_1).
checked_by(l49_quark_generation, claude_fable_5_1, by_hand).  % the referee of lemma 48 checked the axioms numerically as a lead
depends(l49_quark_generation, l48_real_two_sheets).  depends(l49_quark_generation, l16_two_sheets).
checked_by(l49_quark_generation, claude_opus_5_5, python("the 24-state bimodule: all axioms on random algebra elements, the intersection form, the restriction to one weight line")).  % 5 Nov 2026
addresses(t14, l49_sheet_is_spinor_fibre).  addresses(t14, l49_hypercharge_is_transposition).  addresses(t14, l49_invariant_yukawa).  addresses(t16, l49_quark_generation).  addresses(t0, l49_orbit_types_groups).
claim(l50_top_block, proposition, proved, "Proposition 50.1", "On the quaternionic sheet with axis p and the connector of Theorem 20.2 on the lines Cw in L_p and Cv in V: n -> c(n) w is a real isometry of T_p S^4 onto L_p^perp, so a rank-one Yukawa block X = m lambda mu^* (one massless member) is c(h) P_mu with h in T_p S^4, |h| = m, Hermitian block {c(h), P_mu} with j-linear half c(h)/2 and j-antilinear half {c(h), P_mu - P_{j mu}}/2 of equal norms; the eigenline condition of Corollary 46.4 holds iff C mu = Cw or C jw, iff the block and the connector share an unbroken circle; C mu = Cw gives the mass to nu_R and u_R (the up-type assignment, an input; Proposition 21.1 supports it for a quark-only block, while with the universal block (d, e) keeps 5/8 and 8/3 as (u, nu) does), and then X = c(h) P_w: the point [w] of the twistor fibre carries the Majorana block and the top's right-handed states, the massive left-handed line is C c(h) w, the joint stabilizer is the circle U(1)_h, c(n) with n = h/|h| commutes with it, and U(1)_b acts on (T_p S^4, J_w) by the scalars e^{-i theta}, with J_w the complex structure c(J_w n') w = i c(n') w of the twistor point [w]: the doublet (2)_{-1} of Proposition 42.2, hypercharge -1/2 (+1/2 for -J_w = J_{jw}); the blocks commuting with U(1)_h are c(n)(y_1 P_w + y_2 P_{jw}), with three generations c(n)(Y_u (x) P_w + Y_d (x) P_{jw}).").
source(l50_top_block, 'lemmas/50_majorana_line_and_top_block.md', 'statements').
attempted_by(l50_top_block, claude_fable_5_1).
checked_by(l50_top_block, claude_fable_5_1, python("Cl(5) and j, the isometry, the spectrum and halves of the block, J_w and the circle action, the invariant blocks; not kept")).
depends(l50_top_block, l46_doublet_masses).  depends(l50_top_block, l46_hypercharge_direction).  depends(l50_top_block, l20_rank_one).  depends(l50_top_block, l42_tangent).  depends(l50_top_block, l21_removal).
checked_by(l50_top_block, claude_opus_5_5, python("400 random frames for both Cl(5) representations: the isometry, the halves and norms, the stabilizers, J_w, the invariant blocks (dimensions 4 and 36); the removal identities in exact fractions; the up-type assignment found to be an input")).  % refereed 5 Nov 2026
claim(l50_height_functions, proposition, proved, "Proposition 50.2", "In the convention Q(1) = 1, Q(5 x_a) = Gamma_a of the compression to H^0(CP^3, O(1)) (Example 16.9, item 2, extended complex-linearly): Q(5 w'^* B w'/w'^* w') = B + tr(B) 1 for every B in End(C^4); so 5 Q(p . x) = Gamma_p = 2 Pi_p - 1 (the height function of S^4 at the axis), Q(5 cos^2 d(., [w]) - 1) = P_w (the height function of CP^3 at the marked point) and P_v = Q_V(h_v) on the second sheet; the top block is m {5 Q(n . x), Q(h_w)}, the Majorana block is supported on Q(h_w) Hom(V, W) Q_V(h_v), and the j-antilinear half of the block is i c(delta') Gamma_p with delta' = -J_w h/2 (sign fixed by the definition of J_w; delta' = -J_mu h/2 for any rank-one block c(h) P_mu), the three-form term of lemma 49 with dual the quarter turn of the Higgs vector.").
source(l50_height_functions, 'lemmas/50_majorana_line_and_top_block.md', 'statements').
attempted_by(l50_height_functions, claude_fable_5_1).
checked_by(l50_height_functions, claude_fable_5_1, python("Monte Carlo on CP^3 with 4 x 10^5 points: Q(x_1), Q(5|<., w>|^2), Q(5<., B .>); the three-form coefficient; not kept")).
depends(l50_height_functions, l10_toeplitz).  depends(l50_height_functions, l16_twistor).  depends(l50_height_functions, l46_odd_blocks).  depends(l50_height_functions, l50_top_block).
checked_by(l50_height_functions, claude_opus_5_5, python("the fourth-moment proof and 50 random complex B; Monte Carlo on S^7; delta' = -J_mu h/2 in all 400 frames, the opposite sign in none")).  % refereed 5 Nov 2026
claim(l50_split_after_connector, proposition, proved, "Proposition 50.3", "In the data of Corollary 16.8 with V_X = W (A_X containing Gamma_p) and V_Y = V = C^4 with A_Y in M_4(C), D x = sum Y_i x P_i, D y = sum P_i y Y_i (projections P_i on V summing to 1, odd Hermitian Y_i) is self-adjoint, odd, J-invariant, of order zero, with order-one defect sum [Y_i, a_X] x [b_Y, P_i]: order one for every A_Y when the Y_i are equal, for every Y_i when the P_i commute with A_Y, and for independent Y_i exactly then; for Y_l (x) P_v + Y_q (x) (1 - P_v) exactly when Y_l = Y_q or [A_Y, P_v] = 0; on M_4(C) the block is universal (Dirac neutrino and up quark, charged lepton and down quark, of equal mass: the unified Yukawas of the spectral Pati-Salam model), and the commutant of P_v is C + M_3(C), the second-sheet algebra of the connector on v, on which the split keeps order one; with colour End(v^perp) retained the line of the split is the connector's line; the top-only family of lemma 21 keeps order one exactly when the second-sheet algebra commutes with P_v, with all of H_R + H_L allowed on the first sheet, and with the connector on the same line exactly on A(T_kappa) = C + H + M_3(C); the split block lies outside the compressed form d_X (x) 1 of Corollary 16.8.").
source(l50_split_after_connector, 'lemmas/50_majorana_line_and_top_block.md', 'statements').
attempted_by(l50_split_after_connector, claude_fable_5_1).
checked_by(l50_split_after_connector, claude_fable_5_1, python("order-one defects of the split block on M_4(C) and on C + M_3(C), of the universal block, J D = D J, on random data; not kept")).
depends(l50_split_after_connector, l16_two_sheets).  depends(l50_split_after_connector, l20_rank_one).  depends(l50_split_after_connector, l46_doublet_masses).
checked_by(l50_split_after_connector, claude_opus_5_5, python("order-one defects of the universal, split and top-only blocks on M_4(C), on C + M_3(C) and on the 28-dimensional algebra, with and without the connector; the closing sentence corrected")).  % refereed 5 Nov 2026
prior_work(l50_split_after_connector, partial, "Krajewski arXiv:hep-th/9701081 sections 3.4, 4.1-4.2 (first-order operators are left-linear plus right-linear; vertical edges Delta_ik^jl = delta_kl M_ij,k (x) I): with the grading in the left algebra this is the criterion; Chamseddine-Connes-Marcolli Theorem 2.21; Chamseddine-Connes-van Suijlekom arXiv:1304.8050 sections 4, 5, 8 (unified case, Sigma decouples; the Standard Model vacuum aligns Delta, Sigma, phi on the lines of Propositions 50.1 and 50.3); the forcing of the shared lepton line (item 5) not found").
prior_work(l50_top_block, partial, "Chamseddine-Connes-Marcolli arXiv:hep-th/0610241 Proposition 3.5, Lemma 3.6, Theorem 2.21: the Yukawa block as a quaternionic Higgs times diag(Y_u, Y_d); the twistor reading not found").
prior_work(l50_height_functions, known, "Example 16.9 item 2 (Hermitian B); level-one Berezin symbols (Berezin, Math. USSR Izv. 6 (1972) 1117, doi:10.1070/IM1972v006n05ABEH001913; Comm. Math. Phys. 40 (1975) 153, doi:10.1007/BF01609397)").
claim(l50_top_centralizer, proposition, proved, "Proposition 50.4", "For D_F = {c(h), P_w} (x) (1 - P_v) + S_{T_kappa} (the top-only family, one generation) the centralizer in A_SM = A(T_kappa) is {(lambda, lambda_h, m)} = C + M_3(C), real dimension 20, with lambda_h the embedding of C in H_L along the massive left-handed line C c(h) w; its unitary group U(1) x U(3) acts, under the unimodularity inherited from A_SM (Proposition 41.5), as U(1)_em x SU(3) with the charges (2/3, -1/3, -1, 0), the gauge group of the label 9; no scalar fluctuation on it (Proposition 17.3); the same algebra as lemma 44's retained algebra (same embedding for a universal block) and as the corpus row rs_F1, with the embedding now fixed by h.").
source(l50_top_centralizer, 'lemmas/50_majorana_line_and_top_block.md', 'statements').
attempted_by(l50_top_centralizer, claude_fable_5_1).
checked_by(l50_top_centralizer, claude_fable_5_1, python("real dimension 20 of the centralizer and the forced eigenvector condition, on random data; not kept")).
depends(l50_top_centralizer, l50_top_block).  depends(l50_top_centralizer, l20_rank_one).  depends(l50_top_centralizer, l17_no_higgs).  depends(l50_top_centralizer, l41_unimod).  depends(l50_top_centralizer, l44_algebra).
checked_by(l50_top_centralizer, claude_opus_5_5, python("centralizer dimensions 20 (kappa nonzero and zero, universal block, aligned lepton block) and 19 (misaligned lepton block); the charges (2/3, -1/3, -1, 0) under theta_lambda + 3 theta_c = 0")).  % refereed 5 Nov 2026
covered_by(rs_F1, l50_top_centralizer).
addresses(t12, l50_top_block).  addresses(t12, l50_top_centralizer).  addresses(t12, l50_split_after_connector).  addresses(t14, l50_top_block).  addresses(t14, l50_height_functions).  addresses(t0, l50_height_functions).  addresses(t0b, l50_split_after_connector).  addresses(t2c, l50_top_centralizer).
claim(l51_window, proposition, proved, "Proposition 51.1", "On the flat four-torus A with the periodic spin structure, D_{A,H} = D + c(A) + s i c(H) with a constant one-form A (a flat U(1) connection) and a constant three-form H, s i c(H) = i c(eta) Gamma, commutes with the translations and equals Y_k = c(k + A) + i c(eta) Gamma on the sector of momentum k, an odd Hermitian block with j-linear half c(k + A) and j-antilinear half i c(eta) Gamma, of eigenvalues +-m_+(k), +-m_-(k), m_+-(k)^2 = |k + A|^2 + |eta|^2 +- 2 |(k + A) wedge eta|; for |A| + |eta| < pi/l (2 pi/l the shortest nonzero dual vector) the constant spinors are the lowest window, the other eigenvalues having absolute value at least 2 pi/l - |A| - |eta|, and the compression to it is exactly Y = c(A) + i c(eta) Gamma, the Yukawa block of lemma 46 with q <-> A, q' <-> eta.").
source(l51_window, 'lemmas/51_torus_wilson_line_and_torsion_yukawa.md', 'statements').
attempted_by(l51_window, claude_fable_5_1).
checked_by(l51_window, claude_fable_5_1, python("the three-form identity, the mass formula on 200 random pairs, the isolation of the window on 400 random pairs with the momenta enumerated in a box; not kept")).
depends(l51_window, l49_sheet_is_spinor_fibre).  depends(l51_window, l46_odd_blocks).  depends(l51_window, l46_doublet_masses).
checked_by(l51_window, claude_opus_5_5, python("2000 random pairs for the spectrum of Y_k; the window on Lambda_coroot (x) Lambda_E, tau_E = 0.3 + 1.1i, 400 random (A, eta) with |A| + |eta| < pi/l, no violation; the three-form identity and H -> eta; Agricola's D^s = D^0 + 3sT read in the e-print")).  % refereed 5 Nov 2026
claim(l51_photon_condition, proposition, proved, "Proposition 51.2", "tau-tilde D_{A,H} tau-tilde^{-1} = D + c(d tau A) + i c(d tau eta) Gamma for the lift tau-tilde of a transposition tau, so D_{A,H} commutes with it exactly when A and eta lie in the mirror plane P_tau = n_tau^perp (x) R^2, a complex line of A; then the window block commutes with the lifted transposition x on both chiralities, the algebra C of the mirror stratum (Proposition 49.4), which is the condition [D_F, C_F] = 0 of Chamseddine-Connes-Marcolli (Proposition 49.3), and these are all the x-invariant blocks; a nonzero A or eta in P_tau is fixed by tau only (the mirror planes meet in 0, a three-cycle fixes no vector), so the symmetric points carry no Yukawa block; for v in P_tau^perp, x c(v) x^{-1} = -c(v); A as a class modulo 2 pi Lambda^* changes nothing for |A| < pi/l.").
source(l51_photon_condition, 'lemmas/51_torus_wilson_line_and_torsion_yukawa.md', 'statements').
attempted_by(l51_photon_condition, claude_fable_5_1).
checked_by(l51_photon_condition, claude_fable_5_1, python("x c(v) x^-1 = c(d tau v); commutation exactly for data in the mirror plane; eigenvalues of x on the chiralities; fixed space of a three-cycle; not kept")).
depends(l51_photon_condition, l51_window).  depends(l51_photon_condition, l48_spin_lift).  depends(l51_photon_condition, l49_invariant_yukawa).  depends(l51_photon_condition, l49_orbit_types_groups).
checked_by(l51_photon_condition, claude_opus_5_5, python("x = c(f_1) c(f_2), x^2 = -1, eigenvalues +-i on both chiralities; kernel of (A, eta) -> [Y, x] equal to P_tau x P_tau, real dimension 4, equal to the x-invariant odd blocks; no fixed vector of a three-cycle; P_tau cap P_tau' = 0")).  % refereed 5 Nov 2026
claim(l51_rank_one_pattern, proposition, proved, "Proposition 51.3", "For A, eta in P_tau with angle phi and J the complex structure of A from E: m_+-^2 = |A|^2 + |eta|^2 +- 2 |A| |eta| sin phi; equal masses exactly when A wedge eta = 0; the masses are |A| + |eta| and ||A| - |eta|| exactly when <A,eta> = 0; on a weight line mu of x (J_mu = +-J) the coupling has modulus |A + J_mu eta|, so with the up-type member on the Majorana line w, y_u = A + J_w eta and conj(y_d) = A - J_w eta in (P_tau, J_w), the up-type member the heavier exactly when <J_w A, eta> < 0; rank one exactly when A != 0 and eta = +- J A, the torsion as the quarter turn of the Wilson line, with m_+ = 2|A| and Y = {c(2A), P_mu}, J_mu = -+J, lemma 50's c(h) P_w with h = 2A when w = mu; the finite data of Corollary 16.8 at the mirror stratum (A_{F,X} = span(1, x), d_X = Y, colour sheet) are a 24-state bimodule over C + M_3(C) with the KO-6 signs, order zero, order one, zero one-forms and explicit masses, the mirror algebra being the centralizer for a nonzero block (Proposition 50.4), with the orientability relation failing, sums of a b° lying in span(1, x) (x) M_3(C).").
source(l51_rank_one_pattern, 'lemmas/51_torus_wilson_line_and_torsion_yukawa.md', 'statements').
attempted_by(l51_rank_one_pattern, claude_fable_5_1).
checked_by(l51_rank_one_pattern, claude_fable_5_1, python("the rank-one case eta = +- J A and the perpendicular case on the torus block; not kept")).
depends(l51_rank_one_pattern, l51_photon_condition).  depends(l51_rank_one_pattern, l50_height_functions).  depends(l51_rank_one_pattern, l50_top_centralizer).  depends(l51_rank_one_pattern, l17_no_higgs).  depends(l51_rank_one_pattern, l16_two_sheets).
checked_by(l51_rank_one_pattern, claude_opus_5_5, python("weight lines of x with J_mu = +-J; |y_mu| = |A + J_mu eta| on 500 random pairs; rank one at eta = +-J A with J_mu = -+J; the 24-state mirror bimodule: signs, order zero, order one, zero one-forms, orientability failing; centralizer of Y in C + H equal to span(1, x); the item-2 assignment corrected")).  % refereed 5 Nov 2026
prior_work(l51_window, partial, "Wilson lines shifting internal momenta: Hosotani, Phys. Lett. B 126 (1983) 309, doi:10.1016/0370-2693(83)90170-3, and gauge-Higgs unification (Hosotani-Noda-Sakamura arXiv:hep-ph/0601241; Matsumoto-Sakamura arXiv:1602.01994, Yukawas from fluxes and Wilson lines on T^2/Z_N; abstracts); Yukawas from magnetized tori: Cremades-Ibanez-Marchesano arXiv:hep-th/0404229 (abstract); Dirac operators with skew torsion: Agricola arXiv:math/0606705 (D^s = D^0 + 3sT, read), Bismut doi:10.1007/BF01443359, Friedrich-Ivanov doi:10.4310/AJM.2002.v6.n2.a5; the reading of the Wilson line and the three-form as the two halves of a bidoublet Yukawa block not found").
prior_work(l52_lepton_line, known, "Chamseddine-Connes-Marcolli arXiv:hep-th/0610241 (read by the referee): Proposition 2.11 (A_F unique up to automorphism as the maximal subalgebra with an off-diagonal Dirac operator), Proposition 2.30 (3) (the pairings on H_F^(1), H_F^(3), as here per generation), Corollary 2.31 and Remark 2.32 (nondegeneracy from the two classes); the dependence on the weight line of x not found").
addresses(t16, l51_window).  addresses(t16, l51_photon_condition).  addresses(t16, l51_rank_one_pattern).  addresses(t12, l51_rank_one_pattern).  addresses(t13, l51_window).  addresses(t0b, l51_photon_condition).
claim(l52_lepton_line, proposition, proved, "Proposition 52.1", "In the two-sheet data with V_X = Sigma_4 (A_{F,X} = C + H), V_Y = Cv + C^3 (A_{F,Y} = C' + M_3(C)) and D_F = D_Y + S_{T_kappa} (the split block of Proposition 50.3 and the nonzero connector): H_F = H_l + H_q with H_l = Sigma_4 (x) conj(Cv) + Cv (x) conj(Sigma_4) of 8 states containing the connector's vectors and H_q the quark generation of Proposition 49.5, both invariant under the algebra, J_F, Gamma_F and D_F; the largest subalgebra of C + H + C' + M_3(C) with order one for D_F is A_SM = {(lambda, q, lambda, m)}, the two copies of C identified, exactly when the connector's line is a weight line of x, and R + H + M_3(C) otherwise; on A_SM, H_l is the lepton summand H_F^(1) of Chamseddine-Connes-Marcolli with the Majorana block on nu_R; the trace-form pairing on H_l is [[0, 2, 0], [-2, 0, 0], [0, 0, 0]], nondegenerate over Q over C + H (determinant 4; the matrices of Chamseddine-Connes-Marcolli Proposition 2.30 (3)), on H_q [[0, 0, 2], [0, 0, -2], [-2, 2, 0]], and on H_F the sum, skew of rank two (Theorem 41.2 up to sign).").
source(l52_lepton_line, 'lemmas/52_lepton_generation_three_views.md', 'statements').
attempted_by(l52_lepton_line, claude_fable_5_1).
checked_by(l52_lepton_line, claude_fable_5_1, python("the lepton pairing over C + H; not kept")).
depends(l52_lepton_line, l20_rank_one).  depends(l52_lepton_line, l20_blocks).  depends(l52_lepton_line, l49_hypercharge_is_transposition).  depends(l52_lepton_line, l49_quark_generation).  depends(l52_lepton_line, l50_split_after_connector).  depends(l52_lepton_line, l16_two_sheets).  depends(l52_lepton_line, l41_forms).
checked_by(l52_lepton_line, claude_opus_5_5, python("32-state bimodule for w on either weight line and generic w: invariance of H_l, order one of D_Y on the four-summand algebra, the rank-one defect formula of S_T, order one on the intersection with A(T_kappa); the three pairings")).  % refereed 5 Nov 2026
claim(l52_majorana_nine, proposition, proved, "Proposition 52.2", "The Dirac spinor C^16 of Spin(1, 8) is (2, 1) (x) 4 + (1, 2) (x) 4 under Spin(1, 3) x Spin(5), a Majorana conjugation exists and exchanges the summands, so the Majorana spinor R^16 is the complex space (2, 1) (x) 4: four left-handed Weyl spinors in the spinor fibre W = H^2 of the internal five-manifold (the sheet of Proposition 49.1 for A x S^1, with c(e_5) = +-Gamma), which under K_p is (2, 1) + (1, 2) and under Sp(1)_a x U(1)_b is (2)_0 + (1)_{+1} + (1)_{-1}: the weak multiplets of a lepton generation, with Y = T_3R + (B-L)/2 requiring the additional B-L action; the nine-dimensional mass bilinear vanishes (rs_F3), a Majorana field has no Wilson line and admits the torsion of lemma 51 (C Gamma^{(3)} antisymmetric), so on A x S^1 the sector (k, k_5) has the mass operator c(k) + i c(eta) Gamma + k_5 Gamma, squared masses m_+-(k)^2 + k_5^2; the all-periodic spin structure has the self-conjugate zero sector carrying one generation with the masses |eta| of both members, and a pair of sectors +-(k, k_5) != 0 a generation and a mirror; a Majorana mass for nu_R alone is absent from Lorentz-invariant and constant bulk data (rs_F3; constant fluxes give nu_R^c and e_R^c Majorana entries of equal modulus), wall data (Remark 44.4), and selects KO-7 for one generation (lemma 06).").
source(l52_majorana_nine, 'lemmas/52_lepton_generation_three_views.md', 'statements').
attempted_by(l52_majorana_nine, claude_fable_5_1).
checked_by(l52_majorana_nine, claude_fable_5_1, python("explicit Cl(1,8) on C^16: the Majorana matrix B with B conj(B) = 1 (solution space of dimension one, none of the other type), commutation with the spin generators, exchange of the gamma_5 eigenspaces, commutant dimensions 4, 16, 2; not kept")).
depends(l52_majorana_nine, l49_sheet_is_spinor_fibre).  depends(l52_majorana_nine, l42_tangent).  depends(l52_majorana_nine, l51_window).  depends(l52_majorana_nine, l06_neutral).  depends(l52_majorana_nine, rs_F3).
checked_by(l52_majorana_nine, claude_opus_5_5, python("Cl(1,8) on C^16: B conj(Gamma) B^-1 = Gamma unique up to scale, B conj(B) = 1, none of the other sign; C symmetric, C Gamma^(n) symmetric for n = 0, 1, 4 and antisymmetric for n = 2, 3; commutants 32, 16, 2; zero-sector masses |eta|; constant-flux Majorana entries of equal modulus; statement (iii) corrected")).  % refereed 5 Nov 2026
claim(l52_flavour_adjoint, proposition, proved, "Proposition 52.3", "Under SU(2)_u x SU(3)_d x U(1)_em the adjoint of the flavour SU(5) of the five light quarks is (3, 1)_0 + (1, 8)_0 + (1, 1)_0 + (2, 3-bar)_{+1} + (2-bar, 3)_{-1}; three lepton generations with nu_R (24 states) have the U(1)_em weights 0 (12), +1 (6), -1 (6), so H_l^{(3)} and sl(5, C) are isomorphic U(1)_em-modules; the twelve left-handed Weyl fields pair by charge with the twelve complex scalars of the adjoint (the slepton counts 6, 6, 12 of lemma 21); the charged states count 2 x 3 on both sides, with the matching of generations to the 3 of SU(3)_d (3-bar for the conjugates) and of (e_L, e_R) to the 2 of SU(2)_u a reading; the top is absent.").
source(l52_flavour_adjoint, 'lemmas/52_lepton_generation_three_views.md', 'statements').
attempted_by(l52_flavour_adjoint, claude_fable_5_1).
checked_by(l52_flavour_adjoint, claude_fable_5_1, by_hand).
depends(l52_flavour_adjoint, l21_so30).  depends(l52_flavour_adjoint, l21_counts).  depends(l52_flavour_adjoint, l52_lepton_line).
checked_by(l52_flavour_adjoint, claude_opus_5_5, python("U(1)_em weights of sl(5, C) and of three lepton generations in exact fractions: (12, 6, 6)")).  % refereed 5 Nov 2026
prior_work(l52_majorana_nine, known, "The decomposition of a Majorana-Weyl spinor of ten dimensions, and of a Majorana spinor of nine, under Spin(1,3) x Spin(6) or Spin(5) as a left-handed Weyl spinor tensored with the internal spinor is standard (Polchinski, String Theory vol. 2, appendix B; Green-Schwarz-Witten vol. 2, chapter 15; not reopened); the vanishing Majorana bilinear in 8k + 1 is Alvarez-Gaume-Witten (rs_F3); the reading of the four Weyl spinors as one lepton generation with the K_p structure of the sheet not found").
prior_work(l52_flavour_adjoint, known, "The meson counts 6, 6, 12 of the five light quarks and their match with three generations of sleptons: Rivero, Eur. Phys. J. C 84 (2024) 1058, and hep-ph/0512065 (ledger rows d11_so32_comparison, l21_so30); the branching under SU(2)_u x SU(3)_d is elementary").
addresses(t16, l52_lepton_line).  addresses(t12, l52_flavour_adjoint).  addresses(t2c, l52_majorana_nine).  addresses(t13, l52_majorana_nine).  addresses(t0b, l52_lepton_line).  addresses(t8, l52_majorana_nine).

%% Flag spinors and the conic in the monopole collapse, 18 November 2026.
claim(l53_flag_multiplets, proposition, proved, "Proposition 53.1", "For the flag spin twist O(a,b) the index is ab(a+b)/2. The twists (1,2), (1,1), (2,1) give positive kernels 3, 1, 3-bar, while (0,k) is acyclic. The product spin-c twist O(-4,1) gives a geometric (3,2). On the flag independent weak multiplicities and hypercharge characters realize one generation of representations.").
source(l53_flag_multiplets, 'lemmas/53_flag_conic_and_monopole_window.md', 'bulk-chiral-multiplets').
attempted_by(l53_flag_multiplets, gpt_6_2_astra_max).
checked_by(l53_flag_multiplets, terra_6_1, by_hand).
addresses(t11, l53_flag_multiplets).  addresses(t18, l53_flag_multiplets).

claim(l53_conic_defect, proposition, proved, "Proposition 53.2", "The intrinsic spin index of the conic surface in the Hopf twist k is k^2. The graded Dolbeault operator of its Koszul divisor complex has one even zero mode, with squared L2 norm outside each fixed neighbourhood O(1/t) as the defect coefficient grows.").
source(l53_conic_defect, 'lemmas/53_flag_conic_and_monopole_window.md', 'localization-on-a-fixed-conic').
attempted_by(l53_conic_defect, gpt_6_2_astra_max).
checked_by(l53_conic_defect, terra_6_1, by_hand).
addresses(t11, l53_conic_defect).  addresses(t18, l53_conic_defect).

claim(l53_conic_window, proposition, proved, "Proposition 53.3", "In the homogeneous sphere collapse N(1,0) to S^5 with spin and relative monopole twist O(2), the vertical kernel is recovered by a length-two conic intersection including tangent jets. The bounded Dirac spectrum converges with multiplicity to that of the five-sphere with its fundamental SU(2) bundle, of odd kernel parity.").
source(l53_conic_window, 'lemmas/53_flag_conic_and_monopole_window.md', 'the-monopole-window-over-the-five-sphere').
attempted_by(l53_conic_window, gpt_6_2_astra_max).
checked_by(l53_conic_window, terra_6_1, by_hand).
addresses(t15, l53_conic_window).  addresses(t18, l53_conic_window).
claim(l23_potential, no_go, proved, "Proposition 23.8", "Flat massless family, this gauge content, fermions of frequency 1, one loop: theta = pi/2 is the unique global minimum for n_f > 0, and V is strictly decreasing for n_f >= 10.8; for smaller n_f, the early grid check is superseded by the proof of Theorem 24.9. Escapes: general bulk masses with a completion, warping, wall scalar with a potential, wall terms, fermions of frequency 2.").
source(l23_potential, 'lemmas/23_two_gradings_interval.md', 'the-one-loop-potential-in-the-same-family').
attempted_by(l23_potential, claude_opus_5_5).
attempted_by(l23_potential, terra_6_1).
checked_by(l23_potential, claude_opus_5_5, python("grids and quadrature")).
checked_by(l23_potential, astra6, by_hand).
prior_work(l25_sum_rule, partial, "m_t = 2 M_W in flat gauge-Higgs models with suitable representations: hep-ph/0510366, section 5; arXiv:1804.06012, Eq. (3.23). Coefficient (3 - d_eff)/24 and crossover not found in the records inspected.").
%% Lemma 17 (T10, routine part). Referee: historical/reviews/2026-11-03_terra_check_17.md
claim(l17_action, theorem, proved, "Theorem 17.1", "The fermion action of M x F on the Gamma = +1 subspace equals (1/2) <jj psi, (D_M + gamma_5 d) psi> on an unconstrained spinor, with jj = J_M (x) j for s = +1 and gamma_5 J_M (x) j for s = -1.").
source(l17_action, 'lemmas/17_explicit_masses_chiral_limit.md', 'the-reduced-action').
depends(l17_action, l08_reconcile).
attempted_by(l17_action, claude_opus_5_5).
checked_by(l17_action, claude_opus_5_5, python("numpy on a random finite model: the bilinear forms agree to 1e-14 for both signs")).
checked_by(l17_action, terra_6_1, by_hand).
claim(l17_one_dirac, corollary, proved, "Corollary 17.2", "Both reductions of a paired Dirac sector give one Dirac action of explicit mass m, up to an invertible change of Grassmann variables; an unpaired reduction has a Majorana-type action. The rotation exp(i pi gamma_5/4) sends D_M + gamma_5 m to D_M + i m, formally.").
source(l17_one_dirac, 'lemmas/17_explicit_masses_chiral_limit.md', 'the-reduced-action').
depends(l17_one_dirac, l17_action).
attempted_by(l17_one_dirac, claude_opus_5_5).
checked_by(l17_one_dirac, terra_6_1, by_hand).
claim(l17_no_higgs, proposition, proved, "Proposition 17.3 and Corollary 17.4", "On a subalgebra commuting with D_F and U, inner fluctuations have no scalar part and d stays constant: the Yukawa block is an explicit mass.").
source(l17_no_higgs, 'lemmas/17_explicit_masses_chiral_limit.md', 'the-reduced-action').
depends(l17_no_higgs, l17_action).
attempted_by(l17_no_higgs, claude_opus_5_5).
checked_by(l17_no_higgs, terra_6_1, by_hand).
claim(l17_symmetry, proposition, proved, "Proposition 17.5", "On the quark sector, G(M) = {(V_L, V_R) : V_L M = M V_R}, with G(0) = U(N_f) x U(N_f).").
source(l17_symmetry, 'lemmas/17_explicit_masses_chiral_limit.md', 'the-chiral-limit').
attempted_by(l17_symmetry, claude_opus_5_5).
checked_by(l17_symmetry, terra_6_1, by_hand).
claim(l17_reductions, theorem, proved, "Theorem 17.6", "Admissible involutions of each sign on the colour-only quark sector correspond to Sigma in U(N_f) with Sigma* M Hermitian, the stationary points of Re tr(M Sigma*), including saddles and maxima; at M = 0 they form a homogeneous space of U(N_f) x U(N_f). No energy selects among them.").
source(l17_reductions, 'lemmas/17_explicit_masses_chiral_limit.md', 'the-chiral-limit').
attempted_by(l17_reductions, claude_opus_5_5).
checked_by(l17_reductions, claude_opus_5_5, python("numpy: involution conditions, the formula for d, finite-difference criticality")).
checked_by(l17_reductions, terra_6_1, by_hand).
claim(l17_condensate, proposition, proved, "Proposition 17.8", "At finite volume and fixed background, with a pairing-compatible O(m) subtraction, c_V = n_0/(V m) + O(m): it tends to 0 when n_0 = 0 and has the displayed pole when n_0 > 0. The Banks-Casher form needs a measure, infinite volume, the order of limits and uniform control, stated as hypotheses.").
source(l17_condensate, 'lemmas/17_explicit_masses_chiral_limit.md', 'what-the-spectral-data-say-about-the-condensate').
attempted_by(l17_condensate, claude_opus_5_5).
checked_by(l17_condensate, terra_6_1, by_hand).
claim(l17_interval, proposition, proved, "Proposition 17.9", "On the interval the chiral limit has two routes: exponentially small residual mass by localization, at fixed mu or under a scaling hypothesis, and exact zero modes at X = 0, where X is a spurion on the wall; M_F is proportional to X only in the towerless limit.").
source(l17_interval, 'lemmas/17_explicit_masses_chiral_limit.md', 'the-chiral-limit-on-the-interval').
depends(l17_interval, l09_limits).
attempted_by(l17_interval, claude_opus_5_5).
checked_by(l17_interval, terra_6_1, by_hand).
claim(l17_no_kinetic, proposition, proved, "Proposition 17.10", "A spacetime-dependent reduction of the fixed operator generally gives a non-self-adjoint reduced operator and leaves the spectral action unchanged; a kinetic term needs a new operator with m != 0, whose coefficient is N_c f(0) m^2/(4 pi^2), or a quantum effective action.").
source(l17_no_kinetic, 'lemmas/17_explicit_masses_chiral_limit.md', 'spacetime-dependent-sigma').
depends(l17_no_kinetic, l17_action).
attempted_by(l17_no_kinetic, terra_6_1).
checked_by(l17_no_kinetic, claude_opus_5_5, by_hand).
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
strategy(t14, partial, "The massless electroweak limit as a joint limit: m_weak << E_eps << Delta_KK -> 0, finite states at the moving scale and a divergent count at fixed energy; this holds on the interval, the cylinder and, for a fermion window, the disc bundle; the vector poles on the disc bundle, gauge couplings and dynamics are open. The 11D line (historical/11D/README.md) adds the circle form of the interval, Witten spaces as a hypercharge quotient, and a heterotic and type I-prime dictionary, as propositions and proposals.").
strategy(t13, open, "Mass generation from D = 9 to D = 4 and the anchoring of the QCD and condensation scales to the Fermi scale; speculative steer for the next paper, in d9_masses_fermi_qcd_steer.md.").
strategy(t12, open, "The separate role of the top: removal identities, SO(30) from the five other quarks, inside SO(32), Seiberg duality with emergent supersymmetry, and the two families of 84 states against C_3, M2 and M5.").
strategy(t11, open, "Horava-Witten as a two-sheet geometry: walls as sheets, wall algebras as summands, bulk as connecting operator; compare the chiralities of the walls first.").
strategy(t15, open, "Engineered connections on a vertical kernel: which unitary connections on the kernel bundle of a fibrewise Dirac family are the Berry connections of a horizontal connection on the coefficient bundle (the device of lemma 29 case (b) and lemma 38; corpus canonical section 9); the integer Wilson-line condition eta^2 in Z on the Berger family of S^5 as a test case (CORPUS_SALVAGE items 1, 2)").
strategy(t16, open, "The finite triple as a crossed product by the Weyl group: A_F as a corner of C(T^6) x (S_3 x Z_2) with a regular left-right bimodule and a spin-c or twisted lift; obstacles: no equivariant spin lift at the transposition fixed point, the geometric J fails order zero (CORPUS_SALVAGE items 4, 10)").
strategy(t17, partial, "The axioms and the lift along the chain Pati-Salam -> Standard Model -> colour + electromagnetism: lemma 41 gives the trace forms (ranks 2, 2, 0: Poincare duality fails at every step, the last because the light block is vectorlike), orientability (holds at Pati-Salam, fails at the two later steps) and the unimodularity traces ((4,12), (1,6), (-1,6)); open: the answers as rows of the dictionary note, a referee, and the Kasparov form of the duality question").
strategy(t18, open, "Other objects at 10 if the finite triple is the wrong kind of object: coarse geometry at a resolution, a correspondence with the Higgs as its connection, flat connections on the interval, a geometric transition on the 7-manifold, a moduli space with an orbifold point, a doubled torus, quivers with N sites, anisotropic scaling; the common constraint is a stabilizer structure, since the index is constant along a smooth family and only the group reading it changes (lemma 41, Remark 41.3)").
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

%% ---------------------------------------------------------------- historical/DUPLICATES.md section 5
contradiction(1, "canonical 11.1", "CP^3 index statement named the Kahler operator twisted by O(3)", "corrected: spin Dirac twisted by O(3) = Dolbeault on O(1)", resolved).
contradiction(2, "canonical 13.1", "e^2/g_3^2 labelled checked; no script computes it", "relabelled Conditional; 8 eta^2 and 32 eta^2 belong to two charge generators", resolved).
contradiction(3, "canonical 4", "Toeplitz identities labelled checked; no script computes them", "proved in lemma 10", resolved).
contradiction(4, "research_note 5, 8", "labels older than the paper", "listed in the appendix header", resolved).
contradiction(5, "canonical 13.1", "V undefined", "defined as Vol(S^5, g_eta)", resolved).
contradiction(6, "research_state 6.12", "O(eps) quasimode derived from compressions alone", "kernel-preservation argument added", resolved).
contradiction(7, "research_state 2.3", "stabilizer given without base point", "base points named", resolved).
contradiction(8, "canonical 14.3 vs research_state 3.2, 4.2", "Berger angle: Checked calculation versus Proved; p = 5 -> 5/8 unconditional versus conditional", "paper relabelled Proved with the derivation in research_state 3.2", resolved).
contradiction(9, "canonical 8 vs research_state 6.12", "no parity restriction on n versus odd index only for |n| = 2 mod 4", "different operators; both hold", compatible).
contradiction(10, "canonical 2.2 and 3", "alpha used for two quantities; staircase b/a = 0.02 versus 0.01", "the hypercharge phase is now varphi; the two staircases are separate figures, each stating its own radii, and no result depends on the value", resolved).

%% ---------------------------------------------------------------- lemma 26
claim(l26_classification, theorem, proved, "Theorem 26.2", "Flat family with pure channels of frequency 1 and 2 at one loop, no wall terms, n_1, n_2 >= 0. With n_c = 2.8855: for n_1 = 0, theta = pi/4 is the unique global minimum iff n_2 >= n_c; for 27/10 < n_2 < n_c two symmetric minima; for n_2 <= 27/10 the two endpoints have equal minimum value, with their quadratic term vanishing at equality. For n_1 > 0 and n_2 >= n_c, with n_* = (4/3)(4 n_2 - 54/5): one interior minimum in (pi/4, pi/2) iff n_1 < n_*, otherwise theta = pi/2. The range n_1 > 0, n_2 < n_c is not classified. Escapes: other towers, wall terms, warping, bulk-mass sectors.").
source(l26_classification, 'lemmas/26_interior_vacuum_matching_scale.md', 'the-classification').
depends(l26_classification, l24_no_minimum).
attempted_by(l26_classification, claude_opus_5_5).
checked_by(l26_classification, claude_opus_5_5, python("11600 pairs on a grid of 20001 angles, no failure")).
checked_by(l26_classification, terra_6_1, by_hand).  % report 26, item 1
claim(l26_spectrum, corollary, proved, "Corollary 26.3", "At the minimum theta = pi/4 (n_1 = 0, n_2 >= n_c): M_KK = 4 M_W, m_1 = M_W, m_2 = 2 M_W, M_W^2/M_Z^2 = 0.5032. On [pi/4, pi/2), m_2 <= 2 M_W for pure channels and m_1/M_W increases to infinity; M_KK >= 4 M_W for theta in (0, pi/2). One coupling.").
source(l26_spectrum, 'lemmas/26_interior_vacuum_matching_scale.md', 'the-classification').
depends(l26_spectrum, l26_classification).
depends(l26_spectrum, l23_wz).
attempted_by(l26_spectrum, claude_opus_5_5).
checked_by(l26_spectrum, claude_opus_5_5, by_hand).
checked_by(l26_spectrum, terra_6_1, python("independent roots and table rows")).  % report 26, item 2
claim(l26_plane, proposition, proved, "Proposition 26.3b", "In the (10, 6) the plane of the left-handed top contains the right-handed top with weight 1/sqrt(2). Conditions keeping both triplet components give a pure frequency-2 channel and an exact massless coloured exotic; conditions removing the exotic give determinant cos(a)(2 sin^2 a - sin^2(2 theta)), so m_t = M_W at every theta. These concern the displayed channel; complete wall multiplets and other modes are not included.").
source(l26_plane, 'lemmas/26_interior_vacuum_matching_scale.md', 'where-frequency-2-lives').
depends(l26_plane, l23_wz).
attempted_by(l26_plane, claude_opus_5_5).
checked_by(l26_plane, claude_opus_5_5, by_hand).
checked_by(l26_plane, terra_6_1, by_hand).  % report 26, item 3
claim(l26_lr, proposition, proved, "Propositions 26.4 and 26.5", "In the step-threshold model (4), differences of the inverse couplings do not depend on a common F, and alpha_R^-1 - alpha_2^-1 has no power of S: 61.69 at S = 1 for M_KK = 321 GeV, closing near 2 x 10^24 GeV, one loop. The model omits frequency-2 multiplets and boundary counterterms.").
source(l26_lr, 'lemmas/26_interior_vacuum_matching_scale.md', 'the-tower-of-the-parent-in-the-step-threshold-model').
attempted_by(l26_lr, claude_opus_5_5).
checked_by(l26_lr, claude_opus_5_5, python("exact fractions for the coefficients; equation (4) against equation (3) to 13 digits")).
checked_by(l26_lr, terra_6_1, by_hand).  % report 26, item 4
claim(l26_meeting, claim, numerical, "Result 26.6", "One-loop model (4), Standard Model below M_KK, without frequency-2 multiplets: alpha_1 = alpha_2 = alpha_3 at mu_* = 2.21 x 10^14 GeV with M_KK = 3.15 x 10^13 GeV, S = 7.04, the only solution with S >= 1. Conditional on the spectrum and the matching prescription.").
source(l26_meeting, 'lemmas/26_interior_vacuum_matching_scale.md', 'the-tower-of-the-parent-in-the-step-threshold-model').
depends(l26_meeting, l26_lr).
attempted_by(l26_meeting, claude_opus_5_5).
checked_by(l26_meeting, claude_opus_5_5, python("nested root finding, with input shifts")).
checked_by(l26_meeting, terra_6_1, python("root finding; uniqueness for S >= 1 by hand")).  % report 26, item 5
claim(l26_top, claim, numerical, "Result 26.7", "Illustration: boundary value y = r g_2 at M_KK, Standard Model running below: running m_t = 164 GeV for r = sqrt(2) at 321 GeV, 87 GeV for r = 1/sqrt(2) at 321 GeV, 172 GeV for r = 1 at 3.1 x 10^13 GeV. A prediction of no spectrum; at finite angle a mass ratio does not give the Higgs coupling.").
source(l26_top, 'lemmas/26_interior_vacuum_matching_scale.md', 'the-top-against-the-matching-scale').
attempted_by(l26_top, claude_opus_5_5).
checked_by(l26_top, claude_opus_5_5, python("scipy integration of the one-loop top Yukawa equation")).
checked_by(l26_top, terra_6_1, python("integration, checked by quadrature in 1/y^2")).  % report 26, item 5
addresses(t13, l26_classification).  addresses(t13, l26_lr).  addresses(t13, l26_meeting).  addresses(t13, l26_top).  addresses(t5b, l26_spectrum).  addresses(t12, l26_plane).

claim(l26_no_small, proposition, proved, "Proposition 26.2b", "For n_1 > 0, V(1 - t) < V(t) for 0 < t < 1/2, so no angle in (0, pi/4) is a global minimum of (1); with Theorem 26.2 this covers integer counts. Metastable minima in the cases left to scans are not excluded.").
source(l26_no_small, 'lemmas/26_interior_vacuum_matching_scale.md', 'the-classification').
attempted_by(l26_no_small, terra_6_1).
checked_by(l26_no_small, claude_opus_5_5, by_hand).
claim(l26_wall_mass, proposition, proved, "Proposition 26.3c", "With a wall mass omega for the exotic of the frequency-2 channel, the nonzero eigenvalues solve 2 a Delta sin a = omega cos a (Delta + sin^2 a), Delta = sin^2 a - sin^2(2 theta); for all theta in (0, pi/2) and finite omega > 0 there is a coloured state of charge 2/3 with 0 < m < M_W, in the displayed channel of the (10, 6) and (5, 15). A higher state at 2 M_W exists for a tuned omega, with that lighter partner. Complete wall multiplets and other mixings are outside this.").
source(l26_wall_mass, 'lemmas/26_interior_vacuum_matching_scale.md', 'where-frequency-2-lives').
depends(l26_wall_mass, l26_plane).
attempted_by(l26_wall_mass, claude_opus_5_5).
checked_by(l26_wall_mass, claude_opus_5_5, python("against a direct 3 x 3 determinant of the boundary conditions")).
checked_by(l26_wall_mass, terra_6_1, by_hand).  % report 27, item 7, with sympy on the determinant
claim(l26_neutral, claim, numerical, "Result 26.8", "Separate bulk couplings and a hypercharge wall term fixed by alpha_Y: M_W^2/M_Z^2 = 0.629 at theta = pi/4, 0.709 at theta = 1.1377, tree level, against about 0.76 in four dimensions at M_KK within this matching prescription; in the rows computed, the shift falls below 0.006 from about 1.2 TeV.").
source(l26_neutral, 'lemmas/26_interior_vacuum_matching_scale.md', 'the-top-against-the-matching-scale').
attempted_by(l26_neutral, claude_opus_5_5).
checked_by(l26_neutral, claude_opus_5_5, python("4 x 4 determinant, limit r = 0 against Theorem 23.6")).
checked_by(l26_neutral, terra_6_1, python("two rows recomputed, closed form for the root")).  % report 27, item 8
addresses(t13, l26_wall_mass).  addresses(t13, l26_neutral).  addresses(t13, l26_no_small).
prior_work(l26_lr, partial, "Nomura-Smith-Weiner hep-ph/0104041 (differential running); Carena-Tait-Wagner hep-ph/0207056 (boundary terms)").
prior_work(l26_meeting, partial, "Abe-Goto-Kawamura PTEP 2018 103B01 (interval Pati-Salam near 10^13 GeV, other content)").
prior_work(l26_wall_mass, partial, "Cacciapaglia-Csaki-Park hep-ph/0510366; Adachi-Maru 1804.06012; Hosotani-Oda-Ohnuma-Sakamura 0806.0480").
referee_report('lemmas/26_interior_vacuum_matching_scale.md', 'historical/reviews/2026-11-03_terra_check_26.md').
referee_report('lemmas/26_interior_vacuum_matching_scale.md', 'historical/reviews/2026-11-03_terra_check_27.md').
referee_report('lemmas/27_anomaly_reduced_action.md', 'historical/reviews/2026-11-03_terra_check_27.md').

%% ---------------------------------------------------------------- lemma 27
claim(l27_trace, theorem, proved, "Theorem 27.1, Proposition 27.3", "On D_M(A) + gamma_5 d with T, d and A commuting, gamma_5 = +1 on S^+: Tr(gamma_5 T f(DD^2/Lambda^2)) = sum_f tau_f f(m_f^2/Lambda^2) ind_f at every Lambda, and the mass insertion with the same regularization equals it; a Ward identity under that common regularization.").
source(l27_trace, 'lemmas/27_anomaly_reduced_action.md', 'the-axial-trace').
depends(l27_trace, l17_action).
attempted_by(l27_trace, claude_opus_5_5).
checked_by(l27_trace, claude_opus_5_5, python("Landau spectra on T^2 x T^2, to 15 digits")).
checked_by(l27_trace, terra_6_1, by_hand).  % report 27, items 1 and 3
claim(l27_anomaly, corollary, proved, "Corollary 27.2, Proposition 27.4", "As Lambda -> infinity, f continuous at 0, on the commuting subalgebra, the anomaly of T^3 has coefficient 2 N_c tr(T^3 Q^2) = 1 with no gluonic or gravitational term. At fixed cutoff the regulated coefficient for a heavy t is (4 exp(-x) - 1)/3 for the heat cutoff, a property of the regulator; a Wess-Zumino term needs a separate matching prescription.").
source(l27_anomaly, 'lemmas/27_anomaly_reduced_action.md', 'the-axial-trace').
depends(l27_anomaly, l27_trace).
attempted_by(l27_anomaly, claude_opus_5_5).
checked_by(l27_anomaly, claude_opus_5_5, python("exact fractions")).
checked_by(l27_anomaly, terra_6_1, by_hand).  % report 27, items 2 and 4
claim(l27_discrete, proposition, proved, "Proposition 27.5", "For N_f = 2, M = 0, colour background zero on the round S^4, and Sigma in the nontrivial class of pi_4(SU(2)): in the operator of Proposition 17.10, the Weyl Pfaffian of N_c doublets transported along A_t = t B has the relative sign (-1)^{N_c}, by eq. (6) of Witten 1982. The spectral action does not change; the pulled-back measure keeps the value of the integral. Matching a pion field needs a sigma model.").
source(l27_discrete, 'lemmas/27_anomaly_reduced_action.md', 'the-two-flavour-discrete-term').
depends(l27_discrete, l17_no_kinetic).
attempted_by(l27_discrete, claude_opus_5_5).
checked_by(l27_discrete, claude_opus_5_5, by_hand).
checked_by(l27_discrete, terra_6_1, by_hand).  % report 27, items 5 and 6
addresses(t10, l27_trace).  addresses(t10, l27_anomaly).  addresses(t10, l27_discrete).  addresses(t13, l27_discrete).

%% ---------------------------------------------------------------- lemma 28
claim(l28_twist, proposition, proved, "Propositions 28.1, 28.2", "O(k) does not extend over the disc bundle X of Lambda^2_- over S^4; E = S^3(S) restricts to O(3) + O(1) + O(-1) + O(-3), with a hedgehog on E vanishing exactly on S^4; the multiplicities of the representation 4 are 5 + 5, and 1 + 0 on O(3), so H^0(O(1)) is in the kernel for every invariant metric on the slice.").
source(l28_twist, 'lemmas/28_two_walls_connected_parent.md', 'setting').
attempted_by(l28_twist, claude_opus_5_5).
checked_by(l28_twist, claude_opus_5_5, python("structure constants, multiplicities, slice operator")).
checked_by(l28_twist, astra6, by_hand).  % job 28: the 5 + 5 count and the limit on its consequence
claim(l28_core, proposition, proved, "Propositions 28.3, 28.4", "At the zero section the modes in the representation 4 are the twistor spinors, through the Dirac operator on S^4 twisted by (1, 3); and Q(x_a) = (tr(B Gamma_5)/tr B) Gamma_a/5, so the zero section gives +-Gamma_a/5 and nothing for fibre-dependent functions.").
source(l28_core, 'lemmas/28_two_walls_connected_parent.md', 'setting').
depends(l28_core, l28_twist).
attempted_by(l28_core, claude_opus_5_5).
checked_by(l28_core, claude_opus_5_5, python("the ratios on the radial modes")).
checked_by(l28_core, astra6, by_hand).  % job 28
claim(l28_window, conjecture, conjectural, "Conjecture 28.6", "For Theorem 28.9, with the pull-back connection or the collar connection preserving the line summands: for large mass, D-hat has exactly eight small eigenvalues (one copy of the 4 at S^4 and one at CP^3) with a gap uniform in the mass and on all representations of Sp(2), and for a family with a uniform decay rate the off-diagonal block is exponentially small in l; the compression maps tend to (Q_B, Q_Y), with the level-one value for the collar connection and with a weighted level-one fibre component for the pull-back connection. The explicit weight from Proposition 28.13 is conditional on that matrix. M_2(H) + M_4(C) is the algebra of the limit map when the fibre weight is nonzero.").
source(l28_window, 'lemmas/28_two_walls_connected_parent.md', 'setting').
depends(l28_window, l28_core).
attempted_by(l28_window, claude_opus_5_5).
claim(l28_numerics, claim, numerical, "Result 28.5", "Radial system, h = 1, with the corrected spin connection (the singular values and fibre parts of the first version had the wrong sign of the spin connection and are withdrawn): lowest singular value on the 4 falling with the constant-coefficient exponent, next value 1.86 at rho = 1; on the 16, 20, 40 the core values near sqrt 5, sqrt 8, sqrt 12 and wall values above 1.9; both modes with Q(x_a) = -Gamma_a/5; boundary fibre part approaching -w(rho), and -1 for the collar connection; at resolved sample points the core mode has a nonzero density breaking the quaternionic structure, integrated value empirically of order lambda^2.").
source(l28_numerics, 'lemmas/28_two_walls_connected_parent.md', 'setting').
attempted_by(l28_numerics, claude_opus_5_5).
checked_by(l28_numerics, claude_opus_5_5, python("P1 form of T^* T on a graded grid; exact tests against Casimir and Kodaira spectra; script not kept")).
checked_by(l28_numerics, terra_6_1, python("reran the tables; separate test of A_2")).
claim(l28_endpoints, proposition, proved, "Proposition 28.8", "Restriction of smooth functions on X to S^4 and CP^3 is surjective, with a(y, v) = a(y, 0) + O(|v|).").
source(l28_endpoints, 'lemmas/28_two_walls_connected_parent.md', '').
attempted_by(l28_endpoints, astra6).
checked_by(l28_endpoints, claude_opus_5_5, by_hand).
claim(l28_operator, theorem, proved, "Theorem 28.9", "T_M = D_X^E + i Phi_M, doubled, with chirality condition at the wall, is self-adjoint and elliptic with compact resolvent, preserved by all smooth scalar functions, with no extension parameter at the zero section.").
source(l28_operator, 'lemmas/28_two_walls_connected_parent.md', '').
attempted_by(l28_operator, astra6).
checked_by(l28_operator, claude_opus_5_5, by_hand).
claim(l28_slices, proposition, proved, "Proposition 28.10", "The Dolbeault kernel on O(1) is C^4 for every Hermitian metric; the Levi-Civita operator with the separate line connection on O(3) vanishes on the 4 for every invariant squashing; with the full pull-back connection on E the slice operator is invertible for small fibres.").
source(l28_slices, 'lemmas/28_two_walls_connected_parent.md', '').
attempted_by(l28_slices, astra6).
checked_by(l28_slices, claude_opus_5_5, python("smallest eigenvalue against rho")).
claim(l28_normal, proposition, proved, "Proposition 28.11", "The linear normal operator has ker Q = 0, ker Q^* = 3 + 1 with a gap; over S^4 this gives exactly four zero modes of the operator twisted by S^2(S), which are twistor spinors as sections of S.").
source(l28_normal, 'lemmas/28_two_walls_connected_parent.md', '').
attempted_by(l28_normal, astra6).
checked_by(l28_normal, claude_opus_5_5, python("oscillator basis: kernel, total spin, gap")).
claim(l28_mixing, lemma, proved, "Lemma 28.12", "Stable boundary profiles overlap by 2 sqrt(q_i q_j)/(q_i + q_j), independent of the mass, so tangential mixing survives large mass.").
source(l28_mixing, 'lemmas/28_two_walls_connected_parent.md', '').
attempted_by(l28_mixing, astra6).
checked_by(l28_mixing, claude_opus_5_5, python("the closed form of Proposition 28.13 against the radial system")).
claim(l28_wall, proposition, conditional, "Proposition 28.13", "Assuming the displayed matrix for the geometric operator on the 4, for the sign of Phi with right singular vector at the zero section, the compressed boundary operator on the left singular vector has a one-dimensional kernel with tr(B Gamma_5)/tr B = -1 and tr(B t-hat)/tr B = -w(rho), w = 2(rho^2+2)^2/(9+2(rho^2+2)^2), and +w for the opposite sign; with the line connection w = 1. The kernel and traces are exact for the finite matrix. Theorem 29.9 proves convergence to the geometric wall kernel in the scopes stated there.").
source(l28_wall, 'lemmas/28_two_walls_connected_parent.md', '').
depends(l28_wall, l28_mixing).
attempted_by(l28_wall, claude_opus_5_5).
checked_by(l28_wall, claude_opus_5_5, python("matrix elements, kernel to ten digits")).
checked_by(l28_wall, terra_6_1, by_hand).
claim(l28_criterion, lemma, proved, "Lemma 28.14", "An eight-dimensional trial space with small defect and a uniform coercive estimate on its complement gives exactly eight small eigenvalues.").
source(l28_criterion, 'lemmas/28_two_walls_connected_parent.md', '').
attempted_by(l28_criterion, astra6).
checked_by(l28_criterion, claude_opus_5_5, by_hand).
claim(l28_compression, theorem, conditional, "Theorem 28.15", "Assuming the window and localization, compression is block diagonal with an explicit rate to (Q_B, Q_Y); just inside a spectral wall a fixed smooth function with constant wall value compresses to that constant.").
source(l28_compression, 'lemmas/28_two_walls_connected_parent.md', '').
depends(l28_compression, l28_endpoints).
attempted_by(l28_compression, astra6).
checked_by(l28_compression, claude_opus_5_5, by_hand).
claim(l28_symmetry, proposition, proved, "Proposition 28.16", "The compressed real functions commute with j if and only if b_+ = b_- almost everywhere; the block generates M_2(H) under that condition and M_4(C) if the 10 component is nonzero; a vanishing integral does not decide it.").
source(l28_symmetry, 'lemmas/28_two_walls_connected_parent.md', '').
attempted_by(l28_symmetry, astra6).
checked_by(l28_symmetry, claude_opus_5_5, python("the density at finite mass")).
claim(l28_generation, counterexample, proved, "Counterexample 28.17", "Unital completely positive maps on C(CP^3), for 0 <= eps <= 1, converging in norm as eps -> 0 whose generated real algebras are M_4(C) along the family and M_2(H) at the limit.").
source(l28_generation, 'lemmas/28_two_walls_connected_parent.md', '').
depends(l28_generation, l28_symmetry).
attempted_by(l28_generation, astra6).
checked_by(l28_generation, claude_opus_5_5, by_hand).
claim(l28_conjugation, proposition, proved, "Proposition 28.18", "C = C_7 (x) j_E has C^2 = -1 and commutes with T_M if j_E is parallel. It reverses Z and exchanges the two local wall conditions; a parent antiunitary preserving a window excludes a generated full M_4(C) on it.").
source(l28_conjugation, 'lemmas/28_two_walls_connected_parent.md', '').
attempted_by(l28_conjugation, astra6).
checked_by(l28_conjugation, claude_opus_5_5, python("exchange of the wall condition on the modes")).
claim(l28_tunnelling, proposition, proved, "Proposition 28.19", "On one copy of the 4 in each degree, d is lambda times the identity; the inherited grading labels the ends and leaves the four core states in one degree.").
source(l28_tunnelling, 'lemmas/28_two_walls_connected_parent.md', '').
attempted_by(l28_tunnelling, astra6).
checked_by(l28_tunnelling, claude_opus_5_5, by_hand).
claim(l28_doubled, proposition, proved, "Proposition 28.20", "The odd part of the 64-dimensional doubling is Hom(V, W) + Hom(W, V) with the desired actions and exact order conditions on the whole, and is not reducing for lambda != 0; the tunnelling map does not give the connector of lemma 20.").
source(l28_doubled, 'lemmas/28_two_walls_connected_parent.md', '').
attempted_by(l28_doubled, astra6).
checked_by(l28_doubled, claude_opus_5_5, by_hand).
claim(l28_prescribed, theorem, proved, "Theorem 28.21", "Explicit prescribed rank-eight windows on X whose real compressed functions generate M_2(H) + M_4(C) at every localization scale, with the endpoint limit at rate eps.").
source(l28_prescribed, 'lemmas/28_two_walls_connected_parent.md', '').
attempted_by(l28_prescribed, astra6).
checked_by(l28_prescribed, claude_opus_5_5, by_hand).
referee_report('lemmas/28_two_walls_connected_parent.md', 'historical/reviews/2026-11-03_terra_check_28.md').
outside_referee(l28_twist, "the Terra report on lemma 28 covers Proposition 28.13 and the numerics; this result was refereed by Astra 6 or checked by Claude Opus 5.5, see historical/reviews/2026-11-03_astra_job_28.md").
outside_referee(l28_core, "the Terra report on lemma 28 covers Proposition 28.13 and the numerics; this result was refereed by Astra 6 or checked by Claude Opus 5.5, see historical/reviews/2026-11-03_astra_job_28.md").
outside_referee(l28_endpoints, "the Terra report on lemma 28 covers Proposition 28.13 and the numerics; this result was refereed by Astra 6 or checked by Claude Opus 5.5, see historical/reviews/2026-11-03_astra_job_28.md").
outside_referee(l28_operator, "the Terra report on lemma 28 covers Proposition 28.13 and the numerics; this result was refereed by Astra 6 or checked by Claude Opus 5.5, see historical/reviews/2026-11-03_astra_job_28.md").
outside_referee(l28_slices, "the Terra report on lemma 28 covers Proposition 28.13 and the numerics; this result was refereed by Astra 6 or checked by Claude Opus 5.5, see historical/reviews/2026-11-03_astra_job_28.md").
outside_referee(l28_normal, "the Terra report on lemma 28 covers Proposition 28.13 and the numerics; this result was refereed by Astra 6 or checked by Claude Opus 5.5, see historical/reviews/2026-11-03_astra_job_28.md").
outside_referee(l28_mixing, "the Terra report on lemma 28 covers Proposition 28.13 and the numerics; this result was refereed by Astra 6 or checked by Claude Opus 5.5, see historical/reviews/2026-11-03_astra_job_28.md").
outside_referee(l28_criterion, "the Terra report on lemma 28 covers Proposition 28.13 and the numerics; this result was refereed by Astra 6 or checked by Claude Opus 5.5, see historical/reviews/2026-11-03_astra_job_28.md").
outside_referee(l28_compression, "the Terra report on lemma 28 covers Proposition 28.13 and the numerics; this result was refereed by Astra 6 or checked by Claude Opus 5.5, see historical/reviews/2026-11-03_astra_job_28.md").
outside_referee(l28_symmetry, "the Terra report on lemma 28 covers Proposition 28.13 and the numerics; this result was refereed by Astra 6 or checked by Claude Opus 5.5, see historical/reviews/2026-11-03_astra_job_28.md").
outside_referee(l28_generation, "the Terra report on lemma 28 covers Proposition 28.13 and the numerics; this result was refereed by Astra 6 or checked by Claude Opus 5.5, see historical/reviews/2026-11-03_astra_job_28.md").
outside_referee(l28_conjugation, "the Terra report on lemma 28 covers Proposition 28.13 and the numerics; this result was refereed by Astra 6 or checked by Claude Opus 5.5, see historical/reviews/2026-11-03_astra_job_28.md").
outside_referee(l28_tunnelling, "the Terra report on lemma 28 covers Proposition 28.13 and the numerics; this result was refereed by Astra 6 or checked by Claude Opus 5.5, see historical/reviews/2026-11-03_astra_job_28.md").
outside_referee(l28_doubled, "the Terra report on lemma 28 covers Proposition 28.13 and the numerics; this result was refereed by Astra 6 or checked by Claude Opus 5.5, see historical/reviews/2026-11-03_astra_job_28.md").
outside_referee(l28_prescribed, "the Terra report on lemma 28 covers Proposition 28.13 and the numerics; this result was refereed by Astra 6 or checked by Claude Opus 5.5, see historical/reviews/2026-11-03_astra_job_28.md").
addresses(t0, l28_prescribed).  addresses(t0b, l28_prescribed).
addresses(t0, l28_window).  addresses(t0b, l28_window).
claim(l29_splitting, proposition, proved, "Proposition 29.1", "On the tube with flat fibres and the pull-back connection, T_M = T_0 + R with |R| <= C_R |y|, and T_0^* T_0 = D_H^2 + Q^* Q exactly, by K-equivariance of the fibre operator.").
source(l29_splitting, 'lemmas/29_window_on_the_disc_bundle.md', '').
depends(l29_splitting, l28_normal).
attempted_by(l29_splitting, claude_opus_5_5).
claim(l29_model, proposition, proved, "Proposition 29.2", "On the normal bundle, ker T_0 is one copy of the 4, ker T_0^* = 0, and both are bounded below by min(2, sqrt(mu_1 M)) on the complement, for all representations.").
source(l29_model, 'lemmas/29_window_on_the_disc_bundle.md', '').
depends(l29_model, l29_splitting).
depends(l29_model, l28_normal).
attempted_by(l29_model, claude_opus_5_5).
claim(l29_core, lemma, proved, "Lemma 29.3", "Near the zero section, ||T_M u|| >= (2 - o(1)) ||u|| on the complement of the model kernel, and ||T_M^* v|| >= (2 - o(1)) ||v||.").
source(l29_core, 'lemmas/29_window_on_the_disc_bundle.md', '').
depends(l29_core, l29_model).
attempted_by(l29_core, claude_opus_5_5).
claim(l29_bulk, lemma, proved, "Lemma 29.4", "In the bulk, ||T_M w||^2 >= (M^2 f_1^2/4 - C M) ||w||^2, independently of the representation.").
source(l29_bulk, 'lemmas/29_window_on_the_disc_bundle.md', '').
attempted_by(l29_bulk, claude_opus_5_5).
claim(l29_lines, lemma, proved, "Lemma 29.5", "At the Fubini-Study metric, D_k^2 = C_2(L) + 3/2 - (3/8) k^2; on O(3) the kernel is one copy of the 4 in Z = +1, with D^2 >= 5 off the 4; on O(1) there is no kernel, D^2 >= 3 on the 4 and >= 6 off it.").
source(l29_lines, 'lemmas/29_window_on_the_disc_bundle.md', '').
attempted_by(l29_lines, claude_opus_5_5).
claim(l29_wall, lemma, proved, "Lemma 29.6", "On the collar with the line-preserving connection, T_M and T_M^* are sums of squares with lower bound min(m^2/4, 3) on the stated domains and complement.").
source(l29_wall, 'lemmas/29_window_on_the_disc_bundle.md', '').
depends(l29_wall, l29_lines).
attempted_by(l29_wall, claude_opus_5_5).
claim(l29_window_b, theorem, proved, "Theorem 29.7", "Conjecture 28.6 in case (b), for Setting 29.0: exactly eight eigenvalues of D-hat_M in (-delta, delta) for every delta < sqrt 3 and M large, one copy of the 4 at each end.").
source(l29_window_b, 'lemmas/29_window_on_the_disc_bundle.md', '').
depends(l29_window_b, l29_core).
depends(l29_window_b, l29_bulk).
depends(l29_window_b, l29_wall).
depends(l29_window_b, l28_criterion).
attempted_by(l29_window_b, claude_opus_5_5).
claim(l29_tunnelling, proposition, proved, "Proposition 29.8", "The tunnelling identity lambda (<u, chi u> - <v, chi v>) = <v, c(d chi) u>, and |lambda_M| <= C exp(-(1 - eta)(M/2) int f dr).").
source(l29_tunnelling, 'lemmas/29_window_on_the_disc_bundle.md', '').
depends(l29_tunnelling, l29_window_b).
depends(l29_tunnelling, l28_tunnelling).
attempted_by(l29_tunnelling, claude_opus_5_5).
claim(l29_compression, theorem, proved, "Theorem 29.9", "The compression converges to the endpoint maps with error O(M^{-1/2}); at rho = 1 the limit map generates M_2(H) + M_4(C) in either case. In case (a) the geometric wall kernel has signed fibre weight -w with w >= 1/7. The geometric unit-radius computation gh10_angular_wall gives w = 2/3.").
source(l29_compression, 'lemmas/29_window_on_the_disc_bundle.md', '').
depends(l29_compression, l29_window_b).
depends(l29_compression, l29_window_a).
depends(l29_compression, l28_compression).
depends(l29_compression, l28_endpoints).
attempted_by(l29_compression, claude_opus_5_5).
claim(l29_wall_a, proposition, proved, "Proposition 29.10", "Under K(rho), the wall estimates hold in case (a) with gap kappa_a(rho), and the half-cylinder kernel is one copy of the 4, within O(1/m) of the embedded geometric kernel of F^*.").
source(l29_wall_a, 'lemmas/29_window_on_the_disc_bundle.md', '').
depends(l29_wall_a, l29_lines).
depends(l29_wall_a, l28_mixing).
attempted_by(l29_wall_a, claude_opus_5_5).
claim(l29_window_a, theorem, proved, "Theorem 29.11", "K(1) holds, so Conjecture 28.6 holds in case (a) at the Fubini-Study radius, for Setting 29.0, with kappa_a >= sqrt(5) - 3/2 and signed fibre weight -w, w >= 1/7. The geometric unit-radius computation gh10_angular_wall gives w = 2/3. At another radius the window holds under K(rho).").
source(l29_window_a, 'lemmas/29_window_on_the_disc_bundle.md', '').
depends(l29_window_a, l29_wall_a).
depends(l29_window_a, l29_core).
depends(l29_window_a, l29_bulk).
depends(l29_window_a, l28_criterion).
attempted_by(l29_window_a, claude_opus_5_5).
checked_by(l29_splitting, claude_opus_5_5, python("the identities {A0,Z} = 0, [A0,tau] = 0, {A0,A1} = 0 on the representations 4, 16, 20, 40")).
checked_by(l29_model, claude_opus_5_5, python("A0^2 against the Casimir formula on 4, 16, 20, 40")).
checked_by(l29_core, claude_opus_5_5, by_hand).
checked_by(l29_bulk, claude_opus_5_5, by_hand).
checked_by(l29_lines, claude_opus_5_5, python("slice blocks on 4, 16, 20, 40 against the formula; enumeration of types below the cutoff")).
checked_by(l29_wall, claude_opus_5_5, python("[A,q] = 0 and {A,Z} = 0 at rho = 1")).
checked_by(l29_window_b, claude_opus_5_5, python("direct radial solve under Setting 29.0: the predicted limit values")).
checked_by(l29_tunnelling, claude_opus_5_5, by_hand).
checked_by(l29_compression, claude_opus_5_5, python("fibre and Gamma_5 parts of the wall mode, case (b)")).
checked_by(l29_wall_a, claude_opus_5_5, by_hand).
checked_by(l29_window_a, claude_opus_5_5, python("block norms; the 2 x 3 block on the 4")).
checked_by(l29_splitting, terra_6_1, by_hand).
checked_by(l29_model, terra_6_1, by_hand).
checked_by(l29_core, terra_6_1, by_hand).
checked_by(l29_bulk, terra_6_1, by_hand).
checked_by(l29_lines, terra_6_1, by_hand).
checked_by(l29_wall, terra_6_1, by_hand).
checked_by(l29_window_b, terra_6_1, by_hand).
checked_by(l29_tunnelling, terra_6_1, by_hand).
checked_by(l29_compression, terra_6_1, by_hand).
checked_by(l29_wall_a, terra_6_1, by_hand).
checked_by(l29_window_a, terra_6_1, by_hand).
%% Second Terra reading of lemma 29, 5 Nov 2026 (historical/reviews/2026-11-05_terra_check_29_second_reading.md), with the first reports withheld: two errors repaired in the text (quantifiers of delta in l29_window_b and l29_window_a; the Clifford-commutator sign in the IMS step of l29_window_b), amendments to l29_splitting, l29_model, l29_bulk, l29_lines, l29_wall, l29_tunnelling, l29_wall_a applied; no counterexample to the corrected theorems; l28_criterion now carries its proof in lemma 28.
referee_report('lemmas/29_window_on_the_disc_bundle.md', 'historical/reviews/2026-11-04_terra_check_29.md').
referee_report('lemmas/29_window_on_the_disc_bundle.md', 'historical/reviews/2026-11-05_terra_check_29_second_reading.md').
referee_report('lemmas/37_dilaton_and_second_scale.md', 'historical/reviews/2026-11-05_terra_check_37_38.md').
referee_report('lemmas/38_so30_fluctuations.md', 'historical/reviews/2026-11-05_terra_check_37_38.md').
referee_report('lemmas/46_odd_blocks_quaternionic_sheet.md', 'historical/reviews/2026-11-05_opus_check_46.md').
referee_report('lemmas/47_berger_sphere_coupling_normalization.md', 'historical/reviews/2026-11-05_opus_check_47_48.md').
referee_report('lemmas/48_spin_lift_quaternions_weyl_orbits.md', 'historical/reviews/2026-11-05_opus_check_47_48.md').
referee_report('lemmas/49_spinor_fibre_is_the_quaternionic_sheet.md', 'historical/reviews/2026-11-05_opus_check_49.md').
referee_report('lemmas/50_majorana_line_and_top_block.md', 'historical/reviews/2026-11-05_opus_check_50.md').
referee_report('lemmas/51_torus_wilson_line_and_torsion_yukawa.md', 'historical/reviews/2026-11-05_opus_check_51_52.md').
referee_report('lemmas/52_lepton_generation_three_views.md', 'historical/reviews/2026-11-05_opus_check_51_52.md').
claim_amended(l28_window, l29_window_b).
claim_amended(l28_window, l29_window_a).
addresses(t0, l29_window_b).  addresses(t0, l29_window_a).  addresses(t0, l29_compression).  addresses(t0b, l29_compression).
claim(l30_interval, theorem, proved, "Theorem 30.1", "On the interval with D_F = eps D_* and l = l_* eps^-alpha: exact finite data, gap (pi/l_*) eps^alpha - eps ||D_*||, compression error O(eps^{2(1-alpha)}), r states below E_* eps^beta, and N(E) ~ (2 r l_* E/pi) eps^-alpha at fixed E.").
source(l30_interval, 'lemmas/30_massless_limit_as_a_joint_limit.md', '').
depends(l30_interval, l22_family).
attempted_by(l30_interval, claude_opus_5_5).
claim(l30_poles, corollary, proved, "Corollary 30.2", "In the toy of lemma 23 along this family, M_W^2 = 2 m^2 and M_Z^2 = (16/5) m^2 to leading order; the factor (3 - d_eff)/2 of lemma 25 connects them to the coefficients 3 and 24/5 of the finite action.").
source(l30_poles, 'lemmas/30_massless_limit_as_a_joint_limit.md', '').
depends(l30_poles, l30_interval).
attempted_by(l30_poles, claude_opus_5_5).
claim(l30_localized, proposition, proved, "Proposition 30.3", "With mu = mu_* eps^alpha and mu l = (1 - alpha) log(1/eps) + c_0: m ~ 2 mu_* exp(-c_0) eps, Delta ~ mu_* eps^alpha, width/l -> 0, and the exact identity r = (m/(mu + kappa))^2 for the opposite-wall coefficient r.").
source(l30_localized, 'lemmas/30_massless_limit_as_a_joint_limit.md', '').
attempted_by(l30_localized, claude_opus_5_5).
claim(l30_cylinder, corollary, proved, "Corollary 30.4", "On the cylinder of lemma 24, let the axial length and transverse radius grow as eps^(-alpha) and eps^(-gamma), with 0 < alpha,gamma < beta < 1. The cutoff E_* eps^beta isolates the four prescribed states and the fixed-energy count grows proportionally to the volume times E^7. At fixed transverse radius below its first positive threshold only the axial tower contributes.").
source(l30_cylinder, 'lemmas/30_massless_limit_as_a_joint_limit.md', '').
depends(l30_cylinder, l30_interval).
attempted_by(l30_cylinder, claude_opus_5_5).
claim(l30_disc, theorem, proved, "Theorem 30.5", "On the disc bundle, with M = c log(1/eps) and R = eps^-alpha: exactly eight eigenvalues in (-delta eps^alpha, delta eps^alpha), of size at most C eps, compression converging to the endpoint maps, and N(E) ~ C_X E^7 eps^(-7 alpha) at fixed E.").
source(l30_disc, 'lemmas/30_massless_limit_as_a_joint_limit.md', '').
depends(l30_disc, l29_window_b).
depends(l30_disc, l29_window_a).
depends(l30_disc, l29_tunnelling).
depends(l30_disc, l29_compression).
attempted_by(l30_disc, claude_opus_5_5).
claim(l30_defect_bound, proposition, proved, "Proposition 30.6", "||Q(f) - P_H Q(f)|| <= 2 eta_t for real f with ||f|| <= 1, and 2 k eta_t for products of k such compressions.").
source(l30_defect_bound, 'lemmas/30_massless_limit_as_a_joint_limit.md', '').
depends(l30_defect_bound, l28_symmetry).
attempted_by(l30_defect_bound, claude_opus_5_5).
claim(l30_defect, proposition, proved, "Proposition 30.7", "eta_t = O(M^{-1/2}) in general; if j_E is parallel, eta_t <= C exp(-(1 - eta) M int_{2e}^{l-a} f dr), since then C commutes with T_M and the wall alone breaks it.").
source(l30_defect, 'lemmas/30_massless_limit_as_a_joint_limit.md', '').
depends(l30_defect, l29_tunnelling).
depends(l30_defect, l28_conjugation).
depends(l30_defect, l30_defect_bound).
attempted_by(l30_defect, claude_opus_5_5).
checked_by(l30_interval, claude_opus_5_5, by_hand).
checked_by(l30_poles, claude_opus_5_5, by_hand).
checked_by(l30_localized, claude_opus_5_5, python("exact secular roots, by Claude Sonnet 5.5")).
checked_by(l30_cylinder, claude_opus_5_5, by_hand).
checked_by(l30_disc, claude_opus_5_5, by_hand).
checked_by(l30_defect_bound, claude_opus_5_5, by_hand).
checked_by(l30_defect, claude_opus_5_5, by_hand).
checked_by(l30_interval, terra_6_1, by_hand).
checked_by(l30_poles, terra_6_1, by_hand).
checked_by(l30_localized, terra_6_1, by_hand).
checked_by(l30_cylinder, terra_6_1, by_hand).
checked_by(l30_disc, terra_6_1, by_hand).
checked_by(l30_defect_bound, terra_6_1, by_hand).
checked_by(l30_defect, terra_6_1, by_hand).
referee_report('lemmas/30_massless_limit_as_a_joint_limit.md', 'historical/reviews/2026-11-04_terra_check_30_note.md').
addresses(t14, l30_interval).  addresses(t14, l30_localized).  addresses(t14, l30_disc).

%% ---------------------------------------------------------------- steer note, items 9 and 11
claim(steer_tower_coefficients, proposition, proved, "Steer note, item 9", "One Kaluza-Klein level of all Standard Model fields in the bulk has one-loop coefficients (81/10, 7/6, -5/2): a massive vector (-7/2 C_2), two Weyl fermions for each Standard Model Weyl fermion, and one complex Higgs doublet.").
source(steer_tower_coefficients, 'd9_masses_fermi_qcd_steer.md', '').
attempted_by(steer_tower_coefficients, claude_opus_5_5).
checked_by(steer_tower_coefficients, claude_opus_5_5, python("exact fractions, from the field content")).
checked_by(steer_tower_coefficients, astra6, by_hand).  % Astra validation, 3 Nov 2026, item 5
prior_work(steer_tower_coefficients, known, "Bhattacharyya, Datta, Majee, Raychaudhuri, arXiv:hep-ph/0608208, the equation for b-tilde").
claim(steer_item9, claim, numerical, "Steer note, item 9", "One-loop running with a universal tower: for M_KK from 235 GeV to 10 TeV the pairwise crossings lie at 21 to 34 M_KK with step thresholds, and at 23 to 36 M_KK with the count S - 1; the three couplings do not meet at one point.").
source(steer_item9, 'd9_masses_fermi_qcd_steer.md', '').
depends(steer_item9, steer_tower_coefficients).
attempted_by(steer_item9, claude_opus_5_5).
checked_by(steer_item9, claude_opus_5_5, python("closed-form running, recomputed from the equations of the source")).
checked_by(steer_item9, astra6, python("independent closed-form running, step and S - 1 counts")).  % Astra validation, 3 Nov 2026, item 7
claim(steer_item11, claim, numerical, "Steer note, item 11", "Universal bulk fields at one loop, with a lower endpoint M_KK = 235 GeV that is illustrative: for M_KK up to 100 TeV, y_t/g_2 is 0.20 to 0.37 where g_2 = g_3 and 0.33 to 0.56 where g_1 = g_2; the matching conditions y_t = sqrt(2) g_2 and y_t = 2 g_2/sqrt(3) give m_t from 205 to 231 GeV. At the scanned scales, boundary ratios from 1 to 5 change m_t by at most 26 GeV, along an infrared quasi-fixed trajectory; smaller ratios spread it. A flat interior Yang-Mills scan needs M_KK >= 4 M_W.").
source(steer_item11, 'd9_masses_fermi_qcd_steer.md', '').
depends(steer_item11, steer_tower_coefficients).
attempted_by(steer_item11, claude_opus_5_5).
checked_by(steer_item11, claude_opus_5_5, python("scipy LSODA integration of the gauge and top Yukawa equations of the source")).
checked_by(steer_item11, astra6, python("independent integration of the linear equation for 1/y^2, with controls")).  % Astra validation, 3 Nov 2026, items 7 and 8

%% ---------------------------------------------------------------- referees
referee_report('lemmas/05_deconstruction_interval.md', 'historical/reviews/2026-11-03_terra_check_nogo_19.md').
referee_report('lemmas/41_axioms_along_the_chain.md', 'historical/reviews/2026-11-04_opus_check_41_45.md').
referee_report('lemmas/42_higgs_as_connector_moduli.md', 'historical/reviews/2026-11-04_opus_check_41_45.md').
referee_report('lemmas/43_engineered_connections.md', 'historical/reviews/2026-11-04_opus_check_41_45.md').
referee_report('lemmas/44_seesaw_scaling_retained_algebra.md', 'historical/reviews/2026-11-04_opus_check_41_45.md').
referee_report('lemmas/45_weyl_crossed_product_two_sheets.md', 'historical/reviews/2026-11-04_opus_check_41_45.md').
referee_report('lemmas/05_deconstruction_interval.md', 'historical/reviews/2026-11-05_opus_check_05_21_34.md').
referee_report('lemmas/21_top_counting.md', 'historical/reviews/2026-11-05_opus_check_05_21_34.md').
referee_report('lemmas/34_colour_family_exchange.md', 'historical/reviews/2026-11-05_opus_check_05_21_34.md').
referee_report('lemmas/05_deconstruction_interval.md', 'historical/reviews/2026-11-03_terra_check_08_13_14.md').
referee_report('lemmas/06_vectorlike_odd_factorization.md', 'historical/reviews/2026-11-03_terra_check_nogo_19.md').
referee_report('lemmas/08_product_selects_ko.md', 'historical/reviews/2026-11-03_terra_check_08_13_14.md').
referee_report('lemmas/09_massive_chiral_interval.md', 'lemmas/09_massive_chiral_interval.md').
referee_report('lemmas/10_toeplitz_twistor.md', 'lemmas/10_toeplitz_twistor.md').
referee_report('lemmas/11_spectral_action_heavy_w.md', 'lemmas/11_spectral_action_heavy_w.md').
referee_report('lemmas/12_boundary_yukawa_interval.md', 'lemmas/12_boundary_yukawa_interval.md').
referee_report('lemmas/13_gauge_sector_truncation.md', 'historical/reviews/2026-11-03_terra_check_08_13_14.md').
referee_report('lemmas/14_gauge_covariant_reduction.md', 'historical/reviews/2026-11-03_terra_check_08_13_14.md').
referee_report('lemmas/15_propinquity_collapse.md', 'historical/reviews/2026-11-03_terra_check_15_16.md').
referee_report('lemmas/16_coarse_truncation.md', 'historical/reviews/2026-11-03_terra_check_15_16.md').
referee_report('lemmas/16_coarse_truncation.md', 'historical/reviews/2026-11-03_terra_check_18_16b.md').
referee_report('lemmas/17_explicit_masses_chiral_limit.md', 'historical/reviews/2026-11-03_terra_check_17.md').
referee_report('lemmas/18_heavy_limit_near_cutoff.md', 'historical/reviews/2026-11-03_terra_check_18_16b.md').
referee_report('lemmas/19_fluctuations_without_order_one.md', 'historical/reviews/2026-11-03_terra_check_nogo_19.md').
referee_report('lemmas/20_connecting_operator.md', 'historical/reviews/2026-11-03_terra_check_20_21.md').
referee_report('lemmas/21_top_counting.md', 'historical/reviews/2026-11-03_terra_check_20_21.md').
referee_report('lemmas/22_dirac_operator_as_boundary_condition.md', 'historical/reviews/2026-11-03_terra_check_22.md').
referee_report('lemmas/23_two_gradings_interval.md', 'historical/reviews/2026-11-03_terra_check_23.md').
referee_report('lemmas/24_commutative_parent.md', 'historical/reviews/2026-11-03_terra_check_24.md').
referee_report('lemmas/25_sum_rule_effective_dimension.md', 'historical/reviews/2026-11-03_terra_check_25.md').

%% ---------------------------------------------------------------- 11D line (branch 11D)
:- include('ledger_11d.pl').

claim(gh20_majorana_orbit, proposition, proved, "Issue 20", "At fixed Dirac matrices, Majorana singular values and cutoff moments, the mixed trace spans the rearrangement interval, selecting a range of stationary Higgs norms in the order-Lambda^0 potential.").
source(gh20_majorana_orbit, 'results/issues/20.md', '').
attempted_by(gh20_majorana_orbit, gpt_6_2_astra_max).
checked_by(gh20_majorana_orbit, terra_6_1, by_hand).
addresses(t13, gh20_majorana_orbit).

claim(gh20_flat_exact_trace, proposition, proved, "Issue 20", "In flat infinite volume at zero gauge field the exact positive even spectral trace per volume is nonincreasing along the constant-Higgs norm for any finite CCM Dirac matrices and fixed Majorana block.").
source(gh20_flat_exact_trace, 'results/issues/20.md', '').
attempted_by(gh20_flat_exact_trace, gpt_6_2_astra_max).
checked_by(gh20_flat_exact_trace, terra_6_1, by_hand).
addresses(t14, gh20_flat_exact_trace).

claim(gh20_lepton_threshold_curve, proposition, proved, "Issue 20", "Fixed separate charged-lepton traces of degrees two and four permit a continuously variable mass product at the same stationary polynomial Higgs vacuum. The differential one-loop Thomson inverse charge is log of the squared-product ratio over three pi.").
source(gh20_lepton_threshold_curve, 'results/issues/20.md', '').
attempted_by(gh20_lepton_threshold_curve, gpt_6_2_astra_max).
checked_by(gh20_lepton_threshold_curve, codex_gpt_6, by_hand).
addresses(t13, gh20_lepton_threshold_curve).

claim(gh20_hypercharge_projection, proposition, proved, "Issue 20", "The common kinetic trace and doublet action leave the projection proportional to v/f0^(3/2). At fixed five-dimensional coupling and fixed wall angle the interval pole combination varies as the inverse squared length.").
source(gh20_hypercharge_projection, 'results/issues/20.md', '').
attempted_by(gh20_hypercharge_projection, gpt_6_2_astra_max).
checked_by(gh20_hypercharge_projection, codex_gpt_6, by_hand).
addresses(t13, gh20_hypercharge_projection).
addresses(t18, gh20_hypercharge_projection).
depends(gh20_hypercharge_projection, l23_wz).
depends(gh20_hypercharge_projection, l47_matching_radius).

claim(gh25_fixed_moment_trace, proposition, proved, "Issue 25, determinant interval and exact charged trace", "At fixed positive charged-lepton moments of degrees two and four the ordered squared spectrum is parameterized by its determinant up to the possible zero-mass boundary. On a nonsingleton family the constant-Higgs flat charged trace for a strictly decreasing cutoff on the sampled interval minimizes the energy at the upper double-root endpoint. A cutoff flat across the branch gives constant energy.").
source(gh25_fixed_moment_trace, 'results/issues/25.md', 'the-exact-charged-trace').
hypothesis(gh25_charged_trace_domain, "Zero gauge fields in flat four-space, nonzero fixed Higgs norm, and a nonnegative C1 cutoff with finite first moment. The sign is that of the second divided difference and depends on the sampled range of the cutoff.").
depends(gh25_fixed_moment_trace, hyp(gh25_charged_trace_domain)).
attempted_by(gh25_fixed_moment_trace, codex_gpt_6).
checked_by(gh25_fixed_moment_trace, gpt_6_2_astra, by_hand).
checked_by(gh25_fixed_moment_trace, codex_gpt_6, python("Cubic invariants, exponential and flat-profile quadrature, and the exact and order-Lambda^-2 shape slopes for the worked spectrum.")).
addresses(t13, gh25_fixed_moment_trace).

claim(gh25_wall_minimum, proposition, proved, "Issue 25, wall triplet and Higgs minimum", "For the specified constrained kinetic wall triplet with prescribed radial and wall polynomials and the exact exponential charged trace, the joint minimum is interior with a positive constrained Hessian. Its determinant decreases continuously with the allowed linear wall coefficient.").
source(gh25_wall_minimum, 'results/issues/25.md', 'the-wall-triplet-and-higgs-minimum').
hypothesis(gh25_wall_action, "A local wall triplet with the two exact moment constraints, the displayed Higgs and triplet kinetic terms, the prescribed radial polynomial and determinant potential, and the declared interval of linear wall coefficients.").
depends(gh25_wall_minimum, gh25_fixed_moment_trace).
depends(gh25_wall_minimum, hyp(gh25_wall_action)).
attempted_by(gh25_wall_minimum, codex_gpt_6).
checked_by(gh25_wall_minimum, gpt_6_2_astra, by_hand).
checked_by(gh25_wall_minimum, gpt_6_2_astra, python("Independent SciPy radial and shape solves at the three displayed tilts.")).
checked_by(gh25_wall_minimum, codex_gpt_6, python("Power-sum derivative recurrence, positive Hessian and endpoint gaps, and three solutions by nested bisection.")).
addresses(t14, gh25_wall_minimum).

claim(gh25_conditional_thomson_match, proposition, conditional, "Issue 25, Thomson matching at the selected minimum", "At the central wall vacuum the three continuous one-loop Dirac thresholds and the stated common ultraviolet and hadronic inputs give a finite inverse Thomson charge. At fixed Higgs norm the difference from a reference spectrum equals the logarithm of its determinant ratio over three pi.").
source(gh25_conditional_thomson_match, 'results/issues/25.md', 'thomson-matching-at-the-selected-minimum').
hypothesis(gh25_thomson_inputs, "Tree lepton masses, a common matched QED charge above them, continuous one-loop decoupling at each positive threshold and a fixed additive hadronic vacuum polarization. The hypercharge projection comparison uses an independent nucleon mass.").
depends(gh25_conditional_thomson_match, gh25_wall_minimum).
depends(gh25_conditional_thomson_match, gh20_lepton_threshold_curve).
depends(gh25_conditional_thomson_match, gh20_hypercharge_projection).
depends(gh25_conditional_thomson_match, hyp(gh25_thomson_inputs)).
attempted_by(gh25_conditional_thomson_match, codex_gpt_6).
checked_by(gh25_conditional_thomson_match, gpt_6_2_astra, by_hand).
checked_by(gh25_conditional_thomson_match, gpt_6_2_astra, python("Independent lepton masses, inverse charge and fixed-norm difference.")).
checked_by(gh25_conditional_thomson_match, codex_gpt_6, python("Three thresholds, log-ratio identity and estimates of omitted pure-lepton running and matching terms.")).
addresses(t13, gh25_conditional_thomson_match).

claim(gh26_scalar_photon_cut, theorem, proved, "Theorem 26.1 and its energy limits", "The zero-circle charge trace at level ell is ell(ell+2)(ell+1)^2/12 and the first charged pair opens at E=2 sqrt(3)/a. The exact scalar cut is the finite shell sum with threshold factor (1-4m^2/s)_+^(3/2). Its density is a^5 s^(5/2)/(3*2^19*pi) with relative error O(1/(a sqrt(s))), uniform on fixed positive bands. Tree photon weighting gives growth proportional to cos(theta_W)^(-3) at fixed energy and decay proportional to R^(3-5p) at E=E_0 R^(-p) for 3/5<p<1, with unbounded open charged species.").
source(gh26_scalar_photon_cut, 'results/issues/26.md', 'the-finite-charged-harmonic-sum').
hypothesis(gh26_plate08_probe, "Prescribed round product S^3(a) x S^1(b) x S^1(d) at fixed V, C9, g' and hypercharge circle generator. One canonical free massless complex scalar with minimal coupling and periodic circles. Q=T3+Y, with T3=sigma3/2 in the fundamental. Timelike energy below both nonzero-circle pair thresholds and a fixed microscopic cutoff. Photon weighting uses the tree gauge kinetic terms and leading e^2 insertion only.").
depends(gh26_scalar_photon_cut, hyp(gh26_plate08_probe)).
attempted_by(gh26_scalar_photon_cut, codex_gpt_6).
checked_by(gh26_scalar_photon_cut, gpt_6_2_astra, by_hand).
checked_by(gh26_scalar_photon_cut, codex_gpt_6, python("Symbolic charge trace, pair thresholds and cut normalization, integral coefficients and energy exponents. Finite sums and the remainder bound checked at sample thresholds.")).
addresses(t14, gh26_scalar_photon_cut).

claim(gh26_fixed_band_dispersion, proposition, proved, "Proposition 26.2", "A fixed positive timelike band of the plate 08 scalar cut contributes a positive magnitude to the once-charge-subtracted spacelike response, proportional to R^(3-2p) at q_E=q_0 R^(-p) for 3/5<p<1. Positive regulated spectral bands add to it. A local q_E^2 term changes the signed slope, and subtracting the band's own slope leaves a term proportional to R^(3-4p).").
source(gh26_fixed_band_dispersion, 'results/issues/26.md', 'fixed-band-spacelike-dispersion').
hypothesis(gh26_dispersion_band, "Fixed band of positive timelike energies below both circle-pair thresholds and the fixed microscopic cutoff, and a subtraction at zero. The comparison with other bands assumes a finite regulator with nonnegative spectral weight. The interacting photon needs independent matching of the slope and control of the remaining real terms.").
depends(gh26_fixed_band_dispersion, gh26_scalar_photon_cut).
depends(gh26_fixed_band_dispersion, hyp(gh26_dispersion_band)).
attempted_by(gh26_fixed_band_dispersion, codex_gpt_6).
checked_by(gh26_fixed_band_dispersion, gpt_6_2_astra, by_hand).
checked_by(gh26_fixed_band_dispersion, codex_gpt_6, python("Symbolic band coefficient, slope-subtracted coefficient and scaling exponents. Fixed-band integration of the finite sum in both kernels.")).
addresses(t14, gh26_fixed_band_dispersion).

claim(gh27_semileptonic_rate, proposition, conditional, "Proposition 27.1", "The normalized interval weak vertex factors into its cosine-pair overlap and V_ud. Tree charged-pole exchange at finite momentum matches the allowed continuum rate in hadronic units to the squared leptonic contact G_F H_N^2, squared relative semileptonic overlap, squared flavour coefficient, allowed nucleon spin factor and dimensionless phase-space integral.").
source(gh27_semileptonic_rate, 'results/issues/27.md', 'normalized-semileptonic-amplitude').
hypothesis(gh27_beta_inputs, "Strict finite Dirac interval window, flavour-blind charged profiles and the prescribed matched quadratic pole sector with a positive leptonic contact. Matched QCD+QED rest masses and pure-QCD current form factors at prescribed renormalized inputs. Massless antineutrino, one tree weak insertion, leading nucleon recoil, form-factor and charged-propagator orders for the rate, and the stated point-charge Coulomb prescription.").
depends(gh27_semileptonic_rate, l22_window).
depends(gh27_semileptonic_rate, l22_compression).
depends(gh27_semileptonic_rate, hyp(gh27_beta_inputs)).
attempted_by(gh27_semileptonic_rate, gpt_6_2_sol).
checked_by(gh27_semileptonic_rate, gpt_6_2_astra, by_hand).
checked_by(gh27_semileptonic_rate, gpt_6_2_sol, python("Python 3 and SymPy checks of mode and chiral normalization, propagator expansion, spin traces and continuum phase-space coefficient.")).
addresses(t13, gh27_semileptonic_rate).

claim(gh27_plate_limits, proposition, conditional, "Proposition 27.2", "In the specified weak-decoupling family the continuum rate in fixed hadronic units falls as G_F squared. Comoving scales preserve the dimensionless rate. Rotating the down wall preserves the fermionic KK spectrum and multiplies the direct rate by cos(phi) squared while a strange charged vertex survives. Varying the matched splitting through the electron mass closes the continuum at finite nonzero weak strength.").
source(gh27_plate_limits, 'results/issues/27.md', 'four-plate-limits').
hypothesis(gh27_plate_schedules, "A common growing charged-pole mass term and fixed low-energy inputs for plate 16. All masses, probes and matching thresholds comove at fixed dimensionless inputs for plate 17. The generator is fixed while the nondegenerate down block rotates in plate 18. The allowed prefactors have finite nonzero limits at the plate 19 endpoint.").
depends(gh27_plate_limits, gh27_semileptonic_rate).
depends(gh27_plate_limits, hyp(gh27_plate_schedules)).
attempted_by(gh27_plate_limits, gpt_6_2_sol).
checked_by(gh27_plate_limits, gpt_6_2_astra, by_hand).
checked_by(gh27_plate_limits, gpt_6_2_sol, python("Python 3 symbolic rotation, threshold matching and plate 11 prefactors, and numerical pole sums and rescaled rates.")).
addresses(t13, gh27_plate_limits).

claim(gh27_beta_thresholds, proposition, conditional, "Proposition 27.3", "At the continuum threshold the allowed rate is asymptotic to a positive multiple of delta to the 7/2 without Coulomb distortion and delta cubed at fixed attractive alpha. In the leading point-Coulomb atom the ground-state rate is proportional to the probability density at the origin and the square of the positive part of delta plus the binding energy. Its open interval below continuum threshold extends to delta = 0.").
source(gh27_beta_thresholds, 'results/issues/27.md', 'continuum-endpoint-and-hydrogen-1s').
hypothesis(gh27_coulomb_endpoint, "Positive limiting electron and hadronic masses, smooth nonzero allowed prefactors, the static-proton Sommerfeld prescription in the continuum, and the leading nonrelativistic reduced-mass hydrogen atom with a local production operator.").
depends(gh27_beta_thresholds, gh27_semileptonic_rate).
depends(gh27_beta_thresholds, hyp(gh27_coulomb_endpoint)).
attempted_by(gh27_beta_thresholds, gpt_6_2_sol).
checked_by(gh27_beta_thresholds, gpt_6_2_astra, by_hand).
checked_by(gh27_beta_thresholds, gpt_6_2_sol, python("Python 3 symbolic endpoint integrals, hydrogen normalization and energy, and numerical asymptotic ratios and channel thresholds.")).
addresses(t13, gh27_beta_thresholds).

claim(gh29_shared_photon_charge, proposition, proved, "Proposition 29.1", "On the spin Hopf family with the lift of 94, invariance of the vortex, the two roots and the volume-tensor vacuum fixes the unbroken combination of K_3, P, C and the vortex generator uniquely as Q = K_3 + P/6 + C/4 = T_3 + Y. Its eigenvalue on every fermion of the table is the same on every member; the photon residue is a modulus held by the auxiliary norm along the path of 97.").
source(gh29_shared_photon_charge, 'results/issues/29.md', 'the-photon-generator-on-both-restrictions').
hypothesis(gh29_hopf_background_torus, "The background metric, five-form and vortex on each member are invariant under K_3 (with its magnetic compensator), the Hopf rotation, the auxiliary generator C and the vortex generator, with the condensate weights of 94 and 100.").
depends(gh29_shared_photon_charge, hopf_diagonal_hypercharge).
depends(gh29_shared_photon_charge, hopf_transverse_current_pencil).
depends(gh29_shared_photon_charge, hyp(gh29_hopf_background_torus)).
attempted_by(gh29_shared_photon_charge, claude_opus_5_5).
checked_by(gh29_shared_photon_charge, claude_opus_5_5, python("Python 3: the exact-photon check of the Hopf neutral pencil on the compact fit and the auxiliary norm on the neck.")).
checked_by(gh29_shared_photon_charge, claude_fable_5_2, partial("Kernel of the four invariance conditions and the six hypercharges re-derived by hand. The exact-photon statement and the residue values are taken from 97.")).
addresses(t13, gh29_shared_photon_charge).
addresses(t18, gh29_shared_photon_charge).

claim(gh29_fifth_end_product, proposition, proved, "Proposition 29.2", "A scalar of fibre momentum n on a circle bundle over CP^2 x S^2_r of weak degree d >= 1 has M_n^2 >= n^2/rho^2 + |n| d/(2 r^2), so every nonzero fibre momentum leaves a fixed window as r -> 0 at fixed rho. On the product S^5_B x S^2_r the constant weak harmonic keeps the full five-sphere tower with every Hopf weight. The spin Hopf family is the product case.").
source(gh29_fifth_end_product, 'results/issues/29.md', 'the-five-dimensional-end-twisted-circle-against-product').
depends(gh29_fifth_end_product, hopf_supported_spin_product).
attempted_by(gh29_fifth_end_product, claude_opus_5_5).
checked_by(gh29_fifth_end_product, claude_fable_5_2, partial("The bound with b_1 = d/(2 r^2) and the product spectrum re-derived by hand. The Kaehler identity is taken from the lecture exercise.")).
addresses(t14, gh29_fifth_end_product).

claim(gh29_semileptonic_contact, proposition, proved, "Proposition 29.3", "In the charged raising pencil of 97 the left quark and left lepton doublet sources differ only on the three Abelian charge-one slots, by (1,2,0) times a nonzero overlap. The combination C_ll + C_qq - 2 C_lq is strictly positive at every Euclidean momentum on members with a/B > 0. Numerically the semileptonic-to-leptonic contact ratio is 1 + 4.33e-5 at the compact fit with f_S = 5 TeV (1 + 2.22e-5 with the muon lifetime held out), 1.112 at the finite neck and 1 on the collapsed pencil; over f_S = 5-40 TeV its deviation from one stays below 5e-5 and changes sign.").
source(gh29_semileptonic_contact, 'results/issues/29.md', 'the-charged-current-propagator-between-lepton-and-quark-sources').
depends(gh29_semileptonic_contact, hopf_transverse_current_pencil).
depends(gh29_semileptonic_contact, hopf_finite_current_fit).
depends(gh29_semileptonic_contact, hopf_comoving_charged_limit).
attempted_by(gh29_semileptonic_contact, claude_opus_5_5).
checked_by(gh29_semileptonic_contact, claude_opus_5_5, python("Python 3, NumPy and SciPy, paper/hopf_semileptonic_ratio.py: static and finite-momentum contacts at degrees 8 and 12, neck at spline steps 0.125 and 0.0625, locking-scale scan.")).
checked_by(gh29_semileptonic_contact, claude_fable_5_2, partial("Source difference (1,2), the positivity identity and the expression for R-1 re-derived by hand, with positivity of H and K taken from 97. Compact central and lifetime-held-out values reproduced by rerunning paper/hopf_semileptonic_ratio.py (Python 3, NumPy, SciPy). Neck and locking-scale scan not rerun.")).
addresses(t13, gh29_semileptonic_contact).

claim(gh29_strong_matching_sensitivity, proposition, proved, "Proposition 29.4", "At fixed G_F, threshold masses and c_N = H_N/Lambda_3, a constant shift delta of the strong matching coefficient above the thresholds gives d log Xi/d delta = -16 pi^2/9 at one loop with continuous decoupling; four-loop running from alpha_s^(6)(250 GeV) = 0.10337 gives -15.61. The two fermion threshold prescriptions of 108.5 differ by a factor 0.089 in Xi, and a vanishing matching coefficient at the compactification scale at fixed B leaves no perturbative three-flavour scale.").
source(gh29_strong_matching_sensitivity, 'results/issues/29.md', 'the-colour-side-renormalized-coefficient-and-the-hadronic-unit').
depends(gh29_strong_matching_sensitivity, hopf_compact_spectator_threshold).
depends(gh29_strong_matching_sensitivity, hopf_comoving_hadronic_benchmark).
attempted_by(gh29_strong_matching_sensitivity, claude_opus_5_5).
checked_by(gh29_strong_matching_sensitivity, claude_opus_5_5, python("Python 3 and SciPy: one- to four-loop MSbar running with decoupling at m_t, m_b, m_c, reproducing Lambda_3 = 0.3405 GeV, and finite-difference slopes.")).
checked_by(gh29_strong_matching_sensitivity, claude_fable_5_2, partial("One-loop slope -16 pi^2/9 re-derived by hand. Four-loop slopes and Lambda_3 = 0.3405 GeV reproduced by rerunning the script with --strong.")).
addresses(t13, gh29_strong_matching_sensitivity).

hypothesis(gh29_static_down_source, "A nondynamical colour triplet with the unperturbed horizontal down-singlet density of 100, a minimal metric Wilson vertex and no direct five-form vertex. Resolve the unbroken colour Killing octet of 99.2 at Born order.").
claim(gh29_static_octet_force, proposition, conditional, "Proposition 29.5", "For this source the metric and five-form octet on a weak scalar mode of mass squared mu have equal-residue poles at mu and mu+16/B^2. Their static forces are weighted by the squared singlet overlaps. At L=B the normalized projected force is 1.091578 at the compact point and in the shrink limit, and 1.093855 at the finite neck.").
source(gh29_static_octet_force, 'results/issues/29_static_colour.md', 'colour-exchange-at-the-compactification-radius').
depends(gh29_static_octet_force, hyp(gh29_static_down_source)).
depends(gh29_static_octet_force, hopf_projected_nonround_boson).
depends(gh29_static_octet_force, gh29_shared_photon_charge).
attempted_by(gh29_static_octet_force, codex_gpt_6).
checked_by(gh29_static_octet_force, codex_gpt_6, python("Normalized scalar pencils, singlet overlaps, Parseval variance and Born forces on the central fit and three neck spline steps in paper/hopf_static_colour.py.")).
checked_by(gh29_static_octet_force, terra_6_1, partial("Re-derived the equal residues, Yukawa derivative, positivity and fixed-shape shrink given the two-field gauge block and minimal source. Reran the scalar pencils at spline steps 0.125 and 0.0625 and verified the tabulated forces and overlaps.")).
addresses(t13, gh29_static_octet_force).

hypothesis(gh29_static_matched_qcd, "Dimension-four isospin-symmetric QCD at theta=0, with the prescribed m_i B, coupling at common mu B, heavy-quark decoupling and nucleon calibration of 100. Electromagnetic and weak couplings are absent from the final static energy.").
claim(gh29_static_qcd_transport, proposition, conditional, "Proposition 29.6", "For the same subtracted ground-state energy and static sources, V_sub/H_N and F/H_N^2 coincide at fixed L H_N along the broken path. A consistently fitted tension scales as B^-2 and the light and strange screening lengths scale as B. At fixed shape, length scales as a^(-2/7).").
source(gh29_static_qcd_transport, 'results/issues/29_static_colour.md', 'string-tension-and-screening-in-hadronic-units').
depends(gh29_static_qcd_transport, hyp(gh29_static_matched_qcd)).
depends(gh29_static_qcd_transport, hopf_comoving_hadronic_benchmark).
attempted_by(gh29_static_qcd_transport, codex_gpt_6).
checked_by(gh29_static_qcd_transport, terra_6_1, partial("Re-derived the dimensional and running-coupling rescaling and radius powers under the stated common inputs, taking the geometric area relation and matching prescription as given.")).
addresses(t13, gh29_static_qcd_transport).

hypothesis(gh29_static_lattice_fit, "The Table 4 physical-mass extrapolation and covariance of Bulava et al., arXiv:2403.00754, with sqrt(t0)=0.1443 fm and the compact H_N=0.312 GeV. This is a single-spacing three-channel interpolation.").
claim(gh29_static_force_comparison, claim, numerical, "Static-force interpolation and held-out comparison", "The imported lattice curve gives sqrt(sigma)/H_N=1.43 and crossings at L H_N=1.91 and 2.11. Its inner Sommer-radii ratio 1.4665(76), with fit statistics only, is 2.83 percent below the independent HotQCD continuum value 1.5092(39).").
source(gh29_static_force_comparison, 'results/issues/29_static_colour.md', 'independent-test-of-the-force-curve').
depends(gh29_static_force_comparison, hyp(gh29_static_lattice_fit)).
depends(gh29_static_force_comparison, gh29_static_qcd_transport).
attempted_by(gh29_static_force_comparison, codex_gpt_6).
checked_by(gh29_static_force_comparison, terra_6_1, python("Checked Table 4, roots, eigenvalue derivative, normalization and covariance, ran the reconstruction, and verified the primary HotQCD comparison.")).
addresses(t13, gh29_static_force_comparison).

claim(gh30_condensate_transfer, proposition, proved, "Proposition 30.1", "With QCD (N_f = 2+1) and the flavour-diagonal O_ledq operator in place of charged-lepton Yukawas, first order in the operator and leading-order chiral perturbation theory give m_i = c_i |<dd>|/(2 Lambda^2) with c_i <dd> renormalization-group invariant. The chiral normalization transferred is F^2 B_0, and C_l is proportional to one free coefficient combination. The relation C_l C_d = f_pi^2 is then equivalent to Lambda/sum sqrt(c_i) = 0.438 M_pi0.").
source(gh30_condensate_transfer, 'results/issues/30.md', 'a-candidate-action-and-its-coefficients').
hypothesis(gh30_condensate_action, "QCD with N_f = 2+1 light flavours at leading order in chiral perturbation theory, the electroweak theory without charged-lepton Yukawa couplings, and a gauge-invariant dimension-six four-fermion operator with real flavour-diagonal coefficients independent of quark masses and gauge couplings, at first order.").
depends(gh30_condensate_transfer, hyp(gh30_condensate_action)).
attempted_by(gh30_condensate_transfer, claude_opus_5_5).
checked_by(gh30_condensate_transfer, claude_opus_5_5, python("Python 3, paper/chiral_scale_responses.py: transfer scales and the effective-scale form of the relation.")).
checked_by(gh30_condensate_transfer, claude_fable_5_2, partial("Mass formula, C_l and the three transfer scales re-derived by hand. The operator-mixing estimate was not checked.")).
addresses(t13, gh30_condensate_transfer).

claim(gh30_chiral_response, proposition, proved, "Proposition 30.2", "At fixed m_u, m_s, m_b and strong input, d log C_d/d log m_d = w_d exactly, and the response of log(C_l C_d/f_pi^2) is w_d - 2 m_d/(m_u+m_d) kappa_f + kappa_l, scheme independent. In the condensate-transfer action it lies in [0.64, 0.82]; the hypercharge response of log(alpha(0) sqrt(M_Z^2 - M_W^2)) at fixed g and v is 2.450 while C_l responds by at most 0.08.").
source(gh30_chiral_response, 'results/issues/30.md', 'responses-to-the-light-quark-masses-and-to-hypercharge').
depends(gh30_chiral_response, gh30_condensate_transfer).
attempted_by(gh30_chiral_response, claude_opus_5_5).
checked_by(gh30_chiral_response, claude_opus_5_5, python("Python 3, paper/chiral_scale_responses.py: weights, NLO chiral slope, error range and hypercharge slopes.")).
checked_by(gh30_chiral_response, claude_fable_5_2, partial("The identity for w_d, the response R_d with its central value 0.73 and both hypercharge slopes re-derived by hand. The error range reproduced by rerunning paper/chiral_scale_responses.py (Python 3). The QED mass-response bound was not checked.")).
addresses(t13, gh30_chiral_response).

claim(gh30_pion_amplitude, proposition, proved, "Proposition 30.3", "If a fraction x of a charged-lepton mass comes from the condensate-transfer operator, the same operator's charged-current partner gives a pseudoscalar-to-Standard-Model amplitude ratio x v^2/(V_ud F^2) = 8.3e6 x in pi -> l nu, independent of the lepton. Per-cent agreement of the pion rate limits x to about 1.4e-9.").
source(gh30_pion_amplitude, 'results/issues/30.md', 'the-held-out-pion-decay-amplitude').
depends(gh30_pion_amplitude, gh30_condensate_transfer).
attempted_by(gh30_pion_amplitude, claude_opus_5_5).
checked_by(gh30_pion_amplitude, claude_opus_5_5, python("Python 3, paper/chiral_scale_responses.py: amplitude ratio with F and with physical f_pi, and the dimension-eight scales.")).
checked_by(gh30_pion_amplitude, claude_fable_5_2, partial("Amplitude ratio x v^2/(V_ud F^2) re-derived from the operator with its own normalization bookkeeping and evaluated as 8.32e6 x. The dimension-eight scales were not checked.")).
addresses(t13, gh30_pion_amplitude).
claim(gh30_condensate_transfer_nogo, no_go, proved, "No-go theorem 30.4", "Scope: QCD with N_f = 2+1 at leading order in chiral perturbation theory, and a charged-lepton mass generated at tree level from the light-quark condensate through a gauge-invariant local dimension-six four-fermion operator with coefficients independent of quark masses and gauge couplings. Then C_l is proportional to a free coefficient, the relations C_l C_d = f_pi^2 and C_l = alpha(0) B hold only on a hypersurface, and the pion decay amplitude limits the condensate share of every charged-lepton mass to below 1.4e-9. Escapes: a dimension-eight neutral operator, a mediator lighter than about 75 MeV, composite leptons, coefficients that depend on the quark masses, and radiative transfer through current correlators. Direction: an inverse-law mechanism that fixes its one free coefficient. The idea of a chiral origin of the scale stays open.").
source(gh30_condensate_transfer_nogo, 'results/issues/30.md', 'the-held-out-pion-decay-amplitude').
depends(gh30_condensate_transfer_nogo, gh30_condensate_transfer).
depends(gh30_condensate_transfer_nogo, gh30_chiral_response).
depends(gh30_condensate_transfer_nogo, gh30_pion_amplitude).
attempted_by(gh30_condensate_transfer_nogo, claude_opus_5_5).
checked_by(gh30_condensate_transfer_nogo, claude_fable_5_2, partial("Clauses (i) and (iii) re-derived by hand. Clause (ii) re-derived for its central value, with the error range from the script. The list of escapes was read, and the escapes were not tested. Two models stand behind this row; AGENTS.md asks for wider consensus before it is relied on in general.")).
addresses(t13, gh30_condensate_transfer_nogo).

claim(gh30_inverse_law_response, proposition, proved, "Proposition 30.5", "A mechanism with C_l = M^2/C_d and M independent of m_d, such as the full-rank five-flavour SQCD inverse law with M^2 = lambda S, has zero response of C_l C_d/M^2 to m_d; the relation C_l C_d = f_pi^2 reduces to the single condition lambda S = f_pi^2 on its free coefficient.").
source(gh30_inverse_law_response, 'results/issues/30.md', 'the-held-out-pion-decay-amplitude').
attempted_by(gh30_inverse_law_response, claude_opus_5_5).
checked_by(gh30_inverse_law_response, claude_fable_5_2, by_hand).
addresses(t13, gh30_inverse_law_response).

claim(gh31_internal_weyl_chern, proposition, proved, "Proposition 31.1", "For the four-dimensional free overlap Weyl field tensored with a finite internal module graded with multiplicities n_+ and n_-, the Weyl field bundle has c_1 = 0 and C_2 = n_+ - n_-. If n_+ = n_- it is analytically trivial and the Lu-Shao topological obstruction is absent; if n_+ != n_- the Lu-Shao conditions (with or without the U(1) condition) admit no reflection.").
source(gh31_internal_weyl_chern, 'results/issues/31.md', 'internal-modules-and-the-weyl-bundle').
hypothesis(gh31_lushao_conditions, "Infinite lattice Z^4 at finite spacing, Luscher's projections with the overlap hat-gamma_5 tensored with a constant internal grading, and an antilinear invertible involution preserving the projections, covariant under reflected translations and exponentially local about the reflected point (Lu and Shao, arXiv:2611.20084, section 3.2).").
depends(gh31_internal_weyl_chern, hyp(gh31_lushao_conditions)).
attempted_by(gh31_internal_weyl_chern, claude_opus_5_5).
checked_by(gh31_internal_weyl_chern, claude_fable_5_2, partial("Chern classes of the tensored bundle, the value 45 and the trivialization at n_+ = n_- re-derived by hand. The frame argument for n_+ != n_- was followed step by step against a report of section 3.2 of Lu and Shao; the checker did not read the paper itself.")).
addresses(t18, gh31_internal_weyl_chern).
claim(gh31_internal_weyl_nogo, no_go, proved, "Proposition 31.1(a)", "Scope: the free overlap Weyl field on Z^4 at finite spacing, tensored with a constant internal grading of multiplicities n_+ != n_-, and its full Weyl algebra. No antilinear involution satisfies the four Lu-Shao conditions, and none satisfies them with the U(1) condition dropped. For three families of 10 + 5bar, n_+ - n_- = 45. Escapes: the algebra generated by q = P_- psi and its conjugate (Kikukawa and Usui); even buffered observables with positivity obtained in the cutoff limit (Appendix A of the Yang-Mills group assessment); the continuum limit; vectorlike content with n_+ = n_-; a reflection outside the covariance and locality conditions; the KO-six reality condition, which the argument leaves out. Direction: positivity of a lattice chiral theory is to be sought on a restricted algebra or in the limit, and the paired wall modules of this corpus are free of the obstruction.").
source(gh31_internal_weyl_nogo, 'results/issues/31.md', 'internal-modules-and-the-weyl-bundle').
depends(gh31_internal_weyl_nogo, gh31_internal_weyl_chern).
depends(gh31_internal_weyl_nogo, hyp(gh31_lushao_conditions)).
attempted_by(gh31_internal_weyl_nogo, claude_opus_5_5).
checked_by(gh31_internal_weyl_nogo, claude_fable_5_2, partial("Chern number n_+ - n_- re-derived by hand; the frame and Nambu arguments followed against a report of section 3.2 of Lu and Shao, the paper itself unread by the checker. Two models stand behind this row; AGENTS.md asks for wider consensus before it is relied on in general.")).
addresses(t18, gh31_internal_weyl_nogo).

claim(gh31_vectorlike_wall_modules, proposition, proved, "Proposition 31.2", "The KO-six cylinder kernel of issue 1, the interval operator D(Gamma_0, Gamma_1) of Theorem 23.1 with equal eigenspace dimensions, and the ordinary families together with the three mirror families of 72 and 79 each have net chirality zero in every representation; their selecting projectors act on the finite internal factor and are constant in external momentum on a product operator.").
source(gh31_vectorlike_wall_modules, 'results/issues/31.md', 'internal-modules-and-the-weyl-bundle').
depends(gh31_vectorlike_wall_modules, l23_gradings).
attempted_by(gh31_vectorlike_wall_modules, claude_opus_5_5).
checked_by(gh31_vectorlike_wall_modules, claude_fable_5_2, partial("The projection-dimension identity and the vanishing index re-derived by hand. The statements quoted from issue 1, Theorem 23.1 and result 100 were taken as recorded.")).
addresses(t18, gh31_vectorlike_wall_modules).

claim(gh31_wall_mode_reflection, proposition, proved, "Proposition 31.3", "For a paired wall mode of mass theta/l > 0 with the free Euclidean Dirac action, gamma_0 S(t, p) = exp(-t E) P_pos(p) for t > 0 with P_pos the positive spectral projector of h = -i gamma_0 gamma.p + m gamma_0, and the reflection matrix of positive-time linear tests is a Gram matrix, hence positive semidefinite.").
source(gh31_wall_mode_reflection, 'results/issues/31.md', 'internal-modules-and-the-weyl-bundle').
attempted_by(gh31_wall_mode_reflection, claude_opus_5_5).
checked_by(gh31_wall_mode_reflection, claude_fable_5_2, by_hand).
addresses(t18, gh31_wall_mode_reflection).

claim(gh31_mirror_charge_increment, proposition, proved, "Proposition 31.4", "With the weak fit of 78 fixed, three unmixed degenerate mirror families of Dirac mass M (charge trace 8) shift the on-shell-subtracted inverse charge at spacelike Q by a strictly negative amount that increases strictly with M and is bounded by (8/(15 pi)) Q^2/M^2; at Q = 1 TeV it is -0.9750 for M = 300 GeV and -0.0376 for M = 2.1 TeV, against zero for the matched construction without mirrors.").
source(gh31_mirror_charge_increment, 'results/issues/31.md', 'a-mirror-sensitive-observable-in-results-7879').
depends(gh31_mirror_charge_increment, mirror_custodial_bound).
attempted_by(gh31_mirror_charge_increment, claude_opus_5_5).
checked_by(gh31_mirror_charge_increment, claude_opus_5_5, python("Python 3 and SciPy, paper/mirror_charge_and_running.py: quadrature at both masses, monotone sample and decoupling bound.")).
checked_by(gh31_mirror_charge_increment, claude_fable_5_2, partial("Charge trace, normalization of the one-loop integral, sign, monotonicity and the bound re-derived by hand. Both values, -0.97501 and -0.03759, reproduced with a composite Simpson rule in Python 3 (standard library), independent of the repository script.")).
addresses(t13, gh31_mirror_charge_increment).

claim(gh31_free_current_control, proposition, proved, "Proposition 31.5", "In a free charged Dirac field minimally coupled to a free Abelian gauge field, the connected current-gauge correlation at first order in the coupling is the one-loop polarization contracted with the gauge propagator, nonzero for charged matter; an interaction claim requires subtracting the free gauge-fermion value of the same correlator with identical insertions, smearings, normalization and subtraction.").
source(gh31_free_current_control, 'results/issues/31.md', 'the-free-theory-control-for-an-interaction-claim').
attempted_by(gh31_free_current_control, claude_opus_5_5).
checked_by(gh31_free_current_control, claude_fable_5_2, partial("The first-order Wick contraction re-derived by hand in the stated sign convention. The requirements listed for the submitted correlator are statements of scope.")).
addresses(t13, gh31_free_current_control).

claim(gh31_running_coefficients, proposition, proved, "Proposition 31.6", "For SU(5) with three left-handed 10 + 5bar families, T(10) = 3/2, T(5bar) = 1/2, the cubic anomaly cancels, b0 = 43/3 and b1 = 2156/15; colour gives b0 = 7 for six flavours and 3 for twelve, and the hypercharge index is 5/3. Simultaneous mirror decoupling at 300 GeV reproduces alpha_s(1 TeV) = 0.09634 with mirrors and 0.08879 without; sin^2 theta_W = 3/8 needs the common tree normalization of the matching action.").
source(gh31_running_coefficients, 'results/issues/31.md', 'running-coefficients-group-theory-and-matching').
attempted_by(gh31_running_coefficients, claude_opus_5_5).
checked_by(gh31_running_coefficients, claude_opus_5_5, python("Python 3 with exact fractions and SciPy, paper/mirror_charge_and_running.py: group traces, Casimirs, both coefficients and three- and four-loop running.")).
checked_by(gh31_running_coefficients, claude_fable_5_2, partial("b0, b1, both Casimirs, the mirror value 31/3 and the hypercharge index recomputed with exact fractions in an independent Python 3 script. alpha_s^(12)(300 GeV) = 0.10108 and the six-flavour value 0.08879 reproduced by independent two-loop running. The twelve-flavour value is 0.09622 at two loops; the three- and four-loop values were reproduced by rerunning paper/mirror_charge_and_running.py.")).
addresses(t13, gh31_running_coefficients).
addresses(t18, gh31_running_coefficients).

claim(gh24_current_response, theorem, proved, "Issue 24, exact elimination", "For the mixed-wall vectorlike interval, curvature-dependent U(1) probe and fixed lattice and vertical cutoffs, every finite grouping of exact Gaussian band eliminations preserves the full one-loop current Hessian. The regulated Ward identity holds and the induced light two-current vertex contributes strictly to the subtracted transverse response on 1/4 < q <= 1/2 in the two-band example.").
source(gh24_current_response, 'results/issues/24.md', 'exact-elimination-and-moving-window-derivatives').
depends(gh24_current_response, l14_covariant).
attempted_by(gh24_current_response, gpt_6_2_sol).
checked_by(gh24_current_response, gpt_6_1_terra, by_hand).
checked_by(gh24_current_response, gpt_6_2_sol, python("transverse quadrature in both groupings, longitudinal Ward cancellation, and interval overlaps")).
checked_by(gh24_current_response, gpt_6_1_terra, python("reproduced the supplied quadrature and compared with independent Sobol integration")).
addresses(t4b, gh24_current_response).

claim(gh24_repeated_blocking, theorem, proved, "Issue 24, repeated local blocking", "At fixed horizontal lattice spacing, using a covariant Neumann polynomial in the induced two-current vertex and retaining the determinant at quadratic order yields local defects with contractive subsequent maps. Degree equal to depth gives geometric convergence on the specified momentum range, uniformly in the vertical cutoff. A summable tower estimate also removes the vertical cutoff in this response.").
source(gh24_repeated_blocking, 'results/issues/24.md', 'repeated-local-blocking').
depends(gh24_repeated_blocking, gh24_current_response).
attempted_by(gh24_repeated_blocking, gpt_6_2_sol).
checked_by(gh24_repeated_blocking, gpt_6_1_terra, by_hand).
checked_by(gh24_repeated_blocking, gpt_6_2_sol, python("propagator remainder on Euclidean Clifford matrices and exact telescoping sum")).
addresses(t4b, gh24_repeated_blocking).

claim(gh3_moving_kernel, proposition, proved, "Issue 3", "In the parallel identification of a smooth isolated kernel, the first variation of its Berry connection is P dot(nabla) P + S*B - B*S, where B is its second fundamental form and S=-R dot(D)P. The homogeneous wall line connection is unique after imposing line preservation.").
source(gh3_moving_kernel, 'results/issues/03.md', '').
attempted_by(gh3_moving_kernel, gpt_6_2_astra_max).
checked_by(gh3_moving_kernel, codex_gpt_6, by_hand).
addresses(t15, gh3_moving_kernel).
depends(gh3_moving_kernel, l43_berry).

claim(gh13_squashed_wall, proposition, proved, "Issue 13", "For the pullback connection K(rho) holds on I(sqrt(5)) and w is positive on I(sqrt(3)).").
source(gh13_squashed_wall, 'results/issues/13.md', '').
attempted_by(gh13_squashed_wall, gpt_6_2_astra_max).
checked_by(gh13_squashed_wall, codex_gpt_6, by_hand).
addresses(t0, gh13_squashed_wall).
addresses(t14, gh13_squashed_wall).

claim(gh10_transfer_rate, theorem, proved, "Issue 10", "For each fixed disc of Setting 29.0 in the two proved wall cases, zero tunnelling masses are discrete and the large-mass exponential rate exists off a set of finite logarithmic measure. It equals the difference of two transfer support edges and is between I_eff/2 and 13 I/2. This gives the joint mass power and a parallel-quaternionic defect estimate in terms of the singular value on the same mass scales.").
source(gh10_transfer_rate, 'results/issues/10.md', '').
depends(gh10_transfer_rate, gh10_radial_transmission).
depends(gh10_transfer_rate, gh10_tunnelling_cutoffs).
depends(gh10_transfer_rate, l30_defect).
attempted_by(gh10_transfer_rate, gpt_6_2_astra_max).
checked_by(gh10_transfer_rate, codex_gpt_6, by_hand).
checked_by(gh10_transfer_rate, terra_6_1, by_hand).
addresses(t0, gh10_transfer_rate).
addresses(t14, gh10_transfer_rate).

claim(gh10_all_masses, theorem, proved, "Issue 10, The factor at every mass", "On each fixed admissible disc the light singular value has action 2I-h(D), a Blaschke zero product of the zero-mass compact pencil, and an explicit polynomially bounded positive prefactor from imaginary mass, with exponentially small relative error. The doubled determinant coefficient has right support edge 7I.").
source(gh10_all_masses, 'results/issues/10.md', '').
depends(gh10_all_masses, gh10_transfer_rate).
attempted_by(gh10_all_masses, gpt_6_2_astra_max).
checked_by(gh10_all_masses, codex_gpt_6, by_hand).
checked_by(gh10_all_masses, terra_6_1, by_hand).
addresses(t0, gh10_all_masses).
addresses(t14, gh10_all_masses).

claim(gh10_inverse_schedule, proposition, proved, "Issue 10, The original and the inverse mass schedules", "With a fixed disc and a fixed target fermion mass coefficient, a last-crossing choice realizes m_epsilon=m_star epsilon for every small epsilon. The required mass divided by log(1/epsilon) tends to (1-alpha)/S.").
source(gh10_inverse_schedule, 'results/issues/10.md', '').
depends(gh10_inverse_schedule, gh10_all_masses).
attempted_by(gh10_inverse_schedule, gpt_6_2_astra_max).
checked_by(gh10_inverse_schedule, codex_gpt_6, by_hand).
addresses(t14, gh10_inverse_schedule).

claim(gh10_angular_wall, proposition, proved, "Issue 10, The angular matrix elements", "At the unit Fubini-Study radius the pull-back kernel in the defining multiplicity has weight w=2/3. Its two nonzero squared singular values are (45 plus or minus 3 sqrt(33))/8 from the horizontal row, line spectrum and twist ladder.").
source(gh10_angular_wall, 'results/issues/10.md', '').
depends(gh10_angular_wall, l29_window_a).
attempted_by(gh10_angular_wall, gpt_6_2_astra_max).
checked_by(gh10_angular_wall, terra_6_1, by_hand).
addresses(t0, gh10_angular_wall).

claim(gh10_pullback_prefactor, theorem, proved, "Issue 10, The pull-back prefactor and smooth split collars", "At the unit pull-back wall the fixed-disc singular value is asymptotic to a positive explicit constant times M^(7/4) exp(-MI/2). The coefficient is determined by a normalized three-channel normal harmonic; the quaternionic defect is bounded by each positive power of the light mass below two.").
source(gh10_pullback_prefactor, 'results/issues/10.md', '').
depends(gh10_pullback_prefactor, gh10_angular_wall).
depends(gh10_pullback_prefactor, gh10_radial_transmission).
depends(gh10_pullback_prefactor, l30_defect).
attempted_by(gh10_pullback_prefactor, gpt_6_2_astra_max).
checked_by(gh10_pullback_prefactor, codex_gpt_6, by_hand).
checked_by(gh10_pullback_prefactor, terra_6_1, by_hand).
addresses(t0, gh10_pullback_prefactor).
addresses(t14, gh10_pullback_prefactor).

claim(gh10_split_exit, theorem, proved, "Issue 10, Exit into the split wall channel", "For a real affine interpolation ending inside a constant geometric collar a signed Laplace integral gives the geometric transmission with error relative to its absolute envelope. A one-sign flat exit realizes a stretched exponential. A signed flat exit on one fixed smooth disc realizes unbounded exact mass zeros with strictly positive quaternionic defect.").
source(gh10_split_exit, 'results/issues/10.md', '').
depends(gh10_split_exit, gh10_pullback_prefactor).
depends(gh10_split_exit, gh10_radial_transmission).
attempted_by(gh10_split_exit, gpt_6_2_astra_max).
checked_by(gh10_split_exit, codex_gpt_6, by_hand).
checked_by(gh10_split_exit, terra_6_1, by_hand).
addresses(t0, gh10_split_exit).
addresses(t14, gh10_split_exit).

claim(gh10_radial_transmission, proposition, proved, "Issue 10", "A zero-energy bordered determinant on the defining multiplicity space gives the actual disc tunnelling singular value with relative O(1/M) error and exact zeros. On the split collar the known prefactor is sqrt(3 M f0) times its exact exponential and one normalized core trace.").
source(gh10_radial_transmission, 'results/issues/10.md', '').
attempted_by(gh10_radial_transmission, gpt_6_2_astra_max).
checked_by(gh10_radial_transmission, codex_gpt_6, by_hand).
addresses(t0, gh10_radial_transmission).
addresses(t14, gh10_radial_transmission).

claim(gh10_tunnelling_cutoffs, proposition, proved, "Issue 10", "At fixed coefficients the full half-action bounds the tunnelling exponent from below, and the line-preserving collar increases this bound by its full mass integral.").
source(gh10_tunnelling_cutoffs, 'results/issues/10.md', '').
attempted_by(gh10_tunnelling_cutoffs, gpt_6_2_astra_max).
checked_by(gh10_tunnelling_cutoffs, codex_gpt_6, by_hand).
addresses(t0, gh10_tunnelling_cutoffs).
addresses(t14, gh10_tunnelling_cutoffs).

claim(gh2_football_spin, proposition, proved, "Issue 2", "The bounding spin football with integer monopole has the stated Jacobi spectrum and chiral index N, and in the cone-angle range q>=1 its Dirac domain is unique.").
source(gh2_football_spin, 'results/issues/02.md', '').
attempted_by(gh2_football_spin, gpt_6_2_astra_max).
checked_by(gh2_football_spin, terra_6_1, by_hand).
addresses(t18, gh2_football_spin).
addresses(t3, gh2_football_spin).

claim(gh18_interval_scale, proposition, proved, "Issue 18", "Fixed interval angle and fixed positive five-dimensional gauge coefficient leave a continuous length with an explicit pure Yang-Mills one-loop scale ratio.").
source(gh18_interval_scale, 'results/issues/18.md', '').
attempted_by(gh18_interval_scale, gpt_6_2_astra_max).
checked_by(gh18_interval_scale, codex_gpt_6, by_hand).
addresses(t13, gh18_interval_scale).
addresses(t18, gh18_interval_scale).

claim(gh4_triality_frame, proposition, proved, "Issue 4", "The simultaneous D4 triality exchange transports the theta projection with multiplicities (3,45) or (15,33); the connected E8 stabilizer of the 44 is the indicated SO(9).").
source(gh4_triality_frame, 'results/issues/04.md', '').
attempted_by(gh4_triality_frame, gpt_6_2_astra_max).
checked_by(gh4_triality_frame, terra_6_1, by_hand).
addresses(t14, gh4_triality_frame).

claim(gh12_mixing_law, proposition, proved, "Issue 12", "For independent standard complex Gaussian sectors and fixed nonsingular diagonal right profiles, the normalized CKM magnitudes converge to explicit Gram-minor ratios with small-ball exponent two.").
source(gh12_mixing_law, 'results/issues/12.md', '').
attempted_by(gh12_mixing_law, gpt_6_2_astra_max).
checked_by(gh12_mixing_law, codex_gpt_6, by_hand).
addresses(t8, gh12_mixing_law).
addresses(t3, gh12_mixing_law).

claim(gh5_flavour_alignment, theorem, proved, "Issue 5, generation matrices", "For arbitrary generation matrices the connector minimum at fixed other fields follows from at most 24 quadratic stationarity tests. Explicit global vacua have a continuous colour overlap and the two proposed rank-one overlaps can vary independently on the restricted locus.").
source(gh5_flavour_alignment, 'results/issues/05.md', '').
attempted_by(gh5_flavour_alignment, gpt_6_2_astra_max).
checked_by(gh5_flavour_alignment, terra_6_1, by_hand).
addresses(t12, gh5_flavour_alignment).
addresses(t14, gh5_flavour_alignment).

claim(gh5_ps_potential, proposition, proved, "Issue 5", "Every unrestricted global minimum of the printed one-generation composite potential has Delta=0 if F0,F2>0, k_R is nonzero and a Dirac Yukawa is nonzero.").
source(gh5_ps_potential, 'results/issues/05.md', '').
attempted_by(gh5_ps_potential, gpt_6_2_astra_max).
checked_by(gh5_ps_potential, codex_gpt_6, by_hand).
addresses(t12, gh5_ps_potential).
addresses(t14, gh5_ps_potential).

claim(gh6_elliptic_weyl, proposition, proved, "Issue 6", "The Weyl group of each holonomy centralizer gives the spin algebra of Lemma 49, and the normalized A2 Cartan pairing induces a Weyl-equivariant isogeny to the dual four-torus with kernel E[3].").
source(gh6_elliptic_weyl, 'results/issues/06.md', '').
attempted_by(gh6_elliptic_weyl, gpt_6_2_astra_max).
checked_by(gh6_elliptic_weyl, codex_gpt_6, by_hand).
addresses(t16, gh6_elliptic_weyl).
addresses(t18, gh6_elliptic_weyl).

claim(gh7_quark_wall, proposition, proved, "Issue 7", "A same-projector interval retains a single complex quark generation; in the all-left convention the grading charge is B-L on leptons and -3(B-L) on quarks.").
source(gh7_quark_wall, 'results/issues/07.md', '').
attempted_by(gh7_quark_wall, gpt_6_2_astra_max).
checked_by(gh7_quark_wall, terra_6_1, by_hand).
addresses(t3, gh7_quark_wall).
addresses(t16, gh7_quark_wall).

claim(gh8_three_torus_blocks, proposition, proved, "Issue 8", "An endomorphism-valued Wilson line and three-form from a single normal flavour endomorphism realize arbitrary three positive doublets with prescribed orientations; a degree-three elliptic zero sector realizes the multiplicity.").
source(gh8_three_torus_blocks, 'results/issues/08.md', '').
attempted_by(gh8_three_torus_blocks, gpt_6_2_astra_max).
checked_by(gh8_three_torus_blocks, codex_gpt_6, by_hand).
addresses(t8, gh8_three_torus_blocks).
addresses(t12, gh8_three_torus_blocks).
addresses(t16, gh8_three_torus_blocks).

claim(gh9_flux_lattice, proposition, proved, "Issue 9", "At fixed flux quantum and shape, a rank-one mirror flux has mass proportional to the inverse cubed torus size with a finite lattice window, while the first tower is proportional to its inverse size.").
source(gh9_flux_lattice, 'results/issues/09.md', '').
attempted_by(gh9_flux_lattice, gpt_6_2_astra_max).
checked_by(gh9_flux_lattice, terra_6_1, by_hand).
addresses(t14, gh9_flux_lattice).
addresses(t12, gh9_flux_lattice).

claim(gh15_broken_colour_interval, proposition, proved, "Issue 15, broken-group parent", "Three genuinely charged ultraviolet antitriplets of a separate broken group survive as neutral Majorana modes of the visible window. The specified Neumann-Dirichlet tower gives their exact tree-level current interaction.").
source(gh15_broken_colour_interval, 'results/issues/15.md', '').
attempted_by(gh15_broken_colour_interval, gpt_6_2_astra_max).
checked_by(gh15_broken_colour_interval, codex_gpt_6, by_hand).
addresses(t2, gh15_broken_colour_interval).
addresses(t12, gh15_broken_colour_interval).

claim(gh15_charged_compression, proposition, proved, "Issue 15", "On a gauge-equivariant spectral window the surviving part of an irreducible charge sector carries that same representation; an unmatched Weyl kernel can survive the cutoff.").
source(gh15_charged_compression, 'results/issues/15.md', '').
attempted_by(gh15_charged_compression, gpt_6_2_astra_max).
checked_by(gh15_charged_compression, terra_6_1, by_hand).
addresses(t12, gh15_charged_compression).
addresses(t2, gh15_charged_compression).

claim(gh14_symmetric_mirror_vacua, proposition, conditional, "Issue 14, protected vacua", "In five-flavour supersymmetric SU(3) the zero-mass fibre and every positive mass rank differ in protected vacuum data. The local common-spurion model gives a three-branched vacuum family and a charged holomorphic Hessian of order z^(1/3).").
source(gh14_symmetric_mirror_vacua, 'results/issues/14.md', '').
attempted_by(gh14_symmetric_mirror_vacua, gpt_6_2_astra_max).
checked_by(gh14_symmetric_mirror_vacua, terra_6_1, by_hand).
addresses(t12, gh14_symmetric_mirror_vacua).
addresses(t13, gh14_symmetric_mirror_vacua).

claim(gh14_sqcd_hessian, proposition, proved, "Issue 14", "In the massive five-flavour SU(3) SQCD vacua the six oppositely charged meson pairs have factorized holomorphic quadratic coefficients m_i m_j/S, with S cubed equal to Lambda^4 det m.").
source(gh14_sqcd_hessian, 'results/issues/14.md', '').
attempted_by(gh14_sqcd_hessian, gpt_6_2_astra_max).
checked_by(gh14_sqcd_hessian, terra_6_1, by_hand).
addresses(t12, gh14_sqcd_hessian).
addresses(t13, gh14_sqcd_hessian).

claim(gh17_flavour_kernel, proposition, proved, "Issue 17, flavour bundle", "A degree-d pullback of the charge-two sphere Dirac family realizes the inflow doublet bundle and its connection. Its one-doublet mod-two sign is (-1)^d.").
source(gh17_flavour_kernel, 'results/issues/17.md', '').
attempted_by(gh17_flavour_kernel, gpt_6_2_astra_max).
checked_by(gh17_flavour_kernel, codex_gpt_6, by_hand).
addresses(t10, gh17_flavour_kernel).
claim(gh17_single_clifford_mass, proposition, conditional, "Issue 17, twistor mass", "The level-one twistor height coupling realizes a single Clifford mass with a controlled high-mode gap. In the specified adiabatic complex determinant its relative sign is the degree parity in the inverted regime. The full doubled odd mass has a graph negative bundle.").
source(gh17_single_clifford_mass, 'results/issues/17.md', '').
attempted_by(gh17_single_clifford_mass, gpt_6_2_astra_max).
checked_by(gh17_single_clifford_mass, codex_gpt_6, by_hand).
addresses(t14, gh17_single_clifford_mass).

claim(gh17_eta_circle, proposition, proved, "Issue 17", "On a product with a pulled-back unitary connection eta is determined by the chiral indices and the total spin-plus-holonomy shifts; an antiperiodic spin structure and an odd half holonomy cancel.").
source(gh17_eta_circle, 'results/issues/17.md', '').
attempted_by(gh17_eta_circle, gpt_6_2_astra_max).
checked_by(gh17_eta_circle, codex_gpt_6, by_hand).
addresses(t3, gh17_eta_circle).
addresses(t10, gh17_eta_circle).
addresses(t14, gh17_eta_circle).

claim(gh16_threshold_su2, theorem, reference, "Issue 16, A.1", "The relative SU(2) BFSS kernel is one even Spin(9) singlet by the Sethi-Stern index 5/4 - 1/4 and the rotation theorem. With the periodic spacelike BPS circle dictionary this gives 256 single-particle threshold polarizations of mass 2/R.").
source(gh16_threshold_su2, 'results/issues/16.md', 'a1-positive-charge-threshold-count').
addresses(t14, gh16_threshold_su2).

claim(gh16_threshold_recovery, theorem, reference, "Issue 16, Massive index and recovery at higher charge", "At each finite N >= 3 the pinned preprint gives one even relative Spin(9) singlet. The massive index and simultaneous graph-norm recovery through the corrected proper-partition lifts have a source-level check. The count 256 floor(RE) uses the periodic spacelike circle and the BPS mass N/R.").
source(gh16_threshold_recovery, 'results/issues/16.md', 'massive-index-and-recovery-at-higher-charge').
checked_by(gh16_threshold_recovery, gpt_6_2_sol, by_hand).
checked_by(gh16_threshold_recovery, gpt_6_2_sol, python("normal frequency sums, parity and cutoff exponents")).
depends(gh16_threshold_recovery, gh16_threshold_su2).
addresses(t14, gh16_threshold_recovery).

claim(gh16_channel_compactness, theorem, proved, "Issue 16", "For the physical relative SU(2) BFSS Hamiltonian, each total Spin(9) type absent from the rank-one fast ground has compact resolvent and H >= (8/5) R_X - 425/R_X squared. Zero belongs to the essential spectrum in each type occurring in the physical angular ground.").
source(gh16_channel_compactness, 'results/issues/16.md', '').
attempted_by(gh16_channel_compactness, gpt_6_2_astra_max).
checked_by(gh16_channel_compactness, codex_gpt_6, by_hand).
depends(gh16_channel_compactness, gh16_high_spin_mass).
addresses(t14, gh16_channel_compactness).

claim(gh16_protected_mass, corollary, proved, "Issue 16", "At charge two the mass bound for every superspin except the even symmetric scattering family exceeds the Planck threshold when the sum of its four weights is at least eight. The estimate leaves 34 integral and 18 half-integral protected labels below the cutoff.").
source(gh16_protected_mass, 'results/issues/16.md', '').
attempted_by(gh16_protected_mass, gpt_6_2_astra_max).
checked_by(gh16_protected_mass, codex_gpt_6, by_hand).
depends(gh16_protected_mass, gh16_channel_compactness).
depends(gh16_protected_mass, gh16_matrix_radius).
addresses(t14, gh16_protected_mass).

claim(gh16_cubic_levels, proposition, proved, "Issue 16", "The physical relative SU(2) BFSS total rotation type (3,0,0,0) contains infinitely many positive normalizable levels tending to infinity. The gauge-invariant harmonic cubic gives infinite multiplicity and the channel theorem gives compact resolvent.").
source(gh16_cubic_levels, 'results/issues/16.md', '').
attempted_by(gh16_cubic_levels, gpt_6_2_astra_max).
checked_by(gh16_cubic_levels, codex_gpt_6, by_hand).
depends(gh16_cubic_levels, gh16_channel_compactness).
addresses(t14, gh16_cubic_levels).

claim(gh16_matrix_radius, proposition, proved, "Issue 16", "At finite SU(N) a total Spin(9) type of summed highest weight j obeys E times the second relative matrix-radius moment at least 49 j squared / 122 and H >= [(7j-sqrt(61))_+] squared / (122 R_X squared) as forms for positive coefficient. A sub-Planck multiplet contains a total type with j at least three and O(1/N) probability in a fixed trace-norm ball.").
source(gh16_matrix_radius, 'results/issues/16.md', '').
attempted_by(gh16_matrix_radius, gpt_6_2_astra_max).
checked_by(gh16_matrix_radius, codex_gpt_6, by_hand).
checked_by(gh16_matrix_radius, terra_6_1, by_hand).
addresses(t14, gh16_matrix_radius).

claim(gh16_superspin_bound, corollary, proved, "Issue 16", "All polarizations in a positive SU(2) BFSS supermultiplet with second superspin coordinate greater than nine inherit the lower mass bound, by the highest weight in the 84 tensor product.").
source(gh16_superspin_bound, 'results/issues/16.md', '').
attempted_by(gh16_superspin_bound, gpt_6_2_astra_max).
checked_by(gh16_superspin_bound, codex_gpt_6, by_hand).
depends(gh16_superspin_bound, gh16_high_spin_mass).
addresses(t14, gh16_superspin_bound).

claim(gh16_high_spin_mass, proposition, proved, "Issue 16", "For the normalized relative SU(2) BFSS operator, the sharper Clifford, slice and colour-average estimates give E >= 1.53497 for second Spin(9) weight > 10. Under the specified light-cone dictionary this gives M l_p >= 1.3428.").
source(gh16_high_spin_mass, 'results/issues/16.md', '').
attempted_by(gh16_high_spin_mass, gpt_6_2_astra_max).
checked_by(gh16_high_spin_mass, terra_6_1, by_hand).
addresses(t14, gh16_high_spin_mass).

claim(gh16_planck_weights, proposition, proved, "Issue 16, The remaining two-D0 mass thresholds", "A sharper radial and transverse form bound plus a four-plane angular multiplier puts every protected charge-two BFSS superspin with weight sum at least seven above the Planck threshold. There remain 23 integral and 12 half-integral protected labels and possible embedded states in the even symmetric family.").
source(gh16_planck_weights, 'results/issues/16.md', '').
depends(gh16_planck_weights, gh16_high_spin_mass).
attempted_by(gh16_planck_weights, gpt_6_2_sol).
checked_by(gh16_planck_weights, gpt_6_1_terra, by_hand).
checked_by(gh16_planck_weights, gpt_6_2_astra_max, by_hand).
addresses(t14, gh16_planck_weights).

claim(gh16_vector_planck, theorem, proved, "Issue 16, The common vector component", "A protected sub-Planck two-D0 level exists exactly when the first confined total-vector energy is below (2 pi)^(2/3)/4. Superspins 9, 36 and 16 are the protected candidates at or below that threshold. All protected masses satisfy M l_p >= 0.6818988. The even one-row superspins need an embedded-eigenvalue test.").
source(gh16_vector_planck, 'results/56_two_d0_mass_certificate.md', '').
depends(gh16_vector_planck, gh16_planck_weights).
depends(gh16_vector_planck, gh16_matrix_radius).
attempted_by(gh16_vector_planck, gpt_6_2_astra_max).
checked_by(gh16_vector_planck, gpt_6_1_terra, python("exact rational interval enclosure and representation count")).
checked_by(gh16_vector_planck, gpt_6_2_sol, by_hand).
claim_amended(gh16_planck_weights, gh16_vector_planck).
addresses(t14, gh16_vector_planck).

claim(gh16_vector_fermions, proposition, proved, "Issue 16, The fermion potential in the vector sector", "At a regular positive diagonal, let p,-a,-b be the signed eigenvalues of the three-by-three Clifford matrix, with p=a+b. The least two-D0 fermion energy compatible with total vector sections is sqrt(2) times (-8p+min(p,4a,4b)).").
source(gh16_vector_fermions, 'results/56_two_d0_mass_certificate.md', '').
depends(gh16_vector_fermions, gh16_high_spin_mass).
attempted_by(gh16_vector_fermions, gpt_6_2_astra_max).
checked_by(gh16_vector_fermions, gpt_6_2_sol, by_hand).
checked_by(gh16_vector_fermions, gpt_6_1_terra, by_hand).
addresses(t14, gh16_vector_fermions).

claim(gh16_vector_domain, proposition, proved, "Issue 16, A finite ball and the scattering continuum", "The physical two-D0 vector sector has infinitely many positive eigenvalues. If its ground energy lies at or below the stated Planck threshold, its Dirichlet energy at matrix radius 17 is higher by less than 3.81e-28. Every total rotation type in the free fast ground channel has essential spectrum [0,infinity).").
source(gh16_vector_domain, 'results/56_two_d0_mass_certificate.md', 'a-finite-ball-and-the-scattering-continuum').
depends(gh16_vector_domain, gh16_channel_compactness).
depends(gh16_vector_domain, gh16_planck_weights).
attempted_by(gh16_vector_domain, gpt_6_2_astra_max).
checked_by(gh16_vector_domain, gpt_6_1_terra, by_hand).
addresses(t14, gh16_vector_domain).

claim(gh16_spinor_mass_floor, theorem, proved, "Result 58, The spinor mass floor", "A positive-energy charge-two BFSS multiplet of superspin 16 has E >= 257149475/415597657. Superspin candidates 9, 36 and 16 share the same confined total-vector test.").
source(gh16_spinor_mass_floor, 'results/58_two_d0_vector_spectrum.md', 'the-spinor-mass-floor').
depends(gh16_spinor_mass_floor, gh16_vector_planck).
attempted_by(gh16_spinor_mass_floor, gpt_6_1_terra).
checked_by(gh16_spinor_mass_floor, gpt_6_2_sol, by_hand).
checked_by(gh16_spinor_mass_floor, gpt_6_2_astra_max, by_hand).
addresses(t14, gh16_spinor_mass_floor).

claim(gh16_vector_chamber, proposition, proved, "Result 58, The three singular values and the physical domain", "The physical total vector reduces unitarily to 9834 coupled channels on the three ordered singular values with the stated orbit Jacobian, angular generators and Friedrichs form domain. The radius-17 problem imposes a Dirichlet trace on the outer sphere.").
source(gh16_vector_chamber, 'results/58_two_d0_vector_spectrum.md', '').
depends(gh16_vector_chamber, gh16_vector_domain).
attempted_by(gh16_vector_chamber, gpt_6_2_sol).
checked_by(gh16_vector_chamber, gpt_6_2_astra_max, by_hand).
addresses(t14, gh16_vector_chamber).

claim(gh16_vector_oscillator, proposition, proved, "Result 58, The first two orbital degrees", "The first two orbital degrees have one and five physical vector multiplicities. The two Yukawa components from the first-degree oscillator have squared norms 240/a and 44/a. The exact three-state Rayleigh-Ritz matrix gives E_vector < 18.552.").
source(gh16_vector_oscillator, 'results/58_two_d0_vector_spectrum.md', '').
depends(gh16_vector_oscillator, gh16_vector_chamber).
attempted_by(gh16_vector_oscillator, gpt_6_2_astra_max).
checked_by(gh16_vector_oscillator, gpt_6_2_sol, python("independent exact character coefficients and Gaussian moments")).
checked_by(gh16_vector_oscillator, gpt_6_1_terra, by_hand).
addresses(t14, gh16_vector_oscillator).

claim(gh16_vector_higher_harmonics, theorem, proved, "Result 58, How much of a light vector must lie in higher harmonics", "A total-vector eigenstate at or below the Planck threshold has at least one fifth of its squared norm in orbital degrees three and higher. The low-degree projection retains every radial profile and physical multiplicity.").
source(gh16_vector_higher_harmonics, 'results/58_two_d0_vector_spectrum.md', '').
depends(gh16_vector_higher_harmonics, gh16_vector_oscillator).
attempted_by(gh16_vector_higher_harmonics, gpt_6_2_astra_max).
checked_by(gh16_vector_higher_harmonics, gpt_6_2_sol, python("independent angular traces and weighted resolvent estimate")).
checked_by(gh16_vector_higher_harmonics, gpt_6_1_terra, by_hand).
addresses(t4, gh16_vector_higher_harmonics).
addresses(t14, gh16_vector_higher_harmonics).

claim(gh16_vector_trial, proposition, numerical, "Result 58, Exact rational trial", "A physical SU(2) total-vector Gaussian trial with orbital degrees 1, 2, 3 and 5 gives E_vector < 9249/500 at unit matrix coupling. The Rayleigh quotient is certified in exact rational arithmetic. Independent review of this trial is pending.").
source(gh16_vector_trial, 'results/58_two_d0_vector_spectrum.md', 'an-exact-trial-with-higher-orbital-degrees').
depends(gh16_vector_trial, gh16_vector_chamber).
depends(gh16_vector_trial, gh16_vector_oscillator).
attempted_by(gh16_vector_trial, gpt_6_2_sol).
checked_by(gh16_vector_trial, gpt_6_2_sol, python("exact Wick moments, polynomial derivatives and Rayleigh quotient")).
addresses(t14, gh16_vector_trial).

claim(gh16_vector_complement, proposition, proved, "Result 58, A high orbital degree gap on the radius-17 ball", "On the physical charge-two vector Dirichlet domain the form restriction to orbital l >= 59 has energy at least 59/50. The test at 213/250 reduces to a Schur form on l <= 58. The coupling enters only through orbital degrees 55 to 58.").
source(gh16_vector_complement, 'results/58_two_d0_vector_spectrum.md', 'a-high-orbital-degree-gap-on-the-radius-17-ball').
depends(gh16_vector_complement, gh16_vector_domain).
depends(gh16_vector_complement, gh16_vector_fermions).
attempted_by(gh16_vector_complement, gpt_6_2_sol).
checked_by(gh16_vector_complement, gpt_6_1_terra, by_hand).
checked_by(gh16_vector_complement, gpt_6_1_terra, python("independent rational gap and cutoff comparison")).
addresses(t14, gh16_vector_complement).

claim(gh16_vector_scalar_comparison, proposition, proved, "Result 58, A scalar chamber comparison", "On the radius-17 ball at unit coupling the scalar singular-value kinetic form with V and the pointwise vector fermion minimum has a Gaussian cutoff trial below 19/25 even after adding 13/R_X squared. Its ground infimum cannot certify the required vector lower bound.").
source(gh16_vector_scalar_comparison, 'results/58_two_d0_vector_spectrum.md', 'a-scalar-chamber-comparison').
depends(gh16_vector_scalar_comparison, gh16_vector_complement).
attempted_by(gh16_vector_scalar_comparison, gpt_6_2_sol).
checked_by(gh16_vector_scalar_comparison, gpt_6_1_terra, by_hand).
checked_by(gh16_vector_scalar_comparison, gpt_6_1_terra, python("independent rational Gaussian and cutoff bounds")).
addresses(t14, gh16_vector_scalar_comparison).

claim(gh16_vector_planck_decision, claim, open, "Issue 16, A.4", "The unit-coupling total-vector enclosure 720/1819 <= E_vector < 9249/500 straddles E_P = (2 pi)^(2/3)/4. The protected question for superspins 9, 36 and 16 needs a trial below E_P or a certified lower bound above E_P + 3.81e-28. The high orbital complement is bounded, leaving the retained radius-17 Schur form to certify.").
source(gh16_vector_planck_decision, 'results/issues/16.md', 'a4-invariant-mass-and-the-charge-two-point-spectrum').
depends(gh16_vector_planck_decision, gh16_vector_planck).
depends(gh16_vector_planck_decision, gh16_vector_domain).
depends(gh16_vector_planck_decision, gh16_vector_trial).
depends(gh16_vector_planck_decision, gh16_vector_complement).
depends(gh16_vector_planck_decision, gh16_vector_scalar_comparison).
addresses(t14, gh16_vector_planck_decision).

claim(gh16_vector_embedded_128, theorem, proved, "Result 58, Positive eigenvalues in a scattering total type", "At charge two every confined total-vector energy has an embedded eigenstate in the fixed scattering total type 128. This supplies infinitely many distinct embedded energies with protected superspin.").
source(gh16_vector_embedded_128, 'results/58_two_d0_vector_spectrum.md', 'positive-eigenvalues-in-a-scattering-total-type').
depends(gh16_vector_embedded_128, gh16_vector_domain).
depends(gh16_vector_embedded_128, gh16_vector_planck).
attempted_by(gh16_vector_embedded_128, gpt_6_2_sol).
checked_by(gh16_vector_embedded_128, gpt_6_1_terra, by_hand).
checked_by(gh16_vector_embedded_128, gpt_6_1_terra, python("independent exact B4 Weyl character multiplicities")).
addresses(t14, gh16_vector_embedded_128).

claim(gh16_even_scattering_points, claim, open, "Issue 16, A.4", "Even one-row charge-two superspin admits scattering components with essential spectrum [0,infinity). Positive embedded states with this superspin need a separate infinite-domain test of the homogeneous open-channel amplitudes in the presence of the closed components.").
source(gh16_even_scattering_points, 'results/issues/16.md', 'a4-invariant-mass-and-the-charge-two-point-spectrum').
depends(gh16_even_scattering_points, gh16_vector_domain).
depends(gh16_even_scattering_points, gh16_vector_embedded_128).
addresses(t14, gh16_even_scattering_points).

claim(gh16_d0_landau, proposition, proved, "Issue 16, C.9", "The degree-p Landau zero space has a p-dimensional magnetic-translation representation with specified central phases. The putative CDS projective class (1,p) at theta=1/p has trace zero.").
source(gh16_d0_landau, 'results/issues/16.md', 'c9-magnetic-translations-and-the-rational-morita-image').
attempted_by(gh16_d0_landau, gpt_6_2_astra_max).
checked_by(gh16_d0_landau, codex_gpt_6, by_hand).
addresses(t14, gh16_d0_landau).
addresses(t18, gh16_d0_landau).
addresses(t16, gh16_d0_landau).

claim(gh19_s1, claim, numerical, "Issue 19, S1", "Thomson alpha times the line-shape hypercharge combination exceeds the charged-lepton scale by 0.1985 percent, 5.65 experimental standard deviations for the printed 2026 inputs.").
source(gh19_s1, 'results/issues/19.md', '').
attempted_by(gh19_s1, gpt_6_2_astra_max).
checked_by(gh19_s1, gpt_6_2_astra_max, python).
checked_by(gh19_s1, codex_gpt_6, python).
addresses(t13, gh19_s1).

claim(gh19_s2, claim, numerical, "Issue 19, S2", "The charged-lepton scale exceeds the mean nucleon mass divided by three by 0.2802 percent.").
source(gh19_s2, 'results/issues/19.md', '').
attempted_by(gh19_s2, gpt_6_2_astra_max).
checked_by(gh19_s2, gpt_6_2_astra_max, python).
checked_by(gh19_s2, codex_gpt_6, python).
addresses(t13, gh19_s2).

claim(gh19_s3, claim, numerical, "Issue 19, S3", "Thomson alpha times the Fermi VEV exceeds the tau mass by about 1.116 percent.").
source(gh19_s3, 'results/issues/19.md', '').
attempted_by(gh19_s3, gpt_6_2_astra_max).
checked_by(gh19_s3, gpt_6_2_astra_max, python).
checked_by(gh19_s3, codex_gpt_6, python).
addresses(t13, gh19_s3).

claim(gh11_flat_folds, proposition, proved, "Issue 11", "For 0<=n2<nc the left stationary curve has a unique maximum exactly when n2>69/50, yielding the fold and all roots. For integer n2=1,2 and positive integer n1 all interior stationary points are maxima.").
source(gh11_flat_folds, 'results/issues/11.md', '').
attempted_by(gh11_flat_folds, gpt_6_2_astra_max).
checked_by(gh11_flat_folds, terra_6_1, by_hand).
addresses(t13, gh11_flat_folds).
addresses(t5b, gh11_flat_folds).

claim(gh1_vortex_neck, theorem, proved, "Issue 1, gravitating two-vortex sphere", "At fixed critical Einstein-Bogomolny couplings the equatorial radius is sqrt(2) and the diameter P diverges. In the vortex root the kth singlet positive energy obeys P E_k -> k pi. In its square the two zero modes localize at opposite caps and all other modes stay separated from zero in vortex units.").
source(gh1_vortex_neck, 'results/55_gravitating_vortex_cylinder.md', '').
attempted_by(gh1_vortex_neck, gpt_6_2_astra_max).
checked_by(gh1_vortex_neck, gpt_6_1_terra, by_hand).
addresses(t14, gh1_vortex_neck).
addresses(t18, gh1_vortex_neck).

claim(gh1_vortex_inertia, proposition, proved, "Issue 1, charged scalar overlap and weak rotations", "The two normalized vortex Yukawa overlaps coincide and sqrt(area) times their value lies between exp(-1/4) and exp(1/4). In the specified collective weak action the geometric inertia I and charged partners give rho=1 with v_EW squared = 8 I + 2 h squared. Both contributions vanish at the round dissolved endpoint.").
source(gh1_vortex_inertia, 'results/55_gravitating_vortex_cylinder.md', '').
depends(gh1_vortex_inertia, gh1_vortex_neck).
attempted_by(gh1_vortex_inertia, gpt_6_2_astra_max).
checked_by(gh1_vortex_inertia, gpt_6_1_terra, by_hand).
addresses(t18, gh1_vortex_inertia).

claim(gh1_vortex_phase, theorem, proved, "Issue 1, custodial completion using the existing doublet", "On the gravitating vortex collective branch the metric of the doublet Hopf phase is fixed by custodial invariance and the computed neutral inertia I. The coefficient of the squared doublet current is 2 I/h^4 and extends smoothly to the dissolved sphere, giving rho=1 with v_EW squared=4 I+2 h squared. As diameter P grows, M_W squared/P tends to pi g_2 squared kappa_g squared/sqrt(2) in this reduced action.").
source(gh1_vortex_phase, 'results/55_gravitating_vortex_cylinder.md', '').
depends(gh1_vortex_phase, gh1_vortex_inertia).
attempted_by(gh1_vortex_phase, gpt_6_2_astra_max).
checked_by(gh1_vortex_phase, gpt_6_1_terra, by_hand).
addresses(t13, gh1_vortex_phase).
addresses(t18, gh1_vortex_phase).

claim(gh1_helix_geometry, proposition, proved, "Issue 1, helical photon and tilt potential", "The product-circle helical vortex has one diagonal geometric photon. Its pure Einstein action has a positive sin-squared tilt potential. On an unwarped Lorentzian Einstein four-space the null energy condition requires negative external curvature. On the isotropically matched branch minus the curvature parameter is at least the first neutral solenoidal mass squared divided by sixteen.").
source(gh1_helix_geometry, 'results/57_helical_weak_sphere.md', '').
depends(gh1_helix_geometry, gh1_vortex_neck).
attempted_by(gh1_helix_geometry, gpt_6_2_astra_max).
checked_by(gh1_helix_geometry, gpt_6_1_terra, by_hand).
addresses(t18, gh1_helix_geometry).

claim(gh1_helix_scalar, theorem, proved, "Issue 1, helical scalar spectrum with matched radii", "At isotropic projected weak matching B/P tends to 2/3 and L/(kP) to sqrt(5/54). In diameter units every scalar eigenvalue tends to that of an explicit operator on the projective plane times a circle and a Neumann interval. The null energy condition requires liminf of minus the external curvature parameter at least 1/10 in vortex units. At fixed circle radius the entire helical three-factor instead has bounded physical diameter.").
source(gh1_helix_scalar, 'results/57_helical_weak_sphere.md', '').
depends(gh1_helix_scalar, gh1_helix_geometry).
attempted_by(gh1_helix_scalar, gpt_6_2_astra_max).
checked_by(gh1_helix_scalar, gpt_6_1_terra, by_hand).
addresses(t13, gh1_helix_scalar).
addresses(t14, gh1_helix_scalar).
addresses(t18, gh1_helix_scalar).

claim(gh1_helix_vector, theorem, proved, "Issue 1, vector-mode mixing near the round sphere", "The full colour-singlet solenoidal Einstein vector operator has an analytic near-round branch with the benchmark custodial mass ratio and e squared/g3 squared = 3/8 when the transverse trial kinetic equals colour. Its limiting cos-squared tilt is the positive root of 14715x squared + 67743x - 22396. Equality of all three trial weak norms requires x=1/3 and gives a distinct mass ratio.").
source(gh1_helix_vector, 'results/57_helical_weak_sphere.md', '').
depends(gh1_helix_vector, gh1_helix_geometry).
attempted_by(gh1_helix_vector, gpt_6_2_sol).
checked_by(gh1_helix_vector, gpt_6_2_astra_max, by_hand).
checked_by(gh1_helix_vector, gpt_6_1_terra, by_hand).
addresses(t4, gh1_helix_vector).
addresses(t13, gh1_helix_vector).
addresses(t18, gh1_helix_vector).

claim(gh1_hopf_winding, proposition, proved, "Issue 1, circle duality between the projective product and the Berger endpoint", "Unit H flux on the projective product circle dualizes to the Hopf fibration. The full Hodge-Dirac operator is unitarily realized, up to sign, on the sum of winding sectors at reciprocal circumference. Transport of the Clifford ideal with its parallel coefficients recovers the twisted round endpoint. The bare projective lepton and colour harmonic states acquire nonzero Hopf spin energies.").
source(gh1_hopf_winding, 'results/issues/01.md', '').
depends(gh1_hopf_winding, gh1_berger_charge_kernel).
attempted_by(gh1_hopf_winding, gpt_6_2_sol).
checked_by(gh1_hopf_winding, gpt_6_2_astra_max, by_hand).
addresses(t18, gh1_hopf_winding).

claim(gh1_capped_monopole, theorem, proved, "Issue 1, A smooth sphere limit with the interval spinor domain", "On a capped shrinking neck the smooth half-flux holonomy gives a norm-resolvent Dirac interval with equal or mixed chiral walls according to the total monopole degree. Pairing the two unit signs gives KO-six and the full vectorlike five-sphere spectrum in the subsequent collapse. At degree two one rotational doublet member is extended and the other localizes at a cap.").
source(gh1_capped_monopole, 'results/issues/01.md', '').
attempted_by(gh1_capped_monopole, gpt_6_2_astra_max).
checked_by(gh1_capped_monopole, gpt_6_1_terra, by_hand).
addresses(t0, gh1_capped_monopole).
addresses(t14, gh1_capped_monopole).

claim(gh1_projective_generation, proposition, proved, "Issue 1 section 8", "On the spin-c CP2 times sphere times interval product, the quark and lepton line twists and chiral walls give the full generation from the two rotation groups. Specified opposite actions and conjugate doubling realize the KO-six signs, first order and the Standard Model hypercharges. With Einstein isometry terms and a fixed bulk hypercharge coefficient, matching fixes b squared = 16 r squared / 3 and r squared = 9 kappa_11 squared / (5 g_Y,11 squared), leaving the interval length free.").
source(gh1_projective_generation, 'results/issues/01.md', '').
depends(gh1_projective_generation, gh1_monopole_higgs_phases).
attempted_by(gh1_projective_generation, gpt_6_2_astra_max).
checked_by(gh1_projective_generation, terra_6_1, by_hand).
checked_by(gh1_projective_generation, codex_gpt_6, by_hand).
addresses(t18, gh1_projective_generation).
addresses(t0, gh1_projective_generation).
addresses(t14, gh1_projective_generation).

claim(gh1_monopole_higgs_phases, proposition, proved, "Issue 1 section 8", "In the specified monopole scalar and chiral fermion action, a curvature coupling selects a critical sphere radius. Below it a pair of equal orthogonal holomorphic sections leaves the photon and supplies all four Dirac Yukawa masses near onset.").
source(gh1_monopole_higgs_phases, 'results/issues/01.md', '').
attempted_by(gh1_monopole_higgs_phases, gpt_6_2_astra_max).
checked_by(gh1_monopole_higgs_phases, terra_6_1, by_hand).
addresses(t18, gh1_monopole_higgs_phases).
addresses(t10, gh1_monopole_higgs_phases).
addresses(t14, gh1_monopole_higgs_phases).

claim(gh1_smooth_sphere_bundles, proposition, proved, "Issue 1 section 7", "A smooth colour-equivariant S2 submersion over the transitive Berger S5 is the product or SU3/U1. A commuting weak SU2 on the manifold acts trivially in the second case and, if nontrivial, transitively together with colour in the first.").
source(gh1_smooth_sphere_bundles, 'results/issues/01.md', '').
attempted_by(gh1_smooth_sphere_bundles, gpt_6_2_astra_max).
checked_by(gh1_smooth_sphere_bundles, codex_gpt_6, by_hand).
checked_by(gh1_smooth_sphere_bundles, claude_fable_5_2, by_hand).
addresses(t18, gh1_smooth_sphere_bundles).

claim(gh1_regular_stratum, proposition, proved, "Issue 1 section 7", "An infinitesimally effective compact group with the Standard Model Lie algebra acts transitively on a connected smooth seven-dimensional regular stratum dense in a Hausdorff space, so the stratum exhausts the space. A wedge of two seven-spheres realizes a faithful action with one fixed junction and two regular components.").
source(gh1_regular_stratum, 'results/issues/01.md', '').
attempted_by(gh1_regular_stratum, gpt_6_2_astra_max).
checked_by(gh1_regular_stratum, codex_gpt_6, by_hand).
checked_by(gh1_regular_stratum, claude_fable_5_2, by_hand).
addresses(t18, gh1_regular_stratum).

claim(gh1_wall_scaling, theorem, proved, "Issue 1 moving cylinder", "For the charged five-sphere the continuous family of spherical spectral and local cylinder domains has a fixed KO-six kernel. When the angular offset divided by length tends to a, the surviving signed operator is D_tan+a sign(D_tan); a diverging ratio removes all nonzero tangential levels.").
source(gh1_wall_scaling, 'results/54_chiral_family_over_the_five_sphere.md', '').
depends(gh1_wall_scaling, gh1_berger_cylinder).
attempted_by(gh1_wall_scaling, gpt_6_2_astra_max).
checked_by(gh1_wall_scaling, codex_gpt_6, by_hand).
addresses(t0, gh1_wall_scaling).
addresses(t18, gh1_wall_scaling).

claim(gh1_winding_family, proposition, proved, "Issue 1 reflected product", "On S5 times two intervals the specified winding action sets c=min(1,ell d/Astar). A reflected chiral generation, a coefficient Higgs and a flat flux background realize the 11/10/9 spectral family. Relative gauge matching fixes two ratios and an independent absolute normalization fixes the area.").
source(gh1_winding_family, 'results/54_chiral_family_over_the_five_sphere.md', '').
depends(gh1_winding_family, gh1_wall_scaling).
depends(gh1_winding_family, gh1_berger_flux_radius).
attempted_by(gh1_winding_family, gpt_6_2_astra_max).
checked_by(gh1_winding_family, terra_6_1, by_hand).
checked_by(gh1_winding_family, codex_gpt_6, by_hand).
addresses(t18, gh1_winding_family).
addresses(t14, gh1_winding_family).
addresses(t13, gh1_winding_family).

%% Claude Opus 5.5 reviewed the frozen endpoint manuscripts at
%% 90e31b33a4d2066b335468dbc0c7d61563d78326, with supplements through S262.
%% The authors' response is 4bcdb2e3d6c205381cffba0417143301520fbf72.
%% The report records coverage of that snapshot. Revised claims retain their own review status.
referee_report('paper/two_endpoint_limits.tex', 'historical/reviews/2026-11-19_opus_check_endpoint_papers_90e31b3.md').
referee_report('paper/seven_m_theory.tex', 'historical/reviews/2026-11-19_opus_check_endpoint_papers_90e31b3.md').

claim(two_endpoint_current, theorem, proved, "Two-endpoint paper, charged current", "On the two-interval winding vacuum a specified product Yang-Mills action gives an exact massive scalar-Laplacian tower for each transverse weak vector. Parallel harmonic currents see only its constant profile. Smooth winding-dependent kinetic coefficients give vanishing weak exchange and a finite matching charge at the five-dimensional end.").
source(two_endpoint_current, 'paper/two_endpoint_limits.tex', '').
depends(two_endpoint_current, gh1_winding_family).
attempted_by(two_endpoint_current, gpt_6_2_astra_max).
checked_by(two_endpoint_current, gpt_6_2_astra_max, by_hand).
addresses(t13, two_endpoint_current).
addresses(t18, two_endpoint_current).

claim(two_endpoint_upper_matter, proposition, proved, "Two-endpoint paper, upper matter", "Two vectorlike completions with the same classical bosonic data have identical retained spectra near five and in a chosen finite KO-six window, and different massless matter at seven.").
source(two_endpoint_upper_matter, 'paper/two_endpoint_limits.tex', '').
depends(two_endpoint_upper_matter, gh1_winding_family).
attempted_by(two_endpoint_upper_matter, gpt_6_2_astra_max).
checked_by(two_endpoint_upper_matter, gpt_6_2_astra_max, by_hand).
addresses(t18, two_endpoint_upper_matter).

claim(two_endpoint_flavour_wall, theorem, proved, "Two-endpoint paper, three light families", "Among four complete flavour channels, opposite outer reflections on one complex flavour line give it half-integral frequencies and gap pi/(2d). The three orthogonal channels are periodic and give three complete families below the remaining gaps, for block-preserving Yukawa operators.").
source(two_endpoint_flavour_wall, 'paper/two_endpoint_limits.tex', '').
depends(two_endpoint_flavour_wall, gh1_winding_family).
attempted_by(two_endpoint_flavour_wall, gpt_6_2_astra_max).
checked_by(two_endpoint_flavour_wall, gpt_6_2_astra_max, by_hand).
addresses(t14, two_endpoint_flavour_wall).

claim(two_endpoint_flavour_current, proposition, proved, "Two-endpoint paper, flavour and current", "General Dirac Yukawa maps realize the three-family commutator invariant on the isolated window. The exact parallel-current exchange is the zero-mode propagator times the product of the two appropriate flavour mixing entries.").
source(two_endpoint_flavour_current, 'paper/two_endpoint_limits.tex', '').
depends(two_endpoint_flavour_current, two_endpoint_flavour_wall).
depends(two_endpoint_flavour_current, two_endpoint_current).
attempted_by(two_endpoint_flavour_current, gpt_6_2_astra_max).
checked_by(two_endpoint_flavour_current, gpt_6_2_astra_max, by_hand).
addresses(t13, two_endpoint_flavour_current).

claim(two_endpoint_face_current, proposition, proved, "Two-endpoint paper, sources on a face or a corner", "For a Neumann product gauge action a source on one face has response (g2 squared/2)(ell/q)coth(q ell) for q squared equal to p squared plus the weak mass squared. It distinguishes the aspect along a fixed-area matching curve. At a corner the absolute exchange diverges logarithmically and a momentum subtraction is finite.").
source(two_endpoint_face_current, 'paper/two_endpoint_limits.tex', '').
depends(two_endpoint_face_current, two_endpoint_current).
attempted_by(two_endpoint_face_current, gpt_6_2_astra_max).
checked_by(two_endpoint_face_current, gpt_6_2_astra_max, by_hand).
addresses(t13, two_endpoint_face_current).

claim(two_endpoint_scalar_count, proposition, conditional, "Two-endpoint paper, scalar representations and wall fields", "For complete Dirac generations, the symmetric diquark counts and the full neutral traceless meson count together force three families and two up and three down participating flavours. Equal orthogonal interval parities propagate the diquark Wilson scalars, while the meson generators have Dirichlet axial profiles.").
source(two_endpoint_scalar_count, 'paper/two_endpoint_limits.tex', '').
depends(two_endpoint_scalar_count, l21_exotic).
depends(two_endpoint_scalar_count, d11_so30_zero).
attempted_by(two_endpoint_scalar_count, gpt_6_2_astra_max).
checked_by(two_endpoint_scalar_count, gpt_6_2_astra_max, by_hand).
addresses(t14, two_endpoint_scalar_count).

claim(two_endpoint_fixed_energy_count, proposition, proved, "Two-endpoint paper, counting at fixed probe energy", "At fixed sphere radius R and E > 0, two Neumann intervals of length t give t^2/(4 pi) times the sum of d_j (E^2 - Lambda_j) over sphere eigenvalues below E^2, with error O(1+tE) per real scalar at fixed R,E. This includes only the spherical constant below its first positive threshold.").
source(two_endpoint_fixed_energy_count, 'paper/two_endpoint_limits.tex', '').
depends(two_endpoint_fixed_energy_count, two_endpoint_current).
attempted_by(two_endpoint_fixed_energy_count, gpt_6_2_astra_max).
checked_by(two_endpoint_fixed_energy_count, gpt_6_2_astra_max, by_hand).
addresses(t14, two_endpoint_fixed_energy_count).

claim(two_endpoint_compressed_flip, proposition, proved, "Two-endpoint paper, colour-flavour exchange on the retained space", "For the four-slot unitary flip identifying the lepton line with the exceptional flavour line, its compression to the twelve retained colour-flavour coefficients squares to the rank-nine colour times light-flavour projector. Its kernel consists of the three lepton times light-flavour directions.").
source(two_endpoint_compressed_flip, 'paper/two_endpoint_limits.tex', '').
depends(two_endpoint_compressed_flip, two_endpoint_flavour_wall).
depends(two_endpoint_compressed_flip, d11_flip).
attempted_by(two_endpoint_compressed_flip, gpt_6_2_astra_max).
checked_by(two_endpoint_compressed_flip, gpt_6_2_astra_max, by_hand).
addresses(t14, two_endpoint_compressed_flip).

claim(two_endpoint_trace_matching, corollary, conditional, "Two-endpoint paper, finite trace and product weak mass", "Matching the tree product weak pole to the leading finite commutator mass with its own positive trace kinetic norm requires H s^2/K <= 24 ||D_F||^2. The specified winding action has divergent H s^2/K while its retained harmonic Yukawa block stays bounded.").
source(two_endpoint_trace_matching, 'paper/two_endpoint_limits.tex', '').
depends(two_endpoint_trace_matching, two_endpoint_current).
depends(two_endpoint_trace_matching, l14_nogo_collapse).
attempted_by(two_endpoint_trace_matching, gpt_6_2_astra_max).
checked_by(two_endpoint_trace_matching, gpt_6_2_astra_max, by_hand).
addresses(t13, two_endpoint_trace_matching).

claim(m111_membrane_charge, proposition, proved, "M-theory endpoint paper, Betti vector and wrapped charge", "With an elementary electric M2 charge and leading Freund-Rubin flux normalization, the inverse squared Betti coupling on M111 is sqrt(N)/(36 sqrt(3) pi). A smooth representative of the primitive two-cycle exists and the classical mass of a unit-charge wrapped membrane times the AdS radius is at least 8 sqrt(N/3).").
source(m111_membrane_charge, 'paper/seven_m_theory.tex', '').
depends(m111_membrane_charge, d11_quotient).
attempted_by(m111_membrane_charge, gpt_6_2_astra_max).
checked_by(m111_membrane_charge, gpt_6_2_astra_max, by_hand).
checked_by(m111_membrane_charge, claude_fable_5_2, partial("Joint report of 20 Nov: volume and mass normalization of the wrapped M2 charge in the elementary-electric convention")).
addresses(t18, m111_membrane_charge).

claim(m111_circle_descent, proposition, proved, "M-theory endpoint paper, circle reduction", "For the order-j quotient of the regular Reeb fibre, the seven-manifold is spin precisely at odd j. Its unique spin structure then has a double-cover fibre lift, so neutral ordinary spinors do not descend. The bosonic reduction admits a small circle with a weakly curved base.").
source(m111_circle_descent, 'paper/seven_m_theory.tex', '').
depends(m111_circle_descent, d11_quotient).
attempted_by(m111_circle_descent, gpt_6_2_astra_max).
checked_by(m111_circle_descent, gpt_6_2_astra_max, by_hand).
addresses(t18, m111_circle_descent).

claim(m111_membrane_saturation, proposition, proved, "M-theory endpoint paper, smooth membrane representatives", "A nonzero-charge smooth immersed closed surface cannot saturate the stated comass bound on M111. Equality would give an unbranched covering of the two-sphere of absolute degree 3 times the absolute integral charge. The infimum over singular limits is open.").
source(m111_membrane_saturation, 'paper/seven_m_theory.tex', '').
depends(m111_membrane_saturation, m111_membrane_charge).
attempted_by(m111_membrane_saturation, gpt_6_2_astra_max).
checked_by(m111_membrane_saturation, gpt_6_2_astra_max, by_hand).
checked_by(m111_membrane_saturation, claude_fable_5_2, partial("Joint report of 20 Nov: degree-one covering obstruction to comass saturation for a smooth immersed charged surface")).
addresses(t18, m111_membrane_saturation).

claim(m111_horizontal_modes, proposition, proved, "M-theory endpoint paper, Reeb sectors and a separate doublet", "For odd j the Reeb sectors give horizontal Dolbeault coefficients O(3n,2n), n=jr-1/2. Their kernels have integer weak isospin. The O(-4,1) quark-doublet twist pulls back to class -11u on the primitive total space.").
source(m111_horizontal_modes, 'paper/seven_m_theory.tex', '').
depends(m111_horizontal_modes, m111_circle_descent).
depends(m111_horizontal_modes, l53_flag_multiplets).
attempted_by(m111_horizontal_modes, gpt_6_2_astra_max).
checked_by(m111_horizontal_modes, gpt_6_2_astra_max, by_hand).
addresses(t18, m111_horizontal_modes).

claim(fr_product_relative_radius, proposition, proved, "M-theory endpoint paper, electric product", "The unwarped electric Freund-Rubin product with round S5 and S2 has radii in ratio two and geometric weak rotations. The volume-preserving relative-radius perturbation has mass squared times the AdS radius squared equal to -3, below the AdS4 stability bound.").
source(fr_product_relative_radius, 'paper/seven_m_theory.tex', '').
attempted_by(fr_product_relative_radius, gpt_6_2_astra_max).
checked_by(fr_product_relative_radius, gpt_6_2_astra_max, by_hand).
checked_by(fr_product_relative_radius, claude_fable_5_2, partial("Joint report of 20 Nov: relative-radius Lichnerowicz mode and BF comparison for the specified Freund--Rubin product")).
addresses(t18, fr_product_relative_radius).

claim(heterotic_wall_three_index, proposition, conditional, "M-theory endpoint paper, heterotic wall spectrum", "The explicit free order-three quotient of an anticanonical divisor in two cubic surfaces has Hodge numbers (6,9) and Euler number -6. The supersymmetric standard embedding with trivial Wilson line gives nine 27s and six conjugates before further breaking, three net families. Its Euler number excludes a smooth locally free circle action on this same threefold.").
source(heterotic_wall_three_index, 'paper/seven_m_theory.tex', '').
attempted_by(heterotic_wall_three_index, gpt_6_2_astra_max).
checked_by(heterotic_wall_three_index, gpt_6_2_astra_max, by_hand).
checked_by(heterotic_wall_three_index, claude_fable_5_2, partial("Joint report of 20 Nov: three net families and the Euler-characteristic obstruction to a locally free circle action on this quotient")).
addresses(t18, heterotic_wall_three_index).

claim(heterotic_wall_pair_threshold, corollary, conditional, "M-theory endpoint paper, finite threshold for vectorlike pairs", "In the isolated nine 27 and six conjugate multiplicity spaces with canonical kinetics and only an E6-invariant supersymmetric quadratic pairing, a rank-r mass matrix leaves counts (9-r+k,6-r+k) at cutoff E, where k counts positive singular values at or below E. Exactly three 27s alone requires all six singular values above E. The mass matrix is an input.").
source(heterotic_wall_pair_threshold, 'paper/seven_m_theory.tex', '').
depends(heterotic_wall_pair_threshold, heterotic_wall_three_index).
depends(heterotic_wall_pair_threshold, l12_towerless).
attempted_by(heterotic_wall_pair_threshold, gpt_6_2_astra_max).
checked_by(heterotic_wall_pair_threshold, gpt_6_2_astra_max, by_hand).
addresses(t14, heterotic_wall_pair_threshold).
addresses(t18, heterotic_wall_pair_threshold).

claim(shared_circle_window, theorem, proved, "Theorem 59.1 and its vector threshold", "The helical fibre-constant scalar spectrum on CP2 times the circle is exact below the fibre Poincare gap, with charge n/k. Explicit adjoint vector modes bound the first omitted coloured scale by min(1/L,sqrt(12)/B).").
source(shared_circle_window, 'results/59_shared_circle_and_two_scales.md', '').
depends(shared_circle_window, gh1_helix_geometry).
attempted_by(shared_circle_window, gpt_6_2_astra_max).
checked_by(shared_circle_window, gpt_6_2_astra_max, by_hand).
addresses(t13, shared_circle_window).
addresses(t14, shared_circle_window).
addresses(t18, shared_circle_window).

claim(shared_circle_density, theorem, proved, "Proposition 59.2 and Theorem 59.3", "At fixed meridian length and fixed positive photon and colour kinetic norms a unique pair of radii grows as P^(1/7). The scalar count per five-volume tends to the flat five-dimensional phase-space sum over Neumann interval thresholds.").
source(shared_circle_density, 'results/59_shared_circle_and_two_scales.md', '').
depends(shared_circle_density, shared_circle_window).
depends(shared_circle_density, gh1_helix_scalar).
attempted_by(shared_circle_density, gpt_6_2_astra_max).
checked_by(shared_circle_density, gpt_6_2_astra_max, by_hand).
addresses(t13, shared_circle_density).
addresses(t14, shared_circle_density).
addresses(t18, shared_circle_density).

claim(shared_circle_curvature, proposition, proved, "Proposition 59.4", "An equatorial null-contraction bound on an unwarped Einstein product with null-energy matter requires minus three times the external curvature times L squared at least (k sin beta)^2 (r_b^4/4+4/r_b^4-2)/2. It constrains the curvature relative to a coloured KK threshold.").
source(shared_circle_curvature, 'results/59_shared_circle_and_two_scales.md', '').
depends(shared_circle_curvature, shared_circle_window).
depends(shared_circle_curvature, gh1_helix_geometry).
attempted_by(shared_circle_curvature, gpt_6_2_astra_max).
checked_by(shared_circle_curvature, gpt_6_2_astra_max, by_hand).
addresses(t13, shared_circle_curvature).
addresses(t18, shared_circle_curvature).

claim(helical_probe_charge, proposition, proved, "Proposition 60.1", "Equivariant spin-c probes at the round product have a sixteen-state particle kernel with Standard Model charge labels and a conjugate kernel. The charge multiplicities survive on nearby helical spectral clusters. The unconstrained odd bulk is vectorlike.").
source(helical_probe_charge, 'results/60_helical_fermion_currents.md', '').
depends(helical_probe_charge, shared_circle_window).
depends(helical_probe_charge, l53_flag_multiplets).
attempted_by(helical_probe_charge, gpt_6_2_astra_max).
checked_by(helical_probe_charge, gpt_6_2_astra_max, by_hand).
addresses(t2, helical_probe_charge).
addresses(t18, helical_probe_charge).

claim(helical_probe_current, theorem, proved, "Theorem 60.2 and Corollary 60.3", "For the specified minimal lifted fermion current and Einstein vector action the complete round colour-singlet exchange sees a weak rotation and the degree-one harmonic of the circle vector. At canonical matching the relative massive residues are 1/5 for leptons, 1/45 for quarks and -1/15 for the mixed current. The near-round charged pole retains nonzero residue.").
source(helical_probe_current, 'results/60_helical_fermion_currents.md', '').
depends(helical_probe_current, helical_probe_charge).
depends(helical_probe_current, gh1_helix_vector).
attempted_by(helical_probe_current, gpt_6_2_astra_max).
checked_by(helical_probe_current, gpt_6_2_astra_max, by_hand).
addresses(t4, helical_probe_current).
addresses(t13, helical_probe_current).
addresses(t18, helical_probe_current).

claim(magnetic_single_pole_test, proposition, proved, "Proposition 60.4", "For a positive equal-source spectral sum, multiplying by the lightest squared denominator gives an increasing function. Equality at two distinct positive squared momenta is equivalent to single-mass support. The magnetic weak-current reference also fixes the required normalization.").
source(magnetic_single_pole_test, 'results/60_helical_fermion_currents.md', '').
depends(magnetic_single_pole_test, helical_probe_current).
attempted_by(magnetic_single_pole_test, gpt_6_2_astra_max).
checked_by(magnetic_single_pole_test, gpt_6_2_astra_max, by_hand).
addresses(t4, magnetic_single_pole_test).
addresses(t13, magnetic_single_pole_test).

claim(shared_winding_hadron, proposition, conditional, "Proposition 61.1", "On the smooth winding two-interval control, continuous one-loop colour matching with six bounded quarks and a fixed matching window gives a finite nonzero limiting three-flavour scale. With continuous massive hadronic matching the product GF H_N squared vanishes as the square root of area.").
source(shared_winding_hadron, 'results/61_colour_thresholds_and_weak_current.md', '').
depends(shared_winding_hadron, two_endpoint_current).
depends(shared_winding_hadron, two_endpoint_flavour_wall).
attempted_by(shared_winding_hadron, gpt_6_2_astra_max).
checked_by(shared_winding_hadron, gpt_6_2_astra_max, by_hand).
addresses(t13, shared_winding_hadron).
addresses(t18, shared_winding_hadron).

claim(shared_qcd_current, proposition, conditional, "Proposition 61.2", "A chiral condensate of massless QCD doublets adds a rank-one term to the charged KK inverse propagator for a common quark profile. At the two-pole round geometry different quark and lepton profiles give a calculable additional contact, conditional on the stated chiral completion and effective action.").
source(shared_qcd_current, 'results/61_colour_thresholds_and_weak_current.md', '').
depends(shared_qcd_current, helical_probe_current).
depends(shared_qcd_current, l17_condensate).
attempted_by(shared_qcd_current, gpt_6_2_astra_max).
checked_by(shared_qcd_current, gpt_6_2_astra_max, by_hand).
addresses(t13, shared_qcd_current).
addresses(t18, shared_qcd_current).

claim(shared_polar_solution, theorem, proved, "Theorem 62.1", "A fixed Einstein-Higgs action with two dilatons and quantized magnetic flux supports Minkowski times CP2, a circle, and a vortex sphere of arbitrary scale and shape on the polar product. The polar sector retains two independent geometric neutral generators.").
source(shared_polar_solution, 'results/62_supported_vortex_and_charged_caps.md', '').
depends(shared_polar_solution, gh1_vortex_neck).
attempted_by(shared_polar_solution, gpt_6_2_astra_max).
checked_by(shared_polar_solution, gpt_6_2_astra_max, by_hand).
addresses(t13, shared_polar_solution).
addresses(t18, shared_polar_solution).

claim(shared_cap_current, proposition, proved, "Proposition 62.2", "For the specified equal-source Einstein probe, the transition between the two polar cap spinors has static exchange bounded by a power of the meridian length times exp(-P/sqrt(2)) on the absolute-matching finite-meridian path. Small positive tilts can preserve vanishing of this contact.").
source(shared_cap_current, 'results/62_supported_vortex_and_charged_caps.md', '').
depends(shared_cap_current, helical_probe_charge).
depends(shared_cap_current, shared_circle_density).
depends(shared_cap_current, gh1_vortex_neck).
attempted_by(shared_cap_current, gpt_6_2_astra_max).
checked_by(shared_cap_current, gpt_6_2_astra_max, by_hand).
addresses(t13, shared_cap_current).
addresses(t18, shared_cap_current).

claim(vortex_root_vacua, theorem, proved, "Theorem 63.1", "Two circle-charged holomorphic roots of the gravitating vortex solve a fixed positive-square fibration action on the supported product. Their equal-norm vacuum selects the single diagonal geometric photon in the weak sector, with restoration at dissolution.").
source(vortex_root_vacua, 'results/63_vortex_roots_and_diagonal_photon.md', '').
depends(vortex_root_vacua, shared_polar_solution).
depends(vortex_root_vacua, shared_circle_density).
attempted_by(vortex_root_vacua, gpt_6_2_astra_max).
checked_by(vortex_root_vacua, gpt_6_2_astra_max, by_hand).
addresses(t13, vortex_root_vacua).
addresses(t18, vortex_root_vacua).

claim(vortex_root_domain, proposition, proved, "Proposition 63.2", "Circle-equivariant ten-dimensional Weyl fields with prescribed monopole twists give a real finite particle/conjugate window on the supported fibration. Independent mirror Yukawas allow a cut between ordinary and mirror thresholds at a compact broken member and in comoving units at five.").
source(vortex_root_domain, 'results/63_vortex_roots_and_diagonal_photon.md', '').
depends(vortex_root_domain, vortex_root_vacua).
depends(vortex_root_domain, helical_probe_charge).
attempted_by(vortex_root_domain, gpt_6_2_astra_max).
checked_by(vortex_root_domain, gpt_6_2_astra_max, by_hand).
addresses(t2, vortex_root_domain).
addresses(t14, vortex_root_domain).
addresses(t18, vortex_root_domain).

claim(vortex_root_upper_current, proposition, proved, "Proposition 63.3", "At the supported round member the charged source sees the massless rotation and poles at 2/r^2 and 4/r^2. The flux-compensator triplet has relative residue 1/9. The circle pole distinguishes leptonic and quark sources.").
source(vortex_root_upper_current, 'results/63_vortex_roots_and_diagonal_photon.md', '').
depends(vortex_root_upper_current, vortex_root_vacua).
depends(vortex_root_upper_current, helical_probe_current).
attempted_by(vortex_root_upper_current, gpt_6_2_astra_max).
checked_by(vortex_root_upper_current, gpt_6_2_astra_max, by_hand).
addresses(t4, vortex_root_upper_current).
addresses(t13, vortex_root_upper_current).

claim(vortex_root_lower_current, proposition, proved, "Proposition 63.4", "At fixed nonround shape on the compensated area collapse, the first coupled charged mass is of order 1/a and the full static exchange scales as a positive shape constant divided by the internal volume. Comoving hadrons can have finite weak strength.").
source(vortex_root_lower_current, 'results/63_vortex_roots_and_diagonal_photon.md', '').
depends(vortex_root_lower_current, vortex_root_domain).
depends(vortex_root_lower_current, vortex_root_upper_current).
attempted_by(vortex_root_lower_current, gpt_6_2_astra_max).
checked_by(vortex_root_lower_current, gpt_6_2_astra_max, by_hand).
addresses(t13, vortex_root_lower_current).
addresses(t18, vortex_root_lower_current).

claim(vortex_root_magnetic_link, proposition, proved, "Proposition 63.5", "The round angular flux and metric triplets admit the quadratic presentation of two equal gauge sites with stiffness 2 I_E/r^2 and probe weights 1/3,2/3. An additional circle pole and non-Abelian current algebra are independent tests of a proposed magnetic dual.").
source(vortex_root_magnetic_link, 'results/63_vortex_roots_and_diagonal_photon.md', '').
depends(vortex_root_magnetic_link, vortex_root_upper_current).
depends(vortex_root_magnetic_link, magnetic_single_pole_test).
attempted_by(vortex_root_magnetic_link, gpt_6_2_astra_max).
checked_by(vortex_root_magnetic_link, gpt_6_2_astra_max, by_hand).
addresses(t4, vortex_root_magnetic_link).
addresses(t18, vortex_root_magnetic_link).

claim(projective_flux_octet, proposition, proved, "Proposition 64.1", "The fixed-modulus Einstein and projective top-form sector has a negative colour-adjoint second variation on the flat supported product. This identifies a saddle under the stated classical action.").
source(projective_flux_octet, 'results/64_projective_flux_and_colour_stability.md', '').
depends(projective_flux_octet, shared_polar_solution).
depends(projective_flux_octet, vortex_root_vacua).
attempted_by(projective_flux_octet, gpt_6_2_astra_max).
checked_by(projective_flux_octet, gpt_6_2_astra_max, by_hand).
checked_by(projective_flux_octet, claude_fable_5_2, partial("Joint report of 20 Nov: negative determinant of the fixed-modulus colour-adjoint metric and top-form slice")).
addresses(t13, projective_flux_octet).
addresses(t18, projective_flux_octet).

claim(projective_kahler_octet, proposition, proved, "Proposition 64.2", "A magnetic Kahler two-form preserves the supported product and its full colour gauge norm. Its two fixed-modulus shape and flux octet squared masses are positive.").
source(projective_kahler_octet, 'results/64_projective_flux_and_colour_stability.md', '').
depends(projective_kahler_octet, projective_flux_octet).
attempted_by(projective_kahler_octet, gpt_6_2_astra_max).
checked_by(projective_kahler_octet, gpt_6_2_astra_max, by_hand).
addresses(t13, projective_kahler_octet).
addresses(t18, projective_kahler_octet).

claim(projective_kahler_moduli, proposition, proved, "Proposition 64.3", "At round dissolution the projective scalar and Kahler-flux octet block including the two dilatons and weak radius has squared masses at least 12/B^2.").
source(projective_kahler_moduli, 'results/64_projective_flux_and_colour_stability.md', '').
depends(projective_kahler_moduli, projective_kahler_octet).
attempted_by(projective_kahler_moduli, gpt_6_2_astra_max).
checked_by(projective_kahler_moduli, gpt_6_2_astra_max, by_hand).
addresses(t13, projective_kahler_moduli).
addresses(t18, projective_kahler_moduli).

claim(colour_wilson_trial, proposition, proved, "Proposition 65.1", "A projective colour holonomy gives a physical adjoint scalar trial of squared mass at most of order 1/(BL)^2 on the fixed-shape compensated collapse, and an exact flat direction at zero roots.").
source(colour_wilson_trial, 'results/65_colour_wilson_scalar.md', '').
depends(colour_wilson_trial, projective_kahler_octet).
depends(colour_wilson_trial, vortex_root_domain).
attempted_by(colour_wilson_trial, gpt_6_2_astra_max).
checked_by(colour_wilson_trial, gpt_6_2_astra_max, by_hand).
addresses(t13, colour_wilson_trial).
addresses(t18, colour_wilson_trial).

claim(colour_wilson_lift, proposition, proved, "Proposition 65.2", "A positive internal circle-curvature term preserves the supported vacua and the tree colour and photon norms. At dissolution it gives both angular colour-vector polarizations a positive mass of order 1/B.").
source(colour_wilson_lift, 'results/65_colour_wilson_scalar.md', '').
depends(colour_wilson_lift, colour_wilson_trial).
attempted_by(colour_wilson_lift, gpt_6_2_astra_max).
checked_by(colour_wilson_lift, gpt_6_2_astra_max, by_hand).
addresses(t13, colour_wilson_lift).
addresses(t18, colour_wilson_lift).

claim(shared_neutral_poles, proposition, proved, "Proposition 66.1", "At canonical matching near dissolution the two sourced light neutral mass squares of the equal-root fibration are 8/5 and 2/3 of the charged mass square at leading order. The vortex pole has a right-handed-neutrino vertex.").
source(shared_neutral_poles, 'results/66_neutral_currents_and_hadronic_units.md', '').
depends(shared_neutral_poles, vortex_root_upper_current).
depends(shared_neutral_poles, vortex_root_domain).
attempted_by(shared_neutral_poles, gpt_6_2_astra_max).
checked_by(shared_neutral_poles, gpt_6_2_astra_max, by_hand).
addresses(t4, shared_neutral_poles).
addresses(t18, shared_neutral_poles).

claim(vortex_root_neck, proposition, proved, "Proposition 66.2", "On the symmetric long neck the squared projected Yukawa overlap grows as exp(P/(2 sqrt(2)))/P in order, while the fixed-shape lower-limit charged Green function is positive and exponentially suppressed.").
source(vortex_root_neck, 'results/66_neutral_currents_and_hadronic_units.md', '').
depends(vortex_root_neck, vortex_root_lower_current).
depends(vortex_root_neck, shared_cap_current).
attempted_by(vortex_root_neck, gpt_6_2_astra_max).
checked_by(vortex_root_neck, gpt_6_2_astra_max, by_hand).
addresses(t13, vortex_root_neck).
addresses(t14, vortex_root_neck).
addresses(t18, vortex_root_neck).

claim(vortex_root_exchange_range, proposition, proved, "Proposition 66.3", "In the unprojected reduced vector action at fixed compact broken geometry the positive root coefficient varies the sourced weak exchange down to zero. The full horizontal fibration has the distinct projected-current result in Proposition 73.2.").
source(vortex_root_exchange_range, 'results/66_neutral_currents_and_hadronic_units.md', '').
depends(vortex_root_exchange_range, vortex_root_lower_current).
depends(vortex_root_exchange_range, vortex_root_upper_current).
attempted_by(vortex_root_exchange_range, gpt_6_2_astra_max).
checked_by(vortex_root_exchange_range, gpt_6_2_astra_max, by_hand).
addresses(t13, vortex_root_exchange_range).
addresses(t18, vortex_root_exchange_range).

claim(vortex_yukawa_half_interval, theorem, proved, "Theorem 67.1", "For fixed nonzero holomorphic Yukawas on the unbounded six-dimensional neck with fixed physical meridian length, each central electric charge in the projective kernel has a mixed-boundary half-interval spectrum. The first mass tends to pi/d above the descending four-dimensional colour scale.").
source(vortex_yukawa_half_interval, 'results/67_fermion_masses_on_the_long_neck.md', '').
depends(vortex_yukawa_half_interval, vortex_root_domain).
depends(vortex_yukawa_half_interval, vortex_root_neck).
attempted_by(vortex_yukawa_half_interval, gpt_6_2_astra_max).
checked_by(vortex_yukawa_half_interval, gpt_6_2_astra_max, by_hand).
addresses(t2, vortex_yukawa_half_interval).
addresses(t14, vortex_yukawa_half_interval).
addresses(t18, vortex_yukawa_half_interval).

claim(vortex_five_quarks, proposition, proved, "Proposition 67.2", "At rank-one up and zero down Yukawas five Dirac quark fundamentals occur below the comoving colour cut on the unbounded neck. The fixed nonzero mirror masses remain above the cut.").
source(vortex_five_quarks, 'results/67_fermion_masses_on_the_long_neck.md', '').
depends(vortex_five_quarks, vortex_yukawa_half_interval).
depends(vortex_five_quarks, vortex_root_domain).
attempted_by(vortex_five_quarks, gpt_6_2_astra_max).
checked_by(vortex_five_quarks, gpt_6_2_astra_max, by_hand).
addresses(t12, vortex_five_quarks).
addresses(t14, vortex_five_quarks).
addresses(t18, vortex_five_quarks).

claim(vortex_one_quark_mass, proposition, proved, "Proposition 67.3", "One scale-dilaton Yukawa function gives four massless quarks and one tunable quark mass in units of the colour matching scale. The limiting value follows from the actual weighted eigenvalue with a cap-localized potential.").
source(vortex_one_quark_mass, 'results/67_fermion_masses_on_the_long_neck.md', '').
depends(vortex_one_quark_mass, vortex_five_quarks).
depends(vortex_one_quark_mass, vortex_root_neck).
attempted_by(vortex_one_quark_mass, gpt_6_2_astra_max).
checked_by(vortex_one_quark_mass, gpt_6_2_astra_max, by_hand).
addresses(t12, vortex_one_quark_mass).
addresses(t14, vortex_one_quark_mass).
addresses(t18, vortex_one_quark_mass).

claim(round_flux_product_gap, theorem, proved, "Theorem 68.1", "The covariant round two-flux product has a positive five-dimensional coloured bosonic gap off the eight gluons, including mixed weak and projective harmonics.").
source(round_flux_product_gap, 'results/68_round_coloured_boson_threshold.md', '').
depends(round_flux_product_gap, projective_kahler_moduli).
depends(round_flux_product_gap, projective_kahler_octet).
attempted_by(round_flux_product_gap, gpt_6_2_astra_max).
checked_by(round_flux_product_gap, gpt_6_2_astra_max, by_hand).
addresses(t13, round_flux_product_gap).
addresses(t18, round_flux_product_gap).

claim(round_colour_threshold, corollary, proved, "Corollary 68.2", "With unit circle-curvature lifting and matched root colour kinetics the first positive four-dimensional coloured bosonic mass at canonical round matching is exactly the unit gluon circle momentum.").
source(round_colour_threshold, 'results/68_round_coloured_boson_threshold.md', '').
depends(round_colour_threshold, round_flux_product_gap).
depends(round_colour_threshold, colour_wilson_lift).
attempted_by(round_colour_threshold, gpt_6_2_astra_max).
checked_by(round_colour_threshold, gpt_6_2_astra_max, by_hand).
addresses(t13, round_colour_threshold).
addresses(t18, round_colour_threshold).

claim(round_twelve_flavours, proposition, proved, "Proposition 68.3", "At the restored point with three ordinary and three mirror families there are twelve massless Dirac colour flavours. The next coloured fermion lies at sqrt(2)/r, above the first gluon circle harmonic.").
source(round_twelve_flavours, 'results/68_round_coloured_boson_threshold.md', '').
depends(round_twelve_flavours, round_colour_threshold).
depends(round_twelve_flavours, vortex_root_domain).
attempted_by(round_twelve_flavours, gpt_6_2_astra_max).
checked_by(round_twelve_flavours, gpt_6_2_astra_max, by_hand).
checked_by(round_twelve_flavours, claude_fable_5_2, partial("Joint report of 20 Nov: the twelve-flavour colour coefficients b0=3 and b1=-50")).
addresses(t12, round_twelve_flavours).
addresses(t18, round_twelve_flavours).

claim(vortex_constraint_squares, proposition, proved, "Proposition 69.1", "The physical weak scalar Hessian of the covariant Einstein vortex at every compact shape is its Bogomolny Hessian plus trace, momentum and Maxwell constraint squares. The transverse vector block is nonnegative as well.").
source(vortex_constraint_squares, 'results/69_gravitating_vortex_colour_gap.md', '').
depends(vortex_constraint_squares, shared_polar_solution).
depends(vortex_constraint_squares, round_flux_product_gap).
attempted_by(vortex_constraint_squares, gpt_6_2_astra_max).
checked_by(vortex_constraint_squares, gpt_6_2_astra_max, by_hand).
addresses(t13, vortex_constraint_squares).
addresses(t18, vortex_constraint_squares).

claim(nonround_flux_colour_gap, theorem, proved, "Theorem 69.2", "On the full nonround covariant product all coloured five-dimensional modes off the gluons have a quantitative gap from the colour Casimir and weak Hodge gap. The lifted first coloured threshold is 1/L under the displayed inequality.").
source(nonround_flux_colour_gap, 'results/69_gravitating_vortex_colour_gap.md', '').
depends(nonround_flux_colour_gap, vortex_constraint_squares).
depends(nonround_flux_colour_gap, round_flux_product_gap).
depends(nonround_flux_colour_gap, colour_wilson_lift).
attempted_by(nonround_flux_colour_gap, gpt_6_2_astra_max).
checked_by(nonround_flux_colour_gap, gpt_6_2_astra_max, by_hand).
addresses(t13, nonround_flux_colour_gap).
addresses(t18, nonround_flux_colour_gap).

claim(rooted_colour_vectors, corollary, proved, "Corollary 69.3", "Adding the diagonal root fields preserves the 1/L first transverse coloured vector threshold under the covariant gap inequality. The positive root mass square annihilates colour Killing waves.").
source(rooted_colour_vectors, 'results/69_gravitating_vortex_colour_gap.md', '').
depends(rooted_colour_vectors, nonround_flux_colour_gap).
depends(rooted_colour_vectors, vortex_root_vacua).
attempted_by(rooted_colour_vectors, gpt_6_2_astra_max).
checked_by(rooted_colour_vectors, gpt_6_2_astra_max, by_hand).
addresses(t4, rooted_colour_vectors).
addresses(t18, rooted_colour_vectors).

claim(root_wilson_operator, proposition, proved, "Proposition 70.1", "For bulk root scalars with isotropic colour and circle kinetic terms, the colour Wilson shear produces an explicit frequency-shift operator depending on the changed norm of the principal circle.").
source(root_wilson_operator, 'results/70_wilson_winding_with_vortex_roots.md', '').
depends(root_wilson_operator, colour_wilson_trial).
depends(root_wilson_operator, vortex_root_vacua).
attempted_by(root_wilson_operator, gpt_6_2_astra_max).
checked_by(root_wilson_operator, gpt_6_2_astra_max, by_hand).
addresses(t13, root_wilson_operator).
addresses(t18, root_wilson_operator).

claim(root_wilson_winding, proposition, proved, "Proposition 70.2", "At canonical restoration the two periodic vortex roots increase the leading nonzero-winding Wilson mass squared by one forty-fifth of the pure Yang-Mills contribution in the large charge-period comparison. Local matching is independent.").
source(root_wilson_winding, 'results/70_wilson_winding_with_vortex_roots.md', '').
depends(root_wilson_winding, root_wilson_operator).
depends(root_wilson_winding, round_flux_product_gap).
attempted_by(root_wilson_winding, gpt_6_2_astra_max).
checked_by(root_wilson_winding, gpt_6_2_astra_max, by_hand).
addresses(t13, root_wilson_winding).
addresses(t18, root_wilson_winding).

claim(rooted_colour_gap, theorem, proved, "Theorem 71.1", "With equal horizontal root coefficients and unit circle-curvature lift, the full rooted bosonic Hessian is nonnegative and the first extra four-dimensional coloured boson is 1/L under the colour gap inequality.").
source(rooted_colour_gap, 'results/71_colour_gap_with_diagonal_roots.md', '').
depends(rooted_colour_gap, nonround_flux_colour_gap).
depends(rooted_colour_gap, round_flux_product_gap).
depends(rooted_colour_gap, vortex_root_vacua).
depends(rooted_colour_gap, colour_wilson_lift).
attempted_by(rooted_colour_gap, gpt_6_2_astra_max).
checked_by(rooted_colour_gap, gpt_6_2_astra_max, by_hand).
addresses(t13, rooted_colour_gap).
addresses(t18, rooted_colour_gap).

claim(particle_lifts_table, proposition, proved, "Proposition 72.1", "The lifted projective Dirac kernels, weak monopole kernels and assigned circle characters identify the ordinary left and right quarks and leptons, their colour triality, charged and neutral vertices and vortex charges in the specified completion.").
source(particle_lifts_table, 'results/72_particle_identifications_and_mirrors.md', '').
depends(particle_lifts_table, vortex_root_domain).
depends(particle_lifts_table, round_twelve_flavours).
attempted_by(particle_lifts_table, gpt_6_2_astra_max).
checked_by(particle_lifts_table, gpt_6_2_astra_max, by_hand).
addresses(t2, particle_lifts_table).
addresses(t12, particle_lifts_table).
addresses(t18, particle_lifts_table).

claim(vortex_mirror_anomalies, proposition, proved, "Proposition 72.2", "One ordinary family cancels the four-dimensional Standard Model anomalies. The additional vortex U(1) has mixed colour and weak coefficients 1 and 4. The six rank-one parent Weyl fields have signed rank minus two. Mirroring the parent bundles cancels their local anomaly polynomials.").
source(vortex_mirror_anomalies, 'results/72_particle_identifications_and_mirrors.md', '').
depends(vortex_mirror_anomalies, particle_lifts_table).
attempted_by(vortex_mirror_anomalies, gpt_6_2_astra_max).
checked_by(vortex_mirror_anomalies, gpt_6_2_astra_max, by_hand).
addresses(t2, vortex_mirror_anomalies).
addresses(t12, vortex_mirror_anomalies).
addresses(t18, vortex_mirror_anomalies).

claim(rooted_current_projection, proposition, proved, "Proposition 73.1", "The full mixed-metric fibration projects the root mass onto the complement of common internal gradients. The round charged poles, leading near-round masses and five-dimensional shape exchange persist for the conserved sources.").
source(rooted_current_projection, 'results/73_projected_weak_current.md', '').
depends(rooted_current_projection, rooted_colour_gap).
depends(rooted_current_projection, vortex_root_lower_current).
depends(rooted_current_projection, shared_neutral_poles).
attempted_by(rooted_current_projection, gpt_6_2_astra_max).
checked_by(rooted_current_projection, gpt_6_2_astra_max, by_hand).
addresses(t4, rooted_current_projection).
addresses(t18, rooted_current_projection).

claim(projected_current_floor, proposition, proved, "Proposition 73.2", "The solenoidal representative of an angular multiple of the unbroken photon has zero projected root cost and a nonzero lepton matrix element. At compact canonical restoration approached from the broken side it gives a lower trial bound 15/(2248 CV) uniform in the root stiffness.").
source(projected_current_floor, 'results/73_projected_weak_current.md', '').
depends(projected_current_floor, rooted_current_projection).
depends(projected_current_floor, vortex_root_exchange_range).
attempted_by(projected_current_floor, gpt_6_2_astra_max).
checked_by(projected_current_floor, gpt_6_2_astra_max, by_hand).
addresses(t4, projected_current_floor).
addresses(t18, projected_current_floor).

claim(matched_colour_trajectory, proposition, proved, "Proposition 74.1", "One fixed fibration admits a round member, a finite six-dimensional neck and a five-dimensional collapse with exact first extra bosonic colour threshold 1/L and an ordinary six-quark window on a broken segment. At canonical matching the boson threshold holds throughout for k equal to six.").
source(matched_colour_trajectory, 'results/74_matched_hadronic_and_weak_scales.md', '').
depends(matched_colour_trajectory, rooted_colour_gap).
depends(matched_colour_trajectory, vortex_root_domain).
depends(matched_colour_trajectory, shared_circle_density).
attempted_by(matched_colour_trajectory, gpt_6_2_astra_max).
checked_by(matched_colour_trajectory, gpt_6_2_astra_max, by_hand).
addresses(t12, matched_colour_trajectory).
addresses(t13, matched_colour_trajectory).
addresses(t18, matched_colour_trajectory).

claim(hadronic_colour_current, corollary, proved, "Corollary 74.2", "In the compensated fixed-shape limit the leading leptonic Fermi strength times the squared first coloured boson mass is sqrt(2) S_b/(8 k^2 I_Q). An independent QCD conversion supplies hadronic units in the stated matching.").
source(hadronic_colour_current, 'results/74_matched_hadronic_and_weak_scales.md', '').
depends(hadronic_colour_current, matched_colour_trajectory).
depends(hadronic_colour_current, rooted_current_projection).
attempted_by(hadronic_colour_current, gpt_6_2_astra_max).
checked_by(hadronic_colour_current, gpt_6_2_astra_max, by_hand).
addresses(t13, hadronic_colour_current).
addresses(t18, hadronic_colour_current).

claim(vortex_ir_neutral_current, proposition, proved, "Proposition 75.1", "The equal-root near-round fibration gives gL=3/2+s_w^2 and gR=1+s_w^2 for the leading muon-neutrino/electron tree contact, due to the additional vortex pole and its identified chiral vertices.").
source(vortex_ir_neutral_current, 'results/75_infrared_currents_and_continuum_limits.md', '').
depends(vortex_ir_neutral_current, rooted_current_projection).
depends(vortex_ir_neutral_current, shared_neutral_poles).
depends(vortex_ir_neutral_current, particle_lifts_table).
attempted_by(vortex_ir_neutral_current, gpt_6_2_astra_max).
checked_by(vortex_ir_neutral_current, gpt_6_2_astra_max, by_hand).
addresses(t4, vortex_ir_neutral_current).
addresses(t18, vortex_ir_neutral_current).

claim(quadratic_ir_continuum, proposition, proved, "Proposition 75.2", "A smooth diagonal source with positive finite tree spectral measure has the four-dimensional Gaussian regulator limit at nonzero spacelike momentum, and contact convergence under inverse-mass integrability.").
source(quadratic_ir_continuum, 'results/75_infrared_currents_and_continuum_limits.md', '').
depends(quadratic_ir_continuum, rooted_colour_gap).
attempted_by(quadratic_ir_continuum, gpt_6_2_astra_max).
checked_by(quadratic_ir_continuum, gpt_6_2_astra_max, by_hand).
addresses(t4, quadratic_ir_continuum).
addresses(t14, quadratic_ir_continuum).
addresses(t18, quadratic_ir_continuum).

claim(charged_vortex_deformations, proposition, proved, "Proposition 76.1", "At a compact broken two-vortex member the charged angular linearized weak metric and vortex deformation vanishes modulo coordinates and gauge. The marked-circle root variations add no charged scalar zero of nonzero physical kinetic norm.").
source(charged_vortex_deformations, 'results/76_charged_deformations_and_thomson_matching.md', '').
depends(charged_vortex_deformations, vortex_constraint_squares).
depends(charged_vortex_deformations, rooted_colour_gap).
attempted_by(charged_vortex_deformations, gpt_6_2_astra_max).
checked_by(charged_vortex_deformations, gpt_6_2_astra_max, by_hand).
addresses(t13, charged_vortex_deformations).
addresses(t18, charged_vortex_deformations).

claim(finite_electric_matching, proposition, proved, "Proposition 76.2", "A finite horizontal circle-curvature counterterm shifts the one-loop photon matching by hbar c_h CV L^2/k^2 at fixed classical support, gluon norm and charge lattice. The shift remains finite at the compensated lower endpoint.").
source(finite_electric_matching, 'results/76_charged_deformations_and_thomson_matching.md', '').
depends(finite_electric_matching, rooted_colour_gap).
depends(finite_electric_matching, vortex_root_vacua).
attempted_by(finite_electric_matching, gpt_6_2_astra_max).
checked_by(finite_electric_matching, gpt_6_2_astra_max, by_hand).
addresses(t13, finite_electric_matching).
addresses(t18, finite_electric_matching).

claim(restored_finite_current_running, proposition, proved, "Proposition 76.3", "At restoration the stipulated massless families and two root doublets give diagonal one-loop screening coefficients 41/3 and 484/3 for hypercharge and vortex charge with vanishing mixed trace. The finite-momentum neutral current is a matrix.").
source(restored_finite_current_running, 'results/76_charged_deformations_and_thomson_matching.md', '').
depends(restored_finite_current_running, round_twelve_flavours).
depends(restored_finite_current_running, vortex_mirror_anomalies).
attempted_by(restored_finite_current_running, gpt_6_2_astra_max).
checked_by(restored_finite_current_running, gpt_6_2_astra_max, by_hand).
addresses(t13, restored_finite_current_running).
addresses(t18, restored_finite_current_running).

claim(vortex_flux_axion, theorem, proved, "Theorem 77.1", "A quantized Abelian Chern-Simons modification of a two-form gives axion charge 2p to the constant vortex vector while all round weak rotations and the broken diagonal electric lift have exact compensators. The supported metrics remain stationary.").
source(vortex_flux_axion, 'results/77_flux_mass_for_the_vortex_vector.md', '').
depends(vortex_flux_axion, rooted_colour_gap).
depends(vortex_flux_axion, shared_neutral_poles).
depends(vortex_flux_axion, vortex_ir_neutral_current).
attempted_by(vortex_flux_axion, gpt_6_2_astra_max).
checked_by(vortex_flux_axion, gpt_6_2_astra_max, by_hand).
addresses(t4, vortex_flux_axion).
addresses(t18, vortex_flux_axion).

claim(vortex_flux_mass_relation, proposition, proved, "Proposition 77.2", "In the axion-lifted round theory the highest sourced angular vector squared mass minus twice the circle-harmonic squared mass equals the neutral vortex squared mass. The residues follow from a three-component normalized mass form.").
source(vortex_flux_mass_relation, 'results/77_flux_mass_for_the_vortex_vector.md', '').
depends(vortex_flux_mass_relation, vortex_flux_axion).
depends(vortex_flux_mass_relation, vortex_root_upper_current).
attempted_by(vortex_flux_mass_relation, gpt_6_2_astra_max).
checked_by(vortex_flux_mass_relation, gpt_6_2_astra_max, by_hand).
addresses(t4, vortex_flux_mass_relation).
addresses(t18, vortex_flux_mass_relation).

claim(vortex_flux_ir_contact, corollary, proved, "Corollary 77.3", "The flux mass preserves the tree charged contact at fixed compact broken geometry, and suppresses the anomalously large neutral current near restoration. Keeping the same mirror fields still cancels the chiral anomalies.").
source(vortex_flux_ir_contact, 'results/77_flux_mass_for_the_vortex_vector.md', '').
depends(vortex_flux_ir_contact, vortex_flux_axion).
depends(vortex_flux_ir_contact, vortex_flux_mass_relation).
depends(vortex_flux_ir_contact, rooted_current_projection).
depends(vortex_flux_ir_contact, vortex_mirror_anomalies).
attempted_by(vortex_flux_ir_contact, gpt_6_2_astra_max).
checked_by(vortex_flux_ir_contact, gpt_6_2_astra_max, by_hand).
addresses(t4, vortex_flux_ir_contact).
addresses(t18, vortex_flux_ir_contact).

claim(finite_weak_current_inverse, proposition, proved, "Proposition 78.1", "The leading flux-lifted charged and neutral currents admit a positive inverse from the Fermi strength, two poles and two neutrino/electron contacts in the stated open region. A fixed compact-sphere form domain, analytic normalized profiles and root projection, and a uniformly coercive angular complement give a regular scaled Schur pencil. For simple selected sourced poles this proves a unique nearby positive finite inverse for every sufficiently small circle radius, with an independently testable electric normalization and an additional singlet-neutrino pole. The proof gives no certified radius threshold for the numerical example.").
source(finite_weak_current_inverse, 'results/78_finite_weak_pole_and_current_match.md', '').
depends(finite_weak_current_inverse, vortex_flux_ir_contact).
depends(finite_weak_current_inverse, matched_colour_trajectory).
depends(finite_weak_current_inverse, vortex_ir_neutral_current).
attempted_by(finite_weak_current_inverse, gpt_6_2_astra_max).
attempted_by(finite_weak_current_inverse, gpt_6_1_sol).
checked_by(finite_weak_current_inverse, gpt_6_2_astra_max, by_hand).
checked_by(finite_weak_current_inverse, claude_fable_5_2, partial("Joint report of 20 Nov: central light inverse s, rho, d_v and alpha; the compact-sphere implicit-function proof has a separate referee")).
addresses(t4, finite_weak_current_inverse).
addresses(t13, finite_weak_current_inverse).
addresses(t18, finite_weak_current_inverse).

claim(mirror_custodial_bound, proposition, proved, "Proposition 79.1", "For three perturbative heavy mirror families, reducing their leading S contribution by weak-doublet mass splittings costs a positive one-loop T bounded below quadratically in 12 - 6 pi S.").
source(mirror_custodial_bound, 'results/79_mirror_thresholds_and_scalar_vertices.md', '').
depends(mirror_custodial_bound, vortex_mirror_anomalies).
depends(mirror_custodial_bound, finite_weak_current_inverse).
attempted_by(mirror_custodial_bound, gpt_6_2_astra_max).
checked_by(mirror_custodial_bound, gpt_6_2_astra_max, by_hand).
addresses(t13, mirror_custodial_bound).
addresses(t18, mirror_custodial_bound).

claim(mirror_scalar_gluons, proposition, proved, "Proposition 79.2", "For a CP-even root fluctuation at equal norms, the six heavy root-mass mirror quarks contribute six times its nonderivative Z coupling modifier to the heavy fundamental gluon amplitude in the stated window.").
source(mirror_scalar_gluons, 'results/79_mirror_thresholds_and_scalar_vertices.md', '').
depends(mirror_scalar_gluons, particle_lifts_table).
depends(mirror_scalar_gluons, vortex_mirror_anomalies).
depends(mirror_scalar_gluons, finite_weak_current_inverse).
attempted_by(mirror_scalar_gluons, gpt_6_2_astra_max).
checked_by(mirror_scalar_gluons, gpt_6_2_astra_max, by_hand).
addresses(t12, mirror_scalar_gluons).
addresses(t18, mirror_scalar_gluons).

claim(vortex_axion_four_anomaly, proposition, proved, "Proposition 80.1", "For three ordinary four-dimensional families the vortex anomaly is 2v times an integral spin characteristic class for the Standard Model quotient and the vortex line. A charge-two periodic axion admits the local anomaly descent.").
source(vortex_axion_four_anomaly, 'results/80_axion_and_a_confining_mirror_sector.md', '').
depends(vortex_axion_four_anomaly, vortex_mirror_anomalies).
depends(vortex_axion_four_anomaly, vortex_flux_axion).
attempted_by(vortex_axion_four_anomaly, gpt_6_2_astra_max).
checked_by(vortex_axion_four_anomaly, gpt_6_2_astra_max, by_hand).
addresses(t2, vortex_axion_four_anomaly).
addresses(t18, vortex_axion_four_anomaly).

claim(hidden_mirror_mass_map, proposition, proved, "Proposition 80.2", "An auxiliary four-dimensional s-confining Sp(1) sector admits integer axion dressings, the mirror anomaly traces and a full-rank spectator-symmetric meson mass map at fixed supersymmetric spurion. Three copies change the spectator colour coefficient to minus two above threshold.").
source(hidden_mirror_mass_map, 'results/80_axion_and_a_confining_mirror_sector.md', '').
depends(hidden_mirror_mass_map, vortex_axion_four_anomaly).
depends(hidden_mirror_mass_map, mirror_scalar_gluons).
attempted_by(hidden_mirror_mass_map, gpt_6_2_astra_max).
checked_by(hidden_mirror_mass_map, gpt_6_2_astra_max, by_hand).
addresses(t2, hidden_mirror_mass_map).
addresses(t12, hidden_mirror_mass_map).
addresses(t18, hidden_mirror_mass_map).

claim(neutral_target_parity, proposition, proved, "Proposition 81.1", "The proton plus electron vector source has odd reflection parity and zero electric charge on the stated light profiles. Its static axial-electron response cancels the even neutral sector and photon kinetic mixing, and gives minus twelve times the vortex fraction at leading order.").
source(neutral_target_parity, 'results/81_weak_charges_and_mixed_polarization.md', '').
depends(neutral_target_parity, rooted_current_projection).
depends(neutral_target_parity, vortex_flux_ir_contact).
depends(neutral_target_parity, finite_weak_current_inverse).
attempted_by(neutral_target_parity, gpt_6_2_astra_max).
checked_by(neutral_target_parity, gpt_6_2_astra_max, by_hand).
addresses(t4, neutral_target_parity).
addresses(t18, neutral_target_parity).

claim(vortex_hadronic_polarization, proposition, proved, "Proposition 81.2", "The subtracted quark electromagnetic-vortex polarization is eighteen times the difference of (one half minus the input weak angle squared) times the electromagnetic HVP and the normalized Z-photon HVP.").
source(vortex_hadronic_polarization, 'results/81_weak_charges_and_mixed_polarization.md', '').
depends(vortex_hadronic_polarization, particle_lifts_table).
depends(vortex_hadronic_polarization, finite_electric_matching).
attempted_by(vortex_hadronic_polarization, gpt_6_2_astra_max).
checked_by(vortex_hadronic_polarization, gpt_6_2_astra_max, by_hand).
addresses(t4, vortex_hadronic_polarization).
addresses(t18, vortex_hadronic_polarization).

claim(hadron_root_slope, proposition, proved, "Proposition 82.1", "The physical nucleon slope under opposite root normalization is a signed sum of the six scalar quark contents at fixed mass-independent QCD input. The published correlated code gives an averaged central slope 0.000335 with total uncertainty about 0.0093.").
source(hadron_root_slope, 'results/82_opposite_root_response_of_the_nucleon.md', '').
depends(hadron_root_slope, vortex_root_domain).
depends(hadron_root_slope, hadronic_colour_current).
depends(hadron_root_slope, mirror_scalar_gluons).
attempted_by(hadron_root_slope, gpt_6_2_astra_max).
checked_by(hadron_root_slope, gpt_6_2_astra_max, by_hand).
addresses(t13, hadron_root_slope).
addresses(t18, hadron_root_slope).

claim(weak_root_curvature, proposition, proved, "Proposition 82.2", "At equal root norms the leading Fermi contact has zero first logarithmic derivative under opposite rescaling and curvature 4/(3 rho). The gradient projection removes a calculable part of the charged orbit norm at second order.").
source(weak_root_curvature, 'results/82_opposite_root_response_of_the_nucleon.md', '').
depends(weak_root_curvature, rooted_current_projection).
depends(weak_root_curvature, finite_weak_current_inverse).
attempted_by(weak_root_curvature, gpt_6_2_astra_max).
checked_by(weak_root_curvature, gpt_6_2_astra_max, by_hand).
checked_by(weak_root_curvature, claude_fable_5_2, partial("Joint report of 20 Nov: absolute and relative projected-stiffness corrections in Proposition 82.2")).
addresses(t4, weak_root_curvature).
addresses(t18, weak_root_curvature).

claim(ir_moduli_inverse, proposition, proved, "Proposition 83.1", "At leading near-round and heavy-threshold order the Fermi strength in nucleon units and the electron-to-nucleon mass ratio have an explicit two by two Jacobian with respect to shape and opposite root scaling. It is nonsingular for the two specified colour inputs.").
source(ir_moduli_inverse, 'results/83_two_infrared_coordinates_on_the_weak_family.md', '').
depends(ir_moduli_inverse, hadron_root_slope).
depends(ir_moduli_inverse, weak_root_curvature).
depends(ir_moduli_inverse, matched_colour_trajectory).
attempted_by(ir_moduli_inverse, gpt_6_2_astra_max).
checked_by(ir_moduli_inverse, gpt_6_2_astra_max, by_hand).
addresses(t13, ir_moduli_inverse).
addresses(t18, ir_moduli_inverse).

claim(dual_four_cycle_flux, proposition, proved, "Proposition 84.1", "Reducing the magnetic supergravity equation on an oriented four-manifold with one mixed flux produces half the squared membrane charge times the intersection as its Bianchi coefficient. Its dimensionless kinetic ratio is the absolute intersection divided by the Hodge norm.").
source(dual_four_cycle_flux, 'results/84_magnetic_origin_of_the_vortex_flux.md', '').
depends(dual_four_cycle_flux, vortex_flux_axion).
attempted_by(dual_four_cycle_flux, gpt_6_2_astra_max).
checked_by(dual_four_cycle_flux, gpt_6_2_astra_max, by_hand).
addresses(t11, dual_four_cycle_flux).
addresses(t18, dual_four_cycle_flux).

claim(projective_cjs_gauge_ratio, proposition, proved, "Proposition 84.2", "For the classical mixed-only CP2 times sphere solution the squared radius ratio is 24 and the isometry vectors including their form compensators have five-dimensional inverse weak-to-colour kinetic ratio 19/72.").
source(projective_cjs_gauge_ratio, 'results/84_magnetic_origin_of_the_vortex_flux.md', '').
depends(projective_cjs_gauge_ratio, dual_four_cycle_flux).
depends(projective_cjs_gauge_ratio, vortex_flux_mass_relation).
attempted_by(projective_cjs_gauge_ratio, gpt_6_2_astra_max).
checked_by(projective_cjs_gauge_ratio, gpt_6_2_astra_max, by_hand).
checked_by(projective_cjs_gauge_ratio, claude_fable_5_2, partial("Joint report of 20 Nov: Maxwell and both Chern--Simons compensators give the weak/colour ratio 19/72")).
addresses(t13, projective_cjs_gauge_ratio).
addresses(t18, projective_cjs_gauge_ratio).

claim(spin_seven_periods, proposition, proved, "Proposition 84.3", "A closed connected spin seven-manifold with a finite-kernel isometric action of the full compact Standard Model group up to finite cover has vanishing third, fourth and sixth real cohomology. The harmonic four-cycle source of the projective product therefore needs a different realization.").
source(spin_seven_periods, 'results/84_magnetic_origin_of_the_vortex_flux.md', '').
depends(spin_seven_periods, d11_quotient).
depends(spin_seven_periods, dual_four_cycle_flux).
depends(spin_seven_periods, m111_membrane_charge).
attempted_by(spin_seven_periods, gpt_6_2_astra_max).
checked_by(spin_seven_periods, gpt_6_2_astra_max, by_hand).
checked_by(spin_seven_periods, claude_fable_5_2, partial("Joint report of 20 Nov: transitive-action and Gysin obstruction for the finite-kernel spin-seven assumptions, including parity of j")).
addresses(t11, spin_seven_periods).
addresses(t18, spin_seven_periods).

claim(spin_tensor_reeb_current, corollary, proved, "Corollary 84.4", "For a minimal circle-momentum current on the electric M111 Freund-Rubin branch the universal massless and massive vector squared residues have ratio one to three. A unit Fourier scalar has squared mass in massless coupling times Planck units equal to two plus three divided by the fibre quotient order.").
source(spin_tensor_reeb_current, 'results/84_magnetic_origin_of_the_vortex_flux.md', '').
depends(spin_tensor_reeb_current, m111_circle_descent).
depends(spin_tensor_reeb_current, lecture_projective_circle_gap).
depends(spin_tensor_reeb_current, spin_seven_periods).
attempted_by(spin_tensor_reeb_current, gpt_6_2_astra_max).
checked_by(spin_tensor_reeb_current, gpt_6_2_astra_max, by_hand).
checked_by(spin_tensor_reeb_current, claude_fable_5_2, partial("Joint report of 20 Nov: Reeb-current squared mass 8j^2/L^2 and AdS normalization 12")).
addresses(t4, spin_tensor_reeb_current).
addresses(t18, spin_tensor_reeb_current).

claim(membrane_colour_instanton, proposition, proved, "Proposition 84.5", "At weak restoration the mixed colour anomaly of N net rooted families admits ordinary periodic-axion colour matching precisely when the gcd of the axion charges divides 2N. For three families a single charge-four axion from the unrefined projective embedding fails the unit-instanton test.").
source(membrane_colour_instanton, 'results/84_magnetic_origin_of_the_vortex_flux.md', '').
depends(membrane_colour_instanton, vortex_axion_four_anomaly).
depends(membrane_colour_instanton, dual_four_cycle_flux).
attempted_by(membrane_colour_instanton, gpt_6_2_astra_max).
checked_by(membrane_colour_instanton, gpt_6_2_astra_max, by_hand).
addresses(t2, membrane_colour_instanton).
addresses(t18, membrane_colour_instanton).

claim(root_qcd_angle, proposition, proved, "Proposition 85.1", "With full-rank ordinary quark masses and a root-independent mirror threshold the colour angle is Theta0 + 3u - t v for integer t. At a QCD minimum of positive susceptibility the contribution to the two-phase Hessian has rank one.").
source(root_qcd_angle, 'results/85_root_phase_and_the_qcd_axion.md', 'which-phase-qcd-measures').
depends(root_qcd_angle, membrane_colour_instanton).
depends(root_qcd_angle, vortex_root_domain).
attempted_by(root_qcd_angle, gpt_6_2_astra_max).
checked_by(root_qcd_angle, gpt_6_2_astra_max, by_hand).
addresses(t13, root_qcd_angle).
addresses(t18, root_qcd_angle).

claim(root_phase_kinetic, proposition, proved, "Proposition 85.2", "At equal root norms and leading near-round order, integrating out the vortex connection fixes the physical two-phase metric. With one charge-two axion or a pinned second phase the decay constant is v_F sqrt(1-d_v)/6 and the squared QCD mass is 36 sqrt(2) G_F chi/(1-d_v).").
source(root_phase_kinetic, 'results/85_root_phase_and_the_qcd_axion.md', 'physical-kinetic-coefficient-and-fermion-vertex').
depends(root_phase_kinetic, root_qcd_angle).
depends(root_phase_kinetic, finite_weak_current_inverse).
attempted_by(root_phase_kinetic, gpt_6_2_astra_max).
checked_by(root_phase_kinetic, gpt_6_2_astra_max, by_hand).
addresses(t4, root_phase_kinetic).
addresses(t13, root_phase_kinetic).

claim(root_phase_charm_test, claim, numerical, "Result 85, finite-current and charmonium calculations", "For the specified compact fit and one light QCD phase, finite phase projection and the supplied susceptibility give F_a about 41 GeV and mass about 139 keV. The connected-charm approximation alone gives a radiative branching ratio of about 3.0e-5. This is about 42 times the BESIII missing-energy endpoint limit for a detector-stable particle. Other amplitudes can interfere with the connected term. TEXONO excludes the minimal equal-root visible axion, and its thermal history conflicts with standard BBN under the hypotheses of Result 85.").
source(root_phase_charm_test, 'results/85_root_phase_and_the_qcd_axion.md', 'qcd-scale-and-a-particle-test').
depends(root_phase_charm_test, root_phase_kinetic).
depends(root_phase_charm_test, finite_weak_current_inverse).
attempted_by(root_phase_charm_test, gpt_6_2_astra_max).
checked_by(root_phase_charm_test, gpt_6_2_astra_max, python).
addresses(t13, root_phase_charm_test).
addresses(t18, root_phase_charm_test).

claim(wrapped_string_resultant, theorem, proved, "Theorem 86.1", "On the specified chiral worldsheet system, a genuine holomorphic degree-w weak-sphere cover has leading fermion insertion given by the resultant of the two pulled-back roots. The gauge-invariant insertion has phase w(alpha-theta2) and independent roots give a nonzero determinant.").
source(wrapped_string_resultant, 'results/86_wrapped_string_and_the_two_weak_roots.md', 'worldsheet-anomaly-and-the-determinant').
depends(wrapped_string_resultant, vortex_flux_axion).
depends(wrapped_string_resultant, vortex_root_domain).
attempted_by(wrapped_string_resultant, gpt_6_2_astra_max).
checked_by(wrapped_string_resultant, gpt_6_2_astra_max, by_hand).
addresses(t11, wrapped_string_resultant).
addresses(t18, wrapped_string_resultant).

claim(wrapped_string_phase_potential, proposition, conditional, "Proposition 86.2", "Assuming a nonzero unit worldsheet vacuum harmonic and a full-rank QCD sector with positive susceptibility, the two-phase Hessian has determinant chi kappa2 t^2 at simultaneous minima. If the QCD minimum is unique modulo 2 pi and t is nonzero, there are |t| minima.").
source(wrapped_string_phase_potential, 'results/86_wrapped_string_and_the_two_weak_roots.md', 'two-independent-contributions-to-the-phase-potential').
depends(wrapped_string_phase_potential, root_qcd_angle).
depends(wrapped_string_phase_potential, wrapped_string_resultant).
attempted_by(wrapped_string_phase_potential, gpt_6_2_astra_max).
checked_by(wrapped_string_phase_potential, gpt_6_2_astra_max, by_hand).
addresses(t13, wrapped_string_phase_potential).
addresses(t18, wrapped_string_phase_potential).

claim(full_harmonic_flux_mass, proposition, proved, "Proposition 87.1", "For a single two-form period on the weak surface the axion charge is I n and the massive direction is J inverse I n. Restricting all harmonic vectors to the flux line before computing the mass keeps the squared-mass fraction (n^T I n)^2/(n^T J n)^2.").
source(full_harmonic_flux_mass, 'results/87_spin_magnetic_product_and_wrapped_membranes.md', 'keeping-all-harmonic-vectors').
depends(full_harmonic_flux_mass, dual_four_cycle_flux).
attempted_by(full_harmonic_flux_mass, gpt_6_2_astra_max).
checked_by(full_harmonic_flux_mass, gpt_6_2_astra_max, by_hand).
addresses(t11, full_harmonic_flux_mass).
addresses(t13, full_harmonic_flux_mass).
addresses(t18, full_harmonic_flux_mass).

claim(spin_magnetic_surface_products, proposition, proved, "Proposition 87.2", "The two-derivative source-free spin product with unit flux on each surface times the weak sphere has explicit radius and curvature relations for a sphere, torus or higher-genus second factor. The full massive harmonic vector has M^2=3/r^2.").
source(spin_magnetic_surface_products, 'results/87_spin_magnetic_product_and_wrapped_membranes.md', 'solving-the-spin-product-einstein-equations').
depends(spin_magnetic_surface_products, full_harmonic_flux_mass).
depends(spin_magnetic_surface_products, projective_cjs_gauge_ratio).
attempted_by(spin_magnetic_surface_products, gpt_6_2_astra_max).
checked_by(spin_magnetic_surface_products, gpt_6_2_astra_max, by_hand).
checked_by(spin_magnetic_surface_products, claude_fable_5_2, partial("Joint report of 20 Nov: Proposition 87.2 listed in the hand-checked sample; check limited here to the product calculation")).
addresses(t13, spin_magnetic_surface_products).
addresses(t18, spin_magnetic_surface_products).

claim(wrapped_m5_boundary_charge, proposition, proved, "Proposition 87.3", "On the product six-cycle with mixed class m h k the cohomological M5 worldvolume Bianchi identity requires net M2 boundary class m PD_X(h) times a point. Its charge is m^2 times the self-intersection of h. The product bare action obeys S5 f_theta=sqrt(C_ext).").
source(wrapped_m5_boundary_charge, 'results/87_spin_magnetic_product_and_wrapped_membranes.md', 'the-wrapped-m5-needs-membrane-boundaries').
depends(wrapped_m5_boundary_charge, dual_four_cycle_flux).
depends(wrapped_m5_boundary_charge, full_harmonic_flux_mass).
attempted_by(wrapped_m5_boundary_charge, gpt_6_2_astra_max).
checked_by(wrapped_m5_boundary_charge, gpt_6_2_astra_max, by_hand).
addresses(t11, wrapped_m5_boundary_charge).
addresses(t18, wrapped_m5_boundary_charge).

claim(k3_ade_charge_embedding, proposition, proved, "Proposition 88.1", "Explicit lattice classes h and y have h^2=2, y^2=-30 and h dot y=0. The A6 root selection has a colour A2, the charge records of an ordinary family including the right neutrino, and two weak scalar links. External chirality and mass links require a mode domain and action.").
source(k3_ade_charge_embedding, 'results/88_k3_colour_hypercharge_and_instanton_action.md', 'the-integral-charges-of-the-candidate-fields').
depends(k3_ade_charge_embedding, full_harmonic_flux_mass).
depends(k3_ade_charge_embedding, particle_lifts_table).
attempted_by(k3_ade_charge_embedding, gpt_6_2_astra_max).
checked_by(k3_ade_charge_embedding, gpt_6_2_astra_max, by_hand).
checked_by(k3_ade_charge_embedding, claude_fable_5_2, partial("Joint report of 20 Nov: charge table of Proposition 88.1")).
addresses(t11, k3_ade_charge_embedding).
addresses(t17, k3_ade_charge_embedding).
addresses(t18, k3_ade_charge_embedding).

claim(k3_colour_instanton_action, proposition, proved, "Proposition 88.2", "At A2 enhancement the stated leading unwarped reduction gives I3=C V3/(2 T2^2). A membrane wrapping the remaining internal three-volume has bare action T2 V3=8 pi^2 I3. This fixes the tree colour matching input for that geometry.").
source(k3_colour_instanton_action, 'results/88_k3_colour_hypercharge_and_instanton_action.md', 'the-gluon-coefficient-and-a-strong-coupling-scale').
depends(k3_colour_instanton_action, k3_ade_charge_embedding).
depends(k3_colour_instanton_action, hadronic_colour_current).
attempted_by(k3_colour_instanton_action, gpt_6_2_astra_max).
checked_by(k3_colour_instanton_action, gpt_6_2_astra_max, by_hand).
addresses(t11, k3_colour_instanton_action).
addresses(t13, k3_colour_instanton_action).
addresses(t18, k3_colour_instanton_action).

claim(k3_hypercharge_period_bound, proposition, proved, "Proposition 88.3", "At exact colour enhancement the tree hypercharge ratio is IY/I3=5/3+||y_plus||^2/9. The excess is bounded above by 2 I3/M4^2 times the squared sum of the two specified bare wrapped masses. Full A6 enhancement attains 5/3 in this reduction.").
source(k3_hypercharge_period_bound, 'results/88_k3_colour_hypercharge_and_instanton_action.md', 'hypercharge-normalization-and-the-masses-of-its-carriers').
depends(k3_hypercharge_period_bound, k3_ade_charge_embedding).
depends(k3_hypercharge_period_bound, k3_colour_instanton_action).
attempted_by(k3_hypercharge_period_bound, gpt_6_2_astra_max).
checked_by(k3_hypercharge_period_bound, gpt_6_2_astra_max, by_hand).
addresses(t13, k3_hypercharge_period_bound).
addresses(t17, k3_hypercharge_period_bound).
addresses(t18, k3_hypercharge_period_bound).

claim(adjoint_monopole_gradient, proposition, proved, "Proposition 89.1", "In Yang-Mills theory on the prescribed S2 times line, a constant adjoint Higgs leaves a tangential-vector mass squared mu^2-q/r^2 for N=2q at least two. The Cartan Bogomolny gradient instead has nonnegative second variation for compactly supported physical perturbations and explicit weak-spin zero modes.").
source(adjoint_monopole_gradient, 'results/89_monopole_charge_and_a_chiral_interval.md', 'the-charged-vector-and-the-bogomolny-background').
depends(adjoint_monopole_gradient, k3_ade_charge_embedding).
attempted_by(adjoint_monopole_gradient, gpt_6_2_astra_max).
checked_by(adjoint_monopole_gradient, gpt_6_2_astra_max, by_hand).
addresses(t11, adjoint_monopole_gradient).
addresses(t14, adjoint_monopole_gradient).
addresses(t18, adjoint_monopole_gradient).

claim(ade_interval_yukawa, proposition, proved, "Proposition 89.2", "On the prescribed sphere-interval background with the stated boundary projectors and scalar squares, normalized monopole and Gaussian modes give the ordinary chiral charge blocks. The explicit Yukawa overlap pairs equal-colour equal-charge quark modes at small expectation value.").
source(ade_interval_yukawa, 'results/89_monopole_charge_and_a_chiral_interval.md', 'fermions-on-the-interval-and-their-yukawa-overlaps').
depends(ade_interval_yukawa, k3_ade_charge_embedding).
depends(ade_interval_yukawa, adjoint_monopole_gradient).
depends(ade_interval_yukawa, vortex_root_domain).
attempted_by(ade_interval_yukawa, gpt_6_2_astra_max).
checked_by(ade_interval_yukawa, gpt_6_2_astra_max, by_hand).
addresses(t3, ade_interval_yukawa).
addresses(t8, ade_interval_yukawa).
addresses(t11, ade_interval_yukawa).
addresses(t18, ade_interval_yukawa).

hypothesis(ade_interval_two_species_sources, "The Dirac-neutrino branch of 89.2 with diagonal nonzero light overlaps, the stated interspecies Yukawa perturbation, a gapped heavy complement and canonical parent kinetic terms. Quantum matching also needs a common four-dimensional subtraction window and renormalized heavy thresholds.").
claim(ade_interval_four_masses, proposition, conditional, "Proposition 89.3", "For the fixed sphere-interval probes the second-order chiral mass vanishes by the species and chirality gradings. The normalized cubic coefficient is V* R W_Q R V minus half the anticommutator of V* R^2 V with A. It gives the leading tree correction to the four-mass ratio. The finite quantum threshold remains an input.").
source(ade_interval_four_masses, 'results/89_monopole_charge_and_a_chiral_interval.md', 'four-masses-at-a-common-matching-scale').
depends(ade_interval_four_masses, ade_interval_yukawa).
depends(ade_interval_four_masses, hyp(ade_interval_two_species_sources)).
attempted_by(ade_interval_four_masses, gpt_6_2_astra).
checked_by(ade_interval_four_masses, gpt_6_2_astra, by_hand).
checked_by(ade_interval_four_masses, terra_6_1, by_hand). % Independent grading, Schur expansion, finite-wall ratio and QED charge check under the stated hypotheses.
addresses(t8, ade_interval_four_masses).
addresses(t10, ade_interval_four_masses).

claim(interval_mass_green, proposition, conditional, "Proposition 109.1", "For the two holomorphic interspecies links on the round interval, Q W kills each right light mode. The relative cubic correction is minus half the left inverse-square leakage, with only angular zero and one and explicit Robin Green functions. A boundary Yukawa produces an independently testable mass response.").
source(interval_mass_green, 'results/109_interval_mass_source_response.md', 'a-green-function-for-each-cubic-mass').
depends(interval_mass_green, ade_interval_four_masses).
attempted_by(interval_mass_green, gpt_6_2_astra).
checked_by(interval_mass_green, gpt_6_2_astra, by_hand).
checked_by(interval_mass_green, terra_6_1, by_hand). % Independent angular, Robin, kinetic and wall calculation conditional on 89.2-3.
addresses(t8, interval_mass_green).
addresses(t10, interval_mass_green).

hypothesis(interval_wall_sources, "Fixed nonderivative wall Yukawa coefficients and separately prescribed internal scalar source profiles. Same finite slab, metric, colour representation and subtraction scale at both geometries.").
claim(interval_wall_stiffness_response, proposition, conditional, "Proposition 109.2 and colour stiffness", "Two bulk-null scalar profiles resolve the two wall mass vertices and predict their transport to a new crossing. The nonzero longitudinal colour towers over the sphere kernels have a convergent one-loop threshold difference given by a product of endpoint Gaussian factors.").
source(interval_wall_stiffness_response, 'results/109_interval_mass_source_response.md', 'calibrating-the-wall-vertex-and-changing-the-geometry').
depends(interval_wall_stiffness_response, interval_mass_green).
depends(interval_wall_stiffness_response, hyp(interval_wall_sources)).
attempted_by(interval_wall_stiffness_response, gpt_6_2_astra).
checked_by(interval_wall_stiffness_response, gpt_6_2_astra, by_hand).
checked_by(interval_wall_stiffness_response, terra_6_1, by_hand).
addresses(t8, interval_wall_stiffness_response).
addresses(t18, interval_wall_stiffness_response).

claim(vortex_neutral_spectator_tensor, proposition, proved, "Proposition 90.1", "Three ordinary families in the six-dimensional spin theory admit vortex-neutral chiral spectators without weak-sphere zero modes. The specified integral factorization X Y matches the gauge part of the two-derivative K3 magnetic class and gives local Green-Schwarz cancellation with a nonchiral tensor.").
source(vortex_neutral_spectator_tensor, 'results/90_a_tensor_completion_without_light_mirrors.md', 'vortex-neutral-spectators').
depends(vortex_neutral_spectator_tensor, vortex_mirror_anomalies).
depends(vortex_neutral_spectator_tensor, k3_ade_charge_embedding).
depends(vortex_neutral_spectator_tensor, ade_interval_yukawa).
attempted_by(vortex_neutral_spectator_tensor, gpt_6_2_astra_max).
checked_by(vortex_neutral_spectator_tensor, gpt_6_2_astra_max, by_hand).
addresses(t11, vortex_neutral_spectator_tensor).
addresses(t18, vortex_neutral_spectator_tensor).

claim(spectator_global_bordism, proposition, proved, "Result 90, global determinant check", "The spin bordism group Omega_7(B(U(3) times U(1)_v)) vanishes. For the specified complex-fermion and spin backgrounds the exponentiated determinant anomaly equals the differential cup-product functional of X and Y. A source-free two-form cancellation uses a geometric trivialization of X.").
source(spectator_global_bordism, 'results/90_a_tensor_completion_without_light_mirrors.md', 'vortex-neutral-spectators').
depends(spectator_global_bordism, vortex_neutral_spectator_tensor).
attempted_by(spectator_global_bordism, gpt_6_2_astra_max).
checked_by(spectator_global_bordism, gpt_6_2_astra_max, by_hand).
checked_by(spectator_global_bordism, claude_fable_5_2, partial("Joint report of 20 Nov: degree-seven spin bordism for the stated U(3) times U(1) domain and the Sq2 step")).
addresses(t11, spectator_global_bordism).
addresses(t18, spectator_global_bordism).

claim(tensor_sphere_pushforward, proposition, proved, "Proposition 90.2", "Equivariant pushforward on the lifted weak sphere bundle gives the ordinary four-dimensional anomaly including the weak term. The two tensor-derived axion charges are 2 and 14. The minimal colour angle is Theta0 + 3u + v_m.").
source(tensor_sphere_pushforward, 'results/90_a_tensor_completion_without_light_mirrors.md', 'the-same-descent-sees-the-geometric-weak-group').
depends(tensor_sphere_pushforward, vortex_neutral_spectator_tensor).
depends(tensor_sphere_pushforward, vortex_axion_four_anomaly).
depends(tensor_sphere_pushforward, root_qcd_angle).
attempted_by(tensor_sphere_pushforward, gpt_6_2_astra_max).
checked_by(tensor_sphere_pushforward, gpt_6_2_astra_max, by_hand).
addresses(t11, tensor_sphere_pushforward).
addresses(t18, tensor_sphere_pushforward).

claim(dual_tensor_stiffness_bound, proposition, proved, "Result 90, electric-magnetic bound", "Keeping the harmonics of the minimal unwarped electrically and magnetically normalized tensor gives f_e f_m=1/(2 pi A) and v_A^2 at least 28/(pi A) for axion charges 2 and 14. The original fit can be compared to this lower bound at the same physical area.").
source(dual_tensor_stiffness_bound, 'results/90_a_tensor_completion_without_light_mirrors.md', 'a-constraint-from-electricmagnetic-normalization').
depends(dual_tensor_stiffness_bound, tensor_sphere_pushforward).
depends(dual_tensor_stiffness_bound, finite_weak_current_inverse).
attempted_by(dual_tensor_stiffness_bound, gpt_6_2_astra_max).
checked_by(dual_tensor_stiffness_bound, gpt_6_2_astra_max, by_hand).
addresses(t4, dual_tensor_stiffness_bound).
addresses(t13, dual_tensor_stiffness_bound).
addresses(t18, dual_tensor_stiffness_bound).

claim(projective_vortex_spectator_descent, proposition, proved, "Result 90, ten-dimensional local anomaly", "On the original spin-c projective family, opposite-chirality spectators of zero weak degree cancel the irreducible parent gravitational term while their sphere spinor kernels are empty. The remaining rational local polynomial factors as v^2 X8 + x^2 Y8. Quantization of the ten-dimensional eight-form coefficients requires additional data.").
source(projective_vortex_spectator_descent, 'results/90_a_tensor_completion_without_light_mirrors.md', 'a-local-ten-dimensional-check-on-the-original-chiral-bundles').
depends(projective_vortex_spectator_descent, vortex_mirror_anomalies).
depends(projective_vortex_spectator_descent, vortex_neutral_spectator_tensor).
attempted_by(projective_vortex_spectator_descent, gpt_6_2_astra_max).
checked_by(projective_vortex_spectator_descent, gpt_6_2_astra_max, by_hand).
addresses(t11, projective_vortex_spectator_descent).
addresses(t18, projective_vortex_spectator_descent).

claim(k3_electric_surface_charge, proposition, proved, "Proposition 91.1", "With all harmonic K3 charges retained, the two ADE roots leave a nonzero additional membrane charge required by the unit electric surface. At full A6 enhancement the bare tension of membranes carrying its net class is at least M4 sqrt(40/7)/sqrt(2 I3).").
source(k3_electric_surface_charge, 'results/91_full_k3_charge_of_a_wrapped_surface.md', '').
depends(k3_electric_surface_charge, wrapped_m5_boundary_charge).
depends(k3_electric_surface_charge, k3_ade_charge_embedding).
depends(k3_electric_surface_charge, k3_hypercharge_period_bound).
attempted_by(k3_electric_surface_charge, gpt_6_2_sol_ultra).
checked_by(k3_electric_surface_charge, gpt_6_2_sol_ultra, by_hand).
addresses(t11, k3_electric_surface_charge).
addresses(t18, k3_electric_surface_charge).

claim(k3_electric_surface_action, proposition, proved, "Proposition 91.2", "For the round weak sphere with positive product Einstein and monopole kinetic terms, the bare electric M5 tension action equals (M4 r)^2/(2 I3). The weak kinetic term bounds it above by 3/2 times (IW/I3 - J(h,h)/6). At full A6 collapse, the stated illustrative tree ratios give an upper bound of about 1.58.").
source(k3_electric_surface_action, 'results/91_full_k3_charge_of_a_wrapped_surface.md', '').
depends(k3_electric_surface_action, k3_colour_instanton_action).
depends(k3_electric_surface_action, k3_hypercharge_period_bound).
attempted_by(k3_electric_surface_action, gpt_6_2_sol_ultra).
checked_by(k3_electric_surface_action, gpt_6_2_sol_ultra, by_hand).
addresses(t13, k3_electric_surface_action).
addresses(t18, k3_electric_surface_action).

claim(dual_tensor_transverse_pencil, proposition, proved, "Proposition 92.1", "On the specified polar background and vertical tangent connection, the electric and magnetic polarizations of one nonchiral tensor give separate coexact pencils with dual kinetic coefficients. Their compensators preserve the exact photon and leave the static charged contact at fixed geometry unchanged.").
source(dual_tensor_transverse_pencil, 'results/92_finite_electric_and_magnetic_tensor_match.md', 'the-electric-bianchi-identity-and-magnetic-field-equation').
depends(dual_tensor_transverse_pencil, tensor_sphere_pushforward).
depends(dual_tensor_transverse_pencil, dual_tensor_stiffness_bound).
depends(dual_tensor_transverse_pencil, vortex_flux_ir_contact).
attempted_by(dual_tensor_transverse_pencil, gpt_6_2_sol_ultra).
checked_by(dual_tensor_transverse_pencil, gpt_6_2_sol_ultra, by_hand).
addresses(t4, dual_tensor_transverse_pencil).
addresses(t11, dual_tensor_transverse_pencil).
addresses(t18, dual_tensor_transverse_pencil).

claim(dual_tensor_round_poles, proposition, proved, "Proposition 92.2", "The round triplet gives IW=2 CV r^2(2+gamma_e^2+25 gamma_m^2)/3 and the constant vortex gives Mv0^2=2(gamma_e^2+49 gamma_m^2)/r^2. If T and D are the sum and product of the three nonzero triplet squared masses in circle-pole units, Mv0^2/MD^2=(6T+D-26)/7.").
source(dual_tensor_round_poles, 'results/92_finite_electric_and_magnetic_tensor_match.md', 'round-spectrum-and-the-two-inverse-branches').
depends(dual_tensor_round_poles, dual_tensor_transverse_pencil).
depends(dual_tensor_round_poles, vortex_flux_mass_relation).
attempted_by(dual_tensor_round_poles, gpt_6_2_sol_ultra).
checked_by(dual_tensor_round_poles, gpt_6_2_sol_ultra, by_hand).
checked_by(dual_tensor_round_poles, claude_fable_5_2, partial("Joint report of 20 Nov: round rotation triplet and tensor contribution in Proposition 92.2")).
addresses(t4, dual_tensor_round_poles).
addresses(t13, dual_tensor_round_poles).
addresses(t18, dual_tensor_round_poles).

claim(dual_tensor_finite_fit, claim, numerical, "Result 92, finite pole and contact fits", "With both tensor periods related by electric-magnetic normalization and the stated central Born inputs, two finite branches at 1/L=500 GeV have equal fitted light observables and different heavy neutral poles. Holding the muon contact out gives a finite branch at 800 GeV which yields GF about 1.160934e-5 GeV^-2, about four parts per million above the single-doublet Born coupling relation evaluated with both measured pole masses, the stripped width and the pole angle.").
source(dual_tensor_finite_fit, 'results/92_finite_electric_and_magnetic_tensor_match.md', 'numerical-finite-solutions-and-threshold-placement').
depends(dual_tensor_finite_fit, dual_tensor_round_poles).
depends(dual_tensor_finite_fit, finite_weak_current_inverse).
depends(dual_tensor_finite_fit, finite_electric_matching).
attempted_by(dual_tensor_finite_fit, gpt_6_2_sol_ultra).
checked_by(dual_tensor_finite_fit, gpt_6_2_sol_ultra, python).
checked_by(dual_tensor_finite_fit, gpt_6_1_terra, python).
addresses(t4, dual_tensor_finite_fit).
addresses(t13, dual_tensor_finite_fit).
addresses(t18, dual_tensor_finite_fit).

claim(dual_tensor_photon_cost, proposition, proved, "Proposition 93.1", "For the fixed-action two-polarization tensor the exact photon has a radius-independent positive contribution at fixed shape. It grows strictly towards the long neck, asymptotically linearly in P_b. At positive residual norm the colour and photon matching equations have unique positive radii and a fixed-IQ neck stops at finite P_b.").
source(dual_tensor_photon_cost, 'results/93_tensor_photon_and_the_five_dimensional_pole.md', 'the-photon-cost-along-the-neck').
depends(dual_tensor_photon_cost, dual_tensor_transverse_pencil).
depends(dual_tensor_photon_cost, shared_circle_density).
depends(dual_tensor_photon_cost, matched_colour_trajectory).
attempted_by(dual_tensor_photon_cost, gpt_6_2_sol_ultra).
checked_by(dual_tensor_photon_cost, gpt_6_2_sol_ultra, by_hand).
addresses(t4, dual_tensor_photon_cost).
addresses(t13, dual_tensor_photon_cost).
addresses(t18, dual_tensor_photon_cost).

claim(dual_tensor_comoving_pole, proposition, proved, "Proposition 93.2, pole limit", "At fixed broken shape with positive residual photon norm, the two tensor compensators leave a compact positive kinetic operator on the limiting charged mass-form domain. The projected lepton probes sourced poles with masses of order sqrt(CV), which is of order 1/B.").
source(dual_tensor_comoving_pole, 'results/93_tensor_photon_and_the_five_dimensional_pole.md', 'the-new-charged-pole-scale-at-fixed-shape').
depends(dual_tensor_comoving_pole, dual_tensor_photon_cost).
depends(dual_tensor_comoving_pole, dual_tensor_transverse_pencil).
depends(dual_tensor_comoving_pole, rooted_current_projection).
attempted_by(dual_tensor_comoving_pole, gpt_6_2_sol_ultra).
checked_by(dual_tensor_comoving_pole, gpt_6_2_sol_ultra, by_hand).
addresses(t4, dual_tensor_comoving_pole).
addresses(t14, dual_tensor_comoving_pole).
addresses(t18, dual_tensor_comoving_pole).

claim(dual_tensor_hadronic_resolvent, proposition, conditional, "Proposition 93.2, hadronic limit", "Assuming a positive finite limiting B H_N in the stated strong regime, the normalized charged spacelike contact is the resolvent of the original mass form plus the surviving tensor kinetic form. It decreases strictly away from zero momentum in the minimal pencil. If the circle harmonic is the first omitted coloured state, GF M_g^2 approaches sqrt(2) S_b/[8 k^2 (I_Q-I_T)].").
source(dual_tensor_hadronic_resolvent, 'results/93_tensor_photon_and_the_five_dimensional_pole.md', 'the-new-charged-pole-scale-at-fixed-shape').
depends(dual_tensor_hadronic_resolvent, dual_tensor_comoving_pole).
depends(dual_tensor_hadronic_resolvent, hadronic_colour_current).
attempted_by(dual_tensor_hadronic_resolvent, gpt_6_2_sol_ultra).
checked_by(dual_tensor_hadronic_resolvent, gpt_6_2_sol_ultra, by_hand).
addresses(t4, dual_tensor_hadronic_resolvent).
addresses(t13, dual_tensor_hadronic_resolvent).
addresses(t18, dual_tensor_hadronic_resolvent).

claim(dual_tensor_finite_neck, claim, numerical, "Result 93, finite-neck and fixed-shape examples", "On the specified lower 500 GeV branch at b=0.001, a 22 TeV scalar window resolves the four colour directions, shared circle and weak meridian with the weak azimuth above the window. At fixed shape the charged Galerkin limit has first sourced M_C^2/(CV) about 37.25. The hadronic comparisons depend on calibrated comoving mass ratios.").
source(dual_tensor_finite_neck, 'results/93_tensor_photon_and_the_five_dimensional_pole.md', 'the-photon-cost-along-the-neck').
depends(dual_tensor_finite_neck, dual_tensor_finite_fit).
depends(dual_tensor_finite_neck, dual_tensor_photon_cost).
depends(dual_tensor_finite_neck, dual_tensor_comoving_pole).
attempted_by(dual_tensor_finite_neck, gpt_6_2_sol_ultra).
checked_by(dual_tensor_finite_neck, gpt_6_2_sol_ultra, python).
checked_by(dual_tensor_finite_neck, gpt_6_1_terra, python).
addresses(t13, dual_tensor_finite_neck).
addresses(t14, dual_tensor_finite_neck).
addresses(t18, dual_tensor_finite_neck).

claim(hopf_diagonal_hypercharge, proposition, proved, "Proposition 94.1", "An auxiliary charge minus two tensor of Hopf weight three locks Y=(P+3 C/2)/6. On the specified horizontal isotypic Dirac domain the spin lift and weak monopole kernels furnish the ordinary family and right neutrino with neutral weak root links.").
source(hopf_diagonal_hypercharge, 'results/94_spin_hopf_trajectory_and_its_charge_lift.md', 'global-charge-on-the-hopf-circle').
depends(hopf_diagonal_hypercharge, vortex_root_domain).
depends(hopf_diagonal_hypercharge, particle_lifts_table).
attempted_by(hopf_diagonal_hypercharge, gpt_6_2_sol_ultra).
checked_by(hopf_diagonal_hypercharge, gpt_6_2_sol_ultra, by_hand).
addresses(t11, hopf_diagonal_hypercharge).
addresses(t17, hopf_diagonal_hypercharge).
addresses(t18, hopf_diagonal_hypercharge).

claim(hopf_supported_spin_product, proposition, proved, "Proposition 94.2", "The specified eleven-dimensional fibration action with an independent five-form, dilaton and auxiliary field admits unwarped Minkowski products on round S5 times a polar weak sphere. It has I3=CV B^2/3 and IY=(6 I3+9 IC/4)/k^2 and leaves a homogeneous scale modulus.").
source(hopf_supported_spin_product, 'results/94_spin_hopf_trajectory_and_its_charge_lift.md', 'a-source-supported-spin-product-in-a-fixed-action').
depends(hopf_supported_spin_product, hopf_diagonal_hypercharge).
depends(hopf_supported_spin_product, shared_polar_solution).
attempted_by(hopf_supported_spin_product, gpt_6_2_sol_ultra).
checked_by(hopf_supported_spin_product, gpt_6_2_sol_ultra, by_hand).
checked_by(hopf_supported_spin_product, claude_fable_5_2, partial("Joint report of 20 Nov: the supported product in Proposition 94.2 is listed in the hand-checked sample")).
addresses(t11, hopf_supported_spin_product).
addresses(t13, hopf_supported_spin_product).
addresses(t18, hopf_supported_spin_product).

claim(hopf_scalar_windows, proposition, proved, "Proposition 94.3", "In the supported spin action a flat auxiliary modulus matches any positive residual tree photon budget. At fixed shape the weak-metric shrink gives the charged round S5 scalar tower, with first Hopf momentum at absolute charge 1/k and squared mass 5/B^2. A finite six-direction scalar window and an upper round weak restoration occur along the matched family.").
source(hopf_scalar_windows, 'results/94_spin_hopf_trajectory_and_its_charge_lift.md', 'the-scalar-windows-with-a-fixed-photon-input').
depends(hopf_scalar_windows, hopf_supported_spin_product).
depends(hopf_scalar_windows, dual_tensor_photon_cost).
depends(hopf_scalar_windows, dual_tensor_finite_neck).
attempted_by(hopf_scalar_windows, gpt_6_2_sol_ultra).
checked_by(hopf_scalar_windows, gpt_6_2_sol_ultra, by_hand).
addresses(t13, hopf_scalar_windows).
addresses(t14, hopf_scalar_windows).
addresses(t18, hopf_scalar_windows).

claim(hopf_locking_weak_charges, proposition, proved, "Proposition 94.4", "The specified leading near-round neutral pencil has positive branches fitting the five central weak inputs. Its locking direction adds an independent sterile pole and contributes +6 v_F^2/f_S^2 to the combined tree proton and electron weak charge. This uses the light reduction.").
source(hopf_locking_weak_charges, 'results/94_spin_hopf_trajectory_and_its_charge_lift.md', 'the-locking-vector-in-the-light-neutral-approximation').
depends(hopf_locking_weak_charges, hopf_diagonal_hypercharge).
depends(hopf_locking_weak_charges, hopf_supported_spin_product).
depends(hopf_locking_weak_charges, dual_tensor_round_poles).
depends(hopf_locking_weak_charges, neutral_target_parity).
attempted_by(hopf_locking_weak_charges, gpt_6_2_sol_ultra).
checked_by(hopf_locking_weak_charges, gpt_6_2_sol_ultra, by_hand).
addresses(t4, hopf_locking_weak_charges).
addresses(t13, hopf_locking_weak_charges).
addresses(t18, hopf_locking_weak_charges).

claim(hopf_broken_colour_vectors, proposition, proved, "Proposition 94.5", "At the round restored member the broken SO(6)/U(3) generators give charged triplet and antitriplet vectors. The two-mode transverse Killing and five-form block has diagonal entries 8/B^2+f_S^2/I3 and 8/B^2 with off-diagonal entry -8/B^2. The block identifies an omitted threshold candidate.").
source(hopf_broken_colour_vectors, 'results/94_spin_hopf_trajectory_and_its_charge_lift.md', 'charged-colour-vectors-from-the-broken-round-isometries').
depends(hopf_broken_colour_vectors, hopf_supported_spin_product).
depends(hopf_broken_colour_vectors, hopf_locking_weak_charges).
attempted_by(hopf_broken_colour_vectors, gpt_6_2_sol_ultra).
checked_by(hopf_broken_colour_vectors, gpt_6_2_sol_ultra, by_hand).
checked_by(hopf_broken_colour_vectors, claude_fable_5_2, partial("Joint report of 20 Nov: broken-vector values and crossings compared with Result 99")).
addresses(t4, hopf_broken_colour_vectors).
addresses(t14, hopf_broken_colour_vectors).
addresses(t18, hopf_broken_colour_vectors).

claim(hopf_source_free_freund_rubin, proposition, proved, "Proposition 94.6", "At restored weak symmetry, for the stated invariant unwarped Berger-S5 times round-S2 class with a maximally symmetric external four-space, the two-derivative source-free eleven-dimensional supergravity equations require zero internal four-form and give the electric Freund-Rubin round product.").
source(hopf_source_free_freund_rubin, 'results/94_spin_hopf_trajectory_and_its_charge_lift.md', 'the-homogeneous-source-free-supergravity-comparison').
depends(hopf_source_free_freund_rubin, spin_seven_periods).
attempted_by(hopf_source_free_freund_rubin, gpt_6_2_sol_ultra).
checked_by(hopf_source_free_freund_rubin, gpt_6_2_sol_ultra, by_hand).
checked_by(hopf_source_free_freund_rubin, claude_fable_5_2, partial("Joint report of 20 Nov: invariant source-free form equations and incompatible fibre Ricci inequality in the stated unwarped family")).
addresses(t11, hopf_source_free_freund_rubin).
addresses(t18, hopf_source_free_freund_rubin).

claim(quotient_tensor_colour_gap, proposition, proved, "Proposition 95.1", "A specified quotient tensor and fibre projection leave the prior coloured quadratic operator unchanged. The stated gap inequality holds uniformly along the calibrated finite neck and fixed-shape shrink, making the first extra coloured boson the gluon circle harmonic at 1/L in this quotient action.").
source(quotient_tensor_colour_gap, 'results/95_coloured_threshold_in_the_quotient_tensor_action.md', 'exact-coloured-hessian-in-a-mixed-dimensional-action').
depends(quotient_tensor_colour_gap, rooted_colour_gap).
depends(quotient_tensor_colour_gap, dual_tensor_transverse_pencil).
depends(quotient_tensor_colour_gap, dual_tensor_finite_neck).
attempted_by(quotient_tensor_colour_gap, gpt_6_2_sol_ultra).
checked_by(quotient_tensor_colour_gap, gpt_6_2_sol_ultra, by_hand).
addresses(t4, quotient_tensor_colour_gap).
addresses(t13, quotient_tensor_colour_gap).
addresses(t14, quotient_tensor_colour_gap).
addresses(t18, quotient_tensor_colour_gap).

claim(quotient_tensor_free_fermion_shells, proposition, proved, "Proposition 95.2", "In the stated minimal Dirac actions without mass mixing, the vortex-neutral spectator has mass at least 1/(2 sqrt(2) a) and an excited degree-two spinor at least sqrt(15/512)/a. Together with the degree-one complement these free shells lie above the circle along the quotient path.").
source(quotient_tensor_free_fermion_shells, 'results/95_coloured_threshold_in_the_quotient_tensor_action.md', 'fermion-excitations-in-this-prescription').
depends(quotient_tensor_free_fermion_shells, vortex_neutral_spectator_tensor).
depends(quotient_tensor_free_fermion_shells, quotient_tensor_colour_gap).
depends(quotient_tensor_free_fermion_shells, matched_colour_trajectory).
attempted_by(quotient_tensor_free_fermion_shells, gpt_6_2_sol_ultra).
checked_by(quotient_tensor_free_fermion_shells, gpt_6_2_sol_ultra, by_hand).
addresses(t3, quotient_tensor_free_fermion_shells).
addresses(t13, quotient_tensor_free_fermion_shells).
addresses(t18, quotient_tensor_free_fermion_shells).

claim(local_tensor_mixing_comparison, proposition, proved, "Result 95, local tensor countertest", "In the specified local transverse comparison a nonzero magnetic coupling to a massive two-form lowers one positive eigenvalue below the bare internal eigenvalue. The quotient proof alone gives no corresponding gap bound in an unrestricted higher-dimensional mode space.").
source(local_tensor_mixing_comparison, 'results/95_coloured_threshold_in_the_quotient_tensor_action.md', 'a-local-tensor-countertest').
depends(local_tensor_mixing_comparison, dual_tensor_transverse_pencil).
depends(local_tensor_mixing_comparison, quotient_tensor_colour_gap).
attempted_by(local_tensor_mixing_comparison, gpt_6_2_sol_ultra).
checked_by(local_tensor_mixing_comparison, gpt_6_2_sol_ultra, by_hand).
addresses(t4, local_tensor_mixing_comparison).
addresses(t18, local_tensor_mixing_comparison).

claim(background_weak_multiplet_threshold, proposition, proved, "Proposition 96.1", "In the minimal one-doublet comparison and quantum Feynman gauge, the Abelian background-field W, Goldstone and ghost shift has the equal-mass Feynman-parameter weight 8-3(1-2x)^2. This gives a finite scheme-specific benchmark between the spacelike matching points.").
source(background_weak_multiplet_threshold, 'results/96_photon_thresholds_from_vectors_and_spectators.md', 'a-calculable-light-weak-gauge-contribution').
depends(background_weak_multiplet_threshold, finite_electric_matching).
depends(background_weak_multiplet_threshold, dual_tensor_finite_fit).
attempted_by(background_weak_multiplet_threshold, gpt_6_2_sol_ultra).
checked_by(background_weak_multiplet_threshold, gpt_6_2_sol_ultra, by_hand).
addresses(t4, background_weak_multiplet_threshold).
addresses(t13, background_weak_multiplet_threshold).
addresses(t18, background_weak_multiplet_threshold).

claim(positive_proca_current_comparison, proposition, proved, "Result 96, positive-current spin-one comparison", "In the stipulated pointlike on-shell Proca charge-plus-Pauli current, the finite pair window has distinct transverse, mixed and longitudinal contributions and a positive spectral density. The resulting window bound applies to that current and its chosen support.").
source(positive_proca_current_comparison, 'results/96_photon_thresholds_from_vectors_and_spectators.md', 'a-positive-current-spin-one-comparison').
depends(positive_proca_current_comparison, background_weak_multiplet_threshold).
attempted_by(positive_proca_current_comparison, gpt_6_2_sol_ultra).
checked_by(positive_proca_current_comparison, gpt_6_2_sol_ultra, by_hand).
addresses(t4, positive_proca_current_comparison).
addresses(t13, positive_proca_current_comparison).
addresses(t18, positive_proca_current_comparison).

claim(spectator_photon_subtraction_bound, proposition, proved, "Proposition 96.2", "For the round-sphere minimal neutral spectators in the quotient action, the nonlocal remainder after fixing local terms through squared spacelike t is absolutely convergent and is bounded by the stated constant times (Q r)^6. The finite local coefficients are independent data.").
source(spectator_photon_subtraction_bound, 'results/96_photon_thresholds_from_vectors_and_spectators.md', 'the-vortex-neutral-spectator-shells').
depends(spectator_photon_subtraction_bound, vortex_neutral_spectator_tensor).
depends(spectator_photon_subtraction_bound, quotient_tensor_free_fermion_shells).
attempted_by(spectator_photon_subtraction_bound, gpt_6_2_sol_ultra).
checked_by(spectator_photon_subtraction_bound, gpt_6_2_sol_ultra, by_hand).
addresses(t4, spectator_photon_subtraction_bound).
addresses(t13, spectator_photon_subtraction_bound).
addresses(t18, spectator_photon_subtraction_bound).

claim(thomson_radius_matching, proposition, conditional, "Result 96, matching the Thomson charge", "Given a specified small smooth threshold function in a common scheme and positive residual photon coefficient, the fixed-colour geometric derivative -14 I_chi-2 I_varphi provides a unique nearby physical-charge calibration of the two radii. Bounded threshold corrections leave the asymptotic long-neck obstruction in the stated action.").
source(thomson_radius_matching, 'results/96_photon_thresholds_from_vectors_and_spectators.md', 'matching-the-thomson-charge-along-the-path').
depends(thomson_radius_matching, dual_tensor_photon_cost).
depends(thomson_radius_matching, quotient_tensor_colour_gap).
depends(thomson_radius_matching, finite_electric_matching).
attempted_by(thomson_radius_matching, gpt_6_2_sol_ultra).
checked_by(thomson_radius_matching, gpt_6_2_sol_ultra, by_hand).
addresses(t4, thomson_radius_matching).
addresses(t13, thomson_radius_matching).
addresses(t18, thomson_radius_matching).

claim(hopf_transverse_current_pencil, proposition, proved, "Proposition 97.1", "In the stated sourced colour-singlet spin-one sectors Q=0,+/-1, the weak radial pencil couples to Hopf, auxiliary and coexact five-form profiles. The invariant form decomposition closes these sectors. The specified constant profiles give the exact photon and the lifted spinor charges.").
source(hopf_transverse_current_pencil, 'results/97_hopf_transverse_spectrum_and_current_match.md', 'the-hopf-metric-and-its-five-form-profile').
depends(hopf_transverse_current_pencil, hopf_diagonal_hypercharge).
depends(hopf_transverse_current_pencil, hopf_supported_spin_product).
depends(hopf_transverse_current_pencil, dual_tensor_transverse_pencil).
depends(hopf_transverse_current_pencil, rooted_current_projection).
attempted_by(hopf_transverse_current_pencil, gpt_6_2_sol_ultra).
checked_by(hopf_transverse_current_pencil, gpt_6_2_sol_ultra, by_hand).
addresses(t4, hopf_transverse_current_pencil).
addresses(t11, hopf_transverse_current_pencil).
addresses(t18, hopf_transverse_current_pencil).

claim(hopf_finite_current_fit, claim, numerical, "Result 97, finite weak inverse", "The specified finite transverse inverse at f_S=5 TeV reproduces the central weak contacts and poles and resolves vortex, locking and five-form sterile poles. Holding muon decay out gives GF about 1.161834e-5 GeV^-2, 0.078 percent above the single-doublet Born coupling relation from both measured pole masses, stripped leptonic width and pole angle, before radiative matching.").
source(hopf_finite_current_fit, 'results/97_hopf_transverse_spectrum_and_current_match.md', 'the-finite-weak-inverse').
depends(hopf_finite_current_fit, hopf_transverse_current_pencil).
depends(hopf_finite_current_fit, hopf_locking_weak_charges).
depends(hopf_finite_current_fit, dual_tensor_finite_fit).
attempted_by(hopf_finite_current_fit, gpt_6_2_sol_ultra).
checked_by(hopf_finite_current_fit, gpt_6_2_sol_ultra, python).
checked_by(hopf_finite_current_fit, gpt_6_1_terra, python).
addresses(t4, hopf_finite_current_fit).
addresses(t13, hopf_finite_current_fit).
addresses(t18, hopf_finite_current_fit).

claim(hopf_comoving_charged_limit, proposition, conditional, "Result 97, finite meridian and charged limit", "Along the specified fixed-shape spin Hopf shrink the three Abelian charge-one blocks decouple while the charged electric and magnetic tensor primitives survive. Assuming a finite positive limiting B H_N in the required strong window, the normalized charged resolvent is that of 93.2 with sigma_H=h_N^2/(3 I3).").
source(hopf_comoving_charged_limit, 'results/97_hopf_transverse_spectrum_and_current_match.md', 'finite-meridian-and-the-charged-limit').
depends(hopf_comoving_charged_limit, hopf_transverse_current_pencil).
depends(hopf_comoving_charged_limit, hopf_scalar_windows).
depends(hopf_comoving_charged_limit, dual_tensor_hadronic_resolvent).
attempted_by(hopf_comoving_charged_limit, gpt_6_2_sol_ultra).
checked_by(hopf_comoving_charged_limit, gpt_6_2_sol_ultra, by_hand).
addresses(t4, hopf_comoving_charged_limit).
addresses(t13, hopf_comoving_charged_limit).
addresses(t14, hopf_comoving_charged_limit).
addresses(t18, hopf_comoving_charged_limit).

claim(hopf_colour_octet_instability, proposition, proved, "Proposition 98.1", "For the supported round colour factor with zero volume-line penalties in the frozen weak and colour-dilaton restriction, the top-form colour octet has a physical negative second variation with m^2 B^2=4(29-4 sqrt(67))/7. The direction persists for sufficiently small stated spatial penalties.").
source(hopf_colour_octet_instability, 'results/98_hopf_colour_scalar_stability_and_thresholds.md', 'a-nonhomogeneous-colour-instability-with-a-stable-homogeneous-radius').
depends(hopf_colour_octet_instability, hopf_supported_spin_product).
depends(hopf_colour_octet_instability, projective_flux_octet).
attempted_by(hopf_colour_octet_instability, gpt_6_2_sol_ultra).
checked_by(hopf_colour_octet_instability, gpt_6_2_sol_ultra, by_hand).
checked_by(hopf_colour_octet_instability, claude_fable_5_2, partial("Joint report of 20 Nov: four-longitudinal, frozen-weak and frozen-colour-dilaton octet eigenvalue")).
addresses(t11, hopf_colour_octet_instability).
addresses(t14, hopf_colour_octet_instability).
addresses(t18, hopf_colour_octet_instability).

claim(hopf_intrinsic_colour_stabilizers, proposition, proved, "Proposition 98.2", "The stated positive intrinsic colour-leaf squares leave the backgrounds and the sourced transverse weak and Killing sectors unchanged. The scalar-derived colour sector has m^2 at least 8/B^2 off homogeneous modes in the frozen weak comparison for 0<c<=1, while in the coupled round weak-singlet core with conformally adjusted squares a degree-one weak-scale mode attains 5/B^2; the bound is 8/B^2 for degree at least two.").
source(hopf_intrinsic_colour_stabilizers, 'results/98_hopf_colour_scalar_stability_and_thresholds.md', 'two-positive-intrinsic-colour-terms').
depends(hopf_intrinsic_colour_stabilizers, hopf_colour_octet_instability).
depends(hopf_intrinsic_colour_stabilizers, hopf_transverse_current_pencil).
depends(hopf_intrinsic_colour_stabilizers, hopf_broken_colour_vectors).
attempted_by(hopf_intrinsic_colour_stabilizers, gpt_6_2_sol_ultra).
checked_by(hopf_intrinsic_colour_stabilizers, gpt_6_2_sol_ultra, by_hand).
addresses(t4, hopf_intrinsic_colour_stabilizers).
addresses(t14, hopf_intrinsic_colour_stabilizers).
addresses(t18, hopf_intrinsic_colour_stabilizers).

claim(hopf_projected_coloured_threshold, proposition, proved, "Proposition 98.3", "In the stated round weak-singlet coloured projection with the intrinsic stabilizers and colour-invariant volume-line amplitudes, the lower broken-Killing pole is the first positive coloured boson near the fitted scales. In the specified broken-path comparison its M^2 B^2 tends to 8 and the degree-one spin-two harmonic has M^2 B^2=5. The full nonround threshold needs its own bounds.").
source(hopf_projected_coloured_threshold, 'results/98_hopf_colour_scalar_stability_and_thresholds.md', 'the-projected-round-threshold-and-the-change-at-five').
depends(hopf_projected_coloured_threshold, hopf_intrinsic_colour_stabilizers).
depends(hopf_projected_coloured_threshold, hopf_broken_colour_vectors).
depends(hopf_projected_coloured_threshold, hopf_finite_current_fit).
attempted_by(hopf_projected_coloured_threshold, gpt_6_2_sol_ultra).
checked_by(hopf_projected_coloured_threshold, gpt_6_2_sol_ultra, by_hand).
checked_by(hopf_projected_coloured_threshold, claude_fable_5_2, partial("Joint report of 20 Nov: round projected threshold values reported with the check of the broken-vector crossings")).
addresses(t13, hopf_projected_coloured_threshold).
addresses(t14, hopf_projected_coloured_threshold).
addresses(t18, hopf_projected_coloured_threshold).

claim(hopf_nonround_covariant_core, proposition, proved, "Proposition 99.1", "For the covariant metric, five-form, dilaton and weak vortex core of the Hopf product, eliminating the light-cone constraints yields an additive colour and weak mass form. With the specified unadjusted intrinsic colour-leaf squares and unit colour-dilaton kinetic coefficient, 8/B^2 is a lower bound on squared masses in the nonconstant active one-factor scalar-derived block.").
source(hopf_nonround_covariant_core, 'results/99_nonround_hopf_colour_gap_and_level_crossing.md', 'the-nonround-constraint-split-with-a-magnetic-top-form').
depends(hopf_nonround_covariant_core, hopf_supported_spin_product).
depends(hopf_nonround_covariant_core, hopf_intrinsic_colour_stabilizers).
depends(hopf_nonround_covariant_core, vortex_constraint_squares).
attempted_by(hopf_nonround_covariant_core, gpt_6_2_sol_ultra).
checked_by(hopf_nonround_covariant_core, gpt_6_2_sol_ultra, by_hand).
addresses(t4, hopf_nonround_covariant_core).
addresses(t11, hopf_nonround_covariant_core).
addresses(t14, hopf_nonround_covariant_core).
addresses(t18, hopf_nonround_covariant_core).

claim(hopf_projected_nonround_boson, proposition, proved, "Proposition 99.2", "In the fixed projected bosonic action with quotient Higgs and tensor fields, the constrained weak Maxwell polarizations and the stated intrinsic stabilizers, the first positive coloured squared mass is the minimum of the first weak gluon excitation, the lower broken-Killing and form eigenvalue, and (15-sqrt(120))/B^2 from the j=2 colour vector. This claim concerns the prescribed projected fields.").
source(hopf_projected_nonround_boson, 'results/99_nonround_hopf_colour_gap_and_level_crossing.md', 'a-quotient-higgs-action-retaining-the-broken-killing-pair').
depends(hopf_projected_nonround_boson, hopf_nonround_covariant_core).
depends(hopf_projected_nonround_boson, hopf_broken_colour_vectors).
depends(hopf_projected_nonround_boson, hopf_projected_coloured_threshold).
depends(hopf_projected_nonround_boson, quotient_tensor_colour_gap).
attempted_by(hopf_projected_nonround_boson, gpt_6_2_sol_ultra).
checked_by(hopf_projected_nonround_boson, gpt_6_2_sol_ultra, by_hand).
addresses(t4, hopf_projected_nonround_boson).
addresses(t13, hopf_projected_nonround_boson).
addresses(t14, hopf_projected_nonround_boson).
addresses(t18, hopf_projected_nonround_boson).

claim(hopf_nonround_boson_crossing, proposition, proved, "Result 99, ordering on the matched path", "In the specified projected action the broken-Killing pole is first along the calibrated finite meridian. On the subsequent fixed-shape shrink it crosses the j=2 coloured shell once, at s=gamma_0(16-gamma_0)/(8-gamma_0) with gamma_0=15-sqrt(120). Thereafter the j=2 shell is first at sufficiently small a.").
source(hopf_nonround_boson_crossing, 'results/99_nonround_hopf_colour_gap_and_level_crossing.md', 'ordering-on-the-matched-path').
depends(hopf_nonround_boson_crossing, hopf_projected_nonround_boson).
depends(hopf_nonround_boson_crossing, hopf_finite_current_fit).
depends(hopf_nonround_boson_crossing, hopf_scalar_windows).
attempted_by(hopf_nonround_boson_crossing, gpt_6_2_sol_ultra).
checked_by(hopf_nonround_boson_crossing, gpt_6_2_sol_ultra, by_hand).
addresses(t13, hopf_nonround_boson_crossing).
addresses(t14, hopf_nonround_boson_crossing).
addresses(t18, hopf_nonround_boson_crossing).

claim(hopf_uniform_light_mass_inverse, proposition, proved, "Proposition 100.1", "On the specified broken Hopf path, strictly positive target ordinary or mirror masses with m_i B=m_{i,*} B_* and m_{i,*}<=280 GeV admit smooth fixed scale-dilaton Yukawa functions in the stated horizontal holomorphic link domain. The proof controls orthogonal weak and projective shells and the small-mass inverse.").
source(hopf_uniform_light_mass_inverse, 'results/100_hopf_light_fermion_window_and_hadronic_calibration.md', 'a-uniform-inverse-for-the-light-mass-links').
depends(hopf_uniform_light_mass_inverse, hopf_diagonal_hypercharge).
depends(hopf_uniform_light_mass_inverse, vortex_yukawa_half_interval).
depends(hopf_uniform_light_mass_inverse, quotient_tensor_free_fermion_shells).
depends(hopf_uniform_light_mass_inverse, hopf_finite_current_fit).
attempted_by(hopf_uniform_light_mass_inverse, gpt_6_2_sol_ultra).
checked_by(hopf_uniform_light_mass_inverse, gpt_6_2_sol_ultra, by_hand).
checked_by(hopf_uniform_light_mass_inverse, claude_fable_5_2, partial("Joint report of 20 Nov: the ratio below 63 and the 309 GeV comparison conditional on the chosen path")).
addresses(t3, hopf_uniform_light_mass_inverse).
addresses(t8, hopf_uniform_light_mass_inverse).
addresses(t13, hopf_uniform_light_mass_inverse).
addresses(t18, hopf_uniform_light_mass_inverse).

claim(hopf_mirror_particle_threshold, proposition, conditional, "Result 100, first omitted coloured particle", "With the stated ordinary calibration, six mirror-quark masses 280 B_*/B GeV and the assumptions on the horizontal spectrum, the first omitted coloured particle on the projected broken Hopf path is at the mirror threshold. The comoving subtraction point 250 B_*/B GeV admits six ordinary active quarks while all mirrors and extra bosons lie above it.").
source(hopf_mirror_particle_threshold, 'results/100_hopf_light_fermion_window_and_hadronic_calibration.md', 'the-first-omitted-coloured-particle-and-the-subtraction-point').
depends(hopf_mirror_particle_threshold, hopf_uniform_light_mass_inverse).
depends(hopf_mirror_particle_threshold, hopf_projected_nonround_boson).
depends(hopf_mirror_particle_threshold, hopf_nonround_boson_crossing).
attempted_by(hopf_mirror_particle_threshold, gpt_6_2_sol_ultra).
checked_by(hopf_mirror_particle_threshold, gpt_6_2_sol_ultra, by_hand).
addresses(t13, hopf_mirror_particle_threshold).
addresses(t14, hopf_mirror_particle_threshold).
addresses(t18, hopf_mirror_particle_threshold).

claim(hopf_comoving_hadronic_benchmark, proposition, conditional, "Result 100, common hadronic calibration", "With the specified fixed comoving quark mass ratios, six-flavour subtraction convention and independently calibrated strong and nucleon inputs, Lambda_3 B and H_N B stay constant along the broken path. The stated Born current and gap ratios follow in the projected action. The finite microscopic colour matching terms and restored twelve-flavour hadron scale require separate determinations.").
source(hopf_comoving_hadronic_benchmark, 'results/100_hopf_light_fermion_window_and_hadronic_calibration.md', 'the-first-omitted-coloured-particle-and-the-subtraction-point').
depends(hopf_comoving_hadronic_benchmark, hopf_mirror_particle_threshold).
depends(hopf_comoving_hadronic_benchmark, hopf_comoving_charged_limit).
depends(hopf_comoving_hadronic_benchmark, hadronic_colour_current).
depends(hopf_comoving_hadronic_benchmark, dual_tensor_finite_fit).
attempted_by(hopf_comoving_hadronic_benchmark, gpt_6_2_sol_ultra).
checked_by(hopf_comoving_hadronic_benchmark, gpt_6_2_sol_ultra, by_hand).
addresses(t4, hopf_comoving_hadronic_benchmark).
addresses(t13, hopf_comoving_hadronic_benchmark).
addresses(t18, hopf_comoving_hadronic_benchmark).

claim(hopf_thomson_auxiliary_calibration, proposition, conditional, "Result 100, auxiliary Thomson calibration", "For the fixed supported Hopf action away from exhaustion of its auxiliary photon norm, a specified small smooth full threshold function allows an implicit Thomson calibration by the flat auxiliary Maxwell modulus at fixed B and a. The required correction includes the mirror loops of the actual retained spectrum.").
source(hopf_thomson_auxiliary_calibration, 'results/100_hopf_light_fermion_window_and_hadronic_calibration.md', 'the-first-omitted-coloured-particle-and-the-subtraction-point').
depends(hopf_thomson_auxiliary_calibration, hopf_scalar_windows).
depends(hopf_thomson_auxiliary_calibration, hopf_mirror_particle_threshold).
depends(hopf_thomson_auxiliary_calibration, thomson_radius_matching).
attempted_by(hopf_thomson_auxiliary_calibration, gpt_6_2_sol_ultra).
checked_by(hopf_thomson_auxiliary_calibration, gpt_6_2_sol_ultra, by_hand).
addresses(t4, hopf_thomson_auxiliary_calibration).
addresses(t13, hopf_thomson_auxiliary_calibration).
addresses(t18, hopf_thomson_auxiliary_calibration).

claim(hopf_full_maxwell_coexact_block, proposition, proved, "Proposition 101.1", "On the supported spin Hopf product with the prescribed quotient roots, volume orbit and two-period tensor, restoration of the vortex Maxwell Killing one-forms changes only the colour-Killing four-dimensional scalar block. Its canonical coexact form couples the metric, five-form and Maxwell variables through the stated nonnegative weak vortex form and constant colour squares. The sourced transverse weak pencil stays fixed.").
source(hopf_full_maxwell_coexact_block, 'results/101_hopf_threshold_with_the_full_vortex_maxwell_field.md', 'the-adjoint-metric-five-form-and-maxwell-block').
depends(hopf_full_maxwell_coexact_block, hopf_nonround_covariant_core).
depends(hopf_full_maxwell_coexact_block, hopf_projected_nonround_boson).
depends(hopf_full_maxwell_coexact_block, hopf_transverse_current_pencil).
depends(hopf_full_maxwell_coexact_block, vortex_constraint_squares).
attempted_by(hopf_full_maxwell_coexact_block, gpt_6_2_sol_ultra).
checked_by(hopf_full_maxwell_coexact_block, gpt_6_2_sol_ultra, by_hand).
addresses(t4, hopf_full_maxwell_coexact_block).
addresses(t14, hopf_full_maxwell_coexact_block).
addresses(t18, hopf_full_maxwell_coexact_block).

claim(hopf_full_maxwell_matched_threshold, proposition, proved, "Proposition 101.2 and the axial scalar limit", "When the first positive weak scalar Laplacian eigenvalue is at least f_S^2/I3, restoring the full vortex Maxwell field preserves the first coloured boson, including the calibrated crossing to the j=2 level. With the same horizontal fermion domain and mass schedule the six-flavour interval below the mirror threshold persists. The lowest restored coexact scalar has B^2 M^2 tending to 8 on fixed-shape shrink.").
source(hopf_full_maxwell_matched_threshold, 'results/101_hopf_threshold_with_the_full_vortex_maxwell_field.md', 'the-calibrated-nonround-path').
depends(hopf_full_maxwell_matched_threshold, hopf_full_maxwell_coexact_block).
depends(hopf_full_maxwell_matched_threshold, hopf_nonround_boson_crossing).
depends(hopf_full_maxwell_matched_threshold, hopf_mirror_particle_threshold).
attempted_by(hopf_full_maxwell_matched_threshold, gpt_6_2_sol_ultra).
checked_by(hopf_full_maxwell_matched_threshold, gpt_6_2_sol_ultra, by_hand).
addresses(t4, hopf_full_maxwell_matched_threshold).
addresses(t13, hopf_full_maxwell_matched_threshold).
addresses(t14, hopf_full_maxwell_matched_threshold).
addresses(t18, hopf_full_maxwell_matched_threshold).

claim(hopf_full_maxwell_round_scalar, proposition, proved, "Proposition 101.3", "At exact round weak restoration in the same supported Hopf action, the additional weak degree-one coloured scalar triplet has squared mass lambda+mu-sqrt(lambda^2+mu^2), where lambda=8/B^2 and mu=1/a^2. The first positive coloured boson is the minimum of this scalar, the lower broken-Killing level and the j=2 vector level. The scalar can be first at large weak radius.").
source(hopf_full_maxwell_round_scalar, 'results/101_hopf_threshold_with_the_full_vortex_maxwell_field.md', 'exact-round-scalar-and-the-large-weak-radius-comparison').
depends(hopf_full_maxwell_round_scalar, hopf_full_maxwell_coexact_block).
depends(hopf_full_maxwell_round_scalar, hopf_projected_nonround_boson).
attempted_by(hopf_full_maxwell_round_scalar, gpt_6_2_sol_ultra).
checked_by(hopf_full_maxwell_round_scalar, gpt_6_2_sol_ultra, by_hand).
addresses(t4, hopf_full_maxwell_round_scalar).
addresses(t14, hopf_full_maxwell_round_scalar).
addresses(t18, hopf_full_maxwell_round_scalar).

claim(hopf_volume_tensor_rank_one_potential, proposition, proved, "Proposition 102.1", "The specified invariant quartic for a charged ambient chiral three-form has a single rank-one vacuum orbit and a positive normal Hessian. The constant physical normal variables are a neutral radial scalar and a weak-singlet complex colour sextet of charge -2/3. Both normal masses are independently tunable at fixed locking stiffness.").
source(hopf_volume_tensor_rank_one_potential, 'results/102_hopf_volume_tensor_amplitude_and_auxiliary_tower.md', 'polynomial-potential-and-the-colour-sextet').
depends(hopf_volume_tensor_rank_one_potential, hopf_diagonal_hypercharge).
depends(hopf_volume_tensor_rank_one_potential, hopf_broken_colour_vectors).
attempted_by(hopf_volume_tensor_rank_one_potential, gpt_6_2_sol_ultra).
checked_by(hopf_volume_tensor_rank_one_potential, gpt_6_2_sol_ultra, by_hand).
addresses(t4, hopf_volume_tensor_rank_one_potential).
addresses(t14, hopf_volume_tensor_rank_one_potential).
addresses(t18, hopf_volume_tensor_rank_one_potential).

claim(hopf_full_auxiliary_coloured_minimum, proposition, proved, "Proposition 102.2", "The fixed fibration action with all colour harmonics of the volume tensor and the full auxiliary Maxwell field keeps the specified Killing projection, quotient couplings and horizontal fermion domain. On the calibrated path the first additional coloured bosonic squared mass is the minimum of the previous level and kappa/B^2, the constant sextet squared mass. For kappa above 15-sqrt(120) the calibrated crossing and six-flavour window persist. The sourced weak tree pencil is unchanged.").
source(hopf_full_auxiliary_coloured_minimum, 'results/102_hopf_volume_tensor_amplitude_and_auxiliary_tower.md', 'fibre-harmonics-and-the-full-auxiliary-gauge-field').
depends(hopf_full_auxiliary_coloured_minimum, hopf_volume_tensor_rank_one_potential).
depends(hopf_full_auxiliary_coloured_minimum, hopf_full_maxwell_matched_threshold).
depends(hopf_full_auxiliary_coloured_minimum, hopf_transverse_current_pencil).
attempted_by(hopf_full_auxiliary_coloured_minimum, gpt_6_2_sol_ultra).
checked_by(hopf_full_auxiliary_coloured_minimum, gpt_6_2_sol_ultra, by_hand).
addresses(t4, hopf_full_auxiliary_coloured_minimum).
addresses(t13, hopf_full_auxiliary_coloured_minimum).
addresses(t14, hopf_full_auxiliary_coloured_minimum).
addresses(t18, hopf_full_auxiliary_coloured_minimum).

claim(hopf_local_volume_tensor_rayleigh_test, proposition, proved, "Proposition 102.3", "Replacing the projected connection in the volume-tensor kinetic term by the vertical Levi-Civita horizontal derivative adds a mass-form contribution on the exhibited transverse j=2 colour vector. Its part perpendicular to the auxiliary phase is 17 f_S^2/(60 I3) in the normalized metric slot. The calculation evaluates one Rayleigh direction in the local coupling.").
source(hopf_local_volume_tensor_rayleigh_test, 'results/102_hopf_volume_tensor_amplitude_and_auxiliary_tower.md', 'a-local-metric-connection-test-at-the-first-vector-shell').
depends(hopf_local_volume_tensor_rayleigh_test, hopf_volume_tensor_rank_one_potential).
depends(hopf_local_volume_tensor_rayleigh_test, hopf_full_auxiliary_coloured_minimum).
attempted_by(hopf_local_volume_tensor_rayleigh_test, gpt_6_2_sol_ultra).
checked_by(hopf_local_volume_tensor_rayleigh_test, gpt_6_2_sol_ultra, by_hand).
checked_by(hopf_local_volume_tensor_rayleigh_test, claude_fable_5_2, partial("Joint report of 20 Nov: the 17/240 trial coefficient")).
addresses(t4, hopf_local_volume_tensor_rayleigh_test).
addresses(t14, hopf_local_volume_tensor_rayleigh_test).
addresses(t18, hopf_local_volume_tensor_rayleigh_test).

claim(hopf_local_coexact_shell_closure, proposition, proved, "Proposition 103.1", "For the weak-constant transverse spin Hopf comparison with the local vertical Levi-Civita derivative, the entire coexact j=2 colour shell has the stated compressed perpendicular and phase stiffnesses. Its octet and sextet blocks close with their five-form partners. The triplet and fifteen-dimensional blocks also couple to the specified exact shifts and auxiliary Maxwell vectors, and the latter also has a coexact j=4 partner.").
source(hopf_local_coexact_shell_closure, 'results/103_hopf_local_connection_transverse_shell.md', 'the-local-form-on-the-full-quadratic-harmonic-shell').
depends(hopf_local_coexact_shell_closure, hopf_local_volume_tensor_rayleigh_test).
depends(hopf_local_coexact_shell_closure, hopf_full_auxiliary_coloured_minimum).
depends(hopf_local_coexact_shell_closure, hopf_full_maxwell_coexact_block).
attempted_by(hopf_local_coexact_shell_closure, gpt_6_2_sol_ultra).
checked_by(hopf_local_coexact_shell_closure, gpt_6_2_sol_ultra, by_hand).
addresses(t4, hopf_local_coexact_shell_closure).
addresses(t14, hopf_local_coexact_shell_closure).
addresses(t18, hopf_local_coexact_shell_closure).

claim(hopf_local_exact_shift_blocks, proposition, proved, "Proposition 103.2", "Minimizing over the exact external coordinate shift in the stated weak-constant transverse mass form yields the finite three-variable triplet matrix and five-variable fifteen-dimensional blocks. For positive locking stiffness and finite positive auxiliary inverse coupling, the lowest triplet squared mass in units of B^-2 lies strictly between 15-sqrt(120) and 5.").
source(hopf_local_exact_shift_blocks, 'results/103_hopf_local_connection_transverse_shell.md', 'exact-gradient-shifts-and-the-auxiliary-vector').
depends(hopf_local_exact_shift_blocks, hopf_local_coexact_shell_closure).
depends(hopf_local_exact_shift_blocks, hopf_full_maxwell_coexact_block).
attempted_by(hopf_local_exact_shift_blocks, gpt_6_2_sol_ultra).
checked_by(hopf_local_exact_shift_blocks, gpt_6_2_sol_ultra, by_hand).
addresses(t4, hopf_local_exact_shift_blocks).
addresses(t14, hopf_local_exact_shift_blocks).
addresses(t18, hopf_local_exact_shift_blocks).

claim(hopf_local_transverse_vector_minimum, proposition, proved, "Proposition 103.3", "In the locally coupled weak-constant coloured transverse vector comparison, the first extra level is the minimum over the broken-Killing, triplet and fifteen-dimensional blocks. On the fitted fixed-shape shrink the charge-magnitude 1/6 triplet eventually minimizes, with B^2 times the squared mass tending to about 4.99246. The spin-zero constraints remain a separate problem.").
source(hopf_local_transverse_vector_minimum, 'results/103_hopf_local_connection_transverse_shell.md', 'the-lowest-weak-constant-vector-on-shrink').
depends(hopf_local_transverse_vector_minimum, hopf_local_exact_shift_blocks).
depends(hopf_local_transverse_vector_minimum, hopf_broken_colour_vectors).
depends(hopf_local_transverse_vector_minimum, hopf_comoving_charged_limit).
attempted_by(hopf_local_transverse_vector_minimum, gpt_6_2_sol_ultra).
checked_by(hopf_local_transverse_vector_minimum, gpt_6_2_sol_ultra, by_hand).
addresses(t4, hopf_local_transverse_vector_minimum).
addresses(t14, hopf_local_transverse_vector_minimum).
addresses(t18, hopf_local_transverse_vector_minimum).

claim(hopf_local_scalar_constraint_positivity, proposition, proved, "Proposition 104.1", "At a finite weak member of the marked local Hopf action with the specified quotient roots, tensor and intrinsic stabilizers, the coloured spin-zero static form and reduced kinetic form are nonnegative. The kinetic proof eliminates the metric shift and temporal gauge constraints jointly. This gives nonnegative squared masses on the propagating positive-kinetic sector.").
source(hopf_local_scalar_constraint_positivity, 'results/104_hopf_local_scalar_constraints_and_sextet.md', 'the-temporal-constraints-of-the-coloured-problem').
depends(hopf_local_scalar_constraint_positivity, hopf_nonround_covariant_core).
depends(hopf_local_scalar_constraint_positivity, hopf_full_maxwell_coexact_block).
depends(hopf_local_scalar_constraint_positivity, hopf_local_exact_shift_blocks).
attempted_by(hopf_local_scalar_constraint_positivity, gpt_6_2_sol_ultra).
checked_by(hopf_local_scalar_constraint_positivity, gpt_6_2_sol_ultra, by_hand).
addresses(t4, hopf_local_scalar_constraint_positivity).
addresses(t14, hopf_local_scalar_constraint_positivity).
addresses(t18, hopf_local_scalar_constraint_positivity).

claim(hopf_local_vertical_orientation_bound, proposition, proved, "Proposition 104.2", "For the local augmented derivative on a round colour leaf, in divergence-free metric gauge the nonconstant orbit part perpendicular to the phase and gradient-generated orientations has vertical energy at least 5/B^2 times its own kinetic norm. Eliminating the exact external-coordinate shift projects the matching horizontal derivative off the full gradient image.").
source(hopf_local_vertical_orientation_bound, 'results/104_hopf_local_scalar_constraints_and_sextet.md', 'the-vertical-orientation-bound-and-exact-shifts').
depends(hopf_local_vertical_orientation_bound, hopf_local_scalar_constraint_positivity).
depends(hopf_local_vertical_orientation_bound, hopf_local_exact_shift_blocks).
attempted_by(hopf_local_vertical_orientation_bound, gpt_6_2_sol_ultra).
checked_by(hopf_local_vertical_orientation_bound, gpt_6_2_sol_ultra, by_hand).
addresses(t4, hopf_local_vertical_orientation_bound).
addresses(t14, hopf_local_vertical_orientation_bound).
addresses(t18, hopf_local_vertical_orientation_bound).

claim(hopf_local_normal_scalar_towers, proposition, proved, "Proposition 104.3", "For the marked local action the normal sextet and radial amplitudes decouple at quadratic order and have exact product towers from their colour scalar harmonics and weak scalar eigenvalues. The constant weak-singlet sextet of charge -2/3 has squared mass kappa/B^2, with its conjugate.").
source(hopf_local_normal_scalar_towers, 'results/104_hopf_local_scalar_constraints_and_sextet.md', 'the-exact-normal-scalar-tower').
depends(hopf_local_normal_scalar_towers, hopf_volume_tensor_rank_one_potential).
depends(hopf_local_normal_scalar_towers, hopf_local_scalar_constraint_positivity).
attempted_by(hopf_local_normal_scalar_towers, gpt_6_2_sol_ultra).
checked_by(hopf_local_normal_scalar_towers, gpt_6_2_sol_ultra, by_hand).
addresses(t4, hopf_local_normal_scalar_towers).
addresses(t13, hopf_local_normal_scalar_towers).
addresses(t14, hopf_local_normal_scalar_towers).
addresses(t18, hopf_local_normal_scalar_towers).

claim(hopf_local_calibrated_coloured_gap, proposition, proved, "Proposition 104.4", "On the fitted broken path of the marked local action the coloured boson bound off the gluons is B^2 M^2 at least min(g(s), 15-sqrt(120), kappa). With the calibrated horizontal fermion spectrum, kappa=9 and kappa=9/2 retain the mirror-first six-flavour window, while kappa=0.001 gives a first omitted sextet.").
source(hopf_local_calibrated_coloured_gap, 'results/104_hopf_local_scalar_constraints_and_sextet.md', 'a-common-massive-bound-along-the-calibrated-path').
depends(hopf_local_calibrated_coloured_gap, hopf_local_vertical_orientation_bound).
depends(hopf_local_calibrated_coloured_gap, hopf_local_normal_scalar_towers).
depends(hopf_local_calibrated_coloured_gap, hopf_full_maxwell_matched_threshold).
depends(hopf_local_calibrated_coloured_gap, hopf_mirror_particle_threshold).
attempted_by(hopf_local_calibrated_coloured_gap, gpt_6_2_sol_ultra).
checked_by(hopf_local_calibrated_coloured_gap, gpt_6_2_sol_ultra, by_hand).
addresses(t4, hopf_local_calibrated_coloured_gap).
addresses(t13, hopf_local_calibrated_coloured_gap).
addresses(t14, hopf_local_calibrated_coloured_gap).
addresses(t18, hopf_local_calibrated_coloured_gap).

claim(hopf_local_full_boson_ordering, proposition, proved, "Proposition 104.5", "In the stated local action, mu B^2>=55/3 gives a 5/B^2 spin-zero gap off the constant sextet and locates the spin-one minimum below that scale in the weak-constant blocks. For the fitted path with kappa>=5 the broken Killing vector is first on the finite leg and the three-vector comparison gives the first extra boson on shrink, eventually the triplet. For kappa=9/2 the constant sextet is first sufficiently late.").
source(hopf_local_full_boson_ordering, 'results/104_hopf_local_scalar_constraints_and_sextet.md', 'sharp-ordering-after-the-weak-direction-gap-opens').
depends(hopf_local_full_boson_ordering, hopf_local_calibrated_coloured_gap).
depends(hopf_local_full_boson_ordering, hopf_local_transverse_vector_minimum).
depends(hopf_local_full_boson_ordering, hopf_local_normal_scalar_towers).
attempted_by(hopf_local_full_boson_ordering, gpt_6_2_sol_ultra).
checked_by(hopf_local_full_boson_ordering, gpt_6_2_sol_ultra, by_hand).
addresses(t4, hopf_local_full_boson_ordering).
addresses(t13, hopf_local_full_boson_ordering).
addresses(t14, hopf_local_full_boson_ordering).
addresses(t18, hopf_local_full_boson_ordering).

claim(hopf_bulk_two_form_pullback, proposition, proved, "Proposition 105.1", "In the fixed Hopf product flux sector the normalized bulk two-form reduces to the original colour-constant electric Bianchi and magnetic field equation. Pulled-back sources leave the extra coloured tensor modes free with squared mass at least 5/B^2. Relative Chern–Weil transgressions preserve the existing pullback descent variation, with full anomaly completion a separate requirement.").
source(hopf_bulk_two_form_pullback, 'results/105_hopf_bulk_tensor_and_magnetic_colour_pole.md', 'a-bulk-form-with-the-same-two-periods').
depends(hopf_bulk_two_form_pullback, tensor_sphere_pushforward).
depends(hopf_bulk_two_form_pullback, dual_tensor_transverse_pencil).
depends(hopf_bulk_two_form_pullback, hopf_local_full_boson_ordering).
attempted_by(hopf_bulk_two_form_pullback, gpt_6_2_sol_ultra).
checked_by(hopf_bulk_two_form_pullback, gpt_6_2_sol_ultra, by_hand).
checked_by(hopf_bulk_two_form_pullback, claude_fable_5_2, partial("Joint report of 20 Nov: spectra of the pullback-source problem in Proposition 105.1")).
addresses(t4, hopf_bulk_two_form_pullback).
addresses(t11, hopf_bulk_two_form_pullback).
addresses(t14, hopf_bulk_two_form_pullback).
addresses(t18, hopf_bulk_two_form_pullback).

claim(hopf_bulk_tensor_local_transverse_form, proposition, proved, "Proposition 105.2", "For each nonconstant colour scalar harmonic in the local sourced transverse tensor problem, product Hodge projection allocates electric source weights mu_n/(lambda_C+mu_n) and lambda_C/(lambda_C+mu_n). Massive two-form dualization gives the stated magnetic square and kinetic denominator lambda_C+mu_n.").
source(hopf_bulk_tensor_local_transverse_form, 'results/105_hopf_bulk_tensor_and_magnetic_colour_pole.md', 'transverse-tensor-harmonics-with-local-sources').
depends(hopf_bulk_tensor_local_transverse_form, hopf_bulk_two_form_pullback).
depends(hopf_bulk_tensor_local_transverse_form, dual_tensor_transverse_pencil).
attempted_by(hopf_bulk_tensor_local_transverse_form, gpt_6_2_sol_ultra).
checked_by(hopf_bulk_tensor_local_transverse_form, gpt_6_2_sol_ultra, by_hand).
addresses(t4, hopf_bulk_tensor_local_transverse_form).
addresses(t14, hopf_bulk_tensor_local_transverse_form).
addresses(t18, hopf_bulk_tensor_local_transverse_form).

claim(hopf_bulk_tensor_aligned_transverse_gap, proposition, proved, "Proposition 105.3", "With both vortex sources localized and the weak tangent curvature term kept pulled back, the coloured transverse tensor form obeys Q_T at least c_T lambda_C K_T, with c_T=Z6/(Z6+49 Z_D). On the central fixed-shape shrink the first extra transverse vector has B^2 M^2 tending to 5 c_T, about 0.8272, above the mirrors. The full particle threshold still requires a scalar comparison.").
source(hopf_bulk_tensor_aligned_transverse_gap, 'results/105_hopf_bulk_tensor_and_magnetic_colour_pole.md', 'transverse-tensor-harmonics-with-local-sources').
depends(hopf_bulk_tensor_aligned_transverse_gap, hopf_bulk_tensor_local_transverse_form).
depends(hopf_bulk_tensor_aligned_transverse_gap, hopf_local_calibrated_coloured_gap).
depends(hopf_bulk_tensor_aligned_transverse_gap, hopf_mirror_particle_threshold).
attempted_by(hopf_bulk_tensor_aligned_transverse_gap, gpt_6_2_sol_ultra).
checked_by(hopf_bulk_tensor_aligned_transverse_gap, gpt_6_2_sol_ultra, by_hand).
addresses(t4, hopf_bulk_tensor_aligned_transverse_gap).
addresses(t13, hopf_bulk_tensor_aligned_transverse_gap).
addresses(t14, hopf_bulk_tensor_aligned_transverse_gap).
addresses(t18, hopf_bulk_tensor_aligned_transverse_gap).

claim(hopf_bulk_tensor_independent_magnetic_pole, proposition, proved, "Proposition 105.4", "With the weak tangent curvature contribution also localized, the nonround fixed-shape shrink has a charge-magnitude 1/6 coloured transverse pole with M^2=O(a^2/B^4). It eventually enters below the mirror threshold. For the central b=0.001 comparison the trial gives a sufficient crossing scale near B^-1=1.34 TeV.").
source(hopf_bulk_tensor_independent_magnetic_pole, 'results/105_hopf_bulk_tensor_and_magnetic_colour_pole.md', 'the-local-weak-curvature-source-on-nonround-shrink').
depends(hopf_bulk_tensor_independent_magnetic_pole, hopf_bulk_tensor_local_transverse_form).
depends(hopf_bulk_tensor_independent_magnetic_pole, hopf_comoving_charged_limit).
depends(hopf_bulk_tensor_independent_magnetic_pole, hopf_mirror_particle_threshold).
attempted_by(hopf_bulk_tensor_independent_magnetic_pole, gpt_6_2_sol_ultra).
checked_by(hopf_bulk_tensor_independent_magnetic_pole, gpt_6_2_sol_ultra, by_hand).
addresses(t4, hopf_bulk_tensor_independent_magnetic_pole).
addresses(t13, hopf_bulk_tensor_independent_magnetic_pole).
addresses(t14, hopf_bulk_tensor_independent_magnetic_pole).
addresses(t18, hopf_bulk_tensor_independent_magnetic_pole).

claim(hopf_bulk_tensor_anisotropic_vector_order, proposition, proved, "Proposition 105.5", "With all stated local weak sources, weighting the tensor norm by powers of the prescribed positive dilaton function zeta for its colour legs preserves the previous first transverse vector on the fitted broken path for sufficiently large coefficient. The colour-constant tensor action and finite-member bulk propagation are retained. The conclusion concerns transverse vectors in this anisotropic action.").
source(hopf_bulk_tensor_anisotropic_vector_order, 'results/105_hopf_bulk_tensor_and_magnetic_colour_pole.md', 'a-fixed-tensor-kinetic-term-that-retains-the-transverse-ordering').
depends(hopf_bulk_tensor_anisotropic_vector_order, hopf_bulk_tensor_independent_magnetic_pole).
depends(hopf_bulk_tensor_anisotropic_vector_order, hopf_local_transverse_vector_minimum).
depends(hopf_bulk_tensor_anisotropic_vector_order, hopf_nonround_covariant_core).
attempted_by(hopf_bulk_tensor_anisotropic_vector_order, gpt_6_2_sol_ultra).
checked_by(hopf_bulk_tensor_anisotropic_vector_order, gpt_6_2_sol_ultra, by_hand).
addresses(t4, hopf_bulk_tensor_anisotropic_vector_order).
addresses(t13, hopf_bulk_tensor_anisotropic_vector_order).
addresses(t14, hopf_bulk_tensor_anisotropic_vector_order).
addresses(t18, hopf_bulk_tensor_anisotropic_vector_order).

claim(hopf_bulk_tensor_scalar_gauss_gap, proposition, proved, "Proposition 106.1", "With both specified local weak sources and zeta at least one, the scalar Gauss reduction of the bulk tensor preserves the marked Hopf scalar bounds. In the anisotropic action of 105.5 at sufficiently large fixed coefficient, the scalar and transverse estimates together give the full classical boson ordering. The calibrated first additional particles are mirrors for kappa=9 or 9/2 and the sextet for kappa=0.001. Global anomaly data remain separate.").
source(hopf_bulk_tensor_scalar_gauss_gap, 'results/106_hopf_tensor_scalar_gap_and_sextet_matching.md', 'scalar-gauss-elimination-with-the-bulk-tensor').
depends(hopf_bulk_tensor_scalar_gauss_gap, hopf_bulk_two_form_pullback).
depends(hopf_bulk_tensor_scalar_gauss_gap, hopf_bulk_tensor_anisotropic_vector_order).
depends(hopf_bulk_tensor_scalar_gauss_gap, hopf_local_full_boson_ordering).
depends(hopf_bulk_tensor_scalar_gauss_gap, hopf_local_calibrated_coloured_gap).
attempted_by(hopf_bulk_tensor_scalar_gauss_gap, gpt_6_2_sol_ultra).
checked_by(hopf_bulk_tensor_scalar_gauss_gap, gpt_6_2_sol_ultra, by_hand).
addresses(t4, hopf_bulk_tensor_scalar_gauss_gap).
addresses(t13, hopf_bulk_tensor_scalar_gauss_gap).
addresses(t14, hopf_bulk_tensor_scalar_gauss_gap).
addresses(t18, hopf_bulk_tensor_scalar_gauss_gap).

claim(hopf_sextet_colour_running_threshold, proposition, proved, "Proposition 106.2", "At a fixed renormalized MS-bar input and fixed ordinary quark matching masses, the one-loop step threshold of the complex sextet changes the relative three-flavour strong scale by (M6/mu_*)^(5/54), about 0.96690. Changing the nucleon conversion by that same ratio requires further retuning of the light mass ratios.").
source(hopf_sextet_colour_running_threshold, 'results/106_hopf_tensor_scalar_gap_and_sextet_matching.md', 'strong-running-through-the-light-sextet').
depends(hopf_sextet_colour_running_threshold, hopf_bulk_tensor_scalar_gauss_gap).
depends(hopf_sextet_colour_running_threshold, hopf_local_normal_scalar_towers).
depends(hopf_sextet_colour_running_threshold, hopf_comoving_hadronic_benchmark).
attempted_by(hopf_sextet_colour_running_threshold, gpt_6_2_sol_ultra).
checked_by(hopf_sextet_colour_running_threshold, gpt_6_2_sol_ultra, by_hand).
checked_by(hopf_sextet_colour_running_threshold, claude_fable_5_2, partial("Joint report of 20 Nov: colour threshold comparison in Proposition 106.2")).
addresses(t13, hopf_sextet_colour_running_threshold).
addresses(t18, hopf_sextet_colour_running_threshold).

claim(hopf_sextet_euclidean_photon_subtraction, proposition, proved, "Proposition 106.3", "The minimally coupled constant sextet contributes the stated finite one-loop Euclidean scalar logarithm, with electric weight 8/3. At the specified comoving subtraction point the inverse-alpha difference is 0.0128633. Holding that spacelike subtraction and other terms fixed makes the first-order scalar-only compensation delta I_C=-0.016378.").
source(hopf_sextet_euclidean_photon_subtraction, 'results/106_hopf_tensor_scalar_gap_and_sextet_matching.md', 'finite-euclidean-photon-subtraction').
depends(hopf_sextet_euclidean_photon_subtraction, hopf_local_normal_scalar_towers).
depends(hopf_sextet_euclidean_photon_subtraction, hopf_thomson_auxiliary_calibration).
depends(hopf_sextet_euclidean_photon_subtraction, spectator_photon_subtraction_bound).
attempted_by(hopf_sextet_euclidean_photon_subtraction, gpt_6_2_sol_ultra).
checked_by(hopf_sextet_euclidean_photon_subtraction, gpt_6_2_sol_ultra, by_hand).
addresses(t4, hopf_sextet_euclidean_photon_subtraction).
addresses(t13, hopf_sextet_euclidean_photon_subtraction).
addresses(t18, hopf_sextet_euclidean_photon_subtraction).

claim(hopf_radial_tower_kinetic_matching_inputs, proposition, proved, "Proposition 106.4", "The formal one-loop once-subtracted photon sum over the minimal radial scalar tower at zero weak excitation diverges in its momentum-squared slope. Independent finite auxiliary Maxwell and quotient colour kinetic coefficients can change the photon and colour matches without changing the classical stationary backgrounds. A regulator and a full ultraviolet matching prescription are separate inputs.").
source(hopf_radial_tower_kinetic_matching_inputs, 'results/106_hopf_tensor_scalar_gap_and_sextet_matching.md', 'the-infinite-tower-and-finite-local-matching-terms').
depends(hopf_radial_tower_kinetic_matching_inputs, hopf_local_normal_scalar_towers).
depends(hopf_radial_tower_kinetic_matching_inputs, hopf_sextet_euclidean_photon_subtraction).
depends(hopf_radial_tower_kinetic_matching_inputs, finite_electric_matching).
attempted_by(hopf_radial_tower_kinetic_matching_inputs, gpt_6_2_sol_ultra).
checked_by(hopf_radial_tower_kinetic_matching_inputs, gpt_6_2_sol_ultra, by_hand).
addresses(t4, hopf_radial_tower_kinetic_matching_inputs).
addresses(t13, hopf_radial_tower_kinetic_matching_inputs).
addresses(t14, hopf_radial_tower_kinetic_matching_inputs).
addresses(t18, hopf_radial_tower_kinetic_matching_inputs).

claim(hopf_isotropic_tensor_sharp_soft_mass, proposition, proved, "Proposition 107.1", "In the stated isotropic local-curvature action on sufficiently late fixed nonround shrink, the first additional coloured boson for any fixed positive sextet stiffness is a complex spin-one triplet and its conjugate. Its squared mass is asymptotic to C_soft a^2/B^4, with C_soft the stated electric-period-constrained weak infimum, about 6598 for b=0.001. The weak-constant magnetic dual vector carries kinetic fraction 1-O((a/B)^2).").
source(hopf_isotropic_tensor_sharp_soft_mass, 'results/107_hopf_soft_tensor_mass_and_current.md', 'a-sharp-fixed-shape-mass-limit').
depends(hopf_isotropic_tensor_sharp_soft_mass, hopf_bulk_tensor_independent_magnetic_pole).
depends(hopf_isotropic_tensor_sharp_soft_mass, hopf_bulk_tensor_local_transverse_form).
depends(hopf_isotropic_tensor_sharp_soft_mass, hopf_bulk_tensor_scalar_gauss_gap).
attempted_by(hopf_isotropic_tensor_sharp_soft_mass, gpt_6_2_sol_ultra).
checked_by(hopf_isotropic_tensor_sharp_soft_mass, gpt_6_2_sol_ultra, by_hand).
addresses(t4, hopf_isotropic_tensor_sharp_soft_mass).
addresses(t13, hopf_isotropic_tensor_sharp_soft_mass).
addresses(t14, hopf_isotropic_tensor_sharp_soft_mass).
addresses(t18, hopf_isotropic_tensor_sharp_soft_mass).

claim(hopf_soft_tensor_ward_and_covariant_term, proposition, proved, "Proposition 107.2", "The soft tensor triplet has exact Ward charge +/-1/6. The minimally covariant weak-harmonic reduction gives the enhanced massive two-form kinetic term with the stated period-constrained dual norm. Its isolated minimal vector dual has g=1. Independent photon-curvature terms of the cubic reduction are not determined by this comparison.").
source(hopf_soft_tensor_ward_and_covariant_term, 'results/107_hopf_soft_tensor_mass_and_current.md', 'the-covariant-harmonic-operator-and-the-pauli-coefficient').
depends(hopf_soft_tensor_ward_and_covariant_term, hopf_isotropic_tensor_sharp_soft_mass).
depends(hopf_soft_tensor_ward_and_covariant_term, hopf_transverse_current_pencil).
depends(hopf_soft_tensor_ward_and_covariant_term, positive_proca_current_comparison).
attempted_by(hopf_soft_tensor_ward_and_covariant_term, gpt_6_2_sol_ultra).
checked_by(hopf_soft_tensor_ward_and_covariant_term, gpt_6_2_sol_ultra, by_hand).
addresses(t4, hopf_soft_tensor_ward_and_covariant_term).
addresses(t13, hopf_soft_tensor_ward_and_covariant_term).
addresses(t18, hopf_soft_tensor_ward_and_covariant_term).

claim(hopf_soft_tensor_pauli_ambiguity, proposition, proved, "Proposition 107.3", "The stated gauge-invariant local cubic shifts the on-shell Pauli coefficient at every finite soft-branch member without changing the exact Ward charge, quadratic spectrum or two tensor periods. A specified dilaton-dependent coefficient can leave a finite shift as the weak sphere shrinks.").
source(hopf_soft_tensor_pauli_ambiguity, 'results/107_hopf_soft_tensor_mass_and_current.md', 'the-covariant-harmonic-operator-and-the-pauli-coefficient').
depends(hopf_soft_tensor_pauli_ambiguity, hopf_soft_tensor_ward_and_covariant_term).
depends(hopf_soft_tensor_pauli_ambiguity, hopf_bulk_two_form_pullback).
depends(hopf_soft_tensor_pauli_ambiguity, hopf_volume_tensor_rank_one_potential).
attempted_by(hopf_soft_tensor_pauli_ambiguity, gpt_6_2_sol_ultra).
checked_by(hopf_soft_tensor_pauli_ambiguity, gpt_6_2_sol_ultra, by_hand).
addresses(t4, hopf_soft_tensor_pauli_ambiguity).
addresses(t13, hopf_soft_tensor_pauli_ambiguity).
addresses(t18, hopf_soft_tensor_pauli_ambiguity).

claim(hopf_soft_tensor_pair_current_benchmark, proposition, proved, "Proposition 107.4", "For the stipulated free pointlike charge-plus-Pauli triplet current on 4 M^2<=s<=9 M^2, the finite inverse-alpha difference is a quadratic in g with minimum about 0.00036454. Allowed local higher-derivative form factors preserve Ward charge while suppressing the pair amplitude on that window. The full colour and photon match requires strong dynamics and matched vertices.").
source(hopf_soft_tensor_pair_current_benchmark, 'results/107_hopf_soft_tensor_mass_and_current.md', 'a-finite-physical-current-comparison').
depends(hopf_soft_tensor_pair_current_benchmark, hopf_soft_tensor_pauli_ambiguity).
depends(hopf_soft_tensor_pair_current_benchmark, positive_proca_current_comparison).
depends(hopf_soft_tensor_pair_current_benchmark, hopf_radial_tower_kinetic_matching_inputs).
attempted_by(hopf_soft_tensor_pair_current_benchmark, gpt_6_2_sol_ultra).
checked_by(hopf_soft_tensor_pair_current_benchmark, gpt_6_2_sol_ultra, by_hand).
addresses(t4, hopf_soft_tensor_pair_current_benchmark).
addresses(t13, hopf_soft_tensor_pair_current_benchmark).
addresses(t18, hopf_soft_tensor_pair_current_benchmark).

claim(hopf_global_locked_group_and_spin, proposition, proved, "Proposition 108.1", "The faithful connected locked action is U(3) and the disconnected sign acts as fermion parity for the stated matter. The weak-singlet charge-1/6 triplet obstructs the extra electroweak centre quotient. Over a spin six-base the sphere bundle is ordinary spin exactly when its defining bundle has even c1; the joint Spin-c lift uses its determinant for general c1.").
source(hopf_global_locked_group_and_spin, 'results/108_hopf_global_flux_and_anomaly_domain.md', 'the-locked-group-and-the-ordinary-spin-condition').
depends(hopf_global_locked_group_and_spin, hopf_diagonal_hypercharge).
depends(hopf_global_locked_group_and_spin, hopf_volume_tensor_rank_one_potential).
depends(hopf_global_locked_group_and_spin, hopf_scalar_windows).
attempted_by(hopf_global_locked_group_and_spin, gpt_6_2_sol_ultra).
checked_by(hopf_global_locked_group_and_spin, gpt_6_2_sol_ultra, by_hand).
checked_by(hopf_global_locked_group_and_spin, claude_fable_5_2, partial("Joint report of 20 Nov: locked-group and spin calculation in the 108.1--108.3 sample")).
addresses(t11, hopf_global_locked_group_and_spin).
addresses(t14, hopf_global_locked_group_and_spin).
addresses(t17, hopf_global_locked_group_and_spin).
addresses(t18, hopf_global_locked_group_and_spin).

claim(hopf_integral_euler_flux_domain, proposition, proved, "Proposition 108.2", "The integral Gysin sequence permits a closed unit fibre flux precisely when the defining U(3) bundle has c3=0 integrally, with torsion Euler order restricting the possible periods. This obstruction also applies on gauge mapping tori, and extension of a chosen slice class requires its preservation by the loop. The explicit clutching example has admissible spin slices and a nonadmissible torus.").
source(hopf_integral_euler_flux_domain, 'results/108_hopf_global_flux_and_anomaly_domain.md', 'the-integral-five-form-and-its-gauge-loops').
depends(hopf_integral_euler_flux_domain, hopf_global_locked_group_and_spin).
depends(hopf_integral_euler_flux_domain, hopf_bulk_two_form_pullback).
attempted_by(hopf_integral_euler_flux_domain, gpt_6_2_sol_ultra).
checked_by(hopf_integral_euler_flux_domain, gpt_6_2_sol_ultra, by_hand).
checked_by(hopf_integral_euler_flux_domain, claude_fable_5_2, partial("Joint report of 20 Nov: Euler class c3 and its unit fibre-period test")).
addresses(t11, hopf_integral_euler_flux_domain).
addresses(t14, hopf_integral_euler_flux_domain).
addresses(t18, hopf_integral_euler_flux_domain).

claim(hopf_global_unit_flux_descent, proposition, proved, "Proposition 108.3", "On the stated ordinary-spin sector with extending integral unit flux and an electric geometric trivialization, differential bulk Green-Schwarz descent cancels the locked quotient determinant anomaly on admissible mapping tori. Relative local weak transgressions preserve that descent. The compact source-free magnetic equation has a separate real cohomological condition, and an integral dual trivialization requires integral vanishing.").
source(hopf_global_unit_flux_descent, 'results/108_hopf_global_flux_and_anomaly_domain.md', 'global-descent-on-the-unit-flux-sector').
depends(hopf_global_unit_flux_descent, hopf_integral_euler_flux_domain).
depends(hopf_global_unit_flux_descent, hopf_bulk_two_form_pullback).
depends(hopf_global_unit_flux_descent, spectator_global_bordism).
attempted_by(hopf_global_unit_flux_descent, gpt_6_2_sol_ultra).
checked_by(hopf_global_unit_flux_descent, gpt_6_2_sol_ultra, by_hand).
checked_by(hopf_global_unit_flux_descent, claude_fable_5_2, partial("Joint report of 20 Nov: projection formula and degrees 3+4+5 in the descent")).
addresses(t4, hopf_global_unit_flux_descent).
addresses(t11, hopf_global_unit_flux_descent).
addresses(t17, hopf_global_unit_flux_descent).
addresses(t18, hopf_global_unit_flux_descent).

claim(hopf_locked_chiral_anomaly_spectrum, proposition, proved, "Proposition 108.4", "Fully paired mirror determinants cancel and require a separate descent sector in the presence of the nontrivial tensor coupling. On admissible locked spin unit-flux backgrounds, the alternative ordinary-plus-vortex-neutral quotient spectrum supplies the tensor descent and retains the calibrated six-flavour subtraction window with the heavier sextet and anisotropic tensor. On the nowhere-zero volume-field branch an opposite index-density transgression is one possible extra inflow for the fluctuating relative U(1).").
source(hopf_locked_chiral_anomaly_spectrum, 'results/108_hopf_global_flux_and_anomaly_domain.md', 'which-fermions-supply-the-tensor-descent').
depends(hopf_locked_chiral_anomaly_spectrum, hopf_global_unit_flux_descent).
depends(hopf_locked_chiral_anomaly_spectrum, vortex_neutral_spectator_tensor).
depends(hopf_locked_chiral_anomaly_spectrum, hopf_mirror_particle_threshold).
depends(hopf_locked_chiral_anomaly_spectrum, quotient_tensor_free_fermion_shells).
depends(hopf_locked_chiral_anomaly_spectrum, hopf_bulk_tensor_scalar_gauss_gap).
attempted_by(hopf_locked_chiral_anomaly_spectrum, gpt_6_2_sol_ultra).
checked_by(hopf_locked_chiral_anomaly_spectrum, gpt_6_2_sol_ultra, by_hand).
addresses(t11, hopf_locked_chiral_anomaly_spectrum).
addresses(t13, hopf_locked_chiral_anomaly_spectrum).
addresses(t17, hopf_locked_chiral_anomaly_spectrum).
addresses(t18, hopf_locked_chiral_anomaly_spectrum).

claim(hopf_compact_spectator_threshold, proposition, conditional, "Proposition 108.5", "At the central compact Hopf fit with the horizontal holomorphic ordinary links, minimal unmixed spectator blocks and the heavy local anisotropic bosonic action of Result 106 at kappa=9, the first extra coloured state of the locked spectator spectrum is the 3.961 TeV broken-Killing vector. The first excited coloured fermions lie above the 5.496 TeV compactification scale by a curvature estimate. At that scale continuous one-loop quark and gluon running differs by 0.15081 in inverse squared coupling between the paired and spectator prescriptions, before their common bosonic step contribution and finite matching.").
source(hopf_compact_spectator_threshold, 'results/108_hopf_global_flux_and_anomaly_domain.md', 'colour-thresholds-at-the-compact-weak-fit').
depends(hopf_compact_spectator_threshold, hopf_locked_chiral_anomaly_spectrum).
depends(hopf_compact_spectator_threshold, hopf_uniform_light_mass_inverse).
depends(hopf_compact_spectator_threshold, hopf_finite_current_fit).
attempted_by(hopf_compact_spectator_threshold, gpt_6_2_astra_max).
checked_by(hopf_compact_spectator_threshold, gpt_6_2_astra_max, by_hand).
checked_by(hopf_compact_spectator_threshold, claude_fable_5_2, partial("Joint report of 20 Nov: running values in Proposition 108.5 with the stated compact fit")).
addresses(t13, hopf_compact_spectator_threshold).
addresses(t18, hopf_compact_spectator_threshold).

claim(lecture_projective_circle_gap, proposition, proved, "Compact spaces lecture, Exercise 9", "For the invariant connection metrics of fibre radius rho on the circle bundle of O(3,2) over CP2 times CP1 at fixed product base, the lowest scalar mass squared of integer charge n is n^2/rho^2 + abs(n)(2b2+b1). Holomorphic sections and their conjugates attain the bound. In Einstein units the first charged value is 40/L^2 with multiplicity 30 per sign.").
source(lecture_projective_circle_gap, 'paper/kk_strings_lecture.tex', '').
depends(lecture_projective_circle_gap, d11_quotient).
attempted_by(lecture_projective_circle_gap, gpt_6_2_astra_max).
checked_by(lecture_projective_circle_gap, gpt_6_2_astra_max, by_hand).
checked_by(lecture_projective_circle_gap, claude_fable_5_2, partial("Joint report of 20 Nov: Exercise 9 charged scalar spectrum and multiplicity per sign")).
addresses(t14, lecture_projective_circle_gap).
addresses(t18, lecture_projective_circle_gap).

claim(lecture_shared_circle_resolution, proposition, proved, "Compact spaces lecture, Exercise 12", "With the geometric circle identified conditionally with the M circle, fixed Planck length and both tree gauge norms, the momentum gap falls on the compensated five-dimensional and long six-dimensional paths. The cap curvature in string units grows as a^(-12/7) and P^(13/7), respectively.").
source(lecture_shared_circle_resolution, 'paper/kk_strings_lecture.tex', '').
depends(lecture_shared_circle_resolution, shared_circle_density).
depends(lecture_shared_circle_resolution, shared_polar_solution).
depends(lecture_shared_circle_resolution, vortex_root_vacua).
attempted_by(lecture_shared_circle_resolution, gpt_6_2_astra_max).
checked_by(lecture_shared_circle_resolution, gpt_6_2_astra_max, by_hand).
addresses(t14, lecture_shared_circle_resolution).
addresses(t18, lecture_shared_circle_resolution).

claim(lecture_faithful_isometries, proposition, proved, "Compact spaces lecture, Exercise 11", "The quotient of S5 times S3 by phases (z,z inverse) has a faithful isometric S(U(3) times U(2)) action. The six conjugate bidegree (1,1) coordinate products transform as a colour triplet and weak doublet of hypercharge 1/6. Its Euler class h+k leaves the pullback of w2 nonzero. The construction is a bosonic charge example.").
source(lecture_faithful_isometries, 'paper/kk_strings_lecture.tex', '').
attempted_by(lecture_faithful_isometries, gpt_6_2_astra_max).
checked_by(lecture_faithful_isometries, gpt_6_2_astra_max, by_hand).
addresses(t18, lecture_faithful_isometries).

claim(gh1_berger_charge_kernel, proposition, proved, "Issue 1 section 4", "On round S5 the spin Dirac twisted by the dual spin bundle and the exterior Killing-spinor bundle has kernel exterior(4) and gap sqrt(5)/R. Under the rank-one stabilizer it is the colour and electric charge module of one all-left generation. A separately gauged projector masses six vector directions.").
source(gh1_berger_charge_kernel, 'results/issues/01.md', '').
attempted_by(gh1_berger_charge_kernel, gpt_6_2_astra_max).
checked_by(gh1_berger_charge_kernel, terra_6_1, by_hand).
checked_by(gh1_berger_charge_kernel, codex_gpt_6, by_hand).
addresses(t18, gh1_berger_charge_kernel).

claim(gh1_berger_cylinder, proposition, proved, "Issue 1 section 4", "Two cylinder operators over the charged round endpoint have the same 32 KO-six zero modes. Equal local walls retain the whole doubled tangential Dirac operator in the thin limit. Spectral walls retain only the finite space, with a full-domain realization of the prescribed finite coefficient algebra.").
source(gh1_berger_cylinder, 'results/issues/01.md', '').
depends(gh1_berger_cylinder, gh1_berger_charge_kernel).
depends(gh1_berger_cylinder, gh1_spin_cylinder).
attempted_by(gh1_berger_cylinder, gpt_6_2_astra_max).
checked_by(gh1_berger_cylinder, terra_6_1, by_hand).
checked_by(gh1_berger_cylinder, codex_gpt_6, by_hand).
addresses(t18, gh1_berger_cylinder).
addresses(t0, gh1_berger_cylinder).

claim(gh1_berger_flux_radius, proposition, proved, "Issue 1 section 4", "On a Berger S5 in nine-dimensional Einstein gravity with quantized five-form and zero cosmological coefficient, the homogeneous stationary point is round, R^8=3Q^2/56. The form contribution multiplies the tree-level isometry kinetic form by 10/3.").
source(gh1_berger_flux_radius, 'results/issues/01.md', '').
attempted_by(gh1_berger_flux_radius, gpt_6_2_astra_max).
checked_by(gh1_berger_flux_radius, codex_gpt_6, by_hand).
checked_by(gh1_berger_flux_radius, claude_fable_5_2, partial("curvature, potential and both stationarity equations")).
addresses(t13, gh1_berger_flux_radius).
addresses(t18, gh1_berger_flux_radius).

claim(gh1_spin_cylinder, proposition, proved, "Issue 1", "On the product of a closed spin five-manifold and an interval the complementary spectral boundary conditions and a quaternionic polarization of the tangential kernel give an explicit self-adjoint KO-6 domain. Its zero modes are precisely the polarized constant sections.").
source(gh1_spin_cylinder, 'results/issues/01.md', '').
attempted_by(gh1_spin_cylinder, gpt_6_2_astra_max).
checked_by(gh1_spin_cylinder, terra_6_1, by_hand).
checked_by(gh1_spin_cylinder, claude_fable_5_2, partial("KO signs of the cylinder operators")).
addresses(t18, gh1_spin_cylinder).
addresses(t11, gh1_spin_cylinder).
addresses(t2, gh1_spin_cylinder).

claim(gh1_weak_centre, proposition, proved, "Issue 1", "For a primitive circle bundle M^{pq} over CP2 x CP1, the spin condition is p odd and q even, and the weak centre acts on ordinary spinors by (-1)^(p-3q/2).").
source(gh1_weak_centre, 'results/issues/01.md', '').
attempted_by(gh1_weak_centre, gpt_6_2_astra_max).
checked_by(gh1_weak_centre, terra_6_1, by_hand).
checked_by(gh1_weak_centre, claude_fable_5_2, partial("Gysin step, centre condition and winding sum")).
addresses(t18, gh1_weak_centre).

claim(gh1_monopole_inflow, proposition, proved, "Issue 1 sections 6 and 8", "For the faithful U(3) times U(1) monopole parents the seventh spin bordism group vanishes. The all-left anomaly is an integral product. The Higgs assignment adds eight virtual line Dirac phases to an integral product, giving a quantized inverse inflow on arbitrary spin gauge backgrounds. The source-free trivialization of the squared unit monopole class on a weak sphere bundle forces zero weak instanton number.").
source(gh1_monopole_inflow, 'results/issues/01.md', '').
attempted_by(gh1_monopole_inflow, gpt_6_2_astra_max).
checked_by(gh1_monopole_inflow, codex_gpt_6, by_hand).
depends(gh1_monopole_inflow, gh1_monopole_anomaly).
addresses(t14, gh1_monopole_inflow).
addresses(t18, gh1_monopole_inflow).

claim(gh1_monopole_generations, proposition, proved, "Issue 1 sections 6 and 8", "With fixed monopole degrees of magnitude two and one and opposite neutral spectator partners, a tensor-free sign assignment exists exactly for even generation count or odd count at least seven. Full-rank leading degree-one quark Yukawas require and admit even counts in that field content. A separate explicit extension of the one-generation Higgs parent has zero anomaly and extra vectorlike light matter under colour, weak rotations and hypercharge.").
source(gh1_monopole_generations, 'results/issues/01.md', '').
attempted_by(gh1_monopole_generations, gpt_6_2_astra_max).
checked_by(gh1_monopole_generations, codex_gpt_6, by_hand).
depends(gh1_monopole_generations, gh1_monopole_inflow).
depends(gh1_monopole_generations, gh1_monopole_higgs_phases).
addresses(t14, gh1_monopole_generations).
addresses(t18, gh1_monopole_generations).

claim(gh1_monopole_anomaly, proposition, proved, "Issue 1", "Adding opposite-chirality monopole-neutral spectator partners leaves the chiral sphere window unchanged and factors the six-dimensional local fermion anomaly as x squared times an explicit four-class.").
source(gh1_monopole_anomaly, 'results/issues/01.md', '').
attempted_by(gh1_monopole_anomaly, gpt_6_2_astra_max).
checked_by(gh1_monopole_anomaly, terra_6_1, by_hand).
checked_by(gh1_monopole_anomaly, claude_fable_5_2, by_hand).
addresses(t18, gh1_monopole_anomaly).

claim(gh1_electromagnetic_index, proposition, proved, "Issue 1 colour and electromagnetic chirality index", "For one ordinary generation with a right-handed neutrino, restriction to colour and electromagnetism gives equal left and right particle representations, so their virtual difference is zero. Removing the right-handed neutrino leaves one neutral singlet in the difference.").
source(gh1_electromagnetic_index, 'results/issues/01.md', 'colour-and-electromagnetic-chirality-index').
attempted_by(gh1_electromagnetic_index, gpt_6_2_astra_max).
checked_by(gh1_electromagnetic_index, codex_gpt_6, by_hand).
checked_by(gh1_electromagnetic_index, claude_fable_5_2, by_hand).
addresses(t18, gh1_electromagnetic_index).

claim(gh1_spectral_plateaus, theorem, proved, "Issue 1, spectral-dimension plateaus and crossings", "For d(t) = -2 dlog K/dlog t: a Neumann interval has d_I(s) < 1/(1+sqrt(s/pi)), within (40/s)exp(-pi^2/s) of it for s <= 1 and at most 2s exp(-s) for s >= log 2 (s = pi^2 t/l^2); the round S^5 has d_5 = 5 - 8 tau + 4 tau/(3-2 tau) + rho with |rho| <= 7(pi^2/tau)^3 exp(-pi^2/tau) and 0 < 5 - d_5 <= 20 tau/3 for tau <= 1/5. Hence M^4 x S^5_R x I_l x I_d with reflecting faces has explicit plateaus at 11, 10 and 9. At fixed tolerance epsilon the middle band has logarithmic width 2 log(l/d) + O_epsilon(1) and limiting late edge t/l^2 = s/pi^2 for the unique root d_I(s) = 1 - epsilon. The football obeys |d - 1| <= tau/2 + 25 exp(-tau q^2/2) + 4.01(pi^2/tau)exp(-pi^2/tau) on 1/q^2 <= tau <= 1. A common rescaling at fixed length ratios preserves the width of an intermediate band in logarithmic time.").
source(gh1_spectral_plateaus, 'results/issues/01.md', '1-dimension-in-the-two-scale-reduction').
attempted_by(gh1_spectral_plateaus, claude_opus_5_5).
checked_by(gh1_spectral_plateaus, gpt_6_2_sol, partial("Re-derived Theorem 1.1(a)-(d), Corollary 1.2 and Proposition 1.3 by hand and reran the Python checks. The prior bound w^5 exp(-w) < 1e-13 in part (b) fails at w = 5 pi^2. The repaired proof uses 2e-13, with the theorem's bound unchanged. The crossing data are numerical and the revised proof awaits review.")).
checked_by(gh1_spectral_plateaus, claude_opus_5_5, partial("the repaired sphere estimate of GPT-6.2 Sol: w^5 exp(-w) = 1.0834e-13 at w = 5 pi^2, decreasing for w > 5 and below the required 8 pi^4/63; and the fixed-tolerance edge of Corollary 1.2 at epsilon = 1/2")).
addresses(t18, gh1_spectral_plateaus).

claim(gh1_transition_times, corollary, proved, "Issue 1, two transition times", "For the round product with two reflecting intervals, two suitable pairs of fixed-height crossings determine the two length ratios locally. The balanced half-height curve starts at 0.6052770883 u + 0.1847930571 u squared.").
source(gh1_transition_times, 'results/issues/01.md', 'the-two-transition-times').
attempted_by(gh1_transition_times, codex_gpt_6).
checked_by(gh1_transition_times, terra_6_1, partial("Independently rederived the exact fixed-tolerance edge, both correction coefficients, the balanced curve and the inverse Jacobian; verified the numerical values in Python. The other heat-trace bounds retain their separate review status.")).
addresses(t18, gh1_transition_times).

claim(gh29_current_profile_difference, proposition, proved, "Issue 29, interval current profiles", "At zero momentum, the difference C_ll+C_qq-2C_lq in the mixed-wall kinetic model is the integral of the squared difference of cumulative source profiles divided by the positive kinetic coefficient.").
source(gh29_current_profile_difference, 'results/issues/15.md', 'the-difference-between-two-normalized-current-profiles').
attempted_by(gh29_current_profile_difference, codex_gpt_6).
checked_by(gh29_current_profile_difference, terra_6_1, by_hand).
addresses(t18, gh29_current_profile_difference).

%% ---------------------------------------------------------------- rules
:- table rests_on/2.
rests_on(C, D) :- depends(C, D).
rests_on(C, D) :- depends(C, E), rests_on(E, D).

%% falls_if_false(+Dep, -Claim): Claim rests (transitively) on Dep.
falls_if_false(Dep, C) :- rests_on(C, Dep).

%% pending_dependent(-C, -P): C is not itself pending and rests on the referee-pending claim P.
pending_dependent(C, P) :- referee_pending(P), rests_on(C, P), \+ referee_pending(C).

%% numerical_only(-C): no proof, only a numerical check.
numerical_only(C) :- claim(C, _, numerical, _, _).

%% language_not_recorded(-C): a computation whose language/tool the source does not name.
language_not_recorded(C) :- checked_by(C, _, not_recorded(_)).

%% Known aliases retain their original spellings in the provenance facts.
reviewer_alias(gpt_6_2_astra_max, gpt_6_2_astra).
reviewer_alias(gpt_6_2_sol_ultra, gpt_6_2_sol).
reviewer_alias(terra_6_1, gpt_6_1_terra).
reviewer_alias(codex_gpt6, codex_gpt_6).
reviewer_model(Name, Model) :-
    ( reviewer_alias(Name, Canonical) -> Model = Canonical ; Model = Name ).

%% non_author_checkers(?C, -Models): distinct names with a recorded checked_by/3
%% row, excluding authors of this claim and the corpus. The row gives its scope.
non_author_checkers(C, Models) :-
    claim(C, _, _, _, _),
    findall(Model,
            ( checked_by(C, Checker, _), Checker \== corpus,
              reviewer_model(Checker, Model),
              \+ (attempted_by(C, Author), reviewer_model(Author, Model)) ),
            Checks),
    sort(Checks, Models).

%% self_checked_only(-C): every recorded checker is also an author of the claim (numerical claims included).
self_checked_only(C) :-
    claim(C, _, S, _, _), memberchk(S, [proved, conditional, numerical]),
    findall(A, checked_by(C, A, _), Cs), Cs \== [],
    forall(member(A, Cs),
           (reviewer_model(A, M), attempted_by(C, Author), reviewer_model(Author, M))).

%% Draft use of the unchecked claims, 4 Nov 2026 (historical/reviews/2026-11-04_unchecked_claims_audit.md).
stated_in_draft(paper_1_1, 'paper/towerless_intervals.tex').
stated_in_draft(paper_1_1, 'paper/chiral_limit_note.tex').
stated_in_draft(paper_3_1, 'paper/towerless_intervals.tex').
stated_in_draft(paper_3_1, 'paper/boundary_condition_note.tex').
stated_in_draft(paper_4_1, 'paper/towerless_intervals.tex').
stated_in_draft(paper_4_1, 'paper/boundary_condition_note.tex').
stated_in_draft(rs_N4, 'paper/towerless_intervals.tex').
stated_in_draft(rs_F4, 'paper/boundary_condition_note.tex').
stated_in_draft(l12_mixing, 'paper/towerless_intervals.tex').
covered_by(paper_3_1, l20_rank_one).
covered_by(paper_4_1, l16_twistor).
covered_by(rs_N4, l16_standard_nogo).
covered_by(rs_F4, l22_family).
checked_by(paper_1_1, claude_opus_5_5, by_hand).
checked_by(rs_F4, claude_opus_5_5, by_hand).

%% draft_claim_unchecked(-C): a draft states C, and neither an outside check nor a checked lemma stands behind it.
draft_claim_unchecked(C) :-
    stated_in_draft(C, _),
    \+ covered_by(C, _),
    \+ ( checked_by(C, W, _), W \== corpus ).

%% unchecked(-C): proved or conditional, with no recorded checker (corpus claims included).
unchecked(C) :- claim(C, _, S, _, _), memberchk(S, [proved, conditional]), \+ checked_by(C, _, _).

%% open_items(-X): conjectures, open claims, open strategy items, open contradictions and missing records.
open_items(claim(C)) :- claim(C, _, S, _, _), memberchk(S, [open, conjectural]).
open_items(strategy(T)) :- strategy(T, S, _), S \== settled.
open_items(contradiction(N)) :- contradiction(N, _, _, _, open).
open_items(missing_record(C)) :- claim(C, _, not_reconstructed, _, _).

%% nogo_models(-C, -Models): the distinct agent identifiers recorded as authors or checkers of a no-go result. It counts identifiers, and it does not establish independence.
%% A no-go is a guide to where to go next, and needs consensus among models.
nogo_models(C, Models) :-
    claim(C, no_go, _, _, _),
    findall(A, attempted_by(C, A), As),
    findall(B, checked_by(C, B, _), Bs),
    append(As, Bs, All),
    sort(All, Models).

%% nogo_below_consensus(-C, -Models): fewer than three recorded agent identifiers, such as Astra, Claude and Terra.
nogo_below_consensus(C, Models) :- nogo_models(C, Models), length(Models, N), N < 3.

%% refuted(-C, -By): claims shown false, with the counterexample.
refuted(C, By) :- refuted_by(C, By).

where(C) :- source(C, F, A), (A == '' -> format("~w~n", [F]) ; format("~w#~w~n", [F, A])).
show(C) :- claim(C, K, S, L, T), format("~w  [~w, ~w: ~w]~n  ~w~n", [C, K, S, L, T]), where(C).

%% known_in_literature(-C, -Ref): claims whose statement is already in print.
known_in_literature(C, R) :- prior_work(C, known, R).

%% Referee check by Claude Opus 5.5, 20 Nov 2026, snapshot 8ec19b0 (historical/reviews/2026-11-20_opus_check_pending_audit.md).
checked_by(fr_product_relative_radius, claude_opus_5_5, by_hand).
checked_by(heterotic_wall_three_index, claude_opus_5_5, by_hand).
checked_by(heterotic_wall_pair_threshold, claude_opus_5_5, by_hand).
checked_by(m111_circle_descent, claude_opus_5_5, by_hand).
checked_by(m111_horizontal_modes, claude_opus_5_5, by_hand).
checked_by(m111_membrane_saturation, claude_opus_5_5, by_hand).
checked_by(two_endpoint_flavour_wall, claude_opus_5_5, by_hand).
checked_by(two_endpoint_fixed_energy_count, claude_opus_5_5, by_hand).
checked_by(hopf_source_free_freund_rubin, claude_opus_5_5, by_hand).
checked_by(spin_seven_periods, claude_opus_5_5, by_hand).
checked_by(vortex_yukawa_half_interval, claude_opus_5_5, by_hand).
checked_by(restored_finite_current_running, claude_opus_5_5, by_hand).
checked_by(helical_probe_charge, claude_opus_5_5, by_hand).
checked_by(helical_probe_current, claude_opus_5_5, by_hand).
checked_by(magnetic_single_pole_test, claude_opus_5_5, by_hand).
checked_by(shared_circle_window, claude_opus_5_5, by_hand).
checked_by(shared_circle_density, claude_opus_5_5, by_hand).
checked_by(shared_polar_solution, claude_opus_5_5, by_hand).
checked_by(vortex_root_vacua, claude_opus_5_5, by_hand).
checked_by(colour_wilson_lift, claude_opus_5_5, by_hand).
checked_by(round_colour_threshold, claude_opus_5_5, by_hand).
checked_by(round_twelve_flavours, claude_opus_5_5, by_hand).
checked_by(shared_neutral_poles, claude_opus_5_5, by_hand).
checked_by(root_wilson_winding, claude_opus_5_5, by_hand).
checked_by(vortex_mirror_anomalies, claude_opus_5_5, by_hand).
checked_by(root_phase_charm_test, claude_opus_5_5, by_hand).
referee_report('paper/seven_m_theory.tex', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
referee_report('paper/two_endpoint_limits.tex', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
referee_report('results/59_shared_circle_and_two_scales.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
referee_report('results/60_helical_fermion_currents.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
referee_report('results/62_supported_vortex_and_charged_caps.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
referee_report('results/63_vortex_roots_and_diagonal_photon.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
referee_report('results/64_projective_flux_and_colour_stability.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
referee_report('results/65_colour_wilson_scalar.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
referee_report('results/66_neutral_currents_and_hadronic_units.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
referee_report('results/67_fermion_masses_on_the_long_neck.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
referee_report('results/68_round_coloured_boson_threshold.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
referee_report('results/70_wilson_winding_with_vortex_roots.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
referee_report('results/72_particle_identifications_and_mirrors.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
referee_report('results/76_charged_deformations_and_thomson_matching.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
referee_report('results/79_mirror_thresholds_and_scalar_vertices.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
referee_report('results/84_magnetic_origin_of_the_vortex_flux.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
referee_report('results/85_root_phase_and_the_qcd_axion.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
referee_report('results/90_a_tensor_completion_without_light_mirrors.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
referee_report('results/94_spin_hopf_trajectory_and_its_charge_lift.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
referee_report('results/96_photon_thresholds_from_vectors_and_spectators.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
referee_report('results/98_hopf_colour_scalar_stability_and_thresholds.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').

checked_by(projected_current_floor, claude_opus_5_5, by_hand).
checked_by(matched_colour_trajectory, claude_opus_5_5, by_hand).
checked_by(vortex_ir_neutral_current, claude_opus_5_5, by_hand).
checked_by(vortex_flux_mass_relation, claude_opus_5_5, by_hand).
checked_by(vortex_flux_ir_contact, claude_opus_5_5, by_hand).
checked_by(neutral_target_parity, claude_opus_5_5, by_hand).
checked_by(vortex_hadronic_polarization, claude_opus_5_5, by_hand).
referee_report('results/73_projected_weak_current.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
referee_report('results/74_matched_hadronic_and_weak_scales.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
referee_report('results/75_infrared_currents_and_continuum_limits.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
referee_report('results/77_flux_mass_for_the_vortex_vector.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
referee_report('results/81_weak_charges_and_mixed_polarization.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
checked_by(dual_four_cycle_flux, claude_opus_5_5, by_hand).
checked_by(k3_ade_charge_embedding, claude_opus_5_5, by_hand).
checked_by(vortex_neutral_spectator_tensor, claude_opus_5_5, by_hand).
referee_report('results/88_k3_colour_hypercharge_and_instanton_action.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
checked_by(quotient_tensor_free_fermion_shells, claude_opus_5_5, by_hand).
checked_by(hopf_diagonal_hypercharge, claude_opus_5_5, by_hand).
checked_by(hopf_integral_euler_flux_domain, claude_opus_5_5, by_hand).
checked_by(hopf_global_locked_group_and_spin, claude_opus_5_5, by_hand).
referee_report('results/108_hopf_global_flux_and_anomaly_domain.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
referee_report('results/95_coloured_threshold_in_the_quotient_tensor_action.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
checked_by(spin_magnetic_surface_products, claude_opus_5_5, by_hand).
referee_report('results/87_spin_magnetic_product_and_wrapped_membranes.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
checked_by(two_endpoint_compressed_flip, claude_opus_5_5, by_hand).
checked_by(lecture_projective_circle_gap, claude_opus_5_5, by_hand).
referee_report('paper/kk_strings_lecture.tex', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
checked_by(hopf_full_maxwell_round_scalar, claude_opus_5_5, by_hand).
checked_by(hopf_sextet_colour_running_threshold, claude_opus_5_5, by_hand).
checked_by(hopf_sextet_euclidean_photon_subtraction, claude_opus_5_5, by_hand).
referee_report('results/101_hopf_threshold_with_the_full_vortex_maxwell_field.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
referee_report('results/106_hopf_tensor_scalar_gap_and_sextet_matching.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
checked_by(hopf_soft_tensor_pair_current_benchmark, claude_opus_5_5, by_hand).
referee_report('results/107_hopf_soft_tensor_mass_and_current.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
checked_by(lecture_faithful_isometries, claude_opus_5_5, by_hand).
checked_by(dual_tensor_round_poles, claude_opus_5_5, by_hand).
referee_report('results/92_finite_electric_and_magnetic_tensor_match.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
checked_by(dual_tensor_stiffness_bound, claude_opus_5_5, by_hand).
checked_by(vortex_root_upper_current, claude_opus_5_5, by_hand).
checked_by(vortex_root_magnetic_link, claude_opus_5_5, by_hand).
checked_by(m111_membrane_charge, claude_opus_5_5, by_hand).
checked_by(spectator_global_bordism, claude_opus_5_5, by_hand).
checked_by(lecture_shared_circle_resolution, claude_opus_5_5, by_hand).
checked_by(two_endpoint_current, claude_opus_5_5, by_hand).
checked_by(two_endpoint_face_current, claude_opus_5_5, by_hand).
checked_by(two_endpoint_flavour_current, claude_opus_5_5, by_hand).
checked_by(vortex_axion_four_anomaly, claude_opus_5_5, by_hand).
referee_report('results/80_axion_and_a_confining_mirror_sector.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
checked_by(root_qcd_angle, claude_opus_5_5, by_hand).
checked_by(finite_electric_matching, claude_opus_5_5, by_hand).
checked_by(nonround_flux_colour_gap, claude_opus_5_5, by_hand).
referee_report('results/69_gravitating_vortex_colour_gap.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
checked_by(k3_electric_surface_charge, claude_opus_5_5, by_hand).
checked_by(k3_electric_surface_action, claude_opus_5_5, by_hand).
referee_report('results/91_full_k3_charge_of_a_wrapped_surface.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
checked_by(k3_colour_instanton_action, claude_opus_5_5, by_hand).
checked_by(full_harmonic_flux_mass, claude_opus_5_5, by_hand).
checked_by(membrane_colour_instanton, claude_opus_5_5, by_hand).
checked_by(adjoint_monopole_gradient, claude_opus_5_5, by_hand).
referee_report('results/89_monopole_charge_and_a_chiral_interval.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
checked_by(spin_tensor_reeb_current, claude_opus_5_5, by_hand).
checked_by(vortex_root_neck, claude_opus_5_5, by_hand).
checked_by(particle_lifts_table, claude_opus_5_5, by_hand).
checked_by(hopf_supported_spin_product, claude_opus_5_5, by_hand).
checked_by(shared_qcd_current, claude_opus_5_5, by_hand).
referee_report('results/61_colour_thresholds_and_weak_current.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
checked_by(shared_circle_curvature, claude_opus_5_5, by_hand).
checked_by(weak_root_curvature, claude_opus_5_5, by_hand).
referee_report('results/82_opposite_root_response_of_the_nucleon.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
checked_by(projective_cjs_gauge_ratio, claude_opus_5_5, by_hand).
checked_by(hadronic_colour_current, claude_opus_5_5, by_hand).
checked_by(hopf_nonround_boson_crossing, claude_opus_5_5, by_hand).
referee_report('results/99_nonround_hopf_colour_gap_and_level_crossing.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
checked_by(hopf_broken_colour_vectors, claude_opus_5_5, by_hand).
checked_by(hopf_volume_tensor_rank_one_potential, claude_opus_5_5, by_hand).
referee_report('results/102_hopf_volume_tensor_amplitude_and_auxiliary_tower.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
checked_by(hopf_local_volume_tensor_rayleigh_test, claude_opus_5_5, by_hand).
checked_by(hopf_uniform_light_mass_inverse, claude_opus_5_5, by_hand).
referee_report('results/100_hopf_light_fermion_window_and_hadronic_calibration.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
checked_by(thomson_radius_matching, claude_opus_5_5, by_hand).
checked_by(positive_proca_current_comparison, claude_opus_5_5, by_hand).
checked_by(spectator_photon_subtraction_bound, claude_opus_5_5, by_hand).
checked_by(colour_wilson_trial, claude_opus_5_5, by_hand).
checked_by(vortex_flux_axion, claude_opus_5_5, by_hand).
checked_by(mirror_custodial_bound, claude_opus_5_5, by_hand).
checked_by(mirror_scalar_gluons, claude_opus_5_5, by_hand).
checked_by(wrapped_string_resultant, claude_opus_5_5, by_hand).
checked_by(wrapped_string_phase_potential, claude_opus_5_5, by_hand).
referee_report('results/86_wrapped_string_and_the_two_weak_roots.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
checked_by(hidden_mirror_mass_map, claude_opus_5_5, by_hand).
checked_by(local_tensor_mixing_comparison, claude_opus_5_5, by_hand).
checked_by(vortex_root_lower_current, claude_opus_5_5, by_hand).
checked_by(vortex_five_quarks, claude_opus_5_5, by_hand).
checked_by(vortex_one_quark_mass, claude_opus_5_5, by_hand).
checked_by(vortex_root_exchange_range, claude_opus_5_5, by_hand).
checked_by(ir_moduli_inverse, claude_opus_5_5, by_hand).
referee_report('results/83_two_infrared_coordinates_on_the_weak_family.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
checked_by(root_phase_kinetic, claude_opus_5_5, by_hand).
checked_by(hopf_locking_weak_charges, claude_opus_5_5, partial("charges and couplings re-derived; the fitted values 7.045 TeV and 4377.59 GeV taken as stated")).
checked_by(hopf_locking_weak_charges, gpt_6_1_terra, python("complete leading inverse, Schur matrix, charges and determinant checked by hand; SciPy fits to both input sets reproduced")).
checked_by(hopf_scalar_windows, claude_opus_5_5, by_hand).
checked_by(hopf_intrinsic_colour_stabilizers, claude_opus_5_5, partial("assembly and z=3 bounds re-derived; the component potentials taken as stated")).
checked_by(hopf_intrinsic_colour_stabilizers, gpt_6_2_astra, by_hand). % Different model from gpt_6_2_sol_ultra.
checked_by(hopf_intrinsic_colour_stabilizers, gpt_6_1_terra, partial("by hand: coupled round degree-one weak-scale mode, co-moving dilatons, kinetic weight, potential and adjusted-square decoupling")).
checked_by(hopf_local_normal_scalar_towers, claude_opus_5_5, partial("spectra and numbers re-derived; the quadratic forms taken from results/104")).
checked_by(hopf_local_normal_scalar_towers, gpt_6_2_astra, by_hand). % Different model from gpt_6_2_sol_ultra.
referee_report('results/104_hopf_local_scalar_constraints_and_sextet.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
checked_by(hopf_compact_spectator_threshold, claude_opus_5_5, by_hand).
checked_by(hopf_locked_chiral_anomaly_spectrum, claude_opus_5_5, by_hand).
checked_by(hopf_radial_tower_kinetic_matching_inputs, claude_opus_5_5, by_hand).
checked_by(hopf_soft_tensor_ward_and_covariant_term, claude_opus_5_5, partial("20 Nov review scope: Ward charge and covariant harmonic term checked for the reduced action; full parent operator not independently derived")).
checked_by(hopf_soft_tensor_pauli_ambiguity, claude_opus_5_5, by_hand).
checked_by(root_wilson_operator, claude_opus_5_5, by_hand).
checked_by(quadratic_ir_continuum, claude_opus_5_5, by_hand).
checked_by(charged_vortex_deformations, claude_opus_5_5, by_hand).
checked_by(rooted_current_projection, claude_opus_5_5, by_hand).
checked_by(shared_cap_current, claude_opus_5_5, by_hand).
checked_by(shared_winding_hadron, claude_opus_5_5, by_hand).
checked_by(hopf_nonround_covariant_core, claude_opus_5_5, partial("20 Nov review scope: constraint algebra and bounds from the stated one-factor operators; full eleven-dimensional reduction not repeated")).
checked_by(hopf_nonround_covariant_core, gpt_6_2_astra, partial("24 Nov: action variations for the colour scalar restriction and mixed current cancellation, lower-bound correction and frozen/active octet pencils; other product polarisations use the earlier reduction")).
checked_by(hopf_nonround_covariant_core, gpt_6_1_terra, partial("24 Nov: independently derived both six-longitudinal octet determinants, their inertia and the one-factor scope from the printed constrained forms")).
checked_by(dual_tensor_transverse_pencil, claude_opus_5_5, by_hand).
checked_by(hopf_full_maxwell_matched_threshold, claude_opus_5_5, by_hand).
checked_by(hopf_full_maxwell_coexact_block, claude_opus_5_5, by_hand).
checked_by(hopf_bulk_two_form_pullback, claude_opus_5_5, partial("20 Nov review scope: periods and pullback-source spectrum checked with the specified two-form action; complete coupled operator not reconstructed")).
referee_report('results/105_hopf_bulk_tensor_and_magnetic_colour_pole.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
checked_by(hopf_bulk_tensor_local_transverse_form, claude_opus_5_5, partial("20 Nov review scope: transverse form and normalizations checked on the displayed tensor reduction; complete parent-action derivation not repeated")).
checked_by(hopf_bulk_tensor_local_transverse_form, gpt_6_2_astra, partial("24 Nov: exact and coexact source fractions and the dual massive two-form companion from the specified tensor action")).
checked_by(hopf_bulk_tensor_aligned_transverse_gap, claude_opus_5_5, by_hand).
checked_by(hopf_bulk_tensor_independent_magnetic_pole, claude_opus_5_5, partial("trial and scaling re-derived; the crossing scale B^-1=1.34 TeV not recomputed")).
checked_by(hopf_bulk_tensor_independent_magnetic_pole, gpt_6_1_terra, partial("crossing scale recomputed from the printed trial bound in Python")).
checked_by(hopf_bulk_tensor_independent_magnetic_pole, gpt_6_2_astra, python("relative sources, Hodge reduction and variational bound derived by hand; independent SciPy vortex solve and quadrature give the sufficient crossing 1341.33 GeV")).
checked_by(hopf_isotropic_tensor_sharp_soft_mass, claude_opus_5_5, partial("minimization and scaling re-derived; C_soft about 6598 not recomputed")).
checked_by(hopf_isotropic_tensor_sharp_soft_mass, gpt_6_1_terra, partial("variational number recomputed in Python from the stated quadratic form")).
checked_by(hopf_isotropic_tensor_sharp_soft_mass, gpt_6_2_astra, python("Schur limit, coercivity, polarization and ordering derived by hand; spline rerun 6598.2570 and independent finite-element solution 6598.2551")).
checked_by(hopf_local_vertical_orientation_bound, claude_opus_5_5, partial("orientation and spectral bound re-derived; the quadratic forms taken from results/104")).
checked_by(hopf_local_vertical_orientation_bound, gpt_6_2_astra, by_hand). % Different model from gpt_6_2_sol_ultra.
checked_by(hopf_colour_octet_instability, claude_opus_5_5, by_hand).
checked_by(projective_flux_octet, claude_opus_5_5, by_hand).
checked_by(background_weak_multiplet_threshold, claude_opus_5_5, by_hand).
checked_by(hopf_transverse_current_pencil, claude_opus_5_5, by_hand).
referee_report('results/97_hopf_transverse_spectrum_and_current_match.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
checked_by(dual_tensor_comoving_pole, claude_opus_5_5, by_hand).
checked_by(dual_tensor_hadronic_resolvent, claude_opus_5_5, by_hand).
referee_report('results/93_tensor_photon_and_the_five_dimensional_pole.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
checked_by(hopf_comoving_charged_limit, claude_opus_5_5, by_hand).
checked_by(two_endpoint_upper_matter, claude_opus_5_5, by_hand).
checked_by(two_endpoint_trace_matching, claude_opus_5_5, by_hand).
checked_by(two_endpoint_scalar_count, claude_opus_5_5, by_hand).
checked_by(wrapped_m5_boundary_charge, claude_opus_5_5, by_hand).
checked_by(k3_hypercharge_period_bound, claude_opus_5_5, by_hand).
checked_by(tensor_sphere_pushforward, claude_opus_5_5, by_hand).
checked_by(projective_vortex_spectator_descent, claude_opus_5_5, partial("factorization re-derived; the exact species sum taken as stated")).
checked_by(vortex_neutral_spectator_tensor, gpt_6_1_terra, partial("six-dimensional integer spectator species sum recomputed in Python")).
checked_by(projective_vortex_spectator_descent, gpt_6_1_terra, by_hand).
checked_by(rooted_colour_vectors, claude_opus_5_5, by_hand).
checked_by(hopf_thomson_auxiliary_calibration, claude_opus_5_5, by_hand).
checked_by(hopf_comoving_hadronic_benchmark, claude_opus_5_5, partial("homogeneity argument re-derived; the table entries from the fit of 97 not recomputed")).
checked_by(hopf_comoving_hadronic_benchmark, gpt_6_1_terra, python("complete conditional RG and scale argument checked by hand; SciPy current fit and projected colour minimum reproduce all entries of the table")).
checked_by(hopf_mirror_particle_threshold, claude_opus_5_5, by_hand).
checked_by(vortex_constraint_squares, claude_opus_5_5, partial("Bogomolny and constraint completions re-derived; the quadratic forms taken from results/69, their reduction from the action not re-derived")).
checked_by(vortex_constraint_squares, gpt_6_2_astra, by_hand). % Fresh same-model derivation; not an independent model.
checked_by(vortex_constraint_squares, gpt_6_1_terra, partial("linearized completed vortex squares and displayed scalar-square algebra checked; full null constraint reduction not independently established")).
checked_by(vortex_constraint_squares, gpt_6_1_sol, by_hand). % Full independent review of Proposition 69.1; action, constraints, scalar completion, every compact shape and vector/spectator blocks: paper/NUMERICAL_CHECKS.md.
checked_by(rooted_colour_gap, claude_opus_5_5, partial("cancellation and fibre positivity re-derived given equal external and projective Z_H; the quadratic forms taken from results/71")).
checked_by(rooted_colour_gap, gpt_6_2_astra, by_hand). % Fresh same-model derivation; not an independent model.
checked_by(rooted_colour_gap, gpt_6_1_terra, partial("horizontal variation and cancellation of the displayed mixed colour terms checked algebraically; full constrained reduction not independently established")).
checked_by(rooted_colour_gap, gpt_6_1_sol, by_hand). % Full independent review of Theorem 71.1; constrained projection, fibre positivity, invariant sectors, projection angle, all frequencies and exact threshold: paper/NUMERICAL_CHECKS.md.
referee_report('results/71_colour_gap_with_diagonal_roots.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
checked_by(round_flux_product_gap, claude_opus_5_5, partial("mixed block and leading minors re-derived; the fourth minors, the t=2 determinants and the reduction to the mass form taken from results/68")).
checked_by(round_flux_product_gap, gpt_6_2_astra, by_hand). % Fresh same-model derivation; not an independent model.
checked_by(round_flux_product_gap, gpt_6_1_terra, partial("fourth minors and exceptional determinants independently checked with Python/SymPy; action reduction not independently rederived")).
checked_by(round_flux_product_gap, gpt_6_1_sol, by_hand). % Full independent review of Theorem 68.1; action, hand-expanded minors, exceptional harmonics, representation bounds and product projection angle: paper/NUMERICAL_CHECKS.md.
checked_by(projective_kahler_octet, claude_opus_5_5, by_hand).
checked_by(projective_kahler_moduli, claude_opus_5_5, by_hand).
checked_by(vortex_root_domain, claude_opus_5_5, by_hand).
checked_by(finite_weak_current_inverse, claude_opus_5_5, partial("current algebra and numbers re-derived; the remaining entries and the inverse-function step taken as stated")).
checked_by(finite_weak_current_inverse, gpt_6_1_terra, partial("explicit light inverse and conditional parameter-dependent IFT; full operator C1 extension and uniform complement estimate remain assumptions")).
checked_by(finite_weak_current_inverse, gpt_6_1_sol, by_hand). % Full independent hand review of Proposition 78.1 including compact-sphere analytic inputs and parameterized inverse; separate degree-12 illustration checks are numerical: paper/NUMERICAL_CHECKS.md.
referee_report('results/78_finite_weak_pole_and_current_match.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
checked_by(hadron_root_slope, claude_fable_5_2, by_hand).  % second referee, 20 Nov 2026, from Table 1 of arXiv:2007.03319; the last digits of the program output lie inside the table rounding
referee_report('results/82_opposite_root_response_of_the_nucleon.md', 'historical/reviews/2026-11-20_fable_second_referee.md').
checked_by(ade_interval_yukawa, claude_opus_5_5, by_hand).
checked_by(dual_tensor_photon_cost, claude_opus_5_5, by_hand).
checked_by(quotient_tensor_colour_gap, claude_opus_5_5, by_hand).
checked_by(hopf_projected_coloured_threshold, claude_opus_5_5, by_hand).
checked_by(hopf_projected_nonround_boson, claude_opus_5_5, by_hand).
checked_by(hopf_full_auxiliary_coloured_minimum, claude_opus_5_5, by_hand).
checked_by(hopf_local_exact_shift_blocks, claude_opus_5_5, by_hand).
checked_by(hopf_local_transverse_vector_minimum, claude_opus_5_5, by_hand).
referee_report('results/103_hopf_local_connection_transverse_shell.md', 'historical/reviews/2026-11-20_opus_check_pending_audit.md').
checked_by(hopf_local_scalar_constraint_positivity, claude_opus_5_5, partial("shift identity and bounds re-derived; the quadratic forms taken from results/104, their reduction from the action not re-derived")).
checked_by(hopf_local_scalar_constraint_positivity, gpt_6_2_astra, by_hand). % Different model from gpt_6_2_sol_ultra.
checked_by(hopf_local_calibrated_coloured_gap, claude_opus_5_5, partial("block bounds and numbers re-derived; the quadratic forms taken from results/104")).
checked_by(hopf_local_calibrated_coloured_gap, gpt_6_2_astra, by_hand). % Different model from gpt_6_2_sol_ultra.
checked_by(hopf_local_full_boson_ordering, claude_opus_5_5, partial("threshold and ordering re-derived; the quadratic forms taken from results/104 and the SciPy example not recomputed")).
checked_by(hopf_local_full_boson_ordering, gpt_6_2_astra, by_hand). % Different model from gpt_6_2_sol_ultra.
checked_by(hopf_local_full_boson_ordering, gpt_6_2_astra, python("separate finite sextet example in Result 104.5, independent SciPy diagonalization")).
checked_by(hopf_bulk_tensor_anisotropic_vector_order, claude_opus_5_5, by_hand).
checked_by(hopf_bulk_tensor_scalar_gauss_gap, claude_opus_5_5, partial("20 Nov review scope: scalar inequalities given the stated constrained operators; full coupled Gauss derivation not repeated")).
checked_by(hopf_bulk_tensor_scalar_gauss_gap, gpt_6_2_astra, partial("24 Nov: normalized Maxwell Gauss source, completion and residual (2-1/zeta)nu for zeta>=1, conditional on the earlier scalar comparison")).
checked_by(hopf_global_unit_flux_descent, claude_opus_5_5, by_hand).
checked_by(hopf_local_coexact_shell_closure, claude_opus_5_5, partial("20 Nov review scope: shell stiffnesses evaluated from the stated local geometry operator; full parent-action reduction not repeated")).
checked_by(hopf_local_coexact_shell_closure, gpt_6_2_astra, partial("24 Nov: local connection and coexact octet and sextet stiffnesses; triplet and fifteen entries are compressions before the exact-shift minimization")).
%% Joint report on aa7316b. The live response and additional checks are in
%% paper/NUMERICAL_CHECKS.md; the report itself remains verbatim.
referee_report('paper/seven_m_theory.tex', 'historical/reviews/2026-11-20_conneskk_joint_review.md').
referee_report('paper/two_endpoint_limits.tex', 'historical/reviews/2026-11-20_conneskk_joint_review.md').
referee_report('paper/kk_strings_lecture.tex', 'historical/reviews/2026-11-20_conneskk_joint_review.md').

%% ---------------------------------------------------------------- claims awaiting a pending claim (20 Nov 2026, second referee H2)
%% The pending sets may be empty. Dynamic declarations keep the propagation
%% tests meaningful as facts are added or removed.
:- dynamic referee_pending/1, awaits_pending/1.
%% ---------------------------------------------------------------- consistency tests
:- begin_tests(ledger).
test(every_claim_has_a_source, [nondet]) :- forall(claim(C, _, _, _, _), source(C, _, _)).
test(sources_exist) :- forall(source(_, F, _), exists_file(F)).
test(dependencies_resolve) :- forall(depends(_, D), (D = hyp(H) -> hypothesis(H, _) ; claim(D, _, _, _, _))).
test(no_circular_dependency) :- \+ rests_on(C, C).
test(pending_dependents_are_listed) :- forall(pending_dependent(C, _), awaits_pending(C)).
test(listed_dependents_still_wait) :- forall(awaits_pending(C), pending_dependent(C, _)).
test(pending_dependency_propagates,
     [setup(assertz(user:referee_pending(dual_tensor_finite_fit))),
      cleanup(retract(user:referee_pending(dual_tensor_finite_fit)))]) :-
    pending_dependent(dual_tensor_finite_neck, dual_tensor_finite_fit).
test(refutations_resolve) :- forall(refuted_by(C, B), (claim(C, _, refuted, _, _), claim(B, counterexample, _, _, _))).
test(amendments_resolve) :- forall(claim_amended(C, B), (claim(C, _, _, _, _), claim(B, _, _, _, _))).
test(prior_work_resolves) :- forall(prior_work(C, V, _), (claim(C, _, _, _, _), memberchk(V, [known, partial, not_found]))).
test(every_nogo_has_two_models) :- forall(nogo_models(_, Ms), (length(Ms, N), N >= 2)).
test(addresses_resolve) :- forall(addresses(T, C), (strategy(T, _, _), claim(C, _, _, _, _))).
test(draft_claims_have_a_check) :- \+ draft_claim_unchecked(_).
test(coverage_targets_are_checked) :- forall(covered_by(C, L), (claim(C, _, _, _, _), checked_by(L, W, _), W \== corpus)).
test(draft_files_exist) :- forall(stated_in_draft(_, F), exists_file(F)).
test(referee_reports_exist) :- forall(referee_report(F, R), (exists_file(F), exists_file(R))).
test(refereed_claims_have_review_bookkeeping) :-
    forall(( referee_report(F, _), source(C, F, _), claim(C, _, S, _, _), memberchk(S, [proved, conditional]) ),
           ( checked_by(C, terra_6_1, _) ; attempted_by(C, terra_6_1) ; checked_by(C, claude_opus_5_5, _) ; checked_by(C, claude_fable_5_2, _) ; outside_referee(C, _) ; referee_pending(C) )).  % Terra 6.1, Claude Opus 5.5 (from 4 Nov 2026) or Claude Fable 5.2 (from 20 Nov 2026) as referee; a row added to a refereed file after its report waits for its own referee
test(claims_outside_the_corpus_have_a_checker) :-
    forall(( claim(C, _, S, _, _), memberchk(S, [proved, conditional]), \+ attempted_by(C, corpus) ), checked_by(C, _, _)).
test(non_corpus_proof_grades_have_non_author_checks) :-
    forall(( claim(C, _, S, _, _), memberchk(S, [proved, conditional]),
             \+ attempted_by(C, corpus) ),
           non_author_checkers(C, [_|_])).
test(same_model_recheck_is_excluded_from_referee_count) :-
    non_author_checkers(round_flux_product_gap, Models),
    \+ memberchk(gpt_6_2_astra, Models),
    memberchk(gpt_6_1_sol, Models).
%% Checks only that each ledger number has a row in historical/DUPLICATES.md ending in its state.
test(contradictions_match_duplicates) :-
    read_file_to_string('historical/DUPLICATES.md', Text, []),
    split_string(Text, "\n", "", Lines),
    forall(contradiction(N, _, _, _, State),
           ( format(string(P), "| ~d |", [N]), format(string(Q), "| ~w |", [State]),
             member(L, Lines), string_concat(P, _, L), string_concat(_, Q, L) -> true )).
:- end_tests(ledger).

