# Charged zero modes and the infrared charge match

Keep a finite broken two-vortex member, nonzero root couplings and the equal-horizontal action of result 71 fixed. We test whether a massless *charged* scalar could enter a Thomson measurement. We then run the ordinary charged lepton and hadronic contributions from the infrared and determine which radius ratio that part of the measurement would select. The electromagnetic calculation specifies the contributions that still require the compactification spectrum.

## An angular test on the weak vortex

**Proposition 76.1.** A compact nonround weak sphere with two distinct simple vortices has no physical, charged infinitesimal zero-energy deformation of the covariant metric, vortex connection, vortex section and its dilaton. The rooted extension adds no charged zero-energy scalar with nonzero physical kinetic norm from the root and marked-circle variations at this background. This statement concerns exact classical zero modes. A uniform bound as the shape or the regulator changes would require control of the positive spectrum as well.

**Proof for zero circle frequency.** In a charged azimuthal sector the dilaton variation and weak trace are zero for a zero of the constraint squares in Proposition 69.1: their gradients vanish whereas their weights are nonzero. The same squares give the linearized vortex equations and the local energy-curvature equation. In particular the linear variation of the unwarped potential density is the divergence of $d\tau-D^0$ and vanishes. We may choose conformal coordinates on the sphere and fix the two simple zeros at $0,\infty$. Infinitesimally $H^1(\mathbb{CP}^1,T^{1,0})=0$ fixes the complex structure modulo diffeomorphisms, and the remaining Möbius transformations act transitively on ordered pairs of distinct points. The linearized holomorphic line has no separate complex modulus since $H^1(\mathbb{CP}^1,\mathcal O)=0$. These choices can be made in the charged representation or followed by taking its angular component.

In the logarithmic coordinate $t+i\varphi=\log z$, away from the two fixed zeros, put $p=e^u$, $g=f^2|d\log z|^2$ in unscaled units. With fixed $s$ the magnetic equation gives $\Delta_0u=f^2(p-1)$, where $\Delta_0=\partial_t^2+\partial_\varphi^2$. Holomorphicity and the weak Einstein equation give $-\Delta_0\log f^2=f^2(1-p)^2+p|\partial u|^2$. Subtracting yields $\Delta_0(\log f^2-u+p)=0$. The linearized difference is bounded at both poles by smoothness and the fixed simple zero there, hence is constant globally. In angular weight $m\ne0$ this gives $\delta\log f^2=(1-p)\delta u$. The linearized magnetic equation is therefore
$$
 \mathcal L_m v=0,\qquad
 \mathcal L_m=-\partial_t^2+m^2+f^2(3p-1-p^2),
 \qquad v=\delta u_m .
$$
Let $w=e^{u/2}$. The two-vortex first integral $u_t^2=4-2f^2$ gives the pointwise identity
$$
              \mathcal L_1w=w f^2 p(5/2-p)>0 .
$$
The quadratic form of $\mathcal L_m$ is the sum of $\int w^2|(v/w)'|^2$ and $\int[(\mathcal L_1w)/w+m^2-1]|v|^2$. The boundary term vanishes for a smooth angular mode at the fixed poles, where $v=O(e^{-|m||t|})$. Thus $v=0$. The metric perturbation in this representative vanishes and holomorphicity determines the connection from the Hermitian norm up to unitary gauge and a flat variation. The sphere has $H^1=0$. Weak vectors at zero energy are axial by Proposition 69.1 and are neutral. Other covariant spectators of zero weak energy are constants or the harmonic circle one-form, also neutral.

For a zero of the additional positive root squares, first remove the pure coordinate and line-gauge transformation of the covariant fields. At relative frequency zero a fibre change commuting with the circle is an allowed change of its section or weak coordinate. The resulting $\psi_\pm$ are holomorphic sections with the original character and satisfy $\psi_+H_-+H_+\psi_-=0$. Since the roots have distinct zeros, their quotients by the corresponding $H_\pm$ extend holomorphically and are constant on the sphere, opposite for the two roots. Both the relative normalization and its phase have zero electric weight. A base-coordinate variation depending on the weak coordinates carries no extra independent root kinetic direction after the projection in 71.1.

