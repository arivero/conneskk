# A finite weak fit with both tensor polarizations

Fix the flux integers and matter charges of 90, the polar projective fibration and the lifted electric generator of 78. Vary the weak shape, root stiffness, ratio of weak to circle radii and the positive coefficient of one nonchiral tensor. We calculate the transverse weak poles, charged and neutral contacts and massless photon norm in the same action. The colour-singlet vector calculation uses zero circle frequency, the chosen vertical tangent connection in the Green–Schwarz term, and the existing polar background. It is a six-dimensional tensor comparison on that fibration. The eleven-dimensional lift, wall inflow and finite quantum corrections are separate.

## The electric Bianchi identity and magnetic field equation

**Proposition 92.1.** Let the six-dimensional tensor have kinetic coefficient $Z_6>0$. Its electric and magnetic field strengths have periods normalized by the electric string holonomy and the dual coefficient is $Z_D=1/(4\pi^2Z_6)$. In the colour-singlet transverse sector the quadratic action is described by two copies of a coexact one-form pencil on the weak sphere, coming from distinct polarizations of a single nonchiral six-dimensional field. For weak-surface vector profile $X$ and vortex gauge profile $z$, their internal source two-forms are
$$
 \beta_e=\frac{zF_A}{\pi},\qquad
 \beta_m=\frac{7zF_A-\ell(X)R_\Sigma/2}{\pi},
 \qquad \ell(X)=-\tfrac12*_\Sigma dX^\flat .
$$
Here $R_\Sigma$ is the curvature of the oriented vertical tangent connection, as a real two-form. The whole static charged contact at the same geometry is unchanged by the tensor, while the pole positions and residues generally vary. The exact photon is retained by the two compensators.

**Proof.** In the split tangent connection use the vertical $SO(2)$ projection of the Kaluza–Klein Levi-Civita connection and the flat external summand. Varying the vertical connection in a local orthonormal frame gives the antisymmetric derivative $\ell(X)$ on its external leg. For example in axial coordinates its background form is $-f_s\,d\varphi$, $f_s=f'/f$, and $X=U(t)\partial_\varphi$ gives $-f_s U-U'/2$. The flux transgression of $v^2$ gives $zF_A/\pi$. In the magnetic polynomial of 90 the term $7v^2$ gives seven times this source, and $-p_1/2$ contributes $-\ell R_\Sigma/(2\pi)$ since $p_1$ of the oriented tangent two-plane is its squared first Chern class. The other external curvatures have zero background in this linear sector. Choosing the split connection specifies the representative used in the kinetic calculation. Chern–Simons changes of representative with additional local terms may change the pencil.

With zero background three-form the electric fluctuation is $dB-A\wedge\beta_e$ for each external vector $A$ (the source maps are linear in the profiles), and the magnetic term is $B\wedge d_4(A\wedge\beta_m)/(2\pi)$ up to orientation. Keep the harmonic internal period of $B_{0,2}$, take $B_{1,1}$ coexact in the internal index, and use the gauge freedom for the other nonharmonic longitudinal components. The contributions of $d_4 B_{1,1}$ and $d_\Sigma B_{2,0}$ to type $(2,1)$ are orthogonal by the exact–coexact decomposition. The magnetic source pairs only with $B_{2,0}$. For an internal scalar eigenfunction $\phi$ of eigenvalue $\lambda>0$, its $B_{2,0}$ piece is a four-dimensional massive two-form. Dualizing with a first-order Lagrange multiplier of normalization $1/(2\pi)$ and shifting by the source gives the vector quadratic form
$$
 Z_D\left(\frac{\|d_4 c\|^2}{\lambda}+\|c-\beta_{m,\phi}(A)\|^2\right)
$$
with transverse sign conventions for the energy. Its internal coexact profile is $\eta_\phi$ with $d_\Sigma\eta_\phi=\phi\,dV_\Sigma$ and norm squared $1/\lambda$. The harmonic mode dualizes to the charge-fourteen scalar. This gives the stated magnetic pencil, and the electric one comes directly from $B_{1,1}$ with coefficient $Z_6$. Both have positive oscillator kinetic norms. Standard electric–magnetic exchange in six dimensions exchanges the Bianchi identity and the equation of motion. [Six-dimensional duality comparison](https://arxiv.org/abs/hep-th/9601036)

For a charged axial weight the integrals of both sources over the sphere vanish. At zero external momentum their mass costs can be set to zero using $d_\Sigma^{-1}$ on the coexact subspace. The tensor has no independent fermion source. For the neutral photon $X=\partial_\varphi$, $z=\mu$, the two source periods also vanish. With $p=|\Phi|^2$, $A'=(1-p)f^2/4$, and $R=(p u_t^2+(1-p)^2 f^2)/2$, one has $\mu'=A'$, $f_s=(1-p)u_t/2$ and $R=-f_s'$. The regular polar primitives of the two two-forms times $16\pi$ have coefficients $-f^2$ and
$$
 \Phi_m=-7 f^2+4(1-f_s^2).
$$
In particular $\Phi_m'=16(7A'\mu+f_s R/2)$. These are the two coexact profiles of the massless connection. They leave its action on every charged field equal to that of the original lift. $\square$

