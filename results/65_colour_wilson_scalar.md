# The colour Wilson scalar and the hadronic matching window

Keep the colour and photon matching of result 63 and the weak shape fixed while shrinking its area. We vary a *colour* holonomy along direction 9 at fixed fluxes. A massless five-dimensional gluon has an angular component on a periodic circle. This potential coloured scalar threshold is separate from the momentum of the first nonzero circle harmonic. We use the Kähler flux replacement of result 64 and specify when an additional fibration term changes the test.

## A light adjoint scalar

**Proposition 65.1.** For the root-supported fibration without an extra circle-curvature term, the physical quadratic colour-adjoint scalar sector has a trial direction with
$$
 m_{\rm trial}^2
 =\frac{Z_{H,c}k^2}{4L^2}\,
           \left\langle |H_+|^2+|H_-|^2\right\rangle .
$$
Here $Z_{H,c}$ multiplies the positive horizontal colour derivative of each root, inside the Einstein prefactor. At the round member the trial is an exact tree-level flat colour Wilson direction. At fixed broken shape on the compensated lower path, $m_{\rm trial}^2=O(B^{-2}L^{-2})$. Thus even a stable unmodified quadratic spectrum would contain an additional coloured state below any fixed positive $\xi/B$ eventually. A tachyon would instead require finding a stable colour-preserving vacuum.

**Proof.** Pick one colour Killing generator $T$, normalized to $\mathrm{tr}(T^2)=1/2$, with projective field $K$. The physical colour zero vector includes its flux compensator. Put a flat connection $uT\,d\chi$ along the periodic circle in this zero-vector sector, with constant $u$. In each local chart this pulls back the metric and supporting colour flux by the colour transformation of angle $u\chi$. Globally the holonomy is $\exp(2\pi i u T)$, with nontrivial small values detected by parallel transport. In particular the perturbation cannot be removed by a periodic infinitesimal gauge transformation. For the metric and the supporting flux its static mass vanishes, and its spacetime kinetic coefficient is $I_3/L^2$ with scalar Lagrangian convention $-K(\partial u)^2/2$. The latter follows by using the mixed component of the gluon curvature. The vortex connection and section are unchanged.

The circle is also a specified principal action for the root fields. In fixed coordinates the shifted colour metric has mixed component $u K^\flat_i\,dz^i d\chi$ in the metric-component convention $g_{i\chi}=uK_i^\flat$. The metric connection of the original circle therefore has new base component $\eta_i=u K_i^\flat/L^2+O(u^2)$. A root with fixed Fourier weight $n_\pm$ acquires horizontal colour derivative $-i n_\pm \eta_i H_\pm$ at first order. All its other squares still vanish to this order. Using $\langle |K|^2\rangle=B^2/8$, the potential shift is $CV Z_{H,c}(k^2/4)\langle |H_+|^2+|H_-|^2\rangle B^2 u^2/(8L^4)$. Division by $I_3/(2L^2)$ gives the formula. The metric/flux trial is the $\chi$ polarization of a transverse colour zero vector; a $\chi$-independent scalar coefficient in four-space is an admissible physical Wilson variation. At zero roots the flat family is exact. At nonzero roots the unrestricted scalar minimum is bounded above by the trial quotient. Equation 63.2 and the explicit roots give the stated scaling. $\square$

