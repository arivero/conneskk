# Second check of the Terra referee of 11D files 01 to 09, by Claude Sonnet 5.5

The user asked, on 4 November 2026, for a second check of each evaluation in [the Terra referee report](2026-11-04_terra_check_11d.md), with Claude Sonnet 5.5, since no other model had quota left. The checks ran in five batches, one at a time, each redoing the step on which a verdict turns and checking the records. The subagents were refused file writes, so each returned its report as text; the reports are filed below verbatim, each followed by the assessment of Claude Opus 5.5, who rechecked the claims against the text and the source lemmas before applying them. Scripts are in the session scratchpad and were not kept in the repository.

## Batch 1: files 01 and 02

### Report

A. Verdicts

1. Prop 1.1 and joint family: PARTLY. Map, domains, grading, spectrum (k+1/2)pi/l, r window states, gap and N(E)=2 r l E/pi redone and correct. Missing: the joint family lives on the periodic circle (B1).
2. Prop 1.4: AGREE. F(1)=93 zeta(5)/64, J(0)=3 zeta(3)/2 and slope (54/5-n_f)J(0) reproduced; normalization matches lemmas 23, 24.
3. Prop 1.5: AGREE. Counterexample G=theta^4 and small-angle claim hold; true-determinant roots of theta G'-4G are isolated (1.0094 at n_f=48, 1.0309 at n_f=16, A_0 from 11D/10). Remark 10.7 and Terra amend different sentences: no conflict.
4. Prop 2.5: AGREE. Cohomology table enumerated for common and independent chirality, both colour conventions: no flux in span(6Y, 3(B-L)) works, with or without nu^c; c_L=-3 c_Q forbids |P_2|=2 on both doublets.
5. Prop 2.6: AGREE. Exactly the two stated solutions; on P(3bar) the first components reverse; none without chi or B-L, for either chirality hypothesis.
6. Thm 2.1, Props 2.2, 2.4: AGREE. Freeness, Euler class (3,2), Z_6, congruence, transverse Einstein constants 10, 10, factor 5/4. M^{111} identification: COULD NOT CHECK (no repository source); label "conditional" is honest.
7. Prop 2.3: AGREE. Smith forms for nine pairs; (3,2): H^2=Z, H^3=0, H^4=Z/9, spin. Kreck-Stolz: COULD NOT CHECK.

Ledger and README rows match all seven verdicts (status and checkers). Recorded as sonnet_5_5, this check gives d11_flux_nogo a third identifier, in its stated scope.

B. Corrections, by severity

1. 11D/01 line 36 ("the parent unfolds to -i d/dx + D_F on this circle (lemma 25)") and line 44 ("In the circle language of Proposition 1.1"): Proposition 25.1 unfolds the lemma-22 parent to the periodic circle. Write "unfolds to -i d/dx + D_F on the periodic circle of length 2l; theta interpolates between it (theta=0) and the antiperiodic circle of Proposition 1.1 (theta=pi/2); the joint-family window is the n=0 mode".
2. 11D/01 Prop 1.5: line 5 says "amended at its statement below", yet heading (line 88) and lines 92-97 are unchanged. Replace line 97 by "If the roots of theta G'-4G are isolated, a stationary branch has l=theta_*/m (alpha=1; Remark 10.7 for small theta_*). A root interval (G=theta^4 near 0) makes every alpha<1 stationary and selects none." The universal wording also stands in STRATEGY.md line 77, INDEX.md line 497, 11D/06 line 63, paper/connes_kk_dictionary_note.tex line 112.
3. 11D/02 lines 62-77: lemma table, Statement ("the same image", "2j+1 ... linear") and first two proof sentences need "common ten-dimensional chirality"; add the chirality-free proof (|M_2(c)|=2 on Q and L, c_L=-3 c_Q). STRATEGY.md line 77 still reads "pending check".
4. Stale headers: 11D/01 line 3, 11D/02 line 3 ("Referee pending"; "pending an independent check"; "Theorem 2.1 ... proved here" against ledger "conditional").
5. Prop 2.4(c): ledger d11_z6, 11D/02 lines 50, 52, 101 and STRATEGY.md line 77 say "no bosonic Kaluza-Klein mode" without the Terra scope; add "tensor modes on a background invariant under the displayed action; spinors open".
6. 11D/02 line 26 "Sym^{3k}(3bar) x Sym^{2k}(2): for k = 1 this is the (10, 3)": Sym^3(3bar)=10bar; write Sym^{3k}(3) for functions. Line 60: add "convention for base P(3); for P(3bar) use (c_0,c_1)=(9/4,3/4) or (3/2,3)".
7. 11D/01 line 50 "(on the circle of Proposition 1.1, fibre C^2, ...)": write "the scalar circle gives 2 l E/pi; fibre H_F gives 2 r l E/pi". Prop 1.1 item 3: "even f(|x|), Lipschitz at the fixed points".
8. 11D/10 Prop 10.6 item 3 ("no joint family results") needs the Prop 1.5 scope (V=0 or tuned H leaves flat directions).

