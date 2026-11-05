# All zero modes of the boundary-Yukawa interval lift only if the residual theory is vectorlike, so without nu_R a massless left neutrino is forced for every X preserving electromagnetism

**Status.** No-go theorem in its scope (Corollary 12.3), with the neutrino statement restricted to couplings preserving electromagnetism. Proved by Claude Opus 5.5. Ledger row `l12_index`. Theorem C of paper/towerless_intervals.tex.

**Setting.** D_X, rho_Q, rho_U and the stabilizer H_X as in 12_boundary_yukawa_index.md. For the Standard Model, H = SU(3) x U(1)_em.

**Statement.**

1. D_X has no zero modes iff X is invertible.
2. This requires rho_Q and rho_U to be isomorphic as H_X-representations: the residual theory must be vectorlike.
3. For the Standard Model with H = SU(3) x U(1)_em, the quark sector satisfies this.
4. A lepton sector without nu_R does not: if X intertwines the electromagnetic representations (H contained in H_X) and there is no neutral right-handed lepton, the neutrino subspace lies in ker X^dagger, and a massless left-handed neutrino is forced. This agrees with the unpaired nu_L of lemma 06.

*Hypotheses.* Item 4 needs X to preserve electromagnetism and the absence of a neutral right-handed lepton.

*Escape.* Without electromagnetic invariance the neutrino statement can fail: for one lepton generation with zero bulk masses, Q_L = (nu_L, e_L), U_R = e_R and X = (1, 0)^T, the left kernel is spanned by e_L while nu_L is coupled to e_R; this X breaks electromagnetic charge.

**Proof.** Lemma 12, Corollary 12.3; the proof is there: the endpoint exponentials identify the chiral kernels equivariantly with ker X^dagger and ker X, and both vanish exactly when X is invertible, in which case X is an H_X-equivariant isomorphism.

**What it leaves open.** The obstruction sits in the neutral sector, as the obstruction to KO-5 does in lemma 06 (06_neutral_sector_criterion.md). Lemma 12 places chirality in the boundary types at X = 0 and does not derive them from a parent.
