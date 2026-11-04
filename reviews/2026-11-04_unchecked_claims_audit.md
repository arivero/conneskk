# Which unchecked claims the drafts use

Provenance. The mapping below was produced on 4 November 2026 by Claude Sonnet 5.5, read-only, for the check requested by the evaluation of 3 November (the 64 unchecked corpus claims plus the 13 self-checked rows). Claude Opus 5.5 then checked the parts the ledger now relies on, and these checks are listed here; the rest of the table stands as reported and is a lead for later work.

## Checks of the mapping by Claude Opus 5.5

- Keyword counts rerun on the three .tex files. They agree, with one precision: S^5 occurs once, at chiral_limit_note.tex:126, in the citation of Witten 1982, which the table records under rs_N16; M^{pqr} occurs once, at towerless_intervals.tex:188, in the citation of Witten 1981, and asserts no corpus claim.
- The covering links were read in both directions before entering the ledger. paper_3_1: the ledger row is a truncated sentence; the source (canonical_research.md, section 3) says that the commutant for the block T_R is a = diag(lambda, lambda-bar, q), b = diag(lambda, m), which is the algebra C + H + M_3(C) of Theorem 20.2 (l20_rank_one). paper_4_1: Example 16.9 (l16_twistor). rs_N4: Proposition 16.1 (l16_standard_nogo). rs_F4: this is elementary, since m_f = y_f v / sqrt 2 at fixed m_f gives y_f proportional to 1/v, and Corollary 22.9 (l22_family) is the same scaling in the interval family; checked by hand.
- paper_1_1: 4 + 6 = 10, which is 2 modulo 8; KO-degree is additive under products. Checked by hand; the content is the cited literature (Connes 2006, Barrett 2007, CCM 2007).
- l12_mixing stays as it is. The draft labels it numerical, the language is named, and a second run would change no statement.

Result: the drafts rest on no corpus claim as a hypothesis (class USED is empty), and every claim they state now has a checker or a checked lemma. The ledger records this in stated_in_draft/2 and covered_by/2, with a test. The supplement quotes the Berger and S^5 corpus claims as records of the corpus, without asserting them.

---

# Citation audit of the unchecked corpus claims against the paper drafts

