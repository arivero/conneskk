# Charged levels and gauge normalizations on a helical weak sphere

Let the internal metric be
$$
 G=B^2g_{\rm FS}+L^2d\chi^2+a^2 h_{b,n_\chi}
 \quad\hbox{on }\mathbb{CP}^2\times S^1\times S^2 .
$$
Use the equal-area coordinates, vortex family and product-frame Einstein coefficient $C=1/(2\kappa_{11}^2)$ of result 57. The winding $k$ is a fixed positive integer, the period of $\chi$ is $2\pi$, and $0<\beta<\pi/2$ unless a limit is specified. We vary the scale $a$, shape $b$, and colour and circle radii $B,L$. We measure electric charge, the number of modes below a specified energy, and the kinetic coefficients before four-dimensional running. Let $A_b=4\pi r_b^2$ be the unscaled area, $v_4=\operatorname{Vol}(\mathbb{CP}^2,g_{\rm FS})$, $V=2\pi v_4 B^4 L a^2 A_b$, and $J_3=\langle h_{b,n_\chi}(K_3,K_3)\rangle$. The shared electric generator is $Q=K_3+k^{-1}\partial_\chi$. All results below on varying metrics are kinematic unless an action and source are explicitly specified. [Helical metric and vector form](57_helical_weak_sphere.md) · [Vortex profiles](55_gravitating_vortex_cylinder.md)

## The charged five-dimensional window

**Theorem 59.1.** For the nonnegative scalar Laplacian, fibre averaging over the weak sphere is a reducing orthogonal projection. Its range has levels and electric charges
$$
 M_{jn}^2=\frac{4j(j+2)}{B^2}+\frac{n^2}{L^2},
 \qquad q_{jn}=\frac{n}{k},\qquad
 j\geq0,\quad n\in\mathbb Z .
$$
The multiplicity at fixed $j,n$ is $(j+1)^3$. On the orthogonal complement the squared mass is at least $\lambda_1(h_b)/a^2$, where $\lambda_1$ is the first positive scalar eigenvalue. Thus for $E<\sqrt{\lambda_1(h_b)}/a$ the formula counts the *entire* window at $E$. Its first charged level is present if $EL\geq1$.

**Proof.** In the original product coordinates the weak area density is independent of $\chi$. The average commutes with the circle derivative and with the base Laplacian, and integration of the vertical Laplacian on the closed sphere gives zero. Separation on its range gives the displayed formula, with $-i\mathcal L_Q=n/k$. The sphere-mean-zero part of the positive energy is bounded below slice by slice by the Poincaré inequality. For the base spectrum lift functions to Hopf-invariant functions on the round unit five-sphere. Harmonic polynomials of bidegree $(j,j)$ have degree $2j$ and eigenvalue $2j(2j+4)$. Removing their traces leaves $\binom{j+2}{2}^2-\binom{j+1}{2}^2=(j+1)^3$ functions. These modes exhaust the invariant scalar harmonics. $\square$

In the Einstein kinetic form let $I_3=g_{3,*}^{-2}$ and $I_Q=e_{*,Q}^{-2}$ for one normalized colour generator and for $Q$ in the stated charge convention. The asterisk denotes tree matching. The exact coefficients are
$$
 I_3=CV B^2/8,\qquad I_Q=CV(L^2/k^2+a^2J_3).
$$
The first is the projective Killing norm. The two summands of $Q$ are metric-orthogonal in the fixed product coordinates. The powers of $a$ follow by scaling the weak area and the norm of $K_3$ separately. Put $V_0=2\pi v_4 B_0^4L_0 A_b$. At fixed shape we obtain the following table.

| Observable | $B=B_0,\ L=L_0$ | $B=B_0a^{-2/7},\ L=L_0a^{-2/7}$ |
|---|---|---|
| Volume | $V_0 a^2$ | $V_0 a^{4/7}$ |
| First charged scalar, charge $1/k$ | $1/L_0$ | $a^{2/7}/L_0$ |
| First colour-adjoint base harmonic, charge zero | $\sqrt{12}/B_0$ | $a^{2/7}\sqrt{12}/B_0$ |
| Lower bound on the sphere-dependent mass | $\sqrt{\lambda_1(h_b)}/a$ | $\sqrt{\lambda_1(h_b)}/a$ |
| $I_3$ | $CV_0B_0^2a^2/8$ | $CV_0B_0^2/8$ |
| $I_Q$ | $CV_0(a^2L_0^2/k^2+a^4J_3)$ | $CV_0(L_0^2/k^2+a^{18/7}J_3)$ |

