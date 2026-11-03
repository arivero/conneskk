# The current Connes et al. framework, and what truncation reaches

Background note for STRATEGY T0b. Written by Claude Opus 5.5 on 3 Nov 2026. Read from the arXiv LaTeX sources: Chamseddine-Connes, *Why the Standard Model* (arXiv:0706.3688, sections 2-5); Chamseddine-Connes-van Suijlekom, *Inner fluctuations without the first order condition* (arXiv:1304.7583, introduction); Chamseddine-Connes-Mukhanov, *Quanta of Geometry* (arXiv:1409.2471, in part); Chamseddine-Connes-Marcolli 2007 (arXiv:hep-th/0610241, section 2.6). The other papers are taken from [LITERATURE.md](LITERATURE.md), section I. The new statements are in [lemma 16](lemmas/16_coarse_truncation.md). Refereed by Terra 6.1 ([report](reviews/2026-11-03_terra_check_18_16b.md)); its corrections are incorporated.

The Connes-Lott layer reached by [lemma 05](lemmas/05_deconstruction_interval.md) has an algebra, a Hilbert space and an operator. The current framework adds a real structure, a grading with KO-signs, order conditions, a classification of the finite algebra, and fluctuations that may relax order one.

## The framework

**Real structure and KO-dimension.** Connes 2006 and Barrett 2007 reverse the grading on antiparticles, so that the finite space has KO-dimension 6 and metric dimension 0, with total KO-dimension 10 = 2 mod 8. In Euclidean signature the fermion action (1/2) <J xi, D xi> on the chiral subspace removes the doubling through the Pfaffian. Barrett's Lorentzian treatment removes the quadrupling through compatible reality and chirality conditions, which is a different argument.

**Classification of the pair (A, J)** (arXiv:0706.3688, sections 2-3). On a finite Hilbert space with an antiunitary J, J^2 = 1, seek involutive algebras with order zero [x, J y\* J^-1] = 0, a separating vector and irreducibility of (A, J). Then:

- the centre of the represented complex span A_C is C or C + C;
- centre C gives A_C = M_k(C) acting on itself by left multiplication, J x = x\*, dim H = k^2;
- centre C + C gives A_C = M_k(C) + M_k(C), acting on itself by left multiplication, J(x, y) = (y\*, x\*), dim H = 2 k^2;
- with centre C, the KO-6 relation J gamma = -gamma J is impossible for a grading compatible with the algebra (Remark 2.9 gives the intrinsic form E (+) E\*).

So KO-6 forces centre C + C: the finite space is disconnected, with two pieces exchanged by J.

**Real form and grading.** Chamseddine and Connes state as a hypothesis that the grading and the real form come from a right quaternionic, nontrivially graded vector space W. The smallest case is dim_H W = 2. With V a complex 4-space, A = End_H(W) + End_C(V) = M_2(H) + M_4(C), H = E (-) E\* with E = Hom_C(V, W), and dim H = 32 per generation. The grading is composition with that of W, gamma(xi, eta) = (gamma xi, -eta gamma), so A is a graded prealgebra, and its even part H + H + M_4(C) is the algebra relevant to a spectral triple.

**Order one.** One looks for Dirac operators connecting the two pieces, with [D, Z(A)] != 0. Up to automorphism, the even subalgebra of maximal dimension admitting such an operator with order one is A_F = C + H + M_3(C) (arXiv:0706.3688, section 4). This step is an algebraic selection under the hypotheses of that theorem, not a dynamical derivation of a vacuum. Unimodular inner fluctuations then give the gauge bosons of the Standard Model.

**Unbroken symmetry.** D_F commutes with the nonscalar C_F = {(lambda, lambda, 0)}, which keeps the photon massless, and colour is unbroken (CCM 2007, section 2.6). Hence the finite triple is not a metric spectral triple in the sense of Latrémolière ([lemma 15](lemmas/15_propinquity_collapse.md)).

**Beyond first order** (arXiv:1304.7583; arXiv:1304.8050). Without order one, inner fluctuations acquire a quadratic term, D' = D + A + eps J A J^-1 + A_(2), which restores gauge invariance under U = u J u J^-1 and transitivity; they form a semigroup depending only on A. Dropping order one in the classification gives a Pati-Salam model. That paper discusses a vacuum selecting the Standard Model subalgebra, checked with a restricted Hessian; this is model- and vacuum-dependent, and determining all vacua is left open. Order zero is kept.

**Quanta of geometry** (arXiv:1409.2471). Using Clifford algebras C_kappa on n + 1 gamma matrices with {Gamma^A, Gamma^B} = 2 kappa delta^{AB}, for kappa = +-1, in dimension n = 4 one has C_+ = M_2(H) and C_- = M_4(C), matching the classification. Two maps Y_+- from M to S^4 of slashed form Y = Y^A Gamma_A enter a two-sided quantization condition, with volume form Omega_+ + Omega_-. This is a quantization condition, not a truncation result.

