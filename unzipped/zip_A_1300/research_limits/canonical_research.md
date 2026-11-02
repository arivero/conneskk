# Kaluza–Klein limits, real spectral algebras and the internal sequence 7 → 6 → 5

Canonical consolidated research account — 2 November 2026.

This document supersedes the status summaries in the earlier working notes. It incorporates the existing finite-limit, twistor, boundary and nine-dimensional calculations and the Aloff–Wallach, flag and torus/Weyl handoff. Earlier notes remain derivation appendices. No manifold is identified with a Standard Model vacuum from dimensions or symmetry alone.

**Status convention.** **Proved** means an exact argument is supplied here or an identified theorem applies with stated hypotheses; it is not a claim of priority. **Checked calculation** means a finite computation has been derived and independently reproduced in `canonical_checks.py` or the earlier scripts. **Conditional** identifies a construction with additional background, analytic or representation assumptions. **Conjectural** identifies the proposed physical interpretation or a missing derivation.

The decisive calculation is the vertical monopole Dirac family of N7→S5. Its outcome is that fluxes 1,2,3 give ranks 1,2,3 but do not directly give the desired constant algebra or non-Abelian gauge zero modes. Following that outcome, the different flux content 1,1,2 gives a geometric route to the compensating spinor bundle used in the earlier nine-dimensional model. Its connection can be engineered; its electric charge and supporting vacuum are not derived.

The compression mechanism itself remains central. If P is a finite-mode projection, Q=1-P and a,b are commuting multiplication operators, then [PaP,PbP]=PbQaP-PaQbP. Noncommutativity can therefore arise from eliminating modes. Such compression is not an algebra homomorphism: the represented algebra, its opposite action, the selected modes and their connections must all be tracked.

## 1. The candidate geometry, with conventions fixed

Let h=c1(O(1)) on CP2. The universal quotient bundle Q in

\[
0\longrightarrow\mathcal O(-1)\longrightarrow\underline{\mathbb C}^3
\longrightarrow Q\longrightarrow0
\]

has c1(Q)=h and c2(Q)=h2. A Hermitian metric identifies Q with the orthogonal complement of the tautological line. Hence

\[
N=S(Q)=\{(\ell,u):\ell\in\mathbb{CP}^2,\ |u|=1,\ u\perp\ell\}.
\]

At (Ce1,e2), its SU3 stabilizer is diag(e^{it},1,e^{-it}). Permuting coordinates identifies this with the (1,-1,0) convention for the Aloff–Wallach space. **Proved:**

\[
N\simeq SU(3)/U(1)_{1,0}\simeq N_{1,-1}.
\]

The maps are explicit:

| Map | Fibre | Description | Status |
|---|---|---|---|
| N→CP2_l | S3 | Forget u | Proved |
| N→F=SU3/T2 | S1 | Send (l,u) to (l,Cu) | Proved |
| N→S5=SU3/SU2 | S2 | Send (l,u) to u | Proved |

Here F=P(Q), with the convention that P parametrizes lines. These structures agree with Lehmann's discussion [1]. Their existence alone is not a dynamical interpolation.

The stable tangent identity

\[
TN\oplus\mathbb R\simeq p^*(T\mathbb{CP}^2\oplus Q_{\mathbb R})
\]

gives w2(N)=p*(3h+h)=0 mod 2. Thus N is spin and simply connected. Its integral cohomology is Z in degrees 0,2,5,7 and zero otherwise; in particular H4(N;Z)=0. **Proved**, using the S3-sphere-bundle Gysin sequence with Euler class h2.

### A genuine sequential orbit-space chain also exists

Let R act freely by u→e^{i theta}u. On F let L be left multiplication by diag(lambda^{-2},lambda,lambda). Left L and right R commute upstairs on N. Atiyah–Witten establish F/L≅S5 [2]. Therefore

\[
N^7\xrightarrow{/R}F^6\xrightarrow{/L}Y^5\simeq S^5,
\qquad N/(R\times L)\simeq Y.
\]

