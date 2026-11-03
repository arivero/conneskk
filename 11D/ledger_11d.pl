%% 11D/ledger_11d.pl -- ledger facts of the 11D line (branch 11D), included by ../ledger.pl.
%% Same predicates and conventions as ledger.pl. Agent atom `claude`: Claude (Anthropic), the author of every claim here.
%% Every proved claim below is checked only by its author and carries referee_pending/1; the referee request is
%% 11D/prompts/terra_check_11d.md. The two negative results (d11_flux_nogo, d11_colour84) are entered as propositions
%% until a second model has checked them; they become no_go claims when it has.

%% ---------------------------------------------------------------- 01: the interval as the eleventh dimension
claim(d11_circle, proposition, proved, "Proposition 1.1", "The chiral interval of lemma 05, eq. (8), is unitarily the antiperiodic circle of radius R = l/pi: D_l goes to -i d/dx, the grading to the reflection x -> -x, the walls to its fixed points, scalar functions to reflection-even functions; m = pi/(2l) = 1/(2R).").
source(d11_circle, '11D/01_interval_and_eleventh_dimension.md', 'proposition-11-the-chiral-interval-is-the-antiperiodic-circle').
depends(d11_circle, l05_truncation).
attempted_by(d11_circle, claude).
checked_by(d11_circle, claude, by_hand).
referee_pending(d11_circle).

claim(d11_m_circle, conjecture, conjectural, "Proposal 1.3", "The circle of H is the M-theory circle: v -> 0 is strong coupling with the D0 (momentum) tower becoming light; v -> infinity is a shrinking circle with antiperiodic fermions and no bulk fermions, as in type 0 strings; light fermions of the 9 endpoint come from branes or walls.").
source(d11_m_circle, '11D/01_interval_and_eleventh_dimension.md', 'proposal-13-the-circle-of-h-as-the-m-theory-circle').
depends(d11_m_circle, d11_circle).
attempted_by(d11_m_circle, claude).

claim(d11_casimir, proposition, proved, "Proposition 1.4", "Under the hypotheses of Theorem 24.9, the one-loop potential at its minimum theta = pi/2 is -93 zeta(5) n_f/(512 pi^2 l^4), so the walls attract and the energy drives l -> 0 (the 9 label); F(1) = 93 zeta(5)/64.").
source(d11_casimir, '11D/01_interval_and_eleventh_dimension.md', 'proposition-14-the-one-loop-energy-at-the-vacuum-angle-attracts-the-walls').
depends(d11_casimir, l24_no_minimum).
attempted_by(d11_casimir, claude).
checked_by(d11_casimir, claude, python("11D/checks_11d.py section F: series against quadrature")).
referee_pending(d11_casimir).

%% ---------------------------------------------------------------- 02: Witten spaces as the hypercharge quotient
claim(d11_quotient, theorem, proved, "Theorem 2.1", "M^{111} = Y_{3,2} = (S^9 cap mu_Y^{-1}(0))/U(1)_Y for the 5-bar = (3bar,1)_{1/3} + (1,2)_{-1/2}: a circle bundle of O(3,2) over CP^2 x CP^1, Calabi-Yau cone because tr Y = 0, effective group (U(3) x U(2))/U(1)_Y, whose intersection with SU(3) x SU(2) is the centre Z_6.").
source(d11_quotient, '11D/02_witten_spaces_hypercharge_quotient.md', 'theorem-21-m111-is-the-hypercharge-quotient-of-the-5-bar').
attempted_by(d11_quotient, claude).
checked_by(d11_quotient, claude, python("11D/checks_11d.py sections A, B: weights, Calabi-Yau condition, Z_6")).
referee_pending(d11_quotient).

claim(d11_unique, proposition, proved, "Proposition 2.2", "Among circle quotients of S^5 x S^3 with coprime weights (b, -a), only (3,2) has a Calabi-Yau cone; a free circle quotient of a moment level in a complex representation of dimension n has dimension 2n - 3, which is 7 only for n = 5 (the 5 and 5-bar of SU(5)).").
source(d11_unique, '11D/02_witten_spaces_hypercharge_quotient.md', 'proposition-22-uniqueness-of-the-count-7').
depends(d11_unique, d11_quotient).
attempted_by(d11_unique, claude).
checked_by(d11_unique, claude, python("11D/checks_11d.py section A")).
referee_pending(d11_unique).

claim(d11_topology, proposition, proved, "Proposition 2.3", "Circle bundle Y_{a,b} over CP^2 x CP^1, a != 0: H^2 = Z + Z/gcd(a,b), b_3 = 0, H^4 of order a^2 with Smith invariants (gcd, a^2/gcd), spin iff a odd and b even; for (3,2) H^4 = Z/9 and H^2(B) -> H^2(Y) = Z is (x,y) -> 2x - 3y.").
source(d11_topology, '11D/02_witten_spaces_hypercharge_quotient.md', 'proposition-23-topology-of-y_ab').
attempted_by(d11_topology, claude).
checked_by(d11_topology, claude, python("11D/checks_11d.py section C: Smith invariants, spin condition")).
referee_pending(d11_topology).

