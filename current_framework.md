# The current Connes et al. framework, and what truncation reaches

Background note for STRATEGY T0b. Written by Claude Opus 5.5 on 3 Nov 2026. Read from the arXiv LaTeX sources: Chamseddine-Connes, *Why the Standard Model* (arXiv:0706.3688, sections 2-5); Chamseddine-Connes-van Suijlekom, *Inner fluctuations without the first order condition* (arXiv:1304.7583, introduction); Chamseddine-Connes-Mukhanov, *Quanta of Geometry* (arXiv:1409.2471, in part); Chamseddine-Connes-Marcolli 2007 (arXiv:hep-th/0610241, section 2.6). The other papers are taken from [LITERATURE.md](LITERATURE.md), section I. The new statements are in [lemma 16](lemmas/16_coarse_truncation.md).

The Connes-Lott layer reached by [lemma 05](lemmas/05_deconstruction_interval.md) has an algebra, a Hilbert space and an operator. The current framework adds a real structure, a grading with KO-signs, order conditions, a classification of the finite algebra, and fluctuations that may relax order one.

## The framework

**Real structure and KO-dimension.** Connes 2006 and Barrett 2007 reverse the grading on antiparticles, so that the finite space has KO-dimension 6 and metric dimension 0, with total KO-dimension 10 = 2 mod 8. The fermion action (1/2) <J xi, D xi> removes the doubling through the Pfaffian.

**Classification of the pair (A, J)** (arXiv:0706.3688, sections 2-3). On a finite Hilbert space with an antiunitary J, J^2 = 1, seek involutive algebras with order zero [x, J y\* J^-1] = 0, a separating vector and irreducibility of (A, J). Then:

- the centre of the complexified algebra is C or C + C;
- centre C gives A_C = M_k(C) acting on itself by left multiplication, J x = x\*, dim H = k^2;
- centre C + C gives A_C = M_k(C) + M_k(C), acting on itself by left multiplication, J(x, y) = (y\*, x\*), dim H = 2 k^2;
- with centre C, the KO-6 relation J gamma = -gamma J is impossible.

So KO-6 forces centre C + C: the finite space is disconnected, with two pieces exchanged by J.

**Real form and grading.** Chamseddine and Connes state as a hypothesis that the grading and the real form come from a right quaternionic, nontrivially graded vector space W. The smallest case is dim_H W = 2. With V a complex 4-space, A = End_H(W) + End_C(V) = M_2(H) + M_4(C), H = E (-) E\* with E = Hom_C(V, W), gamma(xi, eta) = (gamma xi, -gamma eta), and dim H = 32 per generation. The even part of A is H + H + M_4(C).

**Order one.** One looks for Dirac operators connecting the two pieces, with [D, Z(A)] != 0. Up to automorphism, the even subalgebra of maximal dimension admitting such an operator with order one is A_F = C + H + M_3(C) (arXiv:0706.3688, section 4). This step is purely algebraic. Unimodular inner fluctuations then give the gauge bosons of the Standard Model.

**Unbroken symmetry.** D_F commutes with the nonscalar C_F = {(lambda, lambda, 0)}, which keeps the photon massless, and colour is unbroken (CCM 2007, section 2.6). Hence the finite triple is not a metric spectral triple in the sense of Latrémolière ([lemma 15](lemmas/15_propinquity_collapse.md)).

**Beyond first order** (arXiv:1304.7583; arXiv:1304.8050). Without order one, inner fluctuations acquire a quadratic term, D' = D + A + eps J A J^-1 + A_(2), which restores gauge invariance under U = u J u J^-1 and transitivity; they form a semigroup depending only on A. Dropping order one in the classification gives a Pati-Salam model, with the Standard Model recovered when the vacuum restores order one. Order zero is kept.

**Quanta of geometry** (arXiv:1409.2471). Using Clifford algebras C_kappa on n + 1 gamma matrices with {Gamma^A, Gamma^B} = 2 kappa delta^{AB}, for kappa = +-1, in dimension n = 4 one has C_+ = M_2(H) and C_- = M_4(C), matching the classification. Two maps Y_+- from M to S^4 of slashed form Y = Y^A Gamma_A enter a two-sided quantization condition, with volume form Omega_+ + Omega_-.

