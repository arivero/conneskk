%% 11D/ledger_11d.pl -- ledger facts of the 11D line (branch 11D), included by ../ledger.pl.
%% Same predicates and conventions as ledger.pl. Agent atom `claude`: Claude (Anthropic), the author of every claim here.
%% Claims still awaiting an independent check carry referee_pending/1; the referee request is
%% 11D/prompts/terra_check_11d.md. Completed checks are recorded in reviews/2026-11-04_terra_check_11d.md.

%% ---------------------------------------------------------------- 01: the interval as the eleventh dimension
claim(d11_circle, proposition, proved, "Proposition 1.1", "The chiral interval of lemma 05, eq. (8), is unitarily the antiperiodic circle of radius R = l/pi: D_l goes to -i d/dx, the grading to the reflection x -> -x, the walls to its fixed points, scalar functions to reflection-even functions; m = pi/(2l) = 1/(2R).").
source(d11_circle, '11D/01_interval_and_eleventh_dimension.md', 'proposition-11-the-chiral-interval-is-the-antiperiodic-circle').
depends(d11_circle, l05_truncation).
attempted_by(d11_circle, claude).
checked_by(d11_circle, claude, by_hand).
checked_by(d11_circle, terra_6_1, by_hand).

claim(d11_m_circle, conjecture, conjectural, "Proposal 1.3", "The circle of H is the M-theory circle: v -> 0 along the joint family (weak masses below a descending tower, Wilson-line angles -> 0) is strong coupling with the D0 (momentum) tower becoming light; v -> infinity is a shrinking circle with antiperiodic fermions and no bulk fermions, as in type 0 strings; light fermions of the 9 endpoint come from branes or walls.").
source(d11_m_circle, '11D/01_interval_and_eleventh_dimension.md', 'proposal-13-the-circle-of-h-as-the-m-theory-circle').
depends(d11_m_circle, d11_circle).
depends(d11_m_circle, a11_joint_limit).
attempted_by(d11_m_circle, claude).

claim(d11_casimir, proposition, proved, "Proposition 1.4 (corrected)", "Under the hypotheses of Theorem 24.9, the angle-dependent one-loop term, relative to theta = 0, is -93 zeta(5) n_f/(512 pi^2 l^4) at its minimum theta = pi/2, where M_W = M_Z = 0 at fixed l, and (3 zeta(3)/(16 pi^2))(54/5 - n_f) theta^2/l^4 near theta = 0. The angle-independent Casimir energy is not included. (The first version read the term as the whole wall energy and concluded that the walls attract; that reading is withdrawn.)").
source(d11_casimir, '11D/01_interval_and_eleventh_dimension.md', 'proposition-14-the-angle-dependent-one-loop-term-at-the-vacuum-angle').
depends(d11_casimir, l24_no_minimum).
depends(d11_casimir, l23_wz).
attempted_by(d11_casimir, claude).
checked_by(d11_casimir, claude, python("11D/checks_11d.py sections F, F2: series against quadrature")).
checked_by(d11_casimir, terra_6_1, by_hand).

claim(d11_scale_free, proposition, conditional, "Proposition 1.5 (referee amendment)", "For V = l^-4 G(theta), a nonzero angular minimum gives a runaway in l; with theta = l m, an isolated stationary angle gives l proportional to 1/m. A flat direction such as G(theta) = theta^4 allows other stationary paths without selecting one. The specified flat one-loop determinant has no positive stationary angles tending to zero when n_f != 54/5.").
source(d11_scale_free, '11D/01_interval_and_eleventh_dimension.md', 'proposition-15-a-scale-free-potential-fixes-the-path-with-m_w-l-constant').
depends(d11_scale_free, d11_casimir).
attempted_by(d11_scale_free, claude).
checked_by(d11_scale_free, claude, by_hand).
checked_by(d11_scale_free, terra_6_1, by_hand).

%% the two families of the Astra 6 audit of 3 Nov 2026 (reviews/2026-11-03_astra_audit_d11.md), used by 01
claim(a11_joint_limit, proposition, proved, "Audit, section 3", "D_F = epsilon D_*, l = l_* epsilon^-alpha, 0 < alpha < 1: exact window epsilon D_*, gap >= pi/l - epsilon ||D_*||, compression error O(epsilon^{2(1-alpha)}); a cutoff epsilon^beta, alpha < beta < 1, holds exactly the r finite states, while N(E) ~ 2 r l E/pi diverges at fixed E.").
source(a11_joint_limit, 'reviews/2026-11-03_astra_audit_d11.md', '3-a-positive-joint-limit-result-from-the-exact-interval').
depends(a11_joint_limit, l22_window).
depends(a11_joint_limit, l22_compression).
attempted_by(a11_joint_limit, astra6).
checked_by(a11_joint_limit, claude, python("11D/checks_11d.py section H: window, gap and Weyl constant on exact spectra")).
checked_by(a11_joint_limit, terra_6_1, by_hand).

