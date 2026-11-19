# Colour Wilson curvature from the actual winding fields at restoration

At the round Kähler-flux member fix the circle fibration, its charge units, periodic boundary conditions and the local coefficients of the action. Vary a small colour holonomy $u$ along direction 9. The observable is the Hessian of the four-dimensional effective potential with respect to $u$, divided by its kinetic coefficient $I_3/L^2$. We compute the finite nonzero-winding part at one loop. This separates a calculable contribution from the independently renormalized local fibration terms. The distinction matters because the fields which select the common photon also respond to the colour shear.

## The shifted root operator

**Proposition 70.1.** Take the two roots of result 63 to be complex periodic *bulk* scalars whose preferred circle momenta are $n_0=\pm k/2$ in the shifted vertical derivative. Allow their fluctuations all integer frequencies $m$. Choose identical external, colour-horizontal and circle kinetic coefficients, a fixed positive weak antiholomorphic coefficient, and minimal coupling to the weak monopole. The roots are neutral under the separate colour-flux Maxwell field. At round dissolution the operator on a root of frequency $m$, in product units and at zero external momentum, is
$$
 {\cal O}_u={\cal O}_{w}-\Delta_{\rm CP}
        +\frac{(m-uT)^2}{L^2}
        +\frac{n_0^2-2n_0m}{L^2+u^2|K|^2}.
$$
Here $K$ is the projective Killing field for $\mathrm{tr}_{\bf3}T^2=1/2$, $T=-i\mathcal L_K$ on scalar functions, and $-\Delta_{\rm CP}$ is the positive projective scalar Laplacian. The weak operator $\mathcal O_w$ has two holomorphic zero modes for each degree-one root and a positive gap on their complement. The potential fixing $H_+H_-$ has no root Hessian at dissolution.

**Proof.** On the colour Wilson background the colour and circle metric in local coordinates is $g_{ij}(dz^i+uK^i d\chi)(dz^j+uK^j d\chi)+L^2d\chi^2$. Its determinant is the original determinant. The inverse norm of an unshifted scalar derivative is the sum of the projective norm and $L^{-2}|(\partial_\chi-uK)H|^2$. For the distinguished principal circle, $\eta^\sharp=\partial_\chi/(L^2+u^2|K|^2)$ and $\mathrm{div}\,\eta^\sharp=0$. Expanding the covector $dH-in_0\eta H$ in this norm gives the last term. At $u=0$ the longitudinal energy is $(m-n_0)^2/L^2$. The derivation keeps the metric dependence of the circle connection at nonzero $u$. Replacing $\eta$ everywhere by the coordinate differential would change the spectrum. $\square$

## A finite coefficient beyond the pure gauge loop

**Proposition 70.2.** At canonical relative matching, the nonzero-circle-winding contribution to the one-loop colour Wilson squared mass in this bulk-root prescription, with the tree lifting term omitted, obeys
$$
 (M^2_{\rm wind})_{\rm one\ loop}
 =\frac{g_c^2}{L^2}\frac{\zeta(3)}{16\pi^4}
         \left(27+\frac35+O(e^{-\delta |k|})\right)
$$
as $|k|\to\infty$ through multiples of six, for some $\delta>0$. The other dimensionless kinetic ratios are kept fixed and positive. The stated propagating content is the metric, independent Abelian fluxes, dilatons, vortex, two bulk roots, and circle-equivariant base Weyl fermions of result 63. The latter have no winding sum. The leading root correction equals $1/45$ of the pure gauge result. Each $k$ specifies a separate fixed charge assignment; the large-$k$ comparison is used to control the massive remainder.

**Proof.** Set $l=m-n_0$ and denote the positive unperturbed propagator for Euclidean four-momentum $p$ by $G_l=(p^2+\nu_j+M_w^2+l^2/L^2)^{-1}$. The projective scalar harmonic has squared mass $\nu_j=4j(j+2)/B^2$ and dimension $d_j=(j+1)^3$. For a real determinant $\tfrac12\mathrm{Tr}\log$, differentiation of Proposition 70.1 gives, after summing $l$ and discarding odd terms, the Hessian integrand
$$
 \frac{\mathrm{Tr}_j T^2}{L^2}
       \left(G_l-\frac{2l^2}{L^2}G_l^2\right)
 +\frac{n_0^2}{L^4}
       \left(\mathrm{Tr}_j |K|^2\,G_l-2\,\mathrm{Tr}_j T^2\,G_l^2\right).
