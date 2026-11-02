# Dimension limits, chirality and a twistor route to the finite Standard Model

**Archive status:** current conclusions and the integrated Aloff–Wallach/torus analysis are in [canonical_research.md](../canonical_research.md). This file is retained as a derivation appendix.

Research note, 1 November 2026. This records calculations and a conditional construction, not a completed derivation of the Standard Model from commutative Kaluza–Klein geometry. One Terra agent was used sequentially to check the constructions. No agents ran in parallel.

**Second-stage update:** Read [solidification.md](solidification.md) alongside this first-stage note. It derives the scalar-matching condition below as a heavy Majorana centralizer, extends the product collapse argument to bounded mixing, and adds a boundary/defect interpretation, an explicit CP3-to-S5 circle quotient, and tests of the proposed M-theory connection. Those results supersede the corresponding open questions and narrower assertions here. The continuum origin of the two independent module actions and the Standard Model dynamics remains open.

**Results obtained.** (i) Explicit heat-trace conditions distinguish dimension collapse from dimension emergence. (ii) A real finite matrix family has an emergent six-dimensional internal spectral window and fixed KO-degree six, with identifiable orientability and fermion-doubling limitations. (iii) A level-one twistor quantization naturally produces the quaternionic and complex algebras appearing in the Connes parent geometry. With stated additional module, flag, scalar-matching and unimodularity data, it reproduces the Standard Model algebra and one generation's charges. (iv) The Higgs representation occurs as a quaternionic tangent representation. (v) Restriction of the chiral fermion representation explains why the heavy-weak and massless-weak limits have different chirality constraints.

The numerical checks, exact formulas and figures can be reproduced with `python3 checks.py` after installing numpy and matplotlib. The spacetime part of the plots uses a four-dimensional heat density, or the corresponding local window on a large compact spacetime. The plots are spectral diagnostics, not fitted particle-physics predictions.

## 1. Four objects that a limit must distinguish

For an almost-commutative product on a compact even-dimensional spin manifold M,

\[
\mathcal A_N=C^\infty(M)\otimes A_N,\qquad
\mathcal H_N=L^2(S_M)\otimes H_N,\qquad
D_N=D_M\otimes1+\gamma_M\otimes D_{F,N},
\]

every fixed finite-dimensional H_N contributes zero to the ultraviolet Weyl exponent. In four spacetime dimensions, a fixed finite model has spectral dimension four even when its finite real structure has KO-degree six [1]. Sending some of its masses to infinity changes the retained algebra and matter, but does not, by itself, change four into nine or eleven.

The relevant data should therefore include:

* a spectral counting/heat-trace scale;
* the represented algebra and its opposite action, together with J and grading;
* the real K-homology/correspondence data, beyond the KO sign table;
* the gauge lift, matter representations, scalar fluctuation space, and matched gauge kinetic form.

The heat dimension at a specified resolution is

\[
d_{\rm eff}(s)=-2\frac{d}{d\log s}\log\operatorname{Tr}(e^{-sD^2}).
\]

It need not equal the KO-degree. For noncompact factors use an appropriate trace density; for compact M, distinguish a local heat window from its far infrared zero-mode regime.

**Elementary collapse proposition (direct proof for a reducing kernel).** Let T and S be finite self-adjoint operators, P the projection onto ker T, and suppose P reduces S. Let T have gap delta>0 on Q=1-P. For

\[
D_t=D_M\otimes1+\gamma_M\otimes(tT+S)
\]

the product anticommutation gives

\[
D_t^2=D_M^2\otimes1+1\otimes(tT+S)^2.
\]

Consequently the Q-sector resolvent at i has norm at most

\[
\big[1+(t\delta-\|S\|)^2\big]^{-1/2}
\]

for sufficiently large t. The P-sector retains D_M+gamma_M PSP. This is an embedded norm-resolvent limit, with the heavy-sector resolvent becoming zero. The second-stage addendum extends this product result to bounded light-heavy mixing, without assuming P reduces S, by finite block diagonalization. A general unbounded non-product extension still requires its own estimates: simply adding tT to an arbitrary unbounded D_M can permit spectral cancellations.

