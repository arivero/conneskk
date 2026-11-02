# Connes dimension-limit research

> **Note (2 Nov 2026):** the Python scripts named below were removed from this folder after their technical content was written up in [../research_checks_knowledge.md](../research_checks_knowledge.md). They remain in git history (commit 54445a4, under `unzipped/zip_B_1800/research_limits/`). The mobile PDF is in `../output/pdf/`.

Start with **canonical_research.md**, the consolidated paper *Nine, Ten and Eleven Dimensions*. It integrates the finite limits, twistor, boundary, Aloff-Wallach/flag, torus/Weyl and nine-dimensional electron results. Claims are labeled proved, checked calculation, conditional or conjectural. The decisive calculation is the monopole kernel and Berry connection for N7 to S5.

The same account is typeset for mobile reading in **../output/pdf/connes_9_10_11_mobile.pdf**: narrow single-column pages, 13-point body text, vector display equations, linked contents and PDF bookmarks. Tables become stacked comparisons without changing their content.

Rebuild the PDF from the canonical source using pandoc on PATH and the Python requirements:

```bash
python3 paper_assets/make_heat_figure.py
python3 build_mobile_pdf.py
```

`render_math.py` adapts TeX notation to the renderer. Inline mathematics is rendered at high resolution; display equations are vector text. The heat figure is an illustrative exact circle-sum calculation, not a physical prediction.

The following files are retained as derivation appendices rather than independent current research narratives.

**nine_dimensional_construction.md** contains the earlier six-to-five internal spectral collapse, compensated twistor modes, and separate nine-dimensional gauge/electron comparison models.

**solidification.md** gives the heavy-mass algebra chain, the CP3 boundary and circle quotient, and the constraints on identifying these pieces with an M-theory Standard Model compactification.

**research_note.md** contains the first-stage derivations: heat-dimension windows, an explicit real finite matrix family, twistor quantization, the conditional Standard Model module, the Higgs representation and the two electroweak limits. Its opening update identifies the results strengthened in the addendum.

Reproduce the finite checks with Python, numpy and matplotlib:

```bash
python3 checks.py
python3 solidification_checks.py
python3 nine_dimensional_checks.py
python3 canonical_checks.py
```

The JSON files record the finite checks. In particular, the Wilson-line check verifies phase arithmetic after analytic connection and spin-lift formulas have been supplied; it is not an independent connection derivation. The figures illustrate spectral dimension windows, not predictions of particle physics. No continuum Standard Model vacuum or complete 9/10/11 compactification is claimed.
