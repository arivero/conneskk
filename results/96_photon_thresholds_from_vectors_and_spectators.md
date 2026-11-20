# Photon matching with a light gauge multiplet and a spectator tower

Fix the light pole masses, unit photon charge and the reference matching points of 92. Vary the external momentum. We compute a light Yang–Mills gauge-multiplet comparison, a physical spin-one current comparison and the contribution of the actual vortex-neutral Dirac spectators on a round weak sphere. Their inverse-coupling conventions and finite local terms differ. The calculation gives finite quantities which can be used in a radius match with fixed Thomson charge.

## A calculable light weak gauge contribution

**Proposition 96.1.** In the minimal one-doublet Yang–Mills comparison, use the Abelian background-field two-point inverse kinetic coefficient in quantum Feynman gauge. The contribution of the charged $W$, its charged Goldstone and its ghosts to the change from subtraction at $t=0$ to spacelike squared momentum $t$ is
$$
 I_{\rm BF}(t)-I_{\rm BF}(0)=\frac{Q_W^2}{16\pi^2}
 \int_0^1 [8-3(1-2x)^2]\log\!\left(1+\frac{x(1-x)t}{m_W^2}\right)dx.
$$
This is the gauge-multiplet contribution in this specified scheme. The geometric pole motivates comparing with this multiplet near restoration. Other tensor and Kaluza–Klein modes have not been assigned that coupling.

