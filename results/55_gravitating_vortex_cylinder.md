# A gravitating two-vortex sphere, its Dirac masses and its weak rotations

We vary the area of an axially symmetric sphere with two simple vortices. We fix the Einstein–Bogomolny couplings, the magnetic line and the charges of all probes. We compute the limiting interval, the locations and gaps of the fermion modes, and the vector mass matrix of a specified four-dimensional collective action. This gives a field-equation test of the prescribed caps in [issue 1, §2](issues/01.md#a-smooth-sphere-limit-with-the-interval-spinor-domain).

## The sphere and its two magnetic connections

**Reference (Yang and Yao).** On the Riemann sphere take the vortex line $V=\mathcal O(2)$ and a holomorphic section with one zero at each pole. Use vortex units $\tau=1$ and critical gravitational coupling $\alpha_{\rm grav}=1/2$. Write $z=\exp(t+i\varphi)$, $\varphi$ of period $2\pi$, $p=|\phi|^2=\exp u$, and $b=-u(0)>0$. The smooth reflection-symmetric solution of the coupled Einstein–Bogomolny equations has metric $g=f^2(dt^2+d\varphi^2)$ with
$$
 \lambda_b=\tfrac12\exp(-b-e^{-b}),\qquad
 f^2=\lambda_b^{-1}\exp(u-e^u),\qquad
 u_{tt}=f^2(e^u-1),\qquad u_t^2=4-2f^2 .
$$
Here $u$ is even, increases from the north pole to the equator, and $u_t$ tends to $2$ and $-2$ at the two poles. The magnetic equation in the positive real curvature convention reads $iF_V=(1-p)dV_g/2$. It gives $\int p\,dV_g=\mathcal A_b-8\pi$, where $\mathcal A_b$ is the physical area. As $b\to\infty$ the vortex dissolves and the metric tends to the round sphere of radius $\sqrt2$. As $b\downarrow0$, the two pole-centred limits are smooth vortices with exponentially cylindrical ends. On each fixed central $t$-interval, $u\to0$. [Yao, §§3 and 5.1, especially (5.2)–(5.8) and (5.20)](https://arxiv.org/html/2308.09365#S5.SS1)

**Proposition.** The physical equatorial radius is exactly $\sqrt2$ for every $b$. Let $P_b=\int_{\mathbb R} f\,dt$ be the pole separation. At fixed couplings $P_b\to\infty$ as $b\downarrow0$. In the rescaled metric $P_b^{-2}g$ the entire sphere converges in Gromov–Hausdorff distance to the unit interval.

**Proof.** Substitution of $u(0)=-b$ gives $f(0)^2=2$. Since $u-e^u$ increases for $u<0$, $0<f\le\sqrt2$. On increasingly long central intervals $f$ approaches $\sqrt2$, which proves divergence of $P_b$. Projection to meridian arclength $s=\int_{-\infty}^t f\,dt$ is onto and 1-Lipschitz. A meridian path followed by a latitude arc costs at most $|s_1-s_2|+\pi\sqrt2$. This bounds the distortion after rescaling by $\pi\sqrt2/P_b$. The meridian length is an exact diameter here: the two paths through the north and south poles have lengths $s_1+s_2$ and $2P_b-s_1-s_2$, one of which is at most $P_b$. $\square$

**The two connections.** For every fermion use a power of the same vortex square root $Q=\mathcal O(1)$, equipped with the square root of the Hermitian metric on $V$. In the smooth north holomorphic frame the section of $V$ has coefficient $z$. The squared frame norms of $Q$ and of the metric spin line $L_0=K_{S^2}^{-1/2}$ are proportional to $\exp(u/2-t)$ and $f\exp(-t)$. Thus $h_Q/h_{L_0}=\sqrt{\lambda_b}\exp(p/2)$ up to a constant. In a unitary northern polar gauge with covariant derivative $d-iA$,
$$
 A_{Q,\varphi}=\tfrac12-\tfrac14u_t,\qquad
 A_{L_0,\varphi}=\tfrac12-\tfrac14(1-p)u_t .
$$
The latter follows also from $A_{L_0,\varphi}=(1-\partial_s f)/2$ and has magnetic density $K_g/2$ for Gaussian curvature $K_g$. Both connections have half a unit of flux on each hemisphere. They differ by $-p u_t\,d\varphi/4$ on the transition regions. Replacing the physical vortex root by the spin connection there would change the singlet wavefunction.

## The singlet tower and the two cap modes

**Theorem.** Twist the ordinary spin Dirac operator by $Q^N$ with its vortex connection. In the charge-one sector its one chiral zero mode extends over the neck. Its $k$th positive eigenvalue satisfies $P_b E_{1,k}\to k\pi$ for each fixed $k\ge1$ as $b\downarrow0$. In charge two there are two exact zero modes. They concentrate at opposite ends of the rescaled interval, and all nonzero eigenvalues in that sector have absolute value at least some $c>0$ in the original vortex units for sufficiently small $b$.

**Proof.** The extending spin frame has half-integer polar labels $m$. In the northern trivialization the meridian half-density of an upper zero mode solves $\partial_s v=Wv$, with $W=(m-NA_{Q,\varphi})/f$. Its exact profile and Hilbert measure are
$$
 v_{Nm}(t)=C\exp\big[(m-N/2)t+Nu(t)/4\big],\qquad
 \|v\|^2=\int |v|^2\,ds .
$$
At the north pole upper regularity gives $m\ge1/2$, and at the south it gives $m\le N-1/2$. The lower solutions have the reciprocal profile and no allowed $m$ for $N>0$. These are the $N$ holomorphic sections of $K^{1/2}\otimes Q^N$. For $N=1$ the pointwise density of the normalized zero is $\exp(p/2)/\int\exp(p/2)dV_g$. It stays within a factor $e^{1/2}$ of the uniform density throughout the sphere.

For the singlet central label factor out $v_{1,1/2}$. In $x=s/P_b$ the upper squared Dirac operator times $P_b^2$ has Rayleigh quotient $\int_0^1 w_b|v'|^2 dx\,/\,\int_0^1 w_b|v|^2 dx$, with $w_b=\exp(u/2)$. Smoothness at the poles selects the finite-energy form through its regular branch. The weights are bounded by one and increase up to the midpoint. They converge to one uniformly on every closed subinterval of $(0,1)$. Indeed, for each fixed $\eta>0$ the part of a cap with $u\le-\eta$ has bounded physical meridian length as $b\downarrow0$. On that part one integrates $f\,du/\sqrt{4-2f^2}$ using the first integral. The denominator stays separated from zero and the numerator decreases exponentially towards the pole. The remaining region has $w_b\ge e^{-\eta/2}$.

To control an endpoint, for $d<1/2$ monotonicity and Cauchy–Schwarz give
$$
 \int_0^d w_b|v(x)-v(d)|^2 dx
 \ \le\ \tfrac12 d^2\int_0^d w_b|v'|^2 dx .
$$
The reflected estimate holds at one. For a sequence with bounded norm and energy the interior trace $v(d)$ is bounded uniformly as $b\to0$, then $d\downarrow0$, by comparison with a fixed middle interval once $w_b\ge1/2$ on $[d,1/2]$. No norm escapes to an endpoint. Interior compactness and lower semicontinuity give the ordinary $H^1[0,1]$ lower bound for each limiting subspace. Smooth trial functions give the upper bound by dominated convergence. The min–max principle therefore gives Neumann squared eigenvalues $(k\pi)^2$. The two first-order components pair at every positive eigenvalue.

For $N=2$, the two profiles are $\exp(u/2-t/2)$ and $\exp(u/2+t/2)$. Centre the first at the unique northern cross-section $u=-1$ for $b<1$. In the translated coordinate $\xi$ the squared measure, up to a constant, is $e^{u-\xi}f\,d\xi$. It has a nonzero smooth pointed limit. On the cylindrical side it is bounded by $\sqrt2 e^{-\xi}d\xi$. At the pole end $u_t\to2$ uniformly outside a fixed translated interval by the first integral, so there is also an integrable exponential majorant there. Normalization gives a square-integrable cap state. Reflection gives the other one.

For completeness, consider the gap away from these solutions. On exterior angular labels the squared first-order radial operators have potentials $W^2\pm\partial_s W$. With $a=m-NA_{Q,\varphi}$,
$$
 f^2(W^2\pm\partial_s W)=a^2\mp(a\,\partial_s f+N\partial_t A_{Q,\varphi}) .
$$
We have $|\partial_s f|\le1$, $|\partial_t A_{Q,\varphi}|\le1/2$ and $0\le A_{Q,\varphi}\le1$. The expression is uniformly positive and grows quadratically at large $|m|$, on smooth polar domains. The finitely many remaining labels with $m\ne N/2$ have a uniformly positive squared potential in the middle once $|u|$ is sufficiently small. There $f$ approaches $\sqrt2$, and $u_t$ and $u_{tt}$ are small. Cut the two ends off at distances between $T$ and $2T$ from the reference circles $u=-1$ towards the middle, using cutoffs with squared gradient sum $O(T^{-2})$. For each fixed large $T$ the translated end regions converge smoothly, including the poles in a regular gauge. A unit sequence with Dirac norm tending to zero has subsequences converging on every compact cap region, by interior elliptic estimates. Its cap limits are square-integrable zero solutions. At a northern infinite cap upper regularity and decay require $1/2\le m<N/2$. Lower regularity and decay would require $m\le-1/2$ and $m>N/2$. Reflection determines the southern list. The only cap kernels are the two just identified. Orthogonality to the exact normalized modes excludes both limits by their uniform tail bounds. The middle potential estimate and the quadratic-form partition then bound the remaining squared norm by $O(T^{-2})$. Sending $T$ to infinity contradicts unit norm. This proves the charge-two gap and excludes small eigenvalues in the other charge-one labels. $\square$

The physical thresholds separate as $E_{\rm axial}\sim\pi/P_b$ and $E_{\rm transverse}\ge c$ for the modes just described. In diameter units the first is finite and the second diverges. With the original couplings the axial tower becomes *lighter*. Changing the physical overall length to turn this family into a shrinking compactification requires another scale in the equations. These are classical Dirac thresholds, with no four-dimensional renormalization-group evolution.

## Charged scalar overlap and the vector mass ratio

**Proposition.** Let $e$ be the normalized charge-one spin zero mode and $s_\pm$ the orthonormal axial holomorphic scalar modes of $Q$. Multiplication by them maps $e$ into the charge-two zero space. The two singular amplitudes are equal to $k_b$ and obey
$$
 e^{-1/4}\ \le\ \sqrt{\mathcal A_b}\, k_b\ \le\ e^{1/4}
$$
on the whole branch.

**Proof.** The product sections are holomorphic sections of $K^{1/2}\otimes Q^2$. Their axial weights are distinct, and reflection exchanges their norms. Thus $k_b^2=\int |s_\pm|^2|e|^2dV_g$ with $\int |s_\pm|^2dV_g=1$. The exact density above and $1\le\exp(p/2)\le e^{1/2}$ give the bounds. In particular scalar columns $h\sqrt{\mathcal A_b}\,s_\pm$ give projected Yukawa amplitudes between $e^{-1/4}|y|h$ and $e^{1/4}|y|h$ for coupling $y$. Pole masses after mixing with the axial tower require a separate gap estimate for the interacting operator. $\square$

**Proposition (collective action).** On the branch just described there is a fixed two-derivative action for weak rotations, relative to a round reference sphere, whose vacuum preserves $Q_{\rm em}=T_3+Y$ and gives $\rho=1$ at tree level for every $0<b<\infty$. Both the geometric inertia and the scalar vev vanish at the dissolved, round endpoint.

**Construction and proof.** Use unit round measure $dV_0=\operatorname{sech}^2t\,dt\,d\varphi$, and write the conformal deformation of the limiting round metric as $\psi=\log(f\cosh t/\sqrt2)$. Rotate the actual functions $\psi,p$ together with the vortex axis. Give them the horizontal kinetic density $\tfrac12\int(\kappa_g^2|D_\mu\psi|^2+\kappa_p^2|D_\mu p|^2)dV_0$, with fixed positive constants. The horizontal derivative gauges the rotations of the reference sphere. On an orbit, the axial generator annihilates both functions. A transverse rotation has $t$ component $\cosh t\sin\varphi$ up to a choice of azimuth. Its inertia, in the convention with a factor $1/2$ in the cost, is therefore
$$
 I(b)=\pi\int_{\mathbb R}(\kappa_g^2\psi_t^2+\kappa_p^2 p_t^2)\,dt .
$$
This is positive at each finite $b$ and finite by smooth polar extension. It includes the deformation of the metric in this action. At dissolution $p\le e^{-b}$ and $\int p_t^2dt\le2e^{-2b}$ from $|u_t|\le2$. For the metric term put $\epsilon=e^{-b}$ and $v=-u-b$ on $t\ge0$. Then $f^2=2\exp[-v+\epsilon(1-e^{-v})]$ and $v'=2\sqrt{1-f^2/2}$. For $\epsilon\le1/2$ the time to $v=1$ is bounded by $\int_0^1[2\sqrt{1-e^{-v/2}}]^{-1}dv$. Afterwards $v$ grows at least linearly uniformly. The derivative $\psi_t=\tanh t-(1-\epsilon e^{-v})v'/2$ obeys $|\psi_t|\le C(e^{-2t}+e^{-c t})$ on the common tail and tends to zero at every fixed $t$ by the round limit. Hence $I(b)\to0$.

Lift the unoriented vortex axis to an oriented scalar frame $U\in SU(2)$ and let $n_j=\operatorname{Ad}_U e_j$ be its three columns in $\mathbb R^3$. The distinguished axis is $n_3$. The lifted weak group acts on the left and hypercharge acts on the right by $\exp(-i\theta\sigma_3/2)$. For the genuine charge-$1/2$ scalar doublet use the two degree-one holomorphic coefficient modes, with the round doublet basis transported to the two normalized axial modes and rotated with the sphere. At the reference axis their half-integral weights agree, so this identification is independent of the choice of axial rotation used in the transport. Give its coefficient $H=h_b U(0,1)^T$ the usual norm $|D_\mu H|^2$, with $h_b=h_*\sqrt{1-8\pi/\mathcal A_b}$ for a fixed $h_*>0$. This amplitude choice ties the scalar to the mean vortex density. The coefficient connection and the amplitude are part of the collective action.

Take two charged partner columns $X_1=\sqrt{I(b)}\,n_1$ and $X_2=\sqrt{I(b)}\,n_2$ with kinetic term $\tfrac12(|D_\mu X_1|^2+|D_\mu X_2|^2)$. Together they form a complex weak triplet of unit absolute hypercharge. This choice matches their coefficient to the calculated neutral inertia for the entire family. At the symmetric endpoint the ambient fields $H,X_1,X_2$ are zero, and the metric and density are rotation invariant. In the vacuum frame put $\Omega=(g_2W^1,g_2W^2,g_2W^3-g_YB)$. The neutral orbit gives $I(\Omega_1^2+\Omega_2^2)/2$. The partners add $I(\Omega_1^2+\Omega_2^2+2\Omega_3^2)/2$ since $D n_j=\Omega\times n_j$ in this frame with the right hypercharge action included. The doublet adds $h_b^2|\Omega|^2/4$. With canonical diagonal gauge kinetic terms,
$$
 v_{\rm EW}^2=8I(b)+2h_b^2,\qquad
 M_W^2=g_2^2v_{\rm EW}^2/4,\qquad
 M_Z^2=(g_2^2+g_Y^2)v_{\rm EW}^2/4 .
$$
The kernel is the photon line. Removing the charged partners with the neutral inertia held fixed changes the charged-to-neutral mass ratio. $\square$

The vertical Einstein–Bogomolny solution fixes the shape and magnetic connection at a given $b$. The horizontal kinetic terms, charged partners, frame lift and scalar coupling have been specified in the reduced theory. Deriving those terms, their relative inertia and the running gauge couplings from a local higher-dimensional Einstein–matter or spectral action remains open. The area is a continuous input, and the matching-scale values of $g_2,g_Y$ are independent here. [Round monopole parent and gauge matching](issues/01.md#colour-the-finite-real-module-and-matching-on-one-product)

## Custodial completion using the existing doublet

**Theorem.** Keep the preceding neutral geometric kinetic term and the single doublet $H$ with its canonical kinetic term. The doublet phase admits a completion with the full custodial symmetry on the angular metric. It uses no additional matter representation. In four-dimensional variables the extra local term is
$$
 C(|H|^2)\,[\operatorname{Im}(H^\dagger D_\mu H)]^2,\qquad
 C(h_b^2)=\frac{2I(b)}{h_b^4},\qquad
 C(0)=\frac{24\pi(\kappa_g^2+\kappa_p^2)}{5h_*^4}.
$$
The coefficient is a smooth, single-valued function for $0\le |H|^2<h_*^2$. In this action $\rho=1$ and $v_{\rm EW}^2=4I(b)+2h_b^2$. We use $b=b(|H|^2)$ on the collective configurations. The coefficient defines a function of the field norm in the action, including off-shell doublet variations. The area remains a free vacuum parameter before fitting a physical mass or coupling.

**Angular metric.** The unit doublet is an $SU(2)$ matrix $U$ via $Ue_2=H/h_b$ and the pseudoreal conjugate first column. Its Hopf projection is the oriented vortex axis $n_3$. At fixed norm the projection forgets just the phase. Let $\Omega_j$ denote the body components of the gauged angular form, with the normalization used above. We have $|D n_3|^2=\Omega_1^2+\Omega_2^2$ and $[\operatorname{Im}H^\dagger D_\mu H]^2=h_b^4\Omega_3^2/4$. The latter identity holds also for varying real norm since its radial derivative is real. A left-invariant metric on $SU(2)$ which is also right $SU(2)$-invariant is a multiple of the Euclidean form on its three Lie algebra components. Requiring its Hopf quotient metric to be the computed $I(b)|D n_3|^2$ fixes that multiple. The added term supplies precisely $I(b)\Omega_3^2/2$. Equivalently, with an arbitrary current coefficient $C$ and canonical, diagonal gauge kinetic terms, the ratio would be
$$
 \rho=\frac{h_b^2+2I(b)}{h_b^2+C h_b^4}.
$$
This proves uniqueness within this two-derivative angular ansatz. The custodial condition is on the scalar kinetic metric before gauging the right hypercharge subgroup. The electroweak gauge couplings may differ.

**Regularity at the unbroken endpoint.** Set $\epsilon=e^{-b}$, $v=-u-b$ on $t\ge0$, and $q=\exp[-v+\epsilon(1-e^{-v})]=f^2/2$. The first integral gives
$$
 t_\epsilon(v)=\tfrac12\int_0^v\frac{dx}{\sqrt{1-q(x)}},\qquad
 \mathcal A_b=4\pi\int_0^\infty\frac{q(v)}{\sqrt{1-q(v)}}\,dv .
$$
The area is strictly increasing with $\epsilon$ since $\partial_\epsilon q=(1-e^{-v})q>0$ for $v>0$. Its range is $(8\pi,\infty)$. Thus $h_b^2=h_*^2(1-8\pi/\mathcal A_b)$ determines the shape uniquely on the open branch. To calculate the endpoint coefficient write $w=u+b$. At $\epsilon=0$ the solution is $w_0=\log(\operatorname{sech}^2t)$. Put $l=\operatorname{sech}^2t$. Differentiating $w''=2e^{w+\epsilon(1-e^w)}(\epsilon e^w-1)$ gives $w_1''+2l w_1=-2l+4l^2$ with zero value and derivative at the origin. Its solution is $w_1=1-l$. Hence $p=\epsilon l+O(\epsilon^2)$ and $\psi=\epsilon(1-l)+O(\epsilon^2)$ on compact $t$-intervals.

The integrals also depend smoothly on $\epsilon$ near zero. In the $v$ variable, $1-q$ is comparable to $\min(v,1)$ uniformly for $0\le\epsilon\le1/2$. Every positive-order $\epsilon$ derivative of $t_\epsilon(v)$ is $O(\sqrt v)$ near zero and uniformly bounded at infinity, by differentiation of its integral. The derivatives of $p_t=-2\epsilon e^{-v}\sqrt{1-q}$ and of $\psi_t=\tanh t_\epsilon(v)-(1-\epsilon e^{-v})\sqrt{1-q}$ are $O(\sqrt v)$ at zero and $O(e^{-v})$ at infinity. Here $t_\epsilon(v)\ge v/2$. With $dt=dv/(2\sqrt{1-q})$ these bounds justify differentiating the inertia to every finite order. The same argument works in a neighbourhood of any $\epsilon<1$. Using $\int_{\mathbb R}l\,dt=2$, $\int l^2dt=4/3$ and $\int(l')^2dt=16/15$ gives
$$
 h_b^2=\tfrac23 h_*^2\epsilon+O(\epsilon^2),\qquad
 I(b)=\tfrac{16\pi}{15}(\kappa_g^2+\kappa_p^2)\epsilon^2+O(\epsilon^3).
$$
The first derivative of $h_b^2$ is nonzero at zero. These expansions and smoothness remove the apparent singularity in the current operator on Cartesian doublet fields. Indeed set $r=H^\dagger H$ and $z=H^\dagger D_\mu H$. The Pauli completeness identity gives $r^2|D n_3|^2=4(r|D_\mu H|^2-|z|^2)$. The sum of the geometric angular and phase terms is $(2I/r^2)[r|D_\mu H|^2-(\operatorname{Re} z)^2]$, which extends smoothly and positively through zero. At $H=0$ the round geometry, the vanishing vortex section and the zero doublet give the unbroken weak group.

**The long-neck limit at fixed couplings.** The same formula gives
$$
 \frac{I(b)}{P_b}\ \longrightarrow\ \frac{\pi\kappa_g^2}{\sqrt2},\qquad
 \frac{M_W^2}{P_b}\ \longrightarrow\ \frac{\pi g_2^2\kappa_g^2}{\sqrt2}
 \quad (b\downarrow0).
$$
To see this, $\int p_t^2dt\le2$ throughout the family. On the half-cylinder with $v\le\eta$ the value of $f$ tends uniformly to $\sqrt2$ in the iterated limits $b\downarrow0$, $\eta\downarrow0$. In the same limits $|(1-p)u_t/2|$ tends uniformly to zero. The derivative $\psi_t$ there differs from $\tanh t$ by this last quantity, and $\tanh^2 t$ has mean tending to one on a long interval. For each fixed $\eta>0$, the part $v\ge\eta$ has bounded meridian length and bounded contribution to $\int\psi_t^2 dt$ as $b\downarrow0$. In that region $1-q$ is bounded below, $q\le e^{1-v}$ and $|\psi_t|\le 2e^{-2t}+O(e^{-v})$. Comparing $\int\psi_t^2dt$ with $P_b=\int f\,dt$ proves the limits. The same comparison gives $\mathcal A_b/P_b\to2\pi\sqrt2$. More explicitly $P_b\sim2\log(1/(1-\epsilon))$. In the integral $\int_0^\infty\sqrt{2q/(1-q)}\,dv$ for $P_b$, putting $\beta=1-\epsilon$ gives $1-q=\beta v+\epsilon v^2/2+O(v^3+\beta^2v^2)$ near zero. The part $v\le\beta$ is bounded, the integrand has logarithmic coefficient two on $\beta\ll v\ll1$, and every fixed tail is bounded. $\square$

**Numerical check (Python, SciPy).** For $\kappa_g=\kappa_p=h_*=1$ the quadrature in $\sqrt v$ gives $C=30.16547$ at $\epsilon=0.001$, against $C(0)=30.15929$. At $1-\epsilon=10^{-5}$ and $10^{-8}$ the diameters are $27.84957$ and $41.66508$. Their difference agrees with $2\log(1000)$ to four decimal places, $13.8155$.

Thus the charged-vector mass coefficient grows while the axial fermion gap closes. With fixed $g_2,g_Y$ the tree photon coupling $e^{-2}=g_2^{-2}+g_Y^{-2}$ remains finite. Extracting a four-dimensional pole requires control of the tower once it lies below the putative vector mass. A fixed low-energy photon coupling, a Fermi constant and a strong scale would further require threshold matching and running. The phase construction derives the relative angular inertia from imposed custodial symmetry and the measured geometric kinetic term. A higher-dimensional local origin for that symmetry and the absolute gauge normalization remains open.

Rotating this same sphere along a compact circle gives a local Einstein calculation of the photon and the two light vector masses. The other divergence-free vector modes shift the custodial tilt. The circle radius also changes which part of the scalar tower survives. [Helical metric, curvature bound and spectra](57_helical_weak_sphere.md)
