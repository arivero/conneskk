You are an independent referee of a mathematical lemma. Work ALONE: do not spawn subagents, do not delegate, do not run parallel agents or parallel tool calls. Follow AGENTS.md in the repository root. The repository is read-only for you. Your report is your final message.

Target: lemmas/29_window_on_the_disc_bundle.md, by Claude Opus 5.5, which claims to prove Conjecture 28.6 of lemmas/28_two_walls_connected_parent.md for a chosen class of metrics. The result is stronger and shorter than expected, since earlier reports (reviews/2026-11-03_astra_job_28.md, reviews/2026-11-03_terra_check_28.md) anticipated a Bismut-Lebeau block analysis. Your job is to look for the error. Treat every step as suspect, and do not reward the text for looking finished. Tools: tools/lemma28_radial.py, tools/lemma29_window.py.

Check by reasoning first. Run Python only for a number that a step needs, or when the outcome could expose an error; say what the outcome would have changed. Do not rerun tables that cannot fail.

Please decide each of the following, with the argument:

1. Proposition 29.1. Is T_M = T_0 + R exact for the metric of (H1) and the pull-back connection? Does the O'Neill term have the form and bound claimed, with no further zero-order or first-order term? Does Q^ really commute with the derivatives e_a on K-equivariant maps, given that the connection on N, on the spinors of the fibre and on E all come from the one principal bundle Sp(2) -> S^4? Is the sign algebra of the cross terms right, including chirality, with c(f_alpha) = gamma_5 sigma_alpha? Is the spin bundle of X correctly identified with Sigma_4 (x) C^2 as a K-representation?

2. Proposition 29.2. The Parthasarathy formula with these normalizations; which V occur; the chirality statement behind (H4); whether the fibrewise projection onto W_0 is compatible with D_H as claimed; the domain issues on the noncompact N.

3. Lemma 29.3. The bound on || |y| u ||; the constant for sigma . J; whether (y . J)^2 >= |y|^2/4 is used correctly.

4. Lemma 29.4 and the IMS step in Theorem 29.7. Note the transition regions: the argument drops ||T chi_b u||^2 and instead bounds ||u|| on the bulk with Lemma 29.4. Does anything go wrong with the constants, with the wall condition, or at the point where chi_c u is compared with the model on N? Is Pi (chi_c u) = 0 used correctly?

5. Lemma 29.5. The formula D_k^2 = C_2(L) + 3/2 - (3/8) k^2: derive it. The eligibility argument excluding the two 20s on O(3), through the multiplicity on the slice. The kernel chirality. The claim that kappa_w = sqrt 3 for all V. Whether the invariant connection on a summand is the Chern connection.

6. Lemma 29.6. The sum of squares, the vanishing of the cross terms with the wall condition, the Robin spectrum, the assignment of channels for T_M and T_M^*. Is the sign convention of q consistent with Proposition 28.13, T_M = i Z d/dx + A + i m q, q = -tau? Is the relative sign between the core and the wall correctly established, or does it rest on something weaker than the text says (see Remark 29.12)? If the sign were the other one, what would fail?

7. Theorem 29.7. Do the hypotheses of Lemma 28.14 follow, and is Lemma 28.14 itself correct? Is the trial defect correct?

8. Proposition 29.8. The tunnelling identity. The Agmon argument: the identity for ||T(xi u)||^2, the absorption, the transition near the collar, and the use of lambda -> 0. Is the rate (M/2) justified where n . J has eigenvalue 1/2 only on some channels? Are any constants hidden in a way that invalidates the claim?

9. Theorem 29.9. Does it follow from Theorem 28.15? The formulas for Q_B and Q_Y. The generation claim.

10. Proposition 29.10 and Theorem 29.11. The block structure, the elimination inequality, the Schur complement, A_eff including the factor sqrt 3/2 and the norm 3/(2 rho), and K(1). Is ||A_o|| used correctly? Is the trial state argument complete?

11. Are (H1) to (H4) consistent with Theorem 28.9, with X a smooth manifold, and with each other? In particular: h = 1 with rho(r) = r near 0 and rho constant near l; f = r near 0 with Phi_M smooth.

12. Is any statement too broad, or is any statement in the Outcome stronger than what is proved? Is the Scope paragraph accurate? Do the numbers in the table agree with what the text claims about them?

13. Is there prior work that already contains this theorem or its key identity? Search the literature (Callias-type operators on bundles, Bismut-Lebeau, Maridakis, Taubes-type localization, Witten deformation on homogeneous bundles) and give identifiers you have checked.

Output: for each item, one of CONFIRMED, AMENDMENT (state the exact correction) or ERROR (state where the proof breaks, with a counterexample if there is one, and the nearest correct statement). Then a short list of the corrections in order of severity. Use neutral wording with "we", no first person singular, no possessives, and the vocabulary Theorem, Lemma, Proposition, gap, error in the proof. Name the language of each numerical check.
