# The first transverse vector shell with a local Hopf connection

Keep the round colour five-sphere, the five-form flux, the full vortex and auxiliary Maxwell fields, the volume potential and the fitted weak trajectory of 102. Vary the volume tensor derivative from the projected Killing connection to the local vertical Levi-Civita horizontal derivative of 102.3. We calculate the weak-constant four-dimensional transverse vector spectrum meeting the $j=2$ colour shell and its lowest level on the fixed-shape shrink. The two-period tensor and root couplings on the quotient stay fixed.

For a vertical metric $g$ use the augmented Euclidean bundle $\mathbb R\oplus T_V$ with vertical connection
$$
 \nabla^E_X(t,V)=
 \left(X(t)-\frac{g(X,V)}{B_\sigma},
            \nabla^g_XV+\frac{tX}{B_\sigma}\right),\qquad
 B_\sigma=B_0e^\sigma.
$$
This is flat in the ambient frame on the round background with $B=B_\sigma$. In horizontal directions use the vertical Levi-Civita projection and a parallel unit normal, as in 102.3. The auxiliary connection acts on both directions with $C$-charge $-2$. The old background has zero volume-tensor derivative and is stationary in the new kinetic term. In the transverse vector comparison the vertical metric and the volume scalar have no vector polarization. The local mass entry is the horizontal term on $\rho(M_X)M_0-2i C_\mu M_0$, where the skew map $M_X$ is given in 102.3.

## The local form on the full quadratic harmonic shell

**Proposition 103.1.** In the coexact $j=2$ compression the dimensionless perpendicular and phase stiffnesses of the local volume derivative are

| $\mathrm{SU}(3)\times P$ representations, with conjugates | Perpendicular | Phase |
|---|---:|---:|
| $\mathbf8_{\pm3}$ | $37/8$ | $0$ |
| $\mathbf6_{-1}$ and $\bar{\mathbf6}_{+1}$ | $25/8$ | $0$ |
| $\mathbf3_{+1}$ and $\bar{\mathbf3}_{-1}$ | $49/40$ | $49/5$ |
| $(2,1)_{+1}$ and $(1,2)_{-1}$ | $11/120$ | $1/15$ |

The entries multiply $f_S^2/(3I_3)$ in the canonically normalized metric slot. The two fifteen-dimensional representations also have a coexact $j=4$ metric partner. The triplet and fifteen-dimensional representations, and their conjugates, have an exact colour shift and an auxiliary Maxwell vector in scalar harmonics of degrees one and three respectively. These are all the additional blocks coupled to the $j=2$ transverse metric and five-form vectors.

**Proof.** Work in unit angular variables on $S^5$ with $T=Jn$, $\eta=T^\flat$, and write $X^\flat=f_X\eta+\beta$ with $\beta$ horizontal. On vectors write $J$ for the horizontal complex structure when its argument is horizontal. The skew two-form is $n^\flat\wedge X^\flat+d X^\flat/2$ at a point, with the second term tangential. Its part anticommuting with $J$ and its phase trace give normalized squares
$$
 q_\perp(X)=\tfrac18\|[T,X_H]-\nabla_H f_X-2JX_H\|^2
             +\tfrac14\|(d_H\beta)^-\|^2,\qquad
 t(X)=3f_X-\tfrac12\operatorname{div}(JX_H).
$$
Here the superscript $-$ denotes the real anti-complex part of a horizontal two-form. The first square tests the $n,T$ and horizontal slots together. For example comparing the skew map on $n$ and $T=Jn$ gives the horizontal difference $( [T,X_H]-\nabla_H f_X-2JX_H)/2$. The horizontal tensor tests $(d_H\beta)^-/2$. The trace on the three complex planes is $f_X+\tfrac12\Lambda_H d(X^\flat)$ with $\Lambda_H d\eta=4$ and $\Lambda_H d_H\beta=-\operatorname{div}(JX_H)$. The perpendicular norm has the rotation normalization of 102.3.

In scalar degree $\ell$, let $(a,b)$ be the $\mathrm{SU}(3)$ highest weight with $a+b=\ell$ and active Hopf weight $a-b$. In the coexact character $V\otimes H_j-H_{j+1}-H_{j-1}$, multiplying the scalar character by $(\mathbf3_{+1}+\bar{\mathbf3}_{-1})$ gives the following occurrence rule. For Hopf weight $a-b$ the coexact copies occur at $j=a+b+1$ and also at $j=a+b-1$ when $a,b>0$. For weight $a-b+3$ the copy occurs only at $j=a+b$ when $b>0$, and for $a-b-3$ it occurs only there when $a>0$. This follows directly from the three terms in the product of $(a,b)$ with a fundamental or antifundamental: the highest- and lowest-total-degree terms combine with the scalar subtractions, and the middle terms survive. Thus the $j=2$ octet and sextet sectors are isolated apart from their five-form partners. Their $f_X$ and phase trace vanish since there is no scalar representation with those weights.