claim(a11_localized, proposition, proved, "Audit, section 4", "Bulk mass mu = mu_* epsilon^alpha with mu l = (1 - alpha) log(1/epsilon) + c_0: light mass ~ 2 mu_* e^{-c_0} epsilon, gap ~ mu_* epsilon^alpha, localization width over l -> 0; exact tail identity e^{-2 kappa l} = (m/(mu + kappa))^2.").
source(a11_localized, 'reviews/2026-11-03_astra_audit_d11.md', '4-a-localized-family-with-the-same-hierarchy').
depends(a11_localized, l09_lightpair).
attempted_by(a11_localized, astra6).
checked_by(a11_localized, claude, python("11D/checks_11d.py section H: secular roots by bisection, the audit table and the identity")).

%% ---------------------------------------------------------------- 02: Witten spaces as the hypercharge quotient
claim(d11_quotient, theorem, conditional, "Theorem 2.1 (referee amendments)", "Y_{3,2} = (S^9 cap mu_Y^{-1}(0))/U(1)_Y is the circle bundle of O(3,2) over CP^2 x CP^1, with trivial-canonical cone and effective group (U(3) x U(2))/U(1)_Y. Its identification with M^{111} is conditional on the recalled fibration; the Sasaki-Einstein metric requires rescaling the natural quotient metric.").
source(d11_quotient, '11D/02_witten_spaces_hypercharge_quotient.md', 'theorem-21-m111-is-the-hypercharge-quotient-of-the-5-bar').
attempted_by(d11_quotient, claude).
checked_by(d11_quotient, claude, python("11D/checks_11d.py sections A, B: weights, Calabi-Yau condition, Z_6")).
checked_by(d11_quotient, terra_6_1, by_hand).

claim(d11_unique, proposition, proved, "Proposition 2.2", "Among circle quotients of S^5 x S^3 with coprime weights (b, -a), only (3,2) has a Calabi-Yau cone; a free circle quotient of a moment level in a complex representation of dimension n has dimension 2n - 3, which is 7 only for n = 5 (the 5 and 5-bar of SU(5)).").
source(d11_unique, '11D/02_witten_spaces_hypercharge_quotient.md', 'proposition-22-uniqueness-of-the-count-7').
depends(d11_unique, d11_quotient).
attempted_by(d11_unique, claude).
checked_by(d11_unique, claude, python("11D/checks_11d.py section A")).
checked_by(d11_unique, terra_6_1, by_hand).

claim(d11_topology, proposition, proved, "Proposition 2.3", "Circle bundle Y_{a,b} over CP^2 x CP^1, a != 0: H^2 = Z + Z/gcd(a,b), b_3 = 0, H^4 of order a^2 with Smith invariants (gcd, a^2/gcd), spin iff a odd and b even; for (3,2) H^4 = Z/9 and H^2(B) -> H^2(Y) = Z is (x,y) -> 2x - 3y.").
source(d11_topology, '11D/02_witten_spaces_hypercharge_quotient.md', 'proposition-23-topology-of-y_ab').
attempted_by(d11_topology, claude).
checked_by(d11_topology, claude, python("11D/checks_11d.py section C: Smith invariants, spin condition")).
checked_by(d11_topology, terra_6_1, by_hand).

claim(d11_z6, proposition, proved, "Proposition 2.4", "Every monomial in U, V and every state of Lambda^*(5-bar) satisfies 2t + 3d + 6Y = 0 mod 6; Y-neutral monomials have t = d = 0; tensor fields on Y_{3,2} carry representations of PSU(3) x SO(3) x U(1)_R, so no bosonic Kaluza-Klein mode is a colour triplet or weak doublet.").
source(d11_z6, '11D/02_witten_spaces_hypercharge_quotient.md', 'proposition-24-the-z_6-of-the-standard-model').
depends(d11_z6, d11_quotient).
attempted_by(d11_z6, claude).
checked_by(d11_z6, claude, python("11D/checks_11d.py section B")).
checked_by(d11_z6, terra_6_1, by_hand).

claim(d11_flux_nogo, no_go, proved, "Proposition 2.5 (independently checked with amendment)", "Ten-dimensional Weyl fermions on CP^2 x CP^1 with one abelian line bundle per Standard Model field and the canonical formal spin^c shift: no generation for fluxes along Y and B - L. Equal u^c and d^c images and unsigned linearity of 2j + 1 require a common ten-dimensional chirality.").
source(d11_flux_nogo, '11D/02_witten_spaces_hypercharge_quotient.md', 'proposition-25-no-generation-from-fluxes-along-hypercharge-and-b---l').
attempted_by(d11_flux_nogo, claude).
checked_by(d11_flux_nogo, claude, python("11D/checks_11d.py section D: required bidegrees, span test, search over a third charge in [-3,3]^6")).
checked_by(d11_flux_nogo, terra_6_1, by_hand).

claim(d11_flux_fit, proposition, conditional, "Proposition 2.6 (referee amendments)", "With fluxed charges F, chi and B - L the displayed line bundles give a one-generation index in the stated colour convention. The quotient's colour action conjugates the quark bidegrees, and the global gauge group, charge lattice and spin^c flux quantization must be specified.").
source(d11_flux_fit, '11D/02_witten_spaces_hypercharge_quotient.md', 'proposition-26-one-generation-from-a-universal-charge-the-grading-and-b---l').
depends(d11_flux_fit, d11_flux_nogo).
attempted_by(d11_flux_fit, claude).
checked_by(d11_flux_fit, claude, python("11D/checks_11d.py section D2")).
checked_by(d11_flux_fit, terra_6_1, by_hand).

