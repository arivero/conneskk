# For cutoffs in the positive Laplace class and without an added potential or constraint, no finite c > 0 is stationary along a radial ray V = c V_\* of the spectral action

**Status.** No-go theorem in its scope (No-go theorem 9 of lemma 18). Proved by Astra 6 (job 18); checked by Claude Opus 5.5 by hand and by Terra 6.1 by hand (historical/reviews/2026-11-03_terra_check_18_16b.md). Ledger row `l18_radial`.

**Setting.** f in class (4): a Laplace transform of a nonzero positive measure nu with 0 < f(0) < infinity and int (s^{-2} + s^2) d nu < infinity. Scalar configurations V = c V_\*, c > 0, V_\* != 0, with A = 0; the literal spectral action on R^4, or on a finite flat torus before its positive momentum sum.

**Statement.**

1. The constant-background action density is U(c) = (Lambda^4/(4 pi^2)) int s^{-2} Tr_{H_F} exp(-s c^2 V_\*^2/Lambda^2) d nu(s).
2. U'(c) = -(c Lambda^2/(2 pi^2)) int s^{-1} Tr_{H_F}(V_\*^2 exp(-s c^2 V_\*^2/Lambda^2)) d nu(s) < 0, strictly since V_\* != 0 and nu is nonzero and positive.
3. So no finite c > 0 is stationary along this radial direction. In the top-only family the ordinary Higgs radial variation supplies the direction, and the masses of lemma 18 are conditional quadratic-background quantities.

*Hypotheses.* The positive Laplace class; the literal spectral action; no added scalar potential and no constraint fixing c; radial paths of the form c V_\*.

*Escapes.* Proposition 11 of lemma 18 (18_radial_derivative_general_cutoff.md) gives them within real cutoffs: a nonnegative cutoff of compact support has a stationary plateau, sign-changing cutoffs can have cancellations, and a radial path with an additional fixed noncommuting mass matrix need not have the form c V_\*. A finite symmetry-breaking minimum of the polynomial asymptotic scalar potential cannot automatically be regarded as a minimum of this full action.

**Proof.** Lemma 18, No-go theorem 9; the proof is there, by differentiating U(c) under the integral.

**What it leaves open.** The result points to an added potential or constraint, a cutoff outside the class, or a quantum effective action as the source of a finite vacuum (lemma 18, Scope and the remark after the proof).
