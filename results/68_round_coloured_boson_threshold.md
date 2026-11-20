# The first additional coloured boson on the round Kähler-flux product

Keep the eleven-dimensional action of results 62–64 with the Kähler colour two-form, both magnetic fluxes, circle length and dilaton couplings fixed. Vary all the bosonic perturbations about its compact round weak member. We compute the lowest four-dimensional coloured mass beyond the gluons, including fluctuations which depend on both projective factors. In the unmodified action the gluon has a massless colour Wilson scalar. We also use the specified circle-curvature term of Proposition 65.2. Nucleons and the weak charged current require the separate fermion theory.

## A gap on both projective factors

**Theorem 68.1.** On $\mathbb R^{1,3}\times S^1_L\times\mathbb{CP}^2_B\times S^2_r$ at dissolution, let $\lambda_c=6/B^2$, $\lambda_w=1/r^2$. First omit the circle-curvature term and regard the circle locally as a fifth flat coordinate. In the eleven-dimensional metric, two Maxwell fields and two dilatons the five-dimensional squared mass form is nonnegative. Its only colour-nonsinglet kernel consists of the polarizations of the eight massless colour gauge vectors, including their magnetic compensators. All other colour-nonsinglets in this sector have
$$
                    m_5^2\ \ge\ \tfrac14\min(\lambda_c,\lambda_w).
$$
The result includes all projective representations and weak angular momenta. The same lower bound holds for the additional coloured vortex and root scalars if the root horizontal colour coefficient equals its external kinetic coefficient. Without that choice their separate lower bound is given below.

**Background normalization.** For $I=c,w$ let $q_I=4,2$ be the real dimension of its projective space and $F_I=f_I\omega_I$ its magnetic field in physical orthonormal units, with $\omega_I$ the Kähler form. The weak Maxwell connection here is the charge-two vortex connection of result 62. At zero charged scalar background each factor has terms $-Z_I|F_I|^2/2-2U_I-|\partial s_I|^2$. The logarithmic slopes of $Z_I,U_I$ in its own scalar are $2,-2$. The background conditions are $Z_I f_I^2=2\lambda_I$ and $U_I=q_I\lambda_I/4$. In particular each factor contributes zero to the external trace-reversed Ricci coefficient. The additional root potential is zero on this background and gives a positive quadratic term to the vortex scalar. It does not mix the scalar with the metric to first order.

**Physical quadratic form.** Use two light-cone coordinates in the flat spacetime with $p_-\ne0$ and zero spatial transverse momentum there. Work on the five-dimensional cover until circle momentum is imposed. In metric and Abelian gauge $h_{-M}=0$, $\delta A_{I,-}=0$, the $--$ Einstein equation sets the transverse trace to zero. The $-M$ equations fix the metric divergence $V_M=\nabla^A h_{AM}$ to $\sum_I 2\lambda_I(\omega_I)_M{}^N\beta_{I,N}$, with $\delta A_I=f_I\beta_I$. The Maxwell minus constraints give $\nabla^M\beta_{I,M}=0$. These equations determine the longitudinal components. The independent transverse fields have positive kinetic norm
$$
       \mathcal N=\|h\|^2+
           \sum_I\big(4\lambda_I\|\beta_I\|^2+4\|S_I\|^2\big),
$$
where $h$ runs over traceless symmetric tensors on the full transverse space, $S_I=\delta s_I$, and norms integrate over the internal manifold. Reality is understood, or all cross terms below use their real parts.

