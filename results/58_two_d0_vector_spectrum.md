# The spinor mass floor and the orbital content of a light two-D0 vector

Fix the charge-two, gauge-invariant relative BFSS Hamiltonian with $g_{\rm YM}=1$, $T_a=\sigma_a/\sqrt2$ and kinetic energy $-\Delta/2$ on the 27 matrix coordinates $X_{ai}$. Vary the total rotation representation and the number of retained orbital harmonics. We measure the bottom $E_{\boldsymbol9}$ of the total vector spectrum and the error made by discarding higher harmonics. In the spacelike Planck convention $M\ell_p=2\sqrt E/(2\pi)^{1/3}$ the reference energy is $E_P=(2\pi)^{2/3}/4=0.85125548\ldots$. There is no four-dimensional running or threshold counterterm in this quantum-mechanical problem. The physical longitudinal circle and the dimensionless transverse matrix radius $R=|X|$ are independent quantities. [Hamiltonian and mass conversion](issues/16.md#a-mass-bound-in-specified-rotation-sectors)

## The spinor mass floor

**Theorem.** For a positive-energy multiplet of superspin $\boldsymbol{16}$, $E\ge257149475/415597657=0.61874620\ldots$. At $0<E\le E_P$ the protected candidates from Result 56 are $\boldsymbol9$, $\boldsymbol{36}$ and $\boldsymbol{16}$. A protected sub-Planck level exists exactly when $E_{\boldsymbol9}<E_P$. An even one-row superspin can have an open scattering channel and requires a separate embedded-eigenvalue test.

**Proof.** The previous estimate leaves $\boldsymbol9,\boldsymbol{36},\boldsymbol{16}$ and supplies the common vector polarization. For a half-integral total type absent from the free two-particle channel a normalized eigenvector with $E<11$ obeys $(11-E)\langle R^2\rangle\le184.5$. With four plane weights $w_j$ the angular Ward estimate is $E\langle R^2\rangle\ge K$, $K=(\sum_jw_j\lambda_j)^2/(64d)$. The coefficient $d$ is the maximum squared multiplier on the nine spatial axes. [Spinorial form bound and common vector](56_two_d0_mass_certificate.md#the-spinorial-mass-bound) · [Ward multiplier and its normalization](issues/16.md#the-remaining-two-d0-mass-thresholds)

For superspin $\boldsymbol{16}$ use the $\boldsymbol{84}$ Cartan component $(3/2,3/2,3/2,1/2)$. Interlacing now requires $\mu_2\ge3/2$ while the slow $\boldsymbol{128}$ has $\mu_2\le1/2$. The already checked weights $(1,1,1,0.67)$ and $d=0.0332165$ give $\sum w_j\lambda_j=4.835$ and the stated energy floor. The integral component $(2,1,1,1)$ in $\boldsymbol{16}\otimes\boldsymbol{128}$ also occurs in the free degree-two harmonics times $\boldsymbol{84}$. The spinorial estimate uses the former, confined component. [Free-channel representations, equation (24)](https://arxiv.org/html/2611.17325v2#S4) $\square$

**Correction for superspin $\boldsymbol{36}$.** The earlier exclusion used an incorrect Cartan highest weight. In the tensor product of the two-form superspin $\boldsymbol{36}$ and the Clifford polarization $\boldsymbol{128}$ the Cartan highest weight is
$$
 (1,1,0,0)+(3/2,1/2,1/2,1/2)=(5/2,3/2,1/2,1/2).
$$
This is in the free channel in equation (24). In particular it occurs in $\mathcal H_3\otimes\boldsymbol{128}$, where $\mathcal H_3$ is the degree-three symmetric traceless tensor. The hook of weight $(3,1,0,0)$ in $\mathcal H_3\otimes\boldsymbol9$ tensored with the minuscule spinor $\boldsymbol{16}$ supplies it by adding the spinor weight $(-1/2,1/2,1/2,1/2)$. The summand $\mathcal H_3\otimes\boldsymbol{16}$ has second highest-weight coordinate $1/2$ in each component, so this hook component survives in $\mathcal H_3\otimes\boldsymbol{128}$ by the Clifford contraction decomposition. The confined spinorial form bound therefore cannot be used on this component. The integral Cartan component $(2,2,1,0)$ in $\boldsymbol{36}\otimes\boldsymbol{84}$ remains confined. Whether superspin $\boldsymbol{36}$ occurs at or below $E_P$ remains open. [Free-channel representations, equation (24)](https://arxiv.org/html/2611.17325v2#S4) · [Common vector test](56_two_d0_mass_certificate.md#the-common-vector-component)

## The three singular values and the physical domain

**Proposition.** Write $X$ as a $9\times3$ matrix with ordered singular values $s_1>s_2>s_3>0$. The multiplicity space of the total vector is unitarily realized by 9,834-component functions of these three variables with measure
$$
 J(s)\,ds=(s_1s_2s_3)^6\prod_{i<j}(s_i^2-s_j^2)\,ds_1\,ds_2\,ds_3.
$$
Let $A_{ij}$ generate spatial rotations on the fermion module tensored with the dual vector, and $C_{ij}$ generate colour rotations on the fermions. Use skew-adjoint generators and $|A|^2=A^*A$. In these coordinates the Hamiltonian is
$$
\begin{aligned}
 H={}&-\tfrac12\sum_i J^{-1}\partial_i(J\partial_i)
  +\sum_{i<j\le3}\left[\frac{|A_{ij}+C_{ij}|^2}{4(s_i-s_j)^2}
                      +\frac{|A_{ij}-C_{ij}|^2}{4(s_i+s_j)^2}\right]\\
 &+\sum_{i=1}^3\sum_{\nu=4}^9\frac{|A_{i\nu}|^2}{2s_i^2}
 +\sum_{i<j}s_i^2s_j^2+B(D_s),
\end{aligned}
$$
where $D_s$ denotes the rectangular diagonal matrix and $B$ is the original fermionic Yukawa term. Form the indicated sums of squares on the full representation before restricting to the invariant fibre. The domain is the Friedrichs form closure from the regular chamber. For the radius-17 spectral test only the outer surface $\sum s_i^2=17^2$ is given zero Dirichlet trace. [Singular-axis Laplacian](https://arxiv.org/html/2611.17325v2#A3.SS3) · [Bajaj and Lin, Appendix D and Table 5](https://arxiv.org/html/2611.14512v1#A4.SS5)

**Proof.** A vector multiplet is an equivariant map from matrices into $\mathcal F\otimes\boldsymbol9^*$, where $\mathcal F$ is the 48-Majorana Fock module. At $D_s$ the connected stabilizer rotates the six unused axes. The residual simultaneous spatial and colour sign flips of pairs of principal axes lift to the quaternion group $Q_8$. Take invariants under these lifts and $\mathrm{Spin}(6)$, with their common central action. Equivariance recovers the section on each regular orbit from this value. The orbit Jacobian gives $J$ up to constant Haar normalization. Indeed, in $X=V D_s U^T$ the squared lengths of simultaneous and opposite spatial and colour rotations in plane $ij$ are $2(s_i-s_j)^2$ and $2(s_i+s_j)^2$. A rotation into an unused axis has squared length $s_i^2$. These directions and the three variations of $s_i$ are mutually orthogonal. Integrating the Cartesian kinetic form in these coordinates gives the operator displayed above.

For the count, put $U_4=\boldsymbol4$ of $\mathrm{Spin}(6)=SU(4)$ and let $W$ be three copies of the complex doublet of $Q_8$. A polarization of the fermions gives $\mathcal F=\Lambda(U_4\otimes W)$ on this stabilizer. Equivalently choose the same chirality in each branch. Conjugating a branch gives an equivalent exterior representation by duality since its determinant is one. The three principal-axis components of the vector carry the three nontrivial real sign characters of $Q_8$ and are $SU(4)$ singlets. Its other component is the $\boldsymbol6=\Lambda^2 U_4$ and is trivial under $Q_8$. By the exterior Cauchy identity the multiplicity modules for these two $SU(4)$ types are the Schur functors $S_{(4^m)}W$ for $0\le m\le6$ and $S_{(4^m,2)}W$ for $0\le m\le5$, respectively. Let $D_m$ be the dimension and $T_m$ the trace at a lift of a sign rotation. The eigenvalues there on $W$ are three each of $i,-i$. Jacobi–Trudi with complete symmetric functions $h_n(1^6)=\binom{n+5}{5}$ and $h_{2n}(i^3,(-i)^3)=(-1)^n\binom{n+2}{2}$, with odd values zero at that rotation, gives

| $SU(4)$ type | $D_m$ in increasing $m$ | $T_m$ in increasing $m$ |
|---|---|---|
| $\boldsymbol1$ | $1,126,1764,4116,1764,126,1$ | $1,6,36,36,36,6,1$ |
| $\boldsymbol6$ | $21,1134,7056,7056,1134,21$ | $-3,-18,-48,-48,-18,-3$ |

The respective sums $\sum_m3(D_m-T_m)/4=5832$ and $\sum_m(D_m+3T_m)/4=4002$ give 9,834. This counts coupled coefficients for one copy of the vector multiplicity problem. The nine external polarizations have identical energies.

On any compact matrix ball the discarded collision and deficient-rank strata have codimension at least two and zero local $H^1$ capacity. At a codimension-two stratum use cutoffs logarithmic in the transverse distance and at higher codimension use ordinary shrinking cutoffs. One may average over the compact rotation groups. Density in the Cartesian form core and extension of chamber test sections by equivariance give precisely the stated closure. At a simple collision $d=(s_i-s_j)/\sqrt2=0$, a normal angular mode with integer azimuth $n$ has regular eigenfunction branch $d^{|n|}$. The synchronized generator has weight $2in$, since the synchronized half turn fixes the diagonal point. For $n=0$ the logarithmic solution is outside the energy domain. At a simple rank-two face the measure is proportional to $s_3^6\,ds_3$. The $\mathrm{Spin}(7)/\mathrm{Spin}(6)$ harmonic of degree $l$ has centrifugal coefficient $l(l+5)/(2s_3^2)$ and regular branch $s_3^l$. The form closure also specifies the intersections of faces. $\square$

## The first two orbital degrees

Let $P$ project onto all degree-one and degree-two spherical harmonics of the 27 bosonic coordinates in the physical total-vector representation. All radial profiles are allowed. Write $Q=1-P$. Degree zero is absent because the coordinate-independent fermion space has no gauge-singlet spatial vector. The following constants specify the compressed Hamiltonian and how strongly it couples to the omitted modes. [Michishita, fermion character decomposition](https://arxiv.org/abs/1009.3256)

**Proposition.** Degree one has one vector multiplicity and degree two has five. In a normalized degree-one oscillator trial of width $a>0$, the Yukawa operator $B$ produces two orthogonal degree-two components with squared norms $240/a$ and $44/a$. The three resulting trials give the following exact Rayleigh–Ritz matrix. The rows are the degree-one vector followed by the two normalized images.
$$
 \begin{pmatrix}
 29a/4+62/a^2 & \sqrt{240/a} & \sqrt{44/a}\\
 \sqrt{240/a} & 31a/4+141/(2a^2) & 0\\
 \sqrt{44/a} & 0 &31a/4+143/(2a^2)
 \end{pmatrix}.
$$
In particular $E_{\boldsymbol9}<18.552$. Together with the uniform protected mass floor this gives $720/1819\le E_{\boldsymbol9}<18.552$. The numerical energy near $9.8885$ reported for a superspin-$\boldsymbol{128}$ partner is compatible with this rigorous interval. [Universal floor](56_two_d0_mass_certificate.md#from-the-matrix-radius-to-an-invariant-mass) · [Bajaj and Lin, §4.2 and Table 4](https://arxiv.org/html/2611.14512v1#S4.SS2)

**Proof and exact integer checks (C++ and independent Python).** Write $\mathcal R=\boldsymbol3\otimes\boldsymbol9$ for the bosonic coordinate representation of colour rotations and spatial rotations. A degree-one Gaussian vector is proportional to $e^{-aR^2/2}\sum_{c,j}X_{cj}|c;ji\rangle$, where the fermionic tensor belongs to the colour adjoint times the spatial two-form, and $i$ is its free vector index. In degree two the orbital types in $\mathrm{Sym}^2\mathcal R$ are indexed by colour spin $j$ and spatial representation $t$. There is a single orbital copy of each listed pair. The trace contributes no physical vector. The table also gives the mean and variance of $V(\widehat X)$ in a normalized spherical harmonic in that orbital type, where $\widehat X=X/R$ and $V(X)=\sum_{c<d,i<j}(X_{ci}X_{dj}-X_{cj}X_{di})^2$. Invariance makes these moments independent of the chosen polarization.

| Orbital degree | $(j,t)$ | Vector multiplicities | $a\|P_{j,t} B\psi_1\|^2$ | Mean of $V(\widehat X)$ | Variance |
|---|---|---:|---:|---:|---:|
| 1 | $(1,\boldsymbol9)$ | 1 | — | $8/29$ | $80/78213$ |
| 2 | $(0,\boldsymbol{44})$ | 0 | 0 | $92/341$ | $15296/12907191$ |
| 2 | $(2,\boldsymbol1)$ | 0 | 0 | $8/31$ | $688/533355$ |
| 2 | $(2,\boldsymbol{44})$ | 2 | 240 | $94/341$ | $66436/64535955$ |
| 2 | $(1,\boldsymbol{36})$ | 3 | 44 | $26/93$ | $284/320013$ |

Here is a finite character calculation for the counts and Yukawa entries. Let $w=(g,b)$ run over the weights of $\mathcal R$, so $g=-1,0,1$ and $b=0,\pm e_j$ for $1\le j\le4$. Choose the 24 fermionic creation weights $\mu=(q,\sigma/2)$ with $q=-1,0,1$, $\sigma\in\{\pm1\}^4$ and $\sigma_1=+1$. An occupation set $S$ has weight $t(S)=\sum_{\mu\in S}\mu-\frac12\sum_{\mu}\mu$. For a class polynomial $f$, the linear functional extracting a colour-singlet spatial vector is
$$
 [f]_{\boldsymbol9}=\sum_{h=0}^1\sum_{u\in W(B_4)}(-1)^h\det(u)
 [z^{(h,e_1+\rho-u\rho)}] f,\qquad \rho=(7,5,3,1)/2 .
$$
Apply it to the Fock character $\sum_S z^{t(S)}$ times the orbital character. The trace, symmetric traceless and alternating squares of each vector have characters $1$, $(\chi(z)^2+\chi(z^2))/2-1$ and $(\chi(z)^2-\chi(z^2))/2$. These give the multiplicities in the table. In particular the degree-one state is unique up to the spatial polarization.

Let $B_w$ be the weight-$w$ fermionic coefficient in $B(X)=\sum_w X_{-w}B_w$, in complex orthonormal weight coordinates. Put $D_w(S)=\|B_w|S\rangle\|^2$. For $w\ne0$ enumerate unordered pairs of distinct-colour signed fermionic weights $\mu,\nu$ with $\mu+\nu=w$. A positive weight creates an unoccupied mode, and a negative weight removes the occupied mode of opposite weight. Each allowed pair contributes $2$ to $D_w$ for $b=0$ and $4$ for $b\ne0$. Indeed the colour cross product has modulus one for such a pair. The diagonal spatial gamma matrix has unit modulus and the spherical gamma matrix that flips a single sign has modulus $\sqrt2$. The physical unordered-pair Yukawa coefficient includes $\sqrt2$ in the stated gauge normalization. Distinct active pairs give orthogonal occupation sets. At $w=0$ the coefficient is diagonal and instead
$$
 D_0(S)=2\left(\sum_{(q,\sigma/2)\in S}q\prod_{j=1}^4\sigma_j\right)^2 .
$$
The subtracted vacuum contribution in this diagonal expression vanishes by the sign sum. As a normalization check each component has ordinary full-Fock trace $\sum_S D_w(S)=8\cdot2^{24}$.

For unit vector weights $u,v$ in the colour or spatial factor of dimension $d$, define the diagonal pair-projector entries by
$$
 p_{\rm tr}=\delta_{u,-v}/d,\quad p_{\rm st}=(1+\delta_{u,v})/2-p_{\rm tr},\quad
 p_{\rm alt}=(1-\delta_{u,v})/2.
$$
For each degree-two row extract $[\cdot]_{\boldsymbol9}$ from
$$
 \sum_S\sum_{w,\beta\in\mathcal R_{\rm wt}}z^{t(S)+\beta}D_w(S)
   p_j^{(3)}(\beta_c,-w_c)\,p_t^{(9)}(\beta_s,-w_s),
$$
where $S$ runs over all occupations and only $w,\beta$ run over the 27 bosonic weights. This computes $a\|P_{j,t}B\psi_1\|^2$. The raising part of $X_{-w}$ creates the second oscillator with coefficient $(2a)^{-1/2}$. Its identification with the symmetric tensor of weights $\beta,-w$ has factor $\sqrt2$. The lowering part would give an orbital scalar, which is absent here. Thus $B\psi_1$ is a degree-two harmonic times the same Gaussian.

One further trace is needed for the coupling to higher orbital degrees. Write $\chi=\chi_{\mathcal R}(z)$ and $\chi_2=(\chi^2+\chi_{\mathcal R}(z^2))/2$. The integer calculation gives
$$
 \left[\sum_{S,w}z^{t(S)}D_w(S)
       \{\chi_2+(z^w+z^{-w})\chi+z^{2w}+z^{-2w}\}\right]_{\boldsymbol9}=3398 .
$$
It equals $2a$ times the trace of $B^2$ on the five physical second-shell multiplicities. The number operator of one boson of weight $w$ has twined trace $z^w\chi+z^{2w}$ on the second shell. The two orderings of the coordinate give the displayed sum and its zero-point term. The independent evaluation used division of the fermionic generating polynomial by two occupation factors and the Weyl denominator product, giving the same integers as enumeration of occupation masks.

For the quartic entries one can use, in the order of the table, the real harmonic polynomials $X_{11}$, $\sum_c X_{c1}X_{c2}$, $\sum_i X_{1i}X_{2i}$ and $X_{11}X_{22}\pm X_{12}X_{21}$. Take independent centred Gaussians of variance $1/2$. For a representative $p$ of degree $l$, evaluate $\mathbb E[p^2V^j]/\mathbb E[p^2]$ using the even single-coordinate moments $(2m-1)!!/2^m$ and zero odd moments. Divide by the radial moment $2^{-2j}\prod_{k=0}^{2j-1}(27+2l+2k)$ to get the angular moment for $j=1,2$. In particular the occupied degree-two quartic Gaussian entries are $141/(2a^2)$ and $143/(2a^2)$. Parity makes the diagonal Yukawa element vanish. The kinetic energy of the degree-$l$ harmonic Gaussian is $(27+2l)a/4$. This proves the matrix. For the rational choice $a=19/8$ its determinant after subtracting $(2319/125)I$ is $-280019515367309597/3010936384000000000$. The variational principle gives the strict upper bound. $\square$

## How much of a light vector must lie in higher harmonics

**Theorem.** For every normalized total-vector eigenstate with $E\le E_P$,
$$
       \|Q\psi\|^2\ \ge\ \frac15 .
$$
At least one fifth of its probability must occur in orbital degrees $l\ge3$, even when every low-degree radial profile and fermionic multiplicity is retained.

**Proof.** In radial half-density coordinates the centrifugal coefficient of the kinetic energy is $78+l(l+25)/2$. The two retained values are $91$ and $105$. The quartic compression is diagonal on orbital types with coefficient at least $94/341$ on the occupied ones. The Yukawa compression on the unit angular sphere only connects degrees one and two. Its norm is $b=\sqrt{568/29}<4.43$, since multiplication by $R$ takes the normalized degree-one harmonic Gaussian to the degree-two radial profile with norm $\sqrt{29/(2a)}$. On degree one $B(\widehat X)$ has its entire image in $P$. On degree two the angular trace of $B(\widehat X)^2$ is $3398/31$, using $\langle R^2\rangle=31/(2a)$. Subtracting the trace into degree one gives
$$
 \|QB(\widehat X)P\|^2\le\mathrm{Tr}_{\rm mult}\big(PB(\widehat X)QB(\widehat X)P\big)
 =3398/31-568/29=80934/899<9.49^2 .
$$
The trace here is on rotation multiplicities. Each external polarization gives the same norm. For the quartic part the squared norm in each occupied orbital channel is the variance in the table, by $PVQVP=PV^2P-(PVP)^2$. Parity and the inequivalent orbital representations eliminate the cross entries. The largest occupied standard deviation is less than $0.033$. Thus for $W=V+B$ the norm of $QWP$ at fixed $R$ is at most $w(R)=9.49R+0.033R^4$.

Set $A=PHP-E$ in the retained angular space. On compactly supported radial tests integration by parts gives
$$
 \Re\langle wu,Au\rangle\ge\int w\left[\frac{91}{R^2}+\frac{94}{341}R^4-bR-E-\frac{w''}{4w}\right]|u|^2\,dR
 \ \ge\ \tfrac12\|wu\|^2 .
$$
Indeed $w''/(4w)\le3/R^2$. After subtracting $w/2$ from the bracket and multiplying by $R^2$, use $E\le0.852$ and $R^2\le2R^3/9+3$. A lower bound is $(259/1000)z^2-(937/100)z+427/5$ with $z=R^3$. Four times its leading coefficient times its constant exceeds its squared linear coefficient by $271/400$.

The compressed potential minus $E$ is strictly positive, grows at both ends and hence has a positive lower bound. The radial differential operator is limit point at zero and infinity. More explicitly, the diagonal centrifugal and quartic terms give a self-adjoint scalar operator on each channel with compactly supported smooth radial functions as an operator core. The linear Yukawa matrix is infinitesimally bounded relative to this operator by its quartic form bound. Therefore $A$ is invertible and the weighted estimate extends from the core to give $\|wA^{-1}\|\le2$. Testing the full eigen-equation against compactly supported $P$ functions $v$ gives $\langle Av,P\psi\rangle=-\langle QWPv,Q\psi\rangle$. Density of $A$ applied to the core and $\|QWP A^{-1}\|\le2$ yield $\|P\psi\|\le2\|Q\psi\|$. Normalization proves the claim. $\square$

## An exact trial with higher orbital degrees

**Proposition.** In the physical relative total-vector sector,
$$
  \frac{720}{1819}\ \le\ E_{\boldsymbol9}\ <\ \frac{9249}{500}.
$$
The upper bound uses an admissible Cartesian trial with nonzero orbital degrees three and five. Its restriction to the singular-value chamber belongs to the full physical form domain. The lower bound applies to all orbital degrees. This enclosure straddles $E_P$.

**Proof.** Write $X$ as the $9\times3$ coordinate matrix, $q=|X|^2$ and $G=X^TX$. In addition to the linear matrix polynomial $X$, use
$$
 P_3=XG-\tfrac{13}{29}qX,\qquad
 P_5=VX+\tfrac{2}{33}qP_3-\tfrac{8}{29}q^2X .
$$
The three matrix polynomials transform in the same colour-adjoint spatial-vector type. Indeed $G$ is colour covariant, and $q,V$ are invariant. They are entrywise harmonic. The location of the cubic trace follows from $\Delta(XG)=26X$ and $\Delta(qX)=58X$. For the quintic, $\nabla V=2(qX-XG)$ and $\Delta V=32q$, so
$$
  \Delta(VX)=36qX-4XG,\qquad
  \Delta(qP_3)=66P_3,\qquad \Delta(q^2X)=124qX.
$$
Insertion gives $\Delta P_5=0$ and the orthogonal angular decomposition $VX=P_5-\frac{2}{33}qP_3+\frac{8}{29}q^2X$.

Use the fermion tensor of the degree-one vector, from the colour adjoint times the spatial two-form, to contract each of these three matrix polynomials. Write the resulting vector sections as $\phi_1,\phi_3,\phi_5$. Let $\phi_+$ and $\phi_-$ be the projections of $B\phi_1$ onto the harmonic quadratic orbital types $(2,\boldsymbol{44})$ and $(1,\boldsymbol{36})$. Write $B=\sum_w X_wB_w$ in real Cartesian coordinates. The trace of $B\phi_1$ is absent because there is no physical orbital scalar in the total vector sector. The sections are polynomial gauge singlets, with the free vector index carrying the total $\mathrm{Spin}(9)$ vector. Multiplying by the common Gaussian $e^{-a q/2}$ preserves the physical colour exchange and regularity across every chamber face. A smooth invariant cutoff at large radius approximates each section in form norm by the Cartesian core. The same chamber core and closure as above apply. No artificial boundary condition at a collision or rank face is used.

Compute their forms with the Gaussian measure of independent coordinates of variance $1/(2a)$. Fix the common normalization of the linear tensor so its Gaussian norm is that of one entry $X_{11}$. For the scalar terms, invariance and irreducibility of the colour-adjoint spatial-vector type give the same normalized contraction on each entry of $X,P_3,P_5$. In particular cross terms of scalar operators can be computed using a single entry. At $a=1$ the required moments are as follows. Angle brackets denote expectation in the normalized Gaussian measure.

| Quantity | Value |
|---|---:|
| $\langle X_{11}^2\rangle$ | $1/2$ |
| $\langle (P_3)_{11}^2\rangle$ | $110/29$ |
| $\langle (P_5)_{11}^2\rangle$ | $175/6$ |
| $\langle V(P_3)_{11}^2\rangle/\langle (P_3)_{11}^2\rangle$ | $2156/29$ |
| $\langle V(P_5)_{11}^2\rangle/\langle (P_5)_{11}^2\rangle$ | $442/5$ |
| $\langle V X_{11}(P_3)_{11}\rangle$ | $-110/29$ |
| $\langle V X_{11}(P_5)_{11}\rangle$ | $175/6$ |
| $\langle V(P_3)_{11}(P_5)_{11}\rangle$ | $1540/87$ |

For these exact rational calculations in Python, expand $V$ as the sum of squared two-by-two minors and use the displayed polynomials. Replace each degree-$2m$ power of a single coordinate by $(2m-1)!!/2^m$, each odd power by zero, and multiply over the 27 coordinates. Equivalently, for coefficient arrays $f_\alpha,g_\beta$ the entry is $\sum_{\alpha,\beta}f_\alpha g_\beta\prod_j \mathbb E[X_j^{\alpha_j+\beta_j}]$. For the two $V$-mixed moments with $X_{11}$ the angular decomposition also gives $-\frac{2}{33}\mathbb E[q(P_3)_{11}^2]=-\mathbb E[(P_3)_{11}^2]$ and $\mathbb E[(P_5)_{11}^2]$. At general $a$ a degree-$d$ moment acquires $a^{-d/2}$.

The overlap of $B\phi_3$ with the two quadratic trial sections can be computed with no new fermion matrix elements. Let $Y=V-(8/29)q^2$. Then $(P_3)_v=-\partial_vY/2=\sum_{w,c,d}T_{vwcd}X_wX_cX_d$, with $T$ fully symmetric. For a quadratic $P$ let $\mathcal T P=-P(\partial)Y/6$, which contracts the polynomial's coefficient tensor against $T$. Since $\phi_3$ is harmonic, $\Delta(B\phi_3)=6\mathcal T(B\phi_1)$. The product $B\phi_3$ has only degrees four and two, and $\Delta(q P)=62P$ for harmonic quadratics. Its harmonic degree-two part at fixed radius is thus $(3/31)q\mathcal T(B\phi_1)$. On the two quadratic orbital types the invariant map $\mathcal T$ is scalar. Representatives are $P_\pm=X_{11}X_{22}\pm X_{12}X_{21}$. Differentiating the corresponding minor and $q^2$ gives $P_\pm(\partial)V=(2,6)_\pm P_\pm$ and $P_\pm(\partial)q^2=8P_\pm$. Hence the scalars are $u_+=1/29$, $u_-=-55/87$. In degree two the Gaussian expectation of $q$ is $31/(2a)$, so
$$
 \langle\phi_\pm,B\phi_3\rangle_a=\frac{3u_\pm}{2a}\|\phi_\pm\|_a^2 .
$$
Here and below the Gaussian factors in the inner products are implicit. The Yukawa term changes harmonic degree by one. It has no matrix element from degree five to any of the chosen even degrees. Quartic and kinetic terms preserve parity, and the kinetic term is angularly diagonal.

In the basis $(\phi_1,\phi_+,\phi_-,\phi_3,\phi_5)e^{-aq/2}$ the norm matrix is diagonal with entries
$$
 n=\left(\frac{1}{2a},\frac{120}{a^2},\frac{22}{a^2},\frac{110}{29a^3},\frac{175}{6a^5}\right).
$$
The second and third entries use the earlier exact squared Yukawa norms. The Hamiltonian form matrix $K$ has diagonal $K_{jj}=n_j d_j$ with
$$
 d=\left(
 \tfrac{29a}{4}+\tfrac{62}{a^2},
 \tfrac{31a}{4}+\tfrac{141}{2a^2},
 \tfrac{31a}{4}+\tfrac{143}{2a^2},
 \tfrac{33a}{4}+\tfrac{2156}{29a^2},
 \tfrac{37a}{4}+\tfrac{442}{5a^2}
 \right).
$$
Label the rows by $1,+,-,3,5$. The nonzero upper triangular entries are
$$
\begin{aligned}
 K_{1,+}&=n_+,& K_{1,-}&=n_-,&
 K_{1,3}&=-\tfrac{110}{29a^4},& K_{1,5}&=n_5,\\
 K_{+,3}&=\tfrac{3n_+}{58a},& K_{-,3}&=-\tfrac{55n_-}{58a},&
 K_{3,5}&=\tfrac{1540}{87a^6}.
\end{aligned}
$$
Take $a=19/8$ and the trial coefficients $(1,-2/25,-2/25,1/100,-1/20)$. The Rayleigh quotient is $77724057835922261/4201920559840352<9249/500$ by exact rational arithmetic in Python. The variational principle on the whole physical sector gives the upper bound. The full-domain angular and radial estimate of Result 56 for protected multiplets gives the lower bound. To see the fraction, every such multiplet has a confined component with three-plane weight $j\ge4$, so $K_{\rm W}=j^2/(64(227/7200))\ge1800/227$. The inequality $E\ge13K_{\rm W}/(252.5+K_{\rm W})$ gives $720/1819$ for $E<13$. The vector sector occurs only in protected multiplets. The bound therefore applies to its lowest energy. $\square$ [Common vector and uniform mass floor](56_two_d0_mass_certificate.md#from-the-matrix-radius-to-an-invariant-mass)

The higher-degree trial and its rational calculation are by GPT-6.2 Sol. The arithmetic checks used Python. Independent review of this added trial is pending.

## A high orbital degree gap on the radius-17 ball

**Proposition.** Let $H^D$ be the physical total-vector Dirichlet operator on $R<17$. Let $P_{58}$ retain the orbital degrees $l\le58$ with all radial profiles and physical multiplicities, and put $Q_{58}=1-P_{58}$. The form restriction $H_Q^D$ to $Q_{58}$ obeys $H_Q^D\ge 59/50$. For $\tau=213/250>E_P+3.81\times10^{-28}$, the bound $H^D\ge\tau$ is equivalent to nonnegativity of the form
$$
 P_{58}(H^D-\tau)P_{58}-C^*(H_Q^D-\tau)^{-1}C,\qquad
 C=Q_{58}(V+B)P_{58}.
$$
The off-diagonal operator $C$ uses incoming degrees $55,\ldots,58$ and outgoing degrees $59,\ldots,62$ only. [Full exterior estimate](56_two_d0_mass_certificate.md#a-form-bound-on-the-confined-components)

**Proof.** In the vector fibre write $z=p/R$, with $p$ the positive eigenvalue of the three-by-three fermion matrix. The other two eigenvalues sum to $-p$ and their squared sum is $2R^2-p^2$. Thus $1\le z\le 2/\sqrt3$ and the smaller negative magnitude divided by $R$ is $(z-\sqrt{4-3z^2})/2$. The exact vector fermion minimum in Result 56 divided by $\sqrt2 R$ is the lesser of $-6z-2\sqrt{4-3z^2}$ and $-7z$. The first branch is increasing since $6z/\sqrt{4-3z^2}\ge6$. The second is decreasing. They meet at $z=4/\sqrt{13}$. Their endpoint minima and their common maximum give
$$
 -14\sqrt{2/3}\,R\ \le\ B_{\boldsymbol9,\min}(s)\
 \le\ -28\sqrt{2/13}\,R .
$$
This bounds the physical multiplier below almost everywhere on the regular chamber. [Vector fermion minimum](56_two_d0_mass_certificate.md#the-fermion-potential-in-the-vector-sector)

Use the full Cartesian radial-angular decomposition on the Dirichlet ball. The angular eigenvalue in degree $l$ is $l(l+25)$. The 27-dimensional radial Hardy inequality contributes $625/(8R^2)$ to the kinetic term after the factor $1/2$. For example, in radial half-density variables the density contributes $78/R^2$ and the half-line Hardy inequality contributes $1/(8R^2)$. Hence all $Q_{58}$ sections supported in $R\le6$ have form energy per norm at least
$$
 \frac{625/8+59(59+25)/2}{36}-6\cdot 14\sqrt{2/3}.
$$
Here we used $V\ge0$ and the monotonicity of the resulting lower multiplier in $R$. Sections supported in $R\ge5$ have form energy per norm at least $13-252/25$ by the full confined form estimate. Zero extension at $R=17$ lies in the physical form domain. Let the cosine and sine of a radial angle give a squared partition of unity, with angle zero for $R\le5$, linear with slope $\pi/2$ on $[5,6]$, and $\pi/2$ for $R\ge6$. Both cutoffs commute with $Q_{58}$ and with the gauge and rotation projections. The kinetic localization cost is bounded by $\pi^2/8$. The inner energy is greater than $87029/36000$ using $\sqrt{2/3}<8165/10000$. The outer energy is at least $73/25$. Exact rational arithmetic in Python checks
$$
 \min(87029/36000,\ 73/25)-121/98>59/50,\qquad
 \big[4(\tau-3.81\times10^{-28})\big]^3>(44/7)^2,
$$
where $\pi<22/7$. The estimates apply first on the physical core and then to the radius-17 form closure.

On the ball $V+B$ is bounded and the orbital projection preserves the Cartesian Dirichlet kinetic form domain. The kinetic term is block diagonal. A polynomial of angular degree at most $k$ has matrix elements only for $|l-l'|\le k$: its product with a harmonic of degree $l$ has degree at most $l+k$, and taking adjoints gives the lower restriction. Use $k=4$ for $V$ and $k=1$ for $B$. For $u\in P_{58}$ and $v\in Q_{58}$ in the respective form domains, let $D=H_Q^D-\tau$. The shifted form is
$$
 \langle u,P_{58}(H^D-\tau)P_{58}u\rangle
 -\|D^{-1/2}Cu\|^2+\|D^{1/2}v+D^{-1/2}Cu\|^2 .
$$
Since $D\ge41/125$, the inverse is bounded and $v=-D^{-1}Cu$ is admissible in the high-degree form domain. Taking the infimum over $v$ gives the equivalence. In particular $0\le C^*D^{-1}C\le (125/41)C^*C$. $\square$

## A scalar chamber comparison

**Proposition.** Keep the chamber measure $J$ and the radius-17 Dirichlet trace. Consider the scalar form given by the singular-value derivatives, $V$ and the exact pointwise vector fermion minimum. Its bottom stays below $19/25$ even after adding the positive multiplier $13/R^2$. Thus dropping the orbit derivatives and replacing the matrix multiplier by its pointwise minimum cannot furnish the radius-17 lower bound. This comparison uses the scalar norm on each orbit and includes all chamber shapes.

**Proof.** On physical chamber sections the scalar norm has singular-value derivatives bounded in magnitude by the corresponding section derivatives. The omitted orbit terms are sums of squares. This gives the scalar comparison without the added multiplier. Denote the scalar form with that multiplier by $q_s$. The upper bound on $B_{\boldsymbol9,\min}$ just proved gives $q_s$ bounded above by the same form with Yukawa multiplier $-b_*R$, $b_*=28\sqrt{2/13}$. For radial functions the singular-value derivatives are the Cartesian radial derivative, and $J$ is the orbit volume factor. Take the normalized radial Gaussian proportional to $e^{-aR^2/2}$ with $a=23/12$. Under its squared density the 27 Cartesian entries have variance $1/(2a)$. Consequently
$$
 \tfrac12\langle|\nabla\log e^{-aR^2/2}|^2\rangle=\tfrac{27a}{4},
 \quad \langle V\rangle=\tfrac{54}{a^2},\quad
 \langle R^{-2}\rangle=\tfrac{2a}{25},\quad
 \langle R\rangle=\frac{\Gamma(14)}{\sqrt a\,\Gamma(27/2)}.
$$
The quartic expectation counts $\binom32\binom92$ squared minors, each with expectation $1/(2a^2)$. The other moments follow from the gamma density of $aR^2$ with shape $27/2$. Set $\eta=1$ for $R\le16$, $\eta=17-R$ for $16<R<17$, and $\eta=0$ for $R\ge17$. The Gaussian times $\eta$ has the required trace. The scalar form extends to this trial by the same capacity cutoff at the walls and by approximation of the radial Lipschitz cutoff.

The cutoff can only decrease the nonnegative potential and the original kinetic terms. Expanding its square gradient adds at most $a\langle R\mathbf1_{R>16}\rangle+\Pr(R>16)/2$. The loss of negative potential costs at most $b_*\langle R\mathbf1_{R>16}\rangle$. Put
$$
 t=\frac{\prod_{j=0}^9(27/2+j)}{a^{10}16^{20}} .
$$
The twentieth moment gives $\Pr(R>16)\le t$ and $\langle R\mathbf1_{R>16}\rangle\le16t$. The retained squared norm is at least $1-t$. The half-integer gamma formula gives
$$
 b_*\langle R\rangle=\frac{28\cdot 4^{13}(13!)^2}{26!}
       \sqrt{\frac{2}{13a\pi}}>\frac{144363}{5000}.
$$
Using $\pi<22/7$, the last inequality is a rational comparison after squaring. With $b_*<11$, exact arithmetic in Python verifies $t<10^{-12}$ and
$$
 \frac{(27/4+26/25)a+54/a^2-144363/5000+
              (16(a+11)+1/2)t}{1-t}<\frac{19}{25}.
$$
The numerator bound is positive, so dividing by the retained norm is safe. The variational principle gives the stated scalar result, while $E_P>17/20$ follows by cubing and using $\pi>157/50$. The extra $13/R^2$ is the first Cartesian orbital centrifugal coefficient. The Gaussian trial belongs to the scalar comparison domain. A bound deciding the vector energy needs more information about the equivariant angular sections. $\square$

## Positive eigenvalues in a scattering total type

**Theorem.** Every positive eigenvalue in the confined total vector sector is also an embedded eigenvalue in the total $\mathbf{128}$ sector of the same relative $SU(2)$ operator. There are infinitely many such energies in that scattering total type. Their superspins are protected. The possible embedded spectrum with even one-row superspin is a separate question. [Free angular channels and superspin](https://arxiv.org/html/2611.17325v2#S4)

**Proof.** Let $S=\mathbf{44}\oplus\mathbf{84}\oplus\mathbf{128}$. On the physical eigenspace at $E>0$, $Q_\alpha/\sqrt E$ preserve the eigenspace and generate the sixteen-generator Clifford algebra. Indeed each self-adjoint $Q_\alpha$ has square $H$ there and preserves its spectral subspaces. The cross anticommutators hold as form identities by closure and hence on the eigenspace. The rotation representation is a sum of $W\otimes S$ for irreducible superspins $W$. Since $S$ is self-dual, the multiplicity of the vector in $W\otimes S$ equals the multiplicity of $W$ in $\mathbf9\otimes S$.

We compute that latter product and the occurrence of the total $\mathbf{128}$ in every product $W\otimes S$ as follows. Use doubled weights. For $\mathbf{44}$ sum unordered pairs with repetition of the vector weights $0,\pm2e_i$ and subtract one zero. For $\mathbf{84}$ sum triples of distinct vector weights. For $\mathbf{128}$ sum every vector weight plus every spinor weight $(\pm1,\pm1,\pm1,\pm1)$ and subtract the spinor multiset. To multiply a highest weight $2\lambda$ by this polarization character, for each doubled weight $w$ of $S$ form $2\lambda+w+(7,5,3,1)$. Discard shifts on a wall, which have a zero or repeated absolute coordinates. For the others, sort by decreasing absolute value, make the coordinates positive, and subtract $(7,5,3,1)$. Count with the sign of the sorting permutation times the product of the original signs. This rule follows by expanding the Weyl numerator of $\lambda$ times the Weyl-invariant character of $S$, then collecting alternating orbits. The calculation with Python integers gives the following list. Each listed $W$ occurs once in $\mathbf9\otimes S$.

| $2\lambda_W$ | Copies of the total $\mathbf{128}$ in $W\otimes S$ |
|---|---:|
| $(1,1,1,1)$ | 2 |
| $(2,0,0,0)$ | 1 |
| $(2,2,0,0)$ | 2 |
| $(2,2,2,2)$ | 2 |
| $(3,1,1,1)$ | 3 |
| $(3,3,1,1)$ | 3 |
| $(4,2,0,0)$ | 2 |
| $(4,2,2,0)$ | 2 |
| $(5,1,1,1)$ | 2 |
| $(6,0,0,0)$ | 1 |

All entries have superspin outside the even one-row list. The total $\mathbf{128}$ is in the free channel $\mathcal H_1\otimes\mathbf{128}$. For example, Clifford multiplication on the spinor index compressed to gamma-traceless vector-spinors gives the nonzero equivariant map $\mathbf9\otimes\mathbf{128}\to\mathbf{128}$ used in Result 56. The essential spectrum of this total type is $[0,\infty)$. The vector sector has compact resolvent, infinite multiplicity space and strictly positive energies. Its unbounded sequence of eigenvalues therefore supplies an unbounded sequence of embedded eigenvalues in this fixed total type. $\square$ [Vector levels and essential spectrum](56_two_d0_mass_certificate.md#a-finite-ball-and-the-scattering-continuum)

**Outstanding spectral questions.** The full vector enclosure remains $720/1819\le E_{\boldsymbol9}<9249/500$. The high-degree form gap controls the complement for the radius-17 test. A lower enclosure of the retained coupled Schur form, including its signed correction and every retained radial profile, is still needed for that test. The scalar comparison has a sub-threshold trial and cannot supply it. In the even one-row superspin family the free channel has the same superspin as a possible bound state. Existence or absence there requires an infinite-domain test of the coupled open and closed channels, in particular control of the homogeneous incoming and outgoing amplitudes of a candidate $L^2$ solution and its coupling to the decaying components. The essential spectrum and the protected partners in the theorem leave that point spectrum open. [Radius-17 and continuum tests](56_two_d0_mass_certificate.md#a-finite-ball-and-the-scattering-continuum)

The high-degree and scalar comparisons and the fixed-type embedded-eigenvalue proof are by GPT-6.2 Sol. GPT-6.1 Terra independently checked the form inequalities, domain and Schur correction, and the representation argument using the cited essential-spectrum result. Both models checked the numerical constants and Weyl multiplicities in Python using exact rational and integer arithmetic.

**Provenance.** GPT-6.1 Terra derived the superspin estimates, with checks by GPT-6.2 Sol and GPT-6.2 Astra Max. The spinor floor survives the correction to the two-form highest weight. GPT-6.2 Sol derived the stabilizer count and chamber domain. GPT-6.2 Astra Max derived the oscillator trace, variational bound and angular probability estimate. GPT-6.2 Sol independently reproduced the finite coefficients, moments and operator estimates. GPT-6.1 Terra also checked the variational sign and the weighted resolvent argument.
