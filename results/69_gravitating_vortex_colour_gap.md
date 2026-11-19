# A colour gap with a nonround gravitating vortex

Keep the Einstein, Kähler colour-flux and gravitating-vortex action of results 62 and 64 fixed. First omit the two holomorphic roots from the bosonic action. Vary all its metric, Maxwell, dilaton and vortex fluctuations on the nonround polar backgrounds. The observables are a physical negative squared mass and the first additional coloured boson. The vortex has nonzero gradients, so the round harmonic calculation alone gives no bound on the long neck.

## The physical mass form of a two-dimensional vortex

**Proposition 69.1.** On the product of flat longitudinal space and a compact gravitating vortex of Theorem 62.1, the weak contribution to the physical quadratic mass form of this covariant action is nonnegative at every shape and scale. This includes the conformal metric, vortex, dilaton and Maxwell fluctuations. The longitudinal trace and the momentum and Maxwell constraints enter the result.

**Proof.** Write $g$ for the physical weak metric, $\Phi,A$ for the charge-one description of the degree-two vortex, and $s$ for its constant background dilaton. Put $Z=4e^{2s}$ and $G=2$ for the Maxwell and scalar kinetic coefficients, so the corresponding terms are $-Z|F|^2/2-G|D\Phi|^2$. On weak internal fields the unwarped potential including curvature is
$$
 U_0=\int_\Sigma\left[
 |\nabla s|^2+2\left(|D\Phi|^2+e^{2s}\mathcal B^2+
             e^{-2s}(1-|\Phi|^2)^2/4\right)-R_g\right]dV_g ,
 \qquad F=\mathcal B\,dV_g .
$$
Completing the magnetic square with $e^s\mathcal B-e^{-s}(1-|\Phi|^2)/2$ and the holomorphic square with $D_1+iD_2$ leaves a flux integral. Gauss–Bonnet fixes $\int R_g dV_g$. These statements hold with spatially varying $s$ in the functional since no derivative of $s$ enters its magnetic cross term. The background saturates the squares. Thus the quadratic coefficient $U_0^{(2)}$ is nonnegative for arbitrary internal metric and field variations, at fixed topological flux. Pointwise the background potential density before integration is zero by its transverse Einstein equation.

Here is the constraint calculation connecting this functional to the propagating scalars. Let $h_{ij},a_i,\varphi,S$ be the weak metric, Maxwell, complex field and dilaton variations. Put $\tau=\mathrm{tr}\,h$ and use the sign $\mathrm{div}\,h_i=\nabla^j h_{ji}$. Set
$$
 \begin{aligned}
 j_i&=Z F_i{}^j a_j+2G\,\mathrm{Re}[(D_i\Phi)^*\varphi],\\
 D_i^{\,0}&=(\mathrm{div}\,h)_i-j_i,\qquad
 {\cal G}=\mathrm{div}\,a-(2G/Z)\,\mathrm{Re}[(i\Phi)^*\varphi].
 \end{aligned}
$$
With $e$ external transverse spectator directions the physical scalar mass form in the gravitational kinetic normalization of result 68 is
$$
 \begin{aligned}
 {\cal Q}_{w,\rm sc}={}&4U_0^{(2)}
   +2\|D^{\,0}-d\tau/2\|^2
   +(1/2+1/e)\|d\tau\|^2+2Z\|{\cal G}\|^2 .
 \end{aligned}
$$
All norms and coefficients here are in the same product frame. To verify the formula, the first variation of the unwarped potential density on a solution is the divergence of $d\tau-D^{\,0}$. The gravitational boundary term is the first variation of $-R$, and the matter boundary terms are exactly $j$. Choose light-cone gauge as in result 68. The external transverse trace is $-\tau$. Represent it to first order by a spectator metric $e^{2A}g_e$, with $eA=-\tau/2$. Up to a total divergence its effect on the static potential is the density weight $e^{eA}$ and the term $-e(e-1)|dA|^2$. At quadratic order, multiplying by four, these add $(1+1/e)\|d\tau\|^2-2\langle d\tau,D^{\,0}\rangle$ to $4U_0^{(2)}$. In the null metric convention $g_{+-}=-1$ the auxiliary variables $u_i=\partial_-h_{+i}$, $v=\partial_-a_+$ have quadratic contributions
$$
 -2\|u\|^2+4\langle u,D^{\,0}\rangle
        -2Z\|v\|^2+4Z\langle v,{\cal G}\rangle .
