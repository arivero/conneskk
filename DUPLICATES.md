# Duplicates, versions and overlaps in this corpus

Generated tables are in [duplicates_tables.md](duplicates_tables.md) (`tools/find_duplicates.py`). This page states the findings. Every removed file except the zips is recoverable from the first commit: `git show 54445a4:<old path>` (old paths under `unzipped/zip_A_1300/` and `unzipped/zip_B_1800/`).

## 1. Byte-identical files

| copy kept | duplicate removed |
|---|---|
| `canonical_research.md` | `research_limits/canonical_research.md` (zip B), now a symlink to the top-level file so the appendix links still resolve |
| `research_limits/*` (zip B) | 13 of the 17 files of zip A: `checks.py`, `solidification.md`, `solidification_checks.py`, `solidification_verification.json`, `nine_dimensional_construction.md`, `nine_dimensional_checks.py`, `nine_dimensional_verification.json`, `nine_dimensional_collapse.png`, `canonical_verification.json`, `research_note.md`, `verification.json`, `dimension_staircase.png`, `dimension_window.png` |

## 2. The two zips are two builds of one package

`connes_dimension_limits_research.zip` (zip A, files dated 2026-11-02 13:15) is an earlier build of `connes_dimension_limits_research (1).zip` (zip B, 18:00). Zip B contains every zip A file. Four of them changed:

- `canonical_research.md`: rewritten and expanded (details in section 3).
- `README.md`: adds the PDF build instructions and the caveat that the Wilson-line check verifies phase arithmetic only.
- `canonical_checks.py`: only a comment changed, relabelling the Wilson-line block as phase arithmetic on supplied analytic inputs (see `research_checks_knowledge.md` 4.10).
- `requirements.txt`: adds `reportlab`, `pypdf`, `Pillow` for the PDF builder.

Zip B adds the mobile PDF (`output/pdf/connes_9_10_11_mobile.pdf`), its builder (`build_mobile_pdf.py`, `render_math.py`), the heat-staircase figure (`paper_assets/`) and `paper_verification.json`.

## 3. `canonical_research.md`: old build versus new build

The zip A version (18 sections, about 4,000 words of prose) covered the Aloff-Wallach / flag / torus-Weyl line. The zip B version (42 sections, about 6,900 words) integrates the three appendices as new sections 1-4 and 11-14.

| old section (zip A) | new section (zip B) | prose carried over verbatim |
|---|---|---|
| 1. The candidate geometry, with conventions fixed | 5. Seven dimensions: the exact fibrations | 67% |
| A genuine sequential orbit-space chain also exists | same title, in 5 | 82% |
| 2. Keep the product and flag candidates separate | 6. (same title) | 82% |
| 3. Two different S3 bundles and the circle endpoints | 7. Three-sphere bundles and the circle endpoints | 68% |
| 4. The decisive calculation: monopole collapse N7 to S5 | 8. The decisive monopole collapse | 53% |
| The induced connection is decisive | same title, in 8 | 84% |
| Real structures cannot be inferred from pseudoreality | same title, in 8 | 96% |
| 5. Continue from the obstruction: fluxes (1,1,2) | 9. Constructing a surviving spinor bundle | 74% |
| Compatible circle lifts / Wilson-line test / analytic limit | same titles, in 9 | 91% / 68% / 84% |
| 6. Torus/Weyl quotients and what the spin lift changes | 10. (same title) | 78% |
| A checked real-algebra improvement | same title, in 10 | 95% |
| 7. Reconcile the earlier finite, twistor and boundary calculations | spread over 3, 4, 11, 12, 13 | 0% (reworded) |
| 8. Gauge decoupling, masses and the Weinberg-angle check | 14.1 Infinite weak masses, 14.3 The angle test | 0% (reworded) |
| 9. What the investigation now establishes | 15. Consolidated result and the next test | 0% (reworded) |

Spot checks confirm that the specific facts of old sections 7-9 survive in the new text: the gauge-algebra dimensions 21, 12, 9 (new line 184), the KO-degree-six boundary class (11.1) and the B-L direction of the singlet/triplet model (new line 695). The old build holds no result missing from the new one.

## 4. Renderings of the same text

- `output/pdf/connes_9_10_11_mobile.pdf` is the typeset `canonical_research.md`: `paper_verification.json` records markdown sha256 `7a6526f3...`, identical to the top-level file. 88-92% of its extracted prose shingles match the markdown; the remainder is inline math, which the builder rasterized. Its ASCII extraction was therefore dropped in favour of the markdown.
- `ascii/utf8/*.txt` and `ascii/*.txt` hold the same extraction; the UTF-8 copy keeps math symbols that ASCII has to spell out.

## 5. Reworded duplicates (same material, different wording)

Verbatim overlap between distinct documents is small (0-4% of shingles), so most duplication is restatement. TF-IDF matching locates it:

- **Appendices into the canonical paper.** `solidification.md` 5 and 6 reappear as canonical 11.1 and 11.2-11.3 (cosine 0.61, 0.49). `nine_dimensional_construction.md` 1-4 reappear as canonical 12-13 (0.46 for the dimension count). `research_note.md` feeds canonical 1-4 and 14. The zip README itself labels these three files "derivation appendices".
- **The ChatGPT transcript "Connes Electrodynamics Model" is the raw source** of `nine_dimensional_construction.md` (transcript pages 1-5, cosine 0.45-0.58) and of canonical 6, 7, 9 and 10 (pages 9 and 15-17, cosine 0.56-0.60). Pages 7-8 and 12 match `connes_kk_research_state.md` 2.4, 2.5 and 6.11.
- **`connes_kk_research_state.md` and `connes_kk_9_10_11_mobile.tex`** cover the same programme (lens lattice, Fermi scale, KK theory) but share only 1-2% verbatim prose; the closest pair is research_state 7.1 and the tex section "What an invertible comparison preserves" (0.49). The tex is a separate write-up, so both are kept.
- **The three reviews (Astra, Sol, Terra)** each review an earlier print of the same transcript ("Connes Electrodynamics Model(1).pdf", 1 Nov 2026). They overlap each other by 2-4% and map mostly onto `connes_kk_research_state.md` and the tex: three independent opinions on one source, kept.

## 6. Removed in this cleanup

| removed | reason | where the content lives now |
|---|---|---|
| `connes_dimension_limits_research.zip`, `connes_dimension_limits_research (1).zip` | fully unpacked | zip B tree in `research_limits/` and `output/pdf/`; zip A tree in commit 54445a4 |
| zip A tree (17 files) | superseded by zip B (sections 2-3) | commit 54445a4 |
| `research_limits/canonical_research.md` | byte-identical to the top-level paper | symlink to `../canonical_research.md` |
| 6 check/build scripts, `make_heat_figure.py`, `requirements.txt` | technical content extracted | `research_checks_knowledge.md`; code in commit 54445a4 |
| `ascii/connes_9_10_11_mobile.txt` (+ utf8) | lossy copy of the paper (inline math rasterized) | `canonical_research.md` |

## 7. Repeats inside a single document

None at the reported threshold (30% of a section's 5-gram shingles). The only text repeated across the chat printouts is the ChatGPT interface boilerplate ("Tu dijiste", "ChatGPT dijo", "Ha trabajado durante ...").