**Proved as quotient geometry.** L has three fixed CP1 strata; its central Z3 kernel on F must be removed for an effective action. The induced metric on Y is singular. The residual connected symmetry inherited from this quotient is SO3, up to covering conventions. This Y is distinct as a metric, equivariant and spectral construction from the smooth homogeneous base S5 of N→S5. No identification of those two reductions has been proved.

For a connection metric on N→F with a basic coefficient connection, shrinking the free R fibres is an ordinary circle collapse. F is spin, and the unique spin structure on N is projectable, so the untwisted spin operator has an invariant sector. The relevant spectral convergence is covered by the circle-collapse results of Ammann and Bär [3]. A general equivariant coefficient connection can have a Wilson line and needs a separate vertical-kernel check; this is computed for the engineered example in section 5. A complete 10D Weyl projection does not follow from retaining the whole parent spinor module.

The second step can use the earlier spectral family D_tau=D_F+tau Gamma_F L, on an equivariant bundle with an effective projectable lift. Its square is D_F2+tau2 L2, so nonzero circle momentum is suppressed with resolvent bound (1+tau2)^(-1/2). This supplies a controlled complex/ungraded quotient limit. Keeping the even real grading requires the stated Clifford doubling in the earlier calculation. **Conditional:** choosing compatible background connections, lifts and physical fermion projections is additional data; neither step has been derived from weak-boson masses or a supported field-equation solution.

## 2. Keep the product and flag candidates separate

Write X_a=CP2×CP1 and X_b=F=P(Q). Let x=c1(m*) for the tautological line m⊂Q on F, and y the generator from CP1 on the product. Direct Chern-class and projective-bundle calculations give:

| Invariant | X_a | X_b | Status |
|---|---|---|---|
| Integral ring | Z[h,y]/(h3,y2) | Z[h,x]/(h3,x2+hx+h2) | Proved |
| Betti numbers in degrees 0,2,4,6 | 1,2,2,1 | 1,2,2,1 | Proved |
| c1 for the indicated complex structure | 3h+2y | 4h+2x | Checked calculation |
| w2 | h mod 2 | 0 | Proved |
| p1 | 3h2 | 0 | Checked calculation |

The flag has no nonzero square-zero degree-two integral class: (a h+b x)2=0 requires a2-b2=2ab-b2=0, hence a=b=0. The product has y2=0. They are not diffeomorphic and their commutative C-star algebras are not strongly Morita equivalent.

**A useful operator-algebraic relationship is nevertheless exact.** Use vertical Dolbeault/Spin-c operators on the CP1 fibres, twisted by O(n-1), n>0. Their kernel bundles over CP2 are

\[
K^a_n=\underline{\mathbb C}^{\,n},\qquad
K^b_n=\operatorname{Sym}^{n-1}(Q^*).
\]

Consequently the two effective complex endomorphism algebras are respectively C(CP2,M_n(C)) and Gamma(End K^b_n). Each is strongly Morita equivalent to C(CP2), through its defining bundle; this does not give an isomorphism preserving their connections, real structures or finite ranks.

For n=2 the flag kernel has (c1,c2)=(-h,h2); for n=3 it has (-3h,6h2). They are not flat trivial bundles. The product kernel can be constant and flat. Thus the product retains a genuine advantage for constant finite matrix factors, while the flag supplies a spin six-manifold and the relation to N.

One spin distinction matters: the vertical tangent of F→CP2 has c1=h+2x and is NOT spin by itself. Its w2 cancels the base w2 in the total flag. A family of ordinary fibre spin bundles cannot be assumed globally without the determinant compensation; the global operator above is naturally vertical Spin-c. A pseudoreal doublet on each fibre does not by itself define a global quaternionic real spectral module. A twisted bundle of quaternionic algebras can exist projectively, but it is not a constant H summand with an already specified J. **Proved/conditional as indicated.**

## 3. Two different S3 bundles and the circle endpoints

