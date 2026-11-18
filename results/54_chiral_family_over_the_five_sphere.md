# A chiral family over the round five-sphere and its two interval limits

Let $M^4\times S^5_R\times I_\ell\times I_d$ have the product metric. We vary the physical interval lengths $\ell,d$ at fixed flux integers, bulk couplings and charge lattice. We compute the gauge group of the vacuum, the four-dimensional chiral multiplets and the spectrum at a fixed probe energy. The weak group acts on a fermion coefficient bundle. The five-sphere supplies colour and the unbroken electromagnetic circle. All actions and matching conditions below are classical.

## A continuous family of Dirac domains

Use the round twisted operator $D_5$ of [issue 1, §4](issues/01.md#the-colour-and-electromagnetic-zero-modes-at-the-round-endpoint). Its kernel is $\Lambda^\bullet\mathbf4$ and its gap is $\sqrt5/R$. Its flat exterior coefficient bundle splits under colour and electromagnetism as $V\oplus\bar V$, with $V=\mathbf3_{2/3}\oplus\mathbf3_{-1/3}\oplus\mathbf1_{-1}\oplus\mathbf1_0$. Fix the neutral polarization. Let $E=\pm1$ on these two summands. The parallel coefficient antiunitary $(v,\bar w)\mapsto(-w,\bar v)$ together with form parity times conjugation on the Clifford ideal gives $j_5^2=-1$, $j_5D_5=-D_5j_5$ and $j_5E=-Ej_5$.

**Theorem.** Let $\tau_i$ be the Pauli matrices on two copies of this bundle and $\sigma_i$ those on the two axial components. Extend $j_5$ to the copies by complex conjugation on the copy index. In a neutral Higgs background set $c=\cos\theta$, $s=\sin\theta$, $0\le\theta\le\pi/2$, and put
$$
 T=c\tau_3+s\tau_1,\qquad L=(s\tau_3-c\tau_1)E,\qquad
 D_\theta=\sigma_1 T D_5-i\sigma_2\partial_x .
$$
On the orthogonal complement of $\ker D_5$ set $S=\operatorname{sgn}D_5$. Allow the $+1$ eigenspace of $K_-=\sigma_3(-c T S+s L)$ at $x=0$, and of $K_+=\sigma_3(c T S+s L)$ at $x=\ell$. On $\ker D_5$ use $\sigma_3\tau_3E=+1$ at both ends. These domains give a norm-resolvent continuous family at fixed $\ell>0$. Every member has the same 32 zero modes and the KO-six signs for $\gamma=\sigma_3$, $J=\sigma_2 j_5$.

Put $\delta=\pi/2-\theta$ and measure lengths in a common fixed unit. As $\ell\to0$, if $\delta/\ell\to a<\infty$, the surviving signed operator on the constant channel, after identification of its Hilbert space, is
$$
 D_{\rm tan}+a\,\operatorname{sgn}D_{\rm tan},\qquad
 D_{\rm tan}=D_5\oplus(-D_5),\qquad \operatorname{sgn}(0)=0 .
$$
The convergence is in generalized norm resolvent. If $\delta/\ell\to\infty$, only the harmonic window survives at fixed energy. Thus even a sequence of wall angles approaching the local wall can give a finite shift of every nonzero five-sphere mass.

**Proof.** $T,L$ are anticommuting Hermitian involutions commuting with $D_5$. The walls are involutions, commute with $J,\gamma$, and anticommute with the normal matrix $N=-i\sigma_2$. Their allowed spaces are their own annihilators for the Green form. On an eigenspace $D_5=\lambda\ne0$, factor the first-order expression as $N(\partial_x+\sigma_3T D_5)$. Compression of $\sigma_3 T S$ to the two allowed end spaces gives $-c$ and $c$. Integration by parts gives
$$
 \|D_\theta u\|^2=\|\partial_x u\|^2+\lambda^2\|u\|^2+
 |\lambda|c\,(\|u(0)\|^2+\|u(\ell)\|^2).
$$
Each separated finite block is self-adjoint, and this bound identifies the domain of their direct sum with the $H^1$ trace domain. It has compact resolvent. Only the constant harmonic modes can have energy zero. Upper $V_1\oplus\bar V_2$ and lower $\bar V_1\oplus V_2$ give the 32 states. The signs are $J^2=+1$, $JD_\theta=D_\theta J$, $J\gamma=-\gamma J$.

On each nonzero block let $A=\sigma_3TS$, $C=\sigma_3 L$. The two allowed end planes have principal angle $\delta$ in every paired two-plane, since their projections satisfy $P_-P_+P_-=s^2P_-$. In a basis in which the first allowed line is $(1,0)$ and the other is $(\cos\delta,\sin\delta)$, the free axial form has one Neumann and one Dirichlet component at the first end. The corresponding conditions at the second end give $\sin^2(k\ell)=\sin^2\delta$. Hence the first squared axial frequency is $\delta^2/\ell^2$, and $D_\theta^2\ge\lambda^2+\delta^2/\ell^2$ on the block. This proves the assertion when $\delta/\ell\to\infty$. There is also an exact finite-length equation. Let $h=|\lambda|\sin\delta$ and write the squared energy as $\lambda^2+k^2$. In the same two-plane use the solution $(A(\cos kx+h\sin(kx)/k),B\sin(kx)/k)$ at the left end. At the right impose Dirichlet on the perpendicular line and outward Robin coefficient $h$ on the allowed line. The boundary determinant vanishes precisely when
$$
 \left(\cos(k\ell)+h\,\frac{\sin(k\ell)}{k}\right)^2=\cos^2\delta .
$$
At $k=0$ use the continuous value $\ell$ of the quotient. This root occurs only at the local wall. Expanding the positive square root near that wall gives $k^2\to a^2+2|\lambda|a$ on the surviving nonzero channel.

For the finite shift use $A_0=\sigma_3\tau_1 S$ and $C_0=\sigma_3\tau_3E$ at the local end $\delta=0$. The unitary $W=\exp(i\delta\tau_2/2)$ rotates $A_0,C_0$ to $A,C$. Multiplication by
$$
 U(x)=\exp\big[(x/\ell-1/2)\delta AC\big]W
$$
carries the local-wall domain to the prescribed domain. Take $U=1$ on the harmonic block. These unitaries commute with $|D_5|$ and vary in the $H^1$ graph norm at fixed length. Pulling back the operators gives a common domain and norm-resolvent continuity. Near the local end the tangential difference is bounded by $C_1\delta\|D_5 u\|$. Differentiating the unitary gives the additional bounded term $(\delta/\ell)G$, where $G=N A_0 C_0$ on the nonzero blocks and $G=0$ on the harmonic block.

The local-wall operator has a constant $C_0=+1$ channel with signed operator $D_{\rm tan}$. All other axial modes have absolute energy at least $\pi/\ell$. $G$ preserves every axial channel and on the constant one equals $\sigma_1\tau_1 S=\operatorname{sgn}D_{\rm tan}$. For bounded $\beta=\delta/\ell$, the graph estimate gives $\||D_5|(D_{\rm loc}+\beta G-i)^{-1}\|\le1+|\beta|$. The resolvent error from the tangential rotation therefore tends to zero. The higher-channel gap is at least $\pi/\ell-|\beta|$, and $\beta G\to aG$ in norm. This proves convergence after embedding the constant mode with factor $\ell^{-1/2}$. On the harmonic block the next energy is $\pi/\ell$. $\square$

## Gauge action, chirality and masses

**Proposition.** This family admits an eleven-dimensional reflected fermion operator with one massless four-dimensional chiral generation at $\theta=0$ and vectorlike colour and electric charges below weak breaking. It uses a charged coefficient doublet and a specified wall domain.

**Proof.** At $\theta=0$ the tangential term uses $\tau_3D_5$ and the nonzero walls are its complementary spectral projections. Let weak $SU(2)$ act on the parallel particle pairs $(u,d)$ and $(\nu,e)$ of copy one and trivially on copy two, with the conjugate actions on antiparticles. Let $Q$ be the lifted five-sphere rotation, including its orbital action. Its commutators with the parallel weak raising and lowering operators are $[Q,T_\pm]=\pm T_\pm$ because the paired coefficients differ in electric charge by one. Thus $Y=Q-T_3$ commutes with the weak group and gives the usual hypercharges on the kernel. Colour commutes with both. These symmetries preserve the operator and its domain at the symmetric point.

For a general complex scalar doublet $\phi$ of hypercharge $1/2$, impose $c^2+\phi^\dagger\phi=1$, $c\ge0$. Put $h=(i\sigma_2^{\,w}\bar\phi,\phi)$, using the weak Pauli matrix, and $X=\left(\begin{smallmatrix}0&h\\h^\dagger&0\end{smallmatrix}\right)$ on each particle pair in copy space. Use its conjugate on antiparticles. With $s^2=\phi^\dagger\phi$, replace $T$ by $c\tau_3+X$ and $sL$ by $(s^2\tau_3-cX)E$. The identities $X^2=s^2$ and $\{\tau_3,X\}=0$ prove the wall involutions for every orientation. These matrices transform by the lifted gauge action, including at $\phi=0$. A nonzero neutral representative $\phi=(0,s)$ gives the theorem and has stabilizer colour and $Q$. The space of wall domains is smooth in local coordinates on the constrained scalar hemisphere. This is covariance of an operator *family*. Generic weak generators on the bulk Hilbert space need not have bounded commutator with a fixed broken-background operator.

Write the ten-dimensional product Dirac operator as $D_{10}=D_4+\gamma_4 D_\theta$, with grading $\Gamma_{10}=\gamma_4\sigma_3$. In Euclidean product notation take $D_{11}=D_{10}+\Gamma_{10}(-i\partial_z)$ on the periodic double of $I_d$. The reflection parity is $\Gamma_{10}$ times $z\mapsto-z$. $D_{11}$ interchanges the parity spaces and its square preserves them, with $D_{11}^2=D_{10}^2-\partial_z^2$. Use the even domain for the independent complex field and the conjugate domain for its kinetic pairing. The $z$-constant level has $\Gamma_{10}=+1$, and nonconstant levels cost at least $\pi/d$. The $x$-domain is invariant under $\Gamma_{10}$, so the two end conditions are compatible. Select the particle block $E=+1$ for the independent field. On the harmonic window this gives the upper $V_1$ as left doublets and lower $V_2$ as right singlets, with one right neutrino. The conjugates in the 32-state real module record the conjugate field. On this same finite space use the particle and conjugate actions of $\mathbb C\oplus\mathbb H\oplus M_3(\mathbb C)$ specified in issue 1, §8. They are independent of $\theta$. The mass link is colour-scalar and each opposite action agrees across its particle link. On the conjugate link the left actions agree. This gives order zero and order one for the compressed algebra throughout the family. In the broken phase the two chiralities have the same colour and electromagnetic representation. The original round spectral calculation fixes their multiplicities. [Reflection and chirality in eleven dimensions, Hořava and Witten, §2](https://arxiv.org/pdf/hep-th/9510209) · [Interval particle and conjugate counting](issues/07.md)

Insert an independent Hermitian particle link from copy two to copy one by multiplying the columns of $h$ by the respective Yukawa constants and adding the adjoint. Extend it with the opposite conjugate sign as in [the finite cylinder action](issues/01.md#the-cylinder-over-the-same-endpoint). The perturbation $\sigma_1Y_\phi$ commutes with $J$, is odd for $\gamma$, and reduces the harmonic subspace. Its physical masses there are $|y_i|s$ in these units. They stay isolated if $\|Y_\phi\|<\tfrac12\min(\sqrt5/R,\pi/\ell,\pi/d)$. In the limit $a=0$, $Y_\phi$ tends to its local value in the neutral frame and conjugation by $U$ changes it by $O(\delta)\|Y_\phi\|$. The limiting constant-channel operator acquires the corresponding bounded mass matrix. $\square$

The one-generation four-dimensional gauge anomalies cancel. For cancellation of the smooth ten-dimensional local Weyl anomaly at the symmetric point, one may include a second complex parent in the same representations and with opposite outer reflection parity. Take its nonzero $x$-walls to be the complementary spectral walls for $TD_5$ at all $\theta$, and give its zero block opposite polarizations at the two $x$ ends. With zero mirror Yukawa the positive boundary form and the one-end Dirichlet inequality give a gap at least $\pi/(2\ell)$. The opposite ten-dimensional chiralities cancel the local anomaly polynomial away from the $x$ boundaries. Corner contributions, global anomalies and anomaly inflow require additional data.

## A vacuum equation for the wall angle

**Proposition.** There is a fixed static scalar action for which every colour-invariant zero-energy vacuum in a specified winding sector obeys
$$
 c=\min(1,\ell d/A_*),\qquad A_*=\pi^2|n_1n_2|/\mu^2 .
$$
The critical area separates an unbroken chiral phase from a phase with a neutral Higgs vacuum. When both lengths shrink it selects the unshifted tangential limit of the theorem.

**Proof.** Take two circle-valued scalars $w_1,w_2$ on the doubled rectangle of periods $2\ell,2d$. The first is odd under $x$ reflection and even under $z$ reflection, the second has the reversed parities. Fix nonzero winding integers $n_1,n_2$ on their respective circles. Let $b^2=|dw_1\wedge dw_2|^2$ in the internal metric, introduce a real scalar $u$ of mass dimension two in this normalization, and fix $\mu,\lambda,\lambda'>0$. Along with positive gradient terms for $c,\phi,u$, take the static density
$$
 \lambda(c^2 b^2+u^2-\mu^4)^2+\lambda' u^2\,\phi^\dagger\phi .
$$
The angular fields enter through the displayed winding term. A separate bare spatial gradient energy for them would change the result. The computation concerns classical colour-invariant vacua, so these gauge singlets are independent of the transitive five-sphere coordinate.

Reflection and winding give $\int_{I_\ell\times I_d}dw_1\wedge dw_2=\pi^2n_1n_2$ with the chosen orientation. For example the linear maps of slopes $\pi n_1/\ell,\pi n_2/d$ attain constant norm $B=\pi^2|n_1n_2|/(\ell d)$. At zero energy $c,|\phi|,u$ are constant. The value $c=0$ would force $|\phi|=1$, $u=0$ and a positive first term. Hence $c>0$, and the first equation forces $|b|$ constant. The nonzero integral then fixes the sign and the norm to $B$. If $B\le\mu^2$ one has $c=1$, $\phi=0$ and $u^2=\mu^4-B^2$. For $B>\mu^2$ one has $u=0$, $c=\mu^2/B$ and $|\phi|^2=1-c^2$. The linear windings realize both minima. All scalar squares and their first metric variations vanish on these backgrounds.

In the broken phase $\delta=\arcsin(\ell d/A_*)$. Thus $\delta/\ell=(d/A_*)[1+O((\ell d/A_*)^2)]$. Shrinking both lengths selects $a=0$. Shrinking $\ell$ at fixed $d$ instead shifts the nonzero $x$-constant levels by $d/A_*$ before Yukawa masses, below the first $z$ threshold. The lengths remain moduli. The winding sector and $\mu$ fix the critical area. Stability of propagating winding fluctuations is an independent question for this degenerate spatial kinetic term. $\square$

## Geometry, threshold convention and gauge normalization

Use the eleven-dimensional Einstein action with $-2\Lambda-|F_5|^2/2$ inside the Einstein prefactor. The intervals have their quotient lengths and the bosonic background has totally geodesic, tensionless faces. For $F_5=f\,\mathrm{vol}_{S^5}$, $\int F_5=\pi^3 q$, the round product with six flat directions solves the bulk equations when
$$
 f=q/R^5,\qquad f^2=8/R^2,\qquad R^8=q^2/8,\qquad\Lambda=8/R^2 .
$$
Indeed the flat-direction Einstein equation sets $\Lambda=f^2$, and the sphere equation is $4/R^2=f^2/2$. This tunes the cosmological coefficient to the five-form flux. The scalar vacuum above has zero stress. These statements use a specified Einstein and five-form action and product boundary data. The two extra lengths vary within its classical backgrounds.

At tree level gauge the commuting colour, weak and $Y$ actions with the same external connection used for their lifts to the fibre. Include the positive rank-one projector kinetic term of issue 1, §4, in the reduced action and choose its parallel vacuum line in the Killing-spinor bundle. Work below its six colour-changing vector masses in the lifted $U(3)$ metric sector, taking their finite matching thresholds to vanish. The weak connection acts on the two left doublets, and $Y=Q-T_3$ supplies the single Abelian connection. The gauge fields in this ansatz are specified by these lifts. In the metric and five-form kinetic terms $Y$ projects on the base to the geometric $Q$, and weak $SU(2)$ acts vertically on the coefficients. The five-form compensator multiplies the Einstein kinetic norm by $1+f^2R^2/8=2$. In the spinor charge convention the contributions to $(g_3^{-2},g_2^{-2},g_Y^{-2})$ are $(k,0,8k/3)$, where $k=2\ell d\,\pi^3R^7/(12\kappa_{11}^2)$. [Round generator norms and form-field reduction](issues/01.md#a-radius-selected-by-a-quantized-five-form)

Specify additional positive horizontal Yang–Mills terms for this connection, with integrated coefficients $Z_3,Z_2,Z_Y$ in the commuting basis $(SU(3),SU(2),Y)$. This is a fibration action. Relative normalization $g_3^2=g_2^2=(5/3)g_Y^2$ holds precisely on
$$
 Z_3=X-k,\qquad Z_2=X,\qquad Z_Y=(5X-8k)/3,\qquad X\ge 8k/5 .
$$
Equality allows a zero additional hypercharge term. Strict inequality makes all three terms positive. Fixed bulk coefficients can realize this for all lengths since $k$ and the three $Z_i$ scale with $\ell d$ at fixed $R$. The one independent normalization $X/(\ell d)$ can be set by an additional microscopic input. If an independent absolute kinetic normalization $X_{\rm abs}$ is also fixed, the area is $X_{\rm abs}/[X/(\ell d)]$ and the aspect ratio remains free. That extra condition fixes the Higgs phase and prevents both lengths from shrinking at fixed bulk coefficients. The inherited electromagnetic coupling is $e^2=3/(8X)$ and $\sin^2\theta_W=3/8$. A horizontal kinetic density $(v_0^2/2)|D_\mu\phi|^2$ gives $v_4^2=v_0^2\pi^3R^5\ell d\,s^2$, $M_W^2=g_2^2 v_4^2/4$, $M_Z^2=(g_2^2+g_Y^2)v_4^2/4$ and tree $\rho=1$ in the broken phase. Poles here refer to the projected quadratic action. There are two length moduli before any fit to $\alpha$, $G_F$ or a strong scale. At fixed bulk coefficients, $e^2$ grows as the area vanishes. The matching uses the four-dimensional projected action below the additional vector and tower thresholds, with zero finite threshold corrections and no low-energy running. In particular an interacting electromagnetic endpoint with finite charge at arbitrarily small area needs additional kinetic input. No physical Thomson charge or hadronic scale has been fitted.

For a scalar probe with reflecting faces, the band $R^{-1},\,\pi/\ell\ll E_{\rm probe}\ll\pi/d$ resolves six internal dimensions. The lower band $R^{-1}\ll E_{\rm probe}\ll\pi/\ell,\pi/d$ resolves the five-sphere. Both bands can be made parametrically wide, for example with $\ell=Rt$, $d=Rt^2$, $t\downarrow0$. At energies above both interval thresholds and the sphere scale all seven internal dimensions contribute. The fermion calculation provides the charged states that accompany the scalar dimension count. This realization supplies a common classical family for the spectral interpretation of 11, 10 and 9. A compactification in which the weak group also acts by isometries of the seven-dimensional internal manifold has different geometric requirements.

**Proof and checks.** Derived by GPT-6.2 Astra Max. Codex GPT-6 checked the moving domains, the signed resolvent limit, the winding minimum and the smooth sphere-bundle classification in [the interpolation discussion](issues/01.md#7-fibrewise-weak-action-beyond-homogeneous-metrics). GPT-6.1 Terra checked the charged wall maps, outer chirality, gauge matching, winding branches and scope of local anomaly cancellation.