**Twisted triples and the grand symmetry** (Connes-Moscovici; Landi-Martinetti; Devastato-Lizzi-Martinetti). A larger algebra mixing gauge and spin degrees of freedom yields an extra scalar; twisting relaxes the commutator condition. We have not studied these.

## What truncation reaches

"Truncation" means compression to a fixed spectral window followed by generating an algebra, as in lemma 16. Every entry below is a statement about that procedure with its stated parent. None is a derivation from an ordinary Kaluza-Klein vacuum.

| structure | result here | scope and what is missing |
|---|---|---|
| noncommutative finite algebra | Example 16(b): M_2 + M_2 from the interval. Proposition 10.1: M_4 from CP^3 | algebra generation is an added operation |
| order zero with inherited pointwise reality | fails exactly when the algebra is noncommutative (Proposition 16.1) | a no-go for the standard correspondence only |
| order zero and order one, centre C, dim k^2 | Corollary 16.3 on the doubled parent | formal for any finite even representation (Remark 16.5); parent algebra restricted, J covers a flip |
| KO-6 signs | Corollary 16.4 by a Clifford point; Theorem 16.7 by two sheets | the Clifford point gives a reducible pair and fails orientability; the two sheets are an input |
| centre C + C, dim 2 k^2, J(x, y) = (y\*, x\*) | Corollary 16.8 | reached exactly, on a two-sheet parent |
| orientability | Corollary 16.8, when the gradings lie in the generated algebras | a condition checked case by case |
| A = M_2(H) + M_4(C), H = E (-) E\*, dim 32 | Example 16.9: real functions on S^4 and on CP^3 at twistor level one | grading of W needs a chosen axis; k = 4 is an input from S^4; fibre-rank mismatch of canonical section 4 persists |
| A_F = C + H + M_3(C) by order one | not reached | needs an off-diagonal D, which we do not have; then the algebraic selection applies |
| Yukawa block of D_F | Theorem C: Phi_Q Y_hat Phi_U on the interval | not embedded in the twistor example; the two realizations are separate |
| [D_F, C_F] = 0 | the interval and lemma 12 give commuting blocks; Proposition 17.3 | outside the metric class of lemma 15 |
| bosonic action | Propositions E and F; job 18 (T5b) | leading order; near-cutoff in progress |
| beyond first order | first-order failure of the two-point data with inherited J (Counterexample 08.4) is the setting for arXiv:1304.7583 | not computed; order-zero failure at higher level is untouched, since that framework keeps order zero |
| quanta of geometry | same five gammas as Proposition 10.1 | see below; no result yet |
| twisted triples, grand symmetry | none | untested |

**The twistor line and the quanta maps.** Proposition 10.1 reads Q(x_a) = 4 int x_a P_w = Gamma_a/5, a compression. In the other direction, the slash of the base coordinate is a projector: sum_a x_a Gamma_a = 2 (P_w + P_{jw}) - 1, the Bott projector of the quaternionic line through w, checked numerically here and standard. So Y = x_a Gamma_a with Y^2 = 1 of the quanta paper and the compression Q of lemma 10 are dual uses of one identity. The real algebra generated by Gamma_a is M_2(H) and by i Gamma_a is M_4(C), with real dimensions 16 and 32 (Python), so kappa = +-1 is one way to obtain both from S^4 alone. We have not related the quantization condition to truncation.

## Next steps, in order of size

1. **Inner fluctuations of the two-point data without order one.** With inherited J the compressed C + C satisfies order zero and fails order one. Compute the quadratic term of arXiv:1304.7583 and compare with the link image phi = m + i B of lemma 13. This is a small calculation.
2. **An off-diagonal D.** Find a term in a two-sheet parent coupling the sheets, with J D = D J. Without it, the classification's selection of A_F does not apply. This is the main missing structure.
3. **The grading of W.** Example 16.9 chooses an axis. Ask whether another mechanism supplies it, or whether the choice of axis has a meaning in the geometry.
4. **Metric refinement.** Ask which convergence notion suits truncated triples with unbroken symmetry, since the metric of lemma 15 excludes them.
