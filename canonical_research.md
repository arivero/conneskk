---
title: "Nine, Ten and Eleven Dimensions"
subtitle: "Controlled limits of Kaluza-Klein and Connes geometries"
date: "Consolidated research paper · 2 November 2026"
lang: en
---

# Abstract

Can the finite Standard Model geometry arise from a controlled reduction of an ordinary internal manifold? This paper consolidates the investigation of seven-, six- and five-dimensional internal spaces, corresponding to eleven-, ten- and nine-dimensional spacetime products. The central distinction is between metric or spectral dimension, the KO-degree of a real spectral triple, and the gauge and matter modes that remain light. None determines the other two.

Several components are explicit. Heavy finite operators select the algebra chain from Pati-Salam to the Standard Model and then to color plus electromagnetism, once the finite bimodule is supplied. Twistor compression produces a quaternionic/complex algebra pair. A spin Aloff-Wallach seven-manifold has exact circle, two-sphere and three-sphere fibrations. Its monopole Dirac families can be calculated, including their nontrivial kernel bundles and Berry connections. A spin-twisted torus/Weyl construction contains the Standard Model algebra as a selected corner of a finite-orbit quotient. Boundaries and singular quotients provide distinct mechanisms for changes of dimension and chirality.

The main obstruction is equally concrete. Monopole fluxes of magnitudes one, two and three give kernel ranks one, two and three, but their natural connection has full SU(2) holonomy. The parallel matrix algebra is therefore three scalar factors. A different flux choice, with ranks one, one and two, gives the dual five-dimensional spinor bundle. An engineered connection then retains one neutral Dirac mode. Charged electron comparison models require additional equivariant data.

No single construction yet derives the full real Standard Model triple, its chiral representations, Higgs dynamics and a supported eleven-to-nine-dimensional vacuum interpolation. This account records the exact results, the assumptions behind conditional constructions, and the test that could join them.

# Reading guide and status

This is the single canonical research narrative. Earlier working notes remain derivation appendices. The mobile PDF and this Markdown have the same research content. The dimensions in the title do not designate an experimentally established compactification.

**Proved** means a proof is given here or in the cited appendix, or a cited theorem applies with the stated hypotheses; it claims no priority. **Conditional** means proved under the additional geometric, analytic or representation hypotheses stated. **Conjectural** marks a missing derivation. A numerical or exact-arithmetic check names its language (Python, with numpy or exact fractions) and the section of research_checks_knowledge.md that records it.

The paper begins with limit operations and the finite algebra chain, develops the seven-dimensional geometry and its decisive monopole calculation, and finishes with boundary mechanisms, the nine-dimensional electron models and the two electroweak limits. A subscript “triv” denotes a trivial bundle. The bibliography uses numbered references; the reproduction section distinguishes finite checks from continuum proofs.

# 1. What the numbers 9, 10 and 11 mean

Let ordinary four-dimensional spacetime be accompanied by a compact internal space $X^q$. The product has dimension $4+q$. Thus $q=5,6,7$ gives total dimension nine, ten or eleven. This describes a continuum manifold, before specifying spinors, gauge fields or a vacuum.

A finite Connes geometry is different. For an almost-commutative product,

$$
\mathcal A=C^\infty(M^4)\otimes A_F,
$$

$$
D=D_M\otimes1+\gamma_M\otimes D_F,
$$

a fixed finite-dimensional $H_F$ has ultraviolet spectral dimension zero. The product still has spectral dimension four. The Standard Model finite real structure has KO-degree six, with signs

$$
J_F^2=1,\qquad J_FD_F=D_FJ_F,
\qquad J_F\gamma_F=-\gamma_FJ_F.
$$

Its product KO-degree is $4+6=10$ modulo eight. This does not assert ten ordinary metric dimensions [19]. **Proved distinction.**

Every proposed limit must retain three independent records:

1. **Geometry:** spectral counting, distance and the energy window in which a dimension is resolved.
2. **Fermions:** the Hilbert module, Clifford action, real structure, grading and index or K-homology class.
3. **Physics:** the gauge lift, charges, scalar fluctuation family, kinetic normalization and surviving masses.

Among ordinary smooth Lorentzian dimensions nine, ten and eleven, only ten admits an intrinsic Weyl splitting of the full spin representation. This makes ten special in this comparison. It neither guarantees four-dimensional chirality nor excludes chiral sectors on boundaries, defects, orbifolds or additional graded coefficients in an odd-dimensional bulk.

A smooth closed product with an unconstrained eleven-dimensional Dirac field and an ordinary vectorlike internal connection gives a four-dimensional Dirac field for each internal zero mode. A chiral Standard Model endpoint therefore needs additional structure. This obstruction does not select M-theory uniquely [16].

# 2. Growing and losing dimensions

## 2.1 Heat dimension and the order of limits

At heat scale $s$, define

$$
d_{\mathrm{eff}}(s)
=-2\frac{d\log\operatorname{Tr}(e^{-sD^2})}{d\log s}.
$$

For noncompact factors use a trace density. A $q$-dimensional internal window requires a controlled range in which the trace behaves as $Cs^{-q/2}$. An unbounded number of modes is necessary for that window to extend to arbitrarily high energy. Making finitely many particles light does not create a continuum dimension.

**Example** (proved: the spectrum is derived in `research_limits/research_note.md` §2; checked numerically in Python, research_checks_knowledge.md §1.1-1.2). A doubled matrix approximation to a two-sphere, with matrix size $N$ and $x=s/R^2$, has the exact heat trace

$$
K_N(x)=4+8\sum_{k=1}^{N-1}k e^{-xk^2}
+4(N-1)e^{-xN^2}.
$$

It has finite saturation $4N^2$ for $x\ll N^{-2}$, a two-dimensional window $K_N\simeq4/x$ for $N^{-2}\ll x\ll1$, and a four-state kernel for $x\gg1$. Three graded products have KO-degree six and a six-dimensional internal window. With spacetime the resolved exponent is ten, although the fixed-$N$ ultraviolet exponent remains four.

Here $A_N=M_N(\mathbb C)$ acts on $\mathbb C^2\otimes\mathbb C^2\otimes M_N(\mathbb C)$. With angular momenta $L_i$, use $D_N=\sigma_1\otimes\sum_i\sigma_i[L_i,\cdot]$ and grading $\sigma_3$. Charge conjugation supplies KO-two signs and commuting left/right actions. Order zero and first order hold. The grading fails the usual orientability reconstruction, the spectrum is doubled, and a permitted scalar shift removes the zero modes. This is a dimension-window example, not a Standard Model approximation. General fuzzy and quantum-metric results do not repair these particular defects automatically [20,21].

A continuum example is $B^5\times S^1_a\times S^1_b$, with $b\ll a$. A periodic circle contributes

$$
K_r(s)=\sum_{n\in\mathbb Z}e^{-sn^2/r^2}.
$$

Resolving neither, one or both circles gives total heat dimensions nine, ten and eleven, provided the base and spacetime are resolved. An antiperiodic collapsed circle has no spinor zero mode. Keeping the full parent spinor does not automatically impose a ten-dimensional Weyl projection.

*Figure (heat-dimension staircase; image removed, `git show 46d81b1:research_limits/paper_assets/heat_staircase.png`).* The five-dimensional base and spacetime are assumed resolved throughout. Periodic circles of radii 1 and 0.01 supply the transitions. Plotted against the resolution E from 0.1 to 3000 (units 1/a, s = E^-2), the effective dimension is 9 below E of about 0.4, rises to 10 by E = 1, stays at 10 up to E of about 40, and rises to 11 by E = 100. This is an exact heat-sum example, not a Standard Model prediction. Formula: research_checks_knowledge.md, section 5.

## 2.2 Heavy finite operators

Let $T,S$ be finite self-adjoint matrices, let $P$ project onto $\ker T$, and assume a positive gap on its complement. Consider

$$
D_t=D_M\otimes1+\gamma_M\otimes(tT+S).
$$

**Proved.** This has an embedded norm-resolvent limit on the light space, with finite operator $PSP$. Bounded light-heavy mixing is allowed. Finite-dimensional perturbation gives a unitary $1+O(t^{-1})$ identifying the low spectral subspace with $P$. The crucial product identity is

$$
D_t^2=D_M^2\otimes1+1\otimes(tT+S)^2.
$$

High spacetime eigenvalues cannot cancel the heavy internal mass. This proof does not apply to an arbitrary unbounded sum without that anticommutation.

