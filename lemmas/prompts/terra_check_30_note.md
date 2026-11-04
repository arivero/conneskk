You are an independent referee. Work ALONE: do not spawn subagents, do not delegate, do not run parallel agents or parallel tool calls. Follow AGENTS.md in the repository root. The repository is read-only for you. Your report is your final message.

Targets: lemmas/30_massless_limit_as_a_joint_limit.md and the draft note paper/joint_limit_note.tex, both by Claude Opus 5.5. Context: lemmas/29_window_on_the_disc_bundle.md with its referee report in reviews/ if present; lemmas 22, 23, 24, 25, 28, 09; the outside audit reviews/2026-11-03_outside_audit_d11.md and its assessment reviews/2026-11-04_outside_audit_assessment.md. Your job is to look for errors and for statements stronger than what is proved. Do not reward the text for looking finished.

Check by reasoning first. Run Python only for a number that a step needs, or when the outcome could expose an error; say what the outcome would have changed.

Part A, lemma 30. Decide each, with the argument:

1. Theorem 30.1 against Theorems 22.1 and 22.4 as stated there, including the constant in the compression bound, the hypotheses, and the count at fixed energy when some singular values vanish or coincide.
2. Corollary 30.2 and the connection to lemma 25: is the statement that (3 - d_eff)/2 connects the pairs (3, 24/5) and (2, 16/5) correct within the scope of lemma 25, and for which family? Is the path s = l Lambda correct for E_eps?
3. Proposition 30.3 against lemma 9, including the first oscillatory root and the asymptotics of the gap.
4. Corollary 30.4 against lemma 24.
5. Theorem 30.5. Is it legitimate to let M_eps -> infinity in Theorem 29.7, and are the constants of Proposition 29.8 uniform along the family with the eta chosen? Is item 4 correct: the same domain for D-hat_M and D-hat_0, the min-max comparison, the Weyl law for this boundary problem? Is the dilation statement exact, including the half-densities and the scaling of the potential? Do the conclusions depend on anything uniform that is not proved?
6. Proposition 30.6: the normalization, the norm of B - P_H B, the telescoping constant.
7. Proposition 30.7. This is new and has not been read by anyone else. Check: that C commutes with D_H, the fibre operator and R separately; that F -> C F j^-1 is a real structure on Hom_G(4, -) (signs of C^2 and j^2); the phase choice and Pi (chi_c zeta) = 0; that the weights match, g + g-tilde = G; the absorption in the bulk with the first-order inequality, given that zeta does not satisfy either wall condition; the bound of b_+ - b_- by |zeta|; whether the claimed rate 2 G really follows, including the terms from the region near the wall. If the rate is wrong, give the rate that is proved.
8. Remark 30.8: is each statement accurate?

Part B, the note.

9. Does each theorem and proposition in the note state what lemma 29 or lemma 30 proves, with the same hypotheses? List every place where the note says more, or hides a hypothesis (flat fibres, constant f on the collar, Fubini-Study, the sign of the potential, case (a) versus (b)).
10. Is the physics framing accurate? In particular the abstract and the phrase "massless electroweak limit": is it clear that on the disc bundle only the fermion window is treated, and that the representation 4 is pseudoreal? Is the reading of Witten 1983 correct (read the scan if needed: https://inspirehep.net/files/aafed6325868aabd22bea81c916b789e, preprint pp. 7-8, 43-44)? Is the statement on Maridakis (arXiv:2110.11654) correct? Is the statement on the Bryant-Salamon metric correct?
11. Citations: is each one apt, and is the claim attached to it what the source says? Does any statement in the note conflict with paper/towerless_intervals.tex or paper/boundary_condition_note.tex?
12. Table I against the values stated in lemma 29: are the labels correct, and is the statement on the mesh floor accurate?
13. Would an expert in spectral geometry or in Kaluza-Klein phenomenology find a known result that this reproduces or contradicts? Give identifiers you have checked.

Output: for each item, one of CONFIRMED, AMENDMENT (state the exact correction) or ERROR (state where the argument breaks, with a counterexample if there is one, and the nearest correct statement). Then a short list of corrections in order of severity. Use neutral wording with "we", no first person singular, no possessives, and the vocabulary Theorem, Lemma, Proposition, gap, error in the proof. Name the language of each numerical check.