For an octet representative take $z_1(z_2\nabla z_1-z_1\nabla z_2)$ in ambient complex coordinates, and for a sextet representative of the other charge take $z_3(\bar z_2\nabla\bar z_1-\bar z_1\nabla\bar z_2)$. They are harmonic, tangent, divergence-free homogeneous quadratics. For the octet the mixed difference in $q_\perp$ has squared norm $25\|X\|^2$ and the horizontal anti-complex derivative has squared norm $6\|X\|^2$. The latter is the coexact Hodge energy $15\|X\|^2$ less the vertical curl contribution $9\|X\|^2$, since the horizontal derivative is of pure type. In the sextet the corresponding mixed norm is $9\|X\|^2$. Its horizontal anti-complex derivative comes from $z_3\,d\bar z_1\wedge d\bar z_2$ with the representative's constant normalization. The horizontal restriction gives the ratio $8$ to the norm of the vector: the moment quotient is $\langle |z_3|^4\rangle/\langle |z_3|^2(|z_1|^2+|z_2|^2)\rangle=1$ with the derivative and covector factors supplying the $8$. This yields the first two rows. The last two rows follow from the scalar-gradient block below. In each entry the quoted stiffness divides the integrated square by $\langle |X|^2\rangle$ on the unit sphere. The metric vector kinetic normalization on the physical sphere is $CV B^2\langle|X|^2\rangle=3I_3\langle|X|^2\rangle$, giving the stated multiplier. $\square$ [Round sphere form harmonics](https://doi.org/10.18910/6956) · [Local metric derivative and normalization](102_hopf_volume_tensor_amplitude_and_auxiliary_tower.md)

## Exact gradient shifts and the auxiliary vector

**Proposition 103.2.** For the weak-constant transverse vector comparison in which the original pure external coordinate variations are eliminated from the new static mass term, the finite triplet matrix in units of $B^{-2}$ is
$$
 \begin{aligned}
   \mathcal M_{\mathbf3}
   &=\begin{pmatrix}15&-\sqrt{120}&0\\-\sqrt{120}&15&0\\0&0&5\end{pmatrix}
     +\tfrac23 s\,vv^{\mathsf T},\\
   v&=\left(\tfrac72\sqrt{\tfrac5{12}},\,0,\,-2\sqrt{I_3/I_C}\right),
   \qquad s=f_S^2B^2/I_3 .
 \end{aligned}
$$
Its lowest level is strictly between $15-\sqrt{120}$ and $5$ for every $s>0$ and finite $I_C>0$. The corresponding fifteen-dimensional blocks are the five-propagating-variable forms specified below.

**Proof.** For an external transverse coordinate parameter with internal scalar profile, the metric variation consists of the longitudinal external metric piece and an exact colour shift. Its covariant core energy is zero. The quotient root and two-period terms have zero first-order projected fields on this nonconstant coordinate profile. The local horizontal volume derivative sees the exact shift algebraically, while the vertical volume derivative sees no change of the colour metric. Thus this variable is eliminated by minimizing its new static square. There is no extra propagating vector associated with it. The weak-constant coexact colour metric and five-form pair have the original canonical colour matrix with diagonal $\lambda_j=(j+1)(j+3)$ and off-diagonal $-\sqrt{8\lambda_j}$ in units of $B^{-2}$. The auxiliary vector in a scalar harmonic of degree $\ell$ has the Maxwell entry $\ell(\ell+4)$. The restored vortex Maxwell polarization of 101 couples only through the weak curl in the scalar sector and gives no extra entry here.

