# A finite member matched to charged and neutral weak measurements

Fix the unit electric generator, $k=6$, the Kähler colour action and the flux lift of Part S231. Vary the compact weak shape and action coefficients between candidate theories, then retain one set of coefficients on its entire five-to-seven trajectory. We use five weak observables to determine a finite member and test the electric normalization and the lepton pole residues separately. This is a Born-level inverse problem with normalized chiral sources. The Thomson coupling, ordinary QCD running and precision electroweak corrections have different renormalization prescriptions.

## Inverting the light spectrum

**Proposition 78.1.** Consider compact, weakly broken members with $M_C,M_Z,M_v\ll 1/a,1/L$ at fixed ratios of the light masses. Denote the charged pole by $M_C$, the pole coupling to the ordinary neutral weak current by $M_Z$, and the independent vortex pole by $M_v$. In addition to the two degree-one roots, retain the leading weak stiffness of the original vortex. The leading light coefficients have a positive local inverse from $G_F,M_C,M_Z,g_V^{\nu e},g_A^{\nu e}$ whenever the $s,\rho,d_v$ below satisfy $0<s<1$, $\rho>1$ and $0<d_v<1$. For each strict interior solution with simple selected sourced poles, a unique nearby positive finite-member inverse exists for every sufficiently small $L>0$. The compact-sphere reduction below establishes the required parameter regularity and complement estimate. The implied electric coupling is an independent test.

**Proof.** Let $v_h^2$ be the sum of the two root-doublet stiffnesses in the convention of 73.1, and let $v_\Phi^2=16CV\langle|\Phi|^2\rangle$ be the charged stiffness of the original vortex. Write $v_A^2=(2p)^2 f_\theta^2$ for the axion stiffness of 77.1. The nearly dissolved vortex is a weak triplet of axial weight zero. Its action by a transverse unit rotation has squared norm $\langle|\Phi|^2\rangle$, whereas its axial weak vertex vanishes. Its charge under the separate unit vortex connection is two. Hence it contributes $v_\Phi^2/4$ to a charged weak connection and $v_\Phi^2$ to the constant vortex connection, before kinetic normalization. The root doublets give $v_h^2/4$ in the charged direction and the same coefficient on the neutral difference of the weak and hypercharge connections. Their common vortex charge gives $v_h^2$ there. Equal norms eliminate the leading weak–vortex neutral mixing. Thus to leading order
$$
 \begin{aligned}
 v_F^2&=(\sqrt2G_F)^{-1}=v_h^2+v_\Phi^2,\qquad
 M_C^2=g_2^2v_F^2/4,\\
 M_Z^2&=(g_2^2+g_Y^2)v_h^2/4,\qquad
 M_v^2=(v_F^2+v_A^2)/I_v .
 \end{aligned}
$$
Set $s=g_Y^2/(g_2^2+g_Y^2)$, $\rho=v_F^2/v_h^2$ and $d_v=v_F^2/(v_F^2+v_A^2)$. On a muon-neutrino and chiral electron the normalized neutral contacts are $g_L=\rho(-1/2+s)+2d_v$ and $g_R=\rho s+d_v$. The factors two and one follow from the vortex charges of these particular fermions. Put $R=M_C^2/M_Z^2$ and $D=g_V-3g_A$, where $g_V=g_L+g_R$ and $g_A=g_L-g_R$. The inverse is
$$
 s=\frac{D-R}{D+2R},\quad \rho=\frac{R}{1-s},\quad
 d_v=g_A+\rho/2,\quad
 g_2^2=4\sqrt2G_F M_C^2,\quad e_{\rm weak}^2=s g_2^2 .
$$
It determines $v_h^2=v_F^2/\rho$, $v_\Phi^2=v_F^2(1-1/\rho)$ and $v_A^2=v_F^2(d_v^{-1}-1)$. Each equation is invertible on the indicated interior. This constructive inverse supplies the nonsingular Jacobian.