To retain an algebra representation, P must reduce the retained algebra. To inherit reality and grading, it must also commute with J and gamma. For fixed a, boundedness of [tT+S,a] as t grows forces [T,a]=0. Thus the natural fixed algebra is A intersect {T}', with any representation kernel subsequently quotiented. Compressing arbitrary a to PaP is generally not multiplicative.

**Emergence criterion.** A q-dimensional internal window requires, for a suitable growing family,

\[
\operatorname{Tr}(e^{-sD_{F,N}^2})\sim C_Ns^{-q/2}
\]

over a controlled interval of s. To obtain a genuine ultraviolet exponent q, the number of modes must become unbounded and this interval must extend toward s=0. A bounded number of states becoming light supplies more particle species, not extra continuum dimensions.

If a geometric scale R and matrix cutoff N give masses between order 1/R and N/R, the resolving window is 1/R << E << N/R. Sending R to infinity at fixed N does not create a continuum. A decompactifying family needs an unbounded mode count and, for an arbitrarily large continuum energy range, N/R tending to infinity. Infinite-volume limits also need trace-density normalization.

## 2. An explicit finite real family with a six-dimensional window

This is a mathematical test model. It is not a Standard Model approximation and does not satisfy the full orientability axiom.

Let N=2j+1, let L_i be spin-j angular momentum matrices, and set

\[
A_N=M_N(\mathbb C),\quad
H_N=\mathbb C^2_{\rm copy}\otimes\mathbb C^2_{\rm spin}\otimes M_N(\mathbb C).
\]

The algebra acts by left matrix multiplication. Define

\[
\delta_iX=[L_i,X],\quad
D_N^{(c)}=\sigma_1\otimes\left(c+\sum_i\sigma_i\delta_i\right),\quad
\gamma_N=\sigma_3\otimes1.
\]

In matrix coordinates J is one jointly antilinear map, with copy factor sigma_1, spin charge-conjugation factor i sigma_2, and X mapped to X*. Equivalently J=UK, where U=sigma_1 tensor i sigma_2 tensor transposition, and K conjugates all coefficients once. It obeys

\[
J^2=-1,\qquad JD=DJ,\qquad J\gamma=-\gamma J.
\]

These are KO-two signs. Moreover J L(a*) J^{-1}=R(a), and

\[
[L(a),R(b)]=0,\qquad [[D,L(a)],R(b)]=0.
\]

The second identity follows because [D,L(a)] is a spin-weighted sum of left multiplications by [L_i,a]. Thus order zero and order one are exact. This is related to the real fuzzy-space framework of Barrett [2]; no claim is made that every auxiliary axiom of a reconstructed spin manifold holds.

For c=0 the exact heat trace of D_N/R, with x=s/R^2, is

\[
K_N(x)=4+8\sum_{k=1}^{N-1} k e^{-xk^2}
       +4(N-1)e^{-xN^2}.
\]

The formula follows by decomposing M_N into angular momenta l=0,...,N-1. The undoubled operator sum sigma_i delta_i has eigenvalues l with multiplicity 2l+2 and -(l+1) with multiplicity 2l. The additional copy factor symmetrizes the spectrum. There are four zero modes.

The three regimes are

| Heat scale | Vertical heat trace | Meaning |
|---|---|---|
| x << N^{-2} | 4N^2 | Finite-matrix ultraviolet saturation |
| N^{-2} << x << 1 | approximately 4/x | Two-dimensional spectral window |
| x >> 1 | 4 | Retained kernel |

Taking three standard real graded products gives KO-degree 2+2+2=6. In the common resolving window their heat trace is approximately 64 R^6/s^3. Multiplying by the four-dimensional spacetime heat density gives an effective total exponent ten. Nevertheless, for every fixed N the true ultraviolet exponent of the almost-commutative product remains four:

\[
\lim_{N\to\infty}\lim_{s\downarrow0}d_{\rm eff}=4,
\qquad
\lim_{s\downarrow0}\lim_{N\to\infty}d_{\rm eff}=10.
\]