For a scalar harmonic $f$ with $\|f\|=1$, $\Delta f=k f$ and $T f=i f$, write $A=fT$, $G=\nabla f$, $L=J\nabla_H f$. Use complex amplitudes $a,b,c$ for $X=aA+i bG+cL$, and let the auxiliary vector have profile $d\,f$ for amplitude $d$. The conjugate representation is obtained by conjugation. Put $D=k-1$. The identities $\|\nabla_Hf\|^2=\|L\|^2=D$, $\operatorname{div}(\nabla_Hf)=-D f$, and $\operatorname{div}L=4if$ follow by projecting the ambient gradient to the sphere and then to $\ker\eta$. Hence $\langle\nabla_Hf,L\rangle=-4i$. The horizontal anti-complex part of $d(X^\flat)$ is zero: the horizontal differentials of $d_H f$ and its $J$ rotation have only type $(1,1)$, using $d_H^2 f=-(T f)d\eta$. In the normalization of the preceding proof the local square is
$$
 \begin{aligned}
 F(a,b,c,d)={}&
 \tfrac18\big(D(|w_1|^2+|w_2|^2)+8\operatorname{Re}(\bar w_1w_2)\big)
       +|3a-b-Dc/2-2d|^2,\\
 w_1={}&2c-a,\qquad w_2=c-2b .
 \end{aligned}
$$
It is multiplied by $f_S^2$ in the physical mass form. The pure exact shift varies $b$ at fixed coexact amplitudes.

For $k=5$ take a holomorphic linear function, for which $L=-i\nabla_H f$. Use $c=0$. The coexact direction is $X_2=A+iG/5$ of norm squared $4/5$. Setting $a=u$ for its raw amplitude, minimizing $F$ over $b$ is minimizing $\frac12|u+2b|^2+|3u-b-2d|^2$. This gives $\frac23|\frac72 u-2d|^2$. The raw kinetic coefficients are $(12/5)I_3$ for $u$ and $I_C$ for $d$. At $b=u/5,d=0$ the separate ratios are $49/40$ and $49/5$, verifying the compression. Canonical normalization gives the displayed matrix. The lowest eigenvector of the undeformed matrix has nonzero overlap with $v$, so the positive rank-one perturbation strictly raises its lower value. A trial vector with $v^{\mathsf T}x=0$ still has quotient strictly below $5$: choose $d=7u/4$ and minimize over the five-form partner in the quadratic form shifted by $5$. This gives $10-120/10=-2$ times the canonical metric amplitude squared.

For $k=21$ take $f$ of bidegree $(2,1)$ in the convention $T f=i f$. The coexact directions are
$$
 X_2=3A+iG/3+L,\qquad X_4=A+iG/21-X_2/10 .
$$
For the first, $X_2=J\nabla_{\mathbb R^6}f+i\nabla_{\mathbb R^6}f/3$ is a tangent harmonic quadratic. The second is coexact and orthogonal to it and therefore is the $j=4$ copy by the occurrence rule. Their squared norms are $80/3$ and $24/35$ using the preceding inner products. For raw amplitudes $u_2,u_4$ take
$$
 a=3u_2+7u_4/10,\qquad c=u_2-u_4/10,\qquad
 b=u_2/3+u_4/70+b_{\mathrm{ex}} .
$$
Use $f_S^2\inf_{b_{\mathrm{ex}}}F$ with $D=20$. The kinetic entries of $u_2,u_4$ are their norms squared times $3I_3$, and that of $d$ is $I_C$. Add the two canonical metric and five-form matrices with $\lambda_2=15,\lambda_4=35$ and the auxiliary diagonal $21$. This gives the finite block in all fifteen components and its conjugate. Substituting the pure $X_2$ direction into $F$ before minimizing gives separately $11/120$ and $1/15$. The phase and perpendicular forms can couple the two coexact eigenvalues; for instance the normalized perpendicular off-diagonal is $9/\sqrt{350}$. $\square$

## The lowest weak-constant vector on shrink

**Proposition 103.3.** The first extra weak-constant coloured transverse vector is the lowest of the broken Killing, triplet and fifteen-dimensional levels. Along the fixed-shape shrink of 97 it is eventually the triplet of 103.2, with charge magnitude $1/6$. Its limiting dimensionless squared mass is the smaller eigenvalue of
$$
 \begin{pmatrix}
 (15+5r)/(1+r)&-\sqrt{120/(1+r)}\\
 -\sqrt{120/(1+r)}&15
 \end{pmatrix},
 \qquad
 r=\frac{245 I_C^\infty}{192 I_3},
$$
where $I_C^\infty$ is the finite limiting auxiliary inverse coupling. For the fitted values this is $B^2M_{\mathrm{vec}}^2\simeq4.99246$. This is a statement about the transverse vector comparison.

