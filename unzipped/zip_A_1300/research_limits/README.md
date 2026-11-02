# Connes dimension-limit research

Start with **canonical_research.md**. This is the single current research narrative, integrating the Aloff–Wallach/flag and torus/Weyl handoff with all earlier calculations. Each claim is labeled proved, checked calculation, conditional or conjectural. The decisive calculation is the monopole-kernel bundle and Berry connection for N7→S5.

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

The JSON files record the checks. The two PNG figures illustrate spectral dimension windows, not predictions of Standard Model particle physics. No continuum Standard Model vacuum or complete 9/10/11 compactification is claimed.
