# The root-product phase, the nucleon scale and radiative charmonium

Fix the flux-lifted broken member, the Yukawa matrices, the axion charge lattice and the short-distance strong input. Vary the **phases** of the two complex roots and of the form periods. The modulus in result 82 instead varied the absolute values. The observables here are a pseudoscalar decay constant, its pole mass from the QCD topological susceptibility, and its matrix element on a charm quark. We first take a mirror gap independent of the electroweak roots with the anomaly descent of 80.1. The root-mass mirror completion gives a different answer.

## Which phase QCD measures

Write $H_\pm=e^{i\phi_\pm}H_{\pm,0}$ and $\alpha=\phi_++\phi_-$. Along the product minimum the vortex section has the same overall phase $\alpha$. It can be read from the determinant of the two different root doublets, with respect to an oriented algebraic basis of $H^0(\mathcal O(1))$. This determinant is nonzero when their zeros are distinct. This defines a phase even though the individual sections vanish at their poles. The opposite phase of the roots lies along the broken neutral weak orbit. Under a constant vortex transformation with parameter $\lambda$, $\alpha$ shifts by $2\lambda$. In 84.5 the periodic axions $\theta_2,\theta_4$ shift by $2\lambda,4\lambda$. Thus
$$
 u=\alpha-\theta_2,\qquad v=\theta_4-2\theta_2
$$
are independent invariant angles of period $2\pi$. The primitive integer invariants $(1,-1,0),(0,-2,1)$ on the phase lattice $(\alpha,\theta_2,\theta_4)$ generate its entire invariant character lattice.

**Proposition 85.1.** Suppose all six ordinary quark mass matrices are of full rank in the light three-family sector, with the assigned root for each species. Choose the instanton orientation in which $\bar\theta=\theta_{\rm bare}+\arg\det(M_uM_d)$ for ordinary massive QCD. The complete angle in the QCD vacuum energy below the root-independent mirror threshold has the form
$$
 \Theta=\Theta_0+3u-t v,\qquad t\in\mathbb Z .
$$
With only the charge-two axion keep the term $3u$. For $\chi=\partial_\Theta^2 E_{\rm QCD}(0)>0$, the contribution of QCD to the phase Hessian at its minimum is $\chi(3,-t)^{\!T}(3,-t)$.

**Proof.** The up link maps each right singlet to the appropriate left doublet component through $H_-$, and the down link through $H_+$. Their positive normalized overlap factors have real determinant modulus. In the fixed chiral bases the phase of the product of mass determinants is $\arg\det(Y_uY_d)+3\alpha$. A flavour mixing rotation does not change this statement when its anomalous determinant is included in the same strong angle. A periodic Wess–Zumino coupling to a unit colour instanton contributes $-t\theta_4-(3-2t)\theta_2$, by $4t+2(3-2t)=6$ from 84.5. This gives the displayed invariant. The choice $t=0$ puts the entire descent on $\theta_2$. Shifting $t$ by one is possible even for the Standard Model quotient, since one may add an invariant $v$ times the integral $c_2(E_3)$ of 80.1. This changes a physical axion coupling while keeping the gauge variation fixed. The Hessian follows by differentiating the vacuum energy. If its only minimum on the $\Theta$ circle is at zero, then on the $(u,v)$ torus its minimum level has $\gcd(3,|t|)$ connected circles. This follows by reducing the integer row $(3,-t)$ to Smith normal form. $\square$

For mirrors whose masses come from the **same** roots with the opposite weak chirality, their ordinary left-to-right mass matrices contain the conjugate phases. Integrating out the heavy mirror quarks shifts the low-energy strong angle by $-3\alpha$ and a constant. In the minimal paired theory without an independent invariant gluonic axion coupling the net $3\alpha$ cancels. Retaining a heavy complex mass threshold as a real Yukawa number in this calculation would lose the phase. On the five-flavour comparison of 67.3 with one nonzero mass and four exact zeros, a massless-quark chiral rotation removes the strong angle in ordinary QCD. Its susceptibility is then zero. This also holds for the colour-only comparison at exact restoration with massless quarks. The six-mass physical susceptibility below applies to a broken member after the actual heavy thresholds have been crossed. [Root Yukawa maps](63_vortex_roots_and_diagonal_photon.md) · [Five-flavour and dualsm comparison](67_fermion_masses_on_the_long_neck.md)