Let $C_I$ denote the positive quadratic Casimir in the chosen harmonic representation of factor $I$, normalized as its scalar Laplacian. On these compact symmetric metrics the standard tensor Laplacian is this same Casimir. It is the Hodge operator on one-forms and $\Delta_L=\nabla^*\nabla+2\,\mathrm{Ric}\circ_{\rm sym}-2\mathring R$ on symmetric two-tensors with the corresponding indexwise Ricci action. On mixed tensors the two factor Casimirs add. This follows as well by writing the covariant rough Laplacian as the group Casimir minus the isotropy Casimir; the curvature action restores the latter. [Standard Laplace operator](https://arxiv.org/abs/1708.04775) · [Lichnerowicz operator on compact symmetric spaces](https://www.sciencedirect.com/science/article/pii/S1631073X09002337)

The mass form splits as $\mathcal Q_c+\mathcal Q_w$. For one factor write $\lambda,q,\omega,\beta,S$ for its data, $h_{II}$ for the corresponding diagonal metric block, and $\tau=\mathrm{tr}\,h_{II}$. Extend $\omega$ by zero in its spectator directions and set
$$
 (P h)_{ij}=\omega_i{}^k\omega_j{}^l h_{kl},\quad
 (D\beta)_{AB}=\omega_B{}^k\nabla_k\beta_A+\omega_A{}^k\nabla_k\beta_B,\quad
 d_\omega\beta=\omega^{ij}\nabla_i\beta_j .
$$
The one-factor contribution is
$$
\begin{aligned}
 \mathcal Q_I={}& C_I\mathcal N+2\lambda\langle h_{II},Ph_{II}\rangle
            +4\lambda\langle h,D\beta\rangle+8\lambda^2\|\beta_I^{\parallel}\|^2\\
 &-8\lambda\langle\tau,S\rangle
            +16\lambda\langle d_\omega\beta,S\rangle+8q\lambda\|S\|^2 ,
\end{aligned}
$$
where $\beta_I^{\parallel}$ is the component of this gauge field tangent to its own projective factor.

For a derivation, $\delta |F|^2=f^2(2d_\omega\beta-\tau)$, and the part of $\delta[(Z/2)F_{Ak}F_B{}^k]$ involving the inverse metric is $-\lambda(Ph)_{AB}$. In $2\delta R_{AB}$ the derivatives of $V$ cancel the derivatives $\omega_B{}^k\nabla_A\beta_k+(A\leftrightarrow B)$ from the Maxwell stress. The remaining first-order term in the mass operator is $2\lambda D\beta$. The common trace-reversed scalar multiple of the entire metric drops out of its contraction with the transverse traceless $h$. The variation of the nonisotropic stress in $S$ contributes $-4\lambda\langle\tau,S\rangle$ in the metric equation. The Maxwell equation contributes the adjoint metric coupling, $2\lambda$ on the tangential $\beta$ from $V$, and $2\omega_j{}^k\nabla_k S$. The dilaton equation is
$$
 (m_5^2-\Delta)S=2q\lambda S+\lambda(2d_\omega\beta-\tau).
$$
Contracting with the kinetic norm above gives the displayed form. Orthogonality of the two background flux planes removes cross terms between the two Maxwell compensators in the constraint. This derivation uses the Lorentzian physical perturbations.

**Constrained equations from the action.** The following calculation fixes the relative signs and weights of the mixed blocks. Drop the factor index on its background fields and let $T$ be orthogonal projection onto traceless transverse tensors. The trace of the metric perturbation vanishes by the $--$ equation. Varying $\nabla_M(ZF^{MN})=0$ then gives the divergence of
$$
 (d\beta)^{MN}-h^M{}_K\omega^{KN}-h^N{}_K\omega^{MK}+2S\omega^{MN}.
$$
The $N=+$ component enforces zero full divergence of $\beta$. The $-A$ Einstein equation gives $V_A=Zf^2\omega_A{}^j\beta_j$ for this flux. Thus the divergence of the first inverse-metric term supplies $2\lambda\beta^\parallel$ in the mass operator. The second supplies $\omega^{kB}\nabla_k h_{AB}=(D^*h)_A/2$. Finally the variation of the dilaton coefficient supplies $2(d_\omega)^* S$. The scalar Euler equation is $\Box s=Z'|F|^2/4+U'$. Its diagonal variation is $(Z|F|^2+4U)S=2q\lambda S$; its remaining source is $\lambda(2d_\omega\beta-\tau)$.

In the metric equation, linearizing $ZF_{Ak}F_B{}^k/2$ gives $\lambda[(d\beta)_{Ak}\omega_B{}^k+(A\leftrightarrow B)-(Ph)_{AB}+2S(g_I)_{AB}]$. The variation of the common trace-reversed coefficient multiplies the full metric and is killed by $T$. Subtract the two divergence gradients of $V$ in the Ricci variation and move the stress terms into the mass operator. After subtracting the common Casimir the three outputs, in metric, Maxwell and scalar order, are
$$
 T(2\lambda Ph+2\lambda D\beta-4\lambda g_I S),\qquad
 D^*h/2+2\lambda\beta^\parallel+2(d_\omega)^* S,\qquad
 -\lambda\tau+2\lambda d_\omega\beta+2q\lambda S .
$$
Contracting these rows with $h,4\lambda\beta,4S$ recovers the coefficients in $\mathcal Q_I$, each mixed coefficient being the sum of two adjoint contributions. The term $V^k\omega_{kA}$ sees only the source in its own tangent plane. This gives the additive two-flux operator directly on the product.

**One-factor estimate.** For this estimate rescale the factor to $\lambda=1$ and put $t=C_I/\lambda$. The other $e=5$ transverse directions for the four-dimensional projective factor, or $e=7$ for the sphere, are spectators. Splitting their trace off leaves an internal trace norm $\tau^2/e$ in addition to $\|h_{II}\|^2$. The spectator traceless metric and the spectator fields of the other gauge and scalar system have just the Casimir term. A mixed metric $h_{Ai}$, with one spectator index, couples to the scalar harmonic in $\beta_A$ along $\omega\,dY$ of norm $\sqrt t$ for $\|Y\|=1$. The two canonically normalized entries have diagonal $t$ and off-diagonal of magnitude $\sqrt{2t}$. Their squared masses are $t\pm\sqrt{2t}$; orthogonal mixed metric one-forms have mass squared $t$. A zero at $t=2$ has equal kinetic norm in its metric and Maxwell components.

For the remaining block replace $h_{II}$ by $P h_{II}$ and put $\alpha=\omega\beta^{\parallel}$. Then $\langle h_{II},D\beta\rangle=-\langle P h_{II},\mathcal L_{\alpha^\sharp}g\rangle$ and $d_\omega\beta=\mathrm{div}\,\alpha$. Write $H$ for the traceless part of $P h_{II}$. The norm is $\|H\|^2+(1/q+1/e)\|\tau\|^2+4\|\alpha\|^2+4\|S\|^2$. For $L\alpha=\mathcal L_{\alpha^\sharp}g$, integration by parts on the Einstein factor gives
$$
 \|(L\alpha)^\circ\|^2
   =2(t-2)\|\alpha\|^2+(2-4/q)\|\mathrm{div}\,\alpha\|^2 .
$$
Here the circle on the tensor denotes its trace-free part. Complete the square in $H$ using $P\ge-1$. For the co-closed part of $\alpha$, which has no trace or dilaton coupling, this gives the lower bound $t-\sqrt{2t}$ on the normalized two-block form for $t>2$. The same completion handles the co-closed component in a representation also carrying a longitudinal component: the squared norm on the right of the identity is additive in those two components.

For a longitudinal $\alpha=u\,dY/\sqrt t$ the divergence is $-\sqrt t\,uY$. Put $x=t-1/2$, $A=1/q+1/e$, $b_1=4/q$ and $D=2(t-2)+(2-4/q)t$. A sufficient condition for the half-unit gap, after subtracting $\mathcal N/2$, is positivity of the real matrix
$$
 \begin{pmatrix}
 x-2&0&-2\sqrt D&0\\
 0&Ax+2/q&b_1\sqrt t&-4\\
 -2\sqrt D&b_1\sqrt t&4(x+2)&-8\sqrt t\\
 0&-4&-8\sqrt t&4x+8q
 \end{pmatrix}.
$$
It gives precisely the bound obtained by the trace-free completion, also when $H$ has components orthogonal to the mass coupling. For $q=4$ the scalar harmonics have $t=2n(n+2)/3$. Above the octet they start at $t_0=16/3$. For $q=2$ the corresponding values are $\ell(\ell+1)$, with $t_0=6$ above the rotations. The four leading principal minors at $t_0$, in order, are
$$
 \begin{aligned}
 q=4:\ &17/6,\quad 1819/240,\quad4583/72,\quad635303/540,\\
 q=2:\ &7/2,\quad127/8,\quad6919/28,\quad67397/14 .
 \end{aligned}
$$
The derivative matrix is positive on both ranges. Its Schur test after eliminating the three diagonal entries $1,A,4$ is $4-(D')^2/D-b_1^2/(4At)-4/t>0$ already at $t_0$, and the subtractions decrease thereafter. This proves the bound for every higher scalar harmonic. In a nonscalar projective representation $S$ and $\tau$ are absent. The tensor Casimir in the centre-neutral representation $(p,q')$ in units of $\lambda_c$ is $2(p^2+pq'+q'^2+3p+3q')/9$, normalized by the scalar eigenvalues. Its first nonadjoint nonzero possibility is $t=4$. Thus $t-\sqrt{2t}>1/2$ suffices there.

At $t=2$ the co-closed vector is Killing. On the sphere the $\ell=1$ trace-free symmetric tensor is absent. On $\mathbb{CP}^2$ the adjoint has a trace-free Hermitian tensor and no anti-Hermitian tensor: under $U(2)$ the adjoint branches into $1_0,3_0,2_{3},2_{-3}$ whereas the anti-Hermitian tensors have types $3_{\pm6}$. In the preceding matrix use $x=t-m^2/\lambda$ and the actual Hermitian entry $x+2$ for the octet, or drop the first row and column for the sphere. The determinants are respectively proportional to $x^2(9x^2+118x+264)$ and $x^2(9x+68)$. Both scalar blocks have $m^2\ge2\lambda$. At $t=0$ the only internal invariant tensor is the metric and there is no invariant one-form. The surviving mass form is the square $(2/q)(\tau-2qS)^2$ in these units. This completes the one-factor positivity calculation. Its only kernel at nonzero $t$ is the mixed metric and Maxwell gauge vector already described.

**Determinants at the thresholds.** For the displayed four-dimensional matrix denote the diagonal by $a,b,c,d$ and its entries $(13),(23),(24),(34)$ by $p,r,v,s$ in that order. Eliminating the first direction gives the polynomial identities
$$
 M_3=ab c-bp^2-ar^2,\qquad
 M_4=(ac-p^2)(bd-v^2)-ab s^2-ar^2d+2arvs .
$$
At the first nonexceptional harmonic use $p^2=4D$, $r^2=b_1^2t$, $v=-4$, $s=-8\sqrt t$; this gives $M_4=635303/540$ on the projective space and $67397/14$ on the sphere. At $t=2$ take $a=x+2$ for the Hermitian projective tensor. Its determinant is $(4/5)x^2(9x^2+118x+264)$. The sphere has no first tensor direction, so we use $bcd-b s^2-r^2 d+2rvs-cv^2=(8/7)x^2(9x+68)$. Each polynomial is positive for $x>0$, which rules out $m^2<2\lambda$ in these scalar blocks.

**Combining the factors.** When the weak representation is trivial, a colour kernel has an external transverse index. There is no weak-invariant one-form for an index on the sphere. This kernel survives the weak block and consists exactly of gluons. The other colour modes have the projective half-unit gap. When both representations are nontrivial, either one factor has no kernel and already supplies its half-unit gap, or both are in the rotation representations. In that last case write $P_c,P_w$ for the orthogonal projections onto their individual kernels. The two kernels overlap only through the metric, since they use different Maxwell fields. Every unit vector in either has just one half of its squared norm in the metric. Hence $\|P_cP_w\|\le1/2$. The sum of the two mass forms is bounded below by
$$
 \tfrac12\min(\lambda_c,\lambda_w)\,[2-P_c-P_w]
 \ \ge\ \tfrac14\min(\lambda_c,\lambda_w).
$$
The last step uses $\|P_c+P_w\|\le1+\|P_cP_w\|$ for orthogonal projections. This proves the metric, gauge and dilaton assertions including the mixed shape modes.

Finally the vortex scalar at dissolution has nonnegative weak Hessian by the fixed-flux Bogomolny squares. A colour excitation costs at least $12/B^2$ from its projective scalar Laplacian. The two root scalars have positive weak antiholomorphic and shifted-circle squares and first coloured squared mass at least $(Z_{H,c}/Z_H)\,12/B^2$. Linear terms in these fields vanish, so they decouple from the other fluctuations at dissolution. $\square$

## The first coloured threshold and the Wilson choice

**Corollary 68.2.** At the canonical round matching $B^2=16r^2/3$, $L^2/k^2=20r^2/9$, choose $c_\eta=1$ in Proposition 65.2 and $Z_{H,c}=Z_H>0$. For $k\in6\mathbb Z\setminus\{0\}$ the first four-dimensional coloured boson in addition to the eight gluons has mass exactly $1/L$. Without the circle-curvature term the colour Wilson scalar has mass zero, and the first *positive* coloured bosonic mass is $1/L$. The eight massless gluons refer to their two physical four-dimensional polarizations.

**Proof.** Before the lift the periodic momentum adds $n^2/L^2$ to the five-dimensional squared mass. The gluon's circle polarization supplies its Wilson scalar at $n=0$. At this frequency the curvature term acts by the positive colour curl square on $h_{\chi i}$. The Killing one-form and its Kähler-flux compensator span an invariant pair because the Hodge Laplacian preserves the Killing eigenspace. Their masses after the lift are $2\lambda_c(2\pm\sqrt2)$ by Proposition 65.2. The orthogonal modes obey the gap of Theorem 68.1, which adding this positive static form preserves. At nonzero frequency one must account for the fibration structure in the additional term. At the round root-free background the other quadratic metric–form action is fully diffeomorphism invariant. Vary along a periodic infinitesimal colour coordinate change $\xi_i$ of the given frequency, transforming both the metric and its flux. It changes $h_{\chi i}$ by $in\xi_i$ modulo a projective gradient. Stationarity of the added curl square along this variation imposes $d_c^\dagger d_c h_{\chi\cdot}=0$ and hence zero curl. Every original mode admits such a representative. The term therefore preserves the nonzero-frequency physical masses at this order. In particular external transverse gluons with $n=\pm1$ realize $1/L$. Since $\lambda_w=8\lambda_c/9$ and $L^{-2}=2\lambda_c/(5k^2)$, each quoted nonzero zero-frequency gap lies above it. $\square$

This is a complete *tree-level coloured boson* threshold for the specified compact round member, with ordinary and mirror quarks still massless there. Five-dimensional gauge loops along the unlifted circle have the positive contribution computed in 65.3. The root and associated matter actions permit additional local Wilson matching terms. A first bosonic threshold at the restored point does not fix a nucleon mass for the broken trajectory. The next test is the weak-vortex Hessian and gauge constraints away from dissolution, where the roots turn on and the weak scalar Casimir no longer separates. [Wilson scalar and winding calculation](65_colour_wilson_scalar.md) · [Fermion thresholds on the neck](67_fermion_masses_on_the_long_neck.md)

## Coloured fermions and the restored strong theory

The quark label here is fixed by the defining $SU(3)$ action, the circle and weak charges, and the external Weyl or Dirac kinetic term. At zero Yukawa the Dirac count below is the count for the colour beta function. The two external chiralities still have different weak couplings. A KK circle harmonic of a gluon carries a spacetime vector index, whereas the circle polarization is an adjoint scalar. [Particle identification and the mirror count](72_particle_identifications_and_mirrors.md)

**Proposition 68.3.** With the circle-equivariant Weyl domain of Proposition 63.2, the canonical round member has twelve massless colour fundamentals counted as four-dimensional Dirac flavours for the colour interaction, for three ordinary and three mirror generations. The lowest additional coloured fermion mass is $\sqrt2/r$. With the bosonic coefficients of Corollary 68.2 the first additional coloured particle after the massless sector is consequently the boson at $1/L$.

**Proof.** At dissolution the roots vanish. The squared fermion operator is the sum of the projective and weak Dolbeault–Dirac squares. A base field has only its assigned circle character. On $\mathbb{CP}^2$ the Hermitian Serre duality of the Dolbeault complex exchanges the $\mathcal O(-4)$ quark coefficient with $\mathcal O(1)$ in complementary form degrees, preserving the squared spectrum. Leptons use $\mathcal O(0)$. For $j=0,1$ the first positive squared mass of the canonical Dirac operator twisted by $\mathcal O(j)$ is $4(j+3)/B^2$. To see the lower bound on $(0,p)$ for $p>0$, rewrite it as an $(2,p)$ form with coefficient $K^{-1}\otimes\mathcal O(j)$. The Bochner–Kodaira identity gives a nonnegative $\partial$ Laplacian plus $2(j+3)p/B^2$ in $\Delta_{\bar\partial}$. The Dirac square is twice this, and all positive zero-form levels also occur on one-forms. For sharpness a scalar section can be lifted with fixed character to the Hopf five-sphere. Bidegrees $(j+n,n)$ in the harmonic polynomials have horizontal Bochner eigenvalue $[(j+2n)(j+2n+4)-j^2]/B^2$. Subtracting $4j/B^2$ for the holomorphic line curvature gives $4n(n+j+2)/B^2$ in the Dirac square. The level $n=1$ exists. For leptons this first projective excitation includes a colour adjoint.

On a round two-sphere the degree-$N$ monopole spin twist has zero-form coefficient $\mathcal O(N-1)$. The same Hopf calculation on $S^3$ with base radius $r$ gives positive squared levels $n(n+N)/r^2$, $n\ge1$. There are only two form degrees, paired at every positive level. A quark singlet with $N=1$ and projective zero vector attains $2/r^2$. This is below $12/B^2$ and $16/B^2$ at $B^2=16r^2/3$. Each ordinary or mirror family has two quark flavours in the massless projective/weak kernels. Their left and right weak representations differ; the Dirac count here is for colour running. $\square$

Thus at a perturbative scale $\mu_*=\xi/L$ with $0<\xi<1$ the leading colour coefficient is $b_0=3$ in the lifted tree spectrum. The one-loop transmutation parameter is $\mu_* e^{-8\pi^2 I_3(\mu_*)/3}$. In the unlifted tree spectrum an active real Wilson adjoint instead gives $b_0=5/2$ until it decouples. Taking the separate colour-only theory with twelve massless fundamental flavours gives the two-loop coefficient $b_1=-50$. Gradient-flow studies of that theory report evidence for an infrared fixed point. The rooted theory also has electroweak and scalar couplings. The perturbative parameter by itself supplies no nucleon pole or nonperturbative baryon conversion for this restored matter content. [Twelve-flavour gradient-flow calculation](https://arxiv.org/abs/2402.18038) · [Threshold and strong-vacuum conventions](61_colour_thresholds_and_weak_current.md)

**Provenance.** Derived by GPT-6.2-Astra max. The symmetric-space Casimir identity is cited. Claude Opus 5.5 checked every ledger claim of this file on 20 November 2026 and found no error. Some of these checks took forms or numbers of this file as stated; the ledger `checked_by` rows record what each check covered. In a separate session on the same date, GPT-6.2 Astra re-derived the constrained operator, fourth minors and exceptional determinants of Theorem 68.1 from the specified action as detailed above. This is a second calculation by the author model family.