At nonzero relative circle frequency the covariant core has no physical static zero, by separation of the strictly positive circle momentum. Undo its pure coordinate and gauge variation, leaving the generator of the marked circle varied by $\delta K=\pm\partial_\chi\xi$. The shifted vertical equations imply $\psi_\pm=\mp D_\xi H_\pm$ for these Fourier components. The product condition then gives $D_\xi\Phi=0$. In a northern unitary frame the two weak covariant derivatives of $\Phi$ are $(u_t/2)\Phi$ and $i(u_t/2)\Phi$ in the $t,\varphi$ directions. Thus the weak part of the real vector field $\xi$ vanishes on an open dense set and hence everywhere. This uses the real perturbations, equivalently both members of the conjugate Fourier pair. A change of the circle generator parallel to itself leaves its orthogonal weak plane fixed to first order. The remaining $\psi_\pm$ are proportional to $i n_\pm H_\pm\xi^\chi$. The weak holomorphic equation implies that $\xi^\chi$ is independent of the sphere at each circle position. Its nonzero circle frequency has zero mean. It can be written as $L^{-2}\partial_\chi f$ for periodic real $f$, so $\psi$ is in the common gradient range removed from the physical kinetic norm in 71.1. A pure projective displacement has zero action on the roots. This proves the assertion in the colour-singlet charged scalar sector; the independent coloured sectors already have the gap in 71.1. $\square$

Among the fermions, strictly nonzero full-rank ordinary and mirror Yukawas at a compact broken member remove the zero modes by the holomorphic-section map in 67.1. Exactly massless charged fermions in the rank-deficient five-flavour control change the photon infrared limit if there are asymptotic massless charged states. The tree-level zero-mode statement does not evaluate possible charged bound states, a renormalized spectral density or an all-orders weak threshold.

## Running through the ordinary light thresholds

**Numerical comparison (Python and CRunDec).** Take the Thomson coupling and measured charged-lepton masses of issue 19. At a spacelike $Q^2>0$ the one-loop contribution of a Dirac lepton to the on-shell-subtracted running is
$$
 \Delta\alpha_\ell(-Q^2)=\frac{2\alpha(0)}{\pi}
       \int_0^1 v(1-v)\log[1+v(1-v)Q^2/m_\ell^2]\,dv .
$$
For the hadronic contribution use physical-mass isospin-symmetric lattice QCD. Table 6 of the published Mainz calculation gives $0.003829(23)$ at $1\,\mathrm{GeV}^2$ and $0.008464(32)$ at $9\,\mathrm{GeV}^2$, including heavy-flavour contributions according to the authors' prescription. This is the electromagnetic current of ordinary QCD at physical mass ratios, not the massless five- or twelve-flavour theory. The authors report a difference from some data-driven estimates. [Hadronic input, Table 6](https://arxiv.org/html/2511.01623#S4.T6) · [Lepton masses and Thomson normalization](issues/19.md)

| Spacelike $Q^2$ in $\mathrm{GeV}^2$ | Electron | Muon | Tau | Hadronic | $\alpha_{\rm ord}^{-1}(-Q^2)$ |
|---|---:|---:|---:|---:|---:|
| 1 | 0.0104462 | 0.0022390 | 0.0000475 | 0.003829 | 134.766 |
| 9 | 0.0121475 | 0.0038969 | 0.0003453 | 0.008464 | 133.630 |

Here $\alpha_{\rm ord}^{-1}=\alpha(0)^{-1}[1-\sum\Delta\alpha]$ includes just the table entries. The hadronic part belongs to the spectral integral across the confinement region; no free light-quark loop has been used there. Isospin breaking, higher QED orders and any additional charged fields in the chosen compactification change this comparison. At these momenta a heavy, gapped sector enters its subtracted polarization analytically in $Q^2$ below its thresholds. Determining the coefficient requires its actual spectrum and current couplings.

## Inferring a radius ratio from the infrared

For a worked threshold match use a physical-QCD calibration $\Lambda_{\overline{\rm MS}}^{(3)}=0.341$ GeV and the running heavy masses in 74. This uses the independent lattice central scale rather than the illustrative $\alpha_s^{(3)}(3\,\mathrm{GeV})=0.2500$ of that result. Five-loop running and four-loop decoupling with CRunDec give $\alpha_s^{(3)}(3\,\mathrm{GeV})=0.24664$, $\alpha_s^{(5)}(91.1879\,\mathrm{GeV})=0.11851$ and $\alpha_s^{(6)}(1000\,\mathrm{GeV})=0.08879$. Use $\mu_*=1000$ GeV, half the sample first coloured KK mass, as a subtraction point. It is convenient that a published electromagnetic calculation has already run the hadronic input over most of this range. The spacelike scale numerically equal to the observed $Z$ mass is only a tabulated intermediate momentum here.

