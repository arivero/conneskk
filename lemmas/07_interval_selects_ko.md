# Does the chiral interval select 9 or 11?

Questions 1-3 of [prompts/07](prompts/07_interval_selects_ko.md). The Astra job stopped on the codex usage limit before producing output, so these are Claude Opus 5.5's proofs, checked by hand. Astra job 08 confirmed Lemmas 1-3 under the pointwise reality hypothesis of Lemma 1 and answered Question 4: see [lemma 08](08_product_selects_ko.md) and the amendments below.

Let I_l = [0, l], H = L^2(I_l, C^2) with psi = (L, R), D = E d/dx with E = [[0, 1], [-1, 0]], Dom D = {psi in H^1 : R(0) = 0, L(l) = 0}, Gamma = diag(1, -1) (job 05). D and Gamma are real.

**Lemma 1 (real structures on the chiral interval).** Let J be antiunitary with J f J^{-1} = conj(f) for f in C^infty(I_l), J Dom D = Dom D, J^2 = eps, JD = eps' DJ, J Gamma = eps'' Gamma J. Then J = W K with W = diag(alpha, beta) constant, abs(alpha) = abs(beta) = 1, and

    eps = +1,   eps'' = +1,   alpha = eps' beta,   eps' in {+1, -1}.

Both values of eps' occur, and they are exchanged by J -> J Gamma. The chiral boundary conditions exclude every real structure anticommuting with Gamma; the bare line allows such ones, e.g. W = E with signs (-1, +1, -1).

*Proof.* Antilinearity together with J f = conj(f) J gives J = W K for a unitary matrix function W(x). Since E is real, D J psi = E W' conj(psi) + E W conj(psi'), while J D psi = W E conj(psi'). Hence eps' D J = J D forces E W' = 0, so W is constant, and W E = eps' E W. Preservation of R(0) = 0 for arbitrary L(0) forces W_21 = 0, and preservation of L(l) = 0 forces W_12 = 0. So W is diagonal and unitary. Then W conj(W) = 1 gives eps = +1, and W commutes with Gamma, so eps'' = +1. Finally diag(alpha, beta) E = [[0, alpha], [-beta, 0]] and E diag(alpha, beta) = [[0, beta], [-alpha, 0]], so alpha = eps' beta. Replacing J by J Gamma keeps eps = eps'' = +1 and flips eps'. ∎

With Connes' even convention (eps' = +1) the chiral interval therefore has KO-dimension 0 mod 8, although its metric dimension is 1.

**Lemma 2 (compression).** Every J of Lemma 1 commutes with P = 1_{[0,E]}(abs(D)). On the truncation span(u_L, u_R) of job 05 it induces J_2 = diag(alpha, beta) K, with D_2 = m_1 sigma_1, Gamma_2 = sigma_3 and the signs (+1, eps', +1).

*Proof.* JD = eps' DJ gives J D^2 = D^2 J, so J commutes with abs(D) and with its spectral projections. The basis functions u_L = sqrt(2/l)(cos(pi x/2l), 0) and u_R = sqrt(2/l)(0, sin(pi x/2l)) are real, so J u_L = alpha u_L and J u_R = beta u_R. ∎

**Lemma 3 (the reflection fixes s = eps').** Let (sigma psi)(x) = a (R(l - x), L(l - x)). Then sigma preserves Dom D, anticommutes with Gamma and commutes with constants; [sigma, D] = 0 holds exactly when the phases on the two components agree, and sigma^2 = 1 forces a = +1 or -1. On the truncation, sigma = a sigma_1. For every J of Lemma 1,

    sigma J = s J sigma   with   s = beta/alpha = eps'.

*Proof.* The swap with x -> l - x exchanges the conditions R(0) = 0 and L(l) = 0. With general phases a, b on the two components, (D sigma psi)_L = -b L'(l - x) and (sigma D psi)_L = -a L'(l - x), so commutation forces a = b. One checks sigma u_L = u_R and sigma u_R = u_L. Then sigma J psi = a (beta conj R(l - x), alpha conj L(l - x)) and J sigma psi = a (alpha conj R(l - x), beta conj L(l - x)), which gives s = beta/alpha = eps'. ∎

**Consequence.** As the interval collapses, only constants keep bounded commutators, and the reflection becomes a canonical L <-> R involution. Its sign against J is s = eps', so the interval fixes s exactly as far as the real structure on it is fixed, and no further. The 9 versus 11 ambiguity of job 06 is the same as the standard ambiguity J versus J gamma for even real spectral triples (Dabrowski-Dossena). This matches job 06, Proposition 9: the two odd reductions use J_M gamma_M (for 4 + 5) and J_M (for 4 + 7) on spacetime. Under Connes' convention eps' = +1 the reflection gives s = +1, i.e. KO-7, formally 11.

**Conjecture (Question 4; false as stated, see amendment 4).** For F = F_0 x (collapsing chiral interval) with the product conventions of job 06, Lemma 1, the induced U = 1 (x) sigma satisfies UJ = sJU with s = eps' (interval) times a sign determined by the product grading twist. In particular, which of 9 and 11 is selected is fixed by choosing which spacetime real structure (J_M or J_M gamma_5) represents physical charge conjugation. A KO-0 interval does not change the KO-degree of a product, so the "Clifford point" of job 06 must come from the odd x odd product structure rather than from the interval alone; the open point is how the two descriptions match. Attempted by: Claude Opus 5.5 (Questions 1-3 above). The gpt-6-astra job was cut off by the usage limit before attempting it.

## Amendments from job 08

1. Lemma 1 needs its hypothesis J f J^-1 = conj(f). Without it, J_ref = sigma_1 R_l K (R_l the reflection x -> l - x) preserves the chiral boundary conditions and has the KO-6 signs (Counterexample 08.4), so the chiral boundary conditions alone do not force KO-dimension 0.
2. Lemma 2 holds for the compressed operators. With the full compressed diagonal algebra and the inherited J_2, the two-point data fail the first-order condition: [[D_2, e], e°] = D_2 for e = diag(1, 0) (Counterexample 08.4).
3. The sign s = eps' in the Consequence above is the sign of the reflection against the interval's own J. In the standard internal-first KO-6 product the required grading twist changes it: the bare reflection 1 (x) sigma always has s = -1, formally 4 + 5 = 9, for either eps' (Theorem 08.5).
4. Question 4 (Conjecture 07.4) is false as stated: a fixed spacetime J_M and particle-number conservation admit both signs (Proposition 08.9, Counterexample 08.11, Theorem 08.12).
