You are an independent referee. Work ALONE: do not spawn subagents, do not delegate, do not run parallel tool calls.

Read, under /home/codexssh/conneskk:
- lemmas/18_heavy_limit_near_cutoff.md (the exact quadratic spectral action at fixed cutoff: Theorem 1, Lemma 2, Corollary 3, Proposition 4, Theorem 5, Proposition 6, Counterexamples 7 and 8, No-go theorem 9, Corollary 10), written by another model;
- the section "Two sheets: the form of the classification" of lemmas/16_coarse_truncation.md (Theorem 16.7, Corollary 16.8, Example 16.9), written after your earlier referee report on the rest of that lemma;
- current_framework.md (a background note on the Connes et al. framework, with a table of what truncation reaches).

Background you may read: lemmas/03_mass_weighted_kinetic_terms.md, lemmas/11_spectral_action_heavy_w.md, lemmas/13_gauge_sector_truncation.md, lemmas/10_toeplitz_twistor.md, section 4 of canonical_research.md. Sources: Chamseddine-Connes-Marcolli 2007 (arXiv:hep-th/0610241); Chamseddine-Connes, Why the Standard Model (arXiv:0706.3688); Chamseddine-Connes-van Suijlekom (arXiv:1304.7583); Chamseddine-Connes-Mukhanov (arXiv:1409.2471).

Part 1 (lemma 18). Check every numbered statement and its proof. Pay particular attention to:
(a) Theorem 1: the Duhamel expansion, the spin traces, the quadratic-vertex subtraction, and whether the trace conventions (literal trace on H_F with charge conjugates) match those of CCM; whether the hypotheses (4) on f are what is used;
(b) Proposition 4 and Theorem 5: the decomposition of the charged generator on the massive block with eigenvalues +m, -m, the counting 9/2 and 3/2, the factor from charge conjugation, the formula (18), the limits, the bound (28), and the existence, uniqueness and residue of the pole;
(c) Proposition 6: the formula (33) for a species, whether the neutral-current angle (31) is defined sensibly, and why it is constant in x; the formula (34);
(d) Counterexample 7 and its extension (39) to general f; Counterexample 8, and what exactly "decoupling" means there;
(e) No-go theorem 9: its hypothesis class, and whether it applies to the functions f used by CCM (note that f flat near 0 is not a Laplace transform of a positive measure). Say exactly which f escape it, and whether the statement "the positive Laplace class" fairly limits the conclusion;
(f) Corollary 10: the scaling claims.

Part 2 (lemma 18, interpretation). This lemma bears on the original proposal of a limit with infinitely heavy W, Z and top. Say plainly: within what scope does it refute that limit? What would have to change for a heavy limit at fixed cutoff to exist (other finite data, for instance several heavy doublets, or all doublets heavy, or a different f)? Give what you can prove about a family with several heavy doublets or with no massless doublet. Is the physical picture "the heavy fermion leaves the loop, so the broken vector loses its mass and keeps its kinetic term from the light doublets" correct? Does the limit theory carry unbroken SU(2) x U(1) acting on the remaining doublets, in a precise sense?

Part 3 (lemma 16, two sheets). Check Theorem 16.7, Corollary 16.8 and Example 16.9, with special attention to:
(g) that the construction reproduces Proposition 2.8-type data of arXiv:0706.3688 exactly, including the left action, J(x, y) = (y*, x*), and the grading gamma(xi, eta) = (gamma xi, -gamma eta);
(h) that Corollary 16.4's pair is reducible, as asserted;
(i) orientability as stated, and whether it matches the usual zero-dimensional axiom;
(j) Example 16.9: that real functions on S^4 at level one generate exactly End_H(W) = M_2(H), and real functions on CP^3 generate exactly M_4(C); the use of the same four-space twice; the grading by 5 Q(x_5); what the even part is; that D_F commutes with the centre;
(k) the assertion that this bears on the open step in canonical section 4.

Part 4 (current_framework.md). Check each statement about the literature against your knowledge of the sources, and each row of the table. Then answer plainly: is Example 16.9 substantive, or does it amount to putting the desired algebra in by hand? Is there anything in the two-sheet construction beyond the observation that any two algebras with representations give such a bimodule? Does the note or the lemma overstate or understate this? Name a prior source only if you are sure of it.

For each statement, give a verdict:
- Correct.
- Correct with amendment (state the exact amendment: missing hypothesis, wrong constant, imprecise step).
- Gap (state precisely which step is not justified, and whether you can close it; if you can, give the argument).
- Error (give a counterexample or the corrected statement, with proof).

Rules:
- The deliverable is your own mathematical reasoning. You may run a small computation only to test one specific claim. If you do, name the language and say exactly what was computed. A computation never replaces a proof.
- Do not rewrite or edit any file. Output one Markdown report.
- Use standard mathematical vocabulary (Theorem, Lemma, Counterexample, Conjecture), no status classes, no motivational phrasing. Write in the authorial "we".

Report format: one section per statement (verdict first, then the reasoning), then the answers to Parts 2 and 4, then a short list of all amendments and errors found, and a final line "Overall:" with the number of statements checked and how many are correct, amended, gap or error.
