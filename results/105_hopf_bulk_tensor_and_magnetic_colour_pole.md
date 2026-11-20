# The bulk two-period tensor and a light coloured magnetic pole

Keep the Hopf background, full vortex and auxiliary Maxwell fields, local volume derivative and fitted trajectory of 104. Extend the nonchiral two-form to the full product. We compare three choices of characteristic-form source, all with the two periods of 92. The observables are the sourced singlet weak pencil and the first additional coloured threshold. In the transverse formulas below the colour sphere is round and the weak surface keeps its fitted nonround shape on shrink.

## A bulk form with the same two periods

**Proposition 105.1.** One two-form on the full product has the electric Bianchi and magnetic field-equation normalizations of 92 in its colour-constant sector. If its sources remain pulled back from the quotient, its extra coloured modes form a free Hodge tower with squared masses at least $5/B^2$. Relative Chern–Weil transgressions also allow changes of the local source representatives while keeping the same pullback descent variation.

**Proof.** Use $E=S^5\times Y$, $Y=M_4\times\Sigma$, in the fixed product flux sector. Let $\Omega_5=F_5/Q_5$, where $Q_5$ is the nonzero five-form colour period of 94, so $d\Omega_5=0$ and its fibre integral is one. The kinetic term of an independent two-form $B_2$ has coefficient $Z_{11}=Z_6/(\pi^3B_\sigma^5)$ with $B_\sigma=B_0e^\sigma$. It integrates to $Z_6$ on the round background. For pulled-back classes $X_0,Y_0$ use
$$
 H=dB_2-2\pi\,\mathrm{CS}_{X,0},\qquad
 S_{\rm mag}=\int_E B_2\wedge Y_0\wedge\Omega_5,
 \qquad d\mathrm{CS}_{X,0}=X_0 .
$$
The factor of $2\pi$ fixes the holonomy convention of 90 and 92. For fields pulled back to the quotient this is exactly their tensor action. Dualizing the three-form there gives $Z_D=(4\pi^2 Z_6)^{-1}$ and hence the period pair with charges $2,14$. There is just one two-form on $E$, with an eight-form dual field strength rather than an independent second tensor. In the background $H=0$ and $Y_0=0$, since the weak curvatures have support on the same two-surface. The quadratic form has no contribution from varying $\Omega_5$, the tensor kinetic coefficient or the metric star against a background tensor. With pulled-back sources, all nonconstant colour scalar and positive-degree colour-form components of $B_2$ are orthogonal to the sourced sector at this order. Their physical masses are the product Hodge eigenvalues from the electric kinetic term. Colour scalar harmonics start at $5/B^2$, coexact colour one- and two-forms at $8/B^2$ and $9/B^2$ respectively, and exact form levels come from the corresponding lower-degree physical polarization. There is no harmonic one- or two-form on $S^5$. This proves the free coloured bound, including the massive external two-form modes. It leaves the below-$5/B^2$ levels of 104 and the calibrated mirror threshold unchanged.

For changed representatives $X_\ell,Y_\ell$ on the same bundles, let $d\tau_X=X_\ell-X_0$ and $d\tau_Y=Y_\ell-Y_0$ be relative transgressions of the two connections. In this comparison the full weak connections are used in the vortex terms and, when specified, in the weak tangent contribution to $Y_\ell$. The other background characteristic fields are the same quotient fields as before. The reference connection for the vortex can be put in the full fibre gauge by adding $d\chi$ to the averaged pullback, with the mean-zero vertical Coulomb phase of 102. Its curvature is still the pullback. The two weak tangent connections can also be compared on the same oriented two-plane bundle, using the positive metric identification for the vertical frames. Relative Chern–Weil transgressions of diagonally transforming connections are invariant. Take
$$
 H=dB_2-2\pi(\mathrm{CS}_{X,0}+\tau_X),\qquad
 S_{\rm mag}=\int_E (B_2\wedge Y_0-H\wedge\tau_Y)\wedge\Omega_5 .