**Proof.** At finite $s>0$ the triplet is below $5$. All coexact representations without a $j=2$ copy have free lower values above $5$ for $j\ge3$, with auxiliary scalar harmonics of degree at least two. The unbroken $j=1$ gluons are invariant and massless. The broken $j=1$ pair retains its lower value, since the broken representation has no scalar harmonic partner and the local derivative agrees with the Killing derivative there. The free form-vector sectors have gap at least $8$. All these statements use units of $B^{-2}$. The local mass squares after exact elimination are nonnegative. In the fifteen-dimensional block the trial $u_4=d=b_{\mathrm{ex}}=0$ compares its lowest value with a $j=2$ block with additional diagonal stiffness $s(11/120+1/15)/3$. This is strictly smaller than either the octet or sextet stiffness. Hence the three stated candidates suffice at every $s>0$.

On shrink the rescaled local penalty tends to infinity. In each finite block meeting $j=2$, its finite eigenvalues converge to the old form restricted to the zero set of the penalty. This follows from the min–max principle, since unit vectors with bounded Rayleigh quotient must approach the kernel. The limiting kinetic form is positive because the projected amplitudes have their original norms and the eliminated exact variable has none. For the triplet the constraint is $d=7u/4$, which adds the auxiliary kinetic ratio $r$ and its scalar degree-one energy $5r$ to the metric slot. The lowest value lies below $5$ by the determinant test of 103.2.

For the fifteen-dimensional block, perpendicular vanishing forces $w_1=w_2=0$. In terms of the actual weak-constant scalar coefficient $f_X=f$ of the total metric shift before exact elimination, this fixes $X$ to
$$
 X=fT+\frac{i\nabla_H f+2J\nabla_H f}{3},\qquad
 t(X)=-3f .
$$
The coexact projection of this field has squared norm $(208/21)\|f\|^2$. Indeed the full norm squared is $(5k-12)\|f\|^2/9$ and its exact component has squared norm $(12-k)^2\|f\|^2/(9k)$ at $k=21$. The required auxiliary coefficient is $-3f/2$, giving a ratio $r_{15}=63 I_C^\infty/(832 I_3)$ to the metric kinetic norm. Complete the five-form squares in the form shifted by $5$. The metric coefficient is $-2$ at $j=2$ and $62/3$ at $j=4$. The degree-three auxiliary contribution is $16r_{15}$ times the total metric norm. Thus the limiting block is strictly above $5$ whenever $r_{15}>1/8$, as on the fitted path. The broken $j=1$ vectors tend to $8$. The three candidates are separated at the limit and give the claimed ordering for sufficiently late shrink.

Using $I_Q=1/e_*^2$ and the fixed shape of 97, $I_C^\infty=16(I_Q-I_3/6-I_T)$ since the weak rotation term tends to zero. The fitted values $e_*^2=0.0976611$, $I_3=0.76985$ and $I_T\simeq0.18951$ give $I_C^\infty\simeq158.75$, $r\simeq263.13$ and the stated eigenvalue. The local derivative therefore raises the asymptotic vector threshold from the projected $j=2$ value while leaving a charged triplet just below the scalar-harmonic scale $5/B^2$. Determining the first coloured particle of the full locally coupled theory also requires the spin-zero constraint spectrum. $\square$ [Matched photon budget and shrink](97_hopf_transverse_spectrum_and_current_match.md)

**Numerical example (Python, SciPy).** On the fixed-shape leg the radius and photon relations give $I_C(s)=I_C^\infty-(I_C^\infty-I_{C,n})(s_n/s)^{9/2}$, where $s_n$ and $I_{C,n}$ are the values at the neck. With the metric at $b=.001$ its weak contribution gives $I_C^\infty-I_{C,n}\simeq1.2503$. Diagonalizing the three matrices above gives a crossing from the broken Killing pair to the fifteen-dimensional branch near $s=14.083$ and $B^{-1}=1.519$ TeV. The fifteen-dimensional and triplet branches cross near $s=41.303$ and $B^{-1}=0.887$ TeV. The two finite examples refer to the transverse comparison on this path.

**Provenance.** Local transverse spectrum, exact-shift elimination and limiting ordering by gpt-6.2-sol ultra with the tensor and fermion research agents. Claude Opus 5.5 checked every ledger claim of this file by hand on 20 November 2026 and found no error (ledger `checked_by` rows). The claims that use the fits of 92, 93 and 97 hold with those numerical inputs. GPT-6.1 Terra reproduced the fit outputs using the existing implementations; the review scope and input limitations are recorded in [the numerical check](../paper/NUMERICAL_CHECKS.md).
