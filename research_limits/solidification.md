# Heavy-mass limits, boundary geometry and the M-theory connection

*This file is historical record, the ground the project started from (before 3 November 2026). Its claims are carried in `ledger.pl` as corpus rows, 62 of the 84 without an outside checker. Where a lemma in `lemmas/` corrects or supersedes a statement here, the lemma governs. No result of the papers rests on this file (`reviews/2026-11-04_unchecked_claims_audit.md`). A full reading, to carry forward the ideas that remain open, is in progress (4 November 2026, `CORPUS_SALVAGE.md`).*

Derivation appendix (second stage) to [../canonical_research.md](../canonical_research.md), read with [research_note.md](research_note.md). Results labelled as calculations are elementary derivations or explicit matrix checks; they claim no priority. One Terra agent checked them, sequentially.

## 1. What a theory of limits must retain

A useful limit of almost-commutative geometries must specify more than a limiting algebra. We propose recording four kinds of convergence separately:

1. Spectral counting or heat-trace convergence, including the energy window and normalization.
2. The represented algebra, opposite action and retained Hilbert module, with a controlled resolvent limit.
3. Reality, grading, and the relevant real K-homology or correspondence class.
4. The gauge lift, scalar fluctuation family, fermion representations and gauge kinetic form.

Metric collapse, removal of massive states, restoration of gauge symmetry and passage to a boundary are distinct operations. They can coexist, but one does not establish the others.

For example, on the two-point triple with algebra C direct-sum C and off-diagonal Dirac entry m, the spectral distance is 1/|m|. Sending |m| to infinity collapses the metric distance; sending m to zero separates the points to infinite distance. Neither operation creates a continuum dimension. Moreover, the large-m operator has no light kernel, even though the metric quotient has one point. A metric limit and a fermion limit therefore require separate data even in this example.

Every fixed finite internal Hilbert space has ultraviolet spectral dimension zero. The product with four-dimensional spacetime still has ultraviolet spectral dimension four. A dimension-growing family needs an unbounded number of modes and a controlled Weyl or heat window, as in the explicit finite matrix example in the first-stage note. Its KO-degree six does not itself establish six metric dimensions, orientability or a physical chiral spectrum.

## 2. A stronger product collapse lemma

Let T and S be finite self-adjoint matrices, P the projection onto ker T, and suppose the nonzero spectrum of T is separated from zero. Let D_M be a self-adjoint spin Dirac operator with grading gamma_M satisfying gamma_M^2=1 and {D_M,gamma_M}=0. Consider

\[
D_t=D_M\otimes1+\gamma_M\otimes(tT+S).
\]

Unlike the simpler proof in the first-stage note, P need not reduce S. Finite-dimensional spectral perturbation gives a unitary W_t=1+O(t^{-1}) which maps P onto the low spectral subspace of tT+S. After this identification, the finite operator is block diagonal with light block PSP+O(t^{-1}) and a heavy block whose absolute eigenvalues grow at least linearly in t.

Because

\[
D_t^2=D_M^2\otimes1+1\otimes(tT+S)^2,
\]

high spacetime eigenvalues cannot cancel the internal heavy mass. The heavy-sector resolvent at i tends to zero in operator norm, while the light resolvent converges to that of D_M+gamma_M PSP. Thus one obtains an embedded norm-resolvent limit, including bounded light-heavy mixing. If the finite real and grading relations hold throughout, the low spectral projections preserve them. This argument does not apply to an arbitrary unbounded sum D_0+tT lacking the product anticommutation.

For fixed a,

\[
\sup_{t\gg1}\|[tT+S,\rho(a)]\|<\infty
\quad\Longleftrightarrow\quad [T,\rho(a)]=0.
\]

The algebra retained by this criterion is therefore

\[
A_T=A\cap\{T\}',
\qquad H_T=\ker T,
\qquad D_{F,T}=PSP.
\]

One quotients A_T by the kernel of its action on H_T if necessary. Since P commutes with A_T, its compression is multiplicative. Generic compression of A is not. The symmetry condition for gauge bosons must separately use the lifted gauge representation U(u)=rho(u)Jrho(u)J^{-1}; algebra commutants and gauge stabilizers are not interchangeable without checking.

### Different growth rates yield different limits

For a finite self-adjoint block family

\[
F_t=\begin{pmatrix}A&t^\alpha B\\t^\alpha B^*&tC+E\end{pmatrix},
\qquad 0<\alpha<1,\quad C=C^*\text{ invertible},
\]