A coloured *vector* threshold also descends. In the divergence-free Einstein vector problem, multiplying a colour Killing field by $e^{in\chi}$ gives squared mass $n^2/L^2$. Multiplying $Q$ by a first base scalar harmonic gives an adjoint multiplet at $12/B^2$. Indeed on a Riemannian product the operator of $\|\mathcal L_XG\|^2/2$ on solenoidal fields is the solenoidal compression of $\nabla^*\nabla-\mathrm{Ric}$. A Killing field is annihilated on its own factor. Multiplying it by a scalar eigenfunction on the other factor preserves zero divergence and adds precisely the scalar eigenvalue. Therefore a four-dimensional EFT retaining massless gluons and omitting all their coloured KK partners must match below
$$
 \Delta_{\rm col}^{\rm upper}=\min(1/L,\sqrt{12}/B).
$$
This is an upper bound on the first omitted coloured threshold. Lighter coloured matter or further vector polarizations can lower it. The two paths separate finite geometric matching norms from a fixed upper threshold in GeV. The other bundle in the lecture supplies an independent test of charge survival: for Euler class $h+k_{\rm w}$ a shrinking weak sphere of radius $r$ costs at least $|n|/(2r^2)$ in squared mass on a nonzero fibre Fourier mode. [Twisted circle comparison, Exercises 9–11](../paper/kk_strings_lecture.tex)

## An absolute normalization through the six-dimensional band

**Proposition 59.2.** For each $a,b>0$, tilt and prescribed positive $I_3,I_Q$, there is a unique pair $B,L>0$ realizing both tree coefficients on this metric. Put $d>0$ and set $a=d/P_b$ on the whole family. The physical meridian length is $d$. As the vortex neck length $P_b$ tends to infinity, both $B$ and $L$ grow as $P_b^{1/7}$, and $L/B\to k\sqrt{I_Q/(8I_3)}$.

**Proof.** Write $\gamma=a^2 A_b$, $D=2\pi v_4 C$, $c=I_Q/(8I_3)$. Eliminate $L$ from
$$
 B^6 L=\frac{8I_3}{D\gamma},\qquad
 L=k\sqrt{cB^2-a^2J_3}.
$$
The product $kB^6\sqrt{cB^2-a^2J_3}$ increases continuously from zero to infinity on the allowed half-line. At $a=d/P_b$, result 55 gives $\gamma\sim 2\sqrt2\pi d^2/P_b$ in vortex units. Positivity and result 57 give $J_3\leq 3J_b=O(P_b^2)$ even for varying tilt. Thus $B\to\infty$, $L/B\to k\sqrt c$ and $B^7\sim 8I_3/(D\gamma k\sqrt c)$. $\square$

One choice fixes the constants using only the round member and the two microscopic inputs $d,C$. Its weak radius is $r=d/\pi$, since $P_{\rm round}=\pi\sqrt2$ in vortex units. Take $B_{\rm r}^2=16r^2/3$ and $L_{\rm r}^2/k^2=10r^2/9$. The round weak Killing norm is $2r^2/3$, so $g_{3,*}^2=g_{2,*}^2=(5/3)g_{Y,*}^2$ there. This fixes $I_Q/I_3=8/3$ along Proposition 59.2. The surviving charge is a subgroup of the restored group at the round member. Holding these norms selects metrics for comparison. Stationarity under a fixed parent action is a further equation.

**Theorem 59.3.** On the path of Proposition 59.2 let $\mathcal V=2\pi L v_4B^4$ and let $N_b(E)$ count one neutral real scalar field's internal modes (including both signs of circle momentum) of mass at most $E$. Here “neutral” refers to the higher-dimensional field before KK reduction. At each fixed $E>0$,
$$
 \lim_{b\downarrow0}\frac{N_b(E)}{\mathcal V}
 =\frac{\omega_5}{(2\pi)^5}
   \sum_{s=0}^{\infty}
      \left[E^2-\frac{\pi^2 s^2}{d^2}\right]_+^{5/2}.
$$
Below $\pi/d$ the density is the five-dimensional Weyl density. At $Ed\to\infty$ *after* this limit it is asymptotic to $d\,\omega_6 E^6/(2\pi)^6$. Each compact member at sufficiently high energy has seven-dimensional Weyl growth. These are spectra on one curve with a fixed meridian length and a shared circle. The round endpoint has a restored weak rotation algebra; the dimension probed at a particular energy is a separate measurement.

**Proof.** Put the weak coordinates in the frame rotating with the axis. In circle Fourier sector $n$, $Q$ acts by $n/k$. The weak and circle part of the scalar energy with normalized sphere measure is
$$
 \int\left[
  \frac{P_b^2 f_b^2}{d^2 r_b^4}|u_z|^2+
  \frac{P_b^2}{d^2 f_b^2}|u_\varphi|^2+
  |in u/L-(k/L)Ku|^2
 \right],
