# In a neutral KO-6 sector a KO-7 reduction always exists, and a KO-5 reduction exists exactly when every singular value of the mass matrix, zero included, has even multiplicity

**Status.** Lemma (Lemma 4 of lemma 06), with Propositions 6 and 7; ledger kind theorem. Proved by Astra 6 (job 06); checked by Claude Opus 5.5 by hand and by Terra 6.1 by hand, with one amendment to Result 7 on the meaning of flavour mixing (historical/reviews/2026-11-03_terra_check_nogo_19.md). Ledger row `l06_neutral`. Item 2 of Theorem D of paper/towerless_intervals.tex; cited as "\supp{06}, Lemma 4 and Result 7" in paper/real_structure_note.tex.

**Setting.** A KO-6 sector H = H_+ + H_- with dim H_+ = dim H_- = r, on which both algebra actions are the same scalar character. In a basis of H_+ and its J-image, J = [[0, I], [I, 0]] K, and JD = DJ says M^T = M for the block M of D. The reductions are those of 06_doubling_criterion.md.

**Statement.**

1. (Lemma 4) A KO-7 reduction always exists. A KO-5 reduction exists exactly when every singular value of M, including zero, has even multiplicity. A single neutral Weyl state and its conjugate are a KO-7 doubling and no KO-5 doubling, even without a Dirac partner; so is a single Majorana pair, massive or massless.
2. (Proposition 6) For the reduced algebra B = C + M_3(C) of the strict heavy limit: with no neutral sector, or with nu_L, nu_R and a pure Dirac mass, both KO-5 and KO-7 exist; with only nu_L, J nu_L, or a single isolated Majorana pair, only KO-7; with a general Dirac-Majorana block, KO-7 always and KO-5 exactly under item 1. In one generation M_N = [[0, m], [m, R]] has singular values (sqrt(|R|^2 + 4|m|^2) +- |R|)/2, equal only at R = 0, so a nonzero right Majorana mass obstructs KO-5 in that sector and never KO-7.
3. (Proposition 7) With three generations and the algebra trivial on generation indices, retaining three right neutrinos gives M_N = [[0, Y_nu^T], [Y_nu, R]] with R^T = R. For R = 0 every singular value of Y_nu appears twice and both reductions exist; for general R, KO-7 always exists and KO-5 exists exactly when every singular value of this 6 x 6 matrix has even multiplicity. So nonzero Majorana masses are not an unconditional obstruction in several generations; the exact obstruction is the multiplicity condition.

*Amendment (Terra 6.1).* "Arbitrary flavor mixing" in Result 7 means arbitrary matrices within the displayed species blocks, with the heavy projection onto the specified top Dirac sector; mixing between inequivalent species is outside the displayed Dirac operator.

**Proof.** Lemma 06, Results 4, 6 and 7; the proofs are there. Takagi factorization, by a basis change preserving the form of J, reduces M to diag(mu_i) with mu_i >= 0, and V = I gives s = +1. For s = -1 the descended antiunitary j squares to -1 and commutes with d^2, so every eigenspace of d^2 has even dimension; conversely V = sigma_2 on pairs of equal entries satisfies the criterion with s = -1.

**What it leaves open.** The known escapes for KO-5 (Terra 6.1) are neutral-sector pairing and a symmetry enforcing even multiplicities. Generic Majorana masses exclude KO-5 (ledger row `l06_neutral`).