$$
The squared terms come from the Einstein divergence and the Maxwell electric component. Their linear terms are also fixed by the $-i$ Einstein and Maxwell minus constraints, $u=D^{\,0}$ and $v={\cal G}$. Substitution gives the two additional positive squares before completion in $d\tau$. The remaining $++$ coefficient enforces the total trace constraint. This derivation explains the rôle of the weight of the spectator directions, which is absent in a variation of $U_0$ alone.

For a vector with one spectator index, let $X$ be the weak metric vector and $v_0$ the weak Maxwell component in that direction in the connection convention with mass terms $dv_0+\iota_X F$ and $D_X\Phi+i v_0\Phi$. Its form is
$$
 {\cal Q}_{w,\rm vec}
     =\|(\mathcal L_Xg)^\circ\|^2+
        2Z\|dv_0+\iota_X F\|^2+
        4G\|D_X\Phi+i v_0\Phi\|^2 .
$$
An overall sign change of both connection variables gives the same form. In two dimensions the trace-free symmetrized-derivative norm is $2\langle X,(\Delta_1-2K)X\rangle$, with $K$ the Gaussian curvature. The background Einstein equation gives $K|X|^2=(Z/2)|\iota_X F|^2+G|D_X\Phi|^2$. Expanding the last two squares therefore recovers the Hodge kinetic term for $X$, the Maxwell gradient and the linearized metric–matter couplings. In particular the longitudinal weak vector is included in the estimate. A zero field preserves the norm of $\Phi$, the magnetic field and the weak conformal structure. At a finite broken member the strictly varying vortex norm on each half of the sphere forces $X$ to be azimuthal. The conformal Killing equation then forces an axial rotation. The remaining spectator tensor and scalar components give ordinary weak gradient norms. A spectator Maxwell component which is a weak one-form has the weak Hodge norm. This proves positivity in all of these sectors. $\square$