%% ---------------------------------------------------------------- 03: branes, hypercharge and the 84
claim(d11_betti_y, conjecture, conjectural, "Proposal 3.1", "Hypercharge is the Betti vector of Y_{3,2} (C_3 on the harmonic two-form); the gauge group of AdS4 x Y_{3,2} is SU(3) x SU(2) x U(1)_Y x U(1)_R; states with Y != 0 are wrapped branes, and the N = 1 fivebrane baryons are d^c and L.").
source(d11_betti_y, '11D/03_branes_hypercharge_and_the_84.md', 'proposal-31-hypercharge-is-the-betti-vector-of-y_32').
depends(d11_betti_y, d11_topology).
depends(d11_betti_y, d11_z6).
attempted_by(d11_betti_y, claude).

claim(d11_fock, proposition, proved, "Proposition 3.2", "Lambda^odd(5-bar) = 5-bar + 10 + 1 is one generation with nu^c and Lambda^even its conjugate; X = 5 - 2k on Lambda^k. Identifying the formal 6Y divisor-class sum with wrapped-brane states remains a proposal.").
source(d11_fock, '11D/03_branes_hypercharge_and_the_84.md', 'proposition-32-one-generation-is-the-odd-part-of-the-exterior-algebra-of-the-5-bar').
attempted_by(d11_fock, claude).
checked_by(d11_fock, claude, python("11D/checks_11d.py section B")).
checked_by(d11_fock, terra_6_1, by_hand).
prior_work(d11_fock, known, "The 16 of SO(10) as the odd forms on C^5 (standard).").

claim(d11_fock_branes, conjecture, conjectural, "Conjecture 3.3", "At N = 1 one generation and its conjugate are the exterior algebra of five fermionic zero modes of fivebranes wrapped on the baryonic cycles, with hypercharge the homology class and X the number of fivebranes.").
source(d11_fock_branes, '11D/03_branes_hypercharge_and_the_84.md', 'proposition-32-one-generation-is-the-odd-part-of-the-exterior-algebra-of-the-5-bar').
depends(d11_fock_branes, d11_fock).
depends(d11_fock_branes, d11_betti_y).
attempted_by(d11_fock_branes, claude).

claim(d11_higgs_m2, conjecture, conjectural, "Proposal 3.4", "The Higgs is the M2 position on the doublet line of the resolved cone (fixed by SU(3) and T_3 + Y on the brane coordinates); v -> 0 is the apex, with near-horizon AdS4 x Y_{3,2} and the Standard Model group unbroken. At fixed N this restores the group at a fixed tower; opening a dimension needs N -> infinity, against N = 1 for the matter of Proposal 3.1.").
source(d11_higgs_m2, '11D/03_branes_hypercharge_and_the_84.md', 'proposal-34-the-higgs-is-the-position-of-the-m2-brane-and-the-massless-limit-is-the-apex').
depends(d11_higgs_m2, d11_betti_y).
attempted_by(d11_higgs_m2, claude).

claim(d11_ads5, proposition, proved, "Proposition 3.5", "AdS5 x CP^2 x S^2 with G_4 = f_1 vol(CP^2) + f_2 J ^ vol(S^2) solves eleven-dimensional supergravity with R_AdS = -(f_1^2 + 2 f_2^2)/6, R_CP2 = f_1^2/3 + f_2^2/6, R_S2 = 2 f_2^2/3 - f_1^2/6; round factors iff abs(f_1) < 2 abs(f_2). Supersymmetry and stability not checked.").
source(d11_ads5, '11D/03_branes_hypercharge_and_the_84.md', 'proposition-35-a-magnetic-completion-ads5-x-cp2-x-s2').
attempted_by(d11_ads5, claude).
checked_by(d11_ads5, claude, python("11D/checks_11d.py section G: all frame components of the flux bilinear")).
checked_by(d11_ads5, terra_6_1, by_hand).

claim(d11_two_completions, conjecture, conjectural, "Proposals 3.6, 3.7", "CP^2 x S^2 has an electric completion AdS4 x Y_{3,2} and a magnetic completion AdS5 x CP^2 x S^2, both 4 + 1 + 6 with the 1 as fibre or as AdS5 radius; the M2/M5 exchange acts on hypercharge as electric-magnetic duality and does not permute the 96 states.").
source(d11_two_completions, '11D/03_branes_hypercharge_and_the_84.md', 'proposal-36-two-completions-of-one-base').
depends(d11_two_completions, d11_ads5).
depends(d11_two_completions, d11_betti_y).
attempted_by(d11_two_completions, claude).

claim(d11_colour84, no_go, proved, "Proposition 3.8 (independently checked)", "For every homomorphism SU(3) -> SO(9), Lambda^3 R^9 (and Lambda^6 R^9) is not the colour content of either family of 84 of lemma 21: real nine-dimensional representations give only singlets, a 6bar, or 10 + 27.").
source(d11_colour84, '11D/03_branes_hypercharge_and_the_84.md', 'proposition-38-no-colour-equivariant-identification-of-the-84-with-the-three-form').
depends(d11_colour84, l21_counts).
attempted_by(d11_colour84, claude).
checked_by(d11_colour84, claude, python("11D/checks_11d.py section E: weights of Lambda^3")).
checked_by(d11_colour84, terra_6_1, by_hand).