For a fixed represented element, uniform boundedness of $[tT+S,a]$ is equivalent to $[T,a]=0$. The natural retained data are

$$
A_T=A\cap\{T\}',\qquad H_T=\ker T,
\qquad D_{F,T}=PSP.
$$

Quotient any representation kernel afterwards. Since $P$ reduces $A_T$, its compression is multiplicative. Generic compression is not [17]. For commuting multiplication operators,

$$
[PaP,PbP]=Pb(1-P)aP-Pa(1-P)bP.
$$

Elimination can generate noncommutativity, but the generated algebra and its opposite action must be constructed explicitly.

For a heavy block $tC+E$ and off-diagonal block $t^\alpha B$, the Schur correction to the light operator is

$$
-t^{2\alpha-1}BC^{-1}B^*+O(t^{2\alpha-2}).
$$

It vanishes for $\alpha<1/2$, survives for $\alpha=1/2$, and generally introduces another divergent scale for $\alpha>1/2$. Indefinite $C$ can produce cancellations. Finite seesaw scaling therefore need not retain the algebra of a bounded-mixing limit.

## 2.3 Metric collapse is separate

For the two-point triple, spectral distance is $1/|m|$. Taking $|m|\to\infty$ collapses the points metrically, but the off-diagonal Dirac operator has no light kernel. Taking $m\to0$ separates the points to infinite distance; it does not grow a continuum dimension. Even this elementary example separates metric and fermion limits.

# 3. The finite algebra chain and the electron

Take independent module roles $E=\mathbb H^2$ and $F=\mathbb C^4$, and

$$
H_F=\operatorname{Hom}_{\mathbb C}(E,F)
\oplus\operatorname{Hom}_{\mathbb C}(F,E).
$$

This has complex dimension 32. Set

$$
\rho(a,b)(\xi,\eta)=(b\xi,a\eta),
\qquad J(\xi,\eta)=(\eta^*,\xi^*).
$$

For a quaternionic grading $\Gamma$ on $E$, use $\gamma(\xi,\eta)=(-\xi\Gamma,\Gamma\eta)$. The graded parent is

$$
A_{\mathrm{PS}}=\mathbb H_R\oplus\mathbb H_L
\oplus M_4(\mathbb C).
$$

Choose a right-neutrino matrix unit $\xi_0$ and the odd, $J$-real operator

$$
T_R=|\xi_0\rangle\langle J\xi_0|
+|J\xi_0\rangle\langle\xi_0|.
$$

**Proved; checked numerically in Python** (research_checks_knowledge.md §2). Its algebra commutant requires

$$
a=\operatorname{diag}(\lambda,\bar\lambda,q),
\qquad b=\operatorname{diag}(\lambda,m),
$$

with $q\in\mathbb H$ and $m\in M_3(\mathbb C)$. The selected heavy direction enforces scalar matching and gives $A_{\mathrm{SM}}=\mathbb C\oplus\mathbb H\oplus M_3(\mathbb C)$.

The operator $T_R$ violates first order on the full parent algebra. The construction belongs to the first-order-relaxed Pati-Salam setting [7]. Choosing the heavy direction and its vacuum remains input.

An additional heavy up-type block $T_u$, equal across colors and charge-conjugate completed, forces $q=\operatorname{diag}(\lambda,\bar\lambda)$. Its further commutant is

$$
A_{\mathrm{SM}}\cap\{T_u\}'
=\mathbb C\oplus M_3(\mathbb C).
$$

With the inherited unimodular lift, the gauge Lie algebras are Pati-Salam, the Standard Model, and $\mathfrak{su}(3)\oplus\mathfrak u(1)_{\mathrm{em}}$, of dimensions $21,12,9$. These are gauge dimensions, not spacetime dimensions. The real algebra dimensions are $40,24,20$, and the strict light finite Hilbert dimensions in the one-generation check are $32,30,18$.

The last reduction removes the up-type sector and retains charged down-quark/electron sectors and a neutral left-neutrino sector. It preserves KO-six signs: this mass projection does not change product KO-degree ten to nine. In a multi-generation model the heavy block can be the top block, with a different surviving matter count.

The particle lift is $\xi\mapsto b\xi a^*$. Retain the parent condition $\lambda\det m=1$, with

$$
\lambda=e^{-i\alpha/2},\qquad
m=e^{i\alpha/6}s,\quad s\in SU(3).
$$

In the convention $Q=T_3+Y$, this yields the usual hypercharges: left quarks $1/6$, left leptons $-1/2$, right up quarks $2/3$, right down quarks $-1/3$, right electron $-1$, and right neutrino zero. After weak reduction, both electron chiralities transform by $\lambda^2=e^{-i\alpha}$. Their photon coupling is vectorial, with charge $-1$. This does not fix the numerical value of $e$.

Unimodularity must be inherited. Removing the neutral Majorana pair changes the represented determinant from $(\lambda\det m)^4$ to $\lambda^2(\det m)^4$. Reimposing a new determinant-one condition on the smaller module would change hypercharge.

The neutral Majorana extension also has the known finite orientability obstruction: identical algebra/opposite-algebra characters can carry opposite grading [23]. The displayed module is not claimed to satisfy every reconstructed-manifold axiom.

An electron-only finite QED geometry is already available independently of an eleven-dimensional ancestor [18]. Removing colored matter can leave consistent QED. Restoring the chiral electroweak group with leptons alone is different and anomalous.

# 4. The six-dimensional twistor geometry and the Higgs

The twistor fibration is

$$
S^2\longrightarrow\mathbb{CP}^3
\longrightarrow\mathbb{HP}^1\simeq S^4.
$$

Chamseddine and Connes pointed to it in discussing the quaternionic/complex parent pair [8]. At holomorphic level one, $H^0(\mathbb{CP}^3,\mathcal O(1))$ has complex dimension four. Normalized coherent quantization sends five twistor-base coordinates to $Q(x_a)=\Gamma_a/5$, for five Clifford matrices commuting with a quaternionic antiunitary $j$, $j^2=-1$.

**Proved** in `research_limits/research_note.md` §4; checked numerically in Python (research_checks_knowledge.md §1.5). Compressed real base functions generate $M_2(\mathbb H)$; real functions on the total projective space generate $M_4(\mathbb C)$. Thus one obtains

$$
M_2(\mathbb H)\subset M_4(\mathbb C).
$$

This is a nested pair on one complex four-space, not two independent central summands. The independent $E,F$ module roles remain to be derived. Compression is not multiplicative: $Q(x_a)^2=I/25$ while $Q(x_a^2)=I/5$. The script checks cover the generation statements; the identities for $Q$ are proved in [lemmas/10](lemmas/10_toeplitz_twistor.md), Proposition 10.1. The simplest scalar quantization of $\mathbb{CP}^2\times\mathbb{CP}^1$ instead generates $M_6(\mathbb C)$, not the Standard Model direct sum.

For a quaternionic line $L\subset\mathbb H^2$,

$$
T_{[L]}\mathbb{HP}^1
\simeq\operatorname{Hom}_{\mathbb H}(L,L^\perp)
\simeq\mathbb H.
$$

The action $t\mapsto q_Ltq_R^{-1}$ is the real four-dimensional $(2_L,2_R)$ representation. Marking a complex line reduces the right SU(2) to U(1), giving a colorless weak doublet of hypercharge $1/2$, together with its conjugate description. This is Higgs representation data, not a derived kinetic term, radial field, potential, Yukawa spectrum or stabilized vacuum. It does not show that ten dimensions are uniquely able to contain a Higgs.

The full family $D_F(h)$ must be retained. Replacing it by its vacuum value and then setting that value to zero can erase the scalar differential calculus.

Finally, global sections are not fibre ranks. The vertical Dolbeault kernel of the twistor sphere family with $\mathcal O(1)$ twist has complex rank two over $S^4$, the dual tautological quaternionic line. Equivalently the vertical spin operator uses monopole twist $\mathcal O(2)$; the untwisted vertical spin operator has no kernel. Four global sections have not supplied rank-four fibres or the 32-state bimodule. This rank mismatch is an explicit unresolved step.

# 5. Seven dimensions: the exact fibrations

Let $h=c_1(\mathcal O(1))$ on $\mathbb{CP}^2$. The universal quotient bundle Q in

$$
0\longrightarrow\mathcal O(-1)\longrightarrow\mathbb{C}_{\mathrm{triv}}^3
\longrightarrow Q\longrightarrow0
$$

has $c_1(Q)=h$ and $c_2(Q)=h^2$. A Hermitian metric identifies Q with the orthogonal complement of the tautological line. Hence