For the compactification realization set $\epsilon=e^{-b}$, $c_v=CV$, $\eta=a/L$, $\gamma=p\sqrt{z_B}/(16\pi)$, and $h_0=2Z_H\zeta_0B_0^2/B^2$. In the near-round expansion $\langle|\Phi|^2\rangle=2\epsilon/3+O(\epsilon^2)$ and the summed squared root profiles are $2\sqrt{\epsilon}[1+O(\epsilon)]$ in the unscaled normalization. Writing $I_W=1/g_2^2$ and $I_Y=1/g_Y^2$, the leading microscopic inverse is
$$
 \begin{aligned}
 c_v&=I_Y k^2/L^2,\qquad
 \gamma^2=v_A^2/(16c_v),\qquad
 \eta^2=\frac{3I_W}{4(2+\gamma^2)k^2 I_Y},\\
 \epsilon&=3v_\Phi^2/(32c_v),\qquad
 h_0=v_h^2/(2c_v\sqrt{\epsilon}).
 \end{aligned}
$$
Choose the integer flux $p=1$ and the corresponding positive $z_B$. The colour measurement fixes $B^2=4I_3/c_v$, and the internal volume then fixes the common Einstein coefficient. At fixed light inputs put
$$
 \theta=(C,\Gamma,T,E,H)
       =(c_vL^2,\gamma/L,\eta^2,\epsilon/L^2,h_0/L).
$$
Its limiting inverse is
$$
 C=k^2I_Y,\quad \Gamma^2=v_A^2/(16C),\quad
 T=3I_W/(8C),\quad E=3v_\Phi^2/(32C),\quad
 H=v_h^2/(2C\sqrt E).
$$
Every entry is positive on the stated interior and depends smoothly on the five inputs. The compact-sphere argument below gives a pole/contact map continuous in $L\ge0$, continuously differentiable in $\theta$, with its $\theta$ derivative continuous up to $L=0$. Its limiting derivative is invertible by the two explicit inverses above. The parameter-dependent inverse function theorem therefore gives the nearby finite solution and its local uniqueness for all sufficiently small positive $L$. Once a member is chosen, holding its action fixed and taking the meridian input $d=aP_b$ places it on the matched path of 74.1 with the bounded electric coefficient of 77.1. This selects a member from input data; dynamical selection of its moduli remains separate. $\square$

### Compact-sphere regularity of the finite inverse

The domain in this argument is the fixed smooth sphere with its magnetic line bundles, in the zero-relative-circle-frequency transverse spin-one sectors sourced by the leptons. The charged sector has azimuthal weight one; the neutral sector has weight zero and the exact photon removed. The field representatives are solenoidal weak metric vectors, the weak Maxwell and circle scalar profiles, and a weak coexact one-form for the two-form vector. Exact two-form gauge directions and the external-coordinate gradients are eliminated as in 73.1 and 77.2. No unitary gauge for the small Stückelberg coupling is used.

**Profiles at the poles.** Put $v=-u-b$ for $t\ge0$, so $p=\epsilon e^{-v}$ and
$$
 q_\epsilon(v)=f^2/2=e^{-v+\epsilon(1-e^{-v})},\qquad
 t_\epsilon(v)=\tfrac12\int_0^v(1-q_\epsilon(x))^{-1/2}dx.
$$
Near $v=0$, $(1-q_\epsilon(v))/v$ is analytic and has positive value $1-\epsilon$. Consequently $t_\epsilon(v)/\sqrt v$ is analytic in $(v,\epsilon)$, and inversion gives $v$ analytic in $(t^2,\epsilon)$ at the equator. Near infinity the convergent tail integral gives
$$
 t_\epsilon(v)=v/2+c(\epsilon)+R(e^{-v},\epsilon),
 \qquad R(0,\epsilon)=0,
$$
where $c$ and $R$ are analytic for $\epsilon$ in a fixed neighbourhood of zero. For example, subtract $1$ from the integrand before taking the tail; it has a convergent power series in $e^{-v}$, uniformly for small $\epsilon$. With $r=e^{-v}$ and $\tau=e^{-2t}$,
$\tau=r e^{-2c(\epsilon)-2R(r,\epsilon)}$ has a nonzero derivative in $r$ at zero. Thus $r/\tau$ is positive and analytic in $(\tau,\epsilon)$.

