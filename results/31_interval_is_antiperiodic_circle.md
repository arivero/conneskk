# The chiral interval of length l is unitarily the antiperiodic circle of radius l/pi, with the grading as the reflection x -> -x, the walls as its two fixed points and the scalar functions as the reflection-even functions

**Status.** Proposition (Proposition 1.1). Proved by Claude Opus 5.5 (branch 11D; ledger agent `claude`); checked by its author by hand, by Terra 6.1 by hand, who also checked the Weyl constant of the joint family, and by Claude Sonnet 5.5 by hand (reports: historical/reviews/2026-11-04_terra_check_11d.md, historical/reviews/2026-11-04_sonnet_second_check_11d.md). Ledger row `d11_circle` (depending on `l05_truncation`). The first row of the table and the section on the grading of paper/connes_kk_dictionary_note.tex ("\supp{31}"); cited in the section on the interval parent of paper/real_structure_note.tex ("the reflection-even algebra of \supp{31}").

**Setting.** D_l(L, R) = (R', -L') on H_l = L^2([0, l], C^2), with R(0) = 0 and L(l) = 0, grading Gamma = diag(1, -1) and the scalar functions C^infinity([0, l]), as in lemma 05, eq. (8). S_R is the circle of length 2l, of radius R = l/pi, with coordinate x in [-l, l] and antiperiodic functions u(x + 2l) = -u(x).

**Statement.** The map (W(L, R))(x) = (L(abs(x)) + i sgn(x) R(abs(x)))/sqrt 2 is a unitary H_l -> L^2_antiperiodic(S_R), and

1. W D_l W^\* = -i d/dx on its antiperiodic domain;
2. W Gamma W^\* = P, the reflection (Pu)(x) = u(-x);
3. W f W^\* is multiplication by f(abs(x)), so the algebra goes to the reflection-even functions;
4. the walls x = 0 and x = l go to the two fixed points x = 0 and x = l ~ -l of the reflection.

Hence spec D_l = {(k + 1/2)/R : k in Z}, each eigenvalue simple, which is (9) of lemma 05, and the Connes-Lott mass of the minimal truncation is m = pi/(2l) = 1/(2R).

*Scope.* The unfolded circle is scalar, and even extensions of arbitrary smooth functions on the interval need not be smooth at the fixed points (referee note). With finite data D_F supplied as in lemma 22, the parent unfolds to -i d/dx + D_F on the periodic circle of length 2l (25_unfolding_to_circle.md), and the wall angle interpolates between that circle (theta = 0) and the antiperiodic circle of this proposition (theta = pi/2).

**Proof.** Lemma 31, Proposition 1.1; the proof is there. The inverse is L(x) = (u(x) + u(-x))/sqrt 2, R(x) = (u(x) - u(-x))/(i sqrt 2) on [0, l]; continuity of u at 0 is the condition R(0) = 0, and the antiperiodic matching at l is the condition L(l) = 0.

**What it leaves open.** Proposal 1.3 of lemma 31, the circle as the M-theory circle, is a dictionary to be tested and has no file; its tests are the gauge couplings, which need g_5^2 ~ R along the family, and the selection of the path by an action (31_scale_free_potential.md). The joint family and the localized family that lemma 31 restates from the Astra 6 audit of 3 November 2026 (ledger rows `a11_joint_limit`, `a11_localized`) are 30_window_and_tower_on_interval.md and 30_localized_family.md. Which Witten spaces carry a spin structure whose fibre circle does not lift the circle action, as a fermion with both a fibre momentum and a base twist needs, is open.