claim(d11_kk_triality, corollary, proved, "Corollary 3.9", "Under the quotient realization no Kaluza-Klein mode of C_3 or of the metric on Y_{3,2} is a colour triplet, so the coloured states of either family of 84 are not modes of C_3 on Y_{3,2}.").
source(d11_kk_triality, '11D/03_branes_hypercharge_and_the_84.md', 'corollary-39-the-coloured-states-of-the-84-are-not-kaluza-klein-modes-of-c_3-on-y_32').
depends(d11_kk_triality, d11_z6).
depends(d11_kk_triality, d11_colour84).
attempted_by(d11_kk_triality, claude).
checked_by(d11_kk_triality, claude, by_hand).
checked_by(d11_kk_triality, terra_6_1, by_hand).

%% ---------------------------------------------------------------- 04: the two families and the M2/M5 sides in E8
claim(d11_blocks, proposition, proved, "Proposition 4.1", "Among blocks of 12 states made of whole Dirac species, exactly one up-type quark or the three neutrinos together keep both spectral-action values of lemma 21 (cos^2 theta_NC = 5/8 and kappa_em/kappa_s = 8/3) on removal.").
source(d11_blocks, '11D/04_two_families_m2_m5.md', '1-what-singles-out-the-two-blocks').
depends(d11_blocks, l21_removal).
attempted_by(d11_blocks, claude).
checked_by(d11_blocks, claude, by_hand).
checked_by(d11_blocks, terra_6_1, by_hand).

claim(d11_colour_families, no_go, proved, "Propositions 4.2(a), 4.3 (independently checked with amendments)", "The colour contents of F1 and F2 differ, so no colour-commuting unitary exchanges them; for every SU(3) -> SU(9), Lambda^3 C^9 is neither family. With nonzero triplets and no other nontrivial irreducibles, C^9 is 3 + 6 (1) or its conjugate, giving 15 (3) + 6 (3bar) + 21 (1), or its conjugate.").
source(d11_colour_families, '11D/04_two_families_m2_m5.md', '2-colour-obstructions').
depends(d11_colour_families, d11_colour84).
attempted_by(d11_colour_families, claude).
checked_by(d11_colour_families, claude, by_hand).
checked_by(d11_colour_families, terra_6_1, by_hand).

claim(d11_e8_grading, theorem, proved, "Lemma 4.A, Theorem 4.4 (referee amendment)", "The two commuting order-3 gradings of e8 place the left-handed 10 and H_u in grade b=1 and (d^c, L) and nu^c in the b=2 and b=0 sectors according to a sign t. The top and antitop each have chiral components in both b=1 and b=2.").
source(d11_e8_grading, '11D/04_two_families_m2_m5.md', '4-placement-of-the-generation').
attempted_by(d11_e8_grading, claude).
checked_by(d11_e8_grading, claude, by_hand).
checked_by(d11_e8_grading, terra_6_1, by_hand).

claim(d11_yukawa_brackets, proposition, conditional, "Proposition 4.5 (referee amendment)", "If the stated gradings are symmetries, the up-type Yukawa grades lie inside the C_3 sector and the other Yukawa triples use one field in each sector. The physical top mass requires further family or compactification data; in the exact SU(3) family triplet the one-Higgs family tensor is antisymmetric.").
source(d11_yukawa_brackets, '11D/04_two_families_m2_m5.md', '5-yukawa-couplings-as-brackets').
depends(d11_yukawa_brackets, d11_e8_grading).
attempted_by(d11_yukawa_brackets, claude).
checked_by(d11_yukawa_brackets, claude, by_hand).
checked_by(d11_yukawa_brackets, terra_6_1, by_hand).

claim(d11_m2m5_is_j, no_go, proved, "Proposition 4.6 (independently checked with amendment)", "In the specified aligned three-family embedding, a complex e8 automorphism preserving or inverting the family grading cannot exchange the top and neutrino blocks. The complex-linear Chevalley involution preserves both families; an antiunitary J requires an additional conjugation, and its identification with physical M2/M5 duality is a proposal.").
source(d11_m2m5_is_j, '11D/04_two_families_m2_m5.md', '6-in-this-realization-the-m2m5-exchange-is-the-real-structure-j').
depends(d11_m2m5_is_j, d11_e8_grading).
attempted_by(d11_m2m5_is_j, claude).
checked_by(d11_m2m5_is_j, claude, by_hand).
checked_by(d11_m2m5_is_j, terra_6_1, by_hand).

claim(d11_nu_gravity, conjecture, conjectural, "Section 7 (proposal)", "The state nu^c is the gravitational state, which agrees with its placement in the gravity sector of e8 for t = +1/2 and selects that sign.").
source(d11_nu_gravity, '11D/04_two_families_m2_m5.md', '7-agreement-with-files-02-and-03-and-the-finite-geometry').
depends(d11_nu_gravity, d11_e8_grading).
depends(d11_nu_gravity, d11_z6).
depends(d11_nu_gravity, d11_betti_y).
attempted_by(d11_nu_gravity, claude).