## Physical kinetic coefficient and fermion vertex

**Proposition 85.2.** Work to leading near-round order at equal root norms in the light neutral sector of 78. Set $v_F^2=(\sqrt2G_F)^{-1}$, $a_H=v_F^2/4$, $b_2=f_2^2$, $b_4=f_4^2$, $D=a_H+b_2+4b_4$ and $d_v=a_H/D$. Here $a_H,b_2,b_4$ have dimensions of mass squared. At two external derivatives the phase metric in the coordinates $(u,v)$ has inverse
$$
 G^{-1}=
 \begin{pmatrix}
  a_H^{-1}+b_2^{-1}&2/b_2\\
  2/b_2&b_4^{-1}+4/b_2
 \end{pmatrix}.
$$
If a separate potential fixes $v$ with mass well above the QCD-induced pole, or if only the charge-two axion is present, the QCD decay constant of the remaining phase is
$$
 F_a=\frac{v_F}{6}\sqrt{1-d_v},\qquad
 m_a^2=\frac{36\sqrt2\,G_F\,\chi}{1-d_v}.
$$
The derivative coupling to a charged Dirac fermion gives the on-shell pseudoscalar Yukawa magnitude $|g_{af}|/m_f=\sqrt{1-d_v}/v_F$ for the minimal lifts at this order. In the one-axion case put $D=a_H+b_2$.

**Proof.** The kinetic norm of the common material phase is $a_H(d\alpha-2A_v)^2$: a constant vortex connection receives matter stiffness $v_h^2+v_\Phi^2=v_F^2$ from the two roots and the original vortex in 78. The relative weak phase decouples at equal root norms to this order. Eliminating the vortex connection amounts to minimizing
$$
 a_H(du+y)^2+b_2 y^2+b_4(dv+2y)^2,\qquad y=d\theta_2-2A_v .
$$
Hence $G=\operatorname{diag}(a_H,b_4)-(a_H,2b_4)^T(a_H,2b_4)/D$ and $\det G=a_Hb_2b_4/D$. At fixed $v$, $G_{uu}=a_H(1-d_v)$, and the colour angle changes by $3du$. This gives $F_a=\sqrt{G_{uu}}/3$ and $m_a^2F_a^2=\chi$ at first order in the strong potential. In the gauge $\theta_2=0$ the induced vortex connection is $A_v=d_v\,du/2$. The mass phase on either type of ordinary fermion is $u/2$ in a gauge with equal root phases. Making the mass real adds $du/2$ to the right-handed derivative vertex. Its difference from the left vertex is reduced by $A_v$, since $N_R-N_L=-1$. Thus the difference per canonically normalized phase is $(1-d_v)/(2\sqrt{G_{uu}})$. On shell the divergence of the axial Dirac current produces twice the fermion mass. With the factor $1/2$ from the chiral currents this gives the stated pseudoscalar vertex. $\square$

With two free angles QCD alone supplies one nonzero squared mass, $\chi[9/a_H+(3-2t)^2/b_2+t^2/b_4]$ to leading order, and leaves an orthogonal physical direction. In particular for $t=0$ it has zero potential along $v$ at fixed $u$. If instead an independent interaction pins $u$ first and $t\ne0$, the light QCD decay constant becomes $\sqrt{b_4(a_H+b_2)/D}/|t|$. It is at most $v_F/(8|t|\sqrt{d_v})$, by maximizing $b_4(1-4b_4/D)$ at fixed $D$. This second ordering changes the couplings and the quarkonium test. A root phase loses its definition when its amplitude vanishes at exact restoration.

