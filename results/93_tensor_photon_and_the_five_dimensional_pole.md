# The photon and charged exchange on a two-period collapse

Fix the six-dimensional coefficient $Z_6>0$, the vortex flux, the two-form polarizations, the shared generator and the matching inputs $I_3,I_Q$. Vary the weak shape on the matched polar fibration of 92, then shrink the whole weak metric at fixed shape. The observable is the charged propagator in units of a hadronic scale. The scatterer is a projected left lepton doublet. Coloured thresholds and the use of a four-dimensional hadron scale require the light-spectrum assumptions indicated below.

## The photon cost along the neck

**Proposition 93.1.** In the fixed $Z_6$ action of 92 the two compensators of the exact photon contribute
$$
 I_T(b)=\frac{1}{128\pi}\left[Z_6\int f^4\,dt+Z_D\int\Phi_m^2\,dt\right],
 \qquad Z_D=\frac{1}{4\pi^2 Z_6}.
$$
This is independent of the three radii at fixed shape. It increases strictly towards the long-neck end $b\downarrow0$ and
$$
 \frac{I_T(b)}{P_b}\ \longrightarrow\
 \frac{\sqrt2}{64\pi}(Z_6+25 Z_D).
$$
For every finite $a,b$ with $I_T(b)<I_Q$, the projective colour and total photon matching equations of this action have a unique positive pair $B,L$ for given positive $I_3$ and fixed Einstein coefficient. For any $I_Q$ bigger than its round tensor contribution the long-neck path at fixed $I_Q$ stops at finite $P_b$. A finite six-dimensional scalar band can occur before that point.

**Proof.** The pole sum has unit photon kinetic contributions $CVa^2\gamma_e^2\int f^4 dt/D_b$ and $CVa^2\gamma_m^2\int\Phi_m^2dt/D_b$ by the primitive calculation in 92. Equivalently the two physical compensators are $-f^2d\varphi/(16\pi)$ and $\Phi_m d\varphi/(16\pi)$. Their kinetic energies use the scale-invariant two-dimensional norm on one-forms. This gives the stated constant factors.

Write $\epsilon=e^{-b}$, $u=-b-v$ on the nonnegative conformal half-line, $x=e^{-v}$ and $q=x e^{\epsilon(1-x)}$. Then $f^2=2q$, $p=\epsilon x$, $dt=dv/(2\sqrt{1-q})$ and $-\Phi_m=10q-4(1-q)p(2-p)$. This last quantity lies in $[2q,10q]$. Its derivative with respect to $\epsilon$ is
$$
 [10+4p(2-p)](1-x)q-8(1-q)(1-p)x\ \ge\ 2x(1-x)>0.
$$
Here $q\ge x$ and $0\le p\le q$. Both integrands, including the measure in $v$, increase. For every fixed $\eta>0$ the tails $v\ge\eta$ of all three integrals $P_b$, $\int f^4dt$, $\int\Phi_m^2dt$ are bounded uniformly near $b=0$, by exponential decay and a positive lower bound for $1-q$. In the diverging core $v<\eta$, taking $\eta$ to zero after $b$ makes $f\to\sqrt2$ and $\Phi_m\to-10$. The two ratios of integrals to $P_b=\int fdt$ tend to $2\sqrt2$ and $50\sqrt2$. Even varying $Z_6$ between different members leaves the minimum possible cost asymptotic to $5\sqrt2\,P_b/(64\pi^2)$ by the arithmetic–geometric mean. That bound refers to coefficients constant on each sphere.

Put $J_b=\langle f^2+16\mu^2\rangle_b$. The tree equalities are
$$
 CVB^2=4I_3,\qquad I_Q-I_T=CV(L^2/k^2+a^2J_b).
$$
At fixed $a,b$, $CV$ is proportional to $B^4 L$ and the first equation gives $L$ proportional to $B^{-6}$. The right side of the second equation decreases strictly from infinity to zero as $B$ grows. This proves matching, smooth dependence and the finite-neck cutoff. At fixed shape and positive residual photon norm, the old compensated powers $B,L\asymp a^{-2/7}$ are recovered, with $L/B\to k\sqrt{(I_Q-I_T)/(4I_3)}$. At the end of the fixed-meridian matching where $\delta=I_Q-I_T\downarrow0$ at finite $P_b$, one instead has $B^2\sim4I_3a^2J_b/\delta$ and $L\asymp\delta^3$. The circle gap rises there. The exact electric generator leaves the sources unchanged. $\square$

