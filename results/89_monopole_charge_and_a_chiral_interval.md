# A monopole and an adjoint Higgs gradient on a chiral interval

Use the $A_6$ gauge algebra and the matter charge table of 88 on a seven-dimensional gauge sector. The internal gauge space is a weak two-sphere and one longitudinal coordinate. We fix its flux, identify the charged vector fluctuation that can destabilize this embedding, and vary an adjoint Higgs profile. The observables are a spinor zero mode, its chiral weak vertex, and its mass overlap on a finite interval. The calculation uses a prescribed metric. Incorporating its stress in a compact gravitational vacuum is a separate equation.

For the monopole sphere and its chiral fermion spectrum, a six-dimensional Einstein–Maxwell precedent is the compactification of Randjbar-Daemi, Salam and Strathdee. The adjoint gradient and interval projectors below are extra inputs. [Nucl. Phys. B 214 (1983), 491](https://doi.org/10.1016/0550-3213(83)90247-X)

## The charged vector and the Bogomolny background

**Proposition 89.1.** Take ordinary Yang–Mills theory with one Hermitian adjoint scalar $\varphi$ and positive energy $\int (|F|^2+|D\varphi|^2)$ on $S^2_r\times\mathbb R_y$. For a root of positive monopole degree $N$, let $q=N/2$. If $\varphi$ is constant with root mass $\mu$, a charged tangential vector has lowest squared mass $\mu^2-q/r^2$ for $N\ge2$. There is instead a Cartan Bogomolny solution
$$
 F=H\,\mathrm{vol}_{S^2}/(2r^2),\qquad
 \varphi=\varphi_0+Hy/(2r^2),\qquad [H,\varphi_0]=0 ,
$$
where $H$ evaluates to $N$ on the root. Its full gauge–adjoint-scalar second variation is nonnegative on compactly supported physical perturbations. The root has normalizable zero modes of weak spin $q$ in the longitudinal connection–scalar sector and, for $N\ge2$, of weak spin $q-1$ in the tangential connection.

**Proof.** In background gauge the tangential one-form of lower helicity is in the line of degree $N-2$. The rough Laplacian has eigenvalues $[j(j+1)-(q-1)^2]/r^2$, $j=|q-1|,|q-1|+1,\ldots$. Add $1/r^2$ from Ricci and $-2q/r^2$ from the vector magnetic moment. At $j=q-1$ this gives $-q/r^2$ for $q\ge1$. The opposite helicity has larger lowest spin. The negative multiplet is transverse, since the ghost scalar harmonics start at $j=q$. Adding a constant commuting Higgs gives the stated shift. A purely Wilson-line lift on a circle of radius $L$ adds at most $1/(4L^2)$ to the lowest longitudinal mode. For the degree-two quark-doublet root this cannot by itself stabilize a light $\mu r\ll1$ in flat external space when $r/L\ll1$. This test concerns adjoint magnetic **gauge vectors**. A charged matter spinor need not come with such a vector. [Non-Abelian monopole instability](https://arxiv.org/abs/0909.2523)

In the second background $F=*_{3}D\varphi$. The energy completes into $\|F-*D\varphi\|^2$ and a boundary integral of $\operatorname{tr}(\varphi F)$. This proves the equations and positivity for the stated variations, including all Lie components. For the given root write $\mu(y)=b(y-y_0)$, $b=q/r^2$. The longitudinal oscillator $-\partial_y^2+\mu(y)^2$ has ground eigenvalue $b$. In the tangential multiplet just found it cancels the negative sphere eigenvalue. In the $(A_y,\delta\varphi)$ block the scalar monopole Laplacian starts at $q/r^2$, and the lower helicity has an additional $-2b$ from $D_y\varphi$. Thus the $j=q$ lowest scalar harmonic times the oscillator ground state is also a zero mode. These formulas follow equivalently by treating $\varphi$ as a translation-invariant fourth gauge component and using the self-dual four-dimensional fluctuation operator. The scalar ghost operator starts at $q/r^2+b>0$; the zero modes obey background gauge. All other helicities or oscillator excitations in the charged block have positive energy. For $N=1$ the second block supplies a doublet; for $N=2$ the two blocks supply a triplet and a singlet. Their spin differs from the spinorial kernel $(N-1)/2$. Identifying ordinary four-dimensional superpartners would require a supercharge with the appropriate gauge action. $\square$

The solution on the whole line has constant energy per unit length. It defines a local mass crossing and a comparison at fixed flux. On a finite interval one may fix the internal tangential connection and $\varphi$ at the ends so the Bogomolny boundary term is fixed; then the bulk gauge Hessian stays nonnegative. The detailed zero multiplicities of the infinite-line bosonic oscillator need not survive those boundary conditions. The following finite construction gives the actual light matter and scalar domains separately.

## Fermions on the interval and their Yukawa overlaps

**Proposition 89.2.** There is a finite-interval fibration gauge model with the charge table of 88 in which the ordinary left doublets and right singlets, including coloured Dirac pairs after a small root expectation value, have explicitly normalized wavefunctions. The representation choices of its fermions, its boundary group and its scalar mass squares are microscopic inputs. Separate copies give separate families. This model uses the ADE hypercharge generator on its walls.

**Construction.** Take two independent complex seven-dimensional Dirac probe fields in the complexified adjoint representation, with couplings $+\operatorname{ad}\varphi$ and $-\operatorname{ad}\varphi$. In the first field keep the root bundles $E_{a5}$, and in the second $E_{a6},E_{a7}$, $1\le a\le4$. At both ends select the six-dimensional boundary Weyl sign that gives four-dimensional left chirality on the positive sphere kernel for the first fields and right chirality for the second. Select opposite end signs for every untargeted bundle. This is a local boundary projector on the prescribed sphere–interval fibration. All three colour entries of a block have the same condition. The boundary gauge group must preserve those projectors. It may retain the colour, hypercharge and vortex gauge connections with Neumann external boundary conditions, and set the external connection perpendicular to that subalgebra to zero on the walls. This removes extra constant gauge modes which would occur on an unrestricted circle. A single complex field on a retained root has its ordinary antiparticle. The separate same-chirality vectorlike partners that would be supplied by retaining the opposite roots in the adjoint are projected explicitly here.

Here is a check of the full fermion zero count. In each charge sector a nonzero angular pair with absolute sphere Dirac eigenvalue $\lambda>0$ has a basis in which the zero-energy longitudinal equation on one external chirality is
$$
 \partial_yP=-\mu P-\lambda R,\qquad \partial_y R=\mu R-\lambda P .
$$
A boundary Weyl sign sets one of $P,R$ to zero at each end. Since $\partial_y\operatorname{Re}(\bar P R)=-\lambda(|P|^2+|R|^2)$, the only such solution is zero. The adjoint external chirality has the corresponding reversed transport and the same conclusion. For $\lambda=0$ the sphere spinor has one sign of angular chirality, and each allowed component obeys a scalar first-order equation. Equal end signs keep one solution of the prescribed chirality, unequal signs keep none. The boundary pairing of the internal mass operator pairs opposite external chiralities with the normal sphere-chirality matrix. The allowed boundary subspace is maximal isotropic. At nonzero tangential momentum the two sphere components of a decaying principal-symbol mode have equal norm, so the pure sphere-chirality boundary line gives the elliptic boundary condition on each external chirality. Compactness then gives an isolated zero cluster. Degree-zero spectators have no sphere Dirac kernel. The index count holds on a smooth nonround two-sphere as well, with its actual holomorphic kernels.

For either selected chirality the chosen mass sign gives the normalized factor
$$
 g_{b,c}(y)=
 \frac{\exp[-b(y-c)^2/2]}
 {[\int_I\exp(-b(s-c)^2)ds]^{1/2}},
 \qquad b=N/(2r^2).
$$
The sphere factors are the singlet and doublet sections of 88. The geometric rotation acting on a normalized doublet is the ordinary spin-$1/2$ raising matrix. The two components have the same $g_{b,c}$, so their longitudinal overlap in this vertex is one. On the right singlet the raising vertex is zero. The constant colour gluon acts by the same fundamental matrices on both quark chiralities.

For an explicit scalar interaction add complex adjoint matter $S^{u,d}$ with external kinetic terms and positive internal squares $\|(D_y+\operatorname{ad}\varphi)S\|^2+2\|\bar\partial_A S\|^2$. Use the natural first-order Robin condition in the retained scalar components. The profiles in $E_{65},E_{75}$ equal the degree-one holomorphic sphere sections times $g_{b,c_H}$ with $b=1/(2r^2)$. Choosing the neutral member in each doublet gives a zero of both squares and preserves $Q=T_3+Y$. These are specified matter fields with a kinetic operator. In particular their Yukawas can connect the two independent Dirac species by $\operatorname{tr}\bar F[S,G]$ and its adjoint. Assigning a gauge fluctuation the same table entry without verifying this spin and species contraction would not establish a chiral mass.

Let $c_s,c_H,c_d$ be the mass crossings of the singlet, scalar and doublet root of one link. The Lie-root relation gives $2c_d=c_s+c_H$. Write $N_b(c)$ for the normalizing prefactor of $g_{b,c}$. For unit angular scalar and spinor sections of the matched weight, the internal overlap multiplying the microscopic Yukawa is
$$
 \mathcal Y_{\rm int}=
 \frac{1}{\sqrt{4\pi r^2}}\,
 \frac{N_b(c_s)N_b(c_H)}{N_{2b}(c_d)}
 \exp[-b(c_s-c_H)^2/4].
$$
The degree-one singlet spinor has constant modulus $1/\sqrt{4\pi r^2}$ on the round sphere. Multiplying by the matched holomorphic scalar gives the normalized doublet up to that factor and a phase. Completing the square in the product of the two longitudinal Gaussians gives the displayed integral. On the whole line the prefactor ratio is $(b/(2\pi))^{1/4}$. It has dimension length$^{-1/2}$, giving the correct dimensionless four-dimensional Yukawa for a canonically normalized seven-dimensional coupling of dimension length$^{3/2}$. On a compact slab the nonzero product gives, for small expectation value relative to the complementary gap, an ordinary Dirac mass between equal-colour and equal-charge states. The omitted mixing with massive states is of second order in the mass perturbation divided by the gap. Both weak root components, the two coloured chiralities and the charge-raising current have thus been tested separately. $\square$

**A mass-link relation on one family.** For colour-preserving diagonal intercepts $h_c,h_\ell,h_5,h_6,h_7$ of $\varphi_0$, take a microscopic up-link coefficient common to quark and neutrino, and a down-link coefficient common to quark and electron. On the line, or for crossings many localization widths inside the walls, the four overlaps give
$$
 \log\left|\frac{Y_uY_e}{Y_dY_\nu}\right|
   =2r^2(h_6-h_7)(h_c-h_\ell).
$$
Indeed the singlet–scalar separations are $(2h_j-h_i-h_5)/b$ for $i=c,\ell$ and $j=6,7$. Alternating their squares in the preceding Gaussian leaves just the displayed product. Its absolute value measures the product of the two flux-neutral geometric root masses $|h_6-h_7|$ and $|h_c-h_\ell|$ in sphere units. These are the right-rotation and colour–lepton root directions before any boundary gap. On a finite slab multiply the ratio by $N_b(c_{c6})N_b(c_{\ell7})/[N_b(c_{c7})N_b(c_{\ell6})]$ relative to the line result. Different microscopic flavour breaking or a Majorana neutrino changes the mass comparison.

The sphere may be replaced in this gauge-sector construction by an axially symmetric elongated metric with the same degree-one connection chosen at **constant magnetic density**. Then $F=*D\varphi$ with $b_N=2\pi N/\mathcal A_\Sigma$ still solves the internal gauge equations. The zero spinors remain holomorphic but their densities and broken currents must be recomputed. A long meridian can supply the sixth scalar direction in the probe window of 59, between an unresolved azimuthal orbit and the high-energy seven-dimensional count. The gauge equation differs from the gravitating vortex with a nonconstant density. Also a linear adjoint Higgs profile on an interval is not a periodic real Cartan scalar on a circle. The model supplies neither a translation-generated hypercharge nor an eleven-dimensional gravitational solution. Its boundary anomaly and the price of omitting mirrors are addressed in 90. Independent boundary choices, generation number and Yukawa matrices enter the result.

**Provenance of 89.1–89.2.** Gauge-sector calculation, charge-selecting interval and normalized overlap by GPT-6.2-Astra max. Claude Opus 5.5 checked the corresponding ledger claims by hand on 20 November 2026 and found no error (ledger `checked_by` rows).

## Four masses at a common matching scale

Fix the round sphere, finite interval, boundary domain, flux, intercepts and two microscopic Yukawa couplings of 89.2. Retain its Dirac neutrino and one diagonal family. Vary the two neutral scalar expectations together by a real dimensionless multiplier $\epsilon$, holding their ratio fixed. We seek the first heavy-mode correction to the four-mass ratio without fitting a light mass.

**Proposition 89.3 (quadratic fermion action).** Let $D_0$ be the self-adjoint doubled internal mass operator at zero scalar expectation, $P$ its kernel projection, $Q=1-P$, and $\Delta_F>0$ the distance of its other eigenvalues from zero. At the fixed background the scalar perturbation $\epsilon W$ is bounded. Use the two-species Yukawa of 89.2, with $|\epsilon|\|W\|<\Delta_F/4$. Put
$$
 A=PWP,\quad V=QWP,\quad W_Q=QWQ,\quad R=(QD_0Q|_{Q\mathcal H})^{-1}.
$$
Then the canonically normalized zero-momentum light mass matrix through cubic order is
$$
 M_{\rm can}=\epsilon A+\epsilon^3 C+O(\epsilon^5),\qquad
 C=V^\dagger R W_Q R V-\tfrac12\{V^\dagger R^2 V,A\}.
$$
In particular $\|C\|\le 2\|W\|^3/\Delta_F^2$. All operators in this coefficient are specified by the finite interval and its mass profiles.

*Proof.* Use the signed mass pencil $D_0+\epsilon W-z$ with canonically normalized parent kinetic term. At zero external sources, Gaussian elimination of the heavy fermions gives the light Schur complement
$$
 \epsilon A-zP-\epsilon^2 V^\dagger(QD_0Q+\epsilon W_Q-z)^{-1}V ,
$$
with the inverse taken on the heavy space. The coefficient of $-z$ is $Z=P+\epsilon^2V^\dagger(QD_0Q+\epsilon W_Q)^{-2}V$. Its quadratic form is the squared norm of a light vector together with its solved heavy component at $z=0$. Canonical normalization multiplies the mass by $Z^{-1/2}$ on both sides.

The quadratic mass contribution $V^\dagger R V$ vanishes in this family. The doubled mass operator and $W$ reverse external chirality. Give the two parent probe species signs $+,-$. The unperturbed mass preserves species and $W$ exchanges them. On the light space the species sign equals the chirality sign up to a common convention, since all retained left modes come from the first probe and all right modes from the second. A term with two $W$ insertions and one $R$ preserves species and reverses chirality, so it has zero light matrix element. By the same parity count the zero-momentum mass is odd in $\epsilon$ and $Z$ is even. Expanding the convergent inverse and both kinetic factors gives $C$. The norm bound follows from $\|R\|\le1/\Delta_F$. Higher derivatives of the pencil in $z$ give higher-derivative operators in the light action. $\square$

**Mass and current sources.** Transport the frames with the background, retaining the induced connection. Fixed projections across gauge-equivalent backgrounds can change a putative mass. Write $U,B,C_h,D_h$ for the four blocks of the regulated parent fermion kernel in these frames, allowing gauge, scalar-mass and current sources. Integration leaves $\det D_h$ and the light kernel $U-BD_h^{-1}C_h$. Its derivative in a source $j$ is
$$
 U_j-B_jD_h^{-1}C_h-BD_h^{-1}C_{h,j}
       +BD_h^{-1}D_{h,j}D_h^{-1}C_h .
$$
Use the canonically normalized legs for that vertex and differentiate any source-dependent field redefinition as well. The heavy contribution to the effective gauge action is $-\log\det D_h$. Its second derivative in two external gluon variations $i,j$ is
$$
 \operatorname{Tr}\big(D_h^{-1}D_{h,i}D_h^{-1}D_{h,j}
                   -D_h^{-1}D_{h,ij}\big).
$$
Its transverse low-momentum coefficient enters the gluon kinetic term together with the parent counterterm in the same regulator. For a finite list of minimally coupled heavy Dirac multiplets, a check on the logarithmic part of $g_{\rm low}^{-2}-g_{\rm full}^{-2}$ is $\sum_r[4T(r)/3]\log(\mu/M_r)/(8\pi^2)$ in the conventional colour normalization, with equality of the one-loop couplings at each mass up to finite matching. This follows from the change in the inverse-coupling slope at a Dirac threshold. A full tower needs a common ultraviolet prescription and the other charged sectors of the parent. [Gauge-covariant window](14_covariant_spectral_projection.md) · [Fixed-projection countertest](13_nogo_fixed_compression_not_covariant.md) · [November construction, §§97.4 and 98.3](https://github.com/yang-mills-group/OpenAI-informal-20261115/blob/6ca21d98b4022263fd7f2a3de5b5913b8495ee02/continuum-yang-mills-theory.pdf)

**Cross-ratio.** Keep all lighter modes in the four-dimensional theory. Let $\Delta_{\rm omit}>0$ be its first omitted charged threshold on the chosen background, including bosons. Choose a common $\overline{\rm MS}$ scale $\mu_*=\Delta_{\rm omit}/2$ on a member where all four masses are below $\mu_*$ and matching is perturbative. An interacting interpretation requires this physical window. Write $a_f=\langle L_f,A R_f\rangle$, $c_f=\langle L_f,C R_f\rangle$ on the normalized chiral modes of each charge. Here $R_f$ is the light right mode. Take all $a_f\ne0$ and write $\mathcal L(X)=X_u+X_e-X_d-X_\nu$. Through the displayed tree order,
$$
\begin{aligned}
 \log\frac{m_u(\mu_*)m_e(\mu_*)}{m_d(\mu_*)m_\nu(\mu_*)}
  ={}&2r^2(h_6-h_7)(h_c-h_\ell)
       +\log\frac{N_b(c_{c6})N_b(c_{\ell7})}
                       {N_b(c_{c7})N_b(c_{\ell6})}\\
    &+\epsilon^2\,\mathcal L\big(\operatorname{Re}(c_f/a_f)\big)
       +\mathcal L(\delta^{\rm match})+O(\epsilon^4).
\end{aligned}
$$
Define $\delta_f^{\rm match}=\log[m_f^{\overline{\rm MS}}(\mu_*)/m_f^{\rm can}]$ for positive masses, where $m_f^{\rm can}$ is the singular value of the canonically normalized chiral mass link at zero momentum. This keeps the finite correction explicit at the same $\epsilon$. Take the log modulus of each chiral entry in 89.3. The common up and down couplings and neutral expectation values cancel from the leading term. On the line the finite-wall normalization ratio is one. The expansion is at fixed nonzero overlaps and need not be uniform as an overlap tends to zero. At fixed $\epsilon$ the first quantum coefficient still required is $\delta_u^{(1)}+\delta_e^{(1)}-\delta_d^{(1)}-\delta_\nu^{(1)}$, from parent minus effective-theory two-point and source vertices in the same scheme. A numerical value requires the regulated spectra, vertices and renormalized parent couplings. A comparison with the lattice Ward scheme also requires the continuum contact action of the flavour current and the scalar mass-source conversion. The six-flavour release fixes a calibrated convention for its own theory. [Mass fit and continuum contact test](https://github.com/yang-mills-group/QCD/blob/9b2971888b9d525431bdb398ae2cb3ac33bf28e5/docs/mass-current-normalization.md)

On a threshold-free interval where both quarks are active, mass-independent pure QCD multiplies $m_u,m_d$ by the same running factor, which cancels exactly. A further check uses a renormalizable low-energy window with QCD, QED and a neutral Dirac neutrino. At one loop,
$$
 16\pi^2\,\frac{d}{d\log\mu}\log\frac{m_um_e}{m_dm_\nu}
   =-6e^2(4/9+1-1/9)=-8e^2 .
$$
Additional active weak or scalar fields change the evolution. The unknown finite matching and the independent microscopic Yukawas remain inputs to an absolute mass prediction. [Charged-fermion mass RGEs, Eqs. (C.2)–(C.4)](https://arxiv.org/pdf/1711.05270#page=27)

**Provenance of 89.3.** GPT-6.2 Astra, written derivation in the prescribed two-probe quadratic action.
