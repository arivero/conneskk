# The current Connes et al. framework, and what truncation reaches

Background note for STRATEGY T0b. Written by Claude Opus 5.5 on 3 Nov 2026. Read from the arXiv LaTeX sources: Chamseddine-Connes, *Why the Standard Model* (arXiv:0706.3688, sections 2-5); Chamseddine-Connes-van Suijlekom, *Inner fluctuations without the first order condition* (arXiv:1304.7583, introduction); Chamseddine-Connes-Mukhanov, *Quanta of Geometry* (arXiv:1409.2471, in part); Chamseddine-Connes-Marcolli 2007 (arXiv:hep-th/0610241, section 2.6). The other papers are taken from [paper/LITERATURE.md](paper/LITERATURE.md), section I. The new statements are in [lemma 16](lemmas/16_coarse_truncation.md).

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

**Order one.** One looks for Dirac operators connecting the two pieces, with [D, Z(A)] != 0. Up to automorphism, the even subalgebra of maximal dimension admitting such an operator with order one is A_F = C + H + M_3(C) (arXiv:0706.3688, section 4). This step is an algebraic selection under the hypotheses of that theorem; a vacuum would have to be derived dynamically. Unimodular inner fluctuations then give the gauge bosons of the Standard Model.

**Unbroken symmetry.** D_F commutes with the nonscalar C_F = {(lambda, lambda, 0)}, which keeps the photon massless, and colour is unbroken (CCM 2007, section 2.6). Hence the finite triple is not a metric spectral triple in the sense of Latrémolière ([lemma 15](lemmas/15_propinquity_collapse.md)).

**Beyond first order** (arXiv:1304.7583; arXiv:1304.8050). Without order one, inner fluctuations acquire a quadratic term, D' = D + A + eps J A J^-1 + A_(2), which restores gauge invariance under U = u J u J^-1 and transitivity; they form a semigroup depending only on A. Dropping order one in the classification gives a Pati-Salam model. That paper discusses a vacuum selecting the Standard Model subalgebra, checked with a restricted Hessian; this is model- and vacuum-dependent, and determining all vacua is left open. Order zero is kept.

**Quanta of geometry** (arXiv:1409.2471). Using Clifford algebras C_kappa on n + 1 gamma matrices with {Gamma^A, Gamma^B} = 2 kappa delta^{AB}, for kappa = +-1, in dimension n = 4 one has C_+ = M_2(H) and C_- = M_4(C), matching the classification. Two maps Y_+- from M to S^4 of slashed form Y = Y^A Gamma_A enter a two-sided quantization condition, with volume form Omega_+ + Omega_-. This is a quantization condition with two maps; truncation plays no part in it.

**Twisted triples and the grand symmetry** (Connes-Moscovici; Landi-Martinetti; Devastato-Lizzi-Martinetti). A larger algebra mixing gauge and spin degrees of freedom yields an extra scalar; twisting relaxes the commutator condition. We have not studied these.

## What truncation reaches

"Truncation" means compression to a fixed spectral window followed by generating an algebra, as in lemma 16. Every entry below is a statement about that procedure with its stated parent. None is a derivation from an ordinary Kaluza-Klein vacuum.