claim(d11_z6, proposition, proved, "Proposition 2.4", "Every monomial in U, V and every state of Lambda^*(5-bar) satisfies 2t + 3d + 6Y = 0 mod 6; Y-neutral monomials have t = d = 0; tensor fields on Y_{3,2} carry representations of PSU(3) x SO(3) x U(1)_R, so no bosonic Kaluza-Klein mode is a colour triplet or weak doublet.").
source(d11_z6, '11D/02_witten_spaces_hypercharge_quotient.md', 'proposition-24-the-z_6-of-the-standard-model').
depends(d11_z6, d11_quotient).
attempted_by(d11_z6, claude).
checked_by(d11_z6, claude, python("11D/checks_11d.py section B")).
referee_pending(d11_z6).

claim(d11_flux_nogo, proposition, proved, "Proposition 2.5 (negative result, pending check)", "Ten-dimensional Weyl fermions on CP^2 x CP^1 with abelian fluxes, canonical spin^c root, one ten-dimensional field per Standard Model field: no generation for fluxes along Y and B - L; in general u^c and d^c need the same line bundle and 2j + 1 must be linear in the fluxed charges.").
source(d11_flux_nogo, '11D/02_witten_spaces_hypercharge_quotient.md', 'proposition-25-no-generation-from-fluxes-along-hypercharge-and-b---l').
attempted_by(d11_flux_nogo, claude).
checked_by(d11_flux_nogo, claude, python("11D/checks_11d.py section D: required bidegrees, span test, search over a third charge in [-3,3]^6")).
referee_pending(d11_flux_nogo).

claim(d11_flux_fit, proposition, proved, "Proposition 2.6", "With fluxed charges F (universal), chi (+1 on Q, L; -1 on the conjugates) and B - L, one generation with nu^c is the exact index content; u^c, d^c share O(1,0) and e^c, nu^c share one line bundle, so the flux sees SU(2)_R doublets and leaves T_3R unfluxed.").
source(d11_flux_fit, '11D/02_witten_spaces_hypercharge_quotient.md', 'proposition-26-one-generation-from-a-universal-charge-the-grading-and-b---l').
depends(d11_flux_fit, d11_flux_nogo).
attempted_by(d11_flux_fit, claude).
checked_by(d11_flux_fit, claude, python("11D/checks_11d.py section D2")).
referee_pending(d11_flux_fit).

%% ---------------------------------------------------------------- 03: branes, hypercharge and the 84
claim(d11_betti_y, conjecture, conjectural, "Proposal 3.1", "Hypercharge is the Betti vector of Y_{3,2} (C_3 on the harmonic two-form); the gauge group of AdS4 x Y_{3,2} is SU(3) x SU(2) x U(1)_Y x U(1)_R; states with Y != 0 are wrapped branes, and the N = 1 fivebrane baryons are d^c and L.").
source(d11_betti_y, '11D/03_branes_hypercharge_and_the_84.md', 'proposal-31-hypercharge-is-the-betti-vector-of-y_32').
depends(d11_betti_y, d11_topology).
depends(d11_betti_y, d11_z6).
attempted_by(d11_betti_y, claude).

claim(d11_fock, proposition, proved, "Proposition 3.2", "Lambda^odd(5-bar) = 5-bar + 10 + 1 is one generation with nu^c and Lambda^even its conjugate; X = 5 - 2k on Lambda^k; 6Y is the total class of the corresponding baryonic five-cycles.").
source(d11_fock, '11D/03_branes_hypercharge_and_the_84.md', 'proposition-32-one-generation-is-the-odd-part-of-the-exterior-algebra-of-the-5-bar').
attempted_by(d11_fock, claude).
checked_by(d11_fock, claude, python("11D/checks_11d.py section B")).
referee_pending(d11_fock).
prior_work(d11_fock, known, "The 16 of SO(10) as the odd forms on C^5 (standard).").

claim(d11_fock_branes, conjecture, conjectural, "Conjecture 3.3", "At N = 1 one generation and its conjugate are the exterior algebra of five fermionic zero modes of fivebranes wrapped on the baryonic cycles, with hypercharge the homology class and X the number of fivebranes.").
source(d11_fock_branes, '11D/03_branes_hypercharge_and_the_84.md', 'proposition-32-one-generation-is-the-odd-part-of-the-exterior-algebra-of-the-5-bar').
depends(d11_fock_branes, d11_fock).
depends(d11_fock_branes, d11_betti_y).
attempted_by(d11_fock_branes, claude).