*Figure (finite matrix dimension window; image removed, `git show 46d81b1:research_limits/dimension_window.png`).* Effective total spectral dimension of spacetime times three finite real fuzzy factors, plotted against s/R^2 from 1e-8 to 1e2 for N = 12, 48 and 192. Each curve is 4 at small s, rises to a plateau at 10, falls back to 4 above s/R^2 of about 10, and has a shoulder near 7 around s/R^2 = 2. The plateau begins near s/R^2 = 2e-4 for N = 192 and near 3e-3 for N = 48. For N = 12 the curve peaks at about 9.7 near s/R^2 = 0.05 and has no plateau. Larger N extends the six-dimensional window toward high resolution. Formulas: research_checks_knowledge.md, section 1.2.

**Limits of this construction.** Its spectrum is doubled relative to a minimal sphere spinor spectrum. Its grading cannot be represented by the usual Hochschild orientation cycle: algebra and opposite-algebra actions are copy-identity, and any even product of [D,a] is again copy-identity, whereas gamma is sigma_3 on that factor. Consequently even the doubled continuum comparison is not convergence to the canonical oriented sphere triple. The c=0 kernel is unprotected: the allowed perturbation c=1 removes it. The retained algebra under R→0 is scalar, since commuting with every L_i forces a to be scalar. Indeed compression onto the kernel gives (tr a/N)P, which is not a representation for arbitrary a. Three collapsed factors leave 64 scalar-coupled states, with equal grading multiplicities, and no Standard Model gauge content.

Rieffel establishes quantum metric convergence of appropriate matrix approximations to spheres [3]. That theorem must not be substituted for a theorem about convergence of all the D,J,gamma, orientability and gauge data in this particular family.

## 3. A literal 9/10/11 spectral staircase does not supply chirality

Take an internal product B^5 times two circles of radii a and b, with b much smaller than a. Suppose B^5 is resolved in the energy range considered. A periodic circle contributes

\[
K_r(s)=\sum_{n\in\mathbb Z}e^{-sn^2/r^2},
\]

which behaves as sqrt(pi)r/sqrt(s) when s<<r^2, and as 1 when s>>r^2. Thus the external four dimensions plus the internal product exhibit dimensions eleven, ten and nine in successive resolution windows.

*Figure (two-circle dimension staircase; image removed, `git show 46d81b1:research_limits/dimension_staircase.png`).* Circle radii with b/a = 0.02. Plotted against s/a^2 from 1e-7 to 1e2, the effective total spectral dimension is 11 below s/a^2 of about 1e-3, drops to 10 there, stays at 10 up to s/a^2 of about 1, and reaches 9 by s/a^2 = 10. The figure is annotated: heat dimension alone does not supply a chiral projection. Formulas: research_checks_knowledge.md, section 1.3.

This is a statement about heat dimension. A reduction retaining the complete eleven-dimensional spinor module does not automatically acquire the canonical ten-dimensional Weyl projection in the middle window. The spinorial multiplicities and Clifford data must also be reduced. With antiperiodic spin structure a collapsed circle has no zero modes at all.

Among ordinary smooth Lorentzian dimensions 9,10,11, only ten has a nontrivial Weyl splitting of the full spin representation. This makes ten special in that particular comparison. It does not mean that every ten-dimensional compactification gives chiral four-dimensional matter, or that odd-dimensional theories with boundaries, orbifolds, defects, twists or retained coefficient modules cannot do so.

For a higher-dimensional unconstrained Dirac field on a smooth product M^4 times an odd-dimensional compact Y, with an ordinary vector-like internal connection, each internal zero mode yields a full four-dimensional Dirac field. Both four-dimensional chiralities have the same unbroken-gauge representation. This is the basic obstruction relevant to the proposed eleven-dimensional endpoint; see the original compactification discussion [4].

The modern non-Killing-field approach can generate asymmetric couplings to massive vectors. Its symmetric Killing endpoint does not establish a massless chiral Standard Model, nor does the cited work construct a mirror-decoupling limit [5]. One must distinguish asymmetric interactions from a nonzero chiral equivariant index.

## 4. A more targeted six-dimensional candidate: the twistor fibration

Consider

\[
S^2\longrightarrow\mathbb{CP}^3\xrightarrow{\pi}\mathbb{HP}^1\simeq S^4.
\]

The total space has six real dimensions. Chamseddine and Connes explicitly identified this projective-space relation as a hint in their discussion of the parent algebra M_2(H) direct-sum M_4(C) and its fermionic module Hom(E,F) direct-sum Hom(F,E), with quaternionic dim E=2 and complex dim F=4 [6, section 9.1]. They did not give the compactification/quantization derivation needed here.