The compact surface, two derivatives, Bogomolny couplings and the flat longitudinal solution enter the identity. Moment-map existence results for gravitating vortices supply the background. The added constraint squares address the Lorentzian quadratic form. [Einstein–Bogomolny solutions on the sphere](https://arxiv.org/abs/1606.07699) · [Vortex profiles and limiting interval](55_gravitating_vortex_cylinder.md)

## The coloured tower on a broken product

**Theorem 69.2.** For the covariant Kähler-flux and vortex action, before the two roots are added, let $\mu=\lambda_1(h_b)/a^2$ be the first physical nonconstant weak scalar squared mass and $\gamma_c=\lambda_c/2=3/B^2$. In five longitudinal dimensions the external gluon and its weak harmonics are an invariant sector with squared masses $\lambda_j(h_b)/a^2$. Apart from the eight gluons all coloured modes have squared mass at least
$$
             \delta_b=(1-1/\sqrt2)\min(\gamma_c,\mu).
$$
Circle momentum then adds $n^2/L^2$. For $c_\eta=1$ and $L^{-2}<\delta_b$ the first additional four-dimensional coloured boson is exactly $1/L$. This inequality holds sufficiently far down the fixed-shape compensated collapse at canonical electric to colour ratio and $|k|\ge6$. It also holds sufficiently far along the fixed-meridian long-neck scaling. The fixed-shape and fixed-meridian limits have different weak quark content when the roots are restored.

**Proof.** The colour contribution to the physical mass form is the one-factor form in Theorem 68.1 applied pointwise in the weak coordinates. The weak contribution is Proposition 69.1 with the projective indices among its spectators. The two contributions add. In the light-cone equations the two magnetic components of the momentum constraint have disjoint tangent planes. The scalar current of the nonconstant vortex enters only its weak component. Terms with a projective derivative of that current in the mixed Einstein equation cancel the corresponding derivative of the scalar fluctuation in the stress tensor; the remaining mixed vertex is the vector form in Proposition 69.1. The product Lichnerowicz and Hodge derivative terms split, and the two dilaton potentials and gauge coefficients depend on separate fields. In particular the colour Maxwell perturbation tangent to the sphere has weak operator $\Delta_1$ even when the weak magnetic density is nonconstant.

The colour block has gap $\gamma_c$ off its gluon polarizations, by the one-factor estimate of result 68. At each weak point a colour null vector is a metric Killing vector paired with its magnetic compensator in equal kinetic norms. With a flat external index both components are weak scalars with identical weak scalar operator, which preserves this pair and its orthogonal complement. This gives the tower stated in the theorem. With an index tangent to the weak sphere, half the norm of each null vector lies in the colour Maxwell one-form along the weak sphere. Call the orthogonal projections onto this colour kernel and this Maxwell component $P$ and $R$, respectively, on the remaining sector. Then $\|RPv\|^2=\|Pv\|^2/2$. Since $H^1(S^2)=0$, the weak Hodge decomposition into exact and coexact forms gives $\Delta_1\ge\mu$ on $R$. The complete form is bounded below by $\gamma_c(1-P)+\mu R$. The overlap of $P$ with $1-R$ is at most $1/\sqrt2$, hence this lower bound is at least $\delta_b$. The remaining projective representations already have the colour gap. This also covers nonzero projective harmonics of the covariant vortex scalar.

On the product circle the covariant spectrum separates by its integer frequency. The lift term and the nonzero-frequency constraint in Corollary 68.2 apply without change to this covariant nonround background. The zero-frequency uniform circle Killing pair has squared masses $2\lambda_c(2\pm\sqrt2)$. Higher weak harmonics of that pair add their positive weak scalar eigenvalue. All other zero-frequency sectors retain the lower bound. The $n=\pm1$ external gluons realize $1/L$. At fixed broken shape $\mu/\lambda_c\to\infty$ on the compensated collapse. On the long middle $\mu\to(\pi/d)^2$ by the weak scalar interval limit while $\lambda_c\to0$. In either case $L^2/B^2\to k^2 I_Q/(4I_3)=2k^2/3$ at the specified normalization. Consequently $L^{-2}/\lambda_c\to1/(4k^2)$, below $(1-1/\sqrt2)/2$. The use of $I_Q$ here labels the same metric and its prospective diagonal generator. The root-free broken product still has separate neutral rotations. $\square$

## Transverse coloured vectors in the rooted action

**Corollary 69.3.** On the root-supported Kähler-flux backgrounds of result 63 the same $1/L$ threshold holds in the four-dimensional transverse colour-vector channel whenever $L^{-2}<\delta_b$. In particular it is an exact mass and is isolated from other types of coloured vector in the specified range. The external spin-two metric modes also keep their scalar-Laplacian tower.

**Proof.** Pick one external polarization perpendicular to the four-momentum. A scalar root variation has zero derivative in this polarization. Its added quadratic vector term is the positive square of the infinitesimal action of the metric vector and vortex connection on the root. The internal root squares contain no first-order variation with one external index. The root action has no curvature term for a vector and therefore adds no transverse kinetic form. One way of imposing the constraint in the presence of a specified fibration is to split the metric perturbation into a representative of the covariant vector problem and an external coordinate variation $\xi_\perp$ depending on internal position. The latter can shift the mixed components by $d_{\rm int}\xi_\perp$. The covariant action is independent of this variation. In the root Hessian it occurs only through those internal derivatives in the positive mass square, without a derivative along the external momentum. Eliminating any such auxiliary variable takes an infimum of a nonnegative form. A constrained choice of representative likewise retains nonnegativity. This proves that no additional soft transverse polarization can be generated by the root mass term. The circle-curvature term involves internal metric components and gives no extra mass in this four-dimensional transverse channel.

For an arbitrary weak scalar profile times a projective Killing generator the colour vector annihilates the roots, and its magnetic compensator belongs to the independent colour Maxwell field. Both the exact gluon and its pure $n=\pm1$ circle harmonics are therefore in the kernel of the added mass square with the original kinetic form. Orthogonality to this invariant subspace and the old positive gap give the claimed threshold. A transverse traceless external tensor has no root vertex linear in its polarization, and its metric equation separates by the scalar Laplacian. $\square$

**The added root fields.** On the stationary rooted background the added spatial root, colour-curvature and product terms are sums of squares with zero background value. For time-symmetric initial data their first energy variation and their first contribution to the Hamiltonian constraint vanish. Their constrained second energy variation is nonnegative. This observation extends the absence of a negative *static energy direction on such data* whenever the common Einstein–matter constraints and positive external kinetic prescription apply. The uniform lower bound in Theorem 69.2 uses the covariant kinetic norm. The root fluctuations and the metric shifts in their horizontal derivatives contribute to the physical norm and to the momentum constraint on the rooted family. A bound on those degrees of freedom is needed to transfer the quantitative colour threshold. [Root action](63_vortex_roots_and_diagonal_photon.md) · [Circle-curvature lift](65_colour_wilson_scalar.md)

**Provenance.** Derived by GPT-6.2-Astra max. Independent scientific review is pending.