the Schur complement at bounded spectral parameter z is

\[
A-z-t^{2\alpha-1}BC^{-1}B^*+O(t^{2\alpha-2}).
\]

For alpha<1/2 the surviving mass operator is A; for alpha=1/2 it is A-BC^{-1}B*. For alpha>1/2 a further divergent scale generally appears. If C is indefinite, cancellations can occur, so there is no unconditional additional-kernel formula in the last regime.

Writing F_t=tT+t^alpha V+S, bounded commutators for fixed a require both [T,a]=0 and [V,a]=0. Retaining a finite seesaw mass by scaling a Dirac coupling like the square root of the heavy Majorana mass can therefore shrink the retained algebra further. It is not automatically the same algebraic limit as a bounded Dirac coupling.

A Python check (research_checks_knowledge.md, section 2.6) confirms the exact two-by-two light eigenvalue

\[
\lambda_-(t)=-\frac{2t^{2\alpha}}{t+\sqrt{t^2+4t^{2\alpha}}},
\]

including its finite limit -1 at alpha=1/2. This small spectral example is not by itself a real graded triple.

## 3. The scalar matching condition follows from a heavy Majorana direction

Use the first-stage module

\[
H_F=\operatorname{Hom}_{\mathbb C}(E,F)\oplus\operatorname{Hom}_{\mathbb C}(F,E),
\quad E=\mathbb H^2,\quad F=\mathbb C^4,
\]

with rho(a,b)(xi,eta)=(b xi,a eta), J(xi,eta)=(eta*,xi*), and grading (-xi Gamma,Gamma eta). The graded parent algebra is

\[
A_{\mathrm{PS}}=\mathbb H_R\oplus\mathbb H_L\oplus M_4(\mathbb C).
\]

Choose unit vectors e in the right-handed quaternionic summand of E and f in F. Let xi_0=|f><e| be the corresponding right-neutrino matrix unit and put

\[
T_R=|\xi_0\rangle\langle J\xi_0|+|J\xi_0\rangle\langle\xi_0|.
\]

This operator is self-adjoint, J-real and odd. Commutation with rho(a,b), including the adjoint conditions, requires a and b to preserve the selected lines and act there by the same complex scalar lambda. Explicitly,

\[
a=\operatorname{diag}(\lambda,\bar\lambda,q_L),
\qquad b=\operatorname{diag}(\lambda,m_3).
\]

Consequently

\[
A_{\mathrm{PS}}\cap\{T_R\}'
=\mathbb C\oplus\mathbb H\oplus M_3(\mathbb C)=A_{\mathrm{SM}}.
\]

The equality of the scalar actions is thus a consequence of the selected heavy operator, rather than a separately imposed matching condition. Choosing that operator and explaining its vacuum remain additional physical inputs.

There is a specific axiom limitation: T_R violates first order for the full parent algebra. Taking the central projection e_F=(0,0,I_4), the double commutator [[T_R,rho(e_F)],e_F^op] is nonzero; its Frobenius norm in our normalization is sqrt(2). The appropriate parent is therefore the first-order-relaxed spectral Pati–Salam framework, not an ordinary first-order triple with this operator. Such a framework is developed by Chamseddine, Connes and van Suijlekom [1]. On the retained algebra T_R commutes with every element, and the separately chosen bounded Standard Model Yukawa operator satisfies first order as checked in the first-stage calculation.

Taking the Majorana coefficient to infinity removes the right-neutrino/antineutrino pair. The finite Hilbert dimension falls from 32 to 30. A bounded neutrino Dirac coupling mixes the light and heavy sectors but is covered by the product lemma; its seesaw mass tends to zero. Scaling that coupling instead requires the multiscale analysis above.

## 4. The electromagnetic algebra is the next centralizer

Inside A_SM choose T_u to pair the right and left up-type quark states in a fixed neutral Higgs direction, equally for all three colors, together with the J-conjugate blocks. Its rank is twelve and its support is disjoint from T_R. For a single-generation model this is the heavy up-type block; it can be embedded as the physical top block in a multi-generation model.

The further commutation condition forces

\[
q_L=\operatorname{diag}(\lambda,\bar\lambda),
\qquad
A_{\mathrm{SM}}\cap\{T_u\}'=\mathbb C\oplus M_3(\mathbb C).
\]

With the original unimodular gauge lift retained, the chain is

