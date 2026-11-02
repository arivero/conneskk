# Constructing the nine-dimensional step

**Archive status:** [canonical_research.md](../canonical_research.md) integrates these results with the Aloff–Wallach/flag and torus/Weyl analysis. It advances the spinor-bundle construction and adds the circle Wilson-line check. This file remains a derivation appendix.

Research continuation, 2 November 2026. This note gives (i) a controlled operator and metric collapse from a six-dimensional internal space to a five-dimensional singular quotient, (ii) a compensated four-mode construction on that quotient, and (iii) a separate smooth nine-dimensional Kaluza–Klein comparison model with an electron. It does not identify these constructions as one physical vacuum. Terra checks were sequential; Astra supplied the compensation idea before its session became unavailable. All calculations reported below were checked independently.

## 1. An operator family that actually lowers dimension

Let X=CP3 with an invariant metric, initially the Fubini–Study metric. Use the circle action induced by diag(e^{i theta},e^{i theta},e^{-i theta},e^{-i theta}). The effective circle divides out its common projective Z2 kernel. Let D be an equivariant, self-adjoint, twisted spin Dirac operator on X, Gamma its grading and L the self-adjoint generator of the effective lifted circle. Assume the lift is projectable, so L has integer spectrum, and

\[
[D,L]=[\Gamma,L]=0,\qquad \{D,\Gamma\}=0,\qquad \Gamma^2=1.
\]

Define the initially ungraded spectral family

\[
D_\tau=D+\tau\Gamma L.
\]

Its square is exactly

\[
\boxed{D_\tau^2=D^2+\tau^2L^2.}
\]

The equality holds on the smooth core, with the self-adjoint closure obtainable from the simultaneous decomposition by L and D^2. If P0 projects onto ker L, then D_tau on P0 is D, whereas

\[
\|(1-P_0)(D_\tau-i)^{-1}\|\le (1+\tau^2)^{-1/2}.
\]

This proves embedded norm-resolvent convergence to D restricted to ker L. It is stronger than merely choosing invariant modes after the fact: there is a specified family that makes every nonzero circle-momentum sector heavy. It is an added spectral deformation, not a derived solution of the G2/M-theory field equations.

For scalar functions f,

\[
\sup_\tau\|[D_\tau,f]\|<\infty
\quad\Longleftrightarrow\quad Lf=0.
\]

Thus the retained scalar algebra is C-infinity(X)^U1. Its character space is the orbit space Y=X/U1, topologically S5. Its inherited smooth structure and metric retain the fixed strata; one must not silently replace it by an arbitrary smooth round S5.

### The metric is explicit

Let K be the effective Killing generator and ell=|K|_g. The commutator norm gives the dual metric

\[
g_\tau^{-1}=g^{-1}+\tau^2K\otimes K,
\qquad
g_\tau=g-\frac{\tau^2}{1+\tau^2\ell^2}K^\flat\otimes K^\flat.
\]

The horizontal metric is unchanged and the orbit circumference is

\[
2\pi\frac{\ell}{\sqrt{1+\tau^2\ell^2}}\le\frac{2\pi}{\tau}.
\]

The finite-tau metric is smooth even at K=0. The metric spaces collapse to the metric orbit space. This is the circle Cheeger deformation at the level of metrics. The operator D_tau need not be the canonical Levi–Civita spin Dirac operator of g_tau; it contains a specified additional Clifford coupling.

The same construction can use the invariant nearly Kähler metric on CP3. The exact four-mode kernel calculation in section 3 uses the Fubini–Study spin Dirac operator. Under an equivariant deformation to the nearly Kähler metric and a compatible invariant connection, the equivariant index is unchanged: the compensated invariant index remains four. Additional opposite-chirality pairs may appear, so equality of the full kernels has not been established. This protects the net invariant chirality without identifying the two metric-dependent Dirac operators.

### The grading price is explicit

One has {Gamma,D_tau}=2 tau L, so the simple deformation does not preserve the original even grading. A doubled version restores it:

\[
\widetilde D_\tau=D\otimes\sigma_1+\tau L\otimes\sigma_2,
\qquad
\widetilde\Gamma=\Gamma\otimes\sigma_1.
\]