claim(d11_discrete_z3, claim, proved, "Remark, section 8", "For t = +1/2 the element s_M of the M-grading gives a discrete Z_3 symmetry that allows the Yukawa couplings, the Majorana mass and the Weinberg operator and forbids the mu term and the dimension-five proton-decay operators.").
source(d11_discrete_z3, '11D/04_two_families_m2_m5.md', '8-remark-a-discrete-symmetry-from-the-m-grading').
depends(d11_discrete_z3, d11_e8_grading).
attempted_by(d11_discrete_z3, claude).
checked_by(d11_discrete_z3, claude, by_hand).
checked_by(d11_discrete_z3, terra_6_1, by_hand).

%% ---------------------------------------------------------------- 05: the colour-family exchange
claim(d11_no_isometry, no_go, proved, "Proposition 5.1 (independently checked)", "As configurations of E8 roots in the specified aligned three-family embedding, the two families of 84 have equal pair counts but are not isometric, so no element of W(E8) maps F1 onto F2 and no isometry of H_F maps the top block onto the neutrino block.").
source(d11_no_isometry, '11D/05_colour_family_exchange.md', 'proposition-51-the-two-families-of-84-are-not-isometric').
depends(d11_no_isometry, d11_blocks).
depends(d11_no_isometry, l21_counts).
attempted_by(d11_no_isometry, claude).
checked_by(d11_no_isometry, claude, by_hand).
checked_by(d11_no_isometry, claude, python("exploratory search of isometries and neighbour counts, exact fractions, not kept")).
checked_by(d11_no_isometry, terra_6_1, by_hand).

claim(d11_transposition, proposition, proved, "Proposition 5.2", "With four families (the 128 roots of the SO(16) spinor), M = -P is an involution in W(E8) that transposes Pati-Salam colour with family and maps the up-type quark of family 0 onto the neutrinos of families 1, 2, 3.").
source(d11_transposition, '11D/05_colour_family_exchange.md', 'proposition-52-four-families-the-transposition-of-colour-and-family').
attempted_by(d11_transposition, claude).
checked_by(d11_transposition, claude, by_hand).
checked_by(d11_transposition, terra_6_1, by_hand).

claim(d11_flip, proposition, conditional, "Proposition 5.3 (referee amendment)", "In the specified four-family finite geometry, a unitary colour-family identification makes the flip unitary and involutive; it commutes with gamma and J and conjugates the top Dirac block into the Dirac blocks of the other three neutrinos. The displayed Pati-Salam and Standard Model algebras are not flip-invariant.").
source(d11_flip, '11D/05_colour_family_exchange.md', 'proposition-53-the-flip-in-a-four-family-finite-geometry').
depends(d11_flip, d11_transposition).
attempted_by(d11_flip, claude).
checked_by(d11_flip, claude, by_hand).
checked_by(d11_flip, terra_6_1, by_hand).

claim(d11_two_heavy, conjecture, conjectural, "Readings 1-4 (proposals)", "Three families are the obstruction to the exchange, M exchanges the two heavy directions of the algebra chain, and the 128 of four families is 44 + 84 under Spin(9).").
source(d11_two_heavy, '11D/05_colour_family_exchange.md', 'readings-proposals').
depends(d11_two_heavy, d11_transposition).
depends(d11_two_heavy, d11_no_isometry).
attempted_by(d11_two_heavy, claude).

claim(d11_misaligned, no_go, proved, "Proposition 5.4 (independently checked with amendment)", "For none of the 192 assignments of the four types to three of the four family slots, aligned or misaligned, is there an isometry of R^8 mapping S - T onto S - N. The original universal neighbour counts are false for some misaligned assignments; the referee gives corrected formulas.").
source(d11_misaligned, '11D/05_colour_family_exchange.md', 'proposition-54-no-three-slot-assignment-admits-the-exchange').
depends(d11_misaligned, d11_no_isometry).
attempted_by(d11_misaligned, claude).
checked_by(d11_misaligned, claude, python("exhaustive neighbour counts over 192 slot assignments, exact fractions, not kept")).
checked_by(d11_misaligned, terra_6_1, by_hand).

claim(d11_four_slots, conjecture, conjectural, "Proposal 5.5 (referee amendments)", "If the families are zero modes of an SU(4) bundle rather than single fibre roots, Propositions 5.1 and 5.4 do not apply as stated. The index gives net chirality; exact zero-mode counts and a compatible Weyl action remain to be established.").
source(d11_four_slots, '11D/05_colour_family_exchange.md', 'proposal-55-four-slots-three-zero-modes').
depends(d11_four_slots, d11_transposition).
attempted_by(d11_four_slots, claude).
checked_by(d11_four_slots, terra_6_1, by_hand).

%% ---------------------------------------------------------------- 06: the main point and the heterotic route
claim(d11_wilson_top, proposition, proved, "Proposition 6.1 (referee amendments)", "The SO(32) Wilson-line charged sector has 30 copies of the lemma-22 channel progressions; the light mass is a/R on 0 <= a <= 1/2. The physical field identification remains a proposal.").
source(d11_wilson_top, '11D/06_main_point_heterotic_route.md', '4-proposition-61-the-top-channel-as-an-so32-wilson-line').
depends(d11_wilson_top, l22_window).
depends(d11_wilson_top, l21_so30).
attempted_by(d11_wilson_top, claude).
checked_by(d11_wilson_top, claude, by_hand).
checked_by(d11_wilson_top, terra_6_1, by_hand).
prior_work(d11_wilson_top, known, "Hosotani 1983 (momenta (n + q a)/R with a Wilson line); SO(32) -> SO(30) x U(1) Wilson line T-dual to fifteen D8-branes plus one displaced (hep-th/9711098, hep-th/0108135); the interval-circle equality is the circle form of lemma 25. The assignment of the top to the displaced brane was not found.").