$$
The trace of the pointwise multiplier means its trace compressed to this eigenspace. By homogeneity and the quadratic colour Casimir,
$$
 \mathrm{Tr}_j |K|^2=d_j B^2/8,\qquad
 \mathrm{Tr}_j T^2=d_j j(j+2)/8 .
$$
The first term in the integrand is ordinary periodic holonomy transport. The second comes from the principal-circle shift and has a contribution even for a projective singlet. A complex scalar counts as two real determinants.

For $j=0$ and a weak holomorphic zero, $T=0$. Each real degree of freedom has the remaining term $n_0^2(B^2/8)G_l/L^4$. Its nonzero-winding integral is obtained by Poisson summation,
$$
 \left.\sum_l \int\frac{d^4p}{(2\pi)^4}
       \frac1{p^2+l^2/L^2}\right|_{\rm wind}
   =\frac{L\sqrt\pi}{16\pi^2}\sum_{w\ne0}
       \int_0^\infty t^{-5/2}e^{-\pi^2L^2w^2/t}\,dt
   =\frac{\zeta(3)}{16\pi^4 L^2}.
$$
There are eight such real degrees of freedom. Dividing the potential Hessian by $1/(g_c^2 L^2)$ adds $k^2B^2/(4L^2)=3/5$ to the coefficient in parentheses. The three physical polarizations of the five-dimensional adjoint gluon supply $27$ by Eq. (2.13) of Del Debbio, Kerrane and Russo or the explicit winding sum in 65.3. The remaining covariant uncharged weight-zero directions do not see the flat colour holonomy. A projective colour isometry and its Kähler Maxwell lift give ordinary parallel transport on the other covariant modes. Their coloured squared masses have the positive gap of Theorem 68.1. [Gauge determinant normalization](https://arxiv.org/pdf/0812.3129#page=11)

For a massive mode the proper-time integral contains $e^{-tM^2-\pi^2 L^2w^2/t}$. The two propagator powers and derivatives bring only powers of $ML|w|$, masses and charges, times $e^{-2\pi LM|w|}$. The positive gaps in units $1/B$, the fixed round ratio $r/B$ and polynomial spectral counting on the compact product bound the sum over all remaining modes. The root weak gap obeys the same estimate. The spectral weights from $T^2$ are polynomial by the Casimir formula. Since $L/B=|k|\sqrt{5/12}$, any smaller positive exponential rate absorbs the polynomial prefactors. This establishes the remainder in the stated action. $\square$

**Renormalization and matter domain.** A strict equivariance restriction on the root *fluctuations*, allowing only $m=n_0$, gives no root winding determinant. The local bulk shifted-derivative action above and the quotient-field prescription for fermions make this choice explicit. The zero winding of the second term can be nonzero and requires a renormalization prescription. It is local in the circle direction and may retain dependence on the other compact factors. The base Weyl fields can respond through the induced colour metric and circle connection in their horizontal Dirac operator. Their contribution also belongs to matching along the circle. In particular the coefficient of $L^2|(d\eta)_{\rm colour}|^2$ in 65.2 shifts the same observable. The finite winding sum alone cannot fix the full renormalized Wilson mass in this fibration. A different spectrum containing periodic bulk adjoint fermions, as in a proposed supersymmetric embedding of dualsm, would change the determinant signs and counts. [Fibration lifting term](65_colour_wilson_scalar.md) · [Five-flavour matter and magnetic comparison](67_fermion_masses_on_the_long_neck.md)

**Provenance.** Derived by GPT-6.2-Astra max. The pure Yang–Mills coefficient is a reference. Independent scientific review of the shifted-root contribution is pending.