Here is an explicit calculation behind the hint. At holomorphic level one, the quantization space of CP^3 has complex dimension four. Use the coherent-state convention

\[
Q(f)=4\int_{\mathbb{CP}^3} f([w])P_w\,d\mu([w]),
\qquad P_w=\frac{|w\rangle\langle w|}{\langle w,w\rangle},\quad Q(1)=I_4,
\]

with normalized Fubini–Study measure. Choose five Hermitian Euclidean Clifford matrices

\[
\Gamma_{1,2,3}=\sigma_1\otimes\sigma_{1,2,3},\quad
\Gamma_4=\sigma_2\otimes1,\quad\Gamma_5=\sigma_3\otimes1.
\]

The quaternionic structure j=(Gamma_2 Gamma_4)K has j^2=-1 and commutes with every Gamma_a. The functions

\[
x_a([w])=\frac{w^*\Gamma_aw}{w^*w}
\]

satisfy sum x_a^2=1 and are constant on the twistor CP^1 fibres: they are the S^4 coordinates pulled back by pi. The second moment of the rank-one coherent projectors gives

\[
Q(x_a)=\frac{\Gamma_a}{5}.
\]

Every compressed real base function commutes with j, since j preserves the measure and acts within a twistor fibre. Conversely the sixteen real-independent matrices

\[
1,\quad\Gamma_a,\quad\Gamma_a\Gamma_b\ (a<b)
\]

are generated by the compressed coordinates and span End_H(H^2). Therefore

\[
\operatorname{alg}_{\mathbb R}Q(\pi^*C(S^4,\mathbb R))=M_2(\mathbb H),
\qquad
\operatorname{alg}_{\mathbb R}Q(C(\mathbb{CP}^3,\mathbb R))=M_4(\mathbb C).
\]

This is a real-algebra statement. Complexifying the base algebra already gives all M_4(C). Also, the linear image of real base functions is only the six-dimensional space spanned by 1 and the five Gamma_a; multiplication of compressed operators generates the full sixteen-dimensional real algebra. Quantization is not multiplicative: Q(x_a)^2=I/25, whereas Q(x_a^2)=I/5. Related fuzzy S^4/CP^3 quantizations are established in the literature [7]. No novelty claim is made for these ingredients.

This improves on an arbitrary choice of quaternionic real form: the specified twistor fibration supplies it. It still gives a NESTED PAIR on C^4, not two independent central summands. Explaining why the two algebras acquire independent left/right module roles is a remaining problem.

## 5. From a twistor flag to the finite Standard Model data, with inputs exposed

Choose a twistor flag consisting of a complex line ell inside a quaternionic line L=ell plus j ell. Let E be the quaternionic module and F the complex module. They are two module roles, not one common transformation of a single vector space.

Give E the grading Gamma=+1 on L and -1 on its quaternionic complement. Quaternionic endomorphisms commuting with Gamma form H_R direct-sum H_L. Preserving ell in L reduces the first factor to C. In suitable bases,

\[
a=\operatorname{diag}(\lambda,\bar\lambda,q),\qquad
\lambda\in\mathbb C,\quad q\in\mathbb H.
\]

Complex endomorphisms of F preserving ell and its orthogonal complement have form

\[
b=\operatorname{diag}(\mu,m),\qquad
\mu\in\mathbb C,\quad m\in M_3(\mathbb C).
\]

At this stage impose matching of the two actions on the marked complex line: mu=lambda. The second-stage addendum derives this condition, once a rank-one Majorana direction is chosen, by requiring bounded commutators in its heavy-mass limit. The resulting fibre-product algebra is exactly

\[
(\mathbb C\oplus\mathbb H)\times_{\mathbb C}
(\mathbb C\oplus M_3(\mathbb C))
\simeq\mathbb C\oplus\mathbb H\oplus M_3(\mathbb C).
\]

Its real dimension is 6+20-2=24. Scalar matching is not forced by the flag or ordinary Toeplitz compression alone; the selected Majorana direction supplies additional data that do force it. If a and b are instead forced to be the same transformation on E=F, the independent color algebra is lost.

Now take

