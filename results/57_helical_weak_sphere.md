# A helical vortex sphere and its scalar and vector spectra

Let the axis of the two-vortex sphere turn as we go round a compact circle. We vary the vortex separation, the tilt of the axis and the radii of the circle and colour space. We fix the vortex equations, the magnetic degree, the integer winding and the eleven-dimensional Einstein coefficient. The observables are the surviving isometry, the light scalar spectrum, and the tree-level ratio of the charged and neutral vector masses. Two calculations of that ratio use the same metric. One retains four vector fields and the other admits every divergence-free vector field in the colour-singlet sector.

## The metric and its photon

Use vortex units as in the [two-vortex solution](55_gravitating_vortex_cylinder.md#the-sphere-and-its-two-magnetic-connections). The parameter is $b>0$, the radius of the latitude at meridian position $s$ is $f_b(s)$, the pole separation is $P_b$ and the area is $4\pi r_b^2$. At $b\to\infty$ the sphere becomes round with radius $r=\sqrt2$. At $b\downarrow0$ its neck grows. Identify every sphere with the same unit sphere by the equal-area coordinate $z\in[-1,1]$, with $dz=f_b\,ds/r_b^2$. For the north axis $e_3$ its metric and measure are
$$
 h_{b,e_3}=\frac{r_b^4}{f_b^2}dz^2+f_b^2d\varphi^2,
 \qquad dV_b=r_b^2\,dz\,d\varphi .
$$
For a unit vector $n$ push this metric forward by a round rotation carrying $e_3$ to $n$. Axial invariance makes $h_{b,n}$ well defined. Fix an integer $k>0$, circle coordinate $\chi$ of period $2\pi$, and $0<\beta<\pi/2$. Set
$$
 n_0=(\sin\beta,0,\cos\beta),\quad n_\chi=R_3(k\chi)n_0,
 \qquad G=L^2d\chi^2+h_{b,n_\chi}.
$$
The seven-dimensional internal metric is $B^2g_{\rm FS}+G$ on $\mathbb{CP}^2\times S^1\times S^2$, where $g_{\rm FS}$ has holomorphic sectional curvature four. The vanishing mixed metric component in these fixed equal-area coordinates specifies the horizontal geometry. A coordinate change on a product metric that rotates its fibres also produces a mixed component.

**Proposition.** On $S^1\times S^2$ at finite $b$ the connected isometry algebra is the line spanned by $Q_{\rm em}=K_3+Y$, where $K_i(y)=e_i\times y$ and $Y=k^{-1}\partial_\chi$. At dissolution it becomes $\mathfrak{so}(3)\oplus\mathfrak u(1)$. The colour isometries act on the other factor.

**Proof.** Since $h_{b,n_\chi}$ is an active pushforward, $\partial_\chi h=-k\mathcal L_{K_3}h$. Thus $Q_{\rm em}$ is Killing. The form $d\chi$ is harmonic because the fibre area density is independent of $\chi$. A connected isometry acts trivially on $H^1$ and preserves its harmonic representative. Consequently every Killing field has constant $\chi$ component. The mixed Killing equation then makes its sphere component independent of $\chi$. Subtract a multiple of $Q_{\rm em}$ to remove its circle component. On each slice a remaining field must be axial. Indeed a nonround rotational sphere with nonconstant Gaussian curvature has just one Killing direction on a regular curvature latitude, and a Killing field is determined by its values on an open set. The vortex equations give $\partial_s f=(1-p)u_t/2$, $p=e^u$, and curvature $(1-p)^2/2+p u_t^2/(2f^2)$, which takes different values at the equator and in the cap. The axial Killing lines for two distinct $n_\chi$ intersect only at zero. The round case is the Riemannian product. $\square$

The map $(y,\chi)\mapsto R_3(-k\chi)y$ pulls back the magnetic line and its connection from the slice with axis $n_0$. The connection includes its induced circle component. This gives a smooth helical-invariant bundle with unchanged restriction to each sphere. The vertical Dirac indices for its first two powers are one and two. A flat circle twist preserves both indices and can change a fermion momentum threshold. The generator $Y$ has scalar charges $m/k$ on period-$2\pi$ waves. The full product has $w_2$ equal to the pullback of the nonzero hyperplane class modulo two on $\mathbb{CP}^2$. Higher-dimensional spinors need a spin$^c$ determinant of odd projective degree, as in the projective parent. The four-dimensional chiral domain and its charges require further data.

## Tree-level normalization and the potential for the tilt

Write $V$ for the internal volume, $C=1/(2\kappa_{11}^2)$ for the microscopic Einstein coefficient, and $\langle\cdot\rangle$ for volume average. At tree level the kinetic form for internal vector fields is $CV\langle G(X,X')\rangle$. For divergence-free fields the squared masses in product-frame units are the generalized eigenvalues of $q/2$ relative to this metric norm with the common $CV$ removed, where $q(X)=\langle|\mathcal L_X G|^2\rangle$. A constant four-dimensional Weyl rescaling changes all squared masses by a common factor. We retain the Einstein contribution, set finite matching thresholds to zero, and do no four-dimensional running. These conventions apply both to the restriction and the spectral calculation below. [Baptista, equations (3.5)–(3.7)](https://arxiv.org/html/2306.01049#S3.SS2)

**Proposition.** The restriction to $K_1,K_2,K_3,Y$ has one zero mode at finite $b$. At $x=\cos^2\beta=1/3$ the three weak generators have equal kinetic norms and the restricted masses obey $M_W^2=\cos^2\theta\,M_Z^2$, with $\cos^2\theta=g_2^2/(g_2^2+g_Y^2)$ in this kinetic basis. At this tilt the two relative matching conditions $g_3^2=g_2^2=(5/3)g_Y^2$ have the one-parameter solution
$$
 B_b^2=8J_b,\qquad L_b^2=\tfrac53 k^2 J_b,\qquad
 J_b=\frac16\int_{-1}^1\left[\frac{r_b^4(1-z^2)}{f_b^2}+\frac{f_b^2}{1-z^2}\right]dz .
$$
The surviving photon has the exact Einstein kinetic coefficient $e^{-2}=CV(J_b+L_b^2/k^2)$ and $e^2/g_3^2=3/8$ on this curve.

**Proof.** All four fields preserve the area density. Write $X=\sum u_iK_i+yY$, $D=u-ye_3$. On one slice axial invariance gives the rotational defect $T_b(|D|^2-(D\cdot n_\chi)^2)$, where $T_b>0$ is the slice average of the squared Lie derivative for a transverse rotation. The average over $\chi$ is
$$
 q(X)=T_b\left[\tfrac{1+x}{2}(D_1^2+D_2^2)+(1-x)D_3^2\right].
$$
The slice kinetic matrix of $K_i$ has the form $c_\perp\delta_{ij}+(c_\parallel-c_\perp)n_i n_j$. At $x=1/3$ one has $\langle n_i n_j\rangle_\chi=\delta_{ij}/3$. The spherical average of one third the trace gives $J_b$ since $\sum_i K_i\otimes K_i=g_{\rm unit}^{-1}$. The $Y$ entry is $L^2/k^2$, orthogonal to the sphere entries. In canonical vector coordinates the mass term is proportional to $g_2^2(W_1^2+W_2^2)+(g_2W_3-g_Y A_Y)^2$. The colour coefficient is $CV B^2/8$ for $\mathrm{tr}_{\boldsymbol 3}(T^2)=1/2$. Substitution proves the matching and the photon norm. Only $Q_{\rm em}$ and the colour generators are exact symmetries in the broken geometry. The other kinetic coefficients just used refer to a specified restriction. [Colour normalization on the projective product](issues/01.md#colour-the-finite-real-module-and-matching-on-one-product) $\square$

**Proposition.** At fixed $b,L,B$, the bare Einstein action gives an orientational potential proportional to $+\sin^2\beta$ with strictly positive coefficient. Neither interior custodial tilt in this calculation is a stationary bare-Einstein background.

**Proof.** The second fundamental form of a slice is $(2L)^{-1}\partial_\chi h$. Its trace vanishes pointwise. Integrating the scalar curvature and using Gauss–Bonnet gives
$$
 \int_{S^1\times S^2}R_G\,dV_G=2\pi L\left[8\pi-\frac{k^2}{4L^2}(4\pi r_b^2)T_b\sin^2\beta\right].
$$
The four-dimensional potential contains minus this integral times positive volume factors. The term from the colour factor is tilt-independent. This computation gives the tilt derivative at fixed radii. The vortex equations used here are equations on the slices. $\square$

**Proposition (external curvature).** Suppose the external metric is an unwarped Lorentzian Einstein four-metric with $\mathrm{Ric}_4=3\lambda g_4$. In ordinary eleven-dimensional Einstein gravity, any matter satisfying the null energy condition on the above product requires
$$
 -3\lambda\ \ge\ \max_{S^1\times S^2}|\mathrm{II}|^2>0,
 \qquad \mathrm{II}=\tfrac1{2L}\partial_\chi h .
$$
On the relatively matched $x=1/3$ family this implies $-\lambda\ge\mu/16$, where $\mu$ is the first positive neutral eigenvalue of the colour-singlet divergence-free vector mass-squared operator in the same product units.

**Proof.** The unit field $D=L^{-1}\partial_\chi$ is geodesic. Its orthogonal slices have zero mean curvature, hence $\mathrm{Ric}_G(D,D)=-|\mathrm{II}|^2$ by the normal Riccati equation. For a unit external timelike field $U$, the vector $U+D$ is null. The contracted Einstein equation, including any cosmological term, gives $-3\lambda-|\mathrm{II}|^2\ge0$ pointwise. A nonpolar helix on a nonround slice has $\partial_\chi h\ne0$ somewhere. Write $I_Y=L^2/k^2$. The mean of $|\mathrm{II}|^2$ is $q(K_3)/(4I_Y)$. In the two-dimensional neutral trial space remove the photon by kinetic orthogonality. The remaining Rayleigh quotient is $m_{Z,\rm tr}^2=q(K_3)(1/J_b+1/I_Y)/2$. Min–max gives $\mu\le m_{Z,\rm tr}^2$. Substitution of $I_Y=5J_b/3$ proves the claimed bound. $\square$

Thus even positive-energy matter capable of modifying the orientational potential must pass a second test. Within this unwarped static ansatz the null energy condition excludes Minkowski and de Sitter geometries. In anti-de Sitter space the displayed curvature bound is necessary. Warping, changing the horizontal metric, violating the null energy condition or modifying the gravitational action changes the test.

## The scalar spectrum with matched radii

**Theorem.** Along the matched curve above, as $b\downarrow0$,
$$
 \frac{J_b}{P_b^2}\longrightarrow\frac1{18},\qquad
 \frac{B_b}{P_b}\longrightarrow\frac23,\qquad
 \frac{L_b}{kP_b}\longrightarrow\sqrt{\frac5{54}}.
$$
Every ordered eigenvalue of the nonnegative internal scalar Laplacian multiplied by $P_b^2$, with multiplicity, tends to that of
$$
 H=\frac94\Delta_{\rm FS}-\frac{54}{5k^2}\partial_\chi^2
   -\partial_z\!\left[\left(4+\frac{18}{5}(1-z^2)\right)\partial_z\right]
$$
on $\mathbb{CP}^2\times S^1\times[-1,1]$ with uniform interval measure, periodic circle and Neumann ends. This gives six resolved internal scalar dimensions in the ordered low spectrum and a six-dimensional Weyl law for its limiting operator. In fixed microscopic units $V$ grows as $P_b^6$ and the inverse squared matching couplings grow as $P_b^8$. No absolute electromagnetic, Fermi or strong scale enters the curve.

**Proof.** Write $P=P_b$. A cap outside the central region $p\ge e^{-\eta}$ has bounded physical length for each fixed $\eta>0$ as $b\downarrow0$. This follows by integrating the first integral for $u$ on $u\le-\eta$. In the remaining region $f^2=2\exp(u+b+e^{-b}-e^u)$ tends uniformly to 2 as $\eta\downarrow0$, $b\downarrow0$. Consequently $r_b^2/P\to1/\sqrt2$ and $f^2\to2$ on every compact subinterval of the equal-area interior. [Vortex first integral and cap estimate](55_gravitating_vortex_cylinder.md#the-singlet-tower-and-the-two-cap-modes)

On the northern half $f$ is concave and $0\le f_s\le1$ by the vortex equations. Hence $f\ge2\sqrt2 s/P$ and $r_b^2(1+z)=\int_0^s f\,ds\le s f$. Also $f^2\le2\int_0^s f\,ds$. Reflection and $r_b^2\le P/\sqrt2$ give
$$
 a_b:=P^2 f^2/r_b^4\ \ge\ 4(1-|z|),\qquad f^2\le2r_b^2(1-|z|).
$$
The coefficients $a_b$ are uniformly bounded above for small $b$ and tend to four in the interior. The first term of $J_b/P^2$ thus admits a constant integrable majorant, and the second tends uniformly to zero by the other cap bound. Integrating $(1-z^2)/24$ gives $1/18$. The matching equations give the other two limits. The factors in $V$ are proportional to $B^4 L r_b^2$.

Use coordinates rotating with the sphere, so its metric is fixed along $\chi$. Let $K$ generate rotation around $e_3$ in this frame, with angle $\beta$ to the vortex axis. Up to a constant in the measure, the rescaled scalar energy on $S^1\times S^2$ is
$$
 \int\!\left[a_b|v_z|^2+\frac{P^2}{f^2}|v_\varphi|^2+
             \frac{P^2}{L_b^2}|v_\chi-kKv|^2\right]dz\,d\varphi\,d\chi .
$$
The cap bounds control the round sphere $H^1$ seminorm uniformly, since its weights are $1-z^2$ and $(1-z^2)^{-1}$. Every round rotation is bounded in this norm as a map into $L^2$. The last term therefore controls the circle derivative together with the first two terms. Compact embedding gives strong $L^2$ compactness. Since $P^2/f^2\to\infty$ uniformly, any bounded-energy limit is independent of $\varphi$. On compact interiors weak lower semicontinuity gives the limiting radial energy and the full limit of the helical expression as a lower bound. Increasing these interiors covers the entire interval. The resulting domain is contained in $H^1([-1,1]\times S^1)$ since the limiting radial coefficient is bounded below by four.

For $v=v(z,\chi)$ the azimuthal mean of $Kz$ vanishes and that of $(Kz)^2$ is $\sin^2\beta(1-z^2)/2$. Smooth such functions give the matching upper bound by dominated convergence. They are dense in the unrestricted $H^1$ interval domain, which gives the natural Neumann conditions. The min–max principle now gives convergence of the ordered eigenvalues. The colour factor separates, with coefficient $P^2/B^2\to9/4$. This proves the formula for $H$. The positive Neumann interval gap is strictly larger than $\pi^2$, the gap without the extra rotational term. Indeed the additional integral is positive on every nonconstant eigenfunction, and the constant-coefficient interval Poincaré inequality gives $4\int|v'|^2\ge\pi^2\int|v|^2$ for mean zero. $\square$

**Corollary.** If the unwarped external four-geometry satisfies the preceding Einstein null-energy test, its curvature on the matched long-neck family obeys $\liminf_{b\downarrow0}(-\lambda)\ge1/10$ in the fixed vortex units.

**Proof.** Evaluate $\mathrm{II}$ at the point $y=e_3$ fixed by the axial rotation of the helix. Its vortex latitude is $z=\cos\beta$, in the equal-area interior. The tangent metric eigenvalues relative to an orthonormal round frame are $a=r_b^4(1-z^2)/f_b^2$ and $c=f_b^2/(1-z^2)$. At a fixed point the linearized rotation acts on this plane with speed one. Hence $|\mathcal L_{K_3}h|^2=2(a/c+c/a-2)$. The matched limits give $a/(cP^2)\to(1-z^2)^2/8=1/18$ and $k^2P^2/L_b^2\to54/5$. Consequently $|\mathrm{II}|^2$ at this point tends to $3/10$. Applying the pointwise null bound proves the claim. The scalar gaps of order $P^{-2}$ in squared mass can descend even while this required external curvature stays finite in microscopic units. $\square$

Holding $L$ fixed instead gives a different metric limit for the three-dimensional factor. Rotation about $n_\chi$ on any slice moves a point along a latitude of radius at most $\sqrt2$. Two nonparallel axes can be reached at finite cost along the fixed circle. Their rotations generate $SO(3)$ in a bounded number of alternations. Indeed products of the two circle subgroups contain an open set by the rank-three differential of a three-rotation product at a generic middle angle. An open neighbourhood of the identity then lies in a bounded product, and compactness and connectedness give a finite power covering $SO(3)$. Thus $\operatorname{diam}(S^1\times S^2,G)$ stays bounded at fixed $L,\beta,k$ even as $P\to\infty$. In units of $P$ the entire three-dimensional factor then collapses to a point. The matched growth of the circle prevents these short paths between widely separated latitudes.

## Mixing with the other vector modes near the round sphere

Fix the limiting circle radius $L_0>0$. Allow $L$ to be fixed or analytic in $\epsilon=e^{-b}$ with $L(0)=L_0$. Define the reference mixing angle from the symmetric endpoint,
$$
 \cos^2\theta_0=\frac{L_0^2/k^2}{L_0^2/k^2+2r^2/3}.
$$
Let $M_W^2$ be the small charged eigenvalue of $q/2$ relative to the vector metric norm, and $M_Z^2$ the small positive neutral eigenvalue. We take the entire divergence-free sector on $S^1\times S^2$. These are also all the colour-singlet internal vectors on the full product, since $\mathbb{CP}^2$ is colour-transitive and has no invariant tangent vector field.

**Theorem.** For sufficiently small positive $\epsilon$ there is an analytic tilt $x(\epsilon)=\cos^2\beta(\epsilon)$ for which the full eigenvalues obey $M_W^2=\cos^2\theta_0 M_Z^2$. Its limiting value is the unique root in $(0,1)$ of
$$
 F(x)=(3x-1)^2+6W_1x(1-x)-3W_2(1-x)^2=0,
 \qquad W_m=\frac{s_m^2+6s_m+36}{s_m^2+10s_m+36},\quad
 s_m=\frac{m^2k^2r^2}{L_0^2}.
$$
For the round relative matching $\cos^2\theta_0=5/8$ this root solves $14715x^2+67743x-22396=0$. Thus $x(0)\simeq0.30976007$ ($\beta\simeq56.18$ degrees). The four-generator result gives $1/3$ ($54.74$ degrees). The full eigenvalue test uses the weak angle at the symmetric endpoint. Away from $x=1/3$ equal broken-phase weak kinetic coefficients need a separate test, as do the couplings to a specified charged current.

**Proof.** The first-order deformation in equal-area coordinates is a round rescaling plus the tensor
$$
 h^{(1)}=\frac{4r^2}{9}\operatorname{Hess}_0^{\rm tf} P_2(n_\chi\cdot y),
 \qquad P_2(t)=(3t^2-1)/2 ,
$$
where the Hessian uses the unit sphere, and “tf” denotes its trace-free part. To see this, write $w=\tanh t$. Expanding the vortex first integral at fixed $t$ gives $f_b^2=2(1-w^2)(1+2\epsilon w^2)+O(\epsilon^2)$. For example, $p/\epsilon=(1-w^2)[1+\epsilon w^2]+O(\epsilon^2)$ solves the linearized initial value problem with its equatorial data. Integration of the area form gives $r_b^2=r^2(1+2\epsilon/3)+O(\epsilon^2)$ and $z=w+(2\epsilon/3)(w^3-w)+O(\epsilon^2)$. Hence $f_b^2/r_b^2=(1-z^2)-(2\epsilon/3)(1-z^2)^2+O(\epsilon^2)$, which gives the displayed tensor. Smooth parameter dependence through the poles also follows directly from the first integral. On either hemisphere put $t_0=p/\epsilon\in[0,1]$. The area element per unit azimuth is proportional to $e^{\epsilon(1-t_0)}dt_0/\sqrt{1-t_0e^{\epsilon(1-t_0)}}$. After setting $v=\sqrt{1-t_0}$ its density is analytic and positive up to both ends for $\epsilon$ near zero. Normalized signed area is an analytic odd coordinate in signed $v$ about the equator. At the polar end $f_b^2$ has a simple zero in area with its usual smooth pole slope. This gives an analytic family of smooth metric coefficients, including in regular polar charts. [Vortex first integral](https://arxiv.org/html/2308.09365#S5.SS1)

Let $D_0 Z=\mathcal L_ZG_0$ at the round product. The vector form has kernel the four round Killing fields, and has a gap on their orthogonal complement by the elliptic estimate for the symmetrized derivative and compactness. The divergence-free space is common to all these metrics because the volume densities differ by constants. For a round Killing field $X$, the coefficient of order $\epsilon^2$ in the effective form on the kernel is
$$
 \min_{Z\perp\ker D_0,\ \mathrm{div}\,Z=0}
       \|\mathcal L_X h^{(1)}+D_0Z\|^2 .
$$
Indeed $D_\epsilon(X+\epsilon Z)=\epsilon(\mathcal L_X h^{(1)}+D_0Z)+O(\epsilon^2)$ and the complement has a bounded inverse in the form norm. Eliminating it in the generalized eigenvalue equation gives this same expression; corrections from the kinetic norm multiply eigenvalues of order $\epsilon^2$ and enter at higher order. The overall constant is common to the three massive modes.

For an $L^2$-normalized degree-two harmonic $a$ on the radius-$r$ sphere write $\nu=6/r^2$, $K_0=1/r^2$ and $A=\|\operatorname{Hess}^{\rm tf}a\|^2=\nu(\nu/2-K_0)$ by integration by parts. Use unit circle direction $e_\chi=L_0^{-1}\partial_\chi$. The complement contains every integer circle frequency. The winding of the shape sources frequencies $\omega=mk/L_0$. A trace-free Hessian at one such frequency can couple only to $Z=u\nabla a+w a e_\chi$ with $i\omega w=\nu u$, after including the common Fourier phase. Orthogonality follows from spherical harmonic orthogonality, the Hodge decomposition and $\mathrm{div}\,\operatorname{Hess}^{\rm tf}a=(K_0-\nu/2)\nabla a$. At $m=0$ solenoidality removes the gradient and the circle term has zero overlap. For $m\ne0$, the squared norm and overlap are
$$
 \|D_0 Z\|^2=2\nu|u|^2\left[\frac{(\omega^2+\nu)^2}{\omega^2}-2K_0\right],
 \qquad |\langle D_0 Z,\operatorname{Hess}^{\rm tf}a\rangle|=2|u| A .
$$
For example the sphere, mixed and circle blocks of the derivative are $2u\operatorname{Hess}a$, $(i\omega u+w)\,da$, and $2i\omega w a$. Subtracting the squared projection leaves fraction $W_m$ of the Hessian norm, including $W_0=1$.

The fractions of the squared degree-two amplitude at absolute azimuthal weights $m=0,1,2$ of $P_2(n_\chi\cdot y)$ are respectively
$$
 C_0=(3x-1)^2/4,\qquad C_1=3x(1-x),\qquad C_2=3(1-x)^2/4 .
$$
They follow by expanding the rotated quadratic harmonic. The axial squared generator has weight $m^2$, and either transverse squared generator has weight $(6-m^2)/2$ after circle averaging. Derivation by $K_1$ or $K_2$ changes the spatial weights but leaves the circle frequency of each original term fixed. The neutral defect uses $u_3-y$ since $K_3+Y$ is exactly Killing. Its only positive generalized eigenvalue contains the norm factor $(2r^2/3)^{-1}+(L_0^2/k^2)^{-1}$. Multiplication by $\cos^2\theta_0$ reduces this to the charged norm factor $(2r^2/3)^{-1}$. Equality of the leading masses is therefore $\sum_{m=0}^2(2-m^2)C_mW_m=0$, equivalent to $F=0$.

For $s\ge0$ the displayed weight lies in $[9/11,1]$ since $W(s)-9/11=2(s-6)^2/[11(s^2+10s+36)]$. Thus $F(0)<0<F(1)$ and $F'(x)=6[(3-2W_1-W_2)x+W_1+W_2-1]>0$. The round matched geometry has $J=2r^2/3$, hence $s_1=9/10$, $W_1=469/509$ and $W_2=49/59$. Substitution gives the stated quadratic. The projected tilt $1/3$ solves the full leading equation precisely when $W_1=W_2$. For finite $s_1>0$, clearing denominators gives $s_1=3$, corresponding to $\cos^2\theta_0=1/3$.

Finally the round four-dimensional small spectral subspace continues analytically by the resolvent projection around the isolated zero cluster. The helical circle commutes with the operator for all $\epsilon,x$. The two conjugate charged lines each have multiplicity one and are isospectral by reality. The neutral subspace contains the exact zero line $Q_{\rm em}$, leaving one other eigenvalue. Hence both massive branches are analytic locally in $\epsilon,x$. Their difference at the prescribed angle divided by $\epsilon^2$ extends analytically with value a positive common constant times $F(x)$ at $\epsilon=0$. The simple root and the implicit function theorem give the asserted exact curve for small $\epsilon$. $\square$

**Corollary (simultaneous relative matching).** There is a near-round one-parameter family on which the two exact unbroken couplings satisfy $e^2/g_3^2=3/8$, the transverse weak trial generator has the same kinetic norm as a normalized colour generator, and the full solenoidal eigenvalues obey $M_W^2=(5/8)M_Z^2$. The input on the massive weak field is a kinetic normalization of the specified trial generator. A weak charged-current measurement would also require the fermion operator and its vertices.

**Proof.** Write $d=c_\parallel-c_\perp$. The helix has mean squared norms $J_T=c_\perp+d(1-x)/2$ for either transverse field and $J_3=c_\perp+dx$ for the axial field. The exact photon norm is $J_3+L^2/k^2$. The desired two kinetic relations give
$$
 B^2=8J_T,\qquad L^2/k^2=\tfrac83J_T-J_3 .
$$
Both right sides are positive analytic near the round sphere. They give $s_1=9/10$ there for every $x$. Substitute these radii before applying the simple-root argument above. Their higher-order changes multiply the vanishing squared masses and leave the leading equation unchanged. The resulting exact branch has $x(0)=0.30976007\ldots$ and the one continuous coordinate $\epsilon$, before any absolute coupling or mass is fitted.

The additional condition $J_3=J_T$ is independent after symmetry breaking. The area-coordinate expansion gives $c_\parallel=r_b^2(2/3-16\epsilon/45)+O(\epsilon^2)$ by averaging $f_b^2$. The mean of the three kinetic eigenvalues is $2r_b^2/3+O(\epsilon^2)$ since the two first-order trace-free terms cancel. Thus $d=-8r^2\epsilon/15+O(\epsilon^2)$, and $J_3-J_T=d(3x-1)/2$. Imposing equality gives $x=1/3$ for sufficiently small positive $\epsilon$. With the benchmark coupling ratio this leaves $F(1/3)=4(W_1-W_2)/3\ne0$. The stronger isotropic trial matching and the full custodial mass match therefore select different near-round families in the pure Einstein sector. Extra kinetic terms or a different weak-current prescription require a new matching calculation. $\square$

In fact $c_\parallel<c_\perp$ holds at every finite $b$. The vortex equations give $K(p)=1/2-2p+p^2/2+\epsilon e^{p-\epsilon}$ for Gaussian curvature. This strictly decreases with $p\in[0,\epsilon]$, so curvature increases towards a pole. Put $F_b=f_b^2/r_b^2$ and $d_0=1-z^2-F_b$ on $[0,1]$. Then $F_b''=-2r_b^2K$, so $d_0''$ strictly increases there. The regular pole slope and equatorial reflection give $d_0'(0)=d_0'(1)=0$. Strict convexity of $d_0'$ makes it negative in the interior, hence $d_0>0$ since $d_0(1)=0$. Write $v=F_b/(1-z^2)<1$ there. The integrand for $(c_\parallel-c_\perp)/r_b^2$ in normalized latitude measure is $v(1-3z^2/2)-1/(2v)$. It strictly increases with $v$ up to $1$ in the interior, and its mean at $v=1$ is zero. This proves the strict sign. Thus all three trial weak norms agree precisely at $x=1/3$ throughout the broken branch. The relative matching prescription with just the transverse norm also gives positive radii at every tilt. Indeed $\tfrac83J_T-J_3$ is affine in $x$, with positive endpoints $(c_\perp+4c_\parallel)/3$ and $8c_\perp/3-c_\parallel$. The full mass relation on that prescription has been established near the round end.

## Chirality and the Hopf circle

Two global conditions constrain the use of this metric in the interpolation. First, an isometry reversing the circle takes $Q_{\rm em}$ to $-Q_{\rm em}$, by its nonzero constant circle component and the one-dimensional connected Killing algebra on $S^1\times S^2$. The ordinary even orbifold projection then loses the geometric photon. A separately imposed fermion projection or a gauge field on another factor has different boundary data. Second, replacing the product circle by the Hopf circle $S^5\to\mathbb{CP}^2$ while keeping a fixed nonpolar tilt and a globally fixed weak frame would give a nonvanishing transverse axis component of weight $k$. It would define a nowhere-zero section of $\mathcal O(\pm k)$ on $\mathbb{CP}^2$, contradicting $c_1=\pm k h\ne0$. The axis can instead become polar at zeros of a section, or the weak bundle and its colour-equivariant lift can change. The [dual-circle correspondence](issues/01.md#circle-duality-between-the-projective-product-and-the-berger-endpoint) makes a separate connection between the topological endpoints.

The scalar limit is proved on the relatively matched family at $x=1/3$. The full vector mass relation is proved near the opposite, round endpoint on its own tuned family. A common solution of the higher-dimensional metric and matter equations carrying the chiral domain and satisfying physical current matching remains open. The tilt equation and the null curvature bound test the stress in such a solution. Circle reversal and the Hopf weight constrain its global construction.
