# What a heavy mirror family leaves in infrared measurements

Fix the compact broken action and the ordinary weak currents of result 78. Vary the mirror masses or a neutral scalar along the two root directions. We measure three different quantities: the charge and colour polarization, the weak current polarizations, and the scalar vertex on two gluons. Anomaly cancellation uses a signed chiral trace. These three measurements retain parity-even traces, for which an ordinary family and its mirror can add.

## Matching through a mirror threshold

As a perturbative comparison give the three mirror copies a common running Dirac mass of 300 GeV at the finite point. Their Yukawas are new inputs. Their masses still vanish at the restored member if the original root prescription and separate mirror number are used. In the broken phase the mirror quarks have both external chiralities in the same colour triplet; the weak doublet is now right-handed. A mirror lepton has the same electromagnetic charge magnitude as its ordinary partner. With $M_g=2$ TeV the first additional coloured particles above the ordinary flavours in this example are the 300 GeV quarks. The first coloured *boson* remains the circle gluon at 2 TeV. At 200 GeV there are six active ordinary Dirac quarks and at 1 TeV there are twelve in the colour-only running, with all the geometric colour excitations still above that scale.

Using the physical strong calibration of 76, the CRunDec five-loop run gives $\alpha_s^{(6)}(200\,{\rm GeV})=0.10618$ and $\alpha_s^{(6)}(300\,{\rm GeV})=0.10118$. For simultaneous decoupling at the common running mass, the first nonzero matching term is
$$
 \alpha_s^{(6)}=\alpha_s^{(12)}
 \left[1+6\,\frac{11}{72}
           \left(\frac{\alpha_s^{(12)}}{\pi}\right)^2+\cdots\right].
