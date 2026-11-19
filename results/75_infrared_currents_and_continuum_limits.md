# Infrared mass relations, running couplings and continuum limits

Hold physical renormalization conditions fixed while varying the subtraction scale or the regulator. In the separate geometric experiment vary the weak compactification at fixed microscopic parameters. The quantities to compare between geometries are infrared observables: the Thomson charge, the leptonic charged-current amplitude, neutral-current scattering and the nucleon energies. The projective and circle radii set thresholds when modes actually enter a measured spectrum. The Planck length in the string lecture tests curvature and the regime of the gravitational description. No Planck-scale unification condition is used below.

## A neutral-current test measured at low momentum

Use a muon-neutrino left current and an electron target, so there is no tree electron charged-current exchange in this process. In a common radiative and infrared prescription define $g_L,g_R$ by the coefficients of
$$
 -2\sqrt2 G_F\,(\bar\nu_{\mu L}\gamma^\alpha\nu_{\mu L})
 [\,g_L\bar e_L\gamma_\alpha e_L+g_R\bar e_R\gamma_\alpha e_R\,] .
$$
Use $G_F$ from the leptonic charged transition, with the usual inclusive electromagnetic correction removed in the experimental Fermi convention. At spacelike momentum the same source contractions define form factors. Take the contact limit at a gapped broken member before taking any restoration limit.

**Proposition 75.1.** In the equal-root fibration with the minimal monopole charges of one ordinary family, near the compact restored endpoint the tree neutrino–electron contact gives
$$
  g_L=\tfrac32+s_w^2+o(1),\qquad
  g_R=1+s_w^2+o(1),\qquad s_w^2=g_Y^2/(g_2^2+g_Y^2).
$$
In particular $g_V=g_L+g_R=5/2+2s_w^2+o(1)$ and $g_A=g_L-g_R=1/2+o(1)$. The large vector coefficient occurs for arbitrary positive weak and hypercharge kinetic norms. It does not rely on a high-energy equality of couplings.

**Proof.** The charged pole gives $2\sqrt2G_F\sim2/v_h^2$. The neutral weak pole couples to $T_3-s_w^2Q$ with $M_Z^2\sim(g_2^2+g_Y^2)v_h^2/4$. Its normalized contributions to $(g_L,g_R)$ are $(-1/2+s_w^2,s_w^2)$. The vortex pole has $M_v^2\sim v_h^2/I_v$ and vertices $N/\sqrt{I_v}$. The neutrino has $N=2$, the left electron has $N=2$, and the right electron has $N=1$. Its normalized contact adds $(2,1)$. The photon has zero neutrino vertex. The two light neutral directions are orthogonal at leading order because the two root norms are equal. Contacts from the compact heavy neutral sector stay finite and vanish after division by the diverging $G_F$. The leading pole matrices in the full horizontal action are those of 66.1 by 73.1. These are perturbative tree-vacuum comparisons before any additional chiral-condensate stiffness or other new infrared threshold. $\square$