**Proof.** In that gauge the charged vector operator is $P\delta_{\mu\nu}-2iQ_W F_{\mu\nu}$ with $P=-D^2+m_W^2$. The complex charged Goldstone and the two charged ghost determinants subtract one $\operatorname{Tr}\log P$ from the vector determinant. The purely orbital term is therefore three charged-scalar determinants. Their subtracted two-point coefficient gives $-3(1-2x)^2$ in the numerator. The longitudinally independent curvature term comes from the square of $-2iQ_W F_{\mu\nu}$ in the vector trace. Its coefficient in the inverse kinetic term is minus eight times the equal-mass bubble. Subtracting this bubble at $t=0$ gives the positive $8$ multiplying the same logarithm. These terms reproduce $7\log t$ in the integral at large $t$ up to an additive constant, with the expected sign for the gauge multiplet. The term linear in $F$ has vanishing vector-index trace. [Background-field gauge rules and charged-vector two-point functions](https://arxiv.org/abs/hep-ph/9410338) $\square$

For $Q_W=1$ and $m_W=80.334$ GeV, numerical quadrature gives contributions to $\alpha^{-1}=4\pi I_{\rm BF}$ of $+0.53181$ at $250$ GeV and $+0.89219$ at $400$ GeV. The difference from $125$ to $250$ GeV is $+0.33828$. The fit in 92 requires the inverse photon norm to exceed the ordinary fermion and hadron comparison by about $0.71$ and $1.41$ respectively. Subtracting the displayed light-$W$ term leaves about $0.18$ and $0.51$ in those inverse-alpha units under this convention. Off-diagonal neutral polarization, vertex and box matching and the remaining thresholds contribute to an observable. This calculation accounts for a specific gauge-sector term in the matching comparison. It alone does not determine the physical residual or transport it to the long neck, where the extrapolated charged pole can lie above the circle threshold.

Analytically continuing the logarithm across $s>4m_W^2$ gives the effective spectral coefficient $-\beta(8-\beta^2)/(16\pi^2)$ in this inverse-coupling convention, where $\beta=(1-4m_W^2/s)^{1/2}$. The integral of the weight over the cut interval is $8\beta-\beta^3$. This gauge two-point function therefore has a different spectral interpretation from a positive physical matter current. The sign is not evidence for a negative-probability physical final state.

## A positive-current spin-one comparison

For comparison take a charged complex Proca particle with a charge-plus-Pauli vertex and gyromagnetic factor $g$. This model assumes the pointlike two-derivative on-shell current and no higher form factors in the specified pair window. The pair matrix element is proportional to
$$
 (p_+-p_-)_\mu(\varepsilon_+\cdot\varepsilon_-)
 + g[(p_-\cdot\varepsilon_+)\varepsilon_{-\mu}
      -(p_+\cdot\varepsilon_-)\varepsilon_{+\mu}].
$$
Polarizing in the pair rest frame, the two aligned transverse channels give coefficient two relative to a scalar pair. The four mixed transverse and longitudinal channels give $g^2s/m^2$. The longitudinal pair gives $[1+(g-1)s/(2m^2)]^2$. Multiplying by the scalar two-particle spectral norm gives the positive density
$$
 \rho_g(s)=\frac{Q^2\beta^3}{48\pi^2}
 \left[2+g^2s/m^2+
          \left(1+(g-1)s/(2m^2)\right)^2\right].
$$
This result is an on-shell calculation under the stated vertex. In particular its value at $g=2$ cannot be substituted for the gauge-completed background-field contribution.

Restrict the positive pair integral to $4m_W^2\le s\le(500\ {\rm GeV})^2$. From spacelike momenta $125$ to $250$ GeV its magnitude in inverse-alpha units is
$$
 0.80045 g^2-1.23229g+0.57575\ \geq\ 0.10148
$$
by numerical integration (Python, SciPy). This is the screening contribution restricted to this window, with no continuation of the local Proca vertex past the omitted threshold. At high $s$ the Proca polynomial grows, so the full subtracted inverse function can require derivative counterterms. An ordinary current with unknown form factors or a gauge rearrangement need not satisfy the numerical window bound. If one does assume a positive spectral sector and polynomial subtractions through $t^2$, the third divided difference at four spacelike points removes those local polynomials. Its contribution is $-\int \rho_g(s)\,ds/\prod_{i=0}^3(s+t_i)$. This follows directly by taking the divided differences of $1/(s+t)$ in the subtracted dispersion relation. It gives a finite spectral test with a prescribed subtraction order.

For a different control, assume a once-subtracted positive physical current with spectral support $s\ge s_0$. Let $D=I(a)-I(b)$ at $0<a<b$, with $a,b$ squared momenta. The Thomson shift at $a$ then obeys
$$
 \frac{a}{b-a}D\ \le I(0)-I(a)\
 \le \frac{a}{b-a}\left(1+\frac b{s_0}\right)D .
$$
The ratio of the Thomson kernel to the two-point-difference kernel is $a(1+b/s)/(b-a)$. This inequality has the stated positive and once-subtracted hypotheses.

## The vortex-neutral spectator shells

**Proposition 96.2.** For the spectator list of 90 on a round sphere, with minimal Dirac operators and no circle copies in the quotient action, the nonlocal part of the photon response after the local terms of degree at most two in $t$ are specified is absolutely convergent. Its magnitude in inverse-alpha units satisfies
$$
 |\Delta\alpha^{-1}_{\rm spec,\,sub}(t)|
 \le
 \frac{(Qr)^6}{945\pi}
 \left[\frac{2A}{3}\zeta(3)+2\left(B-\frac A{12}\right)\zeta(5)\right],
 \qquad Q=\sqrt t,\quad A=114,\quad B=\frac{241}{6}.
$$
In this formula $B$ is a hypercharge-square sum, independent of the colour radius elsewhere.

**Proof.** Each six-dimensional Weyl field at degree zero supplies a four-dimensional Dirac shell of mass $\ell/r$ with weak spin $j=\ell-1/2$, $\ell\ge1$. Its charges are $m+Y$ for $-j\le m\le j$. The sum of their squares is $(2\ell/3)(\ell^2-1/4)+2\ell Y^2$. Sum with unsigned colour dimensions over the neutral partners and the extra matter table of 90. There are $36+78=114$ complex gauge components and the sum of squared hypercharges is $9+187/6=241/6$. Thus the charge-square sum of shell $\ell$ is $S_\ell=(2A/3)\ell^3+2(B-A/12)\ell$. A single Dirac loop contributes $-Q_f^2\int x(1-x)\log(1+x(1-x)t/m^2)dx/(2\pi^2)$ to its inverse kinetic difference. Subtract the Taylor terms linear and quadratic in $t$. Since $0\le\log(1+y)-y+y^2/2\le y^3/3$ for $y\ge0$, one can sum the remainder against $S_\ell/\ell^6$. The Feynman-parameter integral is $1/630$. Multiplying by $4\pi$ gives the stated bound. This also gives the signed leading term by dominated convergence. The unsubtracted tower derivatives are local data in this comparison. $\square$

At the matching points of the $500$ and $800$ GeV examples of 92, use $r=\sqrt2a$. The bound on this nonlocal remainder is about $1.92\times10^{-10}$ and $1.96\times10^{-10}$ in inverse-alpha units. The isolated first shell has charge-square sum $412/3$ and an ordinary screening magnitude below $0.0046$ at the first point. Higher shells must use the specified local subtractions. No bound on their finite local coefficients follows from the small nonlocal remainder. [Spectator representations](90_a_tensor_completion_without_light_mirrors.md) · [Identified threshold](95_coloured_threshold_in_the_quotient_tensor_action.md)

## Matching the Thomson charge along the path

The fixed-bare-$I_Q$ path of 93 specifies one geometrical trajectory. Physical matching can instead set $I_{\rm Th}=I_T+I_\chi+I_\varphi+\Delta_{\rm match}$ with the quantum correction in a common scheme, at fixed $a,b$ and colour norm. The circle formula gives $L\propto B^{-6}$. Hence the geometric derivative is
$$
 \partial_{\log B}(I_T+I_\chi+I_\varphi)=-14I_\chi-2I_\varphi .
$$
For a specified small smooth threshold correction (also in derivative norm) and a positive margin in the residual photon coefficient, the implicit function theorem gives a unique nearby physical-charge calibration of the two radii. The first-order changes are $\Delta\log B=\Delta_{\rm match}/(14I_\chi+2I_\varphi)$ and $\Delta\log L=-6\Delta\log B$ when starting at the matched bare radius in this convention. The inverse remains regular on a finite-neck segment with margin and at its fixed-shape shrink. Keeping the original radii as well as the physical charge instead requires a cancellation among the full threshold terms. Bounded corrections cannot offset the divergent tensor cost on the indefinitely long neck of this action. This gives a matching prescription conditional on the full threshold function. Neither the weak comparator nor the spectator loop computes that function. [Fixed-norm trajectory](93_tensor_photon_and_the_five_dimensional_pole.md)

The Python calculation can be reproduced with the gauge-multiplet, physical-pair and spectator inputs held separate. [Numerical benchmarks](../paper/photon_matching_benchmarks.py)

**Provenance.** Gauge-multiplet comparison, Proca polarization sum, spectator bound and radius calibration by gpt-6.2-sol ultra with the matching calculations. Claude Opus 5.5 checked every ledger claim of this file by hand on 20 November 2026 and found no error (ledger `checked_by` rows). The claims of this file that rest on the numerical fits still referee pending (results 92, 93 and 97) hold given those fits (ledger `awaits_pending` rows).