$$
N=S(Q)=\{(\ell,u):\ell\in\mathbb{CP}^2,\ |u|=1,\ u\perp\ell\}.
$$

At $(\mathbb Ce_1,e_2)$, its SU(3) stabilizer is $\operatorname{diag}(e^{it},1,e^{-it})$. Permuting coordinates identifies this with the (1,-1,0) convention for the Aloff-Wallach space. **Proved:**

$$
N\simeq SU(3)/U(1)_{1,0}\simeq N_{1,-1}.
$$

The maps are explicit:

| Map | Fibre | Description | Status |
|---|---|---|---|
| $N\to\mathbb{CP}^2_{\ell}$ | $S^3$ | Forget u | Proved |
| $N\to F=SU(3)/T^2$ | $S^1$ | Send $(\ell,u)$ to $(\ell,\mathbb Cu)$ | Proved |
| $N\to S^5=SU(3)/SU(2)$ | $S^2$ | Send $(\ell,u)$ to $u$ | Proved |

Here $F=P(Q)$, with the convention that P parametrizes lines. These structures agree with Lehmann's discussion [1]. Their existence alone is not a dynamical interpolation.

The stable tangent identity

$$
TN\oplus\mathbb R\simeq p^*(T\mathbb{CP}^2\oplus Q_{\mathbb R})
$$

gives $w_2(N)=p^*(3h+h)=0$ modulo two. Thus N is spin and simply connected. Its integral cohomology is Z in degrees 0,2,5,7 and zero otherwise; in particular $H^4(N;\mathbb Z)=0$. **Proved**, using the $S^3$-sphere-bundle Gysin sequence with Euler class $h^2$.

## A genuine sequential orbit-space chain also exists

Let $R$ act freely by $u\mapsto e^{i\theta}u$. On $F$, let $L$ act by left multiplication by $\operatorname{diag}(\lambda^{-2},\lambda,\lambda)$. Left L and right R commute upstairs on N. Atiyah-Witten establish $F/L\simeq S^5$ [2]. Therefore

$$
N^7\xrightarrow{/R}F^6\xrightarrow{/L}Y^5\simeq S^5,
\qquad N/(R\times L)\simeq Y.
$$

**Proved as quotient geometry.** L has three fixed $\mathbb{CP}^1$ strata; its central $\mathbb Z_3$ kernel on F must be removed for an effective action. The induced metric on Y is singular. The residual connected symmetry inherited from this quotient is SO(3), up to covering conventions. This Y is distinct as a metric, equivariant and spectral construction from the smooth homogeneous base $S^5$ of N→$S^5$. No identification of those two reductions has been proved.

For a connection metric on N→F with a basic coefficient connection, shrinking the free R fibres is an ordinary circle collapse. F is spin, and the unique spin structure on N is projectable, so the untwisted spin operator has an invariant sector. The relevant spectral convergence is covered by the circle-collapse results of Ammann and Bär [3]. A general equivariant coefficient connection can have a Wilson line and needs a separate vertical-kernel check; this is computed for the engineered example in section 9. A complete 10D Weyl projection does not follow from retaining the whole parent spinor module.

The second step can use the spectral family $D_\tau=D_F+\tau\Gamma_F L$, on an equivariant bundle with an effective projectable lift. Its square is $D_F^2+\tau^2L^2$, so nonzero circle momentum is suppressed with resolvent bound $(1+\tau^2)^{-1/2}$. This supplies a controlled complex/ungraded quotient limit. Keeping the even real grading requires the stated Clifford doubling in section 12. **Conditional:** choosing compatible background connections, lifts and physical fermion projections is additional data; neither step has been derived from weak-boson masses or a supported field-equation solution.

# 6. Keep the product and flag candidates separate

Write $X_a=\mathbb{CP}^2\times\mathbb{CP}^1$ and $X_b=F=P(Q)$. Let $x=c_1(m^*)$ for the tautological line $m\subset Q$ on $F$, and y the generator from $\mathbb{CP}^1$ on the product. Direct Chern-class and projective-bundle calculations give:

| Invariant | X_a | X_b | Status |
|---|---|---|---|
| Integral ring | $\mathbb Z[h,y]/(h^3,y^2)$ | $\mathbb Z[h,x]/(h^3,x^2+hx+h^2)$ | Proved |
| Betti numbers in degrees 0,2,4,6 | 1,2,2,1 | 1,2,2,1 | Proved |
| $c_1$ for the indicated complex structure | $3h+2y$ | $4h+2x$ | Proved (below) |
| $w_2$ | h mod 2 | 0 | Proved |
| $p_1$ | $3h^2$ | 0 | Proved (below) |

*Proof of the $c_1$ and $p_1$ rows.* For $X_a$, $c_1=3h+2y$ and $p_1=p_1(\mathbb{CP}^2)=3h^2$. For $X_b$, the relation $x^2+hx+h^2=0$ gives $c_1(Q)=h$, $c_2(Q)=h^2$ (so $Q\cong T\mathbb{CP}^2\otimes\mathcal O(-1)$), and $TF=\pi^*T\mathbb{CP}^2\oplus\operatorname{Hom}(m,\pi^*Q/m)$ gives $c_1=3h+(h+2x)=4h+2x$. Since $F=SU(3)/T$, the bundle $TF\oplus(F\times\mathfrak t)\cong F\times\mathfrak{su}(3)$ is trivial, so $p_1(F)=0$.


The flag has no nonzero square-zero degree-two integral class: $(ah+bx)^2=0$ requires $a^2-b^2=2ab-b^2=0$, hence $a=b=0$. The product has $y^2=0$. They are not diffeomorphic and their commutative C-star algebras are not strongly Morita equivalent.

**A useful operator-algebraic relationship is nevertheless exact.** Use vertical Dolbeault/Spin-c operators on the $\mathbb{CP}^1$ fibres, twisted by $\mathcal O(n-1)$, $n>0$. Their kernel bundles over $\mathbb{CP}^2$ are

$$
K^a_n=\mathbb{C}_{\mathrm{triv}}^{\,n},\qquad
K^b_n=\operatorname{Sym}^{n-1}(Q^*).
$$

Consequently the two effective complex endomorphism algebras are respectively $C(\mathbb{CP}^2,M_n(\mathbb C))$ and $\Gamma(\operatorname{End}K_n^b)$. Each is strongly Morita equivalent to $C(\mathbb{CP}^2)$, through its defining bundle; this does not give an isomorphism preserving their connections, real structures or finite ranks.

For $n=2$ the flag kernel has $(c_1,c_2)=(-h,h^2)$; for $n=3$ it has $(-3h,6h^2)$. They are not flat trivial bundles. The product kernel can be constant and flat. Thus the product retains a genuine advantage for constant finite matrix factors, while the flag supplies a spin six-manifold and the relation to N.

One spin distinction matters: the vertical tangent of F→$\mathbb{CP}^2$ has $c_1=h+2x$ and is not spin by itself. Its $w_2$ cancels the base $w_2$ in the total flag. A family of ordinary fibre spin bundles cannot be assumed globally without the determinant compensation; the global operator above is naturally vertical Spin-c. A pseudoreal doublet on each fibre does not by itself define a global quaternionic real spectral module. A twisted bundle of quaternionic algebras can exist projectively, but it is not a constant H summand with an already specified J. **Proved/conditional as indicated.**

# 7. Three-sphere bundles and the circle endpoints

The quotient map $q:\mathbb{CP}^2\to\mathbb{CP}^2/\mathrm{conj}\simeq S^4$ is an oriented twofold branched covering with branch locus $\mathbb{RP}^2$ [4]. Pulling back the quaternionic Hopf bundle gives a principal $SU(2)$ bundle P with $c_2=\pm2h^2$. Its sphere bundle is distinct from S(Q), where $c_2(Q)=h^2$ and $c_1(Q)=h$.

There is a further distinction: **P is nonspin.** Its vertical principal-bundle tangent is trivial, so $TP\simeq q_P^*T\mathbb{CP}^2\oplus\mathbb R^3$ and $w_2(P)=q_P^*h\ne0$. The $S^3$-fibre sequence makes $q_P^*$ injective in degree two mod 2. Also $H^4(P;\mathbb Z)=\mathbb Z_2$, whereas $H^4(N;\mathbb Z)=0$. Both have $\pi_2=\mathbb Z$, so neither total space is $S^7$. **Proved.** The quaternionic bundle structure does not, on its own, supply a spin seven-manifold.