CHARM II reported effective $g_V=-0.035\pm0.017$ and $g_A=-0.503\pm0.017$ in its stated convention. The magnitude of the vector coefficient alone distinguishes its result from this near-round tree limit, even with the overall-sign ambiguity of an isolated elastic rate. Thus assigning the right quark and lepton electric charges and finding a $W$-like pole still leaves a decisive low-energy neutral-current test. The stated discrepancy concerns the equal-root branch near dissolution with the indicated vertices. A separate lifting of the vortex vector, different identified charged bundles, a different breaking regime or strong current polarization changes the comparison. For example if an additional stiffness gives $d_v=v_h^2/(I_v M_v^2)$ while preserving the leading weak pole and vertices, the extra terms are $(2d_v,d_v)$. This specifies a required suppression to calculate in any such completion. [CHARM II measurement](https://doi.org/10.1016/0370-2693(94)91421-4) · [Identification of the two neutral poles](66_neutral_currents_and_hadronic_units.md) · [Vortex charges and the mirrors](72_particle_identifications_and_mirrors.md)

## An entirely low-energy version of the ruler

If a single neutral weak-current angle describes these amplitudes with common normalization $\rho_w$, then $g_L=\rho_w(-1/2+s^2)$ and $g_R=\rho_w s^2$. The ratio
$$
 s_{\nu e}^2=\frac{g_R}{2(g_R-g_L)}
$$
can be formed from measurements without fixing $\rho_w$. Its interpretation as a mixing angle must pass the corresponding tests on other currents. In the near-round theory of Proposition 75.1 it tends to $-(1+s_w^2)$, explicitly diagnosing the extra neutral exchange. The two separate amplitudes are still valid observables.

At a physical point admitting this angle interpretation define
$$
 v_F=(\sqrt2G_F)^{-1/2},\qquad
 B_{\rm IR}=\frac{e_{\rm Th}v_F}{2\sqrt{1-s_{\nu e}^2}},\qquad
 R_N^{\rm IR}=\frac{H_N}{\alpha_{\rm Th} B_{\rm IR}},
 \quad H_N=(m_p+m_n)/6 .
$$
Everything on the right is a low-energy scattering or rest-energy observable. For a single doublet at tree level $B_{\rm IR}=g_Yv_F/2$ equals $\sqrt{M_Z^2-M_W^2}$. Radiative corrections, additional poles and the choice of current make the two rulers physically different comparisons. Using the CHARM II central values gives $s_{\nu e}^2\simeq0.233$, $B_{\rm IR}\simeq42.6$ GeV, $\alpha_{\rm Th} B_{\rm IR}\simeq0.311$ GeV and $R_N^{\rm IR}\simeq1.01$. The primary measured inputs give $H_N=0.312973$ GeV and $\Xi=G_FH_N^2=1.14249\times10^{-6}$. These numerical central comparisons establish neither an equality nor a precision pull. A precision comparison must propagate the correlated weak fit and the convention for radiative corrections. [Physical constants and pole-mass ruler](issues/19.md) · [Original weak scattering analysis](https://www.sciencedirect.com/science/article/pii/0370269394914214)

**Matching the photon from below.** Normalize electric charge by the residue on a unit conserved source. With a single sourced massless photon and positive charged thresholds the momentum-subtracted inverse coupling satisfies, to leading order in weakly gauging the current,
$$
 I_{\rm em}(\mu)=e_{\rm Th}^{-2}
      -\mu^2\int_{s_0}^{\infty}\frac{\rho_{QQ}(s)}{s(s+\mu^2)}ds .
$$
In an effective theory the short-distance part is included in the matching coefficient. The first electron contribution at $\mu=m_e$ is
$$
 e_{\rm Th}^{-2}-I_{\rm em}(m_e)
   =\frac{1}{2\pi^2}\int_0^1 u(1-u)\log[1+u(1-u)]du
   \simeq0.00153070
$$
at one loop, before contributions of other species. It follows from the two-current Dirac loop or its positive spectral density in result 66. This one threshold changes $\alpha^{-1}$ by about $0.01924$. Hadronic thresholds require the electromagnetic current correlator in their actual flavour theory. At several mixed neutral poles match the inverse-propagator matrix and contract with the physical sources. At massless charged thresholds use a finite spacelike momentum; a logarithmically screened Abelian theory need not have a finite nonzero Thomson residue. The coefficient $I_Q$ calculated from a metric and magnetic fields supplies a matching condition at a chosen scale. Running it back to the Thomson measurement is a dynamical test. [Spacelike lattice vacuum polarization](https://arxiv.org/abs/2212.02366)

**Scale independence of the target.** With matched masses and charges, the physical amplitude is a sum of renormalized Wilson coefficients multiplying renormalized matrix elements. Their scale dependences cancel to the order of a consistent calculation. The same is true of the nucleon energy extracted from its correlator even though the normalization of its interpolating operator runs. It follows that $\Xi$, $R_N^{\rm IR}$ when defined, and $H_N^2 C_{\ell\ell}(x^2H_N^2)$ in a fixed physical current prescription can be tested at finite shape without postulating a fundamental scale of unification. Threshold errors and truncation of the flow leave residual scale dependence in an approximate calculation. The canonical finite-trace ratios are an optional matching benchmark; the current testing the candidate relation lives in the infrared. [Running and numerical hadronic calibration on the same trajectory](74_matched_hadronic_and_weak_scales.md)

## What a scaling-limit construction controls

A finite-volume implementation can set the strong coupling by gradient flow in an external spatial box of length $\mathcal L$. Fix $c>0$, $t=(c\mathcal L)^2/8$ and a scheme normalization $\mathcal N_c$, and set $u(\mathcal L)=t^2\langle E(t)\rangle/\mathcal N_c$. Tune the bare coupling and masses as the external lattice spacing $a_{\rm lat}$ is varied. At fixed $u(\mathcal L)$ and renormalized mass conditions the continuum step is $\lim_{a_{\rm lat}/\mathcal L\to0} u(2\mathcal L)$. This is an external renormalization experiment. The internal circle radius $L$, weak scale $a$ and meridian length $d$ are held fixed during this regulator limit. Only after defining a theory at each geometry does one vary those physical lengths. An independent scale such as a decay constant can set units for a baryon-mass prediction. Taking the target baryon mass itself to set all units would remove that test. [ALPHA finite-volume running](https://arxiv.org/abs/1706.03821)

**Proposition 75.2 (quadratic control).** For a fixed compact stable background take a smooth normalized source with finite positive spectral measure $d\rho(s)$ for its diagonal tree transverse response. Its scalar pole coefficient at spacelike momentum has a four-dimensional continuum regulator limit. On the standard hypercubic free regulator it is
$$
 C_{a_{\rm lat}}(p)=\int\frac{d\rho(s)}{\widehat p^2+s},
 \qquad
 \widehat p^2=\frac4{a_{\rm lat}^2}
                \sum_{\mu=1}^4\sin^2(a_{\rm lat}p_\mu/2).
$$
For $p\ne0$, $\widehat p^2\to p^2$ and the integrands are uniformly bounded by a constant times $1/p^2$. At $p=0$ a finite contact requires $\int d\rho(s)/s<\infty$. Dominated convergence gives the corresponding continuum spectral integral. For a scalar probe of this covariance the positive spectral superposition of free lattice covariances preserves reflection positivity, which also holds in the distributional continuum limit. In four dimensions a massless scalar term is locally integrable at $p=0$ when smeared. This proves a Gaussian scaling result for the projected pole coefficient. Interactions require renormalized higher correlation functions and a construction of their limits. $\square$

For the coupled theory, perturbative running, stationary compactification, linear stability and the Gaussian proposition answer distinct questions. A constructive existence theorem would have to specify the regulated interacting fields and bare sequence, obtain nontrivial renormalized correlation functions in the continuum and large-volume limits, and control the positivity and locality required for physical reconstruction. A positive mass gap, baryon poles and the actual electroweak current residues require their own estimates. A two-derivative eleven-dimensional gravitational action can be used as an effective matching description without claiming an ultraviolet continuum construction of it.

As of 19 November 2026 the public Pure Yang–Mills group's October submission includes Lean sources and its November assessment of a scaling-limit construction for pure gauge fields. OpenAI also announced a four-dimensional gauge-and-fermion programme including QCD. The public pure-gauge package is a concrete source on what a construction must verify. We have not identified a public proof of the matter-coupled result from which to import hypotheses for the specific chiral fibration, its mirrors and its baryon/current observables. [Public submission and assessment](https://github.com/yang-mills-group/YM/tree/main/submissions/openai-20261028) · [OpenAI's announced scope](https://openai.com/index/building-scientific-understanding-with-academic-communities/)

**Provenance.** The infrared comparison and the quadratic regulator argument were derived by GPT-6.2-Astra max. The measured weak couplings, lattice determinations and public pure-gauge assessment are external sources. Independent scientific review is pending.
