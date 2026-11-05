# A finite KO-6 triple factors as T_7 x P_7 or T_5 x P_1 exactly when a grading-reversing involution U commutes with the algebra, its opposite and D, with UJ = JU or UJ = -JU

**Status.** Theorem. Proved by Astra 6 (job 06, Result 2). Ledger row `l06_factorization`. Item 1 of Theorem D of paper/towerless_intervals.tex; cited as "\supp{06}, Theorem 2" in paper/real_structure_note.tex. The criterion was not found in print (paper/LITERATURE.md, section D).

**Setting.** A finite KO-6 triple (A, H, D, J, gamma), signs (+, +, -), with order zero and first order, and a° = J a^\\* J^{-1}. P_k = (C, C, 0, K), k = 1 or 7, is the odd point (point algebra R for real algebras). Odd-times-odd products use H_1 (x) H_2 (x) C^2 with J = J_1 (x) J_2 (x) (BK) and B from Result 1 of lemma 06, in agreement with Dabrowski-Dossena (equation (25), Table 6). H_L and H_R are the gamma = +1 and -1 subspaces, D = [[0, M^\\*], [M, 0]], and C = J restricted to H_L.

**Statement.** For s = +1 or -1 the following are equivalent:

1. the triple is a product T_n x P_k with (s, n, k) = (+1, 7, 7) or (-1, 5, 1);
2. there is a complex-linear unitary U with U^2 = 1, U gamma = -gamma U, [U, a] = [U, a°] = [U, D] = 0 and UJ = sJU;
3. there is an A-bimodule unitary V: H_L -> H_R with V^\\*M = (V^\\*M)^\\* and (V^\\*C)^2 = s, where C and V^\\*C are antilinear.

Given U, the descended data are H_0 = H_L, d = (UD)|_{H_L} and j = (UJ)|_{H_L}, with d = d^\\*, j^2 = s and jd = s dj, so (j^2, jd/dj) is (+, +) for KO-7 and (-, -) for KO-5; order zero and first order descend. Replacing U by i gamma U exchanges [U, D] = 0 with {U, D} = 0 and preserves s. Equality of left and right module multiplicities is only part of the criterion: compatibility with D and J must also be checked.

*Scope.* Finite KO-6 triples. "Doubling" means this factorization of an even triple as an odd triple times a Clifford point; it is unrelated to the fermion doubling of the noncommutative Standard Model.

**Proof.** Lemma 06, Result 2; the proof is there. The identification (x, y) -> x + Uy of H_L + H_L with H puts a, D, gamma and J in the product form, with B = sigma_1 for (7, 7) and B = -i sigma_2 for (5, 1); conversely the product has U = 1 (x) sigma_1.

**What it leaves open.** The criterion does not say which sign a given triple selects: the electrodynamics triple admits both (06_counterexample_electrodynamics_both_signs.md). A factorization is a chosen removal of a Clifford factor, and its identification with the dimension of a parent geometry is not supplied (lemma 06, Proposition 9).