Scope. The drafts audited are paper/towerless_intervals.tex, paper/chiral_limit_note.tex and paper/boundary_condition_note.tex. No file is \input by them; the Supplemental Material (paper/supplemental.md, assembled from lemmas/*.md, LITERATURE.md and the referee reviews by paper/build_supplement.sh) was searched for the same keywords and is noted where it matters. Claims audited: the 64 with no checker plus the 13 with only a self-check (77 distinct ids, no overlap between the two lists; the 13 are marked "(13-list)"). The ledger has no predicate linking lemma rows to corpus rows (depends, addresses and claim_amended act inside the lemma block or inside the corpus block only), so every "covering lemma" below is a new link established by content.

Counts. USED 0, STATED 6, CONTEXT 10, ABSENT 61.

The drafts treat the interval, two-sheet, boundary-condition and chiral-limit material of lemmas 3 to 27. The corpus claims on S^5, flag manifolds, lens spaces, Aloff-Wallach spaces, monopoles, torus quotients, KK-equivalence and Berger angles are not mentioned in any draft (keyword search for S^5, flag, Aloff, Berger, lens, Hopf, monopole, Kuiper, Massey, Weyl group, torus, orbifold, KK, KKO, Kasparov, cohomology, Gysin gave no hit in the three .tex files apart from unrelated uses listed in the table).

## 1. Claims that need an independent check before submission

USED and STATED claims with no covering refereed lemma:

1. paper_1_1 (STATED; towerless_intervals.tex:39, 41, 184; chiral_limit_note.tex:34). No lemma covers it. The content is the standard KO-degree arithmetic (4 + 6 = 10 mod 8) cited to Connes2006, Barrett2007, CCM2007. A check by a second model, or reclassification of the row as reference, suffices.
2. l12_mixing (13-list; STATED; towerless_intervals.tex:163). A lemma-level row (Remark 12.10, status numerical) whose only checker is the author's Python run; the other rows of lemma 12 have a Terra checker, and l12_mixing_bound has an Astra checker. The draft marks the statement as numerical and nothing rests on it. It needs an independent re-run of the 500-sample experiment, or removal of the sentence.

STATED claims whose content is covered by a refereed lemma (row only needs linking, the lemma row has a Terra checker):

- paper_3_1 (13-list): towerless_intervals.tex:309 (Proposition I item 2), also 32, 58, 317, 320, 328; boundary_condition_note.tex:135. Covered by lemma 20 (l20_rank_one: claude_opus_5_5 Python, terra_6_1).
- paper_4_1 (13-list): towerless_intervals.tex:293 (Proposition H item 4), 298, 301, 322; boundary_condition_note.tex:114, 181. Covered by lemma 10 (l10_toeplitz, l10_generates_m4), lemma 16 (l16_twistor) and lemma 24 (l24_two_stage), all with terra_6_1.
- rs_N4: towerless_intervals.tex:291 (Proposition H item 2), 339. Covered by lemma 16 (l16_standard_nogo: terra_6_1, astra6).
- rs_F4: boundary_condition_note.tex:132. Covered by lemma 22 (l22_family: terra_6_1); lemmas/22 line 145 carries the same hedged sentence.

Claims classified CONTEXT need no check for the drafts as written; if a later draft asserts them, they move to STATED.

## 2. Table

Class definitions as in the task. "Draft file:line" lists every occurrence for USED and STATED, and the nearest passages for CONTEXT. Lines are the .tex line numbers.

| id | class | draft file:line | sentence in the draft | covering refereed lemma | reason |
|---|---|---|---|---|---|
| rs_G1 | ABSENT | - |  | - | No draft mentions: 7-6-5 orbit dimensions in a smooth commutative 7-manifold. |
| rs_G2 | ABSENT | - |  | - | No draft mentions: lattice Lambda_{p,q}, closed torus circles. |
| rs_G2a | ABSENT | - |  | - | No draft mentions: L(p,1) as Hopf quotient over CP^1. |
| rs_G4 | ABSENT | - |  | - | No draft mentions: two metrics on L(5,1). |
| rs_G5 | ABSENT | - |  | - | No draft mentions: p=5 gives 5/8 (conditional). |
| rs_G6 | ABSENT | - |  | - | No draft mentions: p=5 weighted-projective orbifold. |
| rs_G7 | ABSENT | - |  | - | No draft mentions: z_1=0 endpoint, Q acts on normal plane. |
| rs_G8 | ABSENT | - |  | - | No draft mentions: CP^2 x S^1 has no spin structure. |
| rs_G9 | ABSENT | - |  | - | No draft mentions: N=S(Q) spin, S^1,S^2,S^3 bundle projections. |
| rs_G10 | ABSENT | - |  | - | No draft mentions: flag and product have no submersion to a 5-manifold. |
| rs_G11 | ABSENT | - |  | - | No draft mentions: flag vs product cohomology rings. |
| rs_G12 | ABSENT | - |  | - | No draft mentions: torus/Weyl quotient equals CP^2 x CP^1. |
| rs_G13 | ABSENT | - |  | - | No draft mentions: S(Q) vs quaternionic Hopf bundle. |
| rs_E1 | CONTEXT | towerless_intervals.tex Prop. E.1 item 2 (cos^2 theta_NC = 5/8, lines 223); boundary_condition_note.tex:142 |  | lemma 3, 21 (l03_weights, l21_removal) | 5/8 appears as a spectral-action result, with no comparison to a Berger angle or charge conventions. |
| rs_E3 | CONTEXT | towerless_intervals.tex Prop. E.1 item 2; boundary_condition_note.tex:142 |  | lemma 3 (l03_weights) | 5/8 and 8/3 occur as spectral-action values; the same-metric orbit model (rho = xi^-2) is absent. |
| rs_E4 | ABSENT | - |  | - | No draft mentions: G_F=1/(sqrt2 kappa a^2) in single-W orbit model. |
| rs_E5 | CONTEXT | towerless_intervals.tex:41 |  | none | Fermi constant and heavy weak bosons mentioned as the 10->9 proposal; no tree-level coefficient claim. |
| rs_F1 | CONTEXT | chiral_limit_note.tex:70, boundary_condition_note.tex:88, boundary_condition_note.tex:135 |  | lemma 22 (l22_parent), lemma 17 (l17_no_higgs) | Draft commutants {(lambda,lambda,m)} and C+H+M_3(C) concern the commutant of the full D_F or of the connector, not the centralizer of a top operator. |
| rs_F2 | ABSENT | - |  | - | No draft mentions: centralization, kernel compression, gauge stabilization distinct. |
| rs_F4 | STATED | boundary_condition_note.tex:132 | "X_q ~ (pi/2) m_q/M_W ... in the form of y_q = sqrt2 m_q/v -> 0 at fixed mass. Identifying X_q with a four-dimensional Yukawa coupling is a hypothesis" | lemma 22 (l22_family, Cor. 22.9; terra_6_1); lemmas/22 line 145 has the same sentence | Elementary relation used as a hedged remark; nothing rests on it. Corpus row needs a link. |
| rs_N1b | ABSENT | - |  | - | No draft mentions: Hopf radius varies Berger angle, base zero-mode algebra fixed. |
| rs_N2 | ABSENT | - |  | - | No draft mentions: zero-mode model has no inherited KO-6 J or one-forms. |
| rs_N3 | ABSENT | - |  | - | No draft mentions: higher modes of diagonal background give no cross-bundle one-forms. |
| rs_N4 | STATED | towerless_intervals.tex:291, towerless_intervals.tex:339 | "the inherited data satisfy order zero iff A_F is commutative" (Prop. H item 2); "Order zero fails: noncommutative A_F, J_0-invariant window, inherited pointwise reality" | lemma 16 (l16_standard_nogo, Prop. 16.1; terra_6_1, astra6) | Draft states the general theorem of which rs_N4 is the conditional form (J b^* J^-1 = b, J-invariant window). Corpus row needs a link. |
| rs_N7 | ABSENT | - |  | - | No draft mentions: finite intersection form of real KO-6 bimodule is skew. |
| rs_N9 | CONTEXT | towerless_intervals.tex:303 |  | lemma 16 (l16_truncation) | Draft: the Clifford point fails finite orientability (Cor. 16.4). rs_N9 is the general statement for a nonzero grading-odd bimodule-linear mass; not asserted. |
| rs_N12 | CONTEXT | towerless_intervals.tex Prop. G, towerless_intervals.tex Thm. C item 4 |  | lemma 15 (l15_gap) | Draft proves its own gap criterion (l15_gap) and Weyl-type limits; the Feshbach estimate is not stated. |
| rs_N13 | CONTEXT | towerless_intervals.tex Prop. G items 1 and 3, towerless_intervals.tex:285 |  | lemma 15 (l15_finite_limits, l15_gap) | Draft states the propinquity version (finite limits of connected commutative triples are points; tuned interval stays far from Connes-Lott). Sphere collapse and (M_2,C^2,0) are not treated. |
| rs_N14 | ABSENT | - |  | - | No draft mentions: isometry-inner agreement does not give SM triple. |
| rs_N15 | ABSENT | - |  | - | No draft mentions: flag-fiber kernels, nonconstant quaternion algebra bundle. |
| rs_N16 | CONTEXT | chiral_limit_note.tex:126 |  | lemma 27 | Draft attributes the S^5 parity to Witten 1982 fn. 2 for a compactified spacetime; lemma 27 Remark 27.6 separates it from the internal S^5. Supplemental Part L section G records the corpus claim with verdict KNOWN. |
| rs_N17 | ABSENT | - |  | - | No draft mentions: twisted 7D eigenvalue within C eps of zero. |
| rs_N19 | CONTEXT | towerless_intervals.tex:73, towerless_intervals.tex Prop. H item 1, boundary_condition_note.tex:108 |  | lemma 10 (l10_toeplitz) | Draft remarks that PAP is in general not an algebra and cites Q(x_a)^2 != Q(x_a^2) context; the nonatomic theorem is not stated. |
| rs_N20 | ABSENT | - |  | - | No draft mentions: torus Weyl action has no equivariant spin lift. |
| rs_N21 | ABSENT | - |  | - | No draft mentions: connection-Laplacian zero-mode algebra C^3. |
| rs_K1 | ABSENT | - |  | - | No draft mentions: six-dimensional function algebra and A_F not KK-equivalent. |
| rs_K2 | CONTEXT | towerless_intervals.tex Prop. G item 4, towerless_intervals.tex:350 |  | lemma 15 (l15_grading) | Draft says the KO-6 sign from a commutative parent is open and states only that signs descend to a symmetric block. |
| rs_K3 | ABSENT | - |  | - | No draft mentions: product and flag KK-equivalent, not KKO-equivalent. |
| rs_K4 | ABSENT | - |  | - | No draft mentions: N->S^5 twisted Dirac factors through vertical family. |
| paper_1_1 | STATED | towerless_intervals.tex:39, towerless_intervals.tex:41, towerless_intervals.tex:184, chiral_limit_note.tex:34 | "total KO-dimension 10 = 2 (mod 8)"; "the finite space has metric dimension 0 and KO-dimension 6"; "the metric dimension of the product is 4" | none (cited to Connes2006, Barrett2007, CCM2007) | Standard convention; the labels 9 and 11 (KO-degrees shifted by 4, line 184) use the same arithmetic. Borderline USED for the labelling; classified STATED since the text only frames and cites. |
| paper_2_2_1 | ABSENT | - |  | - | No draft mentions: heavy finite operator tT+S, embedded norm-resolvent limit. Closest draft statements (Prop. G, Thm. C item 4) are independent results with their own proofs. |
| paper_5_1 | ABSENT | - |  | - | No draft mentions: SU(3) stabilizer, Aloff-Wallach convention. |
| paper_5_2 | ABSENT | - |  | - | No draft mentions: N->CP^2 fibration table row. |
| paper_5_3 | ABSENT | - |  | - | No draft mentions: N->F fibration table row. |
| paper_5_4 | ABSENT | - |  | - | No draft mentions: N->S^5 fibration table row. |
| paper_5_5 | ABSENT | - |  | - | No draft mentions: N spin, simply connected, cohomology. |
| paper_5_6 | ABSENT | - |  | - | No draft mentions: orbit-space chain Y, fixed CP^1 strata. |
| paper_5_7 | ABSENT | - |  | - | No draft mentions: spectral family D_tau, circle momentum suppressed. |
| paper_6_1 | ABSENT | - |  | - | No draft mentions: integral rings of product and flag. |
| paper_6_2 | ABSENT | - |  | - | No draft mentions: Betti numbers of product and flag. |
| paper_6_3 | ABSENT | - |  | - | No draft mentions: c_1 of product and flag. |
| paper_6_4 | ABSENT | - |  | - | No draft mentions: w_2 of product and flag. |
| paper_6_5 | ABSENT | - |  | - | No draft mentions: p_1 of product and flag. |
| paper_6_6 | ABSENT | - |  | - | No draft mentions: vertical tangent of F->CP^2 not spin by itself. |
| paper_7_1 | ABSENT | - |  | - | No draft mentions: principal S^3 bundle, w_2(P). |
| paper_7_2 | ABSENT | - |  | - | No draft mentions: circle bundles P_k over CP^2. |
| paper_8_1 | ABSENT | - |  | - | No draft mentions: monopole collapse, uniform vertical gap. |
| paper_8_2 | ABSENT | - |  | - | No draft mentions: flux (1,2,3), positive-chirality kernel of rank six. |
| paper_9_1 | ABSENT | - |  | - | No draft mentions: engineered connection, Toeplitz surjectivity onto End(K). |
| paper_9_3 | ABSENT | - |  | - | No draft mentions: homogeneous connection, bounded vertical commutator. |
| paper_10_1 | ABSENT | - |  | - | No draft mentions: torus/Weyl quotients, isotropy stack. |
| paper_11_1_1 | ABSENT | - |  | - | No draft mentions: index obstruction on CP^3 with O(3). |
| paper_12_1 | ABSENT | - |  | - | No draft mentions: 6-to-5 operator limit, heavy resolvent (1+tau^2)^-1/2. |
| paper_13_1_1 | ABSENT | - |  | - | No draft mentions: one electron from a character, sphere averages 1/6, 1/24. |
| l12_mixing (13-list) | STATED | towerless_intervals.tex:163 | "The mixing pattern /V_ij/ ~ phi(c_i^Q)/phi(c_j^Q) holds in numerical samples (Python)" | lemma 12 row l12_mixing itself (Remark 12.10): checked_by claude_opus_5_5 python only; no terra row. Its bound l12_mixing_bound has astra6. | Lemma-level row, not a corpus claim. Draft labels it numerical and nothing rests on it; the rigorous bound is the next sentence. Needs an independent re-run or removal. |
| rs_G3 (13-list) | ABSENT | - |  | - | No draft mentions: Berger formula, p-cancellation. Supplemental Part L section F (paper/supplemental.md:7853-7860) records the Berger claim as a literature check (verdict KNOWN, prior_work row exists). |
| rs_N1 (13-list) | ABSENT | - |  | - | No draft mentions: compressed operator system dim 12 vs generated algebra dim 14. |
| rs_N1a (13-list) | ABSENT | - |  | - | No draft mentions: p=5 degree-one doublet, six-dimensional holomorphic sector. |
| rs_N11 (13-list) | ABSENT | - |  | - | No draft mentions: round-sphere rotations inner on compressed M_2. |
| rs_N18 (13-list) | ABSENT | - |  | - | No draft mentions: torus crossed product finite quotient C+M_2+M_3. |
| paper_3_1 (13-list) | STATED | towerless_intervals.tex:32, towerless_intervals.tex:58, towerless_intervals.tex:309, towerless_intervals.tex:317, towerless_intervals.tex:320, towerless_intervals.tex:328; boundary_condition_note.tex:135 | "A(T_kappa) = {(lambda+q, lambda+m)} = C+H+M_3(C), the algebra of the classification" (Prop. I item 2) | lemma 20 (l20_rank_one; claude python, terra_6_1) | Same commutant statement in other notation (K=vw*, w along nu_R); the draft proof is lemma 20's intertwining argument. Corpus row needs a link to l20_rank_one. |
| paper_4_1 (13-list) | STATED | towerless_intervals.tex:293, towerless_intervals.tex:298, towerless_intervals.tex:301, towerless_intervals.tex:322; boundary_condition_note.tex:114, boundary_condition_note.tex:181 | "real functions on S^4 and on CP^3 generate the real algebras M_2(H) and M_4(C)" (Prop. H item 4) | lemma 10 (l10_toeplitz, l10_generates_m4) and lemma 16 (l16_twistor), lemma 24 (l24_two_stage); all terra_6_1 | Generation statement and Q(x_a)=Gamma_a/5 restated with lemma proofs. Corpus row needs a link. |
| paper_8_3 (13-list) | ABSENT | - |  | - | No draft mentions: charge conjugation reverses flux; J^2 sign changes real commutant. |
| paper_9_2 (13-list) | ABSENT | - |  | - | No draft mentions: circle lines retained under spin lifts (phase arithmetic). |
| paper_10_2 (13-list) | ABSENT | - |  | - | No draft mentions: Frobenius-Schur indicators of conjugate characters and doublet. |
| paper_10_3 (13-list) | ABSENT | - |  | - | No draft mentions: corner of finite-orbit quotient of spin-twisted crossed product. |
| paper_14_3_1 (13-list) | ABSENT | - |  | - | No draft mentions: Berger angle: p cancels, 5/8 needs xi^2=5/2. Supplemental Part L section F (paper/supplemental.md:7853-7860) records the Berger claim as a literature check (verdict KNOWN, prior_work row exists). |

## 3. Undecided items and unmatched draft statements

Items where the classification rests on a judgment about restatement in other notation:

- paper_1_1: STATED or USED. The introduction (towerless_intervals.tex:39, 41) frames the 9, 10, 11 labels with this arithmetic, and line 184 defines 9 and 11 as KO-degrees shifted by 4. No theorem or proof depends on the claim, so STATED was chosen. A reader who counts the labelling as a quantitative statement would call it USED.
- rs_N13: the draft has the propinquity analogue (Proposition G items 1 and 3, lemma 15, Terra-checked) and the sentence at towerless_intervals.tex:285. The sphere-collapse form with bounded-Lipschitz functions and the (M_2, C^2, 0) projection is not stated, so CONTEXT. If the ledger treats the propinquity statement as a restatement of rs_N13, the covering lemma is l15_finite_limits.
- rs_N19 and rs_N12: related draft statements (PAP is in general not an algebra, towerless_intervals.tex:73; the gap criterion of Proposition G) are weaker or different results, so CONTEXT.
- rs_N16 and rs_N17: chiral_limit_note.tex:126 refers to the parity of zero modes of a five-dimensional Dirac operator on the nontrivial SU(2) bundle on S^5, attributed to Witten 1982 footnote 2. Lemma 27 Remark 27.6 states that this S^5 is the compactification of spacetime and differs from the internal S^5 of the corpus. rs_N16 is classified CONTEXT; rs_N17 is ABSENT. Supplemental Part L section G (paper/supplemental.md:7865-7876) records the corpus S^5 claim with verdict KNOWN.
- Supplemental Part L section F (paper/supplemental.md:7853-7860) states the Berger formula (rs_G3, paper_14_3_1) as a literature-check record with verdict KNOWN and prior_work rows in the ledger. The rows are classified ABSENT for the drafts; if the Supplemental Material is submitted with Part L, the statement is quoted there without a checker on the corpus rows.

Draft statements that rest on a corpus-like claim and match none of the 77:

- chiral_limit_note.tex:70: in the Standard Model representation the kept mass blocks commute with B = {(lambda, Q_lambda, m)} = C + M_3(C), "in the strict projection and when only a vectorlike top pair is removed". Related to rs_F1 and paper_3_1 (commutants of heavy blocks) but a separate statement about the representation. Lemma 17 (l17_no_higgs) has a Terra checker for the general proposition; the Standard Model instance is stated in the note and is not a separate ledger row that was found.
- boundary_condition_note.tex:88: the commutant of D_F in the Standard Model data is {(lambda, lambda, m)}, "the algebra of the photon and gluons". Same family as the previous item; covered in general form by lemma 22 (l22_parent).
- towerless_intervals.tex:303 and lemmas/16: "The Clifford point is an input and fails finite orientability" (Corollary 16.4, row l16_truncation, Terra-checked). Related to rs_N5 to rs_N9 of the corpus, which have their own rows (rs_N5, rs_N6 and rs_N8 have checkers; rs_N7 and rs_N9 are on the unchecked list and are CONTEXT or ABSENT above).
- towerless_intervals.tex:188 and 333: Witten's vectorlike argument for odd internal dimension is quoted from Witten1981 with its hypotheses. It matches no row of the 77; the corpus statement of the same content is in canonical_research.md section 1 (A smooth closed product with an unconstrained eleven-dimensional Dirac field...), not among the audited rows.