\[
SU(2)_R\times SU(2)_L\times SU(4)
\longrightarrow SU(3)\times SU(2)_L\times U(1)_Y
\longrightarrow SU(3)\times U(1)_{\rm em},
\]

up to finite central quotients. Direct matrix checks give:

| Quantity | Parent | After heavy Majorana | After heavy up-type block |
|---|---:|---:|---:|
| Real algebra dimension | 40 | 24 | 20 |
| Connected gauge Lie algebra dimension | 21 | 12 | 9 |
| Strict light finite Hilbert dimension, one generation | 32 | 30 | 18 |

These are algebra, gauge and matter dimensions, not spacetime dimensions. The final eighteen states include a vectorlike down-quark/electron sector and a neutral left neutrino with its conjugate; the heavy up-type sector has been removed. The retained algebra still acts faithfully. Because both kernel projections commute with J and the grading, the finite KO-six sign relations are inherited: this mass projection does not turn finite KO-degree six into five. Together with four-dimensional spacetime the total KO-degree remains 4+6=10 modulo eight, even though the gauge algebra has shrunk. A genuine geometric or Clifford-degree change requires a further operation and its own comparison map.

### The electron coupling and the meaning of the heavy-weak limit

For b=diag(lambda,m_3) and lambda det(m_3)=1, parameterize lambda=exp(-i beta/2) and m_3=exp(i beta/6)s with s in SU(3). Both electron chiralities transform as lambda^2=exp(-i beta). Their electromagnetic charge is -1 and the photon couples to the vector current, with no axial electromagnetic charge.

A classical Higgs limit v→infinity at fixed finite g,g' gives m_W=gv/2 and m_Z=sqrt(g^2+g'^2)v/2. To keep m_e fixed, take y_e=sqrt(2)m_e/v. Keeping an up-type Yukawa nonzero supplies the divergent block just used. The photon coupling is e=gg'/sqrt(g^2+g'^2) after canonical kinetic normalization. The centralizer calculation establishes the charges and residual symmetry; it does not calculate the gauge kinetic normalization, heavy-threshold corrections or a controlled ultraviolet completion of this infinite-v limit.

Dropping all colored states can leave leptonic QED. Restoring unbroken electroweak symmetry with leptons alone instead has uncanceled gauge anomalies. Sending v to zero at fixed Yukawa data must retain the Higgs fluctuation family even if the vacuum mass operator vanishes.

### Unimodularity must be inherited

On the original 32-dimensional representation, det rho=(lambda det m_3)^4. Removing the neutral Majorana pair changes this to lambda^2(det m_3)^4. Reimposing a fresh determinant-one rule after this projection would therefore give a different hypercharge constraint. The numerical Lie algebra traces change from coefficients (4,12) to (2,12) for the lambda phase and common color phase.

This is not an ambiguity in restricting an already specified gauge theory: its gauge lift is inherited from the parent. It is a warning that the reduced algebra and Hilbert space alone do not determine the same physical limit if one redefines unimodularity from scratch.

## 5. A canonical seven-to-six change of KO-degree

For a compact spin seven-manifold Z with boundary X, the real K-homology boundary map gives

\[
\partial:KO_7(Z,X)\longrightarrow KO_6(X),
\qquad \partial[D_Z]=[D_X],
\]

with the boundary orientation fixed by the normal convention. The normal Clifford action supplies the even boundary grading. This is a canonical reason for a six-dimensional even Dirac geometry to occur on the boundary of a seven-dimensional bulk. It is not the same operation as an adiabatic circle collapse. Relative spectral triples provide an existing noncommutative framework for this boundary construction, with additional analytic hypotheses [2].

The class [D_X] need not vanish over X; its pushforward to Z does vanish. Also KO_6(point)=0, so a complex line-twisted integer index below must not be called a nonzero untwisted real KO-six index.

There is a concrete filling of the twistor candidate:

\[
Z=D(\Lambda_-^2T^*S^4),\qquad
\partial Z=S(\Lambda_-^2T^*S^4)\simeq\mathbb{CP}^3.
\]

Orientation convention can interchange self-dual and anti-self-dual bundles. This disk bundle is spin and retracts onto S4, so H2(Z;Z)=0. A twistor CP1 fibre bounds a D3 fibre. Hence the line class h in H2(CP3;Z), normalized by integral_CP1 h=1, does not extend over this filling.

The spin Dirac index twisted by O(k) is an explicit further test. From c1(T CP3)=4h, p1(T CP3)=4h^2 and integral_CP3 h^3=1,

