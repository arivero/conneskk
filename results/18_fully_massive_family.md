# With one common Dirac mass m for every species and no Majorana masses, the W and Z pole masses diverge at fixed cutoff, 2x < z_W < 2x + 2 and 16x/5 < z_Z < 16x/5 + 2, with M_W^2/M_Z^2 -> 5/8 at both ends and no light fermions

**Status.** Proposition (Proposition 14 of lemma 18). Sketch by Terra 6.1; the ratio added by Claude Opus 5.5; complete proof by Astra 6, written into the lemma. Ledger row `l18_fully_massive`. Stated after Proposition E.1 of paper/towerless_intervals.tex and cited in paper/boundary_condition_note.tex ("\supp{18}").

**Setting.** Heat cutoff; three generations with right-handed neutrinos; no Majorana masses; one common Dirac mass m > 0 for every Standard Model species; x = m^2/Lambda^2; z_W and z_Z the charged and massive neutral poles in units of Lambda^2; H and g as in Proposition 4; v = (1, -1).

**Statement.**

1. The charged form factor is proportional to e^{-x} [g(y) + 2x H(y)], and the neutral particle-trace kernel to e^{-x} [diag(6, 10) g(y) + 12 x H(y) v v^T], whose massive factor has coefficient 12 x v^T diag(6, 10)^{-1} v = 16x/5.
2. Both massive pole equations have the form (2 + beta - z) H(-z) = 2, with beta_W = 2x and beta_Z = 16x/5, so 2x < z_W < 2x + 2 and 16x/5 < z_Z < 16x/5 + 2: both pole masses diverge with m at fixed cutoff.
3. M_{W,pole}^2/M_{Z,pole}^2 -> 5/8 as x -> infinity, and also as x -> 0, where z_W ~ 3x and z_Z ~ 24x/5. In between the ratio differs: at x = 3, z_W = 7.4996, z_Z = 11.3746 and the ratio is 0.6593 (Python 3 with SciPy, not kept).
4. The kernel tends to zero at every fixed Euclidean momentum, and the charged Taylor kinetic coefficient is proportional to e^{-x} (1 - x/2), negative for x > 2.

*Scope.* A counterexample to any general no-go for diverging pole locations at fixed cutoff. The family has no light fermions.

**Proof.** Lemma 18, Proposition 14 and the complete proof written after it; the proofs are there. With F(z) = z - 2 + 2/H(-z), F(0) = 0 and F'(z) >= 1/2 for z >= 0, so each beta > 0 has a unique positive root, at which H(-z) > 1 gives beta < z < beta + 2.

**What it leaves open.** The physical quality of a limit with no light fermions is open (lemma 18, after Proposition 14).