$$
Then $dH=-2\pi X_\ell$. The $B_2$ variation of the transgression term adds $d\tau_Y\wedge\Omega_5$ to the magnetic source by integration by parts. Under the quotient descent transformation $H$ is invariant and only the original $B_2\wedge Y_0$ term varies. Its fibre integral has the old descent coefficient because $\int_{S^5}\Omega_5=1$. This preserves the pullback anomaly variation where that variation is already supplied by the quotient construction. A full determinant and differential-cohomology completion on other flux sectors requires its own data. In the quadratic comparison $\tau_X,\tau_Y$ have zero background value. The extra quadratic contact between the electric transgression and $\tau_Y$ vanishes in the transverse vector calculation: each contains a weak two-form and an external connection slot, and their wedge has four weak legs. Thus the coloured quadratic action can be read from the local electric shift and the local magnetic term in those sectors. The colour-constant sourced pencil remains the one of 92 and 97. $\square$ [Six-dimensional periods and descent](90_a_tensor_completion_without_light_mirrors.md) · [Nonchiral electric–magnetic normalization](https://arxiv.org/abs/hep-th/9601036) · [Global Green–Schwarz data](https://arxiv.org/abs/1808.01334)

## Transverse tensor harmonics with local sources

**Proposition 105.2.** In a colour scalar harmonic of eigenvalue $\lambda_C>0$, write $\mu_n$ for the weak scalar eigenvalues, including zero, and $\lambda_n=\lambda_C+\mu_n$. Let $b_{e,n},b_{m,n}$ be the physical weak scalar coefficients of the electric and magnetic source two-forms of 92 for the chosen local profiles. In the four-dimensional transverse sector, the corresponding sourced electric and magnetic tensor vector terms can be written
$$
 \begin{aligned}
 Q_T={}&
 Z_6\sum_n\bigl(|e_n-\alpha_n b_{e,n}|^2+
                    (1-\alpha_n^2)|b_{e,n}|^2\bigr)\\
 &+Z_D\sum_n|c_n-b_{m,n}|^2,\qquad
       \alpha_n^2=\mu_n/\lambda_n,\\
 K_T={}&\sum_n\frac{Z_6|e_n|^2+Z_D|c_n|^2}{\lambda_n}.
 \end{aligned}
$$
Here the unsourced electric slot at $\mu_0=0$ can be omitted. The $Q,K$ convention is that of the weak pencil, with their quotient giving squared mass.

**Proof.** Normalize the colour scalar with respect to the round probability measure and the weak scalar in physical $L^2(\Sigma)$. The source two-form for the external vector has both internal legs on $\Sigma$. Its exterior derivative on $S^5\times\Sigma$ has squared norm $\lambda_C$ times its norm squared in each eigenmode, since the weak exterior derivative of a weak top form vanishes. It is in the product Laplace eigenspace $\lambda_n$. Thus its coexact projection has squared weight $\lambda_C/\lambda_n$ and its exact projection the complementary weight $\mu_n/\lambda_n$. This follows also from the normalized weak coexact one-form primitive and its colour derivative. The exact projection is the part seen by a transverse tensor vector $B_{1,1}$. Normalizing its derivative amplitude to $e_n$ gives the first row and its kinetic weight in the last row. Orthogonal electric polarizations are free.

The magnetic source enters the term with colour volume $\Omega_5$ and the weak two-form. It couples to the external two-form $B_{2,0}$. The weak and colour exact derivatives of that mode are orthogonal to the coexact one-form tensor vectors. Its internal squared eigenvalue is $\lambda_n$. Dualize this massive two-form by introducing the four-dimensional dual vector with Lagrange-multiplier normalization $1/(2\pi)$ as in 92.1. Completing its magnetic mass square gives $Z_D|c_n-b_{m,n}|^2$ with kinetic coefficient $Z_D/\lambda_n$. The source wedge with $\Omega_5$ kills any additional colour derivative in the magnetic term. Exact coordinate shifts in the weak vector slot have zero weak curl in the curvature source. These are the transverse mass and kinetic forms before adding the old physical vector block. $\square$ [Both tensor polarizations](92_finite_electric_and_magnetic_tensor_match.md) · [Earlier local two-form comparison](95_coloured_threshold_in_the_quotient_tensor_action.md)

**Proposition 105.3.** Localize the vortex terms in both sources and keep the weak tangent curvature contribution to the magnetic source on the quotient. Then in the coloured transverse sector the tensor form satisfies
$$
 Q_T\ \ge\ c_T\lambda_C K_T,\qquad
 c_T=\frac{Z_6}{Z_6+49 Z_D}.
$$
The first additional transverse vector on sufficiently late fixed-shape shrink has $B^2M^2\to5c_T$, about $0.8272$ in the central calibration. This bound controls the transverse spectrum. A separate scalar comparison would be needed for the full particle threshold with this source choice.

**Proof.** The local vortex terms give $b_{m,n}=7b_{e,n}$. For each degree set $q=(\sqrt{Z_6}e_n,\sqrt{Z_D}c_n)$ and $v=(\sqrt{Z_6}\alpha_n,7\sqrt{Z_D})$. The summand of $Q_T$ is $\|q\|^2-2\operatorname{Re}(\bar b_{e,n}v^\dagger q)+(Z_6+49Z_D)|b_{e,n}|^2$. Minimizing in the source amplitude bounds it below by $(1-\|v\|^2/(Z_6+49Z_D))\|q\|^2=c_T(\lambda_C/\lambda_n)\|q\|^2$. The unsourced colour form harmonics have their free lower levels. Add the old physical transverse mass bound of 104.4 to compare the sum with the old norm plus $K_T$.

For attainment in the limit choose the first colour scalar harmonic, one weak-constant vortex profile, and no metric vector on the weak surface. The electric source has period two. The weak harmonic coefficient $b_{e,0}$ is therefore $2/\sqrt{\mathcal A_\Sigma}$, with $\mathcal A_\Sigma$ the physical weak area. Its one magnetic companion may take $c_0=(7+Z_6/(7Z_D))b_{e,0}$. The Rayleigh value of those harmonic terms is exactly $c_T\lambda_C$. On the other weak harmonics choose $c_n=7b_{e,n}$ and $e_n=\alpha_n b_{e,n}$. The remaining positive nonharmonic electric cost is bounded by $Z_6\lambda_C\sum_{n>0}|b_{e,n}|^2/\mu_1$, of order $B^{-2}$ at fixed shape since $\mu_1\asymp a^{-2}$ and $\|b_e\|^2=O(a^{-2})$. The old static vortex cost is $O(CV)=O(B^{-2})$ as well. The weak harmonic tensor energy is of order $a^{-2}$ and dominates; its large norm is sufficient for the Rayleigh upper bound. Since the old lower bound on late shrink exceeds $5c_T/B^2$, the new transverse limit follows. The first colour scalar harmonics give the triplet and its conjugate with $|Q|=1/6$. The resulting transverse level remains above the comoving mirror cutoff. $\square$

## The local weak-curvature source on nonround shrink

**Proposition 105.4.** If the weak tangent curvature contribution to the magnetic source is also local, the nonround fixed-shape shrink has a charged coloured transverse pole satisfying
$$
                     M^2=O(a^2/B^4).
$$
It enters below the mirror threshold on sufficiently late shrink with the same photon and two-period normalizations. For $b=.001$ a single smooth trial profile gives a sufficient crossing bound near $B^{-1}=1.34$ TeV in the central calibration. The number is an upper-bound test for the light pole, with no equality claim for the precise crossing.

**Proof.** Choose the first colour scalar harmonic, so $\lambda_C=5/B^2$, times a neutral solenoidal weak metric vector $X=U(t)\partial_\varphi$. Set the physical vortex connection variation $z=0$ and the other old vector slots to zero. The electric source is zero. The magnetic source is now the independent local weak curvature term of 92,
$$
       \beta_m=-\ell(X)R_\Sigma/(2\pi),\qquad
       \ell(X)=-\tfrac12 *_\Sigma dX^\flat .
$$
This comes from the split local Levi-Civita connection on the weak two-plane, whose background curvature is $R_\Sigma$. The colour-dependent part of the shift has the same weak curl; colour legs in its transgression are killed by $\Omega_5$. The integral $b_0=\int_\Sigma\beta_m$ is independent of $a$ at fixed shape. It can be nonzero: taking the solenoidal vector dual to $*_h dK_h$ makes this integral proportional, up to sign, to $\int_\Sigma|dK_h|^2dV_h$ for the unscaled weak Gaussian curvature $K_h$. The nonconstant curvature is essential to this trial. With constant weak curvature the integral of the curl vanishes.

For every weak mode choose $c_n=b_{m,n}$ so the magnetic static squares vanish, and set the electric tensor to zero. The smooth metric trial makes the sequence of compensators admissible. In particular its weak-constant term adds kinetic norm $Z_D b_0^2/(\mathcal A_\Sigma\lambda_C)$. The old static energy for this trial is $CV[Q_X+\lambda_C a^2N_X]$, with $Q_X,N_X$ finite dimensionless weak forms. The second term is the colour derivative of the profile, and the first is the weak vortex vector energy at $z=0$. The quotient fields see no coloured source. The local Hopf volume derivative of 103 involves the colour metric shift in an external slot, which is zero for this weak metric vector. The coexact weak metric profile is orthogonal to the exact weak coordinate slot. The trial thus bounds the true transverse pole after including the full tensor block. In the triplet representation there is no old zero gluon. At a fixed finite member the new squares and the old positive transverse form have positive mass on this representation after quotienting the gauge directions. The eigenvalue problem has compact resolvent there: the old form controls the first weak derivatives that enter the smooth sources, and the free tensor derivative norms, or equivalently the dual weights $\lambda_n^{-1}$, give the usual compact weak Hodge embedding. Hence the Rayleigh bound concerns a positive pole. Its charge is $Q=\pm1/6$ from the colour harmonic since the weak vector is axially neutral. It is a spin-one mixture of the weak metric and the dual of the massive tensor. The nontrivial $\mathrm{SU}(3)$ representation gives its gluon coupling, and it has no linear residue on the colour-singlet weak currents.

At fixed shape $CV=3I_3/B^2$ and $\mathcal A_\Sigma$ is proportional to $a^2$. Dividing the old energy by the weak harmonic tensor norm yields $M^2\le C_b a^2/B^4$ for a finite shape-dependent constant $C_b$. Since $B\asymp a^{-2/7}$, the mass in units of $B^{-1}$ tends to zero. The mirror mass of 100 has fixed positive $BM_{\rm mirror}$, so the ordinary six-flavour window at the stated comoving scale eventually includes this coloured boson. The mass bound comes from the independent gravitational magnetic source; the fixed electric–magnetic period ratio was used throughout. $\square$ [Weak geometry and curvature profiles](55_gravitating_vortex_cylinder.md) · [Fitted weak trajectory](97_hopf_transverse_spectrum_and_current_match.md) · [Mirror calibration](100_hopf_light_fermion_window_and_hadronic_calibration.md)

**Numerical example (Python, SciPy).** In the axial coordinate of 55 put $U=u_t$, $p=e^u$, $R=K_h f^2$ and $D_b=\int f^2dt$. The smooth trial has $U'=-(1-p)f^2$. Integration by parts gives
$$
 \begin{aligned}
 b_0&=-\tfrac12\int f^2 K_h' U\,dt,\\
 Q_X&=D_b^{-1}\int f^2[(U')^2+2R U^2]\,dt,\qquad
 N_X=D_b^{-1}\int f^4U^2\,dt .
 \end{aligned}
$$
The equations in 55 give $K_h'=p u_t(2p/f^2+p-2)$ with $2p/f^2\le e^{-b}<1$, so $b_0>0$ for the finite nonround family. At $b=.001$ the values are $D_b\simeq23.72214$, $b_0\simeq0.94992$, $Q_X\simeq0.35479$ and $N_X\simeq0.29338$. Put $\epsilon_a=(a/B)^2$. With $Z_6=0.49604$ the bound becomes
$$
 B^2M^2\ \le\
 \frac{30\pi I_3D_b}{Z_D b_0^2}\,\epsilon_a(Q_X+5\epsilon_a N_X)
       \ \simeq\ 13253\,\epsilon_a(1+4.135\,\epsilon_a).
$$
On shrink $\epsilon_a=\epsilon_{a,n}(B_n/B)^9$ with $B_n^{-1}\simeq4704$ GeV and $a_n\simeq2.6649\times10^{-5}\ {\rm GeV}^{-1}$. Comparing the upper bound with $B^2M_{\rm mirror}^2\simeq0.00260$ gives the stated sufficient scale. The old singlet current fit stays in the same quadratic sector, while the strong matching has acquired a light matter threshold.

## A fixed tensor kinetic term that retains the transverse ordering

**Proposition 105.5.** With all the local sources of 105.4, an anisotropic tensor kinetic term on the marked fibration can preserve the old first transverse vector along the entire fitted broken path. It retains the same colour-constant tensor action and still propagates the colour modes at every finite member. The kinetic anisotropy is an independent action input. This comparison concerns transverse vectors.

**Proof.** Weight the squared norm of an $H$ component with $k$ colour legs by $\zeta^k$, using the fixed positive field function $\zeta=\zeta_0[1+(B_\sigma/a_{\rm dil})^4]$. The weak scale dilaton has $a_{\rm dil}=a$ on the supported product. This changes neither the Bianchi classes nor the pulled-back action. In a colour scalar harmonic the squared tensor level is now $\Lambda_n=\zeta\lambda_C+\mu_n$ and the electric angle of 105.2 is $\alpha_n^2=\mu_n/\Lambda_n$. These statements follow from the product norm on forms: the vertical exterior derivative has squared weight $\zeta\lambda_C$ for one new colour index and the weak derivative is unchanged. Dualizing the external two-form changes its mass parameter in the dual kinetic denominator to $\Lambda_n$.

For the coupled source block let $Q_0,K_0$ be the old transverse forms. The fields supplying the local sources are the weak metric vector and vortex vector times the colour scalar harmonic. Their core bound is $Q_0\ge\lambda_C K_0$ by the product split and the nonnegative weak vector form of 69.1. They do not share a sourced local colour metric slot: the weak tangent connection in the background sees the weak curl of the shift, whereas the local volume derivative uses a colour-tangent shift. Old colour metric vectors and the auxiliary $C$ field have no source in this tensor block. With a trial squared mass $m^2=c\lambda_C$, $0<c<1$, eliminate the tensor terms in $Q-m^2K$. The electric Schur contribution is nonnegative because its numerator is $\zeta\lambda_C-m^2$. The absolute value of the negative magnetic contribution is at most
$$
 \frac{Z_D c}{\zeta-c}\,\|\beta_m\|^2 .
$$
Here the norm is the weak $L^2$ two-form norm at fixed normalized colour harmonic. It results by minimizing $Z_D|c_n-b_{m,n}|^2-Z_Dm^2|c_n|^2/\Lambda_n$ in each mode.

There is a constant $C$ independent of $a,B$ on this trajectory such that
$$
 \|\beta_m\|^2\ \le\
 \frac{C}{CV a^2}(Q_0+a^{-2}K_0).
$$
Indeed in the unscaled weak metric both the vortex density and curvature are bounded on the compact shape interval from the finite point to $b=.001$, which then stays fixed. The source norm is bounded by $a^{-2}$ times the weak norm of $z$ and the curl of $X$ in that metric. Only the coexact weak metric component enters this curl. Its trace-free Lie derivative square controls the curl up to a curvature-weighted zeroth-order term by the Hodge identity of 69.1. The weak vortex cross terms see only this coexact component, as in 101.1. The old static energy holds the derivative square with coefficient proportional to $CV$. The old kinetic energy holds the coexact metric and vortex norms with coefficient proportional to $CV a^2$. Exact coordinate shifts are excluded from these norms. This proves the estimate for arbitrary smooth weak profiles. Together with $CV=3I_3/B^2$ and $\lambda_C\ge5/B^2$ it makes $\|\beta_m\|^2/Q_0$ at most a constant times $1+(B/a)^4$. Choosing $\zeta_0$ sufficiently large for the fixed $c$ therefore absorbs the magnetic term in $(1-c)Q_0$. The whole sourced transverse block has squared masses at least $c\lambda_C$, and the additional free colour forms have at least the same bound.

The desired old first transverse pole of 103 has dimensionless squared mass uniformly below $5$ on this path. The strict triplet bound and its limit below $5$ give this on the shrink, and continuity and the finite-leg broken Killing bound give it on the compact segment. Choose $c$ with $5c$ above that supremum. The old lowest vectors are unsourced by the weak tensor forms: they have no weak metric vector or vortex vector slot, and the exact-coordinate compensation of 103 has weak-constant profile. Thus their poles survive unchanged and the new source and free tensor blocks lie above them. This proves the transverse ordering in this anisotropic action. $\square$ [Old local vector thresholds](103_hopf_local_connection_transverse_shell.md) · [Nonround weak vector form](69_gravitating_vortex_colour_gap.md)

Keeping $\zeta$ constant cannot remove the low-mass comparison of 105.4. With any positive $\zeta$ the same trial replaces the weak-constant dual kinetic denominator $\lambda_C$ by $\zeta\lambda_C$. It still forces a pole below mirrors when $\zeta(a/B)^2\to0$. The specified quartic growth is sufficient for the stronger transverse ordering statement.

**Provenance.** Bulk normalized tensor, aligned-source bound and nonround low-pole comparison by gpt-6.2-sol ultra with the tensor and fermion research agents. Claude Opus 5.5 checked every ledger claim of this file on 20 November 2026 and found no error. Some of these checks took forms or numbers of this file as stated; the ledger `checked_by` rows record what each check covered. The claims that use the fits of 92, 93 and 97 hold with those numerical inputs. GPT-6.1 Terra reproduced the fit outputs using the existing implementations; the review scope and input limitations are recorded in [the numerical check](../paper/NUMERICAL_CHECKS.md).