\[
\operatorname{ind}_{\mathbb C}D_{\mathcal O(k)}
=\int_{\mathbb{CP}^3}e^{kh}\left(1-\frac{h^2}{6}\right)
=\frac{k^3-k}{6}.
\]

Since the spin bundle is Lambda^{0,*} tensor O(-2), the four-dimensional holomorphic quantization space H0(CP3,O(1)) is realized in this Kähler description by the spin Dirac operator twisted with O(3), whose index is four. That twist cannot extend over any spin filling having CP3 as its sole boundary: an extending twist would have zero boundary index by bordism invariance. For the explicit disk bundle, even O(1), whose index happens to vanish, cannot extend because H2(Z;Z)=0.

Thus a nonzero chiral index carried by this selected boundary sector needs nonextending gauge data, a defect, another boundary component or another changed hypothesis. Boundary K-homology alone does not provide anomaly inflow; a bulk action and its variation are additional data.

## 6. What M-theory supplies, and what it does not

Hořava–Witten theory has an eleven-dimensional bulk on an interval and ten-dimensional boundary gauge multiplets with chiral fermions. Anomaly cancellation fixes E8 on each boundary component and relates its gauge coupling to the gravitational coupling [3]. This supplies an explicit mechanism outside the assumptions of a smooth closed eleven-dimensional Dirac compactification. The chirality obstruction alone does not select M-theory uniquely.

A more specific connection uses the same underlying CP3 as the twistor proposal. The Bryant–Salamon seven-manifold Lambda_-^2 T*S4 has G2 holonomy and is asymptotic to a cone over CP3; shrinking its zero section gives the singular cone [4]. The cone link has the strict nearly Kähler metric, not the Fubini–Study Kähler structure used for the holomorphic quantization calculation. Its natural SU(3) almost-complex structure has c1=0, whereas the projective complex structure has c1=4h. Spin topology and the index formula survive this distinction, but equality of selected Dirac kernels does not follow.

In the conical construction, M4 times the six-dimensional link is ten-dimensional, but the chiral matter is localized at the four-dimensional apex locus. It is not automatically a ten-dimensional matter theory propagating on that regulating link. Hořava–Witten boundary matter and conical defect matter are two different mechanisms.

For the CP3 cone, suppose a U(1) two-form mode on the punctured bulk restricts to the primitive integral generator w on the link. Witten's local inflow equations then give

\[
\sum_\sigma q_\sigma^3=\int_{\mathbb{CP}^3}w^3=1,
\qquad
\sum_\sigma q_\sigma=\frac14\int_{\mathbb{CP}^3}w\,p_1=1.
\]

They are consistent with one charge-one chiral multiplet, without uniquely determining a spectrum. The bulk three-form and its Chern–Simons and gravitational couplings provide inflow. Nonabelian groups need further singularity structure [5]. The existence of the link class alone does not establish that it is the restriction of a global, normalizable gauge mode. For a restriction k times w, the two moments become k^3 and k.

Our comparison gives a direct obstruction to identifying this single cone with an entire Standard Model generation under hypercharge. In the all-left-handed convention, the integer-normalized charges q=6Y are six copies of 1, three of -4, three of 2, two of -3, one of 6, and optionally one of 0. They obey

\[
\sum q=\sum q^3=0,
\]

not the cone's pair (1,1). The local cone could represent a sector in a larger construction; the simplest identification with the whole Standard Model fails this test.

There is also a gauge normalizability issue. A pulled-back link two-form has norm squared proportional to r^{-4}, whereas cone volume grows as r^6 dr. Its gauge kinetic integral therefore behaves as integral r^2 dr and diverges at infinity. The isolated noncompact model has a background/global U(1); a dynamical four-dimensional gauge field requires an appropriate compact embedding or other normalizable realization. This calculation concerns the two-form gauge mode, not the distinct normalizable scalar deformation of the resolved geometry.

## 7. An actual CP3-to-S5 quotient, with defects retained

Atiyah and Witten use the circle action

\[
[n_1:n_2:m_1:m_2]\mapsto
[e^{i\theta}n_1:e^{i\theta}n_2:e^{-i\theta}m_1:e^{-i\theta}m_2]
\]

and show CP3/U(1) is S5. The action lies in Sp(2) and fixes two CP1 submanifolds. The resolved seven-manifold quotient is R6, with fixed locus S2 times R interpreted as a D6-brane locus in type IIA [6]. This is compatible with chi(CP3)=4: a free circle action is impossible, but this action is not free.

