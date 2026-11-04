# Duplicates, versions and what was removed

Every removed file is recoverable from git with `git show <commit>:<path>`; the commit is given in each row. The PDFs and zips were never tracked.

## 1. Removed sources (binaries, code, generated copies)

| removed | content now in | recover from |
|---|---|---|
| `connes_dimension_limits_research.zip` (zip A, 13:15) and `... (1).zip` (zip B, 18:00) | zip B tree in `research_limits/`; zip A is an earlier build of zip B (section 2) | zip A tree: 54445a4, `unzipped/zip_A_1300/` |
| four chat PDFs | `transcripts/`, checked against the PDFs (header of each transcript) | not tracked |
| `output/pdf/connes_9_10_11_mobile.pdf` | typeset `historical/corpus/canonical_research.md` (its build record gives the markdown sha256 `7a6526f3...`, identical to the paper) | not tracked |
| six check/build scripts, `make_heat_figure.py`, `requirements.txt` | `historical/corpus/research_checks_knowledge.md` | 54445a4, `unzipped/zip_B_1800/research_limits/` |
| JSON outputs of the checks | `historical/corpus/research_checks_knowledge.md` §7 | 46d81b1, `research_limits/*.json` |
| four PNG figures and `heat_staircase.pdf` | text descriptions at the former figure positions | 46d81b1 |
| `ascii/` and `ascii/utf8/` transcripts | `transcripts/` | 24bb2c6 |
| `tools/pdf2ascii.py`, `tools/find_duplicates.py`, `duplicates_tables.md` | (tools; the tables are summarized here) | 24bb2c6 |
| `research_limits/README.md` (the zip's README: build and run instructions) | `README.md`, `INDEX.md` | b022190 |

## 2. The two zips are two builds of one package

Zip B contains every zip A file. Four changed: `historical/corpus/canonical_research.md` (rewritten and expanded), `README.md` (PDF build instructions; the Wilson-line check relabelled as phase arithmetic), `canonical_checks.py` (that relabelling as a comment) and `requirements.txt`. The zip A paper (18 sections, about 4,000 words) became the zip B paper (42 sections, about 6,900 words): old sections 1-6 are new sections 5-10 with 53-96% of the prose carried over verbatim; old sections 7-9 were reworded into new sections 3, 4 and 11-15. Spot checks confirm that their facts survive (gauge-algebra dimensions 21, 12, 9; the KO-degree-six boundary class; the B-L direction of the singlet/triplet model). The old build holds no result missing from the new one.

## 3. Duplicated developments removed

A section-by-section comparison (2-3 Nov 2026) classified every section of the candidate files as fully covered, partially covered (with the missing items listed) or absent from the keep copy.

| removed | duplicate of | unique content moved first |
|---|---|---|
| `connes_kk_9_10_11_mobile.tex` (LaTeX paper) | `historical/corpus/connes_kk_research_state.md`: every tex paragraph is a condensed rewording of a research-state paragraph (verbatim overlap only 1-2%) | into research_state §6.12: the parity of the 5D index (odd only for abs(n) = 2 mod 4, Wang-Wen-Witten), the kernel-preservation step of the adiabatic estimate and the bound eps norm(C_Omega), the derivation of the isotropy weights; into §6.5: the order-zero / first-order justification; references Bär 1996, Massey 1973, Rosenberg-Schochet 1987 and the review van den Dungen-van Suijlekom 2012. Last present in 68a6417. |
| `research_limits/canonical_research.md` | the top-level paper (byte-identical) | none |
| the summaries and "update" paragraphs at the top of the three appendices | canonical Abstract, Reading guide and §15 | provenance (dates, which agents checked what) and the list of superseded labels, kept in the new one-paragraph headers |
| `solidification.md`, "The vertical Dirac family exposes a rank mismatch" | canonical §4, last paragraph | none |

## 4. What deliberately remains in more than one place

- **Paper and derivation appendices.** `historical/corpus/canonical_research.md` states the results and their labels. Every remaining section of `research_note.md`, `solidification.md` and `nine_dimensional_construction.md` restates a result of the paper together with a derivation the paper omits. Material found only in the appendices includes: the Toeplitz convention and the M_2(H) generation proof, the flag fibre product and D_F(h), the index-continuity proof and the case without nu_R (research_note); the CP^3-to-S^5 quotient with its defect data, the inflow hypotheses, the c_1 values and the D^3 non-extension argument (solidification §5-7); the squashed metric g_tau and its circumference, the J-tilde derivation, the defect weights, the coloured coefficient representation, the sphere averages 1/6 and 1/24 (the only derivation of I_3), and the SU(4)/Sp(2) details giving 4 eta^2/9 and the round value 3/8 (nine_dimensional_construction).
- **`historical/corpus/research_checks_knowledge.md`** records the finite checks, so some numbers appear there and in the appendices.
- **`transcripts/`** are the primary records. The ChatGPT conversation is the raw source of `nine_dimensional_construction.md` and canonical §6, 7, 9 and 10; its pages 7-8 and 12 match research_state §2.4, §2.5 and §6.11. The three reviews (Astra, Sol, Terra) are independent opinions on an earlier print of that conversation and overlap each other by 2-4%.

## 5. Contradictions found, and their resolution

The state column matches `contradiction/5` in [ledger.pl](../ledger.pl); `swipl -g run_tests -t halt ledger.pl` tests the match.

| # | where | finding | resolution | state |
|---|---|---|---|---|
| 1 | canonical §11.1 | the CP^3 index statement named "the Kähler operator twisted by O(3)"; the operator with index four is the spin Dirac operator twisted by O(3), i.e. the Dolbeault operator on O(1), since S = Lambda^{0,*} (x) O(-2) | corrected in the paper | resolved |
| 2 | canonical §13.1 | e^2/g_3^2 = 3(eta^2+3)/(8 eta^2) was labelled "Checked", but no script computes it | relabelled Conditional, with a pointer to its derivation. The value 3(eta^2+3)/(32 eta^2) of §13.2 belongs to a different charge generator, so the two formulas are consistent | resolved |
| 3 | canonical §4 | "Checked calculation" covered Q(x_a) = Gamma_a/5 and Q(x_a)^2 = I/25 vs Q(x_a^2) = I/5, which no script computes | note added; proved in [lemmas/10](../lemmas/10_toeplitz_twistor.md) | resolved |
| 4 | research_note §5, §8 | labels older than the paper (scalar matching and unimodularity as inputs; collapse estimate "conditional") | listed in the appendix header | resolved |
| 5 | canonical §13.1 | V undefined | defined as Vol(S^5, g_eta) | resolved |
| 6 | research_state §6.12 | the O(eps) quasimode was derived from compressions alone | replaced by the kernel-preservation argument of the tex | resolved |
| 7 | research_state §2.3 | stabilizer diag(z,1,z^-1) given without base point (§6.12 uses diag(z,z^-1,1)) | base points (C e_1, e_2) and (C e_1, e_3) named | resolved |
| 8 | canonical §14.3 vs research_state §3.2, §4.2 | cos^2 theta_W = 3 xi^2/(4 xi^2+2) was labelled "Checked calculation" in the paper and "Proved; quadrature verified" in the notes. The paper says the proposal that p = 5 determines 5/8 fails; the notes record p = 5 -> 5/8 as a resonance conditional on an added closed-neutral-circle postulate. The two statements are compatible (unconditional versus conditional) | the paper now reads **Proved** for the Einstein-Hilbert ansatz and the stated embedding, with the derivation in research_state §3.2 and the resonance conditional on the added postulate (§4.2) | resolved |
| 9 | canonical §8 vs research_state §6.12 | "no parity restriction on n" (vertical kernels) versus "odd index only for abs(n) = 2 mod 4" (the 5D base index) | different operators; both hold | compatible |
| 10 | canonical §2.2 and §3 | alpha denoted both the scaling exponent and the hypercharge phase; the two staircase figures use b/a = 0.02 (research_note) and 0.01 (paper) | the hypercharge phase in §3 is now varphi. The staircases are separate figures, each stating its own radii, as research_checks_knowledge records; no result depends on the value | resolved |

## 6. Repeats inside a single document

None at the threshold of 30% of a section's 5-gram shingles. The only text repeated across the chat printouts was the ChatGPT interface boilerplate, which the transcripts drop.