\[
H_F=\operatorname{Hom}_{\mathbb C}(E,F)\oplus
\operatorname{Hom}_{\mathbb C}(F,E),
\]

\[
\rho(a,b)(\xi,\eta)=(b\xi,a\eta),\quad
J(\xi,\eta)=(\eta^*,\xi^*),\quad
\gamma(\xi,\eta)=(-\xi\Gamma,\Gamma\eta).
\]

This is a 32-dimensional complex space, comprising a 16-state particle sector and its conjugate. One has J^2=+1, J gamma=-gamma J, and order zero. D=0 gives the minimal KO-six relations but has no scalar one-forms.

Ordinary Dirac Yukawa blocks can be inserted consistently as EXTRA INPUT. Let P_ell and P_c denote the lepton-line and color projections on F. Let Y_l,Y_q be Hermitian off-diagonal matrices on E, with their 2-by-2 off-diagonal blocks diag(y_nu,y_e) and diag(y_u,y_d). Set

\[
D(\xi,\eta)=
(P_\ell\xi Y_l+P_c\xi Y_q,
Y_l\eta P_\ell+Y_q\eta P_c).
\]

The resulting D is self-adjoint, commutes with J, anticommutes with gamma, and satisfies order one for the matched algebra. The code checks these assertions explicitly. Its Yukawa entries are not predicted by the twistor construction. The addendum supplies the Majorana block and checks; flavor mixing and generation replication remain separate additions.

The unitary lift acts on particles as xi→b xi a*. Impose the inherited unimodularity relation lambda det(m)=1 and parameterize

\[
\lambda=e^{-i\alpha/2},\qquad m=e^{i\alpha/6}s,\quad s\in SU(3).
\]

Using Q_em=T_3+Y, this gives:

| Particle sector | SU(3), SU(2) representation | Y |
|---|---|---:|
| Left quarks | (3,2) | 1/6 |
| Left leptons | (1,2) | -1/2 |
| Right up quarks | (3,1) | 2/3 |
| Right down quarks | (3,1) | -1/3 |
| Right electron | (1,1) | -1 |
| Right neutrino | (1,1) | 0 |

The SU(2) dual representation from the Hom convention is equivalent to its fundamental representation. Global finite quotients are suppressed in this table. Unimodularity is imposed here; its dynamical origin has not been derived.

The matched right-neutrino and antineutrino sectors have identical algebra/opposite-algebra characters but opposite grading. Hence this example has the familiar neutral-sector obstruction to finite Hochschild orientability. That issue is documented for KO-six neutrino extensions [8]. The note does not claim all manifold axioms or Poincare duality.

## 6. Where the Higgs representation appears

At the chosen point of HP^1,

\[
T_x\mathbb{HP}^1\simeq\operatorname{Hom}_{\mathbb H}(L,L^\perp)
\simeq\mathbb H.
\]

The isotropy action is t→q_L t q_R^{-1}. It is the real four-dimensional (2_L,2_R) representation of Spin(4). Restricting SU(2)_R to the marked U(1) turns this into one complex SU(2)_L doublet of hypercharge +1/2; its conjugate has -1/2. The SU(4) color/lepton action is absent from this tangent action, so it is color-neutral.

Thus a six-real-dimensional twistor total space contains geometric data with the Higgs representation, alongside the quaternionic/complex algebra pair and its grading. This is a concrete interpretation of the ten-dimensional suggestion. It is LOCAL REPRESENTATION DATA: no kinetic normalization, scalar potential, stabilized vacuum, radial Higgs mode or Yukawa values have been derived. A tangent representation of compact S^4 is not automatically an unbounded linear Higgs field with the Standard Model potential.

If a canonical doublet kinetic term is obtained, it gives the usual tree-level relation m_W^2=m_Z^2 cos^2(theta_W). The finite mass-map calculation in the code has the corresponding rank-three gauge mass form. Deriving that kinetic normalization from the continuum parent remains necessary.

For a finite Higgs family one should retain the odd mass map

\[
D_F(h)=\begin{pmatrix}0&M(h)\\M(h)^*&0\end{pmatrix}
\]

with its scalar fluctuation space and Yukawa tensors, not merely the operator evaluated at one vacuum. Rebuilding the scalar differential calculus from the zero vacuum operator can erase the scalar sector; physical restoration h_0→0 does not mean the Higgs field itself ceases to exist.