Use the ordinary spherical height $y=\tanh t$, so $\tau=(1-y)/(1+y)$. The preceding statements prove that $f^2/(1-y^2)$ extends positively and analytically in $\epsilon$ as a smooth scalar at both poles. The same holds for the local regular-gauge connections. The Hermitian metrics on the fixed magnetic lines are therefore analytic in $\epsilon$ in every $C^j$ norm. After extracting their common amplitudes, write the vortex as $\Phi=\sqrt\epsilon\,\widehat\Phi_\epsilon$ and its two roots as $\epsilon^{1/4}R_{\pm,\epsilon}$, with the constant root normalization absorbed in $h_0$. These hatted sections and $R_\pm$ are analytic smooth sections in fixed regular bundle frames. At a pole the vanishing root contains the usual local holomorphic coordinate, while the other root has a positive analytic norm; the factor $r/\tau$ above verifies this assertion directly. The normalized fermion zero sections also vary analytically: their fixed holomorphic bases have analytic positive Gram matrices for these Hermitian metrics and the spin metric. Their normalization cancels the common powers of $\epsilon$. Hence all the current functionals are analytic; integration by parts puts their possible vector derivatives on smooth spinor bilinears.

**The root projector.** Remove the common root amplitude and set
$A_\epsilon f=((D_{\nabla f}R_{+,\epsilon}),(D_{\nabla f}R_{-,\epsilon}))$ on real mean-zero $H^1(S^2)$. At $\epsilon=0$ the complete normalized Hopf doublet gives $A_0^*A_0=c\Delta_0$, $c>0$. The pointwise gradient coefficient remains uniformly positive for small $\epsilon$ by the smooth convergence just proved. Poincaré's inequality makes $A_\epsilon^*A_\epsilon:H^1/\mathbb R\to(H^1/\mathbb R)^*$ uniformly invertible. Its inverse depends analytically on $\epsilon$ by the bounded-operator inverse formula. Therefore
$$
 P_\epsilon=1-A_\epsilon(A_\epsilon^*A_\epsilon)^{-1}A_\epsilon^*
$$
is analytic as an operator on the real root $L^2$ space after the smooth changes of density. This proves differentiable control of the full projected root form, beyond its value on the leading Killing modes. The power $\epsilon^{1/4}$ cancels from $P_\epsilon$ exactly.

**Common form domain and complement.** Let $V$ be $H^1$ for the geometric vector and one-form representatives and for the Maxwell/circle scalar profiles, with the preceding coexact restrictions. Solenoidal vectors for the varying area form are identified by
$\iota_{X_\epsilon}dV_\epsilon=\iota_{X_0}dV_0$; this is multiplication by a positive smooth scalar. The Hodge star on one-forms is conformally invariant on a surface, so the coexact one-form domain is fixed. The resulting mass forms are bounded forms $V\to V^*$ and the kinetic forms are uniformly positive, bounded $L^2$ forms in a neighbourhood of every positive $\theta$.

At $L=0$ the dimensionless mass form $\mathscr H_0$ is the round covariant vector form with zero root, vortex and two-form coupling. Its leading derivative terms are the trace-free Lie derivative of the solenoidal metric vector and the ordinary exterior derivatives of the Maxwell/circle scalars and coexact one-form. They obey an elliptic Gårding estimate on these spaces. Its kernel consists of the rotations with magnetic compensators and the constant vortex and circle connections; a closed coexact one-form on $S^2$ is zero. This kernel is finite dimensional. The Gårding estimate and the compact embedding $H^1\hookrightarrow L^2$ imply coercivity on its $L^2$ orthogonal complement: otherwise a unit form-norm sequence with energy tending to zero would have a strong $L^2$ limit in both the kernel and its orthogonal complement. The Gårding estimate would then force its full form norm to tend to zero. This gives a bounded inverse from the complementary dual form space to the complementary form space. Small coefficient perturbations preserve that inverse uniformly. Thus the eliminated angular complement estimate is established on the whole sourced form domain, rather than at a fixed Galerkin degree.