**Finite six-dimensional window.** As a numerical example choose the lower $500$ GeV branch of 92 and hold its physical meridian $d=aP_b$ fixed along the neck. Use the colour value $I_3$ matched at $250$ GeV under the spectrum assumptions of 92, the same $I_Q\simeq10.1961$, and $Z_6=0.49604$. At $b=0.001$ the scalar quadrature gives $P_b=18.6396$, $I_T=0.18951$, $a=2.65\times10^{-5}$ GeV$^{-1}$, and $L^{-1}\simeq387$ GeV. The first three nonzero purely axial scalar masses are about $7.06,14.03,20.87$ TeV. A charge-one azimuthal mode has a lower mass bound $1/(\sqrt2\,a)=26.7$ TeV, from $f^2\le2$. The first colour-base scalar mass $\sqrt{12}/B$ is about $14.4$ TeV. Thus a $22$ TeV window resolves the four colour directions, the circle, and the weak meridian, while the weak azimuth remains above the window. It is a finite separation. A simple bound independently certifies a meridian mode there. Since $1-q\le bv+v^2/2$, one has $v(t)\le b[\cosh(\sqrt2|t|)-1]$, and so $f^2>1.68$ on $|t|\le5$. The first two Dirichlet trial sines on that interval give the first positive axial mass below $18.4$ TeV by min–max. The charged Galerkin pole at this middle point is about $25.3$ TeV and its Born contact gives $G_F\simeq2.98\times10^{-12}$ GeV$^{-2}$. The ordinary flat-space hadron conversion at the starting member cannot simply be transported to this geometry with the Yukawas held fixed.

## The new charged pole scale at fixed shape

**Proposition 93.2.** At any fixed broken shape with $I_Q>I_T$, in the positive colour-singlet tree pencil the shrinking sphere with the fixed six-dimensional tensor has sourced weak poles with masses of order $\sqrt{CV}\asymp 1/B$. Let $\mathcal H_b$ be the positive dimensionless charge-one mass form with the vanishing root and circle corrections removed, in the convention of 74. Use $\mathcal J_b$ for the limiting lepton current with $S_b=2\|\mathcal H_b^{-1/2}\mathcal J_b\|^2$. On its domain write
$$
 \mathcal K_T[q]=Z_6\|d_\Sigma^{-1}\beta_e(q)\|_{L^2(h_b)}^2+
                 Z_D\|d_\Sigma^{-1}\beta_m(q)\|_{L^2(h_b)}^2 .
$$
The inverse is the coexact primitive on the meanzero two-forms of charge one. Suppose $h_N=\lim B H_N$ exists, is positive and lies in the four-dimensional strong regime. Put $\sigma_H=h_N^2/(4I_3)$. Then at any fixed spacelike momentum ratio $\xi\ge0$ the limit is
$$
 \lim H_N^2 C_{\ell\ell}(\xi^2 H_N^2)
 =\frac{\sigma_H}{8}\,
 2\left\langle\mathcal J_b,
  (\mathcal H_b+\xi^2\sigma_H\mathcal K_T)^{-1}\mathcal J_b\right\rangle .
$$
It is strictly smaller for $\xi>0$ than at zero in the minimal transverse pencil. In particular the zero-momentum limit still gives $\Xi=\sqrt2\,\sigma_H S_b/8$ and the first circle colour **harmonic**, if first omitted coloured, gives
$$
 \lim G_F M_g^2=\frac{\sqrt2\,S_b}{8k^2(I_Q-I_T)}.
$$
These statements are conditional on the stated hadronic and spectral hierarchy where applicable. The charged pole calculation itself uses the whole tree current sector.

**Proof.** Work in unscaled sphere norms. If $q$ denotes the original profiles and $\eta_i$ the two physical tensor one-forms, their mass energies have terms $Z_i a^{-2}\|d_\Sigma\eta_i-\beta_i(q)\|^2$, and their external kinetic terms are $Z_i\|\eta_i\|^2$. The original mass form is $CV(\mathcal H_b+o(1))$ on the fixed charge-one domain, and its kinetic term is of order $CVa^2$. The colour-matched radius tends to infinity and $a/L\to0$. The charged circle profile decouples from the limiting lepton source. The other original mass corrections are small in the form norm by the fixed-shape estimates of 73–74.

Divide by $CV$. At external momentum squared $t CV$ the two new mass penalties have coefficients $Z_i/(CV a^2)\to\infty$. Write $\eta_i=d_\Sigma^{-1}\beta_i(q)+\eta_i'$, so the divided mass form has diagonal blocks on the original profiles and $\eta_i'$. After conjugating the kinetic form by the inverse square root of this block diagonal mass form, its original and tensor off-diagonal terms from $\eta_i'$ go to zero in operator norm. The sphere is fixed, the coexact differential has positive lowest singular value, and each $\beta_i$ is bounded with respect to the original form norm. The surviving block is $\mathcal H_b^{-1/2}\mathcal K_T\mathcal H_b^{-1/2}$. It is positive and compact. For example the gravitational source differentiates $X$ once, and its coexact primitive gains a derivative on this smooth closed surface. The convergence gives the spacelike resolvent at every finite $t\ge0$, and convergence of isolated positive eigenvalues of the conjugated kinetic operator. If an eigenvalue is $\ell>0$, the corresponding physical squared mass has limit $M^2/(CV)=1/\ell$. Its sourced residue follows from the projection of $\mathcal H_b^{-1/2}\mathcal J_b$.