**Finite geometric check (Python and SciPy).** In the axisymmetric pencil of 78 write $H_\gamma$ for its dimensionless neutral mass form after removing the photon coordinate. Let $e_Z$ be the unit constant vortex connection in the $Z$ component. Its row in the unlifted form $H_0$ has only matter contributions. The source of $du$ is $b=H_0e_Z/2$. It comes from replacing $Z$ by $Z-du/2$ in each matter square with the form period held fixed. The minimizing vector is $x=H_\gamma^{-1}b$ and the physical metric and the right-minus-left mass derivative on species $f$ are
$$
 f_u^2=CV[e_Z^TH_0e_Z/4-b^Tx],\qquad
 \frac{g_{af}}{m_f}=\frac{1/2+(j_{f,R}-j_{f,L})x}{f_u}.
$$
The source annihilates the photon, and the left and right electric charges agree. Both expressions are independent of the choice of representative modulo that kernel. This calculation includes the heavy neutral profiles. It uses the isolated chiral fermion wavefunctions of the weak fit and omits their mass-induced mixing with excited internal spinors. Degrees 6, 10 and 12 give $f_u=123.014$ GeV, $F_a=f_u/3=41.0045$ GeV, and $g_{ae}/m_e=0.00405824$ GeV$^{-1}$. The up and down vertices per mass both give $0.00405823$ GeV$^{-1}$. The independent pole-input fit gives $F_a=41.1169$ GeV. [Finite phase and current solver](../paper/finite_flux_currents.py)

## QCD scale and a particle test