Principal circle bundles $P_k$ over $\mathbb{CP}^2$ have Euler/Chern class k h. Their total spaces are $\mathbb{CP}^2$×$S^1$ for k=0, $S^5$ for |k|=1, and $S^5/\mathbb Z_{|k|}$ for |k|>1, up to orientation conventions. Since $TP_k\simeq\pi^*T\mathbb{CP}^2\oplus\mathbb R$ and the mod-2 Gysin sequence kills h exactly when k is odd, they are spin exactly for odd k. **Proved.**

For generic Hopf-Berger metrics on $S^5$ the connected isometry group is $U(3)$. Product FS×circle metrics on $\mathbb{CP}^2$×$S^1$ have the same local $\mathfrak{su}(3)\oplus\mathfrak u(1)$ gauge algebra but require Spin-c fermionic data. Neither fact identifies the Abelian generator as electromagnetism. Round $S^5$ has Dirac eigenvalues $\pm(\ell+5/2)/R$ and no zero mode.

# 8. The decisive monopole collapse

Over $u\in S^5$, let $W_u=u^\perp\subset\mathbb C^3$. The determinant of W is canonically trivial as an $SU(3)$ bundle, and

$$
N=P(W)\xrightarrow{\pi}S^5,
\qquad W\oplus\mathbb{C}_{\mathrm{triv}}\simeq\mathbb{C}_{\mathrm{triv}}^3.
$$

The underlying rank-two complex bundle W is not trivial. Its clutching class is the nonzero element of $\pi_4(U(2))=\mathbb Z_2$, equivalently the principal $SU(2)$ bundle $SU(3)$→$S^5$. It becomes trivial after adding a line. This unstable topology is invisible to the reduced complex $K^0$ group of $S^5$.

Let $L=\mathcal O_N(1)=p^*\mathcal O_{\mathbb{CP}^2}(1)$; it has degree one on each fibre $\mathbb{CP}^1$. Vertical spinors use $\mathcal O(-1)$, using the $SU(2)$ determinant trivialization. For monopole twist $L^n$, $n>0$,

$$
\ker D_{v,n}^+ = K_n=\operatorname{Sym}^{n-1}(W^*),
$$

$$
\ker D_{v,n}^-=0,\qquad \operatorname{ind}D_{v,n}=n.
$$

There is no parity restriction on n in this $SU(3)$-equivariant spin family. On a fibre of radius $\epsilon R$, nonzero eigenvalues are

$$
\lambda_{p,n}=\pm\frac{\sqrt{p(p+n)}}{\epsilon R},
\qquad p=1,2,\ldots,
$$

with multiplicity n+2p per sign. The vertical gap is therefore uniform and grows as $\epsilon^{-1}$. **Proved** by the $\mathbb{CP}^1$ spin/Dolbeault identification and the angular-momentum spectrum.

## The induced connection is decisive

For the homogeneous horizontal distribution, the Berry connection is induced by the principal $SU(2)$ connection on $SU(3)$→$S^5$. At the identity its curvature is

$$
F(X,Y)=-\operatorname{pr}_{\mathfrak{su}(2)}[X,Y].
$$

The brackets of the four off-diagonal horizontal $\mathfrak{su}(3)$ directions span all $\mathfrak{su}(2)$. This is checked numerically in Python (research_checks_knowledge.md, section 4.1). Ambrose-Singer therefore gives full $SU(2)$ holonomy. The kernel bundles and connections are:

| Flux | Kernel bundle | Topology/reality | Natural parallel complex endomorphisms |
|---:|---|---|---|
| 1 | $\mathbb C$ | Trivial line | $\mathbb C$ |
| 2 | $W^*$ | Nontrivial rank-two pseudoreal bundle | $\mathbb C$ |
| 3 | $\operatorname{Sym}^2W^*$ | Complex-trivial rank three, nontrivial SO(3)-real structure | $\mathbb C$ |

The rank-three complex trivialization does not flatten its connection. The rank-two matrix-algebra bundle End W is itself nontrivial as a PU(2) bundle, even though its Brauer/Dixmier-Douady obstruction vanishes. Morita triviality is weaker than being the constant $M_2(\mathbb C)$ algebra bundle.

**Proved outcome:** the flux choice (1,2,3) gives a positive-chirality kernel of rank six with

$$
\operatorname{End}_{\nabla}(K_1\oplus K_2\oplus K_3)
=\mathbb C\oplus\mathbb C\oplus\mathbb C.
$$

Thus fibrewise matrix dimensions do not yield massless weak and color gauge fields in the natural matrix/Yang-Mills sector. In a reduction of that sector the zero-mode equation is $\nabla a=0$; nonparallel generators acquire internal-gradient energy. This conclusion does not remove separate KK gauge fields arising from isometries that preserve the entire background.

With multiplicities $r_n$ of each irreducible kernel, the complex parallel algebra becomes a sum of $M_{r_n}(\mathbb C)$: non-Abelian factors arise from holonomy multiplicities, not from the individual monopole ranks. In particular a single flux-three triplet is the spin-one $SU(2)$ representation, not a derived color fundamental.

## Real structures cannot be inferred from pseudoreality

For one positive flux sector, real scalar functions compress to Hermitian matrices. At $n=2$ their generated algebra is $M_2(\mathbb C)$; the Pauli matrices do not commute with the pseudoreality operator j. The real quaternion algebra is generated by i times those Pauli matrices, or selected by an additional symplectic-real condition. It is not the unqualified real scalar Toeplitz algebra.

Charge conjugation reverses flux and chirality. On W plus its conjugate, merely choosing a conjugate exchange with $J^2=+1$ or $-1$ changes the real commutant. The finite check gives unitary commutant Lie dimension three for the first choice and one for the second. The actual vertical KO-two charge conjugation has $J^2=-1$. Moreover the opposite action of a real spectral triple is not the same thing as demanding that its left algebra commute with J. **Proved** (the sign is also checked numerically in Python, research_checks_knowledge.md §4.3): this prevents a pseudoreal dimension-two representation from being accepted as a derived H summand or a complete KO-six triple.

# 9. Constructing a surviving spinor bundle

The five-dimensional spinor representation restricted to $SU(2)$ isotropy is 2 plus 1 plus 1. Therefore the different coefficient bundle

$$
V=L\oplus L\oplus L^2\quad\hbox{on }N
$$

has vertical positive kernel

$$
K=\mathbb C^2\oplus W^*\simeq S_5^*
$$

as an $SU(3)$-equivariant complex bundle. This derives the underlying compensating spinor bundle of the smooth five-sphere model in section 13 from an explicit monopole family. The natural Berry connection has parallel algebra $M_2(\mathbb C)\oplus\mathbb C$; it is not yet the dual Levi-Civita spin connection.

**Proved existence of an engineered connection:** the fibrewise Toeplitz map from horizontal $\operatorname{End}(V)$-valued symbols onto $\operatorname{End}(K)$ is surjective. Constant symbols on the two L copies supply $M_2(\mathbb C)$, scalar symbols on $L^2$ give $\operatorname{End}H^0(\mathcal O(1))$, and sections of $\operatorname{Hom}(L,L^2)=\mathcal O(1)$ give all off-diagonal columns. Adjoints supply rows. Compact-group averaging supplies an equivariant right inverse. Consequently a smooth horizontal unitary connection can be chosen so that its Berry connection is the dual spin connection, leaving the vertical monopole operator unchanged.

This uses off-diagonal connection components between the flux summands. They are extra higher-dimensional background freedom; a model restricted to one fixed diagonal Abelian monopole connection does not already have them.

## Compatible circle lifts can be specified

For G=$U(3)$ on $S^5$, isotropy is $U(2)$. On its spin cover the vertical root is $\mathcal O(-1)\otimes\det(W)^{-1/2}$, so the unmodified kernels acquire that half-character. Use the same underlying V but linearize it as

$$
V'=L\oplus(L\otimes\chi_{\det})
\oplus(L^2\otimes\chi_{\det}).
$$

The character line is topologically trivial and has G-character $\det(g)$. The resulting isotropy kernel is

$$
\det^{-1/2}\oplus\det^{1/2}
\oplus(W^*\otimes\det^{1/2}),
$$

the restricted $S^5$ dual spinor representation. The target connection and a right inverse can now be chosen equivariantly under the compact spin cover. The free R action on N is projectable on the total spin/coefficient system; its base and vertical spin factors can individually pick up minus signs, which cancel in the total bundle. Equivariance alone is insufficient to retain circle zero modes. The next calculation supplies the missing Wilson-line condition.