C. Derivations

B1: one channel, walls Q_R=0, U_L=0 at 0 and Q_R=X U_R, U_L=-X Q_L at l, X=tan(theta): the determinant vanishes at l*lambda = n pi +- theta, so n pi at X=0 (zero mode), (n+1/2) pi as X tends to infinity.
B2: (theta G'-4G+4A_0)/theta^2 tends to -2c, c=(54/5-n_f)J(0).
B3: left-handed fields come from left-handed modes (pairing +(alpha+3/2, beta+1)) or conjugated right-handed modes (pairing minus that); common chirality gives P_2=+(2j+1), independent chirality +-(2j+1). Third charge z: coefficients (-1,3), d^c gives -5 against 1; no vector of 117,649 passes both components.
Scripts (Python): s1_oneloop.py, s2_flux.py, s3_topology_spectra.py, s4_periodicity.py, s5_third_charge.py, s6_unfolding_map.py.

### Assessment

Checked against the sources by Claude Opus 5.5. Correction 1: lemma 25, Proposition 25.1, is stated on the circle with periodic conditions, while Proposition 1.1 concerns the chiral interval, which is antiperiodic; applied in 11D/01 and in the dictionary note. Correction 2: G = theta^4 gives V = m^4, constant in l, so every l is stationary; applied, with the heading changed and the INDEX link updated. Correction 3: in the span of 6Y and 3(B - L), Q has charges (1, 1) and L has (-3, -3), so the chirality-free argument holds; added as a scope note. Corrections 4, 5, 7 (first part) and 8: applied. Correction 6: the tensor and function spans are now distinguished; the colour-convention point for Proposition 2.6 was already in the referee note of 11D/02. The Lipschitz point is in the referee note of 11D/01. The ledger records sonnet_5_5 as a second checker on the ten rows of files 01 and 02.

## Batch 2: files 03 and 04

### Report

Second check of Terra sections on 11D files 03 and 04 (Claude Sonnet 5.5; Python 3 scripts). Ledger and README rows otherwise match Terra.

A. Verdicts
1. Prop 3.2: AGREE. Odd Lambda^k(5bar) = SM Weyl fields, even = conjugates, X = 3, -1, -5.
2. Prop 4.1: AGREE. Lemma 21 sums rebuilt from SM charges; among 12-state whole-species blocks only u, c, t and the three neutrinos keep (5/8, 8/3).
3. Prop 3.8, Cor 3.9: AGREE. All 17 nine-dimensional SU(3) representations decomposed; self-conjugate ones are 9(1), 3+3bar+3(1), 8+1; centre trivial on Y_{3,2}.
4. Props 4.2, 4.3: AGREE with both amendments. None of the 17 Lambda^3 equals F1 or F2; only 9(1), 3+6(1), 3bar+6(1) give {1,3,3bar}; 4.2(b) needs a factor-preserving map.
5. Lemma 4.A, Thm 4.4: PARTLY. Table, 45+45+6 and 33+33+30 reproduced from explicit E8 roots in two models; the chirality amendment covers only the top (B1).
6. Prop 4.5: AGREE. At root level Q u^c H_u, Q d^c H_d, L e^c H_d, L nu^c H_u all carry family tensor eps_ijk; Y = eps.h has singular values (|h|, |h|, 0).
7. Section 8: AGREE; 14 operator grades redone.
8. Prop 4.6: AGREE. Dimension and Schur arguments sound; the blocks are congruent in R^8, so the grading carries the obstruction; the orbit of the top block under <W(A2 x E6), -1> (810 sets) misses the neutrino block.
9. Prop 3.5: AGREE. Normalization R_MN = (1/12)(G_MPQR G_N^PQR - g_MN G^2/12) (action R - G^2/48, mostly plus), checked on AdS4 x S7 and AdS7 x S4; all components and |f1| < 2|f2| redone.

B. Corrections, by severity
1. 04 lines 74, 105, 111: the chirality amendment also applies to the neutrinos. For t = +1/2, nu_L is in C_6, nu^c and nu_R in gravity, conj(nu_L) in C_3. Complete blocks give (C_3, C_6, gravity) = (6,6,0) for the top, (3,3,6) for the neutrinos, both signs of t (conjugation-closed blocks always have equal C_3 and C_6 counts). Restrict "the top on the M2 side, the neutrinos on the M5 and gravity sides" and "The particle neutrinos lie outside the C_3 sector" to the a = 1 fields and add these counts.
2. 04 line 34: the false "exactly" clause stays in Proposition 4.3; write "exactly when C^9 is 9(1), 3+6(1) or 3bar+6(1)". Ledger d11_colour_families and README row 4.2/4.3 ("With nonzero triplets and no other nontrivial irreducibles, C^9 is ...") apply the condition to C^9, which 3+3+3(1) satisfies; apply it to Lambda^3 C^9. Line 28: add "tensor-factor-preserving" to 4.2(b).
3. 03 line 105, ledger d11_kk_triality, README row 3.8/3.9: add "tensor", "on a background invariant under the displayed action", "spinors open" (as 8b92f59 for d11_z6); likewise 03 line 25, 04 line 109.
4. 04 line 105: "does not preserve the family grading" -> "neither preserves nor inverts it". The proved scope, phi(s_f) = s_f^{+-1}, contains every automorphism normalizing <s_f, s_M>. Add that Proposition 5.1 excludes any W(E8) element mapping F1 onto F2 for aligned families. STRATEGY.md T14 repeats the claim ("must come from a colour-family exchange").
5. Stale: 03 and 04 line 3 ("Referee pending", "pending an independent check"); STRATEGY.md T14 ("referee pending", "(pending check)"); 11D/README.md lines 5, 92.
6. Section 8 (ledger d11_discrete_z3, plus a note in 04): selection rule of the single element s_M, a symmetry only if the E6 breaking commutes with it; (nu^c)^2, LLH_uH_u and LH_u, allowed by s_M, are forbidden by the family Z_3 (a = 2, 1, 2).
7. Wording: "closes" (03 line 105, 04 line 38) -> "excludes, in that scope"; two negation-first contrasts in 04 (lines 32, 105); 04 section 6 heading states a proposal as a result (fix INDEX.md line 527 with it); ledger d11_ads5: add flux quantization to "not checked".

C. Scripts (Python): b2_ext5bar_blocks.py (A1, A2); b2_su3_cases.py (A3, A4, B2); b2_e8_gradings.py (A5, A7, B1, B6; 240 roots, grades from Bourbaki marks and from b = a + 2T_3); b2_yukawa_family.py (A6); b2_blocks_weyl.py and b2_z3_group.py (A8, B4); b2_ads5.py (A9). Recalled-fact labels are honest; no conflict with 11D/10 or 11D/11. After B2 and B4, recording sonnet_5_5 gives d11_colour84, d11_colour_families, d11_m2m5_is_j three identifiers.

### Assessment

Checked by Claude Opus 5.5. Correction 1: from Theorem 4.4 with b -> -b for conjugates, conj(nu_L) has b = -2 = 1 for t = +1/2, so it lies in C_3; the counts (6, 6, 0) and (3, 3, 6) follow per colour and per generation, for both signs of t. Correction 2: C^9 = 3 + 3 + 3 (1) has 3 x 3 = 6 + 3bar inside Lambda^2, so the condition belongs on Lambda^3 C^9; the trivial 9 (1) gives 84 singlets, as Terra noted. Corrections 3 to 7: applied as stated; the section 6 heading of 04 is now "The Chevalley involution and the real structure J", with the INDEX link updated. The ledger records sonnet_5_5 on the eleven rows of files 03 and 04, and the 11D README now says that the checked no-go results have three model identifiers, each in its scope.

## Batch 3: file 05

### Report

A. Verdicts

1. 5.1 AGREE. d = 22 on all 96 roots; F2: d = 20 (36 roots), 19 (48); F1: 16 (4), 22 (8), 20 (24), 19 (48); pair counts 42/816/1812/816; Terra 4x4 table and 12 slot/top choices reproduced. "Isometry of R^8" is the right notion (distance-preserving bijections extend; W(E8) is a subgroup). "Canonical up to W(E8)" holds for the chain E8 > SO(10) x SU(4) only (C2).
2. 5.2 AGREE. M = -P has 8 sign changes, lies in W(D8), M^2 = 1 on all 240 roots; T(0) <-> N(1,2,3), D(0) <-> E(1,2,3); nu_L, e_L of family 0 fixed; u^c, d^c, nu^c, e^c go to conjugate roots.
3. 5.3 PARTLY. Unitarity amendment and all stated properties confirmed (F^2 = 1, [F,gamma] = [F,J] = 0, rank 12, kernel 116). Missing: F differs from M (C1).
4. 5.4 AGREE. All 192 rerun; Terra formulas hold root by root; S - N: {19,20} in 48, {13,17,19,20} in 144 configurations; S - T pattern (16,16,22) in 96. The 11D/10 sentence is right.
5. 5.5 AGREE. No proved statement is contradicted; Props 5.1 and 5.4 concern E8-torus weights, which an irreducible SU(4) bundle lacks (argument). For aligned split bundles with n_i >= 0, sum 3, the obstruction persists (C3). Labels "recalled" (BHOP, Spin(9)) honest; 128 = 44 + 84 confirmed.

B. Corrections (11D/05 unless stated)

1. Line 66, "This is the finite-geometry form of Proposition 5.2." -> "F equals M on left-handed states and M followed by particle-antiparticle exchange on right-handed ones; F exchanges T_top and T_nu but lies outside W(E8); M flips gamma on 64 states." Reading 2 (line 91) likewise.
2. Line 72: replace "In every case S - N has d = 19 and d = 20 only, ..." by "S - N has d in {13,17,19,20} ({19,20} iff the down-quark and charged-lepton slot sets coincide, 48 of 192); each neutrino root of S - T has d = 16 + 6(1_A(f) - 1_{0}(f))." Line 74 ("scratch script not kept"): cite tools/check_11d_10_11/s5_e8_prop54.py and the referee proof.
3. Lines 84, 86: "their number" -> "their net number"; "fall under Proposition 5.1" -> "only for n = (1,1,1,0) up to order; for n_i >= 0 the obstruction persists (C3)".
4. Line 46 item 3 -> "nu_L, e_L of family 0 fixed; nu^c, e^c to negatives; u^c, d^c to conjugates". Line 58: "Fix an isomorphism" -> "Fix a unitary isomorphism". Line 36: "canonical up to the Weyl group of E8" -> "unique up to W(E8) for the aligned (16,3)+(16bar,3bar)".
5. Line 3: "pending an independent check", "Referee pending." -> "refereed by GPT-6.1 Terra and checked a second time by Claude Sonnet 5.5".
6. Line 78, Reading 1 (line 90), 11D/README.md line 99: "three families" results stated beyond the proved scope (single roots, three of four slots); cite 5.1 and 5.4.
7. 11D/ledger_11d.pl: add checked_by(_, sonnet_5_5, python(...)) to d11_no_isometry, d11_transposition, d11_flip, d11_misaligned (dry run: tests pass; both no-go rows reach three models); replace "not kept" in d11_misaligned by the kept script. d11_flip: conditional without a named hypothesis, README row 5.3 says independently checked. Referee notes and README rows 5.1-5.5 match Terra.

C. Derivations

C1 (b3_flip_vs_M.py): uR, dR are negatives of the u^c, d^c roots. F = M on the 64 left-handed states, F = -M on the 64 right-handed. F changes 3072 of 16384 ordered root inner products, M none. M sends gamma to -gamma on 64 states, so the T_top pair (uL, uR) goes to (nu_L, conjugate nu_R), violating gamma(s1) = -gamma(s2); F keeps it.
C2 (b3_embedding.py, b3_classes.py): the 96 roots are the spinor-type roots among the 162 of (27,3)+(27bar,3bar); the 7560 A3 subsystems of E8 form one W(E8)-orbit with complement D5; the 192 placements give 3 invariant classes.
C3 (b3_multiset.py): S has n_f copies of the 32 roots of slot f; degree multisets of S - T and S - N differ in all 40 (n, top slot) cases.
C4 (b3_prop53.py, numpy): iota unitary, scaled unitary, diag(2,1,1,1) and a non-unitary GL(3) block; F unitary only in the first two; all other properties hold in all four.
Others (Python 3): b3_prop51.py, b3_prop52.py, b3_prop54.py, b3_spin9.py.

### Assessment

Checked by Claude Fable 5.1 (the dialogue model from this batch on). Correction 1 is right and matters: M = -P sends t^c = (-c | ++ | 1) to the negative of a nu^c root, that is to an antiparticle state, while F of Proposition 5.3 acts inside H_f and keeps particles as particles; so F agrees with M only on the left-handed states, and "the finite-geometry form of Proposition 5.2" overstated it. Applied, with Reading 2 qualified. Correction 2: the values {13, 17, 19, 20} agree with the rerun recorded in 11D/10; applied, with the formula for the neutrino degrees. Corrections 3 to 6: applied. Correction 7: the four rows carry sonnet_5_5 with the method named, and the "not kept" entries now cite the kept script. The ledger row d11_flip stays conditional on the unitary identification, which the file now names.

## Batch 4: files 06, 07 and 08

### Report

A. Verdicts

1. Prop 6.1: AGREE. Ad(W_a) on so(32): eigenvalue 1 on 436 = 435+1, e^{±2 pi i a} on 30 each; (n±a)/R = (n pi ± theta)/l; light mass a/R on [0,1/2].
2. Prop 7.1: AGREE. Wall determinant gives lambda l = n pi ± theta; nullity 2 at theta = 0 and, as X -> infinity, pi/2.
3. Prop 7.2: AGREE. Centralizer S(O(30) x O(2)), two components, Lie dimension 436; minimum at t = 1 (n_f = 1, 6, 16, 48). Scope gap: B2.
4. Prop 7.3: AGREE with Terra. h^0(L S_0) = h^1(L^-1 S_0) = p; C^2 = -1 gives (+,+,-); rho(1) has rank p of 2p. M_p + C is unital, order zero, and is lemma 16, Corollary 16.8 with (k_X, k_Y) = (p, 1). Berezin-Toeplitz step: true (Gaussian times Weyl word, exactly; p = 2..5, four spin structures, rank p^2), unproved in the file.
5. 07 §6 remark: AGREE (no Terra check). Commutant dimension 14 for stacks 1, 2, 3; spectrum 0, ±|x_a - x_b|.
6. Prop 8.1: AGREE (j-commutant dimensions n(n-1)/2, n(n+1)/2 for s = +1, -1).
7. Prop 8.2: AGREE (k, 2k; lowest |D|: 2k, 2k, 4k).
8. Remark 8.3: AGREE on arithmetic (15+1: z(0) = 7cL; 7+7: x_1 + x_2 = L; 7+6+triple: x_b = 2L/3). PARTLY on sources: B4.
9. Recalled dualities: AGREE, labels honest. PW and BGL confirm positions = Wilson lines (wilmap), heterotic KK = type I' winding, the slope rule, E_{n+1} (Table 1); others unchecked.

B. Corrections, by severity

1. 11D/10 is right on 10.1 to 10.3 (rechecked; 10.4 to 10.6 unchecked) and conflicts with 07 §4 Reading "distance proportional to a", 06 §3 last row, 06 §6 items 1 and 4, 08 §5 bullet 2. Only 07 §6b and 08 §4 point to 10. Append "(proportional only at constant dilaton; see 10, Proposition 10.1)" and equivalents.
2. 07 §4 note, append: "in SO(32). In Spin(32)/Z_2 the det -1 component sends the lift of W_{1/2} to its negative, so the heterotic centralizer is connected; a -> a+1 holds for SO(32) matrices, the lift has period 2."
3. 08 line 43 ("is not available with colour-respecting moves; E8 x E7 is:"): unapplied Terra replacement: "With colour triples, the proposed E8 x E7 arrangement has seven and six branes at the walls and a bulk triple at 2L/3. Two E8 walls require relaxing the colour-triple rule."
4. 08 §4 item 1: "7 + 7 for E8 x E8" is in neither PW (E8 x E8 left open) nor BGL (E8 x E8 at N = 0, R_h -> 0). Write "extrapolated from the single-wall rule".
5. 07 §5: cite lemma 16, Corollary 16.8; state the Gaussian formula in step (3).
6. 08 §2 Reading: add the (j, d) refinement and the label tension (label 9 with O^+ against the far O8^- wall).
7. 07 §6: "8 n_a n_b per ordered block, 16 n_a n_b per pair".
8. Stale: line 3 of 06, 07, 08 ends "Referee pending." (02, 03 too); README row 8.3 and the 06 §2, 08 §4 notes still call PW and BGL unavailable.
9. Records: add sonnet_5_5 checkers to d11_wilson_top, d11_angle_interval, d11_far_wall, d11_torus_flux, d11_orientifold_sign, d11_wall_multiplicity, d11_e_walls, d11_duality_readings. Notes, ledger rows and README rows otherwise match Terra. Also add the unitality amendment at paper/connes_kk_dictionary_note.tex lines 54, 104.

C. Derivations

B1: PW: lambda = W(x)/(2W(L)), W = int z^{-1/3}. For 15+1, z(L) = 0, rho = (z(x_t)/z(0))^{2/3}: theta = 4 pi (1-rho)/(8-rho), R^2 = 14(8-rho^2)/(8-rho)^2 (as 10.2); x_t/L = 1/2 gives theta = 0.5859 against pi/4.
B2: lifts W~ = G_{2n-1}G_{2n}, g~ = G_1 G_{2n-1} (2n = 8, 12): g~ W~ g~^-1 = -W~. Only these enter, so 2n = 32 agrees; -1 differs from 1 and from the volume element.
B5: rho(a, lambda) = a (+) lambda commutes with J rho(b, mu)^* J^-1 = mu (+) b^T; a unital M_3 on C^6 has commutant M_2, too small for M_3^op.
B6: for s = -1, j swaps the ±mu eigenspaces of d, so the symmetries of (j, d) form U(n/2); s = +1 gives O(n_+) x O(n_-).
Scripts (Python, not kept): b4_walls, b4_spin_lift, b4_so32_wilson, b4_unital, b4_torus, b4_commutant_j, b4_channel, b4_matrix_theory, b4_oneloop.

### Assessment

Checked by Claude Fable 5.1. Correction 1: the conflicts with 11D/10 are real, since Proposition 10.1 is the statement of the sources and the four readings predate it; pointers added at each place. Correction 2: the lift of diag(1_30, -1_2) to Spin(32) is Gamma_31 Gamma_32, which the lift of a reflection pair in the determinant -1 component conjugates to its negative, so the connectedness statement holds; added to the note of 07 §4. Correction 3: the Terra replacement had not been applied on the branch; applied. Correction 4: neither source read on master states the 7 + 7 configuration for E8 x E8; marked as extrapolated. Correction 5: Corollary 16.8 of lemma 16 gives the unital datum with (k_X, k_Y) = (p, 1), and the Gaussian form of the compressed characters is recorded as checked and unproved. Corrections 6 to 9: applied, with the dictionary note's table and text amended for the unital datum. Terra's error verdict on the unital triple of Proposition 7.3 stands, and the row keeps the status conditional.

## Batch 5: file 09 and the sections added by the referee

### Report

A. Verdicts

1. Prop 9.1: PARTLY. Integration, concavity and far-wall formula are correct; the slope rule matches PW eq. (soln). Omitted: x_k = (2L/pi) theta_k holds only for constant z (11D/10 Prop 10.1 is right).
2. Prop 9.2: AGREE. Splits, dimensions and counts (6,6,3), (3,6,1) match lemma 21. PW confirms SO(2n) on O8^- and the (A_i +- A_j)/R strings; USp on O8^+ is outside the sources ("recalled" is honest).
3. Prop 9.3: PARTLY. Sign algebra is correct and consistent with 11.1 to 11.4; "the signs permit only a subspace of S^2 V" is wrong.
4. Section 1: AGREE on both branchings; the EPJC comparison COULD NOT CHECK (no source).
5. Del Pezzo: AGREE, the error is real. BGL Table 1 has E_1 (self-dual radius) at the empty wall; the 5d dictionary is outside the sources.
6. Weyl action: AGREE.
7. Audit section 4: AGREE; asymptotics redone from lemmas 9.4, 9.5; table recomputed.
8. Prop 2.5 third charge: AGREE; the argument holds for any real z and any source chiralities.
9. Prop 3.4: AGREE (Z_3 on U = 0, Z_2 on V = 0).
10. Wording audit: AGREE with all nine reclassifications and the 08 replacement; no first-person singular in 01 to 11.

B. Corrections, by severity (remaining notes, statuses and rows match Terra)

1. ledger d11_dilaton_spectral, README row 9.1, 09 note of section 2: z(L) = z(0) - c(8L - sum x_k) is exact in the positions; x_k = (2L/pi) l m_k holds only for constant z; in general theta_k = (pi/2) W(x_k)/W(L), W = int z^(-1/3) (Prop 10.1). In the 15 + 1 profile the endpoint values 7cL, 8cL stand; theta_t = pi/4 gives 7.358 cL, not 7.5 cL. Add depends(d11_dilaton_spectral, d11_angle_map).
2. Replace "permits only a subspace of the symmetric representation" (09 section 4 note), "The signs permit only a subspace of S^2 V" (ledger d11_real_structure_diquarks) and, by editorial annotation, the same phrase in the Terra audit by "The signs permit all of S^2 V; the algebra, grading and order conditions of a triple select a subspace."
3. paper/connes_kk_dictionary_note.tex, "X with JX = XJ, in the labels 9 to 11": at label 9, JX = -XJ and J^2 = -1; write "JX = eps' XJ with eps eps' = +1". The gauge block is antisymmetric only for s = +1 (usp(30): symmetric).
4. d11_flux_third_general: change to no_go, proved; add checked_by sonnet_5_5; delete referee_pending; update the 02 note, README (intro, row 2.5, next-step 1), PLAN and STRATEGY T14. The open-directions lists name "a changed common twist": that is z = F and is covered. The Prop 2.6 solution (fluxes F, chi, B - L, no Y) lies outside span(Y, B - L, z).
5. "Referee pending." ends line 3 of 09, 02, 03: replace by "Refereed by GPT-6.1 Terra and checked a second time by Claude Sonnet 5.5."
6. 09 section 3 Reading and section 6: add that 11D/11 Prop 11.4 and Theorem 11.3 qualify the O8^-/O8^+ selection (the window sees (3,6,1) also at s = +1; parent scalars need M_15(C) at both walls); 11D/11 is right.
7. Add checked_by(_, sonnet_5_5, by_hand) to a11_localized, d11_flux_third_bounded, d11_higgs_m2, d11_dilaton_spectral, d11_diquark_strings, d11_so32_algebra, d11_real_structure_diquarks, d11_dp_walls, d11_transposition_tduality; d11_so32_comparison stays pending. README and PLAN: the localized table is recomputed.

C. Derivations and runs

9.1: PW (mass), (wilmap): lambda_i = W(x_i)/(2W(L)). For 15 + 1 with z(L) = 0: z(0) = c(8L - x_t), theta_t = (pi/2) 8(1 - rho)/(8 - rho), rho = (z(x_t)/z(0))^(2/3) (Prop 10.2).
9.3: JX = eps' XJ on (v, w) is equivalent to B* = eps eps' K B K and D = eps' K A K^-1 with A Hermitian free, so B ranges over exactly S^2 V (eps eps' = +1) or Lambda^2 V (-1). A gauge generator H = ia has jH = -Hj, so (eps, eps') = (s, -1) (11.1).
2.5: phi(v) = 2v_Q + v_u + v_d kills y, b, p. Since w_L/w_Q = +-1, not -3, w lies outside span(y, b), so span(y, b, z) = span(y, b, w); phi(p) = 0 gives t(4s_Q + s_u + s_d) = 0, so t = 0, a = 0, b_0 = -5/2, p_L = 15/2, not +-3/2.

Runs (python3 -I, scripts not kept): exact fractions, rank [y, b, p, w] = 4 for 1024, 256, 64 sign patterns (six, five, four fields), the Prop 2.6 solution has rank 4, a rank-3 pattern would have refuted the extension; bisection, the four audit rows agree to the printed digits; mpmath quadrature, the PW formula on 15 + 1 equals the Prop 10.2 closed form (theta_t = 0.5859 at x_t/L = 0.5; linear 0.7854).

### Assessment

Checked by Claude Fable 5.1. Correction 1 restates Proposition 10.1 at the places of file 09 that still assumed the linear dictionary; applied, with the dependency row. Correction 2: for eps eps' = +1 the condition on the block is B^T = B with the diagonal block free, so every symmetric B occurs, and Terra's report itself says that the algebra, grading and order conditions select the subspace; the note and the ledger row now say so, and the report needed no annotation. Correction 3: the KO table gives (eps, eps') = (-1, -1) at label 9, so JX = -XJ there; the note now writes eps' and scopes the antisymmetric block to s = +1. Correction 4: the two-vector steps were redone by hand (phi kills y and b and not p; every vector of span(y, b) has v_L = -3 v_Q, which w fails), and the rank-4 enumeration over all sign patterns is Sonnet's; the row is now a no-go with two model identifiers (Terra as author, Sonnet as checker), below the three-identifier threshold, which nogo_below_consensus reports. Corrections 5 to 7: applied. The EPJC comparison keeps its pending flag, since no reader had the paper.