For the full axial pencil extend the neutral variables of 78 to $U,Z,W,P_e,P_m$, with $z=\mu U+Z$. Put $D_b=\int f^2dt$ and write the canonical internal two-form vector profiles as $(P_e-\gamma_e f^2 U)\,d\varphi$ and $(P_m+\gamma_m\Phi_m U)\,d\varphi$. The extra magnetic row in the mass form is the square of
$$
 P_m'+\gamma_m(\Phi_m-4R)U'-112\gamma_m A'Z
$$
with the same measure $dt/(D_b f^2)$ as in 78. The electric row is unchanged. In the charged pencil the magnetic residual for a stream $F(t)e^{i\varphi}$ and vortex profile $Z(t)e^{i\varphi}$ is $d_\Sigma\eta_m-16\gamma_m(7 A'Z-R\ell(X)/2)\,dt\wedge d\varphi$ in the canonical tensor units, and the stream gives $\ell(X)=-(F-F'')/(2 f^2)$ with its azimuthal factor. These formulas give the finite Galerkin forms. The dimensionless coefficients satisfy
$$
 \gamma_e\gamma_m=\frac{D_b}{256\pi^2 C V a^2},
 \qquad \frac{\gamma_e}{\gamma_m}=2\pi Z_6 .
$$
The constraint follows from $\mathcal A_\Sigma=2\pi a^2D_b$ and the two kinetic coefficients in 90. The numerical fit uses this product to determine $CVa^2$ and hence the photon residue. Fitting a separate electric coupling would lose this condition.

## Round spectrum and the two inverse branches

**Proposition 92.2.** On the round weak sphere the restored rotation triplet contributes
$$
 I_W=\frac{2CVr^2}{3}(2+\gamma_e^2+25\gamma_m^2),
 \qquad M_{v,0}^2=\frac{2}{r^2}(\gamma_e^2+49\gamma_m^2).
$$
Let $M_D^2=2/r^2$ denote the independent circle-profile angular pole and $\lambda_j=M_j^2/M_D^2$ the three nonzero poles of the rotation–vortex–tensor block. Writing $T=\sum\lambda_j$, $D=\prod\lambda_j$, the vortex singlet gives $M_{v,0}^2/M_D^2=(6T+D-26)/7$.

**Proof.** The round tangent curvature is twice the vortex curvature, and the rotation moment is twice the vortex lift. Thus on the rotation lift the magnetic coefficient is five times the electric coefficient, while on an independent constant vortex field it is seven. In canonical coordinates $(u,z,b_e,b_m)$ the residual rows are $(1,1,0,0)$, $(0,\gamma_e,1,0)$ and $(2\gamma_m,7\gamma_m,0,1)$. Their null vector is $(1,-1,\gamma_e,5\gamma_m)$. Its norm gives $I_W$. The constant vortex sees the two harmonic period masses, giving the second formula. If $R_*$ is the matrix of the rows, the three nonzero squared masses in units $M_D^2$ are the eigenvalues of $R_*R_*^T$. Their sum is $4+\gamma_e^2+53\gamma_m^2$ and their product is $2+\gamma_e^2+25\gamma_m^2$ by the squared minors. Substitution gives the relation. $\square$

For the leading inverse use the same five-observable light formulas as 78. They fix $I_W,I_Y,v_F,v_A$ and the ratio of the root and vortex order parameters. Write $\lambda=f_e/(7f_m)$, $\mu_L=1/L$ and
$$
 P=\frac{14 I_Y k^2\mu_L^2}{3\pi^2 v_A^2},
 \qquad A_+=\frac{7}{48\pi^2},\qquad A_-=\frac{25}{336\pi^2}.
$$
Then the remaining equation for $\lambda>0$ is
$$
 (P+A_+)\lambda+(P+A_-)/\lambda=I_W .
$$
Indeed $CV=I_Y k^2\mu_L^2$, $r^2=7(\lambda+\lambda^{-1})/(2\pi^2v_A^2)$ and the tensor contribution to $I_W$ is $r^2(f_e^2+25 f_m^2)/6$. A pair of positive roots exists for $P<[\sqrt{I_W^2+(A_+-A_-)^2}-A_+-A_-]/2$, with a double root at equality. This bound preserves the relation between the two periods, the neutral contacts and the circle. The finite calculation uses each positive solution as a seed and also follows the inverse with $\lambda$ fixed and $\mu_L$ free through its local fold.

## Numerical finite solutions and threshold placement

**Numerical calculation (Python, SciPy).** Use the pole masses and neutral scattering convention of 78, $k=6$ and equal root norms. With central $G_F,g_V,g_A$ held fixed, the leading fold is at $\mu_L=580.40$ GeV and the finite numerical fold near it is at $\mu_L=580.21$ GeV. At $500$ GeV the two finite branches have the same fitted light poles and contacts but different tensor ratios and heavy neutral poles:

| Observable | Lower $f_e/(7f_m)$ | Higher $f_e/(7f_m)$ |
|---|---:|---:|
| $f_e/(7f_m)$ | 0.44525 | 2.22747 |
| $a/L$ | 0.055553 | 0.055400 |
| $f_e,f_m$ (GeV) | 1264.45, 405.70 | 2835.99, 181.88 |
| $M_v$ (GeV) | 1665.93 | 1670.53 |
| $Z_6$ | 0.49604 | 2.48159 |
| $e_*^2$ | 0.09807631 | 0.09807635 |

At the lower branch $Q_W^p+Q_W^e=-0.01880$, the charged pole accounts for $0.9999872$ of the total static contact, and the ordinary $Z$ has vanishing right-neutrino residue in the reflection-symmetric pencil. The first vortex pole carries virtually all the right-neutrino spectral weight. The heavy poles and their distinct residues can separate the two branches; a tree fit based on five light constraints cannot. [Pole masses and widths](https://pdg.lbl.gov/2026/tables/rpp2026-sum-gauge-higgs-bosons.pdf) · [Neutral scattering](https://doi.org/10.1016/0370-2693(94)91421-4)

Using the pole widths and angle together with the neutrino scattering ratio to **hold out the muon contact** gives a higher finite fold near $828.91$ GeV. At $800$ GeV the lower ratio is $0.68217$, $f_e=2494.80$ GeV, $f_m=522.45$ GeV and the vortex pole is at $2364.72$ GeV. The predicted $G_F=1.160934\times10^{-5}$ GeV$^{-2}$ combines with the independent physical-mass lattice $H_N=0.312$ GeV to give $\Xi=1.13010\times10^{-6}$. This calculation uses the same approximate pole-width subtraction as 78. Neither the locus of a quantum compactification nor a precision weak fit follows from these Born inputs. Varying the measured neutrino scattering amplitude changes the significance of the positive central fitted $d_v$ and hence the upper scale in this test. [Solver and reproduction commands](../paper/dual_tensor_currents.py) · [Physical-mass lattice reference](https://arxiv.org/abs/0906.3599)

The $500$ and $800$ GeV points place the circle threshold below the $1$ TeV reference of 76. If the same projective colour kinetic normalization and hierarchy hold, with no new coloured threshold below $1/L$, one can match in six-flavour QCD at $250$ and $400$ GeV respectively. Five-loop CRunDec evolution with the masses and decoupling convention of 76 gives $\alpha_3^{(6)}=0.10337,0.09791$, and $I_3=0.76985,0.81275$. Identifying these low-scale renormalized inputs numerically with the respective classical projective colour coefficients defines the tree radii $B^{-1}=4.79,7.45$ TeV and $M_g/H_N=1603,2564$ at $H_N=0.312$ GeV. The ordinary charged spectral comparison at the same spacelike scales gives $\alpha_{\rm ord}^{-1}=127.4166,126.6839$, leaving the fitted inverse charge higher by about $0.71,1.41$ respectively. Weak, spectator and compactification threshold terms must still be computed. The right-neutrino vortex pole lies above the circle gap but lies in the zero-frequency source block at tree level. Loops do not have this projection. The inferred reduced Planck coefficients of the benchmark are about $11.89,19.00$ TeV. Direct identification with observed gravity fails here. The upper bound came from keeping the positive **central** extra vortex contact. Taking that extra contact small changes the bound and leaves a separate high-scale matching problem. [CRunDec matching](https://arxiv.org/abs/1703.03751) · [Electromagnetic and strong input conventions](76_charged_deformations_and_thomson_matching.md)

**Provenance.** Finite tensor reduction, inverse and numerical checks by gpt-6.2-sol ultra with the tensor and matching calculations in this turn. Independent scientific review is pending.