The quotient map q:CP2→CP2/conjugation≅S4 is an oriented twofold branched covering with branch locus RP2 [4]. Pulling back the quaternionic Hopf bundle gives a principal SU2 bundle P with c2=±2h2. Its sphere bundle is distinct from S(Q), where c2(Q)=h2 and c1(Q)=h.

There is a further distinction: **P is nonspin.** Its vertical principal-bundle tangent is trivial, so TP≅q_P*TCP2⊕R3 and w2(P)=q_P*h≠0. The S3-fibre sequence makes q_P* injective in degree two mod 2. Also H4(P;Z)=Z2, whereas H4(N;Z)=0. Both have pi2=Z, so neither total space is S7. **Proved.** The quaternionic bundle structure does not, on its own, supply a spin seven-manifold.

Principal circle bundles P_k over CP2 have Euler/Chern class k h. Their total spaces are CP2×S1 for k=0, S5 for |k|=1, and S5/Z_|k| for |k|>1, up to orientation conventions. Since TP_k≅pi*TCP2⊕R and the mod-2 Gysin sequence kills h exactly when k is odd, they are spin exactly for odd k. **Proved.**

For generic Hopf–Berger metrics on S5 the connected isometry group is U3. Product FS×circle metrics on CP2×S1 have the same local su3+u1 gauge algebra but require Spin-c fermionic data. Neither fact identifies the Abelian generator as electromagnetism. Round S5 has Dirac eigenvalues ±(l+5/2)/R and no zero mode.

## 4. The decisive calculation: monopole collapse N7→S5

Over u∈S5 let W_u=u-perp⊂C3. The determinant of W is canonically trivial as an SU3 bundle, and

\[
N=P(W)\xrightarrow{\pi}S^5,
\qquad W\oplus\underline{\mathbb C}\simeq\underline{\mathbb C}^3.
\]

The underlying rank-two complex bundle W is NOT trivial. Its clutching class is the nonzero element of pi4(U2)=Z2, equivalently the principal SU2 bundle SU3→S5. It becomes trivial after adding a line. This unstable topology is invisible to the reduced complex K0 group of S5.

Let L=O_N(1)=p_CP2*O(1); it has degree one on each fibre CP1. Vertical spinors use O(-1), using the SU2 determinant trivialization. For monopole twist L^n, n>0,

\[
\ker D_{v,n}^+ = K_n=\operatorname{Sym}^{n-1}(W^*),
\quad \ker D_{v,n}^-=0,\quad \operatorname{ind}D_{v,n}=n.
\]

There is no parity restriction on n in this SU3-equivariant spin family. On a fibre of radius epsilon R, nonzero eigenvalues are

\[
\lambda_{p,n}=\pm\frac{\sqrt{p(p+n)}}{\epsilon R},
\qquad p=1,2,\ldots,
\]

with multiplicity n+2p per sign. The vertical gap is therefore uniform and grows as epsilon^-1. **Proved** by the CP1 spin/Dolbeault identification and the angular-momentum spectrum.

### The induced connection is decisive

For the homogeneous horizontal distribution, the Berry connection is induced by the principal SU2 connection on SU3→S5. At the identity its curvature is

\[
F(X,Y)=-\operatorname{pr}_{\mathfrak{su}(2)}[X,Y].
\]

The brackets of the four off-diagonal horizontal su3 directions span all su2. This is independently checked in the script. Ambrose–Singer therefore gives full SU2 holonomy. The kernel bundles and connections are:

| Flux | Kernel bundle | Topology/reality | Natural parallel complex endomorphisms |
|---:|---|---|---|
| 1 | C | Trivial line | C |
| 2 | W* | Nontrivial rank-two pseudoreal bundle | C |
| 3 | Sym2 W* | Complex-trivial rank three, nontrivial SO3-real structure | C |

The rank-three complex trivialization does not flatten its connection. The rank-two matrix-algebra bundle End W is itself nontrivial as a PU2 bundle, even though its Brauer/Dixmier–Douady obstruction vanishes. Morita triviality is weaker than being the constant M2 algebra bundle.

**Proved outcome:** the flux choice (1,2,3) gives a positive-chirality kernel of rank six with