At physical masses use $\chi^{1/4}=75.44(34)$ MeV from the chiral and electromagnetic matching of Gorghetto and Villadoro. The central finite fit then gives $m_a=138.8$ keV and $g_{ae}=2.07\times10^{-6}$. In hadronic units the new relation is $(m_a/H_N)^2=36\sqrt2\,\Xi(\chi/H_N^4)/(1-d_v)$ at this order. It relates two quite different QCD measurements, the curvature of the vacuum energy and the mass of a baryon. Setting all ordinary and electromagnetic phases as above and putting the anomaly on the charge-two field gives $E/N=8/3$. Indeed an up, down and charged lepton give $\sum N_c Q^2=8/3$ per family. Their common mass phase is $u/2$, and the coefficient in electromagnetic $\alpha F\widetilde F/(8\pi)$ units is $8u$ for three families, compared with $3u$ in strong units. With the low-energy photon correction $1.92(4)$, $g_{a\gamma\gamma}=\alpha(0)(8/3-1.92)/(2\pi F_a)\simeq2.1\times10^{-5}$ GeV$^{-1}$. The two-photon lifetime $64\pi/(g_{a\gamma\gamma}^2m_a^3)$ is about $0.11$ seconds. The electron pair threshold is closed. This lifetime assumes the minimal photon coupling and no faster decays; decays to light neutrinos with the minimal mass-proportional vertex are negligible on detector scales for sub-eV neutrino masses. [Topological susceptibility, Eq. (25)](https://arxiv.org/pdf/1812.01008v2#page=10) · [Photon coupling, Eq. (41)](https://arxiv.org/pdf/1511.02867#page=14)

One direct test uses the charmonium vector $J/\psi$ and an escaping pseudoscalar. Write $y_c=g_{ac}/m_c$. HPQCD's connected charm pseudoscalar-density matrix element gives $\widetilde F(0)=0.2017(32)$. In the low-mass limit the connected-charm contribution taken alone gives
$$
 {\cal B}_c(J/\psi\to\gamma a)=
 \frac{\alpha_c(2/3)^2 M_{J/\psi}^3}{24\Gamma_{J/\psi}}
 |\widetilde F(0)y_c|^2=2.97\times10^{-5}.
$$
Here $\alpha_c=1/134.02$, $M_{J/\psi}=3.09690$ GeV, $\Gamma_{J/\psi}=92.6$ keV, and $y_c$ is identified with the geometric up-type vertex at leading matching order. The small predicted mass shifts the photon energy from the massless endpoint by only about $3$ eV. BESIII quotes a massless single-photon upper limit of $7.0\times10^{-7}$ at 90% confidence. In the connected-charm comparison alone this corresponds to $|y_c|<6.23\times10^{-4}$ GeV$^{-1}$. In a complete amplitude with the same invisible efficiency, the magnitude of the net amplitude would need to be below $0.154$ times the displayed charm amplitude. This specifies the required destructive interference or change of the pseudoscalar interaction. The photon-annihilation diagram in HPQCD's Eq. (11) alone would need $c_{\gamma\gamma}/c_{cc}\simeq640$ for central cancellation. The on-shell low-energy two-photon vertex cannot simply be used for its charm-scale virtual photon. Matching, disconnected annihilation and the gluonic coupling of a QCD axion also enter a full model comparison. The experiment supplies a particle-level test with a calculable connected contribution, without a claim of an exclusion of every completion. [HPQCD width and form factor](https://arxiv.org/html/2502.06721v2#S3.T5) · [BESIII missing-energy search](https://arxiv.org/abs/2003.05594) · [PDG charmonium mass and width](https://pdg.lbl.gov/2026/listings/rpp2026-list-J-psi-1S.pdf)

**Laboratory and thermal status of the equal-root axion.** Fix the above single QCD-sensitive phase, the minimal electromagnetic coupling and ordinary low-energy QCD. From the equal-root mass derivatives $c_u^0=c_d^0$ in the derivative-current basis. The isovector part of the nucleon matching in Eq. (50) of Grilli di Cortona et al. gives $C_p-C_n=-0.45+1.27(c_u^0-c_d^0)$ at central values. The singlet-current running and heavier flavours cancel from that difference. With the reactor convention $g_{aNN}^{(1)}=(m_N/2F_a)(C_p-C_n)$ one obtains $|g_{aNN}^{(1)}g_{ae}|\simeq1.1\times10^{-8}$. The pure isovector neutron-capture line and axion-electron Compton conversion in TEXONO bound this product by $1.3\times10^{-10}$ at 90% confidence for $m_a\lesssim1$ MeV. The calculated two-photon lifetime gives a decay length above $5\times10^8$ m at the $2.23$ MeV line, compared with the $28$ m baseline. The minimal visible-axion benchmark is excluded under these hypotheses. Additional isovector couplings, different phase masses or different decay channels would require new matching. [Nonsinglet nucleon matching, Eqs. (50)–(51)](https://arxiv.org/pdf/1511.02867#page=19) · [TEXONO, Eqs. (30)–(31)](https://arxiv.org/pdf/hep-ex/0609001#page=8)

A standard thermal history with three ordinary neutrinos also excludes a thermal $139$ keV QCD axion at these couplings through deuterium and photon heating. A light-mass red-giant bound is applicable to a freely escaping replacement well below core temperatures. Keeping $C_e=F_a|g_{ae}|/m_e\simeq1/6$ in that light regime gives $F_a\gtrsim5.7\times10^8$ GeV for the cited $1.48\times10^{-13}$ bound. The two-angle string mechanism may instead pin the root phase, with QCD relaxation then requiring a separate colour-sensitive direction. Its compact instanton sectors also require the charged source data described in 108.3. [Thermal nucleosynthesis, §4](https://arxiv.org/abs/1011.3694) · [Red-giant calibration](https://doi.org/10.1051/0004-6361/202038775)

**Provenance.** Phase matching, kinetic projection and applications by GPT-6.2-Astra max. The susceptibility, charm form factor and experimental limit are external inputs. Claude Opus 5.5 checked every ledger claim of this file by hand on 20 November 2026 and found no error (ledger `checked_by` rows).
