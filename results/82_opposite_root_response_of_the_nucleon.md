# The nucleon and the Fermi contact under opposite root rescaling

Fix the weak shape, colour and circle radii, microscopic gauge coefficients and constant Yukawas. On the classical stationary branch replace $H_+$ by $e^\tau H_+$ and $H_-$ by $e^{-\tau}H_-$. Their product, the vortex section, both fluxes and the bosonic background equations are unchanged. We study the tangent at equal root norms. The question is how an actual nucleon responds to this physical variation of its quark mass sources. A near equality of two measured mass scales gives no derivative information by itself.

## A QCD response with correlated uncertainties

**Proposition 82.1.** In the isolated light-fermion window, at leading overlap order, this deformation changes the logarithms of the six ordinary masses with signs $(-,+,+,-,+,-)$ in flavour order $(u,d,s,c,b,t)$. At fixed renormalized short-distance colour parameter in a mass-independent scheme the QCD response is
$$
 D_N=\partial_\tau\log H_N
 =\frac{m_p D_p+m_n D_n}{m_p+m_n},\qquad
 D_i=-f_u^i+f_d^i+f_s^i-f_c^i+f_b^i-f_t^i ,
 \qquad f_q^i=\frac{\partial\log m_i}{\partial\log m_q} .
$$
The quark masses in this derivative are renormalized in a common convention. Pure-QCD evolution in a mass-independent scheme preserves a logarithmic mass direction. Converting masses quoted at their own running thresholds needs the appropriate matching Jacobian. Electroweak changes of the Yukawas and QED mass shifts are separate.

**Proof.** The up and neutrino singular maps contain $H_-$, the down and charged-lepton maps $H_+$. Multiplication by the rescaled sections gives the displayed signs. The exact finite tangential operator allows corrections from the eliminated massive internal levels. Near the physical member they are controlled by the ratio of the quark mass to the tangential gap. The Feynman–Hellmann derivative of each nucleon energy with respect to its quark mass source is the corresponding scalar matrix element. The chain rule and the definition $H_N=(m_p+m_n)/6$ give the result. Ordinary QCD may already have been matched below heavy mirrors. Equal-mass mirror up/down colour pairs at the reference point give cancelling first-order colour threshold responses under opposite shifts, since their pure-colour contributions are invariant under their interchange. A different mirror spectrum needs its threshold derivatives. $\square$

**Numerical source calculation.** Borsanyi et al. provide the individual proton/neutron light-quark sensitivities, measured strange and charm responses, a matched heavy expansion for bottom and top, and an ancillary C program for specified correlated combinations. Running the unmodified v1 program with the weights in the proposition gives

| Target | Alternating logarithmic mass derivative | Statistical uncertainty | Systematic uncertainty |
|---|---:|---:|---:|
| Proton | $-0.003535$ | 0.006585 | 0.006619 |
| Neutron | $+0.004205$ | 0.006553 | 0.006561 |
| Authors' averaged nucleon | $+0.000335$ | 0.006567 | 0.006586 |
| Averaged nucleon, common positive mass shift | $+0.309043$ | 0.005837 | 0.006137 |