The AdlerPy column of Table 7 gives a five-flavour increment $0.019304(35)$ from $9\,\mathrm{GeV}^2$ to $Q_0^2=(91.1879\,\mathrm{GeV})^2$. Continue from $Q_0$ to $\mu_*$ with the massless five-flavour electromagnetic Adler function to first order in the strong coupling. Its charge trace is $\sum N_c Q_f^2=11/3$. The integral
$$
 \int_{Q_0^2}^{\mu_*^2}\frac{ds}{s}
       [1+\alpha_s(\sqrt s)/\pi]=4.9450
$$
uses the five- and six-flavour strong coupling on the appropriate sides of the top threshold. Multiplying by $\alpha(0)(11/3)/(3\pi)$ and adding the two measured or matched lower pieces gives $\Delta\alpha_{\rm had}^{(5)}(-\mu_*^2)\simeq0.04181$. The massive Dirac loop for the top gives $0.00217$ at leading order with charge factor $4/3$ and the chosen mass convention. The corresponding lepton contributions sum to $0.04255$. The result for this part of the spacelike threshold match is $\alpha_{\rm ord}^{-1}(-\mu_*^2)\simeq125.18$. These precisions describe the example; the calculation omits higher electromagnetic orders, higher Adler coefficients above $Q_0$, top-mass scheme corrections, and any weak or compactification threshold. The low hadronic contribution and its perturbative continuation were counted once each. [Spacelike split, Table 7](https://arxiv.org/html/2511.01623#S5.T7) · [CRunDec](https://arxiv.org/abs/1703.03751) · [Independent strong scale](https://arxiv.org/abs/1706.03821)

On the five-dimensional compensated end $L/(|k|B)\to\sqrt{I_Q/I_3}/2$ for the tree geometric norms. With the preceding ordinary infrared inputs and zero finite matching shifts in this comparison,
$$
 \frac{I_Q}{I_3}=\frac{\alpha_s^{(6)}(\mu_*)}{\alpha_{\rm ord}(-\mu_*^2)}
       \simeq11.11,\qquad
 \frac{L}{|k|B}\simeq1.667 .
$$
If the full model gives $I_{\rm em}(\mu_*)=I_Q+\delta_Q$ and $g_3^{-2}(\mu_*)=I_3+\delta_3$, use $(I_{\rm em}-\delta_Q)/(g_3^{-2}-\delta_3)$ instead. Additional light charged spectral weight must also be included in the running. The numbers above quantify the ordinary contribution that such a calculation must reproduce. The canonical finite-trace benchmark $I_Q/I_3=8/3$ would give $L/(|k|B)=\sqrt{2/3}$ at its own matching point. The full physical vacuum can be judged by its infrared amplitudes for any proposed matching prescription.

One can do the inverse weak measurement in the same units. If the leading fixed-shape equation $G_F M_g^2=\sqrt2 S_b/(8k^2 I_Q)$ is imposed with $M_g=2000$ GeV and $k=6$, the measured $G_F$ and the ordinary charge match would require $S_b\simeq9.46\times10^4$. For comparison the computed long-neck value is $0.001056$ at $b=0.001$. In the ordered limit of a fixed-shape collapse followed by near-round shapes, $S_b\sim3/(8e^{-b})$, giving the estimate $e^{-b}\simeq3.96\times10^{-6}$ for the inferred stiffness. This is an inverse test of a proposed radius and shape, using an infrared interaction to specify what the geometry would have to deliver. It does not fit the observed weak pole positions, the separate neutral scattering amplitudes or the full quantum thresholds. The finite physical member would have to pass those measurements together. [Computed shape response](74_matched_hadronic_and_weak_scales.md) · [Neutral-current comparison](75_infrared_currents_and_continuum_limits.md)

## A finite matching datum left by the fibration

**Proposition 76.2.** In the local fibration effective theory one can vary the one-loop electromagnetic matching condition even with the same classical stationary metrics, charge lattice, gluon norm and tree quark mass links. In the convention $I_{\rm em}(\mu_*)=I_Q+\delta_Q$, one independent finite variation is
$$
                  \Delta\delta_Q=\hbar c_h\,CV L^2/k^2 .
$$
It survives as a finite fractional variation on the compensated five-dimensional end. This is an effective-action matching ambiguity until an infrared renormalization condition or an additional microscopic identity fixes its coefficient.

**Proof.** Add the finite local term $-\hbar c_h L^2 |(d\eta)_{\mathcal B}|^2/2$ inside the original Einstein prefactor, using the standard two-form norm and the eight horizontal base planes of 71.1. The circle metric connection is invariantly defined by the marked fibration. On a polar background $d\eta=0$, so the term and its first variation vanish. A zero-mode gluon changes $g_{\mu i}$ along a projective Killing vector and the projective magnetic compensator. It has no circle component. The photon changes the circle connection by $A^Q/k$, giving horizontal curvature $F^Q/k$ to linear order. The new four-dimensional action in this sector is $-\Delta\delta_Q F^Q_{\mu\nu}F_Q^{\mu\nu}/4$ with the coefficient displayed above. Holding the renormalized colour input fixed therefore leaves a true electric matching parameter. At the lower end $CVL^2/k^2\to I_Q$ in the underlying classical action. The order-$\hbar$ change is to the next-order matching, not a change to the classical Yang–Mills or Yukawa data. A specified ultraviolet completion might determine $c_h$.

The even current two-point function on the quotient also illustrates why this distinction matters. The fermions couple to the circle connection with charges $n_s=kY_s$. The sum of $Y_s^2$ of the six rank-one parent species per ordinary family is $11/6$, before four-dimensional zero-mode multiplicities. The mirror adds the same parity-even weight. Opposite Weyl signs cancel anomaly polynomials but do not cancel these two-point contributions. Gauge-invariant charge counterterms are compatible with the conserved current Ward identity. The finite term just constructed demonstrates the independent direction without attributing any particular ultraviolet finite number to the fermion loop. $\square$

## Finite momentum at the restored endpoint

**Proposition 76.3 (one-loop current coefficients).** At round restoration take the three ordinary families and their three mirrors from 68.3, the two bulk root doublets, and the stated minimal charges. In a perturbative interval below the first positive charged threshold, with the tree-massless fields active, the Abelian inverse kinetic matrix for $(Y,N)$ has leading logarithm
$$
 I_{ab}(p)=I_{ab}(\mu)+
  \frac{\log(\mu/p)}{8\pi^2}
  \begin{pmatrix}41/3&0\\[2pt]0&484/3\end{pmatrix}_{ab}.
$$
Here $p>0$ is a spacelike momentum magnitude. The coefficient includes the physical independent Weyl fields, without counting the real-module conjugate records a second time.

**Proof.** For one ordinary family with its *four-dimensional* colour and weak multiplicities the sums of $Y^2,YN,N^2$ are $10/3,0,40$. Each of the six ordinary or mirror copies contributes these same parity-even traces. The two complex root doublets add $1,0,4$. A Weyl field contributes $2/3$ times its charge trace, and a complex scalar $1/3$. The massive vortex section has a positive quadratic term from the root product potential at dissolution. The massless metric and flux gauge bosons have zero $Y,N$; a potential tree-flat weak Wilson adjoint also has zero $Y,N$. This gives the displayed logarithm. For the non-Abelian weak coefficient there are 24 Weyl doublets and two complex scalar doublets. In the convention $\mu\,dg_2/d\mu=-b_{0,w}g_2^3/(16\pi^2)$ these give $b_{0,w}=22/3-8-1/3=-1$ before the weak Wilson adjoint. Its three real components constitute one real adjoint, adding $-1/3$ while active. A radiative Wilson threshold must be treated at its actual mass. $\square$

For instance an external right neutrino has $T_3=Y=0$, $N=1$ here, and measures $1/[p^2 I_{vv}(p)]$ at leading logarithmic order if the renormalized Abelian mixing vanishes. More generally neutral matrix elements on weights $f,f'$ measure $T^3_f T^3_{f'}/I_W(p)$ plus $(Y_f,N_f)\,I_{\rm Abelian}^{-1}(p)\,(Y_{f'},N_{f'})^T$, after multiplication by $p^2$ and up to heavy and higher-order terms. The inverse norm along the continued electric connection is $I_W(p)+I_{YY}(p)$ in the diagonal convention. The three separate massless gauge currents are observable at this endpoint. If the colour vacuum reorganizes its massless charged states or produces a chiral pole, the low-momentum description and its beta coefficients change. The restored family therefore calls for these finite-momentum correlators and a strong-phase determination before assigning a physical Thomson or nucleon value there.

**Provenance.** Derived by GPT-6.2-Astra max. The strong and electromagnetic comparison uses published lattice inputs, C++ CRunDec and Python quadrature. Claude Opus 5.5 checked every ledger claim of this file by hand on 20 November 2026 and found no error (ledger `checked_by` rows).