If a charge-conjugate-completed J6 obeys the KO6 relations and commutes antiunitarily with the circle action, then J6 L J6^{-1}=-L. With one joint complex conjugation, Jtilde=J6 tensor K on the extra copy has Jtilde^2=1, Jtilde Dtilde=Dtilde Jtilde, and Jtilde Gammatilde=-Gammatilde Jtilde. Thus KO6 signs survive in the doubled family. The limiting invariant sector is doubled too. Selecting one sigma1 branch afterward is an additional prescription, not part of the original heavy-mode limit.

These statements do not supply order zero for a noncommutative coefficient algebra; its opposite action needs a separate bimodule.

## 2. Verify five-dimensional spectral growth

Compact resolvent alone would not establish the dimension. Here the scalar harmonics give an exact independent count.

For Fubini–Study holomorphic sectional curvature four, scalar level k has eigenvalue 4k(k+3). Its representation is the difference between bihomogeneous polynomial spaces of degrees (k,k) and (k-1,k-1). In Sym^k(C2_+ plus C2_-), weight 2a-k has multiplicity

\[
m_{k,a}=(a+1)(k-a+1),\qquad 0\le a\le k.
\]

The neutral cumulative count through harmonic level K is consequently

\[
N_0(K)=\sum_{a=0}^{K}(a+1)^2(K-a+1)^2
=\frac{(K+2)^5-(K+2)}{30}.
\]

Since Dirac-type resolution grows linearly with K, this is exponent five. The unrestricted cumulative scalar count is binomial(K+3,3)^2, of degree six. For any fixed effective circle character r, replacing the square by m_{k,a}m_{k,a-r} gives the same degree-five leading growth.

The exponent extends to an equivariant Laplace-type operator on a finite-rank projectable bundle. For an upper bound, equivariantly embed the bundle into a trivial bundle with a finite-dimensional circle representation. Elliptic quadratic-form estimates bound its invariant counting function by a finite sum of fixed-character scalar counts. For a lower bound, choose a compact patch in the principal quotient stratum and use the ordinary five-dimensional Dirichlet estimate there. Both bounds are constant multiples of Lambda^5 for |D|. Thus the logarithmic spectral dimension is five. A complete leading coefficient and remainder require the sharper equivariant Weyl analysis; Ramacher [1] provides the singular-orbit framework.

Taking a four-dimensional spin product gives spectral dimension ten for every finite tau and nine in the limit. The order of the high-energy and tau limits matters.

*Figure (scalar spectral check of the collapse, "A controlled 10 -> 9 spectral limit"; image removed, `git show 46d81b1:research_limits/nine_dimensional_collapse.png`).* Effective total heat dimension of the scalar CP^3 spectrum plus four spacetime dimensions, plotted against the resolution E = 1/sqrt(s) in Fubini-Study curvature units, from about 2 to 170, for tau = 0, 10, 80 and 1000. For tau = 0 and 10 the curves reach 10 by E of about 20. For tau = 80 the curve holds at 9 up to E of about 30 and climbs to 10 between E of about 40 and 70. For tau = 1000 it stays at 9 over the whole range. The figure uses the scalar spectrum only and makes no claim about fermions. Formulas: research_checks_knowledge.md, section 3.5.

The figure uses exact scalar multiplicities for Delta+tau^2 L^2, plus a four-dimensional heat density. It illustrates the six-to-five mechanism; it is not a computed twisted fermion spectrum. The implementation checks all levels through k=700, with the cutoff well above the plotted window.

## 3. Preserve the four twistor modes by compensation

On Kähler CP3, the spin Dirac operator twisted by O(3) has positive kernel H0(O(1))=V, of complex dimension four, and no negative kernel. For the symplectic circle cover, V splits into two weight spaces V+ and V-, each of dimension two. A single character shift can make only one of those pairs invariant.

Introduce the trivial rank-two coefficient bundle with circle representation

\[
C=\mathbb C_{-1}\oplus\mathbb C_{+1}.
\]

Its signs compensate the V weights. The invariant zero-mode space is

\[
W=(V_+\otimes\mathbb C_{-1})\oplus(V_-\otimes\mathbb C_{+1}),
\qquad \dim_{\mathbb C}W=4.
\]

The kernel of the twisted operator before circle selection has dimension eight; the non-invariant four modes become heavy under the ungraded D_tau deformation. The combined lift is projectable to the effective circle: the central minus signs of O(3) and C cancel. The coefficient doublet and its action are additional input. Rank two is minimal among trivial character compensators that preserve both weight pairs.

