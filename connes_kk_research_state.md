# Connes–Kaluza–Klein research: consolidated state

**Research state:** 2 November 2026  
**Purpose:** one canonical account of the nine-, ten- and eleven-dimensional geometric, electroweak and spectral questions. Section 9 organizes the conclusions by dimension; preceding sections contain assumptions, calculations and tests.

## 1. Scope and evidence

The question is whether an ordinary higher-dimensional compactification can have an intermediate six-dimensional internal geometry with a controlled reduction that produces the relevant finite noncommutative geometry, while also accounting for electroweak normalization and the Fermi scale. Here “KK” means Kaluza–Klein except where “Kasparov KK-theory” is explicitly stated.

The parallel Sol and Astra discussions were recoverable as indexed summaries, not as complete transcripts. Results from those discussions are marked **reported** unless independently checked below. The user-provided digest, the actual [Connes electrodynamics document](https://chatgpt.com/library?file_id=libfile_024d1da3ff248191aa178f70546bb1e9&account_id=personal), and the earlier ten-dimensional interface drafts were consulted. In particular, the later [interface action no-go draft](https://chatgpt.com/library?file_id=libfile_fe52abe48bc88191a7474a20362dc73e&account_id=personal) already corrected a finite-\(G_F\) claim in an earlier draft. No claim of a complete conversation reconstruction is made.

The subsequent parallel-thread handoff proposes the Aloff–Wallach geometry, the torus/Weyl quotient, and the \(S^5\) endpoint. Sections 2, 5–7 integrate independent checks of those proposals. In particular, the \(F_3\) and \(\mathbb{CP}^2\times\mathbb{CP}^1\) candidates are kept separate. New calculations are identified as such without a claim of novelty over the literature.

“Proved” below means proved under the stated mathematical assumptions in this document; it is not a claim that a physical compactification satisfying those assumptions exists. “Computationally verified” means checked independently with finite matrices or numerical quadrature, and is secondary to the displayed derivation. All coupling comparisons are at a common matching scale and in the convention

\[
  D_\mu=\partial_\mu-i g_2 W_\mu^aT_a-i g_YB_\mu Y,\qquad
  Q=T_3+Y,\qquad
  \cos^2\theta_W=\frac{g_2^2}{g_2^2+g_Y^2}.
\]

Changing the normalization of \(Y\) without compensating \(g_Y\) and the charge assignment changes the displayed “angle”; it does not establish physical agreement.

## 2. Geometry and dimensional claims

### 2.1 A commutative 11 → 10 → 9 pattern

Write

\[
 X_7=\mathbb{CP}^2\times L(p,q),\qquad
 L(p,q)=S^3/\langle(z_1,z_2)\mapsto
 (\zeta z_1,\zeta^qz_2)\rangle,\quad
 \zeta=e^{2\pi i/p},
\]

with \(p\ge2\), \(\gcd(p,q)=1\), and the angles on the cover \(z_j=|z_j|e^{i\phi_j}\) taken modulo \(2\pi\). For each fixed \(0<\chi<\pi/2\), where \((|z_1|,|z_2|)=(\cos\chi,\sin\chi)\), the orbit is a smooth torus. At either endpoint one circle shrinks and the limiting orbit is a circle. Thus \(M_4\times X_7\) contains smooth ten-dimensional submanifolds \(M_4\times\mathbb{CP}^2\times T^2\), with five-dimensional internal limiting orbits.

**Proved as a statement about slices**, not about solutions, dynamical compactification or a family of physical dimensions. The hypersurfaces are not themselves the eleven-dimensional geometry. The five-dimensional end orbit is a lower-dimensional orbit, not automatically a controlled limit of the six-dimensional Dirac operator. Neither this construction nor parity changes force a noncommutative algebra.

The product \(\mathbb{CP}^2\times L(p,q)\) is not spin: the pullback of \(h\bmod2\) remains nonzero. An ordinary eleven-dimensional spinor on \(M_4\times\mathbb{CP}^2\times L(p,q)\) is therefore not automatic for spin \(M_4\); a spin-\(c\) or other appropriate twisting is additional data. The distinct \(N=S(Q)\) geometry in §2.3 is spin.

There is also a related, smooth **quotient** construction when \(q=1\):
\[
 S^1\longrightarrow L(p,1)\longrightarrow\mathbb{CP}^1,\qquad
 X_7/S^1\cong\mathbb{CP}^2\times\mathbb{CP}^1.
\]
This is the Hopf circle bundle with first Chern number \(\pm p\); see the [lens-space circle-bundle construction](https://link.springer.com/article/10.1007/s11005-017-0971-x). A latitude circle in the base has inverse image a torus, so the quotient and slice pictures are related but the six-manifolds are not the same. A ten-dimensional Kaluza–Klein reduction along the free Hopf circle would retain a circle gauge field with this nonzero bundle curvature. It is a valid geometric ansatz, not yet a compactification solution. The weighted-projective quotient in §4.3 is a third, different construction.

### 2.2 Metric dimension, chirality and KO-dimension

The metric dimension controls high-energy spectral growth; the KO-dimension specifies signs of the real structure, including the compatibility of \(J\) with the grading. They need not coincide after a reduction that retains internal Clifford or finite matrix data. A finite matrix factor changes the KO-sign data and representation without adding a positive heat-kernel dimension.

A simple model shows why a collapse requires explicit spin data. On a product with a shrinking circle, take schematically

\[
 D_{6,R}=D_5\otimes\sigma_1+
 \frac1R(-i\partial_\theta+\alpha)\otimes\sigma_2.
\]

For periodic vertical modes, \(\alpha=0\), a zero Fourier mode may survive together with the two-component Clifford multiplicity. For antiperiodic modes, \(\alpha=1/2\), all vertical eigenvalues escape as \(R\to0\) unless an additional twist changes the spectrum. This is an illustration, not by itself a KO-6 construction: an inherited or newly constructed \(J\), grading and the associated signs must still be checked. The sensitivity of Dirac spectra to spin structures under circle collapse is established in [the analysis by Ammann](https://arxiv.org/abs/math/9812116).

For the approach from seven dimensions, a six-dimensional hypersurface has a normal Clifford direction and can acquire a tangential chirality operator. To obtain a KO-6 real finite factor, one must additionally specify the ambient Clifford module, normal convention, boundary or adiabatic condition, and a real structure that restricts with the desired signs. No such compatible 7 → 6 → 5 construction is yet exhibited here.

On the specific slice \(X_6=\mathbb{CP}^2\times T^2\), the circle contracting at a lens-space endpoint bounds a disk in the lens space. In the natural bounding spin structure the vertical fermionic modes are antiperiodic; the naive zero mode is absent. Twists, holonomies or a different geometric setup can change the conclusion. This concerns spectral reduction and does not make fermion phenomenology the priority.

### 2.3 A spin seven-manifold with flag and sphere quotients

Let \(h=c_1(\mathcal O_{\mathbb{CP}^2}(1))\), and let \(Q\) be the universal complex rank-two quotient:
\[
 0\longrightarrow\mathcal O(-1)\longrightarrow\mathbb C^3
   \longrightarrow Q\longrightarrow0,
 \qquad c(Q)=1+h+h^2.
\]
The unit sphere bundle admits the explicit description
\[
 N=S(Q)=
 \{(\ell,u)\in\mathbb{CP}^2\times S^5:u\perp\ell\}.
\]
The transitive \(SU(3)\) action has stabilizer
\(\{\operatorname{diag}(z,1,z^{-1}):|z|=1\}\). With the usual weight convention this is \(N(1,0)\); permuting the last two coordinates gives the conjugate subgroup \(N(1,-1)\). See [Lehmann, Theorem C](https://people.maths.ox.ac.uk/lotay/Lehmann%20PhD%20Thesis.pdf).

There are three smooth bundle projections:
\[
 \begin{array}{rcll}
 S^1&\longrightarrow N&\xrightarrow{q}&F_3=P_{\rm lines}(Q),\quad
       q(\ell,u)=(\ell,[u]),\\
 S^2&\longrightarrow N&\xrightarrow{r}&S^5,\quad r(\ell,u)=u,\\
 S^3&\longrightarrow N&\longrightarrow&\mathbb{CP}^2,\quad
       (\ell,u)\longmapsto\ell.
 \end{array}
\]
For the first map, \([u]\) is a line in \(\ell^\perp\cong Q_\ell\). This Hermitian description gives a smooth identification of \(F_3\) with the full flag manifold; the displayed \([u]\)-projection is not being asserted holomorphic for the usual flag complex structure.

The tangent bundle satisfies
\[
 TN\oplus\mathbb R\cong
 \pi^*(T\mathbb{CP}^2\oplus Q_{\mathbb R}),\qquad
 w_2(TN)=\pi^*(h+h)=0.
\]
Thus \(N\) is spin although the base is not. The sphere-bundle Euler class is \(c_2(Q)=h^2\); the Gysin sequence gives \(H^4(N;\mathbb Z)=0\). These are geometric statements, not a solution of an eleven-dimensional field equation or a construction of a light Dirac sector.

The flag and sphere projections are **alternative** reductions. The circle fiber of \(q\) maps under \(r\) onto a Hopf circle in \(S^5\), so \(r\) cannot factor through \(q\). More precisely, \(N\) is the pullback of the Hopf bundle \(S^5\to\mathbb{CP}^2_{[u]}\) along the smooth map \(F_3\to\mathbb{CP}^2_{[u]}\). Collapsing both natural fiber directions leads to that four-dimensional base, not sequentially to \(S^5\).

There is a stronger statement. Both \(F_3\) and \(\mathbb{CP}^2\times\mathbb{CP}^1\) are closed six-manifolds with Euler characteristic \(6\). If either admitted a smooth surjective submersion onto any five-manifold, compactness and Ehresmann give a bundle with compact one-dimensional fibers, necessarily disjoint unions of circles. Euler-characteristic multiplicativity would force the total Euler characteristic to vanish. Consequently
\[
 \boxed{\text{neither projective six-manifold is a smooth circle bundle over a five-manifold}.}
\]
In fact, neither admits a nowhere-zero vector field. This rules out the specified **globally smooth circle-fibration** version of \(7\to6\to5\), including \(F_3\to S^5\). Singular orbits, a boundary or stratified endpoint, topology change, different six-dimensional spaces, and metric limits without such a submersion are not excluded. The torus-slice construction in §2.1 is different and remains available.

The obstruction extends to bounded-curvature collapse. Let the underlying six-manifold be fixed as either projective candidate, and suppose metrics converge in the Gromov–Hausdorff sense to a fixed smooth closed five-manifold while the absolute sectional curvatures stay uniformly bounded. The [Fukaya fibration theorem](https://archive.mpim-bonn.mpg.de/2940/1/preprint_1987_10.pdf) gives a smooth fibration for sufficiently small distance, contradicting Euler characteristic \(6\). Thus a collapse of this kind to smooth \(S^5\) must have unbounded sectional curvature. No claim is made about singular target spaces or limits without a uniform curvature bound.

### 2.4 Projective candidates, spin and the quaternionic Hopf bundle

Use the lines convention \(F_3=P_{\rm lines}(Q)\) and \(u=c_1(\mathcal O_F(1))\). The projective-bundle theorem gives
\[
 \begin{aligned}
 H^*(F_3;\mathbb Z)
 &=\mathbb Z[h,u]/(h^3,u^2+hu+h^2),\\
 H^*(\mathbb{CP}^2\times\mathbb{CP}^1;\mathbb Z)
 &=\mathbb Z[h,v]/(h^3,v^2).
 \end{aligned}
\]
For the flag manifold, \((ah+bu)^2=(a^2-b^2)h^2+(2ab-b^2)hu\), so no nonzero integral degree-two class has square zero. The product has the nonzero square-zero class \(v\); the cohomology rings are therefore different. The vertical complex tangent line has
\[
 c_1(T_{\rm vert}F_3)=h+2u,\quad
 c_1(TF_3)=4h+2u,\quad
 w_2(TF_3)=0,
\]
whereas \(w_2(T(\mathbb{CP}^2\times\mathbb{CP}^1))=h\bmod2\). The flag is spin; the product is spin-\(c\) but not spin. The ordinary real spin Dirac triple on the six-dimensional flag has the KO-dimension-six signs \(J^2=+1\), \(JD=DJ\), \(J\gamma=-\gamma J\). This is an exact property of the smooth flag triple; a finite-mode projection need not preserve the real structure, grading, bimodule or orientation cycle. Both spaces remain candidates, with different global data.

The [Kuiper–Massey quotient](https://webhomes.maths.ed.ac.uk/~v1ranick/papers/seade.pdf) gives \(\mathbb{CP}^2/\mathrm{conj}\cong S^4\), branched over \(\mathbb{RP}^2\). Complex conjugation preserves the complex orientation in real dimension four, so the quotient map \(f:\mathbb{CP}^2\to S^4\) has degree \(2\). Pulling back the quaternionic Hopf principal \(SU(2)\) bundle gives \(c_2=\pm2h^2\), with the sign depending on orientation. This is distinct from \(S(Q)\), which has a \(U(2)\) structure group, \(c_1(Q)=h\) and \(c_2(Q)=h^2\). The pulled-back principal \(SU(2)\) bundle has \(H^4\cong\mathbb Z/2\) and is non-spin: the vertical tangent bundle is trivial and the pullback of \(w_2(\mathbb{CP}^2)\) remains nonzero. Also, every \(S^3\) bundle over \(\mathbb{CP}^2\) has \(\pi_2\cong\mathbb Z\), so no such total space is \(S^7\).

### 2.5 An exact torus quotient, with fixed points

Let \(E\) be an elliptic curve and
\[
 A=\{(z_1,z_2,z_3)\in E^3:z_1+z_2+z_3=0\}.
\]
Then \(A\cong E^2\), and \(S_3\) acts by permutation. Effective degree-three divisors with vanishing sum are the complete linear system \(|3[0]|\), which is \(\mathbb{CP}^2\). Hence
\[
 \mathbb{CP}^2\cong A/S_3,\qquad
 \mathbb{CP}^1\cong E/\{\pm1\},\qquad
 \mathbb{CP}^2\times\mathbb{CP}^1
 \cong (A\times E)/(S_3\times\mathbb Z_2).
\]
The complex quotient is smooth, but the group action has fixed points and the flat quotient metric has conical singularities. The ordinary invariant functions, the orbifold stack, and the crossed product retain different information. The group \(S_3\times\mathbb Z_2\) is the Weyl group of \(SU(3)\times SU(2)\); this finite symmetry does not alone produce the continuous Standard Model gauge group. See the [Abel–Jacobi and complete-linear-system derivation](https://people.math.ethz.ch/~rahul/Projective_bundle_over_Jacobian.pdf). Section 6.13 tests the actual crossed product.

## 3. Lens lattice and electroweak kinetic form

### 3.1 All globally closed torus circles

Use angle vectors divided by \(2\pi\). The effective torus of phase rotations on \(L(p,q)\) is \(\mathbb R^2/\Lambda_{p,q}\), with

\[
 \Lambda_{p,q}=\mathbb Z^2+\frac1p(1,q)\mathbb Z,\qquad
 \ell_1=(1/p,q/p),\quad \ell_2=(0,1).
\]

These vectors form a lattice basis: \(e_2=\ell_2\) and \(e_1=p\ell_1-q\ell_2\). Hence the closed connected circle subgroups are precisely the lines generated by

\[
 m\ell_1+n\ell_2,\qquad m,n\in\mathbb Z,\quad\gcd(m,n)=1,
\]

up to overall sign. This says which one-parameter subgroups close; it does not say that a gauge-boson mass eigenvector must generate one of them. Generic Lie-algebra directions have dense one-parameter images.

For a Berger metric with non-round squashing and \(p\ge3\), the connected isometry group is \(U(2)/\mu_p\) for \(q=1\); for a generic noncentral \(q\) the quotient leaves only the connected torus. The round case and \(p=1,2\) have possible enhanced symmetries. Consequently \(q=1\) is used for the explicit \(SU(2)\times U(1)\) calculation; no general electroweak group is silently assumed for other \(q\).

### 3.2 One precise Berger calculation

On \(S^3\subset\mathbb C^2\) take the invariant metric

\[
 g=a^2g_{\perp}+b^2\eta^2,\qquad \xi=b/a>0,
\]

where \(g_{\perp}+\eta^2\) is the unit round metric and \(\eta\) is dual to the common phase direction. This metric descends to every lens quotient. Let

\[
 T_i=\sigma_i/2,\qquad Y=I_2/2,\qquad Q=T_3+Y.
\]

These are Hermitian generator conventions; the corresponding Killing fields on the sphere contain the usual factor of \(i\). Under the standard Einstein–Hilbert Kaluza–Klein ansatz, before canonical field normalization the gauge kinetic Gram form is proportional to the internal average of the pointwise inner products of the Killing fields. With a common positive prefactor \(\mathcal N\), including the internal volume and the higher-dimensional gravitational coupling,

\[
 \mathcal K(T_i,T_j)=\mathcal N A\delta_{ij},\quad
 \mathcal K(Y,Y)=\mathcal N B,\quad \mathcal K(T_i,Y)=0,
 \quad
 A=\frac{2a^2+b^2}{12},\quad B=\frac{b^2}{4}.
\]

For example,
\[
 \langle |T_3|^2\rangle
 =\frac14\left(a^2+(b^2-a^2)\langle\cos^2(2\chi)\rangle\right)
 =\frac{2a^2+b^2}{12},
\]
because the normalized round-volume average is \(\langle\cos^2(2\chi)\rangle=1/3\). The cross term averages to zero. The Berger volume differs from round volume only by a constant at fixed \(a,b\), so these normalized averages are unchanged. Each lens quotient contributes the same overall volume factor \(1/p\), which cancels in the ratio.

Canonical normalization gives \(g_2^{-2}=\mathcal N A\) and \(g_Y^{-2}=\mathcal N B\), up to a common convention-dependent overall constant. Consequently

\[
 \boxed{\frac{g_Y^2}{g_2^2}=\frac{2+\xi^2}{3\xi^2},\qquad
 \cos^2\theta_W=\frac{3\xi^2}{4\xi^2+2}.}
\]

**Proved for this ansatz and embedding; independently checked by numerical quadrature.** For example, \(\xi^2=1\) gives \(1/2\), and \(\xi^2=5/2\) gives \(5/8\). These are two metrics on the same \(L(5,1)\). Thus the quotient and the lattice by themselves do not determine the angle. The relationship between squashing and a weak-angle ratio has earlier precedents, including [Hu and Shen (1986)](https://digitalcommons.usu.edu/physics_facpub/1912/); the normalization and formula above are derived here.

In the actual effective torus lattice for \(q=1\), a primitive basis is \(e_1=(1,0)=Q\) and \(c=(1/p,1/p)\). Since \(Y=(p/2)c\), the neutral kinetic matrix in that integral basis is

\[
 \mathcal K_{\{Q,c\}}=\mathcal N
 \begin{pmatrix} A+B&2B/p\\2B/p&4B/p^2\end{pmatrix}.
\]

The explicit factors of \(p\) reflect a change of integral generator, not by themselves a physical prediction for the angle. Electric charge and the coupling must be transformed along with the generator. Globally, the effective isometry group is \(U(2)/\mu_p\); for \(p>1\) the ordinary covering \(U(2)\) fundamental doublet is not an honest representation, since the deck center acts nontrivially. This does not forbid all \(SU(2)\) doublets: for example, at \(p=5\), \(\det^2\otimes\mathbf2\) descends, but has covering-space \(Y\)-charge \(5/2\) rather than \(1/2\). A consistent physical charge assignment or combined-gauge-group representation is additional data. The point-orbit sigma model in §5 is nevertheless well defined on the lens target.

### 3.3 Comparison with the reported \(1/4\) and spectral-action \(5/8\)

For the usual Standard Model hypercharge convention above, the standard spectral-action boundary relation is

\[
 g_3^2=g_2^2=\tfrac53 g_Y^2,\qquad
 \cos^2\theta_W=\tfrac58.
\]

It is a relation at the matching scale of the action, not a universal low-energy identity. See [Chamseddine and Connes](https://doi.org/10.1007/s002200050126). The Berger value \(5/8\) at \(\xi^2=5/2\) uses the same \(Q=T_3+Y\) convention at the Lie-algebra level and the same ratio \(g_Y^2/g_2^2=3/5\). **The numerical definitions are therefore compatible**, provided the gauge embedding, field charges, kinetic normalizations and matching scale are the ones displayed. This is not a derivation of the spectral action: the color coupling, global representation, real finite triple, radiative evolution and full action remain unverified.

A different \(1/4\) value can arise from a simple \(SU(3)\) kinetic form with electroweak subgroup \(SU(2)\subset SU(3)\), \(T_8=\operatorname{diag}(1,1,-2)/(2\sqrt3)\), and \(Y=T_8/\sqrt3\). Equal simple-group generator normalizations then imply \(g_Y^2=3g_2^2\) and \(\cos^2\theta_W=1/4\), with \(Q=T_3+Y\). This is an explicit, internally consistent example; the precise flag-manifold derivation reported in the parallel discussion was not available in full, so it is **not independently reconstructed**. The value is not interchangeable with \(5/8\): the kinetic form and/or embedding differ. A different choice such as \(Y=\sqrt3T_8\) changes the normalized relation and the electric charges.

## 4. Can \(p,q\) fix the angle?

### 4.1 What the quotient proves and what could add a selection rule

**No-go under quotient-only assumptions.** The same smooth \(L(5,1)\), gauge embedding and parent Einstein–Hilbert kinetic prescription admit both the round and squashed metrics in §3.2, with different coupling ratios. Hence no function \(F(p,q)\) follows from the finite quotient alone for this family.

The quotient also does not silently produce an electroweak Higgs field: metric isometries give massless gauge vectors until a separate symmetry-breaking mechanism is specified. A local field equation may select a metric, but that must be demonstrated from an action. For locally identical invariant fields with fixed higher-dimensional couplings, a finite free quotient changes neither the local Euler–Lagrange equations nor the locally lifted solutions; an overall \(1/p\) in the action is not by itself a shape-selection mechanism. A fortiori, if the internal metric is required to be three-dimensional Einstein with only isotropic stress, it has constant sectional curvature, and the Berger solution is round: \(\xi^2=1\), not \(5/2\).

The Hopf reduction makes the role of the integer especially clear. Locally write the covering-space connection as \(\eta=d\alpha+\mathcal A\), where \(\int_{\mathbb{CP}^1}d\mathcal A=\pm2\pi\), and use the quotient fiber coordinate \(\psi=p\alpha\) with period \(2\pi\). Then
\[
 b^2\eta^2=\frac{b^2}{p^2}(d\psi+p\mathcal A)^2,\qquad
 \mathcal F_{\rm KK}=p\,d\mathcal A,\qquad R_{\rm fiber}=b/p.
\]
The flux quantum is \(p\), but the local curvature contribution weighted by the squared fiber radius is \(R_{\rm fiber}^2|\mathcal F_{\rm KK}|^2=b^2|d\mathcal A|^2\), so \(p\) cancels at fixed covering metric. The same topological integer that restricts allowed modes in §6.2 therefore does not automatically select \(\xi\) through the classical local equations.

Additional data could change this conclusion. For example, a quantized three-form flux with fixed integer \(n\) has density proportional to \(n/\operatorname{Vol}(L(p,q))\), so the allowed stress can depend on \(p\). Discrete holonomies, boundary conditions, a specified anisotropic matter sector or quantum effective potential could likewise make allowed stationary shapes depend on the quotient. None is a proof: the equations, quantization, stability, electroweak embedding and absence of compensating free moduli have to be shown. They must give \(5/2\) without inserting that value as an independent premise.

### 4.2 A precise conditional occurrence of \(p=5\)

There is a sharper numerical connection, but it requires a new selection postulate. The neutral direction orthogonal to the electromagnetic generator under the kinetic form is

\[
 Z_{\mathrm{alg}}\propto T_3-rY,\qquad
 r=\frac{g_Y^2}{g_2^2}=\frac AB.
\]

Suppose, additionally, that it generates a closed covering-space circle of primitive weights \((u,-v)\), with \(\gcd(u,v)=1\), \(0<u<v\), and impose the strong condition that the intersection with the scalar center is **exactly** the lens deck group \(\mu_p\). Then

\[
 r=\frac{v-u}{u+v},\quad p=u+v,\quad
 \cos^2\theta_W=\frac{u+v}{2v},\quad
 \xi^2=\frac{p}{p-3u},\quad 0<u<p/3.
\]

The derivation uses \(T_3-rY=\frac12(1-r,-1-r)\), and \((u,-v)\cap U(1)_{\rm center}=\mu_{u+v}\). Under this imposed rule, \(p=5\) has \(u=1,v=4\), giving \(\xi^2=5/2\), \(r=3/5\), and \(\cos^2\theta_W=5/8\). For \(p=7\), both \((u,v)=(1,6)\) and \((2,5)\) satisfy the same branch, giving \(7/12\) and \(7/10\); even the postulate does not in general produce a single \(F(p,1)\).

If the condition is weakened to \(\mu_p\subset H_Z\), only \(p\mid(u+v)\) follows, allowing infinitely many possibilities. More generally, for a primitive \((u,-v)\) circle containing the \((1,q)\) deck generator and invertible \(u\) modulo \(p\), one needs \(q\equiv-vu^{-1}\pmod p\), which again does not determine a unique slope. A physical neutral mass direction need not integrate to a closed subgroup at all. Thus the \(p=5\) result is a **conditional resonance**, not a derivation from topology.

### 4.3 The 10D quotient is an orbifold in the \(p=5\) resonance

If one does reduce the lens space along that selected neutral circle, then

\[
 L(p,1)/(H_Z/\mu_p)\cong S^3/H_Z\cong\mathbb{WP}^1_{u,v}.
\]

At \((u,v)=(1,4)\), one endpoint has a \(\mathbb Z_4\) stabilizer. The quotient is a weighted-projective orbifold, with coarse underlying topology \(S^2\), and is not a smooth Riemannian circle-bundle quotient. The corresponding six-dimensional internal quotient is \(\mathbb{CP}^2\times\mathbb{WP}^1_{1,4}\). It is distinct from the smooth \(\mathbb{CP}^2\times T^2\) slices and the smooth Hopf quotient \(\mathbb{CP}^2\times\mathbb{CP}^1\) in §2.1. A commutative algebra of functions can still describe the underlying quotient; a groupoid algebra is one possible way to retain isotropy, not a proof that NCG is compulsory.

The neutral-circle quotient also changes the gauge question. For unequal weights \((1,-4)\), the connected centralizer of that circle in \(U(2)\) is the phase torus, so the obvious descended connected symmetry after dividing by the circle is only \(U(1)\). The unique order-four orbifold point rules out an effective transitive \(SU(2)\) isometry on this weighted two-orbifold. The \(SU(2)\times U(1)\) kinetic calculation in §3.2 integrates over the *eleven-dimensional lens fiber*; it is not yet a derivation of the same electroweak gauge sector from the neutral-circle quotient. The free central Hopf reduction is a different reduction, which retains a Kaluza–Klein circle gauge field.

## 5. The Fermi scale and an independent mass test

In the Berger model, let a point-orbit nonlinear sigma field \(z\in L(p,1)\) supply the symmetry-breaking term

\[
 \mathcal L_{\rm mass}=\frac{\kappa}{2}g(D_\mu z,D^\mu z),
\]

with the **same Berger metric** used in the Einstein–Hilbert gauge kinetic term, and choose a vacuum with unbroken generator \(Q\). At tree level,

\[
 M^2=\frac{\kappa}{4}
 \begin{pmatrix}
 a^2g_2^2&0&0&0\\
 0&a^2g_2^2&0&0\\
 0&0&b^2g_2^2&-b^2g_2g_Y\\
 0&0&-b^2g_2g_Y&b^2g_Y^2
 \end{pmatrix}_{(W^1,W^2,W^3,B)}.
\]

For positive \(a,b,\kappa\) and nonzero couplings this matrix has rank three. The neutral kernel is generated by \((W^3,B)\propto(g_Y,g_2)\), corresponding to the electromagnetic generator \(Q\). This is an explicit rank-three mass form in this sigma model; it is not an identification of the finite-algebra centralizer with the gauge stabilizer in §7.2. The nonzero eigenvalues give

\[
 M_W^2=\frac{\kappa a^2g_2^2}{4},\qquad
 M_Z^2=\frac{\kappa b^2(g_2^2+g_Y^2)}{4},\qquad
 \rho\equiv\frac{M_W^2}{M_Z^2\cos^2\theta_W}
 =\frac{a^2}{b^2}=\frac1{\xi^2}.
\]

If the low-energy charged current is dominated by this single \(W\),

\[
 \frac{G_F}{\sqrt2}=\frac{g_2^2}{8M_W^2},
 \qquad G_F=\frac{1}{\sqrt2\,\kappa a^2}.
\]

These equations were checked by direct evaluation of the vacuum Killing-field norms. At \(\cos^2\theta_W=5/8\), the model has \(\xi^2=5/2\) and \(\rho=2/5\), not the custodial tree-level value \(1\). Conversely \(\rho=1\) requires the round metric and gives \(\cos^2\theta_W=1/2\). Therefore this entire same-metric, single-orbit class cannot simultaneously realize the conventional \(5/8\) angle and custodial mass relation. This is a conditional no-go, not a no-go for other compactifications or sectors.

One can set \(\kappa a^2=1/(\sqrt2 G_F)\), but doing so uses an independent mass scale; it does not fix the shape \(\xi\), remove the \(\rho\) failure, or derive \(G_F\) from the compactification. Conversely, \(\xi\) fixes a dimensionless ratio but leaves the overall scale. A different symmetry-breaking metric or additional fields can change these conclusions, at the price of additional structure that must itself be derived. Pure metric isometries without breaking leave the vectors massless and yield no Fermi relation.

An earlier interface proposal also sent \(M_W\to\infty\) while holding \(e,\theta_W,G_F\) fixed. In the stated single-\(W\), tree-level effective theory,

\[
 M_W^2=\frac{e^2}{4\sqrt2\,G_F\sin^2\theta_W},
\]

so the limit instead drives \(G_F\to0\) if \(e\) and \(\theta_W\) stay finite and nonzero. The subsequent action-defense no-go draft already identifies this issue. A finite interface scale or a model with additional charged-current contributions is not excluded by this algebra.

### 5.1 The 9D endpoint and beta decay

The intended endpoint has total dimension nine, with a proposed internal five-manifold \(X_5=\mathbb{CP}^2\times S^1\). It is important to distinguish the geometric \(10\to9\) limit from the further reduction on \(X_5\) to a four-dimensional effective field theory. The following beta-decay operators are written in that 4D theory; neither reduction has yet been derived dynamically from the lens slices.

Let
\[
 \mathcal L_{\beta}
 =-\frac{G_FV_{ud}}{\sqrt2}
 [\bar u\gamma^\mu(1-\gamma_5)d]\,
 [\bar e\gamma_\mu(1-\gamma_5)\nu_e]+\mathrm{h.c.}
\]
At tree level, integrating out a \(W\) of finite mass yields \(G_F/\sqrt2=g_2^2/(8M_W^2)\). The absence of a propagating \(W\) in a low-energy action is therefore compatible with beta decay: the interaction survives as this contact term. The analogous statement holds for neutral-current operators from a \(Z\). See [Falkowski, SMEFT lectures](https://link.springer.com/article/10.1140/epjc/s10052-023-11821-3), §6, for the matching.

If instead \(M_W,M_Z\to\infty\) with \(g_2,g_Y\) finite and without other surviving charged-current operators, the weak contact coefficients vanish. Then \(n\to p\,e^-\bar\nu_e\), muon decay and the weak decays of flavor-carrying hadrons disappear. This uses QCD+QED with flavor-diagonal masses and no independent flavor-changing interaction. If the neutron–proton gap remains above threshold, the neutron is stable **against beta decay**, not by kinematics but because the transition interaction is absent. Other mass hierarchies or extra operators require separate analysis.

For the ordinary one-doublet tree-level benchmark,
\[
 M_W=\frac{g_2v}{2},\quad
 M_Z=\frac{v}{2}\sqrt{g_2^2+g_Y^2},\quad
 G_F=\frac{1}{\sqrt2\,v^2},\quad
 m_f=\frac{y_fv}{\sqrt2}.
\]
At fixed \(g_2,g_Y\), the formal limit \(v=s\,v_0\), \(s\to\infty\), gives \(G_F=G_{F,0}/s^2\). Keeping the light fermion masses, \(g_A\), \(V_{ud}\), and the neutron beta-decay phase space fixed then gives \(\Gamma_n(s)\sim\Gamma_n(1)/s^4\). If \(y_t\) stays nonzero, \(m_t\sim s\) and the top decouples. The other chosen finite masses require \(y_f\sim1/s\). Those are correlated parameter assumptions, not yet a geometric derivation; keeping the low-energy QCD scale fixed is a further matching assumption.

One may instead postulate a finite beta-decay coefficient after removing the vector fields. For example, a 9D local four-fermion coupling has mass dimension \(-7\). For normalized constant modes on an internal volume \(V_5\), the 4D coefficient scales as \(C_\beta\sim G_9/V_5\); nonconstant modes introduce overlap integrals. Such a term is allowed by \(SU(3)_c\times U(1)_{\rm em}\), but neither the coefficient nor the chiral structure has been derived here. Keeping \(G_F\) finite while taking \(M_W\to\infty\) at tree level instead requires \(g_2\propto M_W\); with fixed nonzero \(e,\sin\theta_W\) this is inconsistent with \(e=g_2\sin\theta_W\). Without those fixed-parameter assumptions it is a strong-coupling formal limit, not a controlled weakly coupled proof.

### 5.2 Massive 9D spinors and 4D Dirac masses

An irreducible complex 9D spinor has \(16\) complex components. In odd dimension there is no independent Weyl chirality for \(\mathrm{Spin}(1,8)\): each of the two 10D Weyl representations restricts to the same 9D complex spin representation. The 9D spin representation also admits a \(16\)-real-component Majorana or pseudo-Majorana condition, depending on convention. Thus “9D is nonchiral” does not mean every spinor is automatically massive or must be a complex Dirac field.

There is, however, a special mass fact in 9D. For anticommuting 9D Majorana fields the invariant charge-conjugation bilinear has a symmetric spinor matrix, and a scalar mass for a **single** such field vanishes. For several identical real spinors a scalar mass matrix is antisymmetric in the field label and has even rank; two can pair into a massive complex Dirac field. Gauge representations must permit the pairing. This is the \(8k+1\) result of [Alvarez-Gaumé and Witten](https://www.physics.mcgill.ca/~keshav/675/gaumewitten.pdf), §4; see also the explicit 9D conventions of [Nishino and Rajpoot](https://arxiv.org/abs/1703.05397), Appendix B. It concerns a 9D Lorentz-invariant scalar mass and does not forbid all 4D Majorana masses induced by backgrounds that break the 9D symmetry.

After a simple product reduction,
\[
 \mathbf{16}_{9,\mathbb C}
 \cong \mathbf4_{4,\rm Dirac}\otimes\mathbf4_{5,\mathbb C}.
\]
The absence of a 9D Weyl operator is distinct from the existence of \(\gamma_5\) on the 4D factor. A retained 4D electron or quark can carry an ordinary Dirac mass when the left and right states have the same surviving \(SU(3)_c\times U(1)_{\rm em}\) representation. This mass is symmetry-allowed, not determined or necessarily nonzero.

An explicit product-spectrum example shows how the mass may arise. Suppose \(X_5=\mathbb{CP}^2\times S^1_R\), use a chosen spin-\(c\) Dirac operator on \(\mathbb{CP}^2\), and let the eigenvalues be \(\kappa_j\). For a complex 9D Dirac field with constant 9D mass \(M_9\), flat circle holonomy plus spin-structure shift \(\alpha\), and no mixing between sectors,
\[
 m_{j,n}^2=M_9^2+\kappa_j^2+\frac{(n+\alpha)^2}{R^2},
 \qquad n\in\mathbb Z.
\]
In a simple covering-sphere normalization for the lens endpoint, \(R=b/p\). If \(M_9=\kappa_j=\alpha=0\), the \(n=0\) 4D mode is massless; if a zero mode has \(\alpha=1/2\), the lowest circle contribution is \(1/(2R)\). The actual spin lift, gauge holonomy, boundary condition, and mode surviving the collapse must be computed for any proposed model.

The 84-state light count in [Rivero (2009)](https://arxiv.org/pdf/0910.4793), §III, is recovered by assuming five light Dirac quark flavors in three colors, three charged Dirac leptons, and three Dirac neutrinos: \(4(5\cdot3+3+3)=84\) 4D spin/particle–antiparticle states. The top accounts for \(12\) more. Without three Dirac neutrinos the count changes; the equalities are field-content assumptions, not a consequence of 9D dimension alone.

### 5.3 The endpoint geometry, charge and spin structure

For the lens model and electroweak embedding of §3, select the orbit \(z_1=0\), where \(Q=T_3+Y\) fixes the chosen Higgs vacuum. On the surviving circle,
\[
 K(T_3)=-\tfrac12\partial_{\phi_2},\quad
 K(Y)=+\tfrac12\partial_{\phi_2},\quad
 K(Q)=0.
\]
The tangential neutral Killing-field Gram matrix is proportional to
\[
 \frac{b^2}{4}\begin{pmatrix}1&-1\\-1&1\end{pmatrix}.
\]
Thus the remaining circle motion is the projection of the broken neutral direction, whereas the original \(Q\) acts on the collapsing normal complex plane. A zero tangential kinetic form is not a proof that the corresponding gauge field becomes infinitely massive. A normal-bundle \(U(1)\), additional modes, or a different embedding might retain electromagnetic information, but the corresponding dynamical photon and couplings have not been derived.

There is nevertheless a topological mode-selection effect. Near the orbit write the normal complex coordinate as \(w=z_1\), and the circle coordinate as \(\phi_2\). For an untwisted scalar monomial \(w^a\bar w^b e^{i\ell\phi_2}\), the lens generator gives the condition
\[
 s+q\ell\equiv0\pmod p,\qquad s=a-b.
\]
For \(s=0\), \(\ell\) is a multiple of \(p\). For \(s\ne0\), the allowed momentum is shifted by \(-q^{-1}s/p\) relative to the quotient-circle momentum. For \(p=5,q=1,s=1\), one finds \(\ell=5n-1\). The \(s\ne0\) terms vanish under literal restriction to the orbit; treating the coefficients as light fields requires a controlled normal-mode reduction. Spinors add a spin lift and possibly a bundle character. This is a real \(p,q\) dependence of allowed modes, not a derivation of the Weinberg angle.

Finally, \(w_2(\mathbb{CP}^2)=h\bmod2\ne0\), so \(\mathbb{CP}^2\times S^1\) is not spin. A global 9D ordinary spinor is not automatically defined on \(M_4\times X_5\); a spin-\(c\) or other twisted structure is needed. The natural spin-\(c\) spinor is complex, and a compatible real/Majorana structure requires extra data. For the Fubini–Study product metric the connected geometric isometry group is \(PSU(3)\times U(1)\); color triplets require a suitable lift on a bundle and do not follow from the base isometry alone.

### 5.4 Direct link between a central Dirac mass and finite orientability

The requested Higgs-free, massive Dirac endpoint provides an independent reason to keep the orientation failure as a clue. Suppose a finite real even spectral triple obeys \(JD_F=\epsilon'D_FJ\), \(\{D_F,\gamma_F\}=0\), and \([D_F,\rho(A_F)]=0\). If finite orientability held,
\[
 \gamma_F=\sum_i\rho(a_i)J\rho(b_i)^*J^{-1},
\]
then \(D_F\) would commute with every left and right action, hence with \(\gamma_F\). The grading requires anticommutation, so \(D_F=0\). Consequently
\[
 D_F\ne0,\quad [D_F,A_F]=0
 \quad\Longrightarrow\quad
 \text{failure of the usual finite orientability axiom}.
\]
More generally, a nonzero grading-odd endomorphism commuting with both bimodule actions gives the same obstruction. Gauge invariance of a mass is weaker than bimodule-linearity, and the absence of a physical Higgs does not automatically imply \([D_F,A_F]=0\).

The electrodynamics example of [van den Dungen and van Suijlekom](https://ems.press/content/serial-article-files/30538), §4, realizes the relevant assumptions. With
\[
 A_F=\mathbb C\oplus\mathbb C,\quad
 \rho(a,b)=\operatorname{diag}(a,a,b,b),\quad
 \gamma_F=\operatorname{diag}(1,-1,-1,1),
\]
the nonzero electron Dirac mass matrix commutes with the finite algebra. The finite inner one-forms vanish; the photon comes from fluctuations of the continuous spacetime factor. Here all finite orientation products act identically on the left and right electron states, while \(\gamma_F\) distinguishes them. Thus finite orientability fails already on the massive charged-Dirac sector. This is a new deduction from the published example, not a claim that the authors presented it as such, and not a proof that the 9D geometry reduces to that triple.

### 5.5 A second endpoint: \(S^5\) and the correlated weak limit

Principal circle bundles \(P_k\to\mathbb{CP}^2\) are classified by \(c_1=kh\). The total space is
\[
 P_0\cong\mathbb{CP}^2\times S^1,\qquad
 P_{\pm1}\cong S^5,\qquad
 P_k\cong S^5/\mathbb Z_{|k|}\quad(|k|>1).
\]
The Gysin sequence modulo \(2\) shows \(w_2(TP_k)=\pi^*(h)\), which vanishes exactly for odd \(k\). Thus \(S^5\) is spin, unlike \(\mathbb{CP}^2\times S^1\).

A generic Hopf-squashed metric on \(S^5\) has connected isometry group \(U(3)\), giving the Lie algebra \(\mathfrak{su}(3)\oplus\mathfrak u(1)\). For the round sphere, the Killing-spinor representation \(\mathbf4\) of \(SU(4)\cong\mathrm{Spin}(6)\) branches, in a suitable normalization, as
\[
 \mathbf4\longrightarrow\mathbf3_{\,1}\oplus\mathbf1_{-3}.
\]
The conjugate chirality has conjugate weights. If the geometric Hopf \(U(1)\) is normalized so the defining vector representation has unit charge, spinor weights are half-integral; the \(U(3)\) isometry action must be lifted to the relevant double cover on spinors. These charges have the relative pattern of \(B-L\), but no electromagnetic charge assignment follows without a specified representation and lift.

The round untwisted Dirac spectrum is
\[
 \lambda_\ell=\pm\frac{\ell+5/2}{R},\qquad \ell=0,1,\ldots.
\]
There is no zero mode. More generally, positive scalar curvature excludes untwisted harmonic spinors by the Lichnerowicz formula. Gauge twists and fluxes can change the spectrum: §6.12 constructs a natural quaternionic twist with a protected nonempty kernel. The natural \(S^2\) fibers in \(N\to S^5\) are spin, and a flux-\(n\) twisted Dirac operator on one such fiber has index \(n\). This index does not show that the weak gauge vectors decouple.

In the elementary electroweak relations \(M_W=g_2v/2\) and \(m_f=y_fv/\sqrt2\), the weak-decoupling limit at fixed \(g_2\) requires \(v\to\infty\), and then a finite nonzero fermion mass requires \(y_f\sim1/v\). Additional mediators and interactions must also decouple. A surviving geometric \(D_F\) is another possible source of finite masses, but it has not been derived from either endpoint. The \(U(3)\) isometry algebra, fermion content, weak-decoupling limit and Fermi coefficient are separate consistency conditions.

## 6. Compression: a constructive result and the corresponding obstruction

### 6.1 What compression does

For a projection \(P\) on a mode subspace, \(Q=1-P\), and commuting multiplication operators \(a,b\),

\[
 [PaP,PbP]=PbQaP-PaQbP.
\]

Thus compressed observables can fail to commute, but \(a\mapsto PaP\) is generally not a representation of the original function algebra. One may study the compressed operator system or take the \(C^*\)-algebra it generates; these are additional, distinguishable constructions. The operator-system viewpoint is developed by [Connes and van Suijlekom](https://arxiv.org/abs/2004.14115).

### 6.2 An exact \(1\oplus2\oplus3\) construction

Take the *different* smooth six-manifold
\[
 X=\mathbb{CP}^2\times\mathbb{CP}^1,\qquad
 E=\mathcal O(0,0)\oplus\mathcal O(0,1)\oplus\mathcal O(1,0),
\]

where the factors in \(\mathcal O(k,\ell)\) refer respectively to \(\mathbb{CP}^2,\mathbb{CP}^1\). Endow \(X\) with product Fubini–Study geometry and the canonical spin-\(c\) structure, and let \(D_E=\sqrt2(\bar\partial_E+\bar\partial_E^*)\). This includes a deliberately chosen rank-three background bundle; it is not pure gravity.

For these nonnegative line bundles the higher Dolbeault cohomologies vanish. The zero-mode space is

\[
 H=\ker D_E=H^0(X,E)\cong\mathbb C\oplus\mathbb C^2\oplus\mathbb C^3.
\]

The standard identification of \(H^0(\mathbb{CP}^d,\mathcal O(1))\) with linear homogeneous polynomials gives the dimensions; see, for example, the [projective-space bundle calculation](https://link.springer.com/article/10.1007/s00220-024-05176-3). Let \(P\) be the orthogonal zero-mode projection. For \(d=1,2\) take functions on the corresponding projective factor

\[
 f_{ij}^{(d)}([z])=\frac{z_i\bar z_j}{\|z\|^2}
 -\frac{\delta_{ij}}{d+1}.
\]

The unitary-invariant fourth-moment identity for the normalized sphere measure gives, in a suitable basis and up to a consistent transpose convention,

\[
 P_d f_{ij}^{(d)}P_d
 =\frac{E_{ij}-\delta_{ij}I/(d+1)}{d+2}.
\]

The raw compressed operator system is smaller than the generated algebra:
\[
 PC(X)P=
 \{(c,cI_2+B,cI_3+C):\operatorname{Tr}B=\operatorname{Tr}C=0\},
 \qquad\dim_{\mathbb C}PC(X)P=12.
\]
Indeed homogeneity makes the normalized trace in each sector equal to the average of \(f\), and the displayed functions span the traceless parts. When pulled back to \(X\), they have zero average in the other two line-bundle sectors. Products generate the full \(M_2(\mathbb C)\) and \(M_3(\mathbb C)\) blocks independently, including the block identities; the total identity then gives the remaining scalar block. Hence

\[
 \boxed{C^*(P\,C(X)\,P)\cong
 \mathbb C\oplus M_2(\mathbb C)\oplus M_3(\mathbb C).}
\]

This is an exact matrix-algebra statement under the specified construction; a separate finite-matrix computation checks the complex dimension \(1+4+9=14\). In the \(2\times2\) block, choosing a quaternionic antiunitary \(j\) with \(j^2=-1\) and restricting to the fixed real subalgebra gives an abstract copy of \(\mathbb H\). Applying that extra real-form selection gives an abstract real subalgebra \(\mathbb C\oplus\mathbb H\oplus M_3(\mathbb C)\). The selection is **additional input**: the naturally generated complex algebra is not itself the Standard Model real spectral triple, nor is it the complexification of that real algebra.

#### Compatibility test with the lens-space Hopf reduction

The six-manifold \(X\) is the base of the smooth \(L(p,1)\) Hopf reduction in §2.1, so one can ask whether the chosen degree-one bundle \(\mathcal O(0,1)\) actually comes from ordinary untwisted modes on that same lens space. It does not when \(p>1\).

Indeed the Hopf circle bundle over \(\mathbb{CP}^1\) has Chern number \(\pm p\). A charge-\(n\) Fourier mode of a globally defined, untwisted scalar function on \(L(p,1)\) is a section on the base of \(\mathcal O(\pm pn)\), with the sign fixed by convention. Equivalently, a homogeneous polynomial of degree \(k\) on the covering sphere transforms under the deck transformation by \(\zeta^k\) and descends only when \(p\mid k\). The sections \(z_1,z_2\) producing \(H^0(\mathcal O(1))\cong\mathbb C^2\) transform by \(\zeta\), so for \(p=5\) they are not functions on \(L(5,1)\).

This is a topological selection effect on the *spectrum*, not on the coupling ratio. A field on \(L(p,1)\) with a nontrivial flat deck-character twist can allow degrees \(k\equiv r\pmod p\), including \(k=1\) for an appropriate character. Such a twist is additional bundle data, and the action of the global gauge group and charges then have to be derived. Spinorial or other vector-bundle fields can also change the selection rule; the calculation does not exclude all possible doublets.

To see the untwisted consequence explicitly, replace the selected line in §6.2 by the first positive Hopf-compatible degree:
\[
 E_p=\mathcal O(0,0)\oplus\mathcal O(0,p)\oplus\mathcal O(1,0).
\]
The holomorphic zero modes have dimensions \(1,p+1,3\). Projected coordinate functions on \(\mathbb{CP}^1\) generate the irreducible spin-\(p/2\) representation and hence the whole \(M_{p+1}(\mathbb C)\) by the matrix algebra generated by the \(SU(2)\) operators. Therefore, under the same product and compression assumptions,
\[
 C^*(P_pC(X)P_p)
 \cong\mathbb C\oplus M_{p+1}(\mathbb C)\oplus M_3(\mathbb C).
\]
For \(p=5\), this is \(\mathbb C\oplus M_6(\mathbb C)\oplus M_3(\mathbb C)\), of complex dimension \(46\); a finite-matrix rank calculation confirms the \(M_6\) and overall dimensions. The additional \(\mathcal O(1,0)\) background on the \(\mathbb{CP}^2\) factor is still an independent choice. This result both links the geometries and demonstrates that the earlier \(1\oplus2\oplus3\) choice is not automatically supplied by untwisted \(L(5,1)\) modes.

There is a further independence test. Hold \(p\), the \(\mathbb{CP}^2\) metric, the horizontal radius \(a\), and the chosen bundle and the homogeneous connection fixed, but vary the Hopf radius \(b\). The quotient metric on \(\mathbb{CP}^1\), the base spin-\(c\) operator and the displayed zero-mode algebra stay the same, while §3.2 gives a continuously changing electroweak kinetic ratio. Thus in this explicit comparison the angle does not by itself control the finite algebra. A genuinely adiabatic projection of the full higher-dimensional operator can depend on \(b\) and may change at spectral thresholds; that more difficult question is not settled by the base calculation.

### 6.3 The zero-mode obstruction and the higher-mode obstruction

All six modes above are \((0,0)\)-forms, so the inherited grading is \(\gamma_P=+I\) and

\[
 D_F=PD_EP=0.
\]

A nonzero KO-6 real triple requires \(J_F\gamma_F=-\gamma_FJ_F\); no antiunitary on this one-chirality space can satisfy it. Also, every \([D_F,a]\) vanishes: there are no finite Dirac one-forms in this projected free operator. The equality \(PD_EP=0\) is automatic when \(P\) is chosen as \(\ker D_E\); it is not evidence that a perturbed operator, a different effective Dirac operator, or a different mode space must vanish.

More generally, the present twisted spin-\(c\) operator has complex chiral index \(6\). Every finite symmetric cutoff \(P_\Lambda=1_{\{|D_E|\le\Lambda\}}\) containing the zero modes has
\[
 \operatorname{Tr}_{P_\Lambda H}\gamma=6,
\]
because nonzero eigenmodes are paired by the odd Dirac operator. An antiunitary \(J\) anticommutes with \(\gamma\) only if the positive- and negative-chirality subspaces have equal complex dimensions. Thus no such \(J\) exists on *any of these cutoffs with the inherited grading*. This is a sharply scoped index obstruction, not an obstruction to enlarging the system with an opposite-index sector or constructing a different graded correspondence. Adding only index-zero paired sectors cannot cancel the imbalance.

For this same six-manifold there is a concrete opposite-index candidate. The canonical bundle is \(K_X=\mathcal O(-3,-2)\). Serre duality gives
\[
 H^{0,3}(X,K_X\otimes E^*)\cong H^{0,0}(X,E)^*,
 \qquad \operatorname{index}(D_{K_X\otimes E^*})=-6.
\]
Using \(E\oplus(K_X\otimes E^*)\) therefore supplies six zero modes of each chirality and cancels this particular index obstruction. It does not by itself construct an order-zero-compatible real structure, a nonzero finite Dirac operator, or the physical gauge action; on the full exact kernel the projected free Dirac operator is still zero.

Independently of the inherited grading, the represented algebra on the particular six-dimensional zero-mode space is multiplicity-free:
\[
 \bigl(\mathbb C\oplus M_2(\mathbb C)\oplus M_3(\mathbb C)\bigr)'
 =\mathbb C\oplus\mathbb C I_2\oplus\mathbb C I_3.
\]
The complex-linear commutant is abelian, so a faithful antiunitary image of the noncommutative algebra cannot lie in that commutant. Therefore no antiunitary \(J\) on this six-dimensional space can satisfy order-zero for that representation, even after regrading. This is why the enlargement to a bimodule in §6.5 is useful. None of these statements is a no-go for a KK–NCG bridge.

The next calculation asks whether merely keeping more modes of the same background fixes the problem. It does not generate the needed inter-sector Higgs arrows. Let \(e_0,e_1,e_2\) project onto the three summands of \(E\). Every \(e_i\) commutes with \(D_E\) and with scalar multiplication, so it also commutes with any spectral projection \(P_\Lambda\) of \(D_E\). Therefore every compressed function and \(D_\Lambda=P_\Lambda D_EP_\Lambda\) is block diagonal in the bundle decomposition. All finite one-forms

\[
 \sum_k a_k[D_\Lambda,b_k]
\]

remain block diagonal. Adding higher eigenmodes in this same diagonal bundle background cannot produce a Dirac/Higgs arrow between the \(1\), \(2\), and \(3\) sectors. To evade this particular result, one must change the spectral problem—for example by deriving inter-bundle mixing, using a different module or correspondence, or showing that an interaction-induced effective operator breaks the superselection. The real structure and gauge action would then need independent proofs.

In particular, write \(D=D_E+V\), where \(V\) is additional interaction data, and take \(P\) to be the *unperturbed* zero-mode projector. Where the inverse exists, the Schur-complement effective operator is
\[
 D_{\rm eff}(z)=PDP-PDQ[Q(D-z)Q]^{-1}QDP,\qquad Q=1-P.
\]
It can contain interaction-dependent contributions \(PVP\) and virtual transitions through \(Q\). They remain block diagonal if \(V\) preserves all \(e_i\), but a derived off-diagonal interaction need not. There is a further grading restriction: if \(D\) is odd for the inherited grading, \(P\) lies entirely in the positive-chirality space, and \(QDQ\) is invertible, then \(D_{\rm eff}(0)\) is odd on an all-positive space and hence vanishes. To obtain a nonzero odd finite Dirac operator one needs opposite-chirality states or a changed graded construction, not merely a statement that off-diagonal interactions exist. At nonzero \(z\), the energy-dependent effective operator need not itself be an odd finite Dirac operator.

There is also a general real-structure warning. For a conventional commutative real spectral triple in which \(Jb^*J^{-1}=b\), and a \(J\)-invariant \(P\), the inherited \(J_P\) gives

\[
 [PaP,J_P(PbP)^*J_P^{-1}]=[PaP,PbP].
\]

Thus inherited order-zero fails whenever the compressed observables do not commute. The canonical spin-\(c\) projective example need not have such a parent \(J\); the statement is a separate conditional lemma. It shows why doubling or constructing a different left/right module may be necessary rather than automatic.

### 6.4 Continuing the obstruction test: a finite repair and orientability

The inherited-\(J\) obstruction is not a theorem that every noncommutative finite real triple is impossible. To test a concrete repair, take the real algebra \(\mathbb C\oplus\mathbb H\), put
\[
 H_{\rm toy}=(\mathbb C\oplus\mathbb C^2)\oplus
             \overline{(\mathbb C\oplus\mathbb C^2)},\qquad
 \rho(\lambda,q)=\operatorname{diag}(\lambda,q,\lambda I_3),
\]
and define, for a nonzero \(v\in\mathbb C^2\),
\[
 J(\psi,\chi)=(\bar\chi,\bar\psi),\quad
 \gamma=\operatorname{diag}(1,-I_2,-1,I_2),\quad
 D=\operatorname{diag}(D_v,\bar D_v),\quad
 D_v=\begin{pmatrix}0&v^\dagger\\v&0_2\end{pmatrix}.
\]

Direct finite-matrix calculation, also checked on a real basis of \(\mathbb C\oplus\mathbb H\), gives
\[
 J^2=1,\quad JD=DJ,\quad J\gamma=-\gamma J,\quad
 \{D,\gamma\}=0,\quad
 [\rho(a),J\rho(b)^*J^{-1}]=0,\quad
 [[D,\rho(a)],J\rho(b)^*J^{-1}]=0,
\]
while some \([D,\rho(a)]\ne0\). Thus an added conjugate module, a newly selected real structure and an inserted mixing matrix can repair *these particular* requirements. They were not derived from the projective geometry.

The repair still fails the usual finite orientability condition: for every \(a,b\), the particle singlet and the conjugate singlet have equal diagonal entries in \(\rho(a)J\rho(b)^*J^{-1}\), whereas the proposed \(\gamma\) has opposite entries there. No linear combination of such operators can equal \(\gamma\). In standard minimal terminology it is an even real finite spectral triple; it does not satisfy the additional orientability axiom. It also leaves the color algebra, correct gauge lift, spectral origin of \(v\), and Kasparov relation unaddressed.

More precisely, both left and right actions on the two singlets are the same complex character \(\lambda\). The grading defect is
\[
 \Delta=\operatorname{diag}(1,0,0,-1,0,0).
\]
The grading away from this self-conjugate bimodule is a sum of left-right algebra products, while every such product acts identically on the two singlets. Thus the operator-norm distance from \(\gamma\) to the space of finite orientation operators is exactly \(1\): the defect is localized on that two-state sector. This conclusion uses the same character on both sides; complex conjugate characters of a real complex summand must not be identified without checking the representation.

The same structural phenomenon is discussed in [Stephan (2006)](https://arxiv.org/abs/hep-th/0610097): in particular finite KO-6 models a self-conjugate, gauge-neutral sector can admit a Majorana-type term while failing finite orientability. This is a useful algebraic parallel, not an identification of the present sector with a physical neutrino. In the toy above the lifted gauge action is trivial on the two singlets. A \(J\)-compatible off-diagonal mass between them commutes with the reduced algebra, so it contributes no inner fluctuation.

### 6.5 An orientable real bimodule from the \(1\oplus2\oplus3\) spaces

There is a stronger algebraic repair which uses all three matrix blocks. Set \(V=\mathbb C\oplus\mathbb C^2\), \(C=\mathbb C^3\), and
\[
 H_{\rm bim}=\operatorname{Hom}(C,V)\oplus\operatorname{Hom}(V,C),
 \qquad\dim_{\mathbb C}H_{\rm bim}=18.
\]
For \(a=(\lambda,q,m)\in\mathbb C\oplus\mathbb H\oplus M_3(\mathbb C)\), let
\[
 L(a)=\operatorname{diag}(\lambda,q),\quad
 \rho(a)(X,Y)=(L(a)X,mY),\quad
 J(X,Y)=(Y^\dagger,X^\dagger).
\]
Take any nonzero \(v:\mathbb C\to\mathbb C^2\) and define
\[
 D_v=\begin{pmatrix}0&v^\dagger\\v&0_2\end{pmatrix},\qquad
 G=\operatorname{diag}(1,-I_2),\qquad
 D(X,Y)=(D_vX,YD_v),\quad
 \gamma(X,Y)=(GX,-YG).
\]
Direct calculation, independently checked on all 24 real basis elements of the algebra, gives
\[
 J^2=1,\quad JD=DJ,\quad J\gamma=-\gamma J,\quad
 \{D,\gamma\}=0,\quad
 [\rho(a),J\rho(b)^*J^{-1}]=0,\quad
 [[D,\rho(a)],J\rho(b)^*J^{-1}]=0,
\]
with \([D,\rho(a)]\ne0\) for some \(a\). If \(e_1,e_2,e_3\) are the three central block projections and \(e_i^\circ=Je_i^*J^{-1}\), orientability holds as well:
\[
 \gamma=(e_1-e_2)e_3^\circ-e_3(e_1^\circ-e_2^\circ).
\]
The off-diagonal bimodule can be viewed as a subspace of \(\operatorname{End}(\mathbb C\oplus\mathbb C^2\oplus\mathbb C^3)\). It is an explicit demonstration that the matrix-block result is compatible with an orientable KO-6 real finite triple with nonzero one-forms after changing the Hilbert module and Dirac operator. It is not a geometric derivation of those data, nor a full Standard Model representation.

There remains a precise finite limitation: using minimal \(K_0\) projections for the three real algebra summands, the intersection pairing is
\[
 \begin{pmatrix}0&0&1\\0&0&-2\\-1&2&0\end{pmatrix},
\]
of rank \(2\). Thus it fails the nondegenerate Poincaré-duality requirement if that additional axiom is imposed.

This degeneracy is not caused by the particular 18-dimensional choice or by orientability. For the conventional finite intersection form,
\[
 Q_{ij}=\operatorname{Tr}\!\left(\gamma\,\rho(p_i)J\rho(p_j)J^{-1}\right),
\]
\(J\gamma=-\gamma J\) and order-zero imply \(Q_{ij}=-Q_{ji}\). With three real algebra summands, this is a \(3\times3\) antisymmetric form and is necessarily singular; allowing the diagonal nonorientable pair does not repair it. This standard finite trace-pairing observation is analyzed in [Ćaćić](https://archive.mpim-bonn.mpg.de/id/eprint/456/1/preprint_2009_9.pdf). It should not be confused with a proof that every more general real Kasparov duality or multi-class pairing must fail.

### 6.6 Orientation loss under a heavy centralizer and spectral projection

The orientation defect can be linked to the centralizer operation of §7.2 in a finite example that preserves first-order even before reduction. Begin with the 18-dimensional bimodule of §6.5 and enlarge the algebra by one complex summand:
\[
 A_4=\mathbb C_1\oplus\mathbb H_2\oplus M_3(\mathbb C)_3\oplus\mathbb C_4
 \ni(\lambda,q,m,\mu).
\]
With \(H_{ij}=\operatorname{Hom}(V_j,V_i)\), \(V_1=V_4=\mathbb C\), \(V_2=\mathbb C^2\), \(V_3=\mathbb C^3\), take the parent space
\[
 H_{32}=H_{18}\oplus
 (H'_{13}\oplus H'_{31}\oplus H_{43}\oplus H_{34})
 \oplus(H_{14}\oplus H_{41}).
\]
Here the primed \(H'_{13},H'_{31}\) are copies distinct from those already in \(H_{18}\). Let \(JX=X^\dagger\), and assign the four bridge chiralities in the displayed order \(+,-,-,+\); the spectator pair \(H_{14}\oplus H_{41}\) has chiralities \(+,-\). Left and right actions are ordinary matrix multiplication. Take \(D_0\) to be the §6.5 Dirac operator on \(H_{18}\), and zero on the added \(14\) dimensions.

Define a self-adjoint \(T\) exchanging \(H'_{13}\leftrightarrow H_{43}\) and, by \(J\)-conjugation, \(H'_{31}\leftrightarrow H_{34}\); it vanishes on \(H_{18}\oplus H_{14}\oplus H_{41}\). These exchanges share one right or left algebra factor, respectively. Thus \(D_t=D_0+tT\) obeys order-zero, first-order, the KO-6 real and grading signs, and finite orientability over the parent algebra for **every** real \(t\). The first-order identities were checked on all 26 real basis elements of \(A_4\).

The conventional intersection pairing on minimal projections is
\[
 Q_4=\begin{pmatrix}
 0&0&2&1\\
 0&0&-2&0\\
 -2&2&0&1\\
 -1&0&-1&0
 \end{pmatrix},\qquad \det Q_4=4.
\]
It is nondegenerate over \(\mathbb Q\); the determinant is not unimodular and does not by itself establish integral or Kasparov duality.

The heavy centralizer is
\[
 A_T=A_4\cap\{T\}'=\{(\lambda,q,m,\mu):\mu=\lambda\}
 \cong \mathbb C\oplus\mathbb H\oplus M_3(\mathbb C).
\]
Equivalently, a fixed parent observable has uniformly bounded \(\|[D_t,\rho(a)]\|\) as \(|t|\to\infty\) precisely when it is in \(A_T\). The spectral distance between the scalar evaluation states is
\[
 d_{D_t}(\omega_1,\omega_4)=\frac1{|t|},\qquad t\ne0.
\]
For the upper bound use the bridge matrix element \(|t||\mu-\lambda|\); for equality take a self-adjoint element with \(\lambda=q=m=0\) and \(\mu=1/|t|\). The lifted gauge stabilizer of \(T\) also imposes equality of the two scalar unitary phases in this example; \(D_0\) can impose additional conditions.

For \(\|D_0\|<\Lambda<|t|\), the spectral cutoff \(P_\Lambda(D_t)\) is **exactly**
\[
 P=\operatorname{proj}_{\ker T},\qquad
 PH_{32}=H_{18}\oplus H_{14}\oplus H_{41}.
\]
It commutes with the parent representation, \(J\), and \(\gamma\), and \(PD_tP=D_0|_{H_{18}}\oplus0\) retains the nonzero finite one-forms of §6.5. Restricting the algebra as well to \(A_T\) gives a faithful 20-dimensional real KO-6 finite triple with order-zero and first-order. On the surviving spectator pair,
\[
 \rho(a)=\lambda I_2,\quad
 \rho(b)^\circ=\lambda_bI_2,\quad
 \gamma=\sigma_3.
\]
Every finite orientation operator is scalar on this pair and cannot reproduce \(\sigma_3\). Thus the nonorientable sector **survives both algebra centralization and the heavy spectral projection**, while the light finite Dirac operator is nonzero on the other sector. The spectator becomes gauge-neutral under the reduced lifted action, so it makes no direct contribution to the gauge-charge traces used for the Weinberg angle.

The two reduction operations are nevertheless logically distinct. If the heavy states are projected out but the full \(A_4\) is retained, the light 20-dimensional triple remains faithful and orientable: \(\lambda\) and \(\mu\) are still independently observable on \(H_{14}\oplus H_{41}\). The projected \(D_0\) has no coupling to \(\mu\), and consequently
\[
 d_{P D_tP}(\omega_1,\omega_4)=\infty,
 \qquad
 \lim_{|t|\to\infty}d_{D_t}(\omega_1,\omega_4)=0.
\]
The bounded-commutator selection carries the full-family metric identification into the light theory; it does not follow merely from deleting the heavy states. This example shows that spectral projection and the metric/algebra limit can give different effective descriptions.

The construction demonstrates a possible mechanism: opposite chiralities become indistinguishable to the reduced left-right observable algebra. It is an engineered finite model, not a KK derivation of \(T\), the gap or the algebra-selection criterion. It does not make the smooth oriented manifold \(X\) topologically nonorientable, establish a geometric \(11\to10\to9\) transition, or fix the Weinberg angle.

### 6.7 Which orientation information is lost?

On the six-dimensional projective manifold, geometric orientation is represented by a degree-six Hochschild cycle \(c_6\) through \(\pi_{D_0}(c_6)=\gamma_X\). For the zero-mode projector \(P_0\), every separately compressed commutator vanishes, \(P_0[D_0,a]P_0=0\), yet
\[
 P_0\pi_{D_0}(c_6)P_0=P_0\gamma_XP_0=P_0\ne0.
\]
The product before projection contains intermediate excursions through the discarded modes. Since compression is not multiplicative, it does not automatically transport a six-dimensional orientation cycle into a degree-zero finite one. This is a precise information-loss mechanism, not a proof that it causes the specific defect of §6.6.

### 6.8 Gauge symmetry on each side

The two constructions use related but distinct symmetry notions. For a compact internal Riemannian manifold \((X,h)\), suppose Killing fields \(K_a\) preserve all the background fields, perhaps up to bundle gauge transformations. The off-diagonal Kaluza–Klein metric contains
\[
 h_{mn}(dy^m+K_a^m A^a_\mu dx^\mu)
          (dy^n+K_b^n A^b_\nu dx^\nu).
\]
Spacetime-dependent internal diffeomorphisms then act as local gauge transformations. For a nontrivial background bundle, the relevant group is the lifted background-preserving symmetry group, not necessarily the full isometry group of \(h\). A retained massless gauge mode can have a nonconstant internal Killing-field profile; it is not required to be a constant scalar harmonic. A finite-energy effective theory and an exactly consistent nonlinear truncation are separate claims.

For the commutative algebra \(C^\infty(X)\), smooth algebra automorphisms correspond to diffeomorphisms, while the metric or Dirac operator selects isometries. Every inner automorphism of a commutative algebra is trivial. Thus a nontrivial isometry acts by an outer automorphism of the internal function algebra.

For a real finite spectral triple with faithful representation \(\rho\) satisfying order zero, define
\[
 \mathcal G_F=\{U_u=\rho(u)J_F\rho(u)J_F^{-1}:u\in U(A_F)\},
 \quad
 (A_F)_{J_F}=\{a\in A_F:\rho(a)J_F=J_F\rho(a)^*\}.
\]
Then \(\mathcal G_F\cong U(A_F)/U((A_F)_{J_F})\). The action on the represented algebra is the inner automorphism \(\operatorname{Ad}_u\), but the lift can act nontrivially on the Hilbert space even when \(\operatorname{Ad}_u\) is trivial. Hence \(\mathcal G_F\) maps onto \(\operatorname{Inn}(A_F)\) without necessarily being isomorphic to it. Gauge transformations act on fluctuated Dirac operators; they need not fix the selected background \(D_F\). These constructions are reviewed in [van den Dungen and van Suijlekom](https://arxiv.org/abs/1204.0328).

A finite counterexample to the identification of gauge group with inner automorphism group is \(A=\mathbb C\oplus\mathbb C\), acting on \(\mathbb C^4\) as \(\rho(a,b)=\operatorname{diag}(a,a,b,b)\). Let \(J\) exchange the two two-dimensional blocks and conjugate. For \(u=(e^{i\alpha},e^{i\beta})\),
\[
 U_u=\operatorname{diag}
 (e^{i(\alpha-\beta)},e^{i(\alpha-\beta)},
  e^{-i(\alpha-\beta)},e^{-i(\alpha-\beta)}).
\]
The lifted group is a relative \(U(1)\), although \(\operatorname{Inn}(\mathbb C\oplus\mathbb C)\) is trivial. A nonzero bimodule-linear finite mass can commute with the finite algebra; spacetime-dependent unitaries still produce the vector gauge field through the four-dimensional Dirac operator. See also the [almost-commutative electrodynamics construction](https://link.springer.com/chapter/10.1007/978-3-031-59120-4_11).

For the Standard Model real algebra,
\[
 U(A_F)=U(1)\times SU(2)\times U(3),\qquad
 \operatorname{Inn}_{\mathbb R}(A_F)\cong SO(3)\times PU(3).
\]
The inner automorphism group alone has no hypercharge \(U(1)\). With the Standard Model representation and the usual unimodularity condition, the resulting gauge **Lie algebra** is \(\mathfrak u(1)\oplus\mathfrak{su}(2)\oplus\mathfrak{su}(3)\). Global quotients and possible discrete components require the explicit representation and determinant convention. This group calculation does not determine the gauge kinetic coefficients.

### 6.9 An isometry becoming inner after compression

There is an explicit bridge already contained in the projective construction of §6.2. Equip the round \(S^2_R\simeq\mathbb{CP}^1\) with the spin-\(c\) Dolbeault Dirac operator twisted by \(\mathcal O(1)\). Let \(P\) project onto the two-dimensional kernel \(H^0(\mathbb{CP}^1,\mathcal O(1))\), and write \(n_i\) for the unit-sphere coordinate functions. In a suitable oriented basis,
\[
 Pn_iP=\frac{\sigma_i}{3},\qquad
 [Pn_iP,Pn_jP]=\frac{2i}{3}\epsilon_{ijk}Pn_kP,\qquad
 C^*(PC(S^2)P)=M_2(\mathbb C).
\]
For example, \(Pn_3^2P=I/3\), but \((Pn_3P)^2=I/9\). The compression is therefore not an algebra homomorphism. These formulas follow from the coherent-state projector \(p(n)=(I+n_i\sigma_i)/2\), the measure \(d\Omega/(4\pi)\), and \(\int n_in_j\,d\Omega/(4\pi)=\delta_{ij}/3\); an independent angular quadrature gives the same matrices.

The orientation-preserving base isometries form \(SO(3)\). The action lifts to \(SU(2)\) on the doublet, with the central \(-1\) acting trivially by conjugation. Consequently
\[
 \operatorname{Isom}^+(S^2)=SO(3)
 \;\cong\;PU(2)=\operatorname{Inn}(M_2(\mathbb C)),
\]
and rotations of \(n_i\) become inner conjugations of the compressed matrices. The spin-\(c\) bundle and background flux are extra input; this is a correspondence between two symmetry actions in a toy sector, not a solution of compactification dynamics or a derivation of \(A_F\). The two-dimensional kernel is entirely of one inherited chirality. Moreover, the commutant of the irreducible left \(M_2(\mathbb C)\) action on \(\mathbb C^2\) is scalar, so the right action required by a real noncommutative spectral triple cannot be obtained there. A suitable bimodule, real quaternionic form, finite Dirac operator and gauge lift remain to be derived.

In a related but distinct setting, the [2026 preprint by Dedushenko](https://arxiv.org/abs/2610.38702) develops local field theories on \(S^2\times\mathbb R\) that yield fuzzy-sphere Hamiltonians after higher Landau levels and a mediator are integrated out. This supports the use of controlled mode reduction as a source of fuzzy effective dynamics; it is not a KK gravity or Standard Model spectral-triple derivation.

An especially close earlier precedent is [Dolan and Szabo (2009)](https://arxiv.org/abs/0901.2491): an \(SU(2)\)-equivariant reduction of Yang–Mills–Dirac theory on \(M\times\mathbb{CP}^1\) with monopole flux gives lower-dimensional gauge–Higgs systems and fermion Yukawa couplings, and a fuzzy-sphere truncation of the KK tower. The model is a concrete precedent for a relation between smooth dimensional reduction and finite noncommutative modes. It does not by itself derive the specific real Standard Model spectral triple or the present eleven-dimensional background.

### 6.10 What “towerless” can mean

Let \(D_R=R^{-1}D_X+S\) on a fixed identified internal Hilbert space, where \(X\) is compact, \(D_X\) is self-adjoint with compact resolvent and a finite nonzero kernel \(P H\), and \(S\) is bounded. Set \(Q=1-P\) and assume the nonzero spectrum of \(D_X\) is separated from zero by \(\Delta>0\). At fixed finite \(z\) and sufficiently small \(R\), the exact Feshbach operator on the light space is
\[
 D_{\mathrm{eff}}(z)=PSP
   -PSQ\,[Q(D_R-z)Q]^{-1}QSP
   =PSP+O(R).
\]
The last term has norm at most
\[
 \frac{R\,\|PSQ\|^2}
 {\Delta-R(\|S\|+|z|)}
\]
when the denominator is positive. Thus the excited internal modes become heavy, while the kernel remains finite. If \(S=0\), the inherited finite operator is zero. Four-dimensional fields still have ordinary spacetime momenta and infinitely many quantum excitations; the statement concerns the **internal** tower. At a finite but small radius, \(E\ll\Delta/R\) gives an effective towerless description without claiming that the ultraviolet tower has disappeared. Unbounded spacetime operators require an energy restriction or appropriate relative bounds.

The order of limits is essential. For \(Z_R(t)=\operatorname{Tr}\exp(-tD_X^2/R^2)\),
\[
 \lim_{R\to0}Z_R(t)=\dim\ker D_X\quad(t>0).
\]
For each fixed \(R>0\), the small-\(t\) heat asymptotics still have the original positive metric dimension. The internal effective heat dimension can therefore be zero even when the finite factor carries KO-dimension \(6\); zero heat dimension alone neither supplies KO-6 nor makes the algebra noncommutative.

There is a significant distinction between the compressed operator algebra and the metric limit. For \(h_R=R^2h_1\) and connected \(X\), any uniformly Lipschitz-bounded family satisfies
\[
 \operatorname{osc}(f_R)
 \le R\,\operatorname{diam}(X,h_1)\,
       \|[D_R,f_R]\|\longrightarrow0
\]
when the commutator is the standard Dirac commutator. A bounded operator perturbation must either commute with the scalar multiplication action or be treated separately in this estimate. On the sphere, \(n_i\) have Dirac Lipschitz norm \(1/R\), whereas the physical coordinate matrices are
\[
 P(Rn_i)P=\frac{R}{3}\sigma_i\longrightarrow0.
\]
The scalar harmonics \(n_i\) also have Laplace eigenvalue \(2/R^2\); they are not independent light scalar modes in an ordinary low-energy field truncation. The compressed actions are well-defined operators on the retained doublet and generate an endomorphism algebra, but assigning that generated algebra to the effective geometry is an additional step. If one declares \(M_2(\mathbb C)\) to be the finite algebra and takes \(D_F=0\), distinct algebra states have infinite spectral distance, whereas distances between points on \(S^2_R\) tend to zero. Thus the naive projected triple does not reproduce the shrinking-sphere spectral metric. This does not exclude a different correspondence or rescaling.

The electroweak normalization is a separate test. In the convention of §1, for one generation of Standard Model Weyl particles,
\[
 \operatorname{tr}(T_3^2)=2,\qquad
 \operatorname{tr}(Y^2)=\frac{10}{3}.
\]
With a universal spectral-action coefficient this gives \(g_2^2/g_Y^2=5/3\), hence \(\cos^2\theta_W=5/8\) at the matching scale. On the KK side the corresponding kinetic matrix contains \(\int_X\sqrt h\,h(K_a,K_b)\), with possible additional terms from other fields. Matching groups does not match these quadratic forms; both the represented charges and the full kinetic action must agree.

There is also a physical limitation of the simplest literal collapse. In an unwarped pure Einstein–Hilbert reduction with fixed internal shape and conventionally normalized Killing generators, \(g_a^{-2}\sim M_4^2R^2\). If the four-dimensional Planck mass stays fixed, \(R\to0\) drives these gauge couplings to strong coupling. Other scalings or action terms can evade this conditional observation, but a weakly coupled finite-\(R\) effective theory is distinct from an automatically controlled \(R=0\) theory.

### 6.11 Flag-fiber zero modes and a quaternion algebra bundle

Take \(F_3=P_{\rm lines}(Q)\xrightarrow{\pi}\mathbb{CP}^2\), with \(\mathcal O_F(1)\) the dual of the tautological line. Choose the canonical vertical spin-\(c\) Dolbeault operator twisted by \(\mathcal O_F(k)\), \(k=0,1,2\). The fiberwise kernels form the actual bundles
\[
 E_1=\mathbf1,\qquad E_2=Q^*,\qquad E_3=\operatorname{Sym}^2Q^*,
 \qquad \operatorname{rank}_{\mathbb C}(E_i)=i.
\]
Here \(\pi_*\mathcal O_F(k)=\operatorname{Sym}^kQ^*\) and \(R^1\pi_*\mathcal O_F(k)=0\), by the [projective-bundle cohomology formula](https://stacks.math.columbia.edu/tag/01XS). On an individual \(\mathbb{CP}^1\), the same operator is the spin Dirac operator twisted by a line of degree \(n=k+1\), explaining the flux-index convention \(n=1,2,3\). The separate flux sectors are specified inputs; one physical field has not been shown to supply all three.

The fibers have the desired complex matrix sizes, but the global algebra is
\[
 \mathcal B_F
 =\Gamma\bigl(\operatorname{End}E_1\oplus
                    \operatorname{End}E_2\oplus
                    \operatorname{End}E_3\bigr).
\]
Splitting \(Q^*\) formally into Chern roots \(x,y\), with \(x+y=-h\), \(xy=h^2\), gives
\[
 \begin{array}{c|cc}
  &c_1&c_2\\ \hline
 E_2&-h&h^2\\
 E_3&-3h&6h^2
 \end{array},
 \quad
 c_2(\operatorname{End}E_2)=3h^2,\quad
 c_2(\operatorname{End}E_3)=18h^2.
\]
The direct sum of endomorphism bundles has \(c_2=21h^2\), so it is not the constant algebra bundle with fiber \(\mathbb C\oplus M_2(\mathbb C)\oplus M_3(\mathbb C)\). The individual bundles are split Azumaya algebras: \(\Gamma(\operatorname{End}E_i)\) is strongly Morita equivalent to \(C(\mathbb{CP}^2)\), and the direct sum is Morita equivalent to \(C(\mathbb{CP}^2)^3\). This equivalence retains the base; it is not Morita equivalence to a finite algebra alone. See [Zhang, Facts 2–3](https://ems.press/content/serial-article-files/30567).

There is a useful constructive refinement. A fiber of \(E_2\) is the pseudoreal \(SU(2)\) doublet, but \(c_1(E_2)=-h\) forbids a global antilinear automorphism \(E_2\to E_2\): such a map would give \(E_2\cong\overline E_2\), hence \(2h=0\). Nevertheless the endomorphism bundle has the well-defined real subalgebra bundle
\[
 \mathbb H_Q=\mathbb R\,I\oplus\mathfrak{su}(E_2)
 \subset\operatorname{End}_{\mathbb C}(E_2).
\]
Every fiber is \(\mathbb H\), with \(SO(3)\) acting by quaternionic automorphisms. The bundle is nonconstant:
\[
 w_2(\mathfrak{su}(E_2))=h\bmod2,\qquad
 p_1(\mathfrak{su}(E_2))=c_1(E_2)^2-4c_2(E_2)=-3h^2.
\]
The nonzero \(w_2\) obstructs an \(SU(2)\) lift of this \(SO(3)\) bundle, while the original \(U(2)\cong(SU(2)\times U(1))/\mathbb Z_2\) frame bundle exists. Thus a nontrivial quaternion algebra bundle arises naturally, but a constant \(\mathbb H\), a physical hypercharge assignment, and the KO-6 real structure are not obtained for free. The rank-three sector is an \(SU(2)\) spin-one representation, not a derived \(SU(3)\) color fundamental.

All the displayed vertical kernels have positive vertical chirality. A grade-exchanging KO-6 real structure therefore cannot act within that kernel alone. Relative duality gives a controlled candidate opposite sector:
\[
 L_k^-=\mathcal O_F(-k-2)\otimes\pi^*(\det Q^*),
 \quad R^1\pi_*L_k^-\cong
 (\operatorname{Sym}^kQ^*)^*.
\]
With these additional negative-chirality modes and Hermitian duality, a grade-exchanging antiunitary with square \(+1\) can be defined. The required algebra bimodule, order-zero and first-order conditions, Dirac mixing and gauge action still require a separate derivation.

The calculation can be continued along the base. For the natural quotient-bundle connection on \(Q\), the curvature endomorphisms at a base point span \(\mathfrak u(2)\); the holonomy is \(U(2)\). The representations \(E_1,E_2,E_3\) are pairwise inequivalent and irreducible. Hence the parallel endomorphisms of the displayed block algebra are just \(\mathbb C^3\). If a subsequent reduction assigns the mass operator \(\nabla^*\nabla\) to these endomorphism fields, integration by parts identifies the zero modes with parallel sections, giving only \(\mathbb C^3\), not the full matrix algebra. This is a conditional result for that operator and connection, not a general no-go for gauge fields, Killing isometries, or a different reduction.

### 6.12 The \(S^5\) reduction and a protected real-index mode

The second natural projection \(r:N\to S^5\) has a different global structure:
\[
 P=SU(3)\longrightarrow SU(3)/SU(2)=S^5,\qquad
 N=P\times_{SU(2)}\mathbb{CP}^1.
\]
The principal \(SU(2)\) bundle \(P\) is nontrivial. Principal \(SU(2)\) bundles on \(S^5\) are classified by \(\pi_4(SU(2))=\mathbb Z_2\); \(P\) is the nonzero class, since otherwise \(\pi_4(SU(3))\) would equal \(\pi_4(S^5\times SU(2))=\mathbb Z_2\), contrary to \(\pi_4(SU(3))=0\).

Let \(V=P\times_{SU(2)}\mathbb C^2\). The \(S^2\) family has a global vertical spin structure and, choosing homogeneous line twists \(\mathcal L_n\) restricting to \(\mathcal O(n)\), the positive vertical kernels are
\[
 \mathcal E_n
 =P\times_{SU(2)}\operatorname{Sym}^{n-1}\mathbb C^2,
 \qquad n=1,2,3.
\]
One concrete choice is \(\mathcal L_n=\pi_\ell^*\mathcal O_{\mathbb{CP}^2}(n)\) on \(N\). Thus \(\mathcal E_1=\mathbf1\), \(\mathcal E_2=V\), and \(\mathcal E_3=\operatorname{Sym}^2V\). The monopole spinor kernels follow from \(K_{\mathbb{CP}^1}^{1/2}=\mathcal O(-1)\); the choice of twist and connection is additional to the metric.

Write \(\rho:S^5\to\mathbb{CP}^2_{[u]}\) for the Hopf map. The quotient construction gives \(V\cong\rho^*Q\): the chosen unit vector \(u\) trivializes the pulled-back tautological line and hence \(\det V\). This supplies a global quaternionic structure. It is a nontrivial quaternionic line, and even as a complex rank-two bundle it is nontrivial, since \(\pi_4(U(2))=\mathbb Z_2\). The quaternionic structure is parallel for any \(SU(2)\)-compatible connection. Stabilizing as a quaternionic bundle preserves the nonzero class:
\[
 [V]-[\mathbb H]\ne0\quad\text{in}\quad
 \widetilde{KSp}^{\,0}(S^5)\cong KO^{-9}(\mathrm{pt})
 \cong\mathbb Z_2,
 \qquad
 \widetilde K^{\,0}(S^5)=0.
\]
Complexification therefore loses this \(\mathbb Z_2\) information. The algebra bundle \(\operatorname{End}(V)\) is nontrivial as a \(PU(2)\) algebra bundle, although the underlying rank-four complex vector bundle is trivial. The rank-three \(\operatorname{Sym}^2V\) is complex-trivial because \(\pi_4(U(3))=0\), while the natural real spin-one bundle is nontrivial. These are topology statements; none identifies the spin-one representation with color.

There is a sharper spectral consequence. Let \(D_{S^5,V}\) be the ordinary five-dimensional spin Dirac operator coupled to a quaternionic-compatible connection on \(V\). The spin pushforward sends the reduced \(KSp\) generator to the generator of \(KO^{-9}(\mathrm{pt})\): on an open five-ball it is the real Bott isomorphism, and the trivial quaternionic line contributes zero. The real mod-two index theorem therefore gives
\[
 \boxed{\dim_{\mathbb C}\ker D_{S^5,V}\equiv1\pmod2.}
\]
The kernel is nonempty for every spin metric and every \(SU(2)\)-compatible connection. In dimension five the spinor charge conjugation and the quaternionic structure on \(V\) combine into an antiunitary real structure of square \(+1\), under which the self-adjoint Dirac operator changes sign; \(iD_{S^5,V}\) is real skew-adjoint. The parity is the [real mod-two index](https://webhomes.maths.ed.ac.uk/~v1ranick/papers/as5.pdf). This does not say that the kernel has exactly one complex dimension.

For \(SU(3)\)-invariant metric and connection data there is also a direct check: at a base point,
\[
 \Sigma_5|_{SU(2)}\cong\mathbf2\oplus\mathbf1\oplus\mathbf1,
 \qquad
 \dim(\Sigma_5\otimes V)^{SU(2)}=1.
\]
The twisted Dirac operator preserves this invariant line; the antiunitary symmetry reverses the real eigenvalue, forcing that eigenvalue to vanish. The associated state is an \(SU(3)\) singlet.

This five-dimensional zero-mode mechanism has a direct historical precedent: [Witten, *An SU(2) Anomaly* (1982)](https://doi.org/10.1016/0370-2693(82)90728-6), footnote 2, describes the \(SU(3)\)-invariant \(S^5\) gauge background and the invariant fermion zero mode. A later bordism analysis also identifies the nontrivial \(SU(2)\) bundle on \(S^5\) through the mod-two index; see [García-Etxebarria and Montero](https://scoap3-prod-backend.s3.cern.ch/media/files/48946/10.1007/JHEP08%282019%29003_a.pdf). The connection to the chosen \(N\to S^5\) adiabatic family and the associated-connection comparison above are deductions for the present construction, not a claim of novelty for the five-dimensional index or zero mode. The appearance of this index does not by itself establish an anomaly in the proposed physical model.

For the natural quaternionic-preserving Hopf lift, this singlet also has Hopf weight zero. Indeed
\[
 a(t)=\operatorname{diag}(e^{-it/2},e^{-it/2},e^{it})
\]
acts on \(P=SU(3)\) by right multiplication and covers \(u\mapsto e^{it}u\). At \(t=2\pi\) it acts by \(-1\) on \(V\), while the spin lift of a \(2\pi\) Hopf rotation acts by \(-1\) on \(\Sigma_5\); the product closes to an honest circle action. The combined action preserves the antiunitary real structure. It therefore acts through \(O(1)\) on the unique invariant complex line, and by continuity the action is trivial.

More generally, if the metric and compatible connection are Hopf-invariant under this real lift, the odd-dimensional kernel is a real circle representation: nonzero weights occur in opposite pairs, so the zero-weight sector has odd dimension. This does not rule out additional charged pairs. The lift is part of the construction: the action that fixes the fibers of \(\pi_\ell^*\mathcal O(2)\) differs by the character \(e^{-it}\) and does not preserve the same effective real structure. Identification of the physical electromagnetic generator remains open.

There is a controlled adiabatic example. Equip \(N=P\times_{SU(2)}S^2\) with a connection metric
\[
 g_\varepsilon=r^*g_{S^5}+\varepsilon^2g_{S^2},
\]
using the round \(SU(2)\)-invariant fiber and an \(SU(2)\) connection on \(P\). On \(\mathcal L_2=P\times_{SU(2)}\mathcal O(2)\), choose the associated connection built from that principal connection and the invariant fiber monopole. The fibers are totally geodesic. After identifying the \(\varepsilon\)-dependent spinor Hilbert spaces, the Dirac operator has the standard submersion expansion
\[
 D_{N,\varepsilon}=\varepsilon^{-1}D_{\mathrm{vert}}
                    +D_{\mathrm{hor}}+\varepsilon C_\Omega,
 \qquad
 P_{\ker}D_{\mathrm{hor}}P_{\ker}=\pm D_{S^5,V}.
\]
The curvature term \(C_\Omega\) is bounded, reverses vertical chirality and has zero compression to the positive vertical kernel. A normalized lift of a zero mode of \(D_{S^5,V}\) is therefore an \(O(\varepsilon)\) quasimode, and compact self-adjointness implies
\[
 \operatorname{dist}(0,\operatorname{spec}D_{N,\varepsilon})
 \le C\varepsilon.
\]
Thus, for this explicitly specified geometric family, at least one seven-dimensional twisted Dirac eigenvalue tends to zero. The estimate alone does not assert an exact zero for \(\varepsilon>0\), a four-dimensional mass and charge assignment, or a solution of the higher-dimensional equations.

There is an exact strengthening in the homogeneous subfamily. Choose an \(SU(3)\)-invariant base metric, the canonical homogeneous \(SU(2)\) connection, and the associated monopole connection. At the homogeneous base point the isotropy is \(H=\operatorname{diag}(z,z^{-1},1)\). The horizontal spin module has \(H\)-weights \(1,-1,0,0\), the vertical half-spin modules have weights \(\pm1\), and \(\mathcal L_2\) has weight \(-2\). The unique invariant tensor has weights
\[
 1_{\rm horizontal}+1_{\rm vertical}-2_{\mathcal L_2}=0.
\]
There is no invariant tensor of the opposite vertical chirality. The invariant base zero mode lifts to this unique section. The vertical term annihilates it; parallel transport preserves the vertical kernel and the horizontal term is the twisted base Dirac operator, which also annihilates it. The \(SU(3)\)-equivariant curvature term reverses vertical chirality, and must therefore vanish on the invariant section. Consequently
\[
 \boxed{\ker D_{N,\varepsilon,\mathcal L_2}\ne0
 \quad\text{for every }\varepsilon>0}
\]
within this homogeneous family. This strengthens the general quasimode estimate and does not apply automatically to another line connection or arbitrary background fields.

Spectral control does not by itself control the background equations. In the round-fiber metric, vertical sectional curvature scales as \(\varepsilon^{-2}\). For fixed nonzero monopole number, the vertical field strength has norm \(O(\varepsilon^{-2})\); if an ordinary gauge kinetic term with fixed higher-dimensional coupling is assumed, the integral of \(|F|^2\) over a fiber scales as \(\varepsilon^{-2}\). A corresponding diverging gauge stress or backreaction must be treated in an actual gravity solution. Without a specified gauge action, this is a scaling test rather than an assertion about an existing eleven-dimensional solution.

The corresponding unbounded Kasparov factorization is available for this smooth spin submersion. With the line twist included in the vertical cycle,
\[
 [D_{N,\mathcal L_2}]
 = [D_{\mathrm{vert},\mathcal L_2}]
     \otimes_{C(S^5)}[D_{S^5}]
 \quad\text{in }KK^1(C(N),\mathbb C).
\]
The bounded curvature correction does not change the bounded \(KK\)-class; see [Kaad and van Suijlekom](https://arxiv.org/abs/1610.02873). This is a geometric \(7\to5\) Kasparov correspondence. It is not an equivalence to the finite Standard Model algebra. Taking the complex family index sees only the rank of \(V\), since \(\widetilde K^0(S^5)=0\); the quaternionic class and mod-two pairing require the real structure identified above.

The connection choice is material. Let \(\eta\) be the \(SU(3)\)-invariant contact form on \(S^5\), normalized by \(\eta(iu)=1\). The Fubini–Study Chern connection on \(\mathcal O_{\mathbb{CP}^2}(2)\), pulled back to the same line bundle, differs from the associated connection by \(i\,r^*\eta\). To see the coefficient, along \(u(t)=e^{it}e_3\) take the canonical \(SU(2)\)-horizontal lift \(g(t)=\operatorname{diag}(e^{-it/2},e^{-it/2},e^{it})\): the base line \(\ell=\mathbb Ce_1\) is fixed while the induced frame of \((\ell^*)^2\) picks up \(e^{it}\). \(SU(3)\) invariance fixes the one-form globally. The projected base connection therefore acquires \(i\eta I\), which does not preserve the quaternionic structure. On the unique invariant line the base Dirac eigenvalue is shifted from zero to \(\pm|\eta|\), for an invariant metric. Other accidental zero modes have not been excluded.

Other zero-order terms can also change the symmetry protecting the mod-two index. A complex field in \(\mathcal L_2\) is not automatically a real eleven-dimensional Majorana field: adding the conjugate flux sector and allowing mixing can pair the protected modes. The selected family is a controlled spectral construction, not yet a complete 11D-to-9D solution or a finite KO-6 Standard Model triple.

Finally, the nontrivial \(SU(2)\) bundle admits no reduction to a \(U(1)\) bundle, since every line bundle on \(S^5\) is trivial. Every \(SU(2)\) connection on \(P\) consequently has full connected holonomy \(SU(2)\). The parallel complex-linear endomorphisms of the three irreducible \(\mathcal E_n\) are again \(\mathbb C^3\). This is a conditional statement about a connection-Laplacian reduction of endomorphism fields; the separate metric-isometry gauge fields are not thereby removed.

### 6.13 Torus crossed product: finite quotient versus mode compression

For \(X=A\times E\cong T^6\) and \(G=S_3\times\mathbb Z_2\) acting as in §2.5, take
\[
 B=C(X)\rtimes G
\]
or the corresponding smooth crossed product. At the fixed point \(x_0=((0,0,0),0)\), evaluation gives the group algebra
\[
 C^*(G)\cong\mathbb C^4\oplus M_2(\mathbb C)^2.
\]
It supplies a one-dimensional trivial representation and a two-dimensional standard \(S_3\) representation.

A three-dimensional block also occurs, for a different reason. Choose
\[
 x_1=((z,z,-2z),0),\qquad 3z\ne0.
\]
The stabilizer is \(H=S_2\times\mathbb Z_2\), so the orbit has three points. On \(\ell^2(G/H)\), functions act by diagonal matrices and group elements permute the points. Diagonal cutdowns and permutations generate all \(M_3(\mathbb C)\). The \(S_3\) representation on this space is reducible, \(\mathbf1\oplus\mathbf2\); the full crossed-product representation is irreducible because the function algebra distinguishes the orbit points.

An invariant function separates the fixed orbit from the three-point orbit. Selecting the two fixed-point representations and the three-point representation therefore gives the exact finite quotient
\[
 \boxed{B\twoheadrightarrow
 \mathbb C\oplus M_2(\mathbb C)\oplus M_3(\mathbb C).}
\]
The same quotient exists for the smooth crossed product. An independent exact rational matrix calculation gives generated dimension \(1+4+9=14\). This is a new derivation in this narrative, not a claim of literature novelty. The representation is selected by hand, and the \(M_3\) factor alone is Morita equivalent to \(\mathbb C\); neither a physical color representation nor the real Standard Model algebra, \(J\), grading, finite Dirac operator, gauge action or charge normalization follows.

The quotient also does not automatically equal a KK spectral compression. Let \(X\) carry nonatomic volume measure, \(P\ne0\) be a finite-rank orthogonal projection on \(L^2(X,E)\), \(Q=1-P\), and let \(M_f\) be multiplication by \(f\). If \(f\mapsto PM_fP\) were multiplicative on \(C(X)\), then
\[
 P M_{|f|^2}P-(PM_fP)^*(PM_fP)
 =(QM_fP)^*(QM_fP)=0.
\]
Thus the range of \(P\) would be invariant under every \(M_f\). A finite-dimensional representation of \(C(X)\) decomposes into point evaluations, but a nonzero \(L^2\) vector cannot be supported at a single point of a nonatomic space. Hence no such nonzero \(P\) exists. This applies to the function subalgebra of \(B\) and separates exact point-supported quotient representations from finite-mode compression. The generated compressed algebra can still be noncommutative; approximation, singular limits, atomic measures and nonmultiplicative maps are not excluded.

The spin lift is another independent issue. At the fixed origin, a transposition acts as a rotation by \(\pi\) in one real two-plane and the identity on the remaining four directions. Either preimage in \(\mathrm{Spin}(6)\) squares to \(-1\). The specified Weyl action therefore admits no honest equivariant ordinary spin-structure lift at that fixed point, for any spin structure on the torus. A holomorphic action does admit the canonical spin-\(c\) lift on \(\Lambda^{0,*}\); the extra phase does not by itself construct the desired real KO-6 structure. Projective or internally twisted lifts are further possibilities.

## 7. Kasparov theory and the finite heavy-mass limit

### 7.1 The \(K\)-theory obstruction has a precise scope

\[
 K_0(C(\mathbb{CP}^2\times\mathbb{CP}^1))\cong\mathbb Z^6,\qquad
 K_1=0.
\]

For \(A_F=\mathbb C\oplus\mathbb H\oplus M_3(\mathbb C)\), viewed as a real algebra,
\[
 A_F\otimes_{\mathbb R}\mathbb C
 \cong\mathbb C\oplus\mathbb C\oplus M_2(\mathbb C)
       \oplus M_3(\mathbb C)\oplus M_3(\mathbb C),
 \quad K_0\cong\mathbb Z^5,\quad K_1=0.
\]

An invertible complex Kasparov KK-equivalence between these two complex algebras is impossible because it would induce isomorphic \(K\)-groups. Likewise an invertible real equivalence with complexification giving the displayed pair is impossible. For the actual torus slice, \(K_0\cong K_1\cong\mathbb Z^6\), so a full equivalence is also obstructed.

The full flag provides an instructive contrast. The six Schubert cells of \(F_3\) have dimensions \(0,2,2,4,4,6\). The product also has six even cells. The complex Atiyah–Hirzebruch spectral sequence gives
\[
 K_0(C(F_3))\cong K_0(C(\mathbb{CP}^2\times\mathbb{CP}^1))
 \cong\mathbb Z^6,\qquad K_1=0.
\]
All three algebras \(C(F_3)\), \(C(\mathbb{CP}^2\times\mathbb{CP}^1)\) and \(\mathbb C^6\) belong to the complex bootstrap class. The UCT has zero \(\operatorname{Ext}\) term because the relevant \(K\)-groups are free. Any graded group isomorphism and the inverse therefore lift, compatibly with Kasparov products, to inverse \(KK\)-classes:
\[
 \boxed{C(F_3)\simeq_{KK_{\mathbb C}}
 C(\mathbb{CP}^2\times\mathbb{CP}^1)
 \simeq_{KK_{\mathbb C}}\mathbb C^6.}
\]
This is noncanonical and does not preserve a chosen metric, cohomology ring, Dirac operator, real structure, or physical fields. Both six-manifolds still have rank-six complex \(K_0\), so neither is directly equivalent to the complexified finite Standard Model algebra of rank five. The selected complex finite quotient \(\mathbb C\oplus M_2(\mathbb C)\oplus M_3(\mathbb C)\) has rank-three \(K_0\) and is not directly equivalent either.

There is in fact a real \(K\)-theory distinction between the two standard real-valued function algebras. In the real Atiyah–Hirzebruch spectral sequence, the only potential contribution to \(KO^1\) in dimension six is \(H^2(-;\mathbb Z_2)\), with outgoing \(d_2=Sq^2\). The incoming \(d_2\) from \(H^0(-;\mathbb Z)\) vanishes. The possible \(d_4\) target is torsion-free \(H^6(-;\mathbb Z)\), so \(d_4\) also vanishes on the surviving two-torsion. Consequently \(KO^1\) is the kernel of squaring degree-two classes.

For the flag, \(h^2\) and \(u^2=hu+h^2\) are independent modulo two, so the kernel is zero. For the product, \(v^2=0\), giving one \(\mathbb Z_2\). Thus
\[
 \boxed{KO^1(F_3)=0,\qquad
 KO^1(\mathbb{CP}^2\times\mathbb{CP}^1)=\mathbb Z_2.}
\]
Equivalently, \(KO_7\) differs for \(C(F_3,\mathbb R)\) and \(C(\mathbb{CP}^2\times\mathbb{CP}^1,\mathbb R)\). These standard real forms are therefore **not** \(KKO\)-equivalent even though the complex algebras are \(KK\)-equivalent. This is a checked calculation using the [real \(KO\) spectral-sequence differential](https://www.maths.ed.ac.uk/~v1ranick/papers/zibrowius.pdf); it is not a claim that these are the only possible real structures or correspondences.

This does **not** forbid a noninvertible Kasparov correspondence, a projected sector, or a reduction after changing the comparison algebra. Such a cycle must still be constructed and shown to represent the desired Dirac and Clifford data. Rigorous codimension-one unbounded correspondences exist in other settings; see [van Suijlekom and Verhoeven](https://arxiv.org/abs/2212.08053). The existence of such correspondences is motivation, not a proof of this model.

### 7.2 The reported heavy-top selection

In the representation and dominant top operator \(T\) used in the [source document](https://chatgpt.com/library?file_id=libfile_024d1da3ff248191aa178f70546bb1e9&account_id=personal), the centralizer condition on the weak component is
\[
 q\binom10=\lambda\binom10
 \quad\Longrightarrow\quad
 q=\operatorname{diag}(\lambda,\bar\lambda).
\]

Thus, under that representation and an equal color-diagonal top term,
\[
 B_T=A_F\cap\{T\}'\cong\mathbb C\oplus M_3(\mathbb C),
 \qquad \dim_{\mathbb R}A_F=24,\quad \dim_{\mathbb R}B_T=20.
\]

This is a conditional algebraic calculation, not a unique dynamical limit. For \(D_{F,t}=tT+S\), projecting to \(\ker T\) instead produces \(P_0SP_0\) and compressed observables; it can lose faithfulness or multiplicativity. Separately, the unbroken gauge group is the stabilizer of the background under the lifted gauge action \(uJuJ^{-1}\), subject to the representation and unimodularity, not automatically the unitary group of the algebraic centralizer. A rank-three electroweak mass form leaving one neutral generator is consistent with the reported Higgs mechanism but does not identify these three constructions. Trace normalization and the unimodular lift remain necessary to compare gauge couplings.

## 8. Claim ledger: status, dependencies and tests

The assumptions in the cited sections are part of every claim. “What would overturn applicability” includes changing a hypothesis; it does not imply that a proved identity can be overturned within the assumptions.

| ID | Proposition and status | Dependencies / evidence | What would overturn applicability or falsify an extension |
|---|---|---|---|
| G1 | The \(7\to6\to5\) orbit dimensions occur in a smooth commutative 7-manifold: **proved geometrically**. The product parent is non-spin. | §2.1, \(\gcd(p,q)=1\); slices, not a solution. | A physical realization also requires a suitable twist and fields solving the equations. |
| G2 | \(\Lambda_{p,q}=\mathbb Z^2+\mathbb Z(1,q)/p\), and primitive lattice vectors give closed circles: **proved**. | §3.1, the specified deck action and \(2\pi\) convention. | A different quotient action or ineffectively normalized torus requires recalculation. |
| G2a | \(L(p,1)\) is a smooth principal circle bundle over \(\mathbb{CP}^1\) with Chern number \(\pm p\): **proved by the Hopf quotient**. | §2.1, \(q=1\); it connects the 7D lens geometry and 6D projective base. | A noncentral quotient or a different reduction circle requires a different bundle or an orbifold treatment. |
| G3 | Berger formula and \(p\)-cancellation: **proved in the displayed KK ansatz; quadrature verified**. | §3.2, \(q=1\), EH kinetic term, \(T_i,Y,Q\) and no additional gauge kinetic mixing. | Extra action terms, changed gauge embedding, broken \(U(2)\) isometry or thresholds invalidate direct physical use. |
| G4 | Quotient topology alone fixes no angle: **proved by two metrics on the same \(L(5,1)\)**. | G2–G3, unrestricted Berger shapes. | A specified physical theory may forbid one metric; it must prove an additional selection law. |
| G5 | \(p=5\) gives \(5/8\): **conditional on a closed primitive neutral circle and exact deck–center intersection**, not a topology-only result. | §4.2, specified branch and G3. | Allowing dense neutral flow or just deck containment removes the unique \(p=5\) inference. |
| G6 | The \(p=5\) neutral quotient is a weighted-projective orbifold: **proved conditionally**. | G5 and \((u,v)=(1,4)\). | A different reduction circle or a different geometric quotient need not have this stabilizer. |
| G7 | At the \(z_1=0\) endpoint, the original \(Q=T_3+Y\) acts trivially tangentially and rotates the normal plane: **proved in the chosen embedding**. | §5.3; tangential Gram form and original Higgs-vacuum convention. | A normal-bundle gauge field or a different geometric embedding may realize electromagnetism by another route. |
| G8 | \(\mathbb{CP}^2\times S^1\) has no ordinary spin structure, and \(s+q\ell\equiv0\bmod p\) for the stated scalar normal modes: **proved**. | §5.3, product topology and untwisted scalar deck action. | Spin-\(c\), other bundle twists and different spin lifts alter the fermionic mode rule. |
| G9 | \(N=S(Q)\) is spin and has the three displayed \(S^1,S^2,S^3\) bundle projections: **proved geometrically**. | §2.3, \(c(Q)=1+h+h^2\) and the homogeneous stabilizers. | A proposed background may fail the field equations or choose incompatible flux, spin lift or metric. |
| G10 | Neither \(F_3\) nor \(\mathbb{CP}^2\times\mathbb{CP}^1\) has a smooth surjective submersion to a five-manifold or a uniformly sectional-curvature-bounded collapse to a fixed smooth closed 5D target: **proved**. | §2.3, Euler characteristic \(6\) and the bounded-curvature fibration theorem. | Singular collapse, unbounded curvature, a stratified or boundary endpoint, and other six-manifolds are outside the statement. |
| G11 | Flag and product have different integral cohomology rings and spin properties: **proved**. | §2.4, the projective-bundle relation and \(w_2\). | Different spaces or twisted structures require a separate comparison. |
| G12 | The displayed torus/Weyl quotient is \(\mathbb{CP}^2\times\mathbb{CP}^1\) as a complex variety: **proved**. | §2.5, Abel–Jacobi and the specified \(S_3\times\mathbb Z_2\) action. | It is not a free quotient or a smooth flat metric quotient; another finite-group action may differ. |
| G13 | \(S(Q)\) and the \(c_2=\pm2\) pulled-back quaternionic Hopf bundle are distinct: **proved**. | §2.4, \(H^4\), \(w_2\) and Gysin sequences. | Altering either bundle changes the comparison. |
| E1 | Spectral-action and Berger \(5/8\) use compatible local charge conventions: **proved conditionally**. | §3.3, same \(Q,Y\), same matching scale and \(\xi^2=5/2\). | A mismatch in represented charges, normalization, global gauge group or scale defeats physical identification. |
| E2 | Reported flag \(1/4\): **not reconstructed from the parallel transcript**. | §3.3 gives one consistent \(SU(3)\) example, not proof of that specific derivation. | The original flag embedding or kinetic matrix could give another ratio. |
| E3 | Same-metric orbit model has \(\rho=\xi^{-2}\), so \(5/8\) and \(\rho=1\) are incompatible: **proved in that model**. | §5, single orbit, common metric, tree-level canonical gauge fields. | A derived extra mass sector, threshold corrections, or a different model can evade the premises. |
| E4 | \(G_F=1/(\sqrt2\kappa a^2)\): **proved in the single-\(W\) orbit model**, not a geometric prediction of \(G_F\). | E3 and charged-current matching; \(\kappa\) is extra. | Additional light mediators, different current normalization or a derived \(\kappa\) change the inference. |
| E5 | In the fixed-coupling \(M_W\to\infty\) limit the tree-level Fermi coefficient tends to zero; beta decay is absent if no other charged-current operator survives: **proved conditionally**. | §5.1, matched single-\(W\) low-energy theory, fixed low-energy kinematics. | Independent contact interactions, other mediators, or nonstandard simultaneous coupling scaling change the conclusion. |
| F1 | The chosen dominant top \(T\) has centralizer \(\mathbb C\oplus M_3(\mathbb C)\): **conditional algebraic derivation**. | §7.2 and the source representation. | A different \(T\), representation, color action, or degeneracy alters the centralizer. |
| F2 | Algebra centralization, kernel compression and lifted gauge stabilization are distinct: **proved as logical constructions**. | §7.2. | Equivalence in any specific model requires a separate explicit isomorphism. |
| F3 | A single 9D Majorana scalar bilinear vanishes, while paired real fields and complex Dirac fields can have mass: **standard result**. | §5.2, 9D Lorentz invariance, anticommuting fields and the appropriate real spin representation. | A non-scalar background coupling, broken 9D symmetry, different gauge module or 4D effective mass is a different question. |
| F4 | At fixed \(g_2\), the usual \(v\to\infty\) weak limit keeps \(m_f\ne0\) only with \(y_f\sim1/v\): **proved in the elementary electroweak model**. | §5.5, \(M_W=g_2v/2\), \(m_f=y_fv/\sqrt2\). | Independent mass generation or other mediators change the conclusion. |
| N1 | The compressed operator system has complex dimension \(12\), while the generated algebra is the stated three matrix blocks of dimension \(14\): **proved; finite-matrix checked**. | §6.2, projective \(X\), chosen \(E\), zero-mode \(P\), explicit distinction between operator system and generated \(C^*\)-algebra. | A different bundle, projection or demand that compression itself be a homomorphism changes the claim. |
| N1a | At \(p=5\), the degree-one projective doublet is not an untwisted scalar Hopf mode; the first positive compatible degree gives a six-dimensional holomorphic sector: **proved; finite-matrix checked**. | G2a, §6.2, scalar deck invariance and chosen spin-\(c\) holomorphic sector. | A flat deck-character twist, different field bundle or another spectral sector changes the selection rule. |
| N1b | At fixed projective base and bundle, changing the Hopf radius varies the Berger angle while leaving that base zero-mode algebra fixed: **proved within the two displayed constructions**. | G3, G2a and §6.2; this does not identify the base projector with a full parent cutoff. | A physical full-operator spectral threshold can change the retained sector and requires separate analysis. |
| N2 | This zero-mode model has no inherited KO-6 structure or Dirac one-forms; no symmetric cutoff of the same index-\(6\) operator can supply an anti-commuting \(J\) for the inherited grading: **proved**. | N1 and §6.3; the six-dimensional zero-mode representation also has abelian commutant. | An opposite-index sector, different graded correspondence, or a changed representation escapes the hypotheses. |
| N3 | Higher modes of the same diagonal background cannot generate cross-bundle one-forms: **proved**. | N1–N2 and §6.3, spectral projection and block-preserving scalar multiplication. | A derived operator that mixes the bundle summands or a different correspondence evades the hypothesis. |
| N4 | Naively inherited \(J\) fails order-zero for noncommuting compressions: **proved conditionally**. | §6.3, real parent with \(Jb^*J^{-1}=b\), \(JP=PJ\). | A different bimodule/real structure, or absence of a parent \(J\), escapes the lemma. |
| N5 | A doubled \(\mathbb C\oplus\mathbb H\) toy model has KO-6 signs, order-zero, first-order and nonzero one-forms, but fails finite orientability: **explicit finite-matrix calculation**. | §6.4; the conjugate module and mixing \(v\) are selected by hand. | A different representation may satisfy orientability; it would still need a controlled geometric derivation. |
| N6 | An 18-dimensional bimodule over \(\mathbb C\oplus\mathbb H\oplus M_3(\mathbb C)\) satisfies KO-6 signs, order-zero, first-order, orientability and nonzero one-forms; the intersection pairing has rank \(2\): **explicit finite-matrix calculation**. | §6.5; \(H_{\rm bim}\) and \(D_v\) are selected from the matrix blocks rather than derived by reduction. | A different bimodule can alter the pairing entries, but the odd-rank obstruction N7 persists; a KK derivation and gauge lift remain unproved. |
| N7 | The ordinary finite intersection form for a real KO-6 bimodule over the three-summand \(A_F\) is skew and hence singular: **proved under the trace-pairing definition**. | §6.5, order-zero and \(J\gamma=-\gamma J\); no orientability assumption. | A different real Kasparov duality or multi-class construction is not decided by this matrix. |
| N8 | An orientable four-summand parent can reduce to a nonorientable, faithful three-summand finite triple with nonzero one-forms, while preserving first-order throughout: **explicit 32D finite-matrix model**. | §6.6, combined centralizer and low-energy projection; the defect survives on the 20D light space. | Projection alone preserves orientability and makes the two scalar states infinitely distant; the algebra restriction and the geometric justification remain independent requirements. |
| N9 | A nonzero grading-odd bimodule-linear finite mass forbids the usual finite orientability cycle: **proved**, with the published QED triple as a concrete example. | §5.4, both left and right commutation and \(\gamma^2=1\). | Mere gauge invariance or the absence of a propagating Higgs is weaker and does not entail the result. |
| N10 | A relative \(U(1)\) can act through the real lift while the inner automorphism group is trivial: **explicit matrix calculation**. | §6.8, the displayed representation and \(J\). | A different \(J\) or representation changes the kernel and gauge lift. |
| N11 | Round-sphere rotations become inner automorphisms of the compressed \(M_2\) algebra: **proved and numerically checked**. | §6.9, the spin-\(c\) \(\mathcal O(1)\) kernel and chosen rotational lift. | Other projections or backgrounds can break equivariance or alter the resulting algebra. |
| N12 | A gapped Dirac family has a finite low-energy sector with the stated \(O(R)\) Feshbach correction: **proved under the bounded-perturbation assumptions**. | §6.10, compact resolvent, finite kernel and gap. | Missing zero modes, closing gap, or unbounded \(R\)-dependent couplings require a new estimate. |
| N13 | The standard connected metric collapse selects asymptotically constant bounded-Lipschitz scalar functions; the simple \((M_2,\mathbb C^2,0)\) projection does not reproduce the collapsing spectral metric: **proved under the displayed assumptions**. | N11–N12 and §6.10. | Different rescaling, correspondence, spectral data, or an explicitly derived finite geometry are separate possibilities. |
| N14 | Isometry–inner group agreement produces neither the Standard Model finite triple nor coupling matching by itself: **proved as a logical limitation**. | §§6.8–6.10, represented gauge charges, kinetic form and KO-6 requirements. | An explicit model satisfying the missing geometric and representation data would establish more, not contradict this limitation. |
| N15 | The flag-fiber kernels are \(1,Q^*,\operatorname{Sym}^2Q^*\); they define a nonconstant matrix algebra bundle and a nonconstant quaternion algebra bundle: **proved**. | §6.11, the chosen spin-\(c\) family, Chern classes and real form. | Other twists or a different projection change the bundles; a derived bimodule and KO-6 structure remain separate. |
| N16 | The \(N\to S^5\) degree-two fiber kernel is a quaternionic line with nonzero reduced \(KSp\) class, and the corresponding twisted base Dirac kernel has odd parity: **proved under the stated \(SU(2)\)-compatible twist**. The homogeneous singlet is neutral under the specified real Hopf lift. | §6.12, nontrivial \(SU(3)\to S^5\), real index, spin pushforward and lifted circle action. | A connection breaking quaternionic compatibility, a different circle lift, conjugate-sector mixing or a different background changes the applicable operator. |
| N17 | The associated connection-metric family has a twisted 7D eigenvalue within \(C\varepsilon\) of zero; the \(SU(3)\)-homogeneous subfamily has an exact zero for every \(\varepsilon>0\): **proved under the stated spectral assumptions**. | N16, §6.12, horizontal kernel preservation and the isotropy-weight calculation. | Different background terms or the pulled-back Fubini–Study connection change the effective operator; no 11D solution is implied. |
| N18 | The stated torus crossed product has a finite quotient \(\mathbb C\oplus M_2\oplus M_3\): **proved; exact finite-matrix checked**. | §6.13, one fixed orbit and one three-point orbit. | Another group action, a required real structure or an actual spectral cutoff demands additional work. |
| N19 | A nonzero finite-rank compression of all scalar multipliers on a nonatomic space cannot be multiplicative: **proved**. | §6.13, the positive Schwarz defect and point-evaluation argument. | Atomic measures, approximate or nonmultiplicative compression, and abstract quotient representations are outside the statement. |
| N20 | The torus Weyl action has no honest equivariant ordinary spin lift at the transposition fixed point: **proved**. | §6.13, specified action and \(\mathrm{Spin}(6)\) lifts. | A spin-\(c\), projective or internally twisted action is a different construction. |
| N21 | The natural connection-Laplacian zero-mode algebra of the displayed flag or \(S^5\) endomorphism bundles is \(\mathbb C^3\): **proved conditionally**. | §§6.11–6.12, full \(U(2)\) or \(SU(2)\) holonomy and \(\nabla^*\nabla\). | Other operators, background couplings, gauge-isometry modes or unrelated connections can change the massless spectrum. |
| K1 | The specified six-dimensional function algebra and \(A_F\) are not directly KK-equivalent: **proved**. | §7.1, comparison after real complexification, \(K\)-group ranks. | Changing the comparison algebra or asking only for a noninvertible correspondence avoids the conclusion. |
| K2 | A KO-6 factor can survive a metric collapse in principle: **conditional illustration, without a construction for this model**. | §2.2; Clifford multiplicities, appropriate \(J\), spin structure. | Failure of a vertical zero mode or inability to define the required real structure in the chosen family. |
| K3 | Product and flag are complex \(KK\)-equivalent but the standard real forms are not \(KKO\)-equivalent: **proved**. | §7.1, UCT and \(KO^1=0\) versus \(\mathbb Z_2\). | Different real structures, noninvertible cycles or dropping the requirement of an invertible equivalence are separate questions. |
| K4 | The \(N\to S^5\) twisted Dirac operator factors through the vertical family in complex Kasparov theory: **proved by the spin-submersion theorem**. | §6.12, specified spin and twisting data; bounded curvature term. | The factorization does not imply an equivalence to \(A_F\), a finite KO-6 triple, or a dynamical solution. |
| D1 | A common stabilized geometry fixes both \(5/8\) and \(G_F\) without unrelated tunings: **open**. | G3, E1, E4 and actual field equations/stability, with E3 as a counterexample to the simplest class. | Any candidate is falsified if the solutions retain free shape/scale moduli or fail the mass and coupling relations. |

## 9. Dimensional synthesis and remaining questions

### Eleven dimensions: a spin parent and a spectral family

For \(M_4\times N\), \(N=S(Q)\) is a smooth spin seven-manifold with the three fibrations in §2.3. The alternate product \(M_4\times\mathbb{CP}^2\times L(p,q)\) gives the explicit orbit-slice pattern in §2.1 but is non-spin for spin \(M_4\); a suitable twist is needed for ordinary spinor fields. Both are geometric ansätze, not established eleven-dimensional solutions.

The \(S^2\)-fiber reduction \(N\to S^5\) has a globally defined degree-two monopole sector. The vertical kernel is the quaternionic bundle \(V\), with nonzero reduced \(KSp\) class. The twisted five-dimensional Dirac operator has odd kernel parity for a quaternionic-compatible connection. The homogeneous associated-connection metric has an exact seven-dimensional zero mode at every positive fiber radius; more general associated data give at least the controlled small-eigenvalue estimate of §6.12. The homogeneous mode is neutral for the specified real Hopf lift. A real eleven-dimensional Majorana construction, the field equations and backreaction remain open.

### Ten dimensions: ordinary geometry and a possible finite factor

Two six-dimensional quotients are \(F_3\) and \(\mathbb{CP}^2\times\mathbb{CP}^1\); the product construction also has regular \(\mathbb{CP}^2\times T^2\) slices. These spaces arise by different operations. The flag is spin and the other two are not; all are ordinary smooth manifolds. The flag and product have the same complex \(K\)-groups and are equivalent in complex \(KK\), while \(KO^1\) distinguishes the standard real function algebras. The Euler characteristic of either geometry excludes a smooth one-dimensional fibration and, under a uniform sectional-curvature bound, a collapse to a smooth five-manifold.

The flag fibers supply matrix-algebra bundles with ranks \(1,2,3\), and a nonconstant quaternion algebra bundle. The product zero-mode construction supplies a finite complex algebra with these block sizes after compression. The torus Weyl crossed product has the same finite complex algebra as a selected quotient. None of these statements proves the Standard Model real spectral triple or the electroweak couplings. The complex quotient is not the complexification of the real Standard Model algebra.

### Nine dimensions: the endpoint and weak decoupling

The candidate internal spaces are \(S^5\) and \(\mathbb{CP}^2\times S^1\). The former is spin and admits a Hopf-squashed \(U(3)\) isometry; the latter is non-spin and admits a spin-\(c\) treatment. The Lie algebra \(\mathfrak{su}(3)\oplus\mathfrak u(1)\) is a necessary symmetry match, not a charge assignment. The round untwisted \(S^5\) has no Dirac zero modes, while the specified quaternionic twist produces the protected sector above.

Integrating out a finite-mass \(W\) leaves the Fermi contact interaction. In the strict \(M_W,M_Z\to\infty\) limit with finite couplings and no other weak operators, \(G_F\to0\) and ordinary beta decay disappears. A four-dimensional Dirac mass for vectorlike residual charges is allowed; in the elementary Higgs benchmark a finite mass during \(v\to\infty\) requires \(y_f\sim v^{-1}\). Nine-dimensional Majorana bilinears and four-dimensional Dirac masses are distinct questions.

### Couplings and the bridge

In the specified lens Berger ansatz, \(p\) cancels from the normalized kinetic ratio. The metrics \(\xi^2=1\) and \(\xi^2=5/2\) on the same \(L(5,1)\) give \(\cos^2\theta_W=1/2\) and \(5/8\). A special neutral-circle closure yields a conditional \(p=5\) resonance but is not forced by the quotient. In the same-metric symmetry-breaking model, \(5/8\) gives \(\rho=2/5\); the Fermi scale additionally depends on \(\kappa a^2\). The conventional spectral-action \(5/8\) uses a representation trace at a matching scale and has not been derived from these geometric fields.

Compression, algebra centralization, spectral projection and gauge stabilization are different operations. The \(S^2\) toy sector turns rotations into inner automorphisms of compressed matrices, but the compressed algebra and the collapsed spectral metric are different limits. The \(N\to S^5\) Dirac operator has a genuine geometric Kasparov factorization, not an equivalence to the finite Standard Model triple. The explicit finite models in §§6.4–6.6 show how KO-6, mixing and finite orientability can coexist or be lost; no geometric reduction has selected the required bimodule.

The remaining joint problem is to exhibit one higher-dimensional action and background supporting the geometry, flux and connection, derive the real finite left/right module and gauge lift, and calculate the fermion masses, weak decoupling, Weinberg normalization and \(G_F\) on that same background. Curvature and monopole stress can diverge in the strict collapse even when the spectral limit is controlled.