## 7. A precise distinction between the two Standard Model limits

Work first at the classical level, with one generation and a right neutrino. In the physical particle sector define the virtual chiral representation

\[
I_G=[V_L]-[V_R],\quad G=SU(3)\times SU(2)\times U(1)_Y,
\]

\[
V_L=(3,2)_{1/6}\oplus(1,2)_{-1/2},
\]

\[
V_R=(3,1)_{2/3}\oplus(3,1)_{-1/3}\oplus(1,1)_{-1}\oplus(1,1)_0.
\]

I_G is nonzero as a representation-ring element although its ordinary dimension is zero. Calling it an actual equivariant Dirac index requires a continuum Dirac realization; this note only establishes the representation calculation. The full real finite Hilbert module also includes charge-conjugate sectors, so its graded character must not be silently identified with this particle-sector expression.

For H=SU(3) times U(1)_em, restriction gives

\[
V_L|_H\simeq V_R|_H\simeq
3_{2/3}\oplus3_{-1/3}\oplus1_{-1}\oplus1_0,
\qquad \operatorname{res}^G_H I_G=0.
\]

The Higgs doublet h in (1,2)_{1/2} provides columns y_u tilde(h), y_d h, y_nu tilde(h), y_e h in M(h), with tilde(h)=i sigma_2 conjugate(h). It obeys

\[
M(gh)=\rho_L(g)M(h)\rho_R(g)^{-1}.
\]

At h_0=(0,v/sqrt(2)), M(h_0) is H-equivariant. If all four Dirac Yukawas are nonzero it is invertible. It pairs the chirally different G representations into vectorlike H representations.

**Why there is no index contradiction.** For any odd G-equivariant self-adjoint operator on a finite graded G-module, each nonzero eigenspace of D^2 has isomorphic positive and negative grading representations. Therefore the virtual graded module equals the virtual graded kernel in R(G). A symmetry-preserving gapped reduction cannot remove a nonzero equivariant index. A nonzero Higgs vacuum preserves only H; restriction to H removes this particular representation obstruction. No invariance theorem for a fixed G-action is violated.

| Limit at fixed finite gauge couplings | Fermionic issue | Geometric interpretation permitted by the calculation |
|---|---|---|
| v→infinity | Keep desired masses finite by scaling their Yukawas; charged survivors are vectorlike under H | A nine-dimensional vectorlike description is not excluded by this chirality test |
| v→0 | The full electroweak particle representation remains chiral | A smooth ordinary eleven-dimensional Dirac product alone cannot reproduce this endpoint |

The first row is permission from a necessary condition, not construction of a nine-dimensional ancestor. For the second row, an odd-dimensional description would need extra graded coefficient data, an appropriate defect/boundary/orbifold mechanism, or an altered light spectrum. A closing KK gap or a noncompact limit can invalidate the Fredholm assumptions behind index continuity; it must be analyzed rather than assumed harmless.

For example, an odd-dimensional Dirac field with a sign-changing mass m(s)=m_0 tanh(s/L) has a domain-wall zero-mode profile proportional to cosh(s/L)^{-m_0 L}; the normal gamma projection selects one even-dimensional Weyl chirality. This illustrates how an eleven-dimensional bulk can carry a ten-dimensional chiral sector [9]. A compact circle generally introduces the opposite wall and a mirror sector. It does not derive the Standard Model Higgs, and its wall-localizing mass should not be confused with the Higgs doublet.

Without a right neutrino the charged sectors still pair, but one neutral left-handed state remains in the restricted particle-sector difference. A Majorana pairing is a different real/Nambu construction. A leptonic QED endpoint is consistent, while a leptons-only restored electroweak theory is anomalous: per generation its SU(2)^2Y and Y^3 coefficients are -1/4 and +3/4, canceled by the corresponding quark contributions +1/4 and -3/4. An unbroken endpoint therefore needs the anomaly-canceling content or an explicit replacement mechanism.

These statements concern classical Higgs restoration. With light quarks and strong dynamics retained, QCD-induced electroweak breaking is an additional quantum-vacuum issue; it is absent from a purely leptonic truncation. Gauge kinetic matching also remains separate from algebraic survival.

## 8. What has and has not become a limit construction