Choose opposite-charge unit vectors c_a and define I(v_++v_-)=v_+ tensor c_+ + v_- tensor c_-. Here c_a denotes the coefficient line opposite to V_a. With the quaternionic antiunitary j_V on V and j_C exchanging the two coefficient lines with j_C^2=+1, the induced j_W intertwines I with j_V and has j_W^2=-1.

### Recover the compressed algebras by invariant matrix-valued observables

Level-one coherent quantization obeys

\[
Q(f_B)=B,\qquad
f_B([w])=5\frac{\langle w,Bw\rangle}{\langle w,w\rangle}-\operatorname{Tr}B.
\]

For A in End_C(V), write A_ab=P_a A P_b and define

\[
F_A([w])=\sum_{a,b=\pm}f_{A_{ab}}([w])\,|c_a\rangle\langle c_b|.
\]

This is an invariant End(C)-valued observable. Its compressed quantization satisfies

\[
P_W(Q\otimes1)(F_A)P_W=I A I^{-1}.
\]

For quaternionic-Hermitian A, the original scalar symbol f_A is pulled back from the twistor base S4. Dressing its circle components as above recovers the same quaternionic generated algebra after compression. Thus we retain

\[
M_2(\mathbb H)\subset M_4(\mathbb C)
\]

on the compensated invariant kernel. The recorded check (research_checks_knowledge.md, sections 3.1-3.3) verifies the invariant dimension, quaternionic signs, symbol covariance, and compression, with errors below 2e-15.

There are three limits to this conclusion. First, Toeplitz compression is not multiplicative before taking the generated finite operator algebra. Second, the nested pair does not yet provide two independent central summands. Third, j_W is not the commuting opposite action of a real triple over the full matrix algebra. For example, a single left action of M2 on C2 fails order zero under the proposed coefficient conjugation. A Hilbert–Schmidt or correspondence bimodule must be constructed and its changed mode count checked. We therefore have a compensated spectral sector and compressed matrix correspondence, not a completed nine-dimensional real Standard Model triple.

### Why defect data remain

An honest line bundle on S5 pulls back trivially in H2, so O(3) cannot descend. More explicitly, with an effective-circle character shift k, its fibre weights at the two fixed CP1 sets are k-3 and k; they cannot both vanish. Adding the rank-two compensator restores global invariant sections but not a locally free quotient bundle. For the combined coefficient bundle O(3) tensor C, the cover-circle fibre weights are (-4,-2) at one fixed component and (+2,+4) at the other. Generic fibres and fixed fibres therefore have different invariant behavior. The full spinor also has isotropy weights; these must be retained in its domain conditions.

The correct construction is the invariant Hilbert space of the smooth upstairs problem, equivalently a quotient problem with specified equivariant fixed-stratum data. Calling it a defect sector has this precise meaning; it is not permission to discard those data and use an ordinary untwisted S5 spinor.

## 4. A separate smooth nine-dimensional model with an electron

To test what is actually possible at the desired endpoint, take a Hopf–Berger metric on S5 in C3:

\[
g_\eta=R^2(g_{\rm horizontal}+\eta^2\theta_{\rm Hopf}^2),\qquad \eta>0,\quad\eta\ne1.
\]

Its connected isometry group is U3, locally SU3 times U1 [2]. Ordinary metric Kaluza–Klein reduction therefore has the desired gauge Lie algebra. This metric is a NEW comparison background, not the inherited singular SO3 quotient of CP3.

Untwisted positive-curvature sphere spinors do not supply a zero-mode electron. A concrete coefficient choice does: twist the internal spin Dirac by the dual spinor bundle S5*. The combined bundle is End(S5), one simple Clifford summand of the complex differential forms. The corresponding Dirac square is the Hodge Laplacian. Since only H0 and H5 of S5 are nonzero, their two harmonic forms split into one mode in each Clifford summand. Thus

\[
\dim_{\mathbb C}\ker D_{S_5^*}=1.
\]

This follows from the Dirac/signature relationship described in [3], and holds for every smooth metric on S5 if the coefficient connection is kept equal to the dual spin connection. The representative is the parallel identity endomorphism. The zero mode is neutral under the natural isometry action.