\[
\operatorname{End}_{\nabla}(K_1\oplus K_2\oplus K_3)
=\mathbb C\oplus\mathbb C\oplus\mathbb C.
\]

Thus fibrewise matrix dimensions do not yield massless weak and color gauge fields in the natural matrix/Yang–Mills sector. In a reduction of that sector the zero-mode equation is nabla a=0; nonparallel generators acquire internal-gradient energy. This conclusion does not remove separate KK gauge fields arising from isometries that preserve the entire background.

With multiplicities r_n of each irreducible kernel, the complex parallel algebra becomes a sum of M_{r_n}(C): non-Abelian factors arise from holonomy multiplicities, not from the individual monopole ranks. In particular a single flux-three triplet is the spin-one SU2 representation, not a derived color fundamental.

### Real structures cannot be inferred from pseudoreality

For one positive flux sector, real scalar functions compress to Hermitian matrices. At n=2 their generated algebra is M2(C); the Pauli matrices do not commute with the pseudoreality operator j. The real quaternion algebra is generated by i times those Pauli matrices, or selected by an additional symplectic-real condition. It is not the unqualified real scalar Toeplitz algebra.

Charge conjugation reverses flux and chirality. On W plus its conjugate, merely choosing a conjugate exchange with J2=+1 or -1 changes the real commutant. The finite check gives unitary commutant Lie dimension three for the first choice and one for the second. The actual vertical KO2 charge conjugation has J2=-1. Moreover the opposite action of a real spectral triple is not the same thing as demanding that its left algebra commute with J. **Checked calculation:** this prevents a pseudoreal dimension-two representation from being accepted as a derived H summand or a complete KO6 triple.

## 5. Continue from the obstruction: fluxes (1,1,2)

The five-dimensional spinor representation restricted to SU2 isotropy is 2 plus 1 plus 1. Therefore the different coefficient bundle

\[
V=L\oplus L\oplus L^2\quad\hbox{on }N
\]

has vertical positive kernel

\[
K=\mathbb C^2\oplus W^*\simeq S_5^*
\]

as an SU3-equivariant complex bundle. This derives the underlying compensating spinor bundle of the earlier S5 model from an explicit monopole family. The natural Berry connection has parallel algebra M2(C) plus C; it is not yet the dual Levi–Civita spin connection.

**Proved existence of an engineered connection:** the fibrewise Toeplitz map from horizontal End(V)-valued symbols onto End(K) is surjective. Constant symbols on the two L copies supply M2(C), scalar symbols on L2 give End H0(O1), and sections of Hom(L,L2)=O1 give all off-diagonal columns. Adjoints supply rows. Compact-group averaging supplies an equivariant right inverse. Consequently a smooth horizontal unitary connection can be chosen so that its Berry connection is the dual spin connection, leaving the vertical monopole operator unchanged.

This uses off-diagonal connection components between the flux summands. They are extra higher-dimensional background freedom; a model restricted to one fixed diagonal Abelian monopole connection does not already have them.

### Compatible circle lifts can be specified

For G=U3 on S5, isotropy is U2. On its spin cover the vertical root is O(-1) tensor det(W)^(-1/2), so the unmodified kernels acquire that half-character. Use the same underlying V but linearize it as

\[
V'=L\oplus(L\otimes\chi_{\det})
\oplus(L^2\otimes\chi_{\det}).
\]

The character line is topologically trivial and has G-character det(g). The resulting isotropy kernel is

\[
\det^{-1/2}\oplus\det^{1/2}
\oplus(W^*\otimes\det^{1/2}),
\]

the restricted S5 dual spinor representation. The target connection and a right inverse can now be chosen equivariantly under the compact spin cover. The free R action on N is projectable on the total spin/coefficient system; its base and vertical spin factors can individually pick up minus signs, which cancel in the total bundle. Equivariance alone is insufficient to retain circle zero modes. The next calculation supplies the missing Wilson-line condition.

### A concrete Wilson-line compatibility test