**Scaled Schur complement.** Canonically normalize the new two-form as in 77.2. Every coefficient of the resulting dimensionless forms is analytic in $\epsilon$, $\gamma$ and the positive parameter $T$, with the root mass coefficient $h_0\sqrt\epsilon$ times an analytic function of $\epsilon$. Under
$$
 \epsilon=L^2E,\quad \gamma=L\Gamma,\quad h_0=LH,
 \quad c_v=C/L^2,\quad a^2=TL^2,
$$
these coefficients are analytic in $(L,\theta)$, since
$h_0\sqrt\epsilon=L^2H\sqrt E$. This supplies an analytic signed extension of the reduced forms; no signed extension of the raw scalar root field is required. The exact photon and its kinetic orthogonal projector vary analytically and have a kinetic norm bounded away from zero, so removing it preserves these properties.

Split the remaining form domain into the round light kernel $\mathcal L$ and its complement $\mathcal Q$. For a bounded physical squared mass $\lambda$, use the pencil $\mathscr H-TL^2\lambda\mathscr K$. Its complementary block has the uniformly invertible limit just established. Its mixed block is $O(L)$ and its light block is $O(L^2)$: the linear $\gamma$ term pairs a two-form profile with the background-flux source, while the light kernel has zero two-form profile; the other new mass coefficients begin at $L^2$. The background metric deformation is $O(\epsilon)$, and each covariant zero-mode residual vanishes at the round background. Hence no linear term appears in the light block. Eliminating $\mathcal Q$ gives
$$
 S(L,\theta,\lambda)=L^2\widehat S(L,\theta,\lambda)
$$
with $\widehat S$ analytic as a finite matrix. Its value at zero is the leading light pencil printed in 78.1. The two-form elimination leaves the harmonic constant-vortex obstruction of 77.1 and the exact lifted rotations of 77.2. The other leading terms are the root and vortex stiffnesses and the corresponding normalized lepton sources already evaluated above. Thus this limit uses the flux-compensated light vectors.

Simple sourced roots of $\det\widehat S=0$ and their normalized residues depend analytically on $(L,\theta)$. The charged raising sector is treated as one complex polarization; its conjugate has the same pole. Simplicity for the selected neutral poles can be imposed within their reflection sectors, excluding an accidental degeneracy where needed. At zero momentum the photon-free light matrix is positive on the strict interior. The static block inverse has a potentially singular light part $L^{-2}\widehat S^{-1}$, whereas the physical contact includes the prefactor $c_v^{-1}=L^2/C$. The factors cancel. The complementary static exchange has an extra $L^2$ and vanishes continuously. The entire physical contact map and its $\theta$ derivative therefore extend to $L=0$. Pole masses remain positive, so taking their square roots preserves this regularity.

Only continuity in $L$ and joint continuity of the $\theta$ derivative are needed for the parameter-dependent inverse theorem. An all-variable $C^1$ extension is stronger; the analytic form construction above provides it for these sourced sectors. A direct numerical finite inverse would supply neither this neighbourhood theorem nor a rigorous lower bound on the admissible size of $L$. In particular this proof gives no certified error or admissible-$L$ threshold for the numerical $2$ TeV example below.

## Finite calculation with the photon retained