claim(d11_higgs_m2, conjecture, conjectural, "Proposal 3.4", "The Higgs is the M2 position on the doublet line of the resolved cone (fixed by SU(3) and T_3 + Y on the brane coordinates); v -> 0 is the apex, with near-horizon AdS4 x Y_{3,2} and the Standard Model group unbroken.").
source(d11_higgs_m2, '11D/03_branes_hypercharge_and_the_84.md', 'proposal-34-the-higgs-is-the-position-of-the-m2-brane-and-the-massless-limit-is-the-apex').
depends(d11_higgs_m2, d11_betti_y).
attempted_by(d11_higgs_m2, claude).

claim(d11_ads5, proposition, proved, "Proposition 3.5", "AdS5 x CP^2 x S^2 with G_4 = f_1 vol(CP^2) + f_2 J ^ vol(S^2) solves eleven-dimensional supergravity with R_AdS = -(f_1^2 + 2 f_2^2)/6, R_CP2 = f_1^2/3 + f_2^2/6, R_S2 = 2 f_2^2/3 - f_1^2/6; round factors iff abs(f_1) < 2 abs(f_2). Supersymmetry and stability not checked.").
source(d11_ads5, '11D/03_branes_hypercharge_and_the_84.md', 'proposition-35-a-magnetic-completion-ads5-x-cp2-x-s2').
attempted_by(d11_ads5, claude).
checked_by(d11_ads5, claude, python("11D/checks_11d.py section G: all frame components of the flux bilinear")).
referee_pending(d11_ads5).

claim(d11_two_completions, conjecture, conjectural, "Proposals 3.6, 3.7", "CP^2 x S^2 has an electric completion AdS4 x Y_{3,2} and a magnetic completion AdS5 x CP^2 x S^2, both 4 + 1 + 6 with the 1 as fibre or as AdS5 radius; the M2/M5 exchange acts on hypercharge as electric-magnetic duality and does not permute the 96 states.").
source(d11_two_completions, '11D/03_branes_hypercharge_and_the_84.md', 'proposal-36-two-completions-of-one-base').
depends(d11_two_completions, d11_ads5).
depends(d11_two_completions, d11_betti_y).
attempted_by(d11_two_completions, claude).

claim(d11_colour84, proposition, proved, "Proposition 3.8 (negative result, pending check)", "For every homomorphism SU(3) -> SO(9), Lambda^3 R^9 (and Lambda^6 R^9) is not the colour content of either family of 84 of lemma 21: real nine-dimensional representations give only singlets, a 6bar, or 10 + 27.").
source(d11_colour84, '11D/03_branes_hypercharge_and_the_84.md', 'proposition-38-no-colour-equivariant-identification-of-the-84-with-the-three-form').
depends(d11_colour84, l21_counts).
attempted_by(d11_colour84, claude).
checked_by(d11_colour84, claude, python("11D/checks_11d.py section E: weights of Lambda^3")).
referee_pending(d11_colour84).

claim(d11_kk_triality, corollary, proved, "Corollary 3.9", "Under the quotient realization no Kaluza-Klein mode of C_3 or of the metric on Y_{3,2} is a colour triplet, so the coloured states of either family of 84 are not modes of C_3 on Y_{3,2}.").
source(d11_kk_triality, '11D/03_branes_hypercharge_and_the_84.md', 'corollary-39-the-coloured-states-of-the-84-are-not-kaluza-klein-modes-of-c_3-on-y_32').
depends(d11_kk_triality, d11_z6).
depends(d11_kk_triality, d11_colour84).
attempted_by(d11_kk_triality, claude).
checked_by(d11_kk_triality, claude, by_hand).
referee_pending(d11_kk_triality).

%% ---------------------------------------------------------------- strategy
strategy(t14, open, "Eleven dimensions from massless W and Z: the interval of H as an antiperiodic circle and as the M-theory circle; Witten's space M^{111} as the hypercharge quotient of the 5-bar; hypercharge from C_3, matter from wrapped branes, the Higgs as the M2 position; the magnetic completion AdS5 x CP^2 x S^2; the 84 of lemma 21 against C_3.").
addresses(t14, d11_circle).  addresses(t14, d11_m_circle).  addresses(t14, d11_casimir).
addresses(t14, d11_quotient).  addresses(t14, d11_unique).  addresses(t14, d11_topology).  addresses(t14, d11_z6).
addresses(t14, d11_flux_nogo).  addresses(t14, d11_flux_fit).
addresses(t14, d11_betti_y).  addresses(t14, d11_fock).  addresses(t14, d11_fock_branes).  addresses(t14, d11_higgs_m2).
addresses(t14, d11_ads5).  addresses(t14, d11_two_completions).  addresses(t14, d11_colour84).  addresses(t14, d11_kk_triality).
addresses(t12, d11_colour84).  addresses(t12, d11_two_completions).  addresses(t11, d11_circle).