Use the Berger convention g_eta=R_base^2(g_H+eta^2 theta_Hopf^2). In a frame carried around a Hopf orbit, the horizontal Levi–Civita connection rotates two complex planes at rate eta2, while the spin frame acquires a minus sign after a full 2pi turn. On the SU2 singlet, singlet and doublet components this gives

\[
\operatorname{Hol}(S_5^*)
=\operatorname{diag}(-e^{2\pi i\eta^2},-e^{-2\pi i\eta^2},-I_2).
\]

The canonical SU2 lift diag(e^{-i theta/2},e^{-i theta/2},e^{i theta}) ends at -I2, so the unengineered kernel holonomy is diag(1,1,-I2), and the parent L^n coefficient holonomy is (-1)^n. The engineered target therefore has parent coefficient holonomy

\[
\boxed{\operatorname{Hol}_R(V')
=\operatorname{diag}(e^{2\pi i\eta^2},e^{-2\pi i\eta^2},1).}
\]

**Checked calculation:** all three coefficient lines retain a circle zero mode exactly when eta2 is an integer. For example eta2=2 is nonround, has U3 isometry on the smooth S5 branch, and has a rank-three circle kernel. At eta2=1/2 only the third parent coefficient line survives the circle collapse. The determinant character shifts integer Lie weights by three but contributes no holonomy phase. This eta is the five-sphere metric parameter; it is independent of the lens-space xi used below.

The relevant U3 stabilizer on N is U1 squared. With the chosen character shifts its three coefficient characters are distinct, so the invariant correction along R is diagonal. The target Berry connection fixes that component; no extra invariant mixing can alter this check. Homogeneity makes the holonomy conjugacy class constant over F, and a fixed trivial-holonomy kernel has a uniform gap to other circle modes. This supplies an engineered example passing both the S2 fibre-kernel test and the first circle Wilson-line test. It supplies no dynamical selection of eta2, and no calculation yet shows that the second, fixed-point circle quotient preserves the desired fermion content.

### The analytic limit and its scope

For a spin Riemannian submersion with round, totally geodesic S2 fibres and a compatible connection metric, write

\[
D_\epsilon=\epsilon^{-1}A+B+\epsilon C,
\]

where A is the vertical operator, B the horizontal Dirac operator and C a bounded curvature term. The following is a **proved conditional lemma**. Assume the common domains and projections are preserved, ker A has constant rank and gap delta, {A,B} is bounded, and the closures are self-adjoint. Let P project onto ker A. Then P B (1-P) is bounded, and for u in the heavy block,

\[
\|Q(\epsilon^{-1}A+B)Qu\|^2
\ge(\delta^2\epsilon^{-2}-c\epsilon^{-1}-c_0)\|u\|^2.
\]

The heavy resolvent is O(epsilon). The Schur complement gives embedded norm-resolvent convergence to PBP with O(epsilon) error. The bounded epsilon C changes the resolvent by at most epsilon norm(C), so no unproved first-order anticommutator estimate for C is needed.

The homogeneous connection transports the vertical operator by fibre isometries. Adding the specified horizontal multiplication operators changes {A,B} by a bounded vertical commutator. These are the required compatibility conditions. **Conditional application:** the precise geometric Dirac domain and decomposition must be implemented for the final chosen metric/connection; a full spectrum or vacuum has not been solved here.

With the engineered target connection, the candidate effective operator is D_5 twisted by S5*. It identifies with one Clifford summand of the de Rham/signature operator [5]. Since the only cohomology of S5 is in degrees zero and five, that summand has a one-dimensional complex kernel. A complex higher-dimensional Dirac field therefore has one candidate four-dimensional Dirac zero-mode sector. A finite scalar mass can give it a finite mass.

**The natural identity zero mode is electrically neutral.** A determinant-character lift, a further coefficient representation or another charged construction is required for an electron. Earlier S5 comparison models specify such data and their kinetic ratios; none derives those charges from the present rank-four kernel. The full real completion also requires flux reversal, its J and the physical fermion projection.

## 6. Torus/Weyl quotients and what the spin lift changes

For an elliptic curve E, let A={(z1,z2,z3):sum z_i=0}. The fibre of the Abel–Jacobi map Sym3(E)→Pic3(E) over O(3[0]) is |3[0]|=CP2, so A/S3=CP2. Also E/{±1}=CP1. These identities give

\[
\mathbb{CP}^2\times\mathbb{CP}^1
\simeq (A\times E)/(S_3\times\mathbb Z_2),
\quad A\times E\simeq T^6.
\]

**Proved**, with primary general context in [6]. These are smooth complex quotient varieties, with branched quotient maps and singular quotient metrics. The isotropy stack and crossed product retain extra information. The equality of the finite group with the Weyl group of SU3 times SU2 does not derive that continuous gauge group.

For an untwisted real group algebra, S3 has real-type irreducibles of dimensions 1,1,2. The resulting real blocks do not include H. Matrix blocks of size three can nevertheless occur through a three-point ORBIT, rather than a three-dimensional S3 irrep.

### A checked real-algebra improvement

Use the periodic torus spin structure and the actual linear action on its tangent R6. A transposition rotates one real two-plane by pi; its spin lift S has S2=z=-1. A three-cycle has a lift R with R3=1 and SRS^-1=R^-1. Their preimage is the binary dihedral group Dic3. In its spin sector,

\[
\mathbb R[\mathrm{Dic}_3]e_-
\simeq\mathbb C\oplus\mathbb H,
\qquad e_-=(1-z)/2.
\]

The Frobenius–Schur indicators are zero for the conjugate one-dimensional characters and minus one for the doublet. Explicit six-dimensional Clifford matrices verify the representation and its faithfulness on a chiral spinor module. **Checked calculation.**

The extra E inversion has a commuting lift T with T2=z. At full fixed isotropy the real algebra becomes

\[
(\mathbb C\oplus\mathbb H)\otimes_{\mathbb R}\mathbb C
\simeq\mathbb C\oplus\mathbb C\oplus M_2(\mathbb C).
\]

Thus adding the second Weyl factor does not leave the quaternion block unchanged.

Two finite orbit types give a precise algebraic foothold:

| Orbit type in A×E | Stabilizer | Spin-twisted real orbit quotient | Selected corner |
|---|---|---|---|
| (a,a,a), 3a=0; E point not 2-torsion | S3, orbit size 2 | M2(C plus H) | C plus H |
| (a,a,-2a), 3a not 0; E point 2-torsion | Z2×Z2, orbit size 3 | M3(C) plus M3(C) | M3(C) |

The first selection is an orbital matrix corner; the second is a central component. Therefore

\[
A_F=\mathbb C\oplus\mathbb H\oplus M_3(\mathbb C)
\]

is a corner of a finite-orbit QUOTIENT of the spin-twisted REAL crossed product. **Proved algebraic statement, checked by matrices.** It is not a result about the original untwisted complex crossed product. The corner has not been lifted to a global projection or obtained as a Dirac spectral band; choosing the two orbits and these projections remains input.

There is an explicit real-triple obstruction: geometric J6 commutes with spin lifts, so the proposed opposite of U_h is U_h^-1. For noncommuting group elements, [U_g,U_h^-1] is nonzero. The script checks this order-zero failure. A regular left/right crossed-product bimodule may repair it, but changes multiplicities and requires new Clifford, corner and grading checks. Neither the SM bimodule nor hypercharges have been derived by the finite-algebra identification.

This makes the torus route more specific than an untwisted group-algebra analogy. It supplies real algebra types after explicit selections; the smooth product monopole route supplies simpler flat kernel bundles. Neither currently dominates the other as a complete spectral-triple derivation.

## 7. Reconcile the earlier finite, twistor and boundary calculations

The earlier calculations remain useful with their original scope:

* **Proved/checked:** the graded Pati–Salam parent, with a selected heavy Majorana operator, has centralizer C plus H plus M3(C). A further up-type block has centralizer C plus M3(C). The inherited unimodular gauge Lie algebras have dimensions 21→12→9. The parent Majorana block requires relaxing first order. Recomputing unimodularity after compression changes the theory and is not the same inherited gauge limit.
* **Proved/checked:** level-one CP3 twistor quantization gives a nested M2(H) subset M4(C); chosen independent module roles and inserted Yukawas can reproduce the known finite model. The nested pair, its tangent Higgs representation and its four global sections do not derive the complete real bimodule or a Higgs vacuum.
* **Proved:** a seven-dimensional spin bulk has a KO-homology boundary class of degree six. **Conditional physical interpretation:** a finite Connes sector could be an effective boundary or defect geometry. Hořava–Witten boundaries and singular G2 examples supply mechanisms beyond an ordinary smooth closed 11D Dirac product, but do not select the Standard Model or prove M-theory necessary.
* **Proved/checked:** the earlier CP3 circle penalty produces a singular five-dimensional quotient and can preserve four compensated twistor modes. The new flag quotient is another route using the SAME listed candidates; neither inherits a Berger U3 metric automatically.
* **Conditional comparison:** the earlier Berger S5 model using Hom(E,F), E the spinor bundle from SU4/Sp2 and F a fundamental complex four-bundle, has a singlet/triplet kernel with a specified B-minus-L charge direction. Its lifted gauge group and kinetic ratios are explicit, but its charge choices, supporting stress-energy and weak-to-circle identification remain input.

The new flux-(1,1,2) construction supplies an underlying bundle origin for that compensating E role. It does not reconstruct F, the full 32-state real finite module or its Yukawa/Majorana operator.

## 8. Gauge decoupling, masses and the Weinberg-angle check

The physical heavy-weak limit requires g2^2/MW^2→0 and the analogous neutral-current coefficient to vanish. With MW=g2 v/2, fixed finite gauge couplings and v→infinity give GF→0. Keeping mf finite requires yf v→sqrt(2)mf, rather than fixed yf. Alternatively an explicit surviving internal operator can supply Dirac masses, but these must be calculated.

A fibre collapse does not itself prove weak decoupling: gauge zero modes from background-preserving isometries or matrix connections can remain. Moreover generic N(1,-1) metrics have SU3 times U1 symmetry, the flag has SU3 symmetry, and the product FS metrics have SU3 times SU2 symmetry without an extra geometric hypercharge factor. None is already a metric-only chiral Standard Model compactification.

For the earlier lens-space comparison, normalized SU2 and right U1 generators have integrated coefficients proportional to

\[
K_W=V R^2(2+\xi^2)/3,\qquad K_Y=V R^2\xi^2.
\]

Hence

\[
\cos^2\theta_W=\frac{3\xi^2}{4\xi^2+2}.
\]

The common lens-volume factor cancels at fixed generator convention. The value 5/8 needs xi2=5/2; the unsourced Einstein Berger three-sphere is round, xi=1, giving 1/2. Global quotient topology can restrict charges but does not supply this local kinetic normalization. **Checked calculation.**

The finite SM trace instead gives KW=2 and KY=10/3 per generation in the physical convention Q=T3+Y. Thus KY/KW=5/3 and cos2(thetaW)=KY/(KW+KY)=5/8. Particle/conjugate doubling and generation replication leave the ratio unchanged. The calculation depends on the actual chiral representations, which neither an orbit-corner algebra nor monopole ranks determine. No claim of a low-energy value follows without running and threshold matching.

The surviving charged sectors of the SM heavy-weak limit are vectorlike under color and electromagnetism. The restored electroweak sector is chiral; leptons alone have uncanceled electroweak anomalies. A geometric limit must preserve the anomaly-canceling content or supply a specified replacement mechanism.

## 9. What the investigation now establishes

| Research question | Current answer | Status |
|---|---|---|
| A. Controlled reductions of N | Explicit circle and S2 fibrations, plus a two-circle sequential orbit chain; compatible engineered flux/spin background can be specified | Geometry proved; operator convergence conditional as stated; no vacuum interpolation |
| B. Product versus flag | Different topology/spin; precise vertical Spin-c kernel bundles and Morita relation of complex endomorphism section algebras | Proved; no real/metric equivalence |
| C. Torus/Weyl route | Spin lift and selected finite-orbit corners give the correct real algebra types; untwisted analogy is insufficient | Algebraic result checked; spectral projection and real bimodule missing |
| D. QCD/QED with finite-mass fermions | Natural flux 1,2,3 fails the proposed matrix gauge mechanism; engineered 1,1,2 gives one neutral Dirac sector; charged Berger comparisons require extra lifts | Checked/conditional; weak decoupling and vacuum unproved |
| E. Derive the real SM triple | Algebra-level candidates exist, but no construction yet gives its complete J, grading, first order, chiral hypercharges and dynamics | Conjectural target |

Three independent quantities must stay in every limit statement: metric/spectral dimension; KO-degree and Clifford/real data; the number and mass scales of light matter and gauge modes. A finite projection need not change the metric dimension and can preserve its KO signs; an adiabatic pushforward retains the fibre's coefficient/index information. Neither a rank count nor an abstract algebra determines a physical chiral spectrum.

The decisive calculation has therefore changed the constructive target. For fermions, pursue the explicit N-family kernel and its selected Berry connection rather than assuming three flux ranks give three gauge blocks. For the finite real algebra, pursue a spectral realization of the spin-twisted orbit-corner selection rather than assuming the untwisted Weyl crossed product is already A_F. Joining those two mechanisms, with the correct representations and a supported weak-decoupling vacuum, remains the conjectural part.

## Reproduction and references

`python3 canonical_checks.py` verifies the homogeneous curvature span, complex parallel commutants, the sensitivity to the real-structure sign, spin-lift algebra dimensions and Frobenius–Schur indicators, the explicit order-zero failure, Chern-class arithmetic, the Berger Wilson phases and both gauge trace ratios. It is a finite verification of the stated calculations, not a PDE or vacuum solver. Earlier scripts reproduce the finite centralizers, twistor quantization and spectral-window figures.

1. F. Lehmann, *Families of complete non-compact Spin(7) holonomy manifolds*, thesis (2020), chapter 4. https://people.maths.ox.ac.uk/lotay/Lehmann%20PhD%20Thesis.pdf
2. M. Atiyah and E. Witten, *M-Theory Dynamics on a Manifold of G2 Holonomy*, especially section 3.4. https://arxiv.org/abs/hep-th/0107177
3. B. Ammann, *The Dirac operator on collapsing S1-bundles*. https://doi.org/10.5802/tsg.195 ; B. Ammann and C. Bär, *The Dirac Operator on Nilmanifolds and Collapsing Circle Bundles*. https://arxiv.org/abs/math/9801091
4. J. A. Hillman, *An explicit formula for a branched covering*. https://www.maths.usyd.edu.au/u/pubs/publist/preprints/2017/hillman-1.pdf
5. J. Rosenberg and S. Weinberger, *The signature operator at 2*, especially the Clifford description and Lemma 13. https://www.math.umd.edu/~jmr/signature.pdf
6. A. Chirvasitu, R. Kanda and S. P. Smith, *Finite quotients of powers of an elliptic curve*. https://arxiv.org/abs/1905.06710
7. A. H. Chamseddine, A. Connes and W. D. van Suijlekom, *Beyond the Spectral Standard Model: Emergence of Pati–Salam Unification*. https://arxiv.org/abs/1304.8050
8. A. H. Chamseddine and A. Connes, *Noncommutative Geometry as a Framework for Unification of All Fundamental Interactions Including Gravity. Part I*, section 9.1. https://arxiv.org/abs/1004.0464

The handoff's torus/CP2 construction is also discussed at https://mathoverflow.net/questions/35811/square-of-an-elliptic-curve-and-projective-plane ; the direct Abel–Jacobi argument and primary reference 6 are used here. Detailed earlier sources for KO6 neutrinos, fuzzy metrics, anomaly inflow and the Berger sphere remain in the archived working-note bibliographies.