To give it electron charge, tensor the combined field bundle with the flat line endowed with equivariant U3 character det^{-1}. The central action z→e^{i theta}z then has weight -3. Normalize physical electric charge by Q=Hopf/3; the mode has Q=-1 and is an SU3 singlet. A nine-dimensional Dirac field with this coefficient system reduces to ONE four-dimensional Dirac field on the zero-mode sector. A gauge-invariant nine-dimensional mass m_e gives that field mass m_e. Both four-dimensional chiralities have the same charge, so the photon couples vectorially.

The determinant character is deliberate additional input. So is the compensating dual spin connection. The action on S5 alone may require a spin double cover, but the signs cancel on End(S5); the combined field bundle and its determinant character have an honest U3 action. KK gauging of this combined equivariant bundle is well-defined using its associated-bundle connection. This is not a pure untwisted nine-dimensional Dirac compactification, nor a derivation of the character from the metric.

If colored vectorlike fields are wanted, the coefficient representation

\[
\overline{\mathbf3}\oplus(\overline{\mathbf3}\otimes\det)\oplus\det^{-1}
\]

has Hopf weights -1,+2,-3. After one consistent outer conjugation of the color convention these are down, up and electron charges -1/3,+2/3,-1. These representations are supplied as coefficient data. They do not reconstruct the chiral electroweak theory.

### A calculable electromagnetic comparison

Take SU3 generators T normalized by Tr(T_a T_b)=delta_ab/2. For z uniformly distributed on unit S5,

\[
\langle z^*T^2z\rangle=\frac16,\qquad
\langle(z^*Tz)^2\rangle=\frac1{24}.
\]

Consequently the Killing-field kinetic integrals, with V_eta=Vol(S5,g_eta), are

\[
I_3=V_\eta R^2\frac{\eta^2+3}{24},\qquad
I_Q=V_\eta R^2\frac{\eta^2}{9}.
\]

If the gauge kinetic terms come solely from the common Einstein–Hilbert reduction, their ratio is

\[
\boxed{\frac{e^2}{g_3^2}=\frac{I_3}{I_Q}
=\frac{3(\eta^2+3)}{8\eta^2}.}
\]

This is an explicit matching condition for this comparison model, not a prediction of the Connes spectral action. Additional kinetic terms or threshold corrections can change it. At eta=1 the metric has enhanced SO6 symmetry and extra massless vectors, so that point is not the requested exact U3 endpoint. A squashed Berger metric is not a vacuum of pure Einstein gravity by itself; supporting fields and stabilization have not been supplied. The calculation is kinematic until those equations are solved.

### A more direct use of the original quaternionic/complex pair

There is a second, more structured electron comparison. The compact groups of the pair M2(H) subset M4(C) give

\[
S^5=SU(4)/Sp(2)=\operatorname{Spin}(6)/\operatorname{Spin}(5).
\]

For the round metric, SU4→S5 is the spin frame bundle. Its associated quaternionic rank-two bundle

\[
E=SU(4)\times_{Sp(2)}\mathbb C^4
\]

is the complex rank-four spinor bundle. As a complex bundle it trivializes by [g,v]↦(gSp2,gv), but its quaternionic structure j_y=g j_0 g^{-1} varies and its spin connection is not flat. Let F be the trivial complex rank-four bundle with SU4 fundamental equivariance. The coefficient Hom(E,F) then has a geometric meaning, and

\[
\ker D_{\operatorname{Hom}(E,F)}
=\ker D_{E^*}\otimes\mathbb C^4\cong\mathbb C^4.
\]

For a Berger metric use its Levi–Civita spin connection on the same underlying bundle; the one-mode End(E) argument still applies. This supplies FOUR internal zero modes, not the sixteen-particle finite Connes module: the E index has been contracted into the spinor identity.

The lifted U3 subgroup is embedded in SU4 as diag(det(u)^{-1},u). On the geometric complex three-vector it acts by r(u)=det(u)^{-1}u. This map has kernel {+I,-I}, so it is a double cover of the geometric U3. For u=exp(i phi)I, the geometric Hopf angle is theta=-2phi. The F zero modes have Hopf charges (3/2,-1/2,-1/2,-1/2). Normalizing Q=-(2/3)Hopf gives

\[
Q_F=\operatorname{diag}(-1,1/3,1/3,1/3).
\]