claim(d11_heterotic_route, conjecture, conjectural, "Sections 2, 3 and 5 (proposals)", "The heterotic web with its regimes 9, 10 and 11 realizes the target: D_F as a Wilson line, lemma 21's SO(30) x SO(2) as fifteen D8-branes and one displaced, and the composite scalars as open strings on the stack.").
source(d11_heterotic_route, '11D/06_main_point_heterotic_route.md', '3-dictionary-proposal').
depends(d11_heterotic_route, d11_wilson_top).
depends(d11_heterotic_route, d11_circle).
attempted_by(d11_heterotic_route, claude).
checked_by(d11_heterotic_route, terra_6_1, by_hand).

%% ---------------------------------------------------------------- 07: dualities between 9 and 11
claim(d11_angle_interval, proposition, proved, "Proposition 7.1 (referee clarification)", "The signed channel spectrum has fundamental domain [0, pi/2], with doubly degenerate periodic and antiperiodic endpoint spectra; the lemma-22 window uses the strict interior.").
source(d11_angle_interval, '11D/07_dualities_9_11.md', '3-proposition-71-the-angle-of-a-channel-lives-on-an-interval').
depends(d11_angle_interval, l22_window).
depends(d11_angle_interval, l23_wz).
attempted_by(d11_angle_interval, claude).
checked_by(d11_angle_interval, claude, by_hand).
checked_by(d11_angle_interval, terra_6_1, by_hand).

claim(d11_far_wall, proposition, proved, "Proposition 7.2 (referee amendment)", "The SO(32) endpoint Wilson line has full centralizer S(O(30) x O(2)); the lemma-24 one-loop minimum is a = 1/2 under its stated hypotheses. The D8 interpretation remains a proposal.").
source(d11_far_wall, '11D/07_dualities_9_11.md', '4-proposition-72-the-far-end-is-the-displaced-d8-brane-on-the-other-wall').
depends(d11_far_wall, d11_angle_interval).
depends(d11_far_wall, d11_wilson_top).
depends(d11_far_wall, l24_no_minimum).
attempted_by(d11_far_wall, claude).
checked_by(d11_far_wall, claude, by_hand).
checked_by(d11_far_wall, terra_6_1, by_hand).

claim(d11_torus_flux, proposition, conditional, "Proposition 7.3 (referee amendment)", "A doubled flux torus has KO-6 signs, a 2p-dimensional kernel and a generated M_p(C) corner. The displayed action is nonunital on the doubled space; adding a scalar summand yields a unital order-zero finite datum.").
source(d11_torus_flux, '11D/07_dualities_9_11.md', '5-proposition-73-a-torus-with-flux-doubled-has-the-colour-form').
attempted_by(d11_torus_flux, claude).
checked_by(d11_torus_flux, claude, by_hand).
checked_by(d11_torus_flux, terra_6_1, by_hand).
prior_work(d11_torus_flux, partial, "Berezin-Toeplitz quantization of the torus (fuzzy torus) is known; the KO-6 doubling with restricted algebra follows lemma 16").

claim(d11_duality_readings, conjecture, conjectural, "Sections 2, 4 (reading), 5 (reading), 6 (proposals and a known remark)", "The dualities between 9 and 11 give the finite geometry two orientifold walls with D_F as D8 positions, Landau levels of a torus with flux as towers, and stacks of D0-branes as the algebra, as proposals.").
source(d11_duality_readings, '11D/07_dualities_9_11.md', '2-what-each-one-offers-the-finite-geometry').
depends(d11_duality_readings, d11_far_wall).
depends(d11_duality_readings, d11_torus_flux).
attempted_by(d11_duality_readings, claude).
checked_by(d11_duality_readings, terra_6_1, by_hand).

%% ---------------------------------------------------------------- 08: the orientifold sign
claim(d11_orientifold_sign, proposition, proved, "Proposition 8.1 (referee clarification)", "The descended antiunitary j with j^2 = s gives O(n) or USp(n) as its unitary commutant on each eigenspace of d^2. Preservation of d, the algebra and physical Chan-Paton data requires further conditions.").
source(d11_orientifold_sign, '11D/08_orientifold_sign.md', '2-proposition-81-the-factorization-sign-fixes-orthogonal-or-symplectic-symmetry').
depends(d11_orientifold_sign, l06_factorization).
attempted_by(d11_orientifold_sign, claude).
checked_by(d11_orientifold_sign, claude, by_hand).
checked_by(d11_orientifold_sign, terra_6_1, by_hand).

