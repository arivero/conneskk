You are a mathematical expert. Work ALONE: do not spawn subagents, do not delegate, do not run parallel agents or parallel tool calls. You may read files and run small local computations (python/numpy/sympy), but the deliverable is rigorous mathematics. Write in the standard mathematical voice ("we", "Let ...").

Label every result with standard mathematical terms: Theorem / Lemma / Proposition when proved; Counterexample when a claim fails; No-go theorem where appropriate; Conjecture when we cannot settle it (then give the strongest partial result, the evidence, and where the argument breaks). State every extra assumption a result depends on.

Context (read-only): /home/codexssh/conneskk/lemmas/05_deconstruction_interval.md (chiral interval, minimal truncation = Connes-Lott); /home/codexssh/conneskk/lemmas/06_vectorlike_odd_factorization.md (Lemma 1 product conventions; Theorem 2 doubling criterion UJ = sJU, s = -1 -> KO-5 (4+5 = 9), s = +1 -> KO-7 (4+7 = 11); Counterexample 3; Proposition 9 with J_{4+5} = (J_M gamma_M) (x) j_5 and J_{4+7} = J_M (x) j_7); /home/codexssh/conneskk/lemmas/07_interval_selects_ko.md (Lemmas 07.1-07.3 by another model, and Conjecture 07.4).

Task A (independent check). Without assuming them, re-derive Lemmas 07.1-07.3: the classification of real structures on the chiral interval (claimed: J = diag(alpha, beta) K, eps = eps'' = +1, alpha = eps' beta, KO-dimension 0 in Connes' convention), their compression to the truncation, and s = eps' for the reflection sigma. Report agreement, or give the counterexample/correction.

Task B (Conjecture 07.4). Model the heavy-W/Z limit of a vectorlike finite sector as a product of internal data with the collapsing chiral interval, so that the interval carries the L/R grading and its reflection sigma supplies the L <-> R involution. Using the product conventions of job 06, Lemma 1 (and Dabrowski-Dossena's tables), determine:
 (B1) how a KO-0 interval (or its truncation) can combine with internal data to give a KO-6 finite triple, and how this matches the odd x odd "Clifford point" description of job 06 (the interval is even of KO-0, the job-06 point P_k is odd of KO 1 or 7; reconcile these two descriptions precisely);
 (B2) the induced U and its sign s against the product J, as a function of eps' (interval) and the grading twists;
 (B3) whether s, hence 9 versus 11, is equivalent to the choice of spacetime real structure J_M versus J_M gamma_5 in the 4-dimensional factor, and which of the two corresponds to physical charge conjugation of a 4D Dirac field (Euclidean and Lorentzian conventions; cite the standard identification used by Chamseddine-Connes-Marcolli and by van den Dungen-van Suijlekom).
 (B4) particle-number preservation [U, Q] = 0.

Output format (Markdown, plain ASCII math is fine): numbered results with labels and proofs. End with "Consequence for 9 versus 11": one paragraph stating what is now decided and what remains a choice.
