# The inner fluctuation without order one of the truncated two-point data factorizes: m |Phi|^2 sigma_1, gauge-neutral, with the pointwise real structure, and a link m Phi^2 of charge 2, whose quadratic term keeps the modulus fixed along a gauge orbit, with the reflection real structure

**Status.** Theorem (Theorem 19.1), with Corollary 19.2. Proved by Claude Opus 5.5. Ledger rows `l19_fluct` and `l19_gauge`. Cited in paper/towerless_intervals.tex and in paper/real_structure_note.tex ("\supp{19}").

**Setting.** A = C + C acting diagonally on H = C^2, D = m sigma_1 with m > 0, gamma = sigma_3. Two real structures, with x-hat = J x J^{-1}: J_0 = K (or sigma_3 K), inherited from pointwise reality on the interval, commuting with gamma; and J_r = sigma_1 K, inherited from the reflection real structure of lemma 08, Counterexample 4, with J_r^2 = 1, J_r D = D J_r and J_r gamma = -gamma J_r, the KO-6 signs. Both satisfy order zero and fail order one: [[D, e], e-hat] = m sigma_1 for J_0 and -m sigma_1 for J_r, with e = diag(1, 0). The fluctuations of arXiv:1304.7583: D' = D + A_(1) + A~_(1) + A_(2) with A_(1) = sum a_j [D, b_j] = m [[0, phi_1], [phi_2, 0]], A~_(1) = eps J A_(1) J^{-1}, A_(2) = sum a_j-hat [A_(1), b_j-hat]; gauge transformations U = u J u J^{-1}.

**Statement.**

1. (Theorem 19.1) For every universal one-form, J_0 gives D' = m [[0, |1 + phi_1|^2], [|1 + phi_2|^2, 0]] and J_r gives D' = m [[0, (1 + phi_1)(1 + conj(phi_2))], [(1 + phi_2)(1 + conj(phi_1)), 0]].
2. For a self-adjoint form, with Phi = 1 + phi_1: J_0 gives D' = m |Phi|^2 sigma_1, and J_r gives D' = m [[0, Phi^2], [conj(Phi)^2, 0]].
3. (Corollary 19.2) With u = diag(e^{i alpha}, e^{i beta}) and psi = alpha - beta, Phi -> e^{i psi} Phi. For J_0, U = 1 and the image of the self-adjoint forms is {t sigma_1 : t >= 0}, a real gauge-neutral field, with t = 0 reached at Phi = 0.
4. For J_r, U = diag(e^{i psi}, e^{-i psi}) and the link m Phi^2 goes to e^{2 i psi} m Phi^2: U(1) acts with charge 2, and the image is all of C, pointwise; a globally prescribed smooth link need not have a global smooth square root.
5. The gauge orbit of the zero form has Phi = e^{i psi} and gives D' = D for J_0 and the link m e^{2 i psi} for J_r. Without A_(2) the link would be m(2 cos psi - 1) for J_0, although U = 1, and m(2 e^{i psi} - 1) for J_r, of modulus m(5 - 4 cos psi)^{1/2}, off the orbit of D: the quadratic term restores gauge covariance.

**Proof.** Lemma 19, Theorem 19.1 and Corollary 19.2; the proofs are there, by direct computation with [X, b] = [[0, x(b_2 - b_1)], [y(b_1 - b_2), 0]] for off-diagonal X and diagonal b.

**What it leaves open.** The first-order failure of lemma 08, Counterexample 4 has this escape. In arXiv:1304.7583 the quadratic term generates no new scalar fields, and here too it depends on the same two parameters; relating the neutral radial parameter t to the singlet of the grand-symmetry model is an analogy that would need a map of algebras, representations, fields and gauge actions.
