# Under the Chamseddine-Connes-Marcolli relation 8 M_W^2 = sum N_f m_f^2, the W mass satisfies m_max/(2 sqrt 2) <= M_W <= sqrt(N_g) m_max

**Status.** Proposition (Proposition 11.1), conditional on the CCM relation at the matching scale (ledger hypothesis `ccm_relation`). Proved by Claude Opus 5.5; checked by Claude Opus 5.5 by hand and by Terra 6.1 by hand, effort max: correct (report appended to lemma 11). Ledger row `l11_bounds`. Proposition E of paper/towerless_intervals.tex. CCM 2007 contains the relation (equation (1.5), Lemma 4.6, equation (4.16)); the proposition applies it to the heavy-W prescription of the corpus.

**Setting.** The almost-commutative Standard Model spectral action with the gauge normalization g^2 f_0/(2 pi^2) = 1/4 and the Higgs normalization by a = Tr(Y_nu^\\* Y_nu + Y_e^\\* Y_e + 3(Y_u^\\* Y_u + Y_d^\\* Y_d)), which give at the matching scale

    8 M_W^2 = sum over generations of (m_nu^2 + m_e^2 + 3 m_u^2 + 3 m_d^2),

the m being Dirac masses (CCM, section 5; H the unrescaled Higgs field). Majorana masses do not enter a. N_g generations at fixed gauge coupling; m_max is the largest Dirac mass.

**Statement.**

1. m_max/(2 sqrt 2) <= M_W <= sqrt(N_g) m_max.
2. In particular M_W -> infinity if and only if m_max -> infinity.

*Scope (referee).* CCM derive the coefficient 8 for three generations. For N_g != 3 the coefficient 8 is an assumption beyond the cited normalization: replicating the representations N_g times with the same normalization gives sum N_f m_f^2 = (8 N_g/3) M_W^2. The neutrino terms are Dirac Yukawa parameters, not eigenmasses of the seesaw matrix. The relation belongs to the truncated asymptotic (heat-kernel) action at the matching scale, and small masses relative to Lambda alone do not make it exact for the finite-cutoff action.

**Proof.** Lemma 11, Proposition 11.1; the proof is there: every term has weight at least 1, so 8 M_W^2 >= m_max^2, and each generation has weights 1 + 1 + 3 + 3 = 8, so 8 M_W^2 <= 8 N_g m_max^2.

**What it leaves open.** At fixed cutoff, m_max <= eps Lambda implies M_W <= sqrt(N_g) eps Lambda, so a heavy-W limit needs Lambda -> infinity jointly or a calculation of the finite-cutoff action (lemma 11, amendment on the regime); lemma 18 carries out that calculation.