There is at least one such eigenvalue seen by the source. If both primitives vanish, $\beta_e=0$ first forces the vortex connection profile to be zero, since $F_A$ is pointwise positive at finite $b>0$. Then $\beta_m=0$ forces $\ell(X)=0$ since $R_\Sigma>0$. The metric vector was solenoidal, and the sphere has no harmonic one-form, so $X=0$. The limiting current is nonzero in these two fields and has zero circle component. Thus its projection onto the positive block is nonzero, which also gives strict momentum dependence. Substituting $t=\xi^2\sigma_H$ gives the limit. At zero momentum the tensor cost vanishes after minimization, and $CV L^2\to k^2(I_Q-I_T)$ gives the circle relation. $\square$

**Example at the same fixed shape.** A constrained B-spline Galerkin calculation at $b=0.001$ for the lower tensor branch gives $S_b=0.00105576$, first sourced $M_C^2/(CV)\simeq37.25$ and its lepton residue about $0.000523$ in $C_{\ell\ell}$. Its nearly degenerate odd companion is unsourced by reflection. With the *additional* lower-end input $H_N L=0.312/500$, the comoving pole ratios are $M_C/H_N\simeq1.86\times10^5$ and $M_g/H_N=1603$. The static result is $\Xi\simeq2.02\times10^{-13}$. At $\xi=1$ the relative reduction from the static contact is about $3.6\times10^{-12}$. These numbers are small but the limiting pole and momentum dependence are genuine. The first charged pole is above the coloured circle threshold, so its tree residue does not validate a four-dimensional theory without the compactification tower at that energy. The unchanged transverse static contact is not a proof of perturbative or nonperturbative matching across those thresholds. Fixed Yukawas calibrated at the compact physical member can cross colour thresholds as the sphere changes, and need to be followed in establishing $h_N$.

## Scale comparisons along the calibrated broken path

For the illustrated branch one may choose the fixed dilaton-dependent Yukawa functions of 74 to hold the six ordinary running mass ratios $m_f L$ at the physical values of the $500$ GeV member. Use the same decoupling convention at $\mu_* L=1/2$ and keep its renormalized colour input. In a four-dimensional window with that spectrum all dimensionless QCD ratios, including $\Lambda_3 L$, are then constant to the stated matching order. Choose the independently scale-set physical-mass input $H_N L=0.312/500$. This is a common comoving calibration, not a new determination of the Yukawa functions. The middle member now has $H_N\simeq0.2415$ GeV in the starting physical units. The exact projection of the photon still gives the same $I_Q$ at each member. The three broken-regime tree comparisons are

| Member | $e_*^2$ | $M_C/H_N$ | $M_g/H_N$ (circle) | $\Xi=G_FH_N^2$ |
|---|---:|---:|---:|---:|
| Compact weak fit, $500$ GeV branch | 0.0980763 | 257.5 | 1603 | $1.1354\times10^{-6}$ |
| Finite neck, $b=0.001$ | 0.0980763 | $1.05\times10^5$ | 1603 | $1.74\times10^{-13}$ |
| Uniform shrink at that shape | 0.0980763 | $1.86\times10^5$ | 1603 | $2.02\times10^{-13}$ |

At the middle point the fractional reduction at spacelike $p=H_N$ is about $4.0\times10^{-11}$. The pole at the round **restoration** itself is tree-massless and has a nonlocal $1/p^2$ transverse response. A Fermi contact at zero there needs a different infrared prescription. The calibration of ordinary massive QCD on the broken segment does not establish its analogue for massless quarks at that end.

A countertest to the comoving prescription is to keep the original numerical Yukawa coefficients independent of the dilaton. On the same polar profile the leading overlap $[\int f p e^t\,dt/\int f\sqrt p\,dt]^{1/2}$ increases from $0.0292$ at the compact weak point to $4.56$ on the neck. Even with the colour radius changed by the matching equations, the leading projected top trial mass grows by about $136$. Its projected value is outside the small-mass approximation there. One can still test whether this charge sector has a state below $1/L$. In the degree-zero form of 67 a candidate below $1/L$ has norm in the complement of its single untwisted singlet kernel at most $1/(L\delta_s)\simeq0.078$, where $\delta_s^2\ge e^{-1/2}\pi^2/d^2$ is the free squared singlet gap of 74. The peak of the squared root relative to its singlet average is about $10.1$. The triangle inequality on the multiplication map then leaves an overlap of order tens of TeV for the fitted top Yukawa, even allowing the bottom-column correction. This contradicts a low state at the $387$ GeV circle threshold. Thus ordinary six-flavour running below the circle cannot be copied unaltered with these constant numerical Yukawas. A full strong calculation at the shifted light-quark masses is a separate hadronic problem in that variant. [Fixed local Yukawa calibration and gap estimate](74_matched_hadronic_and_weak_scales.md) · [Reproduce the neck and limiting poles](../paper/tensor_trajectory.py)

**Provenance.** Photon matching, limit and numerical comparison by gpt-6.2-sol ultra with the tensor and matching calculations in this turn. Independent scientific review is pending.
