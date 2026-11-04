# As Lambda -> infinity on the reduced action, the axial anomaly of a traceless flavour generator has only the electromagnetic term, with coefficient 2 N_c tr(T^3 Q^2) = 1 for two flavours, while at fixed cutoff a heavy top weights it as (4 e^{-x} - 1)/3 for the heat cutoff

**Status.** Corollary (Corollary 27.2), with Proposition 27.4. Proved by Claude Opus 5.5; checked by Claude Opus 5.5 in Python (exact fractions for 2 N_c tr(T^3 Q^2) = 1 and tr T^3 = 0; the third-generation coefficient for the heat cutoff at x = 0, 0.1, 1, 5, 50, which is 1.0000, 0.8731, 0.1572, -0.3243, -0.3333) and by Terra 6.1 by hand, who corrected an error of interpretation in Proposition 27.4 (historical/reviews/2026-11-03_terra_check_27.md, items 2 and 4). Ledger row `l27_anomaly` (depending on `l27_trace`). Proposition 5 of paper/chiral_limit_note.tex, together with Theorem 27.1.

**Setting.** As in 27_regulated_axial_trace.md, with f continuous at 0 and Lambda -> infinity at fixed masses, the flavours in the same colour bundle. The normalization f(0) = 1 is the usual convention for a regulator, and the value that makes the Jacobian the anomaly. For Proposition 27.4: the doublet (t, b) with T = T^3, m_b/Lambda -> 0 and x = m_t^2/Lambda^2.

**Statement.**

1. (Corollary 27.2) If tr T = 0, then 2 Tr(gamma_5 T f(DD^2/Lambda^2)) -> f(0) 2 N_c tr(T Q^2) (e^2/8 pi^2) int F_em ^ F_em, with no gluonic and no gravitational term.
2. For two flavours with T = T^3 and Q = diag(2/3, -1/3), 2 N_c tr(T^3 Q^2) = 1, and the right side is f(0) (e^2/16 pi^2) int F_em,mu nu F~_em^mu nu.
3. A singlet T = 1 on N_f flavours gives in addition the gluonic term f(0) 2 N_f (g^2/8 pi^2) int tr_c(G ^ G) and the gravitational term -f(0) (N_c N_f/12) p_1(M).
4. For a smooth cutoff class in which the heat expansion can be used, the local form, with a smooth function chi on M inserted, follows at Lambda -> infinity from the a_4 coefficient (1/16 pi^2) tr(gamma_5 T (E^2/2 + Omega^2/12)).
5. (Proposition 27.4) At fixed cutoff the electromagnetic coefficient for T^3 on (t, b) is 2 N_c (1/2) (Q_t^2 f(x) - Q_b^2 f(0))/f(0). It equals 1 at x = 0; for the heat cutoff it is (4 e^{-x} - 1)/3, tending to -N_c Q_b^2 = -1/3 as x -> infinity, and the gluonic and gravitational regulated traces are proportional to f(x) - f(0).

*Scope.* The commuting subalgebra of Proposition 17.3. Item 5 is a trace in the fixed-cutoff family of lemma 18, and its weights are properties of the chosen regulator. An explicitly massive flavour breaks the axial symmetry, so this calculation alone does not establish a Wess-Zumino term in the low-energy theory; such a term needs the retained symmetry, its background fields or spurions, and an anomaly-matching prescription, as in D'Hoker and Farhi (named in the steer note and not read). Making f part of a finite-scale spectral action, as in lemmas 18 and 25, does not by itself identify the regulator of the fermion measure with that action or make these weights observable.

**Proof.** Lemma 27, Corollary 27.2 and Proposition 27.4; the proofs are there: Theorem 27.1 with the index theorem, where tr T = 0 removes the gluonic and gravitational terms, and the two weights f(x), f(0) for the heavy and light members of the doublet.

**What it leaves open.** With this result the algebraic coefficient quoted in the steer note, item 6, has the regulated trace and measure that it lacked. The measure on gauge fields, the quantum order parameter and the pion kinetic term remain to be supplied (lemma 27, consequence for T10).