Here are further checks of what that result means for our proposal. The circle is rotation in an R2 summand of the base R5=R2 plus R3. Its connected centralizer in SO(5), divided by the circle, is SO(3). Thus the connected symmetry directly inherited from the nearly Kähler/G2 geometry has dimension three, not nine. The fact that a round S5 admits U(3) does not promote this particular quotient metric and defect configuration to an SU3 times U1 gauge construction.

The quotient metric is also singular even though the quotient is a manifold. Near either fixed CP1, the effective circle acts on the normal C2 by the Hopf action. The leading normal-slice quotient metric is

\[
dr^2+\frac{r^2}{4}g_{S^2,\mathrm{unit}},
\]

which has a conical singularity at zero. The actual curved quotient also has higher-order corrections; the displayed expression is the normal tangent-cone model, not its complete metric. The weights written as (2,2) come from the ineffective projective parametrization; the common Z2 kernel must be removed before counting brane multiplicity.

The dimensions organize into a commuting bulk/link diagram:

| | Before circle reduction | After circle reduction |
|---|---|---|
| Bulk | M4 times Z7: dimension 11 | M4 times (Z7/U1): dimension 10, with type IIA defect data |
| Fixed-radius link | M4 times CP3: dimension 10 | M4 times S5: dimension 9, with fixed-stratum data |

The lower 10→9 quotient is the boundary restriction of the upper 11→10 reduction. It is not a second independent compactification, nor does this square identify either quotient with the Standard Model heavy-weak limit. A global asymptotically conical circle is also not a uniform-radius compactification; the local circle size and the type IIA fields vary.

The known local CP3-cone scalar multiplet is one complex field, not an established weak doublet [6]. Our first-stage quaternionic tangent representation Hom_H(L,L-perp) does have the Higgs representation. Identifying it with a physical, normalizable scalar mode requires an additional construction; a geometric representation is insufficient.

## 8. A sharper research proposal

The most specific proposal now supported by these calculations is to seek the Connes finite geometry as an effective geometry of a chiral boundary or defect sector of a seven-dimensional internal bulk. Its six-dimensional link would provide the real Clifford degree and twistor data; a suitable correspondence or mode selection would have to produce the independent quaternionic and complex actions. Heavy Majorana and Higgs directions would then implement the centralizer reductions already computed.

What is already established here is the finite algebra chain, its gauge stabilizers, the product/multiscale limits, the index and extension obstructions, and the distinction between the actual circle quotient and a hypothetical round S5 gauge compactification. The external results provide known boundary, G2 and inflow mechanisms. They do not yet form a single Standard Model construction.

The unresolved checks are precise: derive the full real bimodule and its protected fermion spectrum; obtain a physical Higgs fluctuation, potential and couplings; choose anomaly-consistent compact/global data; match the gauge kinetic terms; and prove that the chosen heavy/restoring Higgs parameters correspond to the proposed geometrical limits. A literal smooth 9→10→11 manifold family with the required gauge and matter content has not been constructed.

## Verification and references

The first-stage finite triple, heat-trace and twistor checks are recorded in [../research_checks_knowledge.md](../research_checks_knowledge.md), section 1. Section 2 there records the checks of the centralizer and lifted gauge dimensions, J/grading relations, the parent first-order failure, the unimodularity trace change, the rational CP3 index and anomaly arithmetic, and the seesaw eigenvalues. These checks support the finite calculations; they are not numerical evidence for a continuum Standard Model vacuum.

1. A. H. Chamseddine, A. Connes and W. D. van Suijlekom, *Beyond the Spectral Standard Model: Emergence of Pati–Salam Unification*. https://arxiv.org/abs/1304.8050
2. I. Forsyth, M. Goffeng, B. Mesland and A. Rennie, *Boundaries, spectral triples and K-homology*. https://arxiv.org/abs/1607.07143
3. P. Hořava and E. Witten, *Eleven-Dimensional Supergravity on a Manifold with Boundary*. https://arxiv.org/abs/hep-th/9603142
4. S. Karigiannis and J. D. Lotay, *Bryant–Salamon G2 manifolds and coassociative fibrations*. https://arxiv.org/abs/2002.06444
5. E. Witten, *Anomaly Cancellation on G2-Manifolds*. https://arxiv.org/abs/hep-th/0108165
6. M. Atiyah and E. Witten, *M-Theory Dynamics on a Manifold of G2 Holonomy*, especially sections 2 and 3.3. https://arxiv.org/abs/hep-th/0107177