**Twisted triples and the grand symmetry** (Connes-Moscovici; Landi-Martinetti; Devastato-Lizzi-Martinetti). A larger algebra mixing gauge and spin degrees of freedom yields an extra scalar; twisting relaxes the commutator condition. We have not studied these.

## What truncation reaches

"Truncation" means compression to a fixed spectral window followed by generating an algebra, as in lemma 16. Every entry below is a statement about that procedure with its stated parent. None is a derivation from an ordinary Kaluza-Klein vacuum.

| structure | result here | scope and what is missing |
|---|---|---|
| noncommutative finite algebra | Example 16(b): M_2 + M_2 from the interval. Proposition 10.1: M_4 from CP^3 | algebra generation is an added operation |
| order zero with inherited pointwise reality | fails exactly when the algebra is noncommutative (Proposition 16.1) | a no-go for the standard correspondence only |
| order zero and order one, dim k^2 | Corollary 16.3 on the doubled parent | formal for any finite even representation (Remark 16.5); parent algebra restricted, J covers a flip; centre C only when A_F is simple |
| KO-6 signs | Corollary 16.4 by a Clifford point; Theorem 16.7 by two sheets | the Clifford point gives a reducible pair and fails orientability; the two sheets are an input |
| centre C + C, dim 2 k^2, J(x, y) = (y\*, x\*) | Corollary 16.8 | reached exactly on a two-sheet parent, for equal dimensions and full matrix algebras; other generated algebras can have larger centres and reducible pairs |
| orientability | Corollary 16.8, when the gradings lie in the even represented algebras | real zero-dimensional relation with algebra and opposite coefficients; checked case by case |
| A = M_2(H) + M_4(C), H = E (-) E\*, dim 32 | Example 16.9: real functions on S^4 and on CP^3 at twistor level one | real generated algebras and the abstract bimodule are reached; the second sheet, the base-function restriction and the window are inputs; the grading of W is added after truncation, so A is a graded prealgebra and this is not an even truncation of the stated parent; fibre-rank mismatch of canonical section 4 persists |
| A_F = C + H + M_3(C) by order one | not reached | needs a centre-connecting D with order one under the maximal-subalgebra hypothesis of the theorem; we have no such D |
| Yukawa block of D_F | Theorem C: Phi_Q Y_hat Phi_U on the interval, in a towerless limit | up to grading-preserving unitaries; an algebra and representation must be specified; not embedded in the twistor example |
| [D_F, C_F] = 0 | Proposition 17.3 gives its consequence when a chosen subalgebra commutes with D_F | the common action on paired blocks is additional data; outside the metric class of lemma 15 |
| bosonic action | Propositions E and F at leading order; lemma 18 exact at quadratic order and fixed cutoff | classical; top-only family has M_W -> 0 as m_t -> infinity; fully massive family has diverging pole masses and no light fermions |
| beyond first order | first-order failure of the two-point data with inherited J (Counterexample 08.4) is the setting for arXiv:1304.7583 | not computed; order-zero failure at higher level is untouched, since that framework keeps order zero |
| quanta of geometry | same five gammas as Proposition 10.1 | see below; no result yet |
| twisted triples, grand symmetry | none | untested |

**The twistor line and the quanta maps.** Proposition 10.1 reads Q(x_a) = 4 int x_a P_w = Gamma_a/5, a compression. In the other direction, the slash of the base coordinate is a projector: sum_a x_a Gamma_a = 2 (P_w + P_{jw}) - 1, the Bott projector of the quaternionic line through w, checked numerically here and standard. So Y = x_a Gamma_a with Y^2 = 1 of the quanta paper and the compression Q of lemma 10 use one algebraic identity, Pi = P_w + P_{jw} = (1 + x_a Gamma_a)/2. This does not derive the two-sided quantization condition from truncation. The real algebra generated by Gamma_a is M_2(H) and by i Gamma_a is M_4(C), with real dimensions 16 and 32 (Python), so kappa = +-1 is one way to obtain both from S^4 alone. We have not related the quantization condition to truncation.

## Next steps, in order of size

1. **Inner fluctuations of the two-point data without order one.** With inherited J the compressed C + C satisfies order zero and fails order one. Compute the quadratic term of arXiv:1304.7583 and compare with the link image phi = m + i B of lemma 13. This is a small calculation.
2. **A centre-connecting D.** Find a term in a two-sheet parent coupling the sheets, with J D = D J and order one. Without it, the classification's selection of A_F does not apply. This is the main missing structure.
3. **The grading of W and nonzero d.** Example 16.9 adds both after truncation. An even parent cannot give a grading that anticommutes with compressed functions, so a different parent or a different window is needed, or a reason why the prealgebra rather than the even algebra is compressed.
4. **Metric refinement.** Ask which convergence notion suits truncated triples with unbroken symmetry, since the metric of lemma 15 excludes them.