**Established by the calculations here:** the finite heat-window formula, its order-of-limits consequence, a conditional collapse estimate, the twistor-generated real algebra pair, the flag fibre-product algebra, the finite minimal KO-six data with inserted Yukawas, the one-generation charges after unimodularity, the tangent Higgs representation, and the restriction of the chiral particle representation to electromagnetism and color.

**Still not obtained:** a single continuum family whose selected modes naturally supply two independent module actions and select the Majorana direction; a real Kasparov reduction establishing the relevant nontrivial class and index pairings; an actual Higgs fluctuation and potential from the twistor parent; a protected desired fermion kernel; dynamical selection of the flag and vacuum; the correct gauge kinetic normalization; a controlled 9/10/11 interpolation preserving the specified matter.

The immediate constructive target is now narrower: quantize the TWISTOR CORRESPONDENCE, including its vertical Dirac family, rather than quantizing only scalar functions on CP^3. Compare its finite left/right actions with the explicit module above, and test whether the Majorana direction and odd Higgs map emerge. The addendum computes the first vertical-family rank and explains why this has not yet supplied the required module. If those remaining choices must be imposed, the proposal is a geometric realization of the finite model, not an explanation of its selection.

The older CP^2 times S^2 candidate remains a useful comparator. Its natural level-(1,1) scalar quantization has Hilbert space C^3 tensor C^2 and generated algebra M_6(C), not the Standard Model direct sum. The twistor route offers a more specific explanation of the quaternionic versus complex factors, while its connection to the desired odd-dimensional endpoints remains unconstructed.

In particular, the ordinary Fubini–Study isometry group of CP^3 is not the Standard Model group. The independent module actions above do real work; they have not been obtained from the isometries of one CP^3 metric. The twistor fibration itself changes dimension by 6 to 4, not by 6 to 5 or 7. Its relevance here is to the KO-six finite algebra and Higgs representation, not an already established 9/10/11 path.

## References

1. A. Connes, *Noncommutative Geometry and the Standard Model with Neutrino Mixing* (2006). https://arxiv.org/abs/hep-th/0608226
2. J. W. Barrett, *Matrix Geometries and Fuzzy Spaces as Finite Spectral Triples* (2015). https://arxiv.org/abs/1502.05383
3. M. A. Rieffel, *Matrix Algebras Converge to the Sphere for Quantum Gromov–Hausdorff Distance*. https://arxiv.org/abs/math/0108005
4. E. Witten, *Search for a Realistic Kaluza–Klein Theory* (1981). https://doi.org/10.1016/0550-3213(81)90021-3
5. J. Baptista, *Chiral Interactions of Fermions and Massive Gauge Fields in Kaluza–Klein Models* (2026 version). https://arxiv.org/html/2506.09126v2
6. A. H. Chamseddine and A. Connes, *Noncommutative Geometry as a Framework for Unification of All Fundamental Interactions Including Gravity. Part I* (2010), especially section 9.1. https://arxiv.org/abs/1004.0464 ; https://alainconnes.org/wp-content/uploads/NCGframeworkCC.pdf
7. G. Ishiki, T. Matsumoto and H. Muraki, *Information Metric, Berry Connection and Berezin–Toeplitz Quantization for Matrix Geometry* (2018). https://doi.org/10.1103/PhysRevD.98.026002
8. C. A. Stephan, *Almost-Commutative Geometry, Massive Neutrinos and the Orientability Axiom in KO-Dimension 6* (2006). https://arxiv.org/abs/hep-th/0610097
9. D. B. Kaplan, *A Method for Simulating Chiral Fermions on the Lattice* (1992). https://arxiv.org/abs/hep-lat/9206013
10. A. Connes and W. D. van Suijlekom, *Spectral Truncations in Noncommutative Geometry and Operator Systems*. https://arxiv.org/abs/2004.14115
11. B. P. Dolan and R. J. Szabo, *Dimensional Reduction, Monopoles and Dynamical Symmetry Breaking* (2009). https://arxiv.org/abs/0901.2491

Reference 11 remains a worked benchmark for Higgs/Yukawa reduction with monopoles. It begins with a higher-dimensional Yang–Mills bundle, so it does not by itself settle the metric-only commutative-KK ancestry considered here.