## A concrete Wilson-line compatibility test

Use the Berger convention $g_\eta=R_b^2(g_H+\eta^2\theta_H^2)$. In a frame carried around a Hopf orbit, the horizontal Levi-Civita connection rotates two complex planes at rate $\eta^2$, while the spin frame acquires a minus sign after a full $2\pi$ turn. On the $SU(2)$ singlet, singlet and doublet components this gives

$$
\operatorname{Hol}(S_5^*)
=\operatorname{diag}(-e^{2\pi i\eta^2},-e^{-2\pi i\eta^2},-I_2).
$$

The canonical $SU(2)$ lift $\operatorname{diag}(e^{-i\theta/2},e^{-i\theta/2},e^{i\theta})$ ends at $-I_2$, so the unengineered kernel holonomy is $\operatorname{diag}(1,1,-I_2)$, and the parent $L^n$ coefficient holonomy is $(-1)^n$. The engineered target therefore has parent coefficient holonomy

$$
\boxed{\operatorname{Hol}_R(V')
=\operatorname{diag}(e^{2\pi i\eta^2},e^{-2\pi i\eta^2},1).}
$$

**Conditional** on the analytic connection and spin-lift formulas (the phase arithmetic is checked in Python, research_checks_knowledge.md §4.7): for the specified connection and spin lifts, all three coefficient lines retain a circle zero mode exactly when $\eta^2$ is an integer. For example $\eta^2=2$ is nonround, has $U(3)$ isometry on the smooth $S^5$ branch, and has a rank-three circle kernel. At $\eta^2=1/2$ only the third parent coefficient line survives the circle collapse. The determinant character shifts integer Lie weights by three but contributes no holonomy phase. This $\eta$ is the five-sphere metric parameter; it is independent of the lens-space $\xi$ used below.

The relevant $U(3)$ stabilizer on N is $U(1)^2$. With the chosen character shifts its three coefficient characters are distinct, so the invariant correction along R is diagonal. The target Berry connection fixes that component; no extra invariant mixing can alter this check. Homogeneity makes the holonomy conjugacy class constant over F, and a fixed trivial-holonomy kernel has a uniform gap to other circle modes. A Python check (research_checks_knowledge.md, section 4.7) covers the resulting finite-matrix phase arithmetic; it assumes the analytic connection and spin-endpoint formulas rather than deriving them independently. The integer condition is not universal for other equivariant backgrounds. This supplies an engineered example passing both the $S^2$ fibre-kernel test and the first circle Wilson-line test. It supplies no dynamical selection of $\eta^2$, and no calculation yet shows that the second, fixed-point circle quotient preserves the desired fermion content.

## The analytic limit and its scope

For a spin Riemannian submersion with round, totally geodesic $S^2$ fibres and a compatible connection metric, write

$$
D_\epsilon=\epsilon^{-1}A+B+\epsilon C,
$$

where A is the vertical operator, B the horizontal Dirac operator and C a bounded curvature term. The following is a **proved conditional lemma**. Assume the common domains and projections are preserved, $\ker A$ has constant rank and gap $\delta$, $\{A,B\}$ is bounded, and the closures are self-adjoint. Let $P$ project onto $\ker A$. Then $PB(1-P)$ is bounded, and for u in the heavy block,

$$
\|Q(\epsilon^{-1}A+B)Qu\|^2
\ge(\delta^2\epsilon^{-2}-c\epsilon^{-1}-c_0)\|u\|^2.
$$

The heavy resolvent is $O(\epsilon)$. The Schur complement gives embedded norm-resolvent convergence to PBP with $O(\epsilon)$ error. The bounded $\epsilon$ C changes the resolvent by at most $\epsilon\|C\|$, so no unproved first-order anticommutator estimate for C is needed.

The homogeneous connection transports the vertical operator by fibre isometries. Adding the specified horizontal multiplication operators changes $\{A,B\}$ by a bounded vertical commutator. These are the required compatibility conditions. **Conditional application:** the precise geometric Dirac domain and decomposition must be implemented for the final chosen metric/connection; a full spectrum or vacuum has not been solved here.

With the engineered target connection, the candidate effective operator is $D_5$ twisted by $S_5^*$. It identifies with one Clifford summand of the de Rham/signature operator [5]. Since the only cohomology of $S^5$ is in degrees zero and five, that summand has a one-dimensional complex kernel. A complex higher-dimensional Dirac field therefore has one candidate four-dimensional Dirac zero-mode sector. A finite scalar mass can give it a finite mass.

**The natural identity zero mode is electrically neutral.** A determinant-character lift, a further coefficient representation or another charged construction is required for an electron. Section 13 specifies comparison models, charges and kinetic ratios; none derives those charges from the present rank-four kernel. The full real completion also requires flux reversal, its J and the physical fermion projection.

# 10. Torus/Weyl quotients and what the spin lift changes

For an elliptic curve $E$, let $A=\{(z_1,z_2,z_3):\sum z_i=0\}$. The fibre of the Abel-Jacobi map $\operatorname{Sym}^3(E)\to\operatorname{Pic}^3(E)$ over $\mathcal O(3[0])$ is $|3[0]|=\mathbb{CP}^2$, so $A/S_3=\mathbb{CP}^2$. Also $E/\{\pm1\}=\mathbb{CP}^1$. These identities give

$$
\mathbb{CP}^2\times\mathbb{CP}^1
\simeq (A\times E)/(S_3\times\mathbb Z_2),
\quad A\times E\simeq T^6.
$$

**Proved**, with primary general context in [6]. These are smooth complex quotient varieties, with branched quotient maps and singular quotient metrics. The isotropy stack and crossed product retain extra information. The equality of the finite group with the Weyl group of $SU(3)$ times $SU(2)$ does not derive that continuous gauge group.

For an untwisted real group algebra, $S_3$ has real-type irreducibles of dimensions 1,1,2. The resulting real blocks do not include H. Matrix blocks of size three can nevertheless occur through a three-point orbit, rather than a three-dimensional $S_3$ irrep.

## A real-algebra improvement

Use the periodic torus spin structure and the actual linear action on its tangent $\mathbb R^6$. A transposition rotates one real two-plane by $\pi$; its spin lift S has $S^2=z=-1$. A three-cycle has a lift R with $R^3=1$ and $SRS^{-1}=R^{-1}$. Their preimage is the binary dihedral group Dic(3). In its spin sector,

$$
\mathbb R[\mathrm{Dic}_3]e_-
\simeq\mathbb C\oplus\mathbb H,
\qquad e_-=(1-z)/2.
$$

The Frobenius-Schur indicators are zero for the conjugate one-dimensional characters and minus one for the doublet. Explicit six-dimensional Clifford matrices verify the representation and its faithfulness on a chiral spinor module. **Numerical check in Python** (research_checks_knowledge.md §4.4-4.5).

The extra E inversion has a commuting lift T with $T^2=z$. At full fixed isotropy the real algebra becomes

$$
(\mathbb C\oplus\mathbb H)\otimes_{\mathbb R}\mathbb C
\simeq\mathbb C\oplus\mathbb C\oplus M_2(\mathbb C).
$$

Thus adding the second Weyl factor does not leave the quaternion block unchanged.

Two finite orbit types give a precise algebraic foothold:

| Orbit type in A×E | Stabilizer | Spin-twisted real orbit quotient | Selected corner |
|---|---|---|---|
| (a,a,a), 3a=0; E point not 2-torsion | $S_3$, orbit size 2 | $M_2(\mathbb C\oplus\mathbb H)$ | $\mathbb C\oplus\mathbb H$ |
| (a,a,-2a), 3a not 0; E point 2-torsion | $\mathbb Z_2$×$\mathbb Z_2$, orbit size 3 | $M_3(\mathbb C)$ plus $M_3(\mathbb C)$ | $M_3(\mathbb C)$ |

The first selection is an orbital matrix corner; the second is a central component. Therefore

$$
A_F=\mathbb C\oplus\mathbb H\oplus M_3(\mathbb C)
$$

is a corner of a finite-orbit quotient of the spin-twisted real crossed product. **Proved** algebraic statement; checked numerically in Python (research_checks_knowledge.md §4.4). It is not a result about the original untwisted complex crossed product. The corner has not been lifted to a global projection or obtained as a Dirac spectral band; choosing the two orbits and these projections remains input.

There is an explicit real-triple obstruction: geometric $J_6$ commutes with spin lifts, so the proposed opposite of $U_h$ is $U_h^{-1}$. For noncommuting group elements, $[U_g,U_h^{-1}]$ is nonzero. A Python check (research_checks_knowledge.md, section 4.4) confirms this order-zero failure. A regular left/right crossed-product bimodule may repair it, but changes multiplicities and requires new Clifford, corner and grading checks. Neither the SM bimodule nor hypercharges have been derived by the finite-algebra identification.

This makes the torus route more specific than an untwisted group-algebra analogy. It supplies real algebra types after explicit selections; the smooth product monopole route supplies simpler flat kernel bundles. Neither currently dominates the other as a complete spectral-triple derivation.


# 11. Boundaries, defects and the M-theory connection

## 11.1 A genuine change of KO-degree

For a compact spin seven-manifold $Z$ with boundary $X$, the real K-homology boundary map gives

$$
\partial:KO_7(Z,X)\longrightarrow KO_6(X),
\qquad\partial[D_Z]=[D_X].
$$

The normal Clifford action supplies the even boundary grading. This is a precise seven-to-six mechanism, distinct from circle collapse. Relative spectral triples provide an analytic framework with additional hypotheses [9]. The boundary class need not vanish on $X$; its pushforward into $Z$ does. A complex integer index should not be confused with an untwisted real index in $KO_6(\mathrm{point})=0$.

The twistor candidate has a spin filling

$$
Z=D(\Lambda_-^2T^*S^4),
\qquad\partial Z\simeq\mathbb{CP}^3.
$$

It retracts onto $S^4$, so $H^2(Z;\mathbb Z)=0$. The boundary line class $h$ does not extend. The projective spin Dirac index is

$$
\operatorname{ind}_{\mathbb C}D_{\mathcal O(k)}
=\frac{k^3-k}{6}.
$$

This follows by integrating $e^{kh}(1-h^2/6)$ over $\mathbb{CP}^3$. The spin Dirac operator twisted by $\mathcal O(3)$, which equals the Dolbeault operator on $\mathcal O(1)$ because $S=\Lambda^{0,*}\otimes\mathcal O(-2)$, realizes the four holomorphic sections of $\mathcal O(1)$ and has index four. That twist cannot extend over any spin filling having this as its sole boundary: bordism invariance would force zero index. Nonextending gauge data, another boundary or a defect is therefore required. **Proved obstruction.**

## 11.2 What an eleven-dimensional bulk can supply

A sign-changing mass illustrates chiral localization. For $m(s)=m_0\tanh(s/L)$, a wall profile is proportional to $\cosh(s/L)^{-m_0L}$, with one normal-gamma projection. An eleven-dimensional wall can carry a ten-dimensional Weyl sector. A compact circle generally introduces another wall and a mirror sector. This localizing mass is not the Higgs doublet [22].

Hořava-Witten theory supplies an eleven-dimensional interval bulk with chiral ten-dimensional boundary gauge multiplets [10]. Its anomaly cancellation selects E8 boundary data, not the Standard Model by itself. It demonstrates a mechanism outside the smooth closed Dirac-product obstruction, without proving that M-theory is necessary.

The Bryant-Salamon geometry on $\Lambda_-^2T^*S^4$ supplies another connection: its asymptotic cone has link $\mathbb{CP}^3$. The link metric is strict nearly Kähler, not the Fubini-Study Kähler metric used for the four-section calculation. Their natural complex/almost-complex first Chern classes differ. Spin topology and the twisted index survive; equality of their full Dirac kernels does not follow [11].

At a conical singularity, chiral matter is localized on the four-dimensional apex locus. The product of spacetime with a regulating six-dimensional link is not automatically a ten-dimensional propagating matter theory. Boundary matter and conical defect matter are distinct mechanisms.

## 11.3 Two negative tests for a single cone

For a primitive link two-class $w$, the local inflow equations for the $\mathbb{CP}^3$ cone give charge moments [12]

$$
\sum q^3=\int w^3=1,
\qquad \sum q=\frac14\int wp_1=1.
$$

One complete Standard Model generation in the all-left-handed convention instead has $\sum(6Y)=\sum(6Y)^3=0$. The single cone cannot be the entire generation under that hypercharge assignment. It may be a sector in a larger construction, with additional ingredients.

A pulled-back link two-form also has squared norm $r^{-4}$ and cone volume $r^6dr$. Its gauge kinetic integral behaves as $\int r^2dr$ and diverges at infinity. A dynamical four-dimensional gauge field requires a compact embedding or another normalizable realization. Boundary K-homology alone supplies neither this normalization nor an inflow action.

# 12. A controlled six-to-five operator limit

On $\mathbb{CP}^3$, take the circle with weights $(1,1,-1,-1)$ and remove its projective $\mathbb Z_2$ kernel. Its orbit space is topologically $S^5$, with two fixed $\mathbb{CP}^1$ strata [2]. Let $D$ be an equivariant twisted spin Dirac operator, $\Gamma$ its grading and $L$ the self-adjoint effective circle generator. Assume a projectable lift and compatible self-adjoint domains.

Define

$$
D_\tau=D+\tau\Gamma L.
$$

The relations $[D,L]=[\Gamma,L]=0$ and $\{D,\Gamma\}=0$ give

$$
D_\tau^2=D^2+\tau^2L^2.
$$

With $P_0$ projecting onto $\ker L$, the heavy resolvent is bounded by $(1+\tau^2)^{-1/2}$. **Proved operator limit:** only circle-invariant modes survive. Uniformly bounded commutators retain invariant scalar functions.

The principal symbol supplies the metric deformation

$$
g_\tau^{-1}=g^{-1}+\tau^2K\otimes K,
$$

where $K$ is the Killing field. Orbit circumferences are at most $2\pi/\tau$. The metric collapses to the orbit metric. The operator has an added Clifford coupling; it need not be the canonical Levi-Civita Dirac operator of $g_\tau$.

The original even grading fails, since $\{\Gamma,D_\tau\}=2\tau L$. A doubled family repairs the grading and, with compatible real lifts, the KO-six signs:

$$
\widetilde D_\tau=D\otimes\sigma_1
+\tau L\otimes\sigma_2,
$$

$$
\widetilde\Gamma=\Gamma\otimes\sigma_1.
$$

The invariant light sector is then doubled too. Selecting one branch afterwards is additional input; the opposite action still needs a suitable bimodule.

## 12.1 The dimension really drops

For Fubini-Study scalar harmonics, the invariant cumulative count through level $K$ is exactly

$$
N_0(K)=\frac{(K+2)^5-(K+2)}{30}.
$$

The unrestricted count is $\binom{K+3}{3}^2$. Spectral resolution grows linearly with $K$, giving exponents five and six. Fixed circle characters have the same degree-five growth. Elliptic comparison and a principal-stratum lower bound extend the exponent to compatible finite-rank equivariant bundles; precise leading terms require equivariant Weyl analysis [13].

The spacetime product therefore changes from spectral dimension ten to nine in the singular limit. Every finite $\tau$ still has dimension ten. The order of limits matters.

## 12.2 Compensation preserves defect information

The four $\mathcal O(3)$-twisted zero modes split into two circle-weight pairs. A trivial coefficient doublet with characters $-1,+1$ compensates them and retains four invariant modes. Invariant matrix-valued symbols recover the compressed pair $M_2(\mathbb H)\subset M_4(\mathbb C)$. The construction is checked numerically in Python (research_checks_knowledge.md §3.1-3.3), with the coefficient doublet supplied as input.

It does not descend to an ordinary untwisted bundle on smooth $S^5$. A line bundle on $S^5$ has zero degree-two class, while $\mathcal O(3)$ does not. Fixed-stratum isotropy weights survive and must enter the invariant domain. The proposed antiunitary also fails to give a commuting opposite action for the full matrix algebra on the small module.

The inherited nearly Kähler/G2 quotient has a singular metric and only the specified SO(3) symmetry [14]. It is not the U(3) Berger background below. A homeomorphism to $S^5$ does not join the theories.

# 13. Smooth nine-dimensional electron models

The desired endpoint is QCD plus QED with massive Dirac fermions and no accessible weak reactions. A five-dimensional internal manifold is compatible with vectorlike four-dimensional matter, but neither light masses nor charges follow from its dimension.

Round $S^5$ has untwisted Dirac eigenvalues

$$
\lambda_\ell=\pm(\ell+5/2)/R.
$$

There are no zero modes. Shrinking $R$ makes them heavy. A nonround Hopf-Berger metric has the useful U(3) isometry algebra [15], but a light electron needs explicit spectral and equivariant data.

## 13.1 One electron from a specified character

Twist by the dual spinor bundle with its dual spin connection. The combined bundle $S_5\otimes S_5^*$ has one internal zero mode, the identity, as proved through the Clifford/de Rham identification [5]. Give its otherwise trivial additional line the U(3) character $\det^{-1}$. The central Hopf weight is $-3$; normalize $Q=\mathrm{Hopf}/3$. The mode is an SU(3)-singlet of charge $-1$.

A nine-dimensional Dirac field gives one four-dimensional Dirac zero-mode sector. A gauge-invariant bulk mass supplies finite electron mass. Both chiralities have the same charge, so the photon couples vectorially. The dual spin connection and determinant character are deliberate extra data, not consequences of the metric alone.

If gauge kinetic terms come only from the common Einstein-Hilbert reduction, with $\operatorname{tr}(T_aT_b)=\delta_{ab}/2$ and $V=\operatorname{Vol}(S^5,g_\eta)$, the Killing-field integrals give

$$
I_3=VR^2\frac{\eta^2+3}{24},
\qquad I_Q=VR^2\frac{\eta^2}{9}.
$$

Consequently

$$
\frac{e^2}{g_3^2}
=\frac{3(\eta^2+3)}{8\eta^2}.
$$

**Conditional normalization** (derived analytically in `research_limits/nine_dimensional_construction.md` from the sphere averages $\langle z^*T^2z\rangle=1/6$ and $\langle(z^*Tz)^2\rangle=1/24$; no script computes it; §13.2 uses a different charge generator and obtains $3(\eta^2+3)/(32\eta^2)$). Extra kinetic terms or thresholds can change it. The round point has enhanced SO(6) isometry and extra vectors. Nonround metrics need supporting fields and stabilization; no such vacuum has been supplied.

## 13.2 A singlet/triplet from the algebra pair

The quaternionic/complex pair suggests another comparison:

$$
S^5=SU(4)/Sp(2).
$$

Let $E$ be its complex rank-four spinor bundle, and let $F$ be a trivial rank-four complex bundle with fundamental SU(4) equivariance. Twisting by $\operatorname{Hom}(E,F)$ gives

$$
\ker D_{\operatorname{Hom}(E,F)}\simeq\mathbb C^4.
$$

These are four modes after contracting the spinor into the identity, not the sixteen-particle finite module. For a Berger metric, keep the dual Levi-Civita spin connection on $E^*$.

The lifted U(3) embeds as $\operatorname{diag}(\det(u)^{-1},u)$ in SU(4). Its map to geometric U(3) is $u\mapsto\det(u)^{-1}u$, with kernel $\{\pm I\}$. For $u=e^{i\phi}I$, the geometric Hopf angle is $-2\phi$. One consistent charge normalization gives

$$
Q_F=\operatorname{diag}(-1,1/3,1/3,1/3).
$$

There is a vectorlike electron and a colored triplet. On the parent SU(4), this is a $B-L$ direction, not a derived electroweak combination. A gauge-invariant mass matrix can make the triplet heavy while preserving the electron. The coefficient matrix centralizer is $\mathbb C\oplus M_3(\mathbb C)$.

This charge embedding instead gives

$$
\frac{e^2}{g_3^2}
=\frac{3(\eta^2+3)}{32\eta^2}.
$$

The factor of four relative to the previous model is due to distinct charge embeddings and lifts. It is not a discrepancy within one theory. Global gauge bundles must admit the specified lift; the real bimodule, Higgs operator and supporting vacuum remain missing.

## 13.3 What agrees and what remains separate

The finite heavy-weak limit and both smooth five-sphere comparisons can give a massive charge-minus-one Dirac electron with vectorial electromagnetic interaction. They differ in how charge is selected and how the kinetic terms match. A shared current structure does not establish a shared numerical electromagnetic coupling.

The flux-one-one-two construction supplies the underlying compensating spinor bundle. It has not derived the extra $F$ representation or the determinant character, nor transported a full real finite triple through either singular quotient.

# 14. The two electroweak limits

## 14.1 Infinite weak masses

At tree level,

$$
M_W=g_2v/2,\qquad
M_Z=\sqrt{g_2^2+g_Y^2}\,v/2.
$$

Weak decoupling requires $g_2^2/M_W^2\to0$ and the corresponding neutral-current coefficients to vanish. Infinite masses alone are insufficient if couplings scale too. Fixed finite gauge couplings and $v\to\infty$ give $G_F\to0$, removing beta decay, muon decay and ordinary charged-current reactions.

To keep desired fermions finite,

$$
y_f\to0,\qquad y_fv\to\sqrt2\,m_f.
$$

Fixed nonzero Yukawas instead make their fermions heavy. A heavy up-type Yukawa implements the finite centralizer calculation. A surviving geometric Dirac operator could generate finite masses differently, but that spectrum must be computed.

A collapse does not automatically eliminate weak vectors. Background-preserving isometry vectors or parallel matrix gauge modes may survive. Their couplings and masses require a separate calculation.

## 14.2 Massless weak vectors and chirality

At fixed nonzero gauge couplings, the classical $v\to0$ limit restores electroweak symmetry. Its particle representation is chiral. With a right neutrino, the virtual difference $I_G=[V_L]-[V_R]$ is nonzero in the representation ring of the full group. On restricting to color and electromagnetism, both sides become

$$
3_{2/3}\oplus3_{-1/3}\oplus1_{-1}\oplus1_0.
$$

The restricted difference vanishes. Higgs breaking permits pairings between representations inequivalent under the full group. This explains the compatibility of the heavy-weak endpoint with a vectorlike nine-dimensional model, while the restored chiral endpoint is not supplied by an ordinary closed eleven-dimensional Dirac product.

This is a representation calculation, not a derived continuum equivariant index. For a fixed equivariant Fredholm family, a nonzero chiral index cannot disappear in a symmetry-preserving gapped deformation. Breaking symmetry, closing a gap, adding a boundary or changing the module alters the applicable assumptions.

Leptons alone have uncancelled electroweak anomalies: one generation contributes $-1/4$ to $SU(2)^2Y$ and $3/4$ to $Y^3$, cancelled by quarks in the full theory. Pure leptonic QED is consistent; a leptons-only restored electroweak theory requires another mechanism. Quantum vacuum effects, including QCD-induced breaking when light quarks remain, lie beyond the classical $v\to0$ shorthand.

Making W and Z massless does not itself grow an eleventh metric dimension. Such an identification needs a KK tower, its heat-law calculation and a compatible chiral mechanism.

## 14.3 The angle test

For the earlier Berger lens-space comparison, fixed Lie-generator conventions give

$$
K_W=VR^2(2+\xi^2)/3,\qquad K_Y=VR^2\xi^2,
$$

and therefore

$$
\cos^2\theta_W=\frac{3\xi^2}{4\xi^2+2}.
$$

The lens order $p$ cancels in the common volume factor. The value $5/8$ requires $\xi^2=5/2$; the unsourced Einstein condition selects the round $\xi=1$, giving $1/2$. Topology can constrain a charge lattice, but it does not force this kinetic ratio. The proposal that $p=5$ determines $5/8$ fails this test. **Proved** for the Einstein-Hilbert Kaluza-Klein ansatz and the stated embedding: the derivation is in [connes_kk_research_state.md §3.2](connes_kk_research_state.md#32-one-precise-berger-calculation), where $p=5\to5/8$ appears only as a resonance conditional on an added postulate (§4.2); the value $5/8$ at $\xi^2=5/2$ is checked in exact rational arithmetic in Python (research_checks_knowledge.md §4.8). The formula itself is in the literature: Niemi and Slizovskiy, arXiv:1004.0212, eqs. (94)-(95) (see LITERATURE.md, section F).

The finite Standard Model trace instead gives, per generation and with $Q=T_3+Y$,

$$
K_W=2,\qquad K_Y=10/3,
\qquad K_Y/K_W=5/3.
$$

With spectral-action matching, $\cos^2\theta_W=5/8$ at the matching scale. Charge conjugation and generation replication do not change the ratio. Running and thresholds are needed for a low-energy prediction. The actual chiral representation, not simply its abstract algebra, controls the result.

# 15. Consolidated result and the next test

The central hypothesis is now precise: a seven-dimensional spin geometry might, through different controlled reductions and finite-mode correspondences, provide a KO-six almost-commutative description and a five-dimensional vectorlike color-plus-electromagnetic endpoint. The components exist; their assembly into one physical theory remains **conjectural**.

**Established geometry.** The Aloff-Wallach fibrations, product/flag distinction, torus identities, spin conditions, boundary construction and singular orbit spaces are exact. There is a sequential seven-to-six-to-five orbit chain, but its inherited second metric is not the smooth U(3) endpoint.

**Established finite results.** Heavy operators select residual algebras after supplying the finite bimodule. Twistor compression produces a nested quaternionic/complex pair. Spin-twisted orbit corners give the Standard Model real algebra types after explicit selections. Neither derives the full bimodule.

**Decisive spectral result.** The natural flux-one-two-three construction fails the proposed parallel matrix-gauge mechanism. Fluxes one, one and two give the dual spinor bundle, and an enlarged connection class can engineer its Berry connection. The natural light mode is neutral. The Wilson-line condition is tied to the specified connections and lifts.

**Physical endpoint remains conditional.** Smooth nine-dimensional comparisons give vectorlike electron modes and kinetic ratios with prescribed coefficient data. No common family yet removes weak interactions, preserves the desired charged fermions, and selects its metric and connection from field equations.

The next decisive calculation should construct one real equivariant correspondence for the selected seven-manifold and kernel, without adding manifolds just to match numbers. It must compute:

1. The charge-conjugate-completed light module and a commuting opposite action. Any torus orbit-corner implementation must repair its demonstrated order-zero failure.
2. The gauge action on that module, including the Abelian generator and global lift. A neutral identity mode cannot be relabeled an electron.
3. Vector and scalar fluctuation operators: their zero modes, heavy masses, couplings and a physical Higgs family.
4. A controlled limit with those data and a supporting solution of the higher-dimensional equations, or an explicit obstruction to it.

The missing theorem joins algebra selection to geometric spectral reduction. If representations, Majorana direction and connections remain prescribed, the result is a geometric realization of the finite model rather than a derivation of its selection.

## The broader lesson about limits

The analogy with $c$, $\hbar$ and $G$ is useful when expressed as controlled limits. Galilean kinematics emerges as relativistic corrections vanish; classical dynamics in suitable semiclassical regimes; Euclidean approximations remain useful locally in curved geometry. Newtonian gravity already contains $G$, so finite $G$ alone does not imply Einstein geometry. Euclid's mathematics is not refuted by physical curvature.

Here the corresponding discipline is to state the parameter, surviving observables and error control. Internal noncommutative matrices are not themselves quantum fluctuations controlled by $\hbar$. A Dirac-defined metric does not alone derive causal structure or gravitational dynamics. Relating nine-, ten- and eleven-dimensional descriptions requires those structures and their limits to be specified.

# Reproduction and provenance

The finite checks were run in Python (numpy; exact fractions where stated), and they and their recorded outputs are in [research_checks_knowledge.md](research_checks_knowledge.md): the initial finite triple, heat windows and twistor data (section 1); centralizers, gauge dimensions, first-order failure, unimodularity, index and anomaly arithmetic (section 2); compensation and scalar counts (section 3; the electromagnetic normalizations were never computed, see section 6, item 1); curvature, parallel commutants, real-structure sensitivity, spin-lift algebra dimensions, the order-zero obstruction, Chern arithmetic and gauge traces (section 4).

These are finite checks of specified constructions, not PDE solvers or numerical evidence for a Standard Model vacuum. The Wilson-line check covers phase arithmetic after supplying analytic connection and lift formulas. The dual-spinor zero-mode result is Hodge theoretic. The heat plot illustrates a mechanism, not fitted particle physics.

The canonical Markdown is the paper source. The PDF builder and figure generator are included. Older notes retain detailed derivations but do not override the qualifications in this paper. No claim of priority, peer review or a completed compactification is made.

# References

1. F. Lehmann. *Families of Complete Non-compact Spin(7) Holonomy Manifolds*, thesis (2020), chapter 4. [Oxford thesis](https://people.maths.ox.ac.uk/lotay/Lehmann%20PhD%20Thesis.pdf).

2. M. Atiyah and E. Witten. *M-Theory Dynamics on a Manifold of G2 Holonomy*, sections 3.3-3.4. [arXiv:hep-th/0107177](https://arxiv.org/abs/hep-th/0107177).

3. B. Ammann. *The Dirac Operator on Collapsing S1-bundles*. [doi:10.5802/tsg.195](https://doi.org/10.5802/tsg.195). B. Ammann and C. Bär. *The Dirac Operator on Nilmanifolds and Collapsing Circle Bundles*. [arXiv:math/9801091](https://arxiv.org/abs/math/9801091).

4. J. A. Hillman. *An Explicit Formula for a Branched Covering* (2017). [Author's PDF](https://www.maths.usyd.edu.au/u/pubs/publist/preprints/2017/hillman-1.pdf).

5. J. Rosenberg and S. Weinberger. *The Signature Operator at 2*, especially Lemma 13. [Author's PDF](https://www.math.umd.edu/~jmr/signature.pdf).

6. A. Chirvasitu, R. Kanda and S. P. Smith. *Finite Quotients of Powers of an Elliptic Curve*. [arXiv:1905.06710](https://arxiv.org/abs/1905.06710).

7. A. H. Chamseddine, A. Connes and W. D. van Suijlekom. *Beyond the Spectral Standard Model: Emergence of Pati-Salam Unification*. [arXiv:1304.8050](https://arxiv.org/abs/1304.8050).

8. A. H. Chamseddine and A. Connes. *Noncommutative Geometry as a Framework for Unification of All Fundamental Interactions Including Gravity. Part I*, section 9.1. [arXiv:1004.0464](https://arxiv.org/abs/1004.0464).

9. I. Forsyth, M. Goffeng, B. Mesland and A. Rennie. *Boundaries, Spectral Triples and K-homology*. [arXiv:1607.07143](https://arxiv.org/abs/1607.07143).

10. P. Hořava and E. Witten. *Eleven-Dimensional Supergravity on a Manifold with Boundary*. [arXiv:hep-th/9603142](https://arxiv.org/abs/hep-th/9603142).

11. S. Karigiannis and J. D. Lotay. *Bryant-Salamon G2 Manifolds and Coassociative Fibrations*. [arXiv:2002.06444](https://arxiv.org/abs/2002.06444).

12. E. Witten. *Anomaly Cancellation on G2-Manifolds*. [arXiv:hep-th/0108165](https://arxiv.org/abs/hep-th/0108165).

13. P. Ramacher. *Singular Equivariant Asymptotics and Weyl's Law*. [arXiv:1001.1515](https://arxiv.org/abs/1001.1515).

14. B. S. Acharya, R. L. Bryant and S. Salamon. *A Circle Quotient of a G2 Cone*. [arXiv:1910.09518](https://arxiv.org/abs/1910.09518).

15. F. Torralbo and F. Urbano. *Index of Compact Minimal Submanifolds of the Berger Spheres*. [arXiv:2110.08027](https://arxiv.org/abs/2110.08027).

16. E. Witten. *Search for a Realistic Kaluza-Klein Theory* (1981). [doi:10.1016/0550-3213(81)90021-3](https://doi.org/10.1016/0550-3213(81)90021-3).

17. A. Connes and W. D. van Suijlekom. *Spectral Truncations in Noncommutative Geometry and Operator Systems*. [arXiv:2004.14115](https://arxiv.org/abs/2004.14115).

18. K. van den Dungen and W. D. van Suijlekom. *Electrodynamics from Noncommutative Geometry*. J. Noncommut. Geom. 7 (2013), 433-456. [arXiv:1103.2928](https://arxiv.org/abs/1103.2928).

19. A. Connes. *Noncommutative Geometry and the Standard Model with Neutrino Mixing*. [arXiv:hep-th/0608226](https://arxiv.org/abs/hep-th/0608226).

20. J. W. Barrett. *Matrix Geometries and Fuzzy Spaces as Finite Spectral Triples*. [arXiv:1502.05383](https://arxiv.org/abs/1502.05383).

21. M. A. Rieffel. *Matrix Algebras Converge to the Sphere for Quantum Gromov-Hausdorff Distance*. [arXiv:math/0108005](https://arxiv.org/abs/math/0108005).

22. D. B. Kaplan. *A Method for Simulating Chiral Fermions on the Lattice*. [arXiv:hep-lat/9206013](https://arxiv.org/abs/hep-lat/9206013).

23. C. A. Stephan. *Almost-Commutative Geometry, Massive Neutrinos and the Orientability Axiom in KO-Dimension 6*. [arXiv:hep-th/0610097](https://arxiv.org/abs/hep-th/0610097).