claim(d11_wall_multiplicity, proposition, proved, "Proposition 8.2 (referee clarification)", "For k channels, the signed eigenvalue theta/l has multiplicity k in the interior and 2k at the endpoints; the lowest absolute eigenvalue has multiplicities 2k, 2k and 4k at interior, zero and pi/2 respectively.").
source(d11_wall_multiplicity, '11D/08_orientifold_sign.md', '3-proposition-82-wall-channels-come-with-doubled-multiplicity').
depends(d11_wall_multiplicity, d11_angle_interval).
attempted_by(d11_wall_multiplicity, claude).
checked_by(d11_wall_multiplicity, claude, by_hand).
checked_by(d11_wall_multiplicity, terra_6_1, by_hand).

claim(d11_e_walls, conjecture, conjectural, "Remark 8.3 (referee amendments)", "The wall slope arithmetic is conditional on the recalled type I' rule; enhancements require tuned coupling, and 7 + 7 needs two bulk positions summing to L. The E_2 physical electroweak identification remains open.").
source(d11_e_walls, '11D/08_orientifold_sign.md', '4-remark-83-e8-walls-from-15--1-conditional').
depends(d11_e_walls, d11_heterotic_route).
depends(d11_e_walls, d11_far_wall).
attempted_by(d11_e_walls, claude).
checked_by(d11_e_walls, terra_6_1, by_hand).

claim(d11_orientifold_reading, conjecture, conjectural, "Readings of sections 2 and 3", "The odd factorizations of labels 11 and 9 have the symmetry types of O^- and O^+ orientifold planes, and wall channels carry the Chan-Paton counts of D8-branes on the planes.").
source(d11_orientifold_reading, '11D/08_orientifold_sign.md', '2-proposition-81-the-factorization-sign-fixes-orthogonal-or-symplectic-symmetry').
depends(d11_orientifold_reading, d11_orientifold_sign).
depends(d11_orientifold_reading, d11_wall_multiplicity).
attempted_by(d11_orientifold_reading, claude).

%% ---------------------------------------------------------------- 09: the dilaton as a spectral function, SO(32) of the EPJC paper
claim(d11_dilaton_spectral, proposition, conditional, "Proposition 9.1 (referee clarification)", "Given the recalled slope rule and sixteen selected channel values m_k, z is z(0) plus c Tr g_x(l |D_F|) over that channel space, and the far-wall zero condition is z(0) = (2cL/pi)(4 pi - l Sigma m_k). The full physical trace has additional multiplicities.").
source(d11_dilaton_spectral, '11D/09_dilaton_spectral_and_so32.md', '2-proposition-91-the-type-i-coupling-function-is-a-trace-of-a-function-of-the-finite-dirac-operator').
depends(d11_dilaton_spectral, d11_angle_interval).
depends(d11_dilaton_spectral, d11_e_walls).
attempted_by(d11_dilaton_spectral, claude).
checked_by(d11_dilaton_spectral, claude, by_hand).
checked_by(d11_dilaton_spectral, terra_6_1, by_hand).

claim(d11_diquark_strings, proposition, conditional, "Proposition 9.2 (referee amendments)", "The antitriplet counts are (6, 6, 3) in the antisymmetric block and (3, 6, 1) in the symmetric block; the single-line antisymmetric component vanishes. The orientifold projections and physical string identification are conditional.").
source(d11_diquark_strings, '11D/09_dilaton_spectral_and_so32.md', '3-proposition-92-diquarks-as-strings-between-the-stack-and-its-image').
depends(d11_diquark_strings, l21_so30).
depends(d11_diquark_strings, d11_wilson_top).
attempted_by(d11_diquark_strings, claude).
checked_by(d11_diquark_strings, claude, by_hand).
checked_by(d11_diquark_strings, terra_6_1, by_hand).

claim(d11_orientifold_scalars, conjecture, conjectural, "Reading of section 3 (proposal)", "The seesaw sign of Proposition 8.1 and the scalar counts of Proposition 9.2 select the same orientifold type, O8^-.").
source(d11_orientifold_scalars, '11D/09_dilaton_spectral_and_so32.md', '3-proposition-92-diquarks-as-strings-between-the-stack-and-its-image').
depends(d11_orientifold_scalars, d11_diquark_strings).
depends(d11_orientifold_scalars, d11_orientifold_sign).
attempted_by(d11_orientifold_scalars, claude).

claim(d11_so32_comparison, claim, conditional, "Section 1", "The chain SO(32) > SO(2) x SO(30) > SO(2) x SU(5) x SU(3) x U(1), five light quarks in three colours and the top as the SO(2), of A. Rivero, Eur. Phys. J. C 84 (2024) 1058 (arXiv:2407.05397), coincides with lemma 21 and the dictionary of 06; read through a summarizing fetch of the arXiv text.").
source(d11_so32_comparison, '11D/09_dilaton_spectral_and_so32.md', '1-the-so32-of-a-rivero-eur-phys-j-c-84-2024-1058-arxiv240705397').
depends(d11_so32_comparison, l21_so30).
depends(d11_so32_comparison, d11_heterotic_route).
attempted_by(d11_so32_comparison, claude).
checked_by(d11_so32_comparison, claude, by_hand).
referee_pending(d11_so32_comparison).
prior_work(d11_so32_comparison, partial, "The chain and the composite counts are known (the EPJC paper; hep-ph/0512065); the type I' realization (the top as a displaced D8-brane, the 30 as Chan-Paton labels on an O8^- wall) was not found there.").