This test changes the interpretation of the ordinary-QCD calculation in Proposition 63.4. At tree level the light threshold cannot be removed by choosing a smaller fixed $\xi$ on that path. In a stable weakly coupled EFT one light real adjoint scalar would change $b_0=11-2n_f/3$ by $-T(\mathrm{adj})/6=-1/2$ until it decouples. Its nonperturbative mass, potential, multiplicity and eventual phase require the full theory. The physical three-flavour nucleon conversion in result 61 does not apply to a theory with an active adjoint scalar. A loop-generated colour Wilson mass or a classical lifting interaction must be computed before using that conversion. The five-flavour supersymmetric colour dual and the local adjoint *Weyl fermion* considered in dualsm carry different fields and beta coefficients. A proposed supersymmetric pairing of a Wilson scalar would require operator partners and a supercurrent Ward identity. [Dual Standard Model current test](https://github.com/arivero/dualsm/blob/3281dd9fbf4058cc94078221ff065e538c16c8a8/papers/paper-3-emergent-susy-lattice/SUMMARY.md)

## A term that lifts the Wilson pair

**Proposition 65.2.** On a circle fibration with chosen colour four-planes consider the additional internal positive energy $c_\eta L^2|(d\eta)_{\rm colour}|^2$, $c_\eta>0$, inside the Einstein prefactor. Here $L^2=g(\partial_\chi,\partial_\chi)$ and the restriction is to horizontal projective tangent planes. It is invariant under changes of circle section. The round and broken polar product vacua have $d\eta=0$ so its value and its first variation vanish on the entire trajectory. It contributes no external kinetic energy to the gluon or photon. At zero root vev it gives the two colour Wilson scalar masses in the angular polarization of the metric and Kähler-flux vectors,
$$
 m_\pm^2=\nu\left(1+c_\eta\ \pm\sqrt{1+c_\eta^2}\right),
 \qquad \nu=12/B^2 .
$$

**Proof.** Write the angular metric vector as $uK$ and the angular gauge compensator as $z\mu_K$ with $d\mu_K=-\iota_K F_c$. Each kinetic coefficient is $I_E/L^2$ with $I_E=CVB^2/8$. The five-dimensional mass form from the mixed Maxwell field strength is $\nu I_E(u-z)^2/L^2$, using the Hamiltonian eigenvalue $\nu$. The new curvature has linear coefficient $u\, dK^\flat/L^2$. Since $\langle|dK^\flat|^2\rangle=2(6/B^2)\langle|K|^2\rangle$, the term adds $2c_\eta\nu$ to the $uu$ entry of the canonically normalized squared-mass matrix. Diagonalizing that two-dimensional matrix proves the result. Scalar harmonics in $\eta_i$ that are exact circle gauge transformations have zero curvature and decouple from this coexact sector. The calculation is exact for these two angular vector polarizations of the round product and gives their quadratic restriction more generally. At fixed broken shape the root contribution to the shear trial is lower order than $1/B^2$. Couplings to other coloured scalar sectors must be included to claim a positive full gap. $\square$

The parameter $c_\eta$ is a fibration kinetic input. For fixed positive $c_\eta$ the lighter squared mass in this pair is a fixed positive multiple of $1/B^2$ and recovers zero as $c_\eta\downarrow0$. This is a controlled way to vary a colour threshold with the same shared gauge generator, support and tree gauge normalizations. It does not by itself determine the remaining thresholds.

## A calculable radiative threshold

**Reference and conditional matching (65.3).** Suppose that between the inverse shared-circle radius and the first projective threshold the winding colour sector is weakly coupled five-dimensional $SU(3)$ Yang–Mills. Take periodic vectors, no other light winding colour fields, and fix the finite local contributions to the Wilson Hessian to zero in this comparison. Write $g_c$ for the matched four-dimensional coupling at the compactification scale. With $\mathrm{tr}_{\bf3}T^2=1/2$ the one-loop gauge contribution at trivial holonomy is
$$
 M_S^2=\frac{27\zeta(3)}{16\pi^4}\frac{g_c^2}{L^2}.
$$
This is the circle Yang–Mills result of Del Debbio, Kerrane and Russo. Its relevance here is that $L/B$ has a nonzero finite limit and the tree root contribution on the fixed-shape collapse is smaller than $1/L^2$. [One-loop Wilson mass, Eq. (2.13)](https://arxiv.org/pdf/0812.3129#page=11)

For the normalization, one periodic real bosonic polarization in a real representation with weights $q$ has the winding contribution per external four-volume
$$
 V(u)-V(0)=\frac{3}{64\pi^6L^4}
   \sum_{\ell\ge1}\sum_q\frac{1-\cos(2\pi\ell q u)}{\ell^5}.
$$
Poisson summation in the proper-time logarithm of $p^2+(n+qu)^2/L^2$ removes the holonomy-independent zero winding. Two derivatives bring down $(2\pi\ell q)^2$. There are three gauge polarizations after ghosts and $\sum q^2=3$ in the colour adjoint. Dividing by the scalar kinetic coefficient $1/(g_c^2 L^2)$ gives the displayed result. A massive winding multiplet of mass $m$ multiplies each winding by $e^{-z}(1+z+z^2/3)$, $z=2\pi\ell mL$, from the same proper-time integral. Fermions enter with the opposite determinant sign and their own spin and boundary factors. The assigned base Weyl fields in result 63 have a fixed circle character. They do not supply five-dimensional Dirac towers in this formula. The weak fibration and ultraviolet completion can also supply local matching terms.

For example take a matching scale $\mu_0$ just below $1/L$, with $m_t,M_S<\mu_0$, and all other omitted coloured states above it. Suppose $M_S,m_c,m_b,m_t$ are perturbative thresholds above $\Lambda_3$. With the six Dirac flavours and one real adjoint scalar above those thresholds, continuous one-loop decoupling gives
$$
 \Lambda_3^9
  =\mu_0^{13/2} M_S^{1/2}(m_t m_b m_c)^{2/3}
       \exp[-8\pi^2/g_c^2(\mu_0)] .
$$
Indeed the initial beta coefficient is $13/2$, removing the scalar adds $1/2$, and removing each heavy quark adds $2/3$. The product has mass dimension nine. Holding $\mu_0 B$, $M_SB$ and $m_i B$ fixed makes $B\Lambda_3$ constant in this matching. The physical three-flavour conversion requires light masses in the range of the independent hadronic determination. A first omitted state in this example can be the Wilson scalar at $M_S$, below the first circle momentum $1/L$. If other thresholds or a colour instability enter, these hypotheses need to be tested again.

This also distinguishes proposals in the sibling project. For a *periodic five-dimensional Dirac* adjoint the dimensionless group factor $3T(\mathrm{adj})$ in the gauge winding Hessian receives $-4T(\mathrm{adj})$. One periodic real adjoint scalar adds $T(\mathrm{adj})$. A complete five-dimensional vector supermultiplet cancels this one-loop potential with periodic boundary conditions. A four-dimensional adjoint Weyl field proposed to realize a supercurrent in dualsm does not by itself have that winding spectrum. The sign and size of the Wilson mass can therefore test a proposed higher-dimensional embedding even before identifying the magnetic vector with a weak pole. [Wilson fermion contribution](https://arxiv.org/pdf/0812.3129#page=23) · [Adjoint Weyl and supercurrent proposal](https://github.com/arivero/dualsm/blob/3281dd9fbf4058cc94078221ff065e538c16c8a8/papers/paper-3-emergent-susy-lattice/SUMMARY.md)

**Provenance.** Derived by GPT-6.2-Astra max. The pure Yang–Mills one-loop mass is a cited result. Independent scientific review of its application and of the classical fibration calculation is pending.