$$
At this order each heavy flavour contributes one two-loop coefficient; mixed higher decoupling coefficients are omitted. This gives $\alpha_s^{(12)}(300\,{\rm GeV})=0.10108$. Three-loop twelve-flavour running gives $0.09634$ at 1 TeV, compared with $0.08879$ there for just the six ordinary flavours. The corresponding $I_3\simeq0.8260$ fixes $1/B\simeq18.49$ TeV at the weak fit. Neither the mass choice nor this leading threshold exercise is a phenomenological fit of a mirror family. It illustrates what spectrum enters a common subtraction. With $H_N=0.312$ GeV the two additional coloured thresholds in these units are about 962 and 6410. [Running and decoupling convention](https://arxiv.org/abs/1703.03751) · [Finite weak member](78_finite_weak_pole_and_current_match.md)

At spacelike momentum $1$ TeV the massive Dirac loop for all three degenerate mirror families changes the inverse on-shell-subtracted electromagnetic coupling by
$$
 -\frac{2}{\pi}\,8\int_0^1 x(1-x)
          \log[1+x(1-x)Q^2/M_{\rm mir}^2]dx=-0.9750
$$
for this mass. The charge trace is $8$ counting colour and excluding sterile electric charges. If instead all mirrors have mass $2.1$ TeV, the same contribution is $-0.0376$. This is the leading electromagnetic fermion loop with strong corrections to coloured mirrors omitted. Either correction is in addition to the ordinary thresholds of 76. The two mass choices have very different Yukawa expansion parameters when all masses originate in a root doublet of electroweak size.

Above the light weak poles, a background-field electroweak subtraction provides a further useful logarithm. In the convention $d\alpha^{-1}/d\log\mu=-b/(2\pi)$, the one-doublet, three-family coefficients of $g_Y$ and $g_2$ sum to $41/6-19/6=11/3$. The charged Dirac matter contribution alone is $32/3$ above the top threshold. The difference $-7$ is the charged weak-vector multiplet including its eaten scalar. Equivalently, the non-Abelian $-22/3$ and a unit charged complex scalar $+1/3$ give $-7$. This shifts the inverse-coupling *running interval* from $M_C$ to 1 TeV by $+7\log(1000/M_C)/(2\pi)\simeq+2.81$ relative to fermion running. The finite fit needs about $+2.95$ relative to the ordinary spacelike inverse charge in 76. This comparison mixes an interval with a subtracted endpoint unless the finite conversion at the lower scale is included. Extra physical charged scalars, the mirrors, the vector thresholds, and matching from the physical current to the weak background-field scheme also enter. The numerical proximity of the two numbers is not a calculation of that finite conversion. [Gauge coefficients in the finite-geometry literature, Eq. (1.789)](https://arxiv.org/abs/hep-th/0610241) · [Electroweak conventions and pole observables](https://pdg.lbl.gov/2026/reviews/rpp2026-rev-standard-model.pdf)

## A bound on using splittings to cancel an oblique correction

**Proposition 79.1.** Consider three mirror families with Dirac neutrinos, perturbative Yukawas, gauge residues equal to those of weak doublets and singlets up to the chirality reversal, and no mixing with ordinary families. All their masses are at least $M\gg M_Z$. In the leading heavy-fermion formula for the Peskin–Takeuchi parameter $S_{\rm mir}^{(0)}$ their one-loop custodial contribution obeys
$$
 T_{\rm mir}\ \ge\
  \frac{M^2(12-6\pi S_{\rm mir}^{(0)})^2}
       {256\pi\,s(1-s)M_Z^2},\qquad s=\sin^2\theta .
$$
This inequality relates two contributions of the same fermions, in the usual weak oblique convention. Other fields and the nonuniversal vortex exchange contribute separately to physical scattering.

**Proof.** For a doublet of colour multiplicity $n_c$ and weak hypercharge $Y$, the leading result is $6\pi S^{(0)}=n_c[1-2Y\log(m_u^2/m_d^2)]$. The zero-momentum custodial function is $T=n_c F(x,y)/[16\pi s(1-s)M_Z^2]$, $x=m_u^2$, $y=m_d^2$, with
$$
 F(x,y)=x+y-\frac{2xy}{x-y}\log(x/y),\qquad F(x,x)=0 .
$$
Simultaneously exchanging left and right at both current insertions preserves the even two-point traces. Thus the mirror doublets give the same expressions in the physical up/down order. The omitted finite-momentum terms in $S$ are suppressed in the heavy limit. [He, Polonsky and Su, fermion formulas](https://arxiv.org/pdf/hep-ph/0102144#page=5)

Let $u_i=\log(m_{U_i}^2/m_{D_i}^2)$ and $l_i=\log(m_{\nu_i}^2/m_{E_i}^2)$. Then $12-6\pi S_{\rm mir}^{(0)}=\sum_i(u_i-l_i)$. Writing $z=\log(m_1/m_2)$ shows $F(m_1^2,m_2^2)-(m_1-m_2)^2=2m_1m_2(1-z/\sinh z)\ge0$. Also $|m_1-m_2|\ge M|z|$. Weighted Cauchy–Schwarz gives $[\sum_i(u_i-l_i)]^2\le4\sum_i(3u_i^2+l_i^2)$. Substitution gives the bound. $\square$

A degenerate spectrum gives $S_{\rm mir}^{(0)}=2/\pi$ and $T_{\rm mir}=0$. Trying to reach $S_{\rm mir}^{(0)}=0$ using only mass ratios with $M\ge300$ GeV would give the displayed lower bound near 11 at the reference angle. This large custodial cost is a direction for the model calculation. A fit with the ordinary reference top and Higgs subtracted, additional scalar and KK contributions, and the extra neutral pole kept explicitly would be needed to compare a full $S,T$ ellipse with this theory. A large mirror Yukawa can itself invalidate a perturbative extrapolation.

## Identifying a candidate Higgs through its gluon vertex

**Proposition 79.2.** Near compact restoration let a normalized CP-even scalar $h$ vary the two root amplitudes at fixed internal metric, colour kinetic term and Yukawa functions. Assume the quarks being integrated out are heavy compared with the external scalar momentum and below their first discarded internal Dirac levels. Write $\kappa_f=v_F\,\partial_h\log m_f$. Define $\kappa_Z$ from the nonderivative $hZ_\mu Z^\mu$ vertex in a canonically normalized $Z$ field at the reference vacuum. At leading root-doublet order the six heavy mirror quarks contribute
$$
 \Delta{\cal L}_{hgg}
       =\frac{\alpha_s}{12\pi}\frac{h}{v_F}\,
                    6\kappa_Z\,G_{\mu\nu}^aG^{a\mu\nu}.
$$
The relative signs of the two root responses can differ. Their average in this formula is fixed by the neutral vector vertex.

**Proof.** All three mirror up masses depend linearly on the up-link amplitude and all three down masses on the down-link amplitude in the isolated kernel. Independently chosen constant Yukawa eigenvalues cancel in their logarithmic derivatives. The overlap uses the singlet spinor density, which approaches constant area density at the round sphere. The doublet spinor is the normalized corresponding root section times that singlet. Thus the leading change of a real mass is exactly the real normalized projection onto the same root profile that varies its integrated squared norm. Write the two logarithmic responses as $\kappa_u,\kappa_d$. Since $M_Z^2$ is proportional to the sum of the squared root amplitudes and their two reference norms are equal, $\kappa_Z=(\kappa_u+\kappa_d)/2$. The neutral vortex background contributes only to the charged weak mass at this order. The flux lift protects the ordinary neutral pole in this comparison.

Integrating out one Dirac fundamental changes the strong inverse coupling below its mass by $\partial_h g_3^{-2}=-(2/3)\partial_h\log m/(8\pi^2)$ at fixed short-distance kinetic data. Differentiating $-g_3^{-2}F^2/4$ and canonically normalizing the gluon gives $\alpha_s\kappa_f h G^2/(12\pi v_F)$. Summing the six terms gives the result. The heavy-loop approximation has finite-mass and strong radiative corrections. [Scalar low-energy theorems](https://arxiv.org/abs/hep-ph/9505225) · [Actual quark wavefunctions and Higgs criterion](72_particle_identifications_and_mirrors.md)
$\square$

For an aligned scalar with ordinary top and $Z$ vertices near their Standard Model values this gives roughly seven heavy-top units in the gluon amplitude including the top, before bottom and finite-mass corrections. ATLAS's effective-coupling combination with $\kappa_c=\kappa_t$ reports $|\kappa_g|=0.99\pm0.07$ and $\kappa_Z=0.97\pm0.05$ under its fit assumptions. This distinguishes a 125 GeV Higgs with the simple root-only couplings from a scalar identified just by its weak representation. The fit assumes its own decay content and width. We do not assign a precision exclusion significance to a different model from those two numbers. A root-independent mirror gap, new coloured states in the scalar amplitude, a direct scalar dependence of the colour kinetic term or differing scalar-dependent Yukawas change the hypotheses. Merely making the same chiral mirrors heavier does not reduce their logarithmic mass derivatives. [ATLAS combined measurements, Table 5](https://arxiv.org/html/2608.07332v1#S6)

For comparison the exact classical root rescaling $H_+\mapsto e^\tau H_+$ and $H_-\mapsto e^{-\tau}H_-$ preserves their product and the stationary internal equations. At equal norms the derivative of the leading $Z$ mass with respect to $\tau$ vanishes. The up and down mass slopes have opposite signs, so their mirror gluon trace vanishes as well. The complete perturbative Dirac-family charge trace in a photon threshold also vanishes for this variation: $-(4/3)+(1/3)+1=0$. The charged lepton and the individual light-quark masses still change. For instance at fixed six-flavour colour input with heavy top, bottom and charm and symmetric, decoupled heavy mirror doublets, the leading matching gives $\partial_\tau\log\Lambda_3=-2/27$. The nucleon derivative also involves its light-quark scalar matrix elements. A physical mass and potential for the neutral modulus must be demonstrated before identifying it with an observed scalar. These examples distinguish an unobserved neutral direction from a scalar that has both the measured $ZZ$ and gluon vertices.

**Provenance.** The bounds and their application to the root wavefunctions were derived by GPT-6.2-Astra max. The heavy-fermion one-loop functions, scalar low-energy theorem and experimental coupling fit are cited inputs. The threshold numbers use CRunDec and Python quadrature. Claude Opus 5.5 checked every ledger claim of this file by hand on 20 November 2026 and found no error (ledger `checked_by` rows).
