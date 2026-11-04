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