$$
where $K$ is a unit-axis round rotation. The form bounds the round $H^1$ seminorm uniformly as $b\downarrow0$, by the two cap estimates in result 57. The azimuthal derivative tends to zero in $L^2$ for normalized bounded-energy sequences because $f_b^2\leq2$. For any such sequence, $\|Ku\|$ is bounded uniformly, so $|n|/L$ is bounded as well. For $n/L\to p$, compactness gives a limit depending on $z$ alone, with the last term tending to $p^2\|u\|^2$. On compact subsets of the interior the first coefficient tends to $4/d^2$. Lower semicontinuity and exhaustion give the lower bound on the whole interval. Smooth azimuth-independent functions recover it by dominated convergence using the uniform upper bound on $P_b^2 f_b^2/r_b^4$. The free endpoint traces give Neumann conditions at $z=\pm1$. Min–max gives the limiting ordered levels $p^2+(\pi s/d)^2$. Along every sequence with bounded $n/L$ the same argument applies after choosing a convergent subsequence, hence convergence is uniform on compact momentum ranges for each fixed level. The comparison with the round $H^1$ form uniformly bounds the number of weak eigenvalues below fixed $E^2$.

Finally sum the independent projective harmonics of Theorem 59.1 and the circle frequencies. Per projective volume the base spectral measure tends to the flat four-dimensional momentum measure by its Weyl law and scaling. Per circle length the Riemann sum tends to $dp/(2\pi)$. All momenta in the fixed window lie in a compact set; the boundary of each limiting momentum ball has zero limiting measure, also at zero radius. Combining these measures gives the formula. Summing the Neumann thresholds by a Riemann integral yields the stated six-dimensional coefficient. At fixed compact geometry the scalar principal symbol is the seven-dimensional metric norm. $\square$

## Curvature and the four-dimensional colour window

**Proposition 59.4.** On an unwarped external Einstein product with $\mathrm{Ric}_4=3\lambda g_4$ and matter satisfying the null energy condition, the metric above requires
$$
 -3\lambda L^2\ \geq\ \frac{k^2\sin^2\beta}{2}
       \left(\frac{r_b^4}{4}+\frac{4}{r_b^4}-2\right)
$$
in the vortex units of result 55. On the long neck the right side is asymptotic to $k^2\sin^2\beta\,P_b^2/16$. A four-dimensional QCD calculation at momenta well below $1/L$ and well above the external curvature scale would therefore require $kP_b|\sin\beta|\ll1$ in this regime.

**Proof.** The unit circle-direction field is geodesic and the area density is constant along it. The null contraction in result 57 gives $-3\lambda\geq\max|\mathrm{II}|^2$ with $\mathrm{II}=(2L)^{-1}\partial_\chi(a^2h)$. The factor $a^2$ cancels between the tensor and its norm. On one slice $K_3=\cos\beta\,K_{n_\chi}+\sin\beta\,K_\perp$. The first rotation is Killing. Evaluate the second at its fixed point on the weak equator about $n_\chi$. Its linearization is the unit tangent rotation. The two metric eigenvalues there, relative to the round tangent metric and up to the common $a^2$, are $r_b^4/2$ and $2$ because $f_b(0)^2=2$. For a diagonal metric of eigenvalue ratio $s$, the squared Lie-derivative norm at a unit rotation fixed point is $2(s+s^{-1}-2)$. Substituting $s=r_b^4/4$ and $r_b^2/P_b\to1/\sqrt2$ gives the bound. $\square$

For fixed tilt this necessary stress condition and the explicit coloured vector at $1/L$ place the flat four-dimensional hadronic matching window outside the long-neck asymptotic regime. This conclusion uses the unwarped Einstein equations, null-energy matter, and the usual approximately flat four-dimensional QCD interpretation. A tilt tending to the polar axis, a warped solution, or a different supporting action changes the test. At exactly polar tilt the sphere rotation and the pure circle translation are independently Killing. The near-polar neutral vector and its current consequently matter on a trajectory using small tilt.

Where a perturbative four-dimensional window does exist, fix a scheme and place $\mu_*$ below all omitted coloured modes. For a given active spectrum with one-loop coefficient $b_0$ and no intervening threshold, $\Lambda=\mu_*\exp[-8\pi^2 I_3(\mu_*)/b_0]$. If ordinary six-flavour QCD is valid above the top and threshold matching is continuous, $\Lambda_3=\Lambda_6^{7/9}(m_t m_b m_c)^{2/27}$. In the compensated case keeping $\mu_* B$, $m_i/\mu_*$ and the matched $I_3$ fixed gives constant $\Lambda_3 B$. This comparison prescribes the threshold ratios. A dynamical determination requires the fermion spectrum. $H_N=(m_p+m_n)/6$ further needs quarks and their independent hadronic matrix elements with a QCD/QED convention. The scalar test space and the Einstein kinetic form determine neither input. [Threshold conventions](issues/18.md) · [Measured scales](issues/19.md)

**Provenance.** Derived by GPT-6.2-Astra max from the helical family. Claude Opus 5.5 checked every ledger claim of this file by hand on 20 November 2026 and found no error (ledger `checked_by` rows).