The small third-row central value comes from the light difference $f_d-f_u\simeq+0.0138$ cancelling $f_s-f_c+f_b-f_t\simeq-0.0135$. The signs of the proton and neutron central responses also differ. Weighting their unrounded responses by the two rest masses changes the central value by about $3\times10^{-6}$, beyond the accuracy of the input. The authors' averaged-nucleon row incorporates the physical light-quark mass ratio used to separate $u$ and $d$. At exactly degenerate $m_u=m_d$ the isovector first derivative of the mean cancels instead; one must state which mass variation is taken. The total uncertainty in the alternating response is about $0.0093$. The data are compatible with local stationarity and also with nonzero slopes on that scale. [Original calculation, Table 1 and Supplement Section 8](https://arxiv.org/pdf/2007.03319#page=7) · [Authors' ancillary C program](https://arxiv.org/src/2007.03319v1/anc/lincomb.c)

For reproduction compile the public source with a C compiler and the mathematics library, and pass the seven arguments shown here. The first six coefficients distinguish the heavy bottom and top terms.

    cc -O2 lincomb.c -lm -o lincomb
    ./lincomb -1 1 1 -1 1 -1 nucleon
    ./lincomb -1 1 1 -1 1 -1 proton
    ./lincomb -1 1 1 -1 1 -1 neutron

There is a small implementation sensitivity in propagating isospin errors. For the mean the light term is $(1-r)f_{ud}/(1+r)$ with $r=m_u/m_d$, so the input neutron–proton QCD mass splitting cancels. In the distributed code the two ratio and splitting accumulators use the same ratio-shifted expressions, and the statistical up-ratio numerator uses the systematic shift. A separate propagation for this mean, using the embedded three-input covariance and fit weights, varying $r$ once in each error class and retaining the quoted heavy corrections, gives $0.0003350\pm0.0065364\ {\rm(stat.)}\pm0.0065614\ {\rm(syst.)}$. Both treatments give $0.0093$ at the precision used here. The table records the published program's own output. For the alternative propagation set $F_4=f_{ud}+f_s+f_c$, $f_b=b_0/m_N-b_1 F_4$ and $f_t=t_0/m_N-t_1(F_4+f_b)$ as in the code. The coefficient vector on $(f_{ud},f_s,f_c)$ is $((1-r)/(1+r),1,-1)+[t_1-(1+t_1)b_1](1,1,1)$. The finite shift of the light coefficient times $f_{ud}$ is $-2 f_{ud}\,\delta r/[(1+r)(1+r+\delta r)]$.

## What the charged source measures along the same variation

**Proposition 82.2.** In the controlled light regime of 78 the linear term of the tree leptonic $\log G_F$ vanishes under this rescaling. At leading near-round order in the full horizontal action the second derivative is $4/(3\rho)$. The metric-gradient projection contributes already at second order in $\tau$.

**Proof.** On the round weak sphere represent the leading normalized pair of degree-one sections by a unit Hopf spinor $w$ with $ww^\dagger=(1+\boldsymbol n\cdot\boldsymbol\sigma)/2$, stripping the opposite circle phases. Use a unit sphere for the angular argument and restore the original stiffness at the end. The covariant Hopf derivative along a gradient of $f$ is $(\nabla f\cdot\boldsymbol\sigma)w/2$ with the tangent vector embedded in $\mathbb R^3$. The lift of a transverse unit rotation acts as $i\sigma_1 w/2$ up to orientation. Opposite rescaling multiplies the two components by $D_\tau=\mathrm{diag}(e^\tau,e^{-\tau})$. The area-averaged rotation norm before the gradient projection is $\cosh(2\tau)/4$.

At zero rescaling the cross term with any common weak gradient integrates to zero by the divergence-free Killing field. Expand $D_\tau^\dagger D_\tau=1+2\tau\sigma_3+O(\tau^2)$. Using $\sigma_3\sigma_1=i\sigma_2$ gives the real overlap with a gradient $-\tau\langle\nabla f,\nabla n_2\rangle/2+O(\tau^2)$ up to the rotation sign. The gradient norm at $\tau=0$ is $\langle|\nabla f|^2\rangle/4$. Minimizing therefore removes $(\tau^2)\langle|\nabla n_2|^2\rangle=2\tau^2/3$ from the squared norm. The original squared norm is $1/4$, so the absolute subtraction $2\tau^2/3$ is a relative subtraction $8\tau^2/3$. Meanwhile $\cosh(2\tau)=1+2\tau^2+O(\tau^4)$. The projected root stiffness, relative to its original value, is $1-2\tau^2/3+O(\tau^3)$. The charged vortex term stays fixed. Inverting $v_\Phi^2+v_h^2(1-2\tau^2/3+\cdots)$ gives the stated logarithmic derivatives. The computation uses the external-gradient variation of 73. Leaving out that variable gives a different quadratic response. $\square$

Together these results give the leading local estimate $\partial_\tau\log(G_FH_N^2)\simeq0.00067$ with an uncertainty about $0.019$ from the ordinary QCD input, in the stated mass direction. This inference treats the scalar direction as a change of couplings and uses the tree charged current. It does not turn the measured absolute value of $\Xi$ into a prediction. At the fitted point symmetric finite differences of the full charged pencil give a linear term consistent numerically with zero and a curvature about $1.3213$, compared with $4/(3\rho)=1.3213$.

There is a different first derivative in neutral scattering. Write $\delta=A^3-B_Y$ for the light neutral weak difference and $V$ for the constant vortex connection. The root mass form becomes $v_h^2[\cosh(2\tau)(\delta^2/4+V^2)-\sinh(2\tau)\delta V]$. The off-diagonal variation of its inverse gives $g_L'=4d_vs$ and $g_R'=d_v(1+4s)$ on the muon neutrino and the two electron chiralities, using prime for $\partial_\tau$ at zero. At the finite fit the inferred $s_{\nu e}^2$ has slope about $0.00226$. The perturbative electric mass-threshold trace of a *complete* Dirac family cancels in this direction, as in 79; the confined light-quark contribution needs a mass derivative of its electromagnetic current correlator. Consequently the infrared ruler has the separate slope
$$
 \partial_\tau\log R_N^{\rm IR}
 =D_N+\tfrac12\partial_\tau\log G_F
   -\frac{\partial_\tau s_{\nu e}^2}{2(1-s_{\nu e}^2)}
   -\tfrac32\partial_\tau\log\alpha_{\rm Th}.
$$
This identifies a measurable current–current–scalar insertion and the nucleon mass Hessian as further tests. Neither a small first derivative nor a close absolute ratio proves that the quantum effective potential selects this member. [Finite weak-current solver](../paper/finite_flux_currents.py) · [Infrared ruler and its charge convention](75_infrared_currents_and_continuum_limits.md)

**Provenance.** The root derivatives and numerical applications were derived by GPT-6.2-Astra max. QCD data and the ancillary correlation program are those of Borsanyi et al. Claude Opus 5.5 checked every ledger claim of this file by hand on 20 November 2026, and Claude Fable 5.2 checked Proposition 82.1 from the published table as second referee; neither found an error (ledger `checked_by` rows).