The singlet is a vectorlike electron; the triplet is a vectorlike colored sector whose conjugate has charge -1/3. On the parent SU4 these charges are the B-minus-L direction, so this is not a derivation of electroweak hypercharge mixing. A gauge-invariant mass matrix diag(m_e,M_q I3) permits M_q→infinity with a fixed electron mass. The gauge Lie algebra remains su3 plus u1 in the metric kinetic sector. The coefficient matrix centralizer is C direct-sum M3(C).

This construction avoids an independently chosen determinant character for the electron: its singlet/triplet weights come from the fundamental F already present in the algebra pair. It still supplies the dual-spin connection and equivariant bundle lift, and its global gauge bundle must lift to the stated double cover. Spin signs cancel on End(E), but the central minus sign on F remains on the zero modes.

The different charge embedding also changes the Einstein–Hilbert kinetic normalization. Here I_Q/(V_eta R^2)=4 eta^2/9, and hence

\[
\boxed{\frac{e^2}{g_3^2}=\frac{3(\eta^2+3)}{32\eta^2}.}
\]

This differs by a factor of four from the independent determinant-character benchmark above; they are distinct coefficient/charge embeddings, not conflicting calculations of one model. At the round point the ratio is 3/8, but that point also has the unwanted enlarged SO6 gauge algebra. The same missing vacuum dynamics and the missing correspondence from the singular CP3 quotient remain. No finite grading, Majorana/Yukawa operator or full order-zero real bimodule has been reconstructed by this four-mode calculation.

## 5. What can now be joined, and what cannot

There are now concrete objects on both sides of the desired nine-dimensional step:

| Construction | What it establishes | Additional data or unresolved step |
|---|---|---|
| D_tau on CP3 | Controlled metric and resolvent collapse to a five-dimensional internal quotient | Not a G2 vacuum deformation; grading needs the stated repair |
| Opposite-charge compensator | Four invariant twistor modes and compressed quaternionic/complex algebras | Coefficient doublet; opposite action and independent module roles remain |
| Berger S5 plus twisted electron | Nine-dimensional background with U3 gauge algebra and one vectorlike charged zero mode | New metric, spin-connection twist, determinant character and supporting vacuum dynamics |
| SU4/Sp2 spinor correspondence | Natural Hom(E,F) coefficient, singlet/triplet kernel and a second calculable charge normalization | Only four internal modes; spin double-cover lift, missing full real finite module and vacuum |
| Earlier heavy-mass centralizers | PS→SM→SU3 times U1_em once the finite bimodule is given | Their Higgs scale has not been derived as the circle-collapse parameter |

The original G2 quotient has only the inherited SO3 symmetry and a singular metric. Acharya–Bryant–Salamon [4] compute its tensors and explicitly distinguish it from a naive smooth Calabi–Yau reduction. Our Cheeger/spectral deformation supplies an actual collapse family, but need not stay within G2 holonomy. Identifying it with electroweak symmetry breaking requires further dynamics.

In particular, setting tau proportional to v would be a chosen identification, not a deduction. The limit already has a well-defined electron comparison target, so the next question can be stated without hiding it: can an equivariant correspondence transport the full finite real bimodule and its Higgs operator through the singular quotient, while producing a supported nine-dimensional gauge background? We have not yet established that transport or a single complete vacuum.

## References and reproduction

The checks of the compensation, symbol covariance, finite algebra dimensions, the explicit order-zero obstruction and exact scalar harmonic counts are recorded in [../research_checks_knowledge.md](../research_checks_knowledge.md), section 3. The one-mode S5 conclusion is a Hodge-theoretic proof; the two-dimensional harmonic-sector check in the code is not a numerical solution of a PDE.

1. P. Ramacher, *Singular equivariant asymptotics and Weyl's law*. https://arxiv.org/abs/1001.1515
2. F. Torralbo and F. Urbano, *Index of compact minimal submanifolds of the Berger spheres*, geometric preliminaries on the U(n+1) action. https://arxiv.org/abs/2110.08027
3. J. Rosenberg and S. Weinberger, *The signature operator at 2*, especially Definition 1 and Lemma 13. https://www.math.umd.edu/~jmr/signature.pdf
4. B. S. Acharya, R. L. Bryant and S. Salamon, *A circle quotient of a G2 cone*. https://arxiv.org/abs/1910.09518
5. K. van den Dungen and W. D. van Suijlekom, *Electrodynamics from noncommutative geometry*. https://arxiv.org/abs/1103.2928 — a finite QED comparison; it is not a proof of the continuum descent proposed here.