claim(d11_real_structure_diquarks, no_go, proved, "Proposition 9.3 (independently checked with amendment)", "For an antiunitary J exchanging V and Vbar and a Hermitian J-compatible X, the particle-antiparticle block obeys B = eps eps' B^T. For KO labels 9, 10, 11 the sign is +1, excluding nonzero antisymmetric blocks within one multiplet. The signs permit only a subspace of S^2 V; actual fluctuations and interval scalar modes require further construction.").
source(d11_real_structure_diquarks, '11D/09_dilaton_spectral_and_so32.md', '4-proposition-93-the-real-structure-decides-between-the-two-diquark-counts').
depends(d11_real_structure_diquarks, d11_diquark_strings).
depends(d11_real_structure_diquarks, l06_factorization).
depends(d11_real_structure_diquarks, l21_so30).
depends(d11_real_structure_diquarks, d11_wilson_top).
attempted_by(d11_real_structure_diquarks, claude).
checked_by(d11_real_structure_diquarks, claude, by_hand).
checked_by(d11_real_structure_diquarks, terra_6_1, by_hand).

claim(d11_dp_walls, conjecture, conjectural, "Section 5, item 1 (referee amendment)", "The E-type wall and local del Pezzo correspondence is conditional on the recalled dualities. The usual E_1 and tilde E_1 engineering assignments distinguish P1 x P1 from dP_1; dP_2 has the expected A1 root.").
source(d11_dp_walls, '11D/09_dilaton_spectral_and_so32.md', '5-two-more-dualities-between-9-and-11-recalled-proposals').
depends(d11_dp_walls, d11_e_walls).
attempted_by(d11_dp_walls, claude).
checked_by(d11_dp_walls, terra_6_1, by_hand).

claim(d11_transposition_tduality, conjecture, conjectural, "Section 4, item 2 (proposal)", "The colour-family transposition of 05 is a nine-dimensional T-duality, which by itself is a gauge relabelling of Wilson lines.").
source(d11_transposition_tduality, '11D/09_dilaton_spectral_and_so32.md', '5-two-more-dualities-between-9-and-11-recalled-proposals').
depends(d11_transposition_tduality, d11_transposition).
attempted_by(d11_transposition_tduality, claude).

%% ---------------------------------------------------------------- strategy
strategy(t14, open, "Eleven dimensions from massless W and Z: the interval of H as an antiperiodic circle and as the M-theory circle; Witten's space M^{111} as the hypercharge quotient of the 5-bar; hypercharge from C_3, matter from wrapped branes, the Higgs as the M2 position; the magnetic completion AdS5 x CP^2 x S^2; the 84 of lemma 21 against C_3.").
addresses(t14, d11_circle).  addresses(t14, d11_m_circle).  addresses(t14, d11_casimir).  addresses(t14, d11_scale_free).
addresses(t14, a11_joint_limit).  addresses(t14, a11_localized).
addresses(t14, d11_quotient).  addresses(t14, d11_unique).  addresses(t14, d11_topology).  addresses(t14, d11_z6).
addresses(t14, d11_flux_nogo).  addresses(t14, d11_flux_fit).
addresses(t14, d11_betti_y).  addresses(t14, d11_fock).  addresses(t14, d11_fock_branes).  addresses(t14, d11_higgs_m2).
addresses(t14, d11_ads5).  addresses(t14, d11_two_completions).  addresses(t14, d11_colour84).  addresses(t14, d11_kk_triality).
addresses(t12, d11_colour84).  addresses(t12, d11_two_completions).  addresses(t11, d11_circle).
addresses(t14, d11_blocks).  addresses(t14, d11_colour_families).  addresses(t14, d11_e8_grading).  addresses(t14, d11_yukawa_brackets).  addresses(t14, d11_m2m5_is_j).  addresses(t14, d11_nu_gravity).  addresses(t14, d11_discrete_z3).
addresses(t12, d11_blocks).  addresses(t12, d11_m2m5_is_j).
addresses(t14, d11_no_isometry).  addresses(t14, d11_transposition).  addresses(t14, d11_two_heavy).
addresses(t12, d11_no_isometry).  addresses(t14, d11_flip).  addresses(t12, d11_transposition).
addresses(t14, d11_misaligned).  addresses(t14, d11_four_slots).  addresses(t14, d11_wilson_top).  addresses(t14, d11_heterotic_route).
addresses(t12, d11_heterotic_route).
addresses(t14, d11_angle_interval).  addresses(t14, d11_far_wall).  addresses(t14, d11_torus_flux).  addresses(t14, d11_duality_readings).
addresses(t12, d11_far_wall).  addresses(t0, d11_torus_flux).
addresses(t14, d11_orientifold_sign).  addresses(t14, d11_wall_multiplicity).  addresses(t14, d11_e_walls).  addresses(t14, d11_orientifold_reading).
addresses(t2c, d11_orientifold_sign).
addresses(t14, d11_dilaton_spectral).  addresses(t14, d11_diquark_strings).  addresses(t14, d11_orientifold_scalars).  addresses(t14, d11_so32_comparison).  addresses(t14, d11_dp_walls).  addresses(t14, d11_transposition_tduality).
addresses(t2c, d11_orientifold_scalars).
addresses(t14, d11_real_structure_diquarks).