On the neutral, circle-constant, axisymmetric sector, every smooth solenoidal sphere vector is $U(t)\partial_\varphi$. Put $\mu=-u_t/4$, $F_A=A'dt\wedge d\varphi$, $A'=f^2(1-|\Phi|^2)/4$ and $D_b=\int f^2dt$. Write the physical vortex and circle profiles as $z=\mu U+Z$ and $v=U/k+\eta W$. Use a regular two-form profile $(P-\gamma f^2 U)d\varphi/\sqrt{Z_B/a^4}$, with $P$ vanishing at the poles. The dimensionless kinetic and mass forms, in units $CVa^2$ and $CV$, are
$$
\begin{aligned}
 D_b{\cal K}={}&\int\big[f^2\{f^2U^2+16(Z+\mu U)^2+
            (W+U/(k\eta))^2\}+(P-\gamma f^2 U)^2\big]dt,\\
 D_b{\cal H}={}&\int\big[f^2(U')^2+16(Z'+\mu U')^2+
       (W'+U'/(k\eta))^2+16f^2|\Phi|^2 Z^2\big]dt\\
 &+\int\frac{(P'-\gamma f^2 U'-16\gamma A' Z)^2}{f^2}\,dt\\
 &+h_0\sum_\pm\int f^2 e^{u/2\mp t}(Z\pm k\eta W/2)^2dt .
\end{aligned}
$$
The root orbits are purely phase changes here, orthogonal to the real meridian-gradient root variation. The Gram norm of the constant $U=1$, $Z=W=P=0$ is exactly the photon norm in these units. On a weak zero spinor with label $m$, line charge $N$ and hypercharge $Y$, the source is the normalized expectation of $Q_f U+U'/4+NZ+kY\eta W$ with density $f\,e^{(2m-N)t+Nu/2}dt$, $Q_f=m-N/2+Y$. Indeed the spin connection in $D_\varphi$ cancels the $f_sU/2$ part of the spinorial curl term. The neutrino, left electron, right electron and right neutrino have photon vertices $0,-1,-1,0$.

Project out the photon in the kinetic inner product before inverting the neutral mass. For each source this subtracts $Q_f{\cal K}(Q,\cdot)/{\cal K}(Q,Q)$; dropping just the first row of a nonorthogonal kinetic matrix would spoil the finite contact between a neutral and a charged source. In the charged form of 74 use a weak coexact two-form vector $*d(h(t)e^{i\varphi})/\sqrt{Z_B/a^4}$. It adds $\int(h'^2+h^2)dt/D_b$ to the kinetic norm and $\int(h''-h-16\gamma A'Z)^2dt/(D_b f^2)$ to the mass. At zero momentum its Schur complement vanishes, in agreement with 77.3. At finite momentum use all the components.

**Numerical calculation (Python, SciPy).** Use the printed running-width masses and widths $(80.3625,2.14)$ and $(91.1879,2.4955)$ GeV with the same conversion $M_{\rm pole}=M/\sqrt{1+(\Gamma/M)^2}$ for both. Use $G_F=1.1663785\times10^{-5}$ GeV$^{-2}$ and CHARM II central values $(g_V,g_A)=(-0.035,-0.503)$. The widths are used only to fix the mass convention. Set $k=6$, $1/L=2000$ GeV. The light inverse gives $s=0.230333$, $\rho=1.00913$, $d_v=0.001565$, $g_2^2=0.42581$ and $\alpha_{\rm weak}^{-1}=4\pi/e_{\rm weak}^2=128.127$. The inferred order parameters are $v_h\simeq245.1$, $v_\Phi\simeq23.4$ and $v_A\simeq6220$ GeV. The small positive $d_v$ is sensitive to the experimental neutral-current uncertainties; its central value is not evidence for a new pole. [PDG mass and width data](https://pdg.lbl.gov/2026/tables/rpp2026-sum-gauge-higgs-bosons.pdf) · [CHARM II measurement](https://www.sciencedirect.com/science/article/pii/0370269394914214)

The finite solver evaluates both generalized mass pencils and their static inverses. The five inputs fitted numerically are $G_F,M_C,M_Z,g_V,g_A$; $M_v$ is an output. At polynomial degree 12 it gives

| Finite microscopic quantity | Value |
|---|---:|
| $\epsilon=e^{-b}$ | $4.5500\times10^{-8}$ |
| $h_0$ | 0.12461 |
| $a/L$ | 0.0558031 |
| $\gamma$ | 0.0462562 |
| $e_{*,Q}^2$ | 0.0980774 |

| Current or pole measurement | Finite Born value | How it is identified |
|---|---:|---|
| Charged and ordinary neutral masses | 80.3340 and 91.1538 GeV | Left raising transition and neutral chiral residues |
| Leptonic charged pole residue | 0.0532259 | Coefficient in the $V-A$ exchange |
| Fraction of muon contact from the first pole | 0.9999992 | Residue divided by mass squared, compared with the full static sum |
| Extra neutral mass | 1.6591 TeV | Vertex of magnitude 0.26654 on $\nu_R$; the ordinary neutral pole has zero such vertex by reflection |
| $Z$ lepton angle from pole vertices | 0.230333 | Right vertex divided by twice the right–left difference |
| Born $Z\to e^+e^-$ width | 84.12 MeV | $M_Z(|j_L|^2+|j_R|^2)/(24\pi)$ |
| Born $W\to e\nu$ width | 226.84 MeV | $M_C g_{\ell C}^2/(48\pi)$ |

The scalar Legendre and raising Jacobi bases of degrees 5, 8 and 12 agree in the quoted digits. Repeating the extra-mass determination at degrees 6, 10 and 12 gives 1659.13 GeV throughout, with sub-MeV variation in the last digits. These are Galerkin convergence checks, not rigorous error bars. The independent PDG values for the charged-lepton $Z$ width and effective angle are $83.984\pm0.086$ MeV and $0.23148\pm0.00012$. They include radiative effects. In particular the difference in the angle is a precision test; a Born-level residual cannot be assigned a statistical significance against those uncertainties. The source calculation uses the chiral zero modes. Light lepton masses can be assigned by their Yukawa overlaps; corrections to their internal projections are controlled by the lepton mass relative to the positive tangential gap. [Reproducible finite calculation](../paper/finite_flux_currents.py) · [PDG pole observables](https://pdg.lbl.gov/2026/tables/rpp2026-sum-gauge-higgs-bosons.pdf)

## Independent electric and strong comparisons

At fixed electric normalization, the formula $s=e_*^2/(4\sqrt2 G_F M_C^2)$ is an overconstraint when all five weak measurements are used. Directly inserting the Thomson $e^2=0.09170$ would give $s=0.21536$, $\rho=0.98987$, outside the positive triplet branch at leading order. The ordinary charged-lepton and quark continuation to 1 TeV in 76 gives $e_{\rm ord}^2=0.10039$, $s=0.23576$ and would require $d_v=-0.00202$ to reproduce the vector central value. The simultaneous central solution lies between the two. The inverse-coupling difference $I_{Q,\rm fit}-I_{\rm ord}$ is about $+0.235$. It specifies a finite electroweak and additional-particle calculation, with the subtraction schemes fixed. The fit does not establish that its fitted charge runs back to the measured Thomson residue after those contributions. Unlike the older long-neck benchmark, this member has charged weak bosons well below 1 TeV.

A physical-mass QCD calibration with $\Lambda_{\overline{\rm MS}}^{(3)}=0.341$ GeV and the independent nucleon scale in result 61 gives $H_N\simeq0.312$ GeV in its isospin-symmetric convention. At the fitted contact this gives $\Xi\simeq1.14\times10^{-6}$, $M_C/H_N\simeq257$ and $M_g/H_N\simeq6410$. The first value uses the measured Fermi strength as an input, and the first omitted coloured *particle* depends additionally on the chosen mirror threshold. For mirrors above the 1 TeV subtraction point one may use the six-flavour strong coupling in result 76 there; coloured mirrors below it enter the running. The independent nuclear and weak-pole ratios along the rest of the trajectory are the tests in 74–76. Choosing the small shape parameter and the root potential to match the measurements still leaves their dynamical selection open. The sample has $\sqrt{2CV}\simeq47.5$ TeV in its assigned units. Its gauge and hadron calibration does not match the observed four-dimensional Newton constant in the minimal Einstein action.

## Predicting the muon contact from pole measurements

Now hold the muon lifetime out of the calculation. Use the same two pole masses, the pole angle $s_Z=\sin^2\theta_{\rm eff}^{\ell}=0.23148$ and the inclusive leptonic width $\Gamma_{\ell\ell}=83.984$ MeV. Convert the width to the common complex-pole convention and remove the leading inclusive final-state QED factor, using $\alpha=1/128$ in that factor:
$$
 \bar\Gamma_{\ell\ell}^{(0)}
 =\frac{\Gamma_{\ell\ell}}
 {\sqrt{1+(\Gamma_Z/M_Z)^2}\,[1+3\alpha/(4\pi)]}
 =83.7963\ {\rm MeV}.
$$
At leading order the doublet vertices give $g_Z^2=24\pi\bar\Gamma_{\ell\ell}^{(0)}/(\bar M_Z[(s_Z-1/2)^2+s_Z^2])$ and $g_2^2=(1-s_Z)g_Z^2$. Hence the independent leading estimate is
$$
 G_F^{\rm pole}=
 \frac{6\pi(1-s_Z)\bar\Gamma_{\ell\ell}^{(0)}}
 {\sqrt2\,\bar M_C^2\,\bar M_Z[(s_Z-1/2)^2+s_Z^2]} .
$$
The fifth measurement for a variable vortex coupling is the scattering ratio $s_{\nu e}^2=(g_V-g_A)/(-4g_A)=0.232604$. A common normalization of both measured amplitudes cancels. It gives $d_v=\rho(s_{\nu e}^2-s_Z)/(1+2s_{\nu e}^2)=0.000776$ in the leading inverse. These inputs probe different momentum regimes. The pole formula itself also holds in an ordinary single-doublet weak theory to this accuracy. The extra test here is whether positive finite geometric coefficients realize it and the scattering ratio simultaneously. [PDG pole observables](https://pdg.lbl.gov/2026/tables/rpp2026-sum-gauge-higgs-bosons.pdf) · [CHARM II chiral measurement](https://www.sciencedirect.com/science/article/pii/0370269394914214)

At $1/L=2$ TeV and $k=6$, the finite charged and neutral pencils give $\epsilon=5.3271\times10^{-8}$, $h_0=0.115740$, $a/L=0.055953$, $\gamma=0.065934$ and $e_*^2=0.0981054$. The resulting muon contact is $G_F=1.16093\times10^{-5}\ {\rm GeV}^{-2}$, about $0.47\%$ below the measured value. The absolute neutrino coefficients are $(-0.03511,-0.50454)$, the extra pole is at $2.358$ TeV and the inclusive-radiation-free charged width is $225.78$ MeV. Restoring the QED radiator to the input width while retaining the pole convention would give $1.16309\times10^{-5}\ {\rm GeV}^{-2}$ at leading order. Finite weak, process-dependent and threshold corrections remain to be computed before interpreting the residual.

With the independently scale-set lattice value $m_N=0.936(25)(22)$ GeV, $H_N=m_N/3=0.312$ GeV gives $\Xi=G_FH_N^2=1.1301\times10^{-6}$. The observed muon and nucleon masses and lifetime give the reference $\Xi_{\rm phys}=1.1425\times10^{-6}$ using $H_N=(m_p+m_n)/6$. The lattice uncertainties alone amount to about seven per cent in the squared scale. Pole measurements calibrate the weak action, and physical quark masses and a hadronic scale-setting input calibrate QCD. The comparison consequently tests an infrared relation under these choices. Equation 83.1 measures how this ratio moves when the geometry is varied. With the additional restriction $\gamma=1$, the four pole inputs suffice to predict both scattering coefficients as well as the muon contact, as reported in 84.3. [Independent nucleon calculation, Table 1](https://arxiv.org/pdf/0906.3599#page=7) · [Physical input convention](issues/19.md) · [Finite solver with the Fermi strength held out](../paper/finite_flux_currents.py)

**Provenance.** Derived by GPT-6.2-Astra max. Experimental values and their conventions are external inputs. Claude Opus 5.5 checked every ledger claim of this file on 20 November 2026 and found no error. Some of these checks took forms or numbers of this file as stated; the ledger `checked_by` rows record what each check covered. GPT-6.1 Sol independently checked the light inverse and supplied the compact-sphere form-domain, projected-root and Schur-complement proof of the finite inverse on the same date.