| structure | result here | scope and what is missing |
|---|---|---|
| noncommutative finite algebra | Example 16(b): M_2 + M_2 from the interval. Proposition 10.1: M_4 from CP^3 | compression is standard; generation is an added operation, and Connes-van Suijlekom note that the result is in many examples a noninformative full matrix algebra; the information lies in the symmetries of the window |
| order zero with inherited pointwise reality | fails exactly when the algebra is noncommutative (Proposition 16.1) | a no-go for the standard correspondence only |
| order zero and order one, dim k^2 | Corollary 16.3 on the doubled parent | formal for any finite even representation (Remark 16.5); parent algebra restricted, J covers a flip; centre C only when A_F is simple |
| KO-6 signs | Corollary 16.4 by a Clifford point; Theorem 16.7 by two sheets | the Clifford point gives a reducible pair and fails orientability; the two sheets are an input |
| centre C + C, dim 2 k^2, J(x, y) = (y\*, x\*) | Corollary 16.8 | reached exactly on a two-sheet parent, for equal dimensions and full matrix algebras; other generated algebras can have larger centres and reducible pairs |
| orientability | Corollary 16.8, when the gradings lie in the even represented algebras | real zero-dimensional relation with algebra and opposite coefficients; checked case by case |
| A = M_2(H) + M_4(C), H = E (-) E\*, dim 32 | Example 16.9: real functions on S^4 and on CP^3 at twistor level one | real generated algebras and the abstract bimodule are reached; the second sheet, the base-function restriction and the window are inputs; the grading of W is added after truncation, so A is a graded prealgebra and this is not an even truncation of the stated parent; fibre-rank mismatch of canonical section 4 persists |
| A_F = C + H + M_3(C) by order one | lemma 20, Theorems 2 and 5: a rank-one block, realized on an interval parent with a wall coupling | the Hom fibres, constant matrix multipliers, grading, coupled channel and nonzero coupling are inputs; derivation from the twistor parent of Example 16.9 not reached |
| Yukawa block of D_F | Theorem C: Phi_Q Y_hat Phi_U on the interval, in a towerless limit | up to grading-preserving unitaries; an algebra and representation must be specified; not embedded in the twistor example |
| [D_F, C_F] = 0 | Proposition 17.3 gives its consequence when a chosen subalgebra commutes with D_F | the common action on paired blocks is additional data; outside the metric class of lemma 15 |
| bosonic action | Propositions E and F at leading order; lemma 18 exact at quadratic order and fixed cutoff | classical; top-only family has M_W -> 0 as m_t -> infinity; fully massive family has diverging pole masses and no light fermions |
| beyond first order | [lemma 19](lemmas/19_fluctuations_without_order_one.md): on the two-point data the fluctuation factorizes, m abs(Phi)^2 sigma_1 with inherited J (neutral radial parameter) and link m Phi^2 with the reflection J (charge 2); the quadratic term keeps the modulus fixed along a gauge orbit | a parallel with the covariant projection, no identification; order-zero failure at higher level is untouched, since that framework keeps order zero |
| quanta of geometry | same five gammas as Proposition 10.1 | see below; no result yet |
| twisted triples, grand symmetry | none | untested |

**The twistor line and the quanta maps.** Proposition 10.1 reads Q(x_a) = 4 int x_a P_w = Gamma_a/5, a compression. In the other direction, the slash of the base coordinate is a projector: sum_a x_a Gamma_a = 2 (P_w + P_{jw}) - 1, the Bott projector of the quaternionic line through w, checked numerically here and standard. So Y = x_a Gamma_a with Y^2 = 1 of the quanta paper and the compression Q of lemma 10 use one algebraic identity, Pi = P_w + P_{jw} = (1 + x_a Gamma_a)/2. This does not derive the two-sided quantization condition from truncation. The real algebra generated by Gamma_a is M_2(H) and by i Gamma_a is M_4(C), with real dimensions 16 and 32 (Python), so kappa = +-1 is one way to obtain both from S^4 alone. We have not related the quantization condition to truncation.

## Next steps, in order of size

1. **Inner fluctuations of the two-point data without order one.** Done in lemma 19. An exact statement relating a fluctuated parent to its truncation, on gauge orbits and in the matrix case, is in lemma 22 (Theorem 22.5, Corollary 22.6). Next: the nonunitary part of the fluctuations.
2. **A centre-connecting D.** Done in lemma 20 for a parent with chosen fibres. Next: an interface on the twistor parent, with its trace spaces, coupling, real structure, grading and coupled window; and lemma 22 now gives one parent with both the connector and the Yukawa block, in one wall coupling. Lemma 20 also proposes reading the connector as a marked pair of points. This is now the main missing structure.
3. **The grading of W and nonzero d.** Example 16.9 adds both after truncation. An even parent cannot give a grading that anticommutes with compressed functions, so a different parent or a different window is needed, or a reason why the prealgebra rather than the even algebra is compressed. Lemma 23 answers this for a matrix-valued parent: the prealgebra is the bulk algebra, the window of aligned walls sees its even part, and the grading is a boundary condition. Lemma 24 shows the difference with a commutative parent: direct compression of scalar functions gives R + R on the S^4 factor. Lemma 20 gives another option: the compressed height function 5 Q(p . x) at a marked point p as added finite data, after restricting to its even algebra; this does not derive the grading.
4. **Metric refinement.** Ask which convergence notion suits truncated triples with unbroken symmetry, since the metric of lemma 15 excludes them.
