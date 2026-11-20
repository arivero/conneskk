# Referee checks of finite fits and constrained operators

## Numerical reproduction of the weak fits

Fix the actions, period conventions and central weak inputs of results 78, 92,
93 and 97. Vary Galerkin degree and, separately, which Fermi observable is
held out. The observables are the inverse-fit outputs and their derived
spectral quantities. GPT-6.1 Terra performed the following Python/SciPy checks
on 20 November 2026. The first three calculations rerun the authors' existing
implementations: they check reproducibility and degree stability, while their
underlying pencils and experimental input conventions remain assumptions. The
independent spline assembly below uses the common vortex ODE and spline basis.
The values below are tree-level model comparisons, with no uncertainty fit.

From the repository root, with `OPENBLAS_NUM_THREADS=1`:

- `python3 paper/dual_tensor_currents.py` returns branches 0.445245738 and
  2.227465798 at 500 GeV, vortex masses 1665.9253 and 1670.5291 GeV, and
  lower-branch charged contact fraction 0.99998719861. Adding `--degree 6`
  changes the first mass by 0.000005 GeV relative to the default degree 8.
- `python3 paper/dual_tensor_currents.py --maximize-compact` gives 580.21255
  GeV. With `--hold-out-fermi --maximize-compact` it gives 828.90638 GeV;
  replacing `--maximize-compact` by `--compact-mass 800` gives the lower
  branch 0.682172852, 2364.7162 GeV and
  $G_F=1.16093379\times10^{-5}$ GeV$^{-2}$.
- `python3 paper/tensor_trajectory.py` gives $P_b=18.639568$,
  $I_T=0.1895142$, meridian levels 7.0562, 14.0273 and 20.8667 TeV,
  and for the fixed-shape limit $S_b=0.00105575547$ and
  $M_C^2/(CV)=37.25276$.
- `python3 paper/hopf_transverse_currents.py` gives 1.655474, 6.682781 and
  23.174428 TeV for the vortex, locking and five-form poles, charged contact
  fraction 0.999898678 and right-neutrino $Z$ vertex 0.000439946. Adding
  `--degree 6` agrees in displayed precision. With `--hold-out-fermi`, it
  gives $B^{-1}=9.29934$ TeV and $G_F=1.1618340\times10^{-5}$ GeV$^{-2}$.
  With `--trajectory`, the finite-neck and fixed-shape $\Xi$ values are
  $2.76585\times10^{-13}$ and $2.60444\times10^{-13}$, and the charged
  pole ratios are 93380.6 and 163387. These reproduce the corresponding
  entries in result 100, given its separate hadronic calibration.
- `python3 paper/hopf_charge_match.py` and the same command with
  `--zero-weak-charge-sum` give 7.044961 TeV for the leading locking pole
  and 4377.5887 GeV for the cancellation stiffness, respectively. The
  full finite fit with `--cancel-weak-charge` instead gives 4371.6688 GeV;
  these are different approximations.
- `python3 paper/soft_tensor_referee.py` independently assembles the axial
  variational form and constraint stated in 107, using the common vortex
  and spline routines. Spacings $1,1/2,1/4,1/8$ give
  $\inf\mathscr H_5/(3I_3)=0.19586702,0.19575881,0.19575814,0.19575813$
  and $C_{\rm soft}=6601.93,6598.28,6598.26,6598.26$. The finite interval
  and trapezoid quadrature give numerical convergence evidence, not a
  rigorous error bound or an independent action reduction.

For the six-dimensional spectator spectrum of result 90 (claim `vortex_neutral_spectator_tensor`), applying the printed signed multiplicities to the seven
integer columns $(d,T,dw^2,D,Aw,Tw^2,dw^4)$ gives
$(0,-12,-360,-120,0,-438,-24840)$, 39 components of each chirality and
unsigned colour index 38. For result 105, independent quadrature of the stated trial using the common vortex ODE gives
$D_b=23.72213665$, $b_0=0.94991695$, $Q_X=0.35478566$ and
$N_X=0.29337946$. These give coefficients 13252.64 and 4.13460 in the
trial bound. Substituting the printed rounded
numbers into $13253\epsilon(1+4.135\epsilon)=0.00260$, with
$\epsilon=(2.6649\times10^{-5}\cdot4704)^2(B_n/B)^9$, gives
$B^{-1}=1341.59$ GeV by a scalar root solve. This tests the displayed trial
bound, not equality of the physical crossing with that number.

The central neutrino-scattering input that supplies the small positive vortex
contact has experimental uncertainty larger than that contact; the fitted
heavy scales therefore cannot be assigned precision from the displayed digits.
The held-out $G_F$ values closely reproduce the familiar single-doublet tree
relation for the chosen pole inputs. The fitted positive action coefficients
and extra poles supply the model-specific comparison. Radiative matching,
thresholds and experimental covariance remain separate calculations.

In the first numerical pass, GPT-6.1 Terra substituted the matrix from result 68 into
SymPy: its four leading minors at $t=16/3$ and $6$ and the two $t=2$
exceptional determinants agree exactly with the printed rational expressions.
This checks the matrix after reduction. The same pass checked the vortex
square algebra in 69 and the cancellation of horizontal root terms in 71.
The following hand calculation checks the reduction from the actions
themselves, including the null constraints and the domain of the projection.

## Independent action reduction of results 68, 69 and 71

GPT-6.1 Sol independently checked the following reductions by hand on
20 November 2026, starting with the actions in results 62--65 and the
off-background orthogonal-connection specification in 71. The action,
background fluxes and compact member are fixed; the complete linear metric,
Maxwell, dilaton, vortex and root variations are allowed. The observable is
the constrained quadratic form and its kinetic weight. This check addresses
the preceding action-reduction questions. It does not rerun the spectral
determinants or the numerical fits. No historical report was used.

### Round metric, Maxwell and dilaton equations

For one flux, the terms inside the common Einstein prefactor are
$R-Z|F|^2/2-2U-|ds|^2$, with factorial form norms. Thus the
nonisotropic trace-reversed Einstein source is $ZF_{MK}F_N{}^K/2$,
the Maxwell equation is $\nabla_M(ZF^{MN})=0$, and the scalar equation is
$\Box s=Z'|F|^2/4+U'$. These fix the relative gravitational and matter
normalizations without assuming the mass form in 68.

Let $g_{+-}=-1$, $h_{-M}=a_-=0$, and $\partial_-\ne0$.
The $--$ equation is $-\partial_-^2\operatorname{tr}h/2=0$.
Writing $u_A=\partial_-h_{+A}$, the $-A$ equation gives
$$
 V_A=-u_A+\nabla^B h_{BA}
       =Zf^2\omega_A{}^j\beta_j
       =2\lambda\omega_A{}^j\beta_j,
 \qquad a=f\beta .
$$
The Maxwell $N=+$ equation is
$\partial_-(-\partial_-\beta_++\nabla^A\beta_A)=0$.
Consequently its constraint is zero *full* divergence; it imposes no
additional internal co-closedness condition on the independent $\beta_A$.
Likewise, the independent transverse $h_{AB}$ has zero trace, while its
internal divergence determines $h_{+A}$. Here transverse refers to the
indices outside the two null directions.

The trace-free Einstein equation follows from
$2\delta R_{AB}=(C-m^2)h_{AB}+\nabla_AV_B+\nabla_BV_A$.
In the stress variation the terms
$2\lambda\omega_B{}^k\nabla_A\beta_k+(A\leftrightarrow B)$
cancel these divergence gradients. The remaining output in the mass
operator is
$T(2\lambda Ph+2\lambda D\beta-4\lambda g_I S)$.
The common scalar multiple of the full transverse metric vanishes after
the trace-free projection $T$.

Integration by parts on the compact product gives
$$
 (D^*h)_A=2\omega^{kB}\nabla_k h_{AB},\qquad
 ((d_\omega)^*S)_j=-\omega^{ij}\nabla_iS .
$$
Linearizing the Maxwell density gives
$d\beta-h^M{}_K\omega^{KN}-h^N{}_K\omega^{MK}+2S\omega^{MN}$.
The two metric-divergence terms in its equation are respectively
$-2\lambda\beta^\parallel$ and $-D^*h/2$; the scalar term is
$-2(d_\omega)^*S$. Moving them to the mass side gives exactly the
Maxwell row printed in 68. Finally
$\delta|F|^2=f^2(2d_\omega\beta-\tau)$ and
$Z|F|^2+4U=2q\lambda$ give the scalar row
$-\lambda\tau+2\lambda d_\omega\beta+2q\lambda S$.

Four times the null kinetic action has transverse norm
$\|h\|^2+2Z\|a\|^2+4\|S\|^2
=\|h\|^2+4\lambda\|\beta\|^2+4\|S\|^2$.
The metric--Maxwell cross coefficient is therefore
$2\lambda+4\lambda/2=4\lambda$; the metric--scalar coefficient is
$-4\lambda-4\lambda=-8\lambda$; and the Maxwell--scalar coefficient
is $8\lambda+8\lambda=16\lambda$. This independently fixes all
the mixed coefficients of $\mathcal Q_I$. The two flux planes have
orthogonal support, so contracting one flux form with the other flux's
momentum source gives zero. The additive product reduction in 68 follows.

### Vortex auxiliaries and density boundary terms

Use the charge-one vortex convention of 69, so $Z=4e^{2s}$ and $G=2$.
For $-G|D\Phi|^2$ the Einstein $-i$ source is
$G\operatorname{Re}[(D_i\Phi)^*\partial_-\varphi]$.
Together with Maxwell stress this is $\partial_-j_i/2$, with exactly
the $j_i$ printed in 69. The Maxwell Euler equation has the sign
$$
 \nabla_M(ZF^{MN})+
       2G\operatorname{Re}[(i\Phi)^*D^N\Phi]=0 .
$$
Its plus equation gives
$v=\operatorname{div}a-(2G/Z)\operatorname{Re}[(i\Phi)^*\varphi]
={\cal G}$, while Einstein gives $u=D^0=\operatorname{div}h-j$.

The coefficient of $u^2$ in four times the static quadratic potential
is fixed by the Einstein divergence term
$-2\|\operatorname{div}h-u\|^2$. Since
$F_{-+}=v$ and $F^{-+}=-v$, the electric Maxwell term contributes
$-2Z\|v\|^2$ in the same normalization. The charged and magnetic
currents supply the remaining linear terms. The auxiliary expressions
are consequently
$$
 -2\|u\|^2+4\langle u,D^0\rangle,
 \qquad -2Z\|v\|^2+4Z\langle v,{\cal G}\rangle .
$$
Stationarity gives the two constraints above and adds
$2\|D^0\|^2+2Z\|{\cal G}\|^2$.

The boundary density can be checked before any completion. The
Einstein variation contributes
$\operatorname{div}(d\tau-\operatorname{div}h)$, the Maxwell variation
contributes $\operatorname{div}(ZF_i{}^j a_j)$, and the complex kinetic
variation contributes
$\operatorname{div}(2G\operatorname{Re}[(D_i\Phi)^*\varphi])$.
All bulk first variations vanish on the background. Their sum is
$\operatorname{div}(d\tau-D^0)$.

For a spectator metric $e^{2A}g_e$, the exact curvature expression is
$R_g-2e\Delta A-e(e+1)|dA|^2$. Integrating with volume $e^{eA}$
in the negative-curvature potential gives $-e(e-1)|dA|^2$.
With $eA=-\tau/2$, multiplication of the preceding first variation
by the linear spectator volume adds, in four times the potential,
$2\|d\tau\|^2-2\langle d\tau,D^0\rangle$.
The warp-gradient term subtracts $(1-1/e)\|d\tau\|^2$.
Their sum with the auxiliary terms is precisely
$$
 2\|D^0-d\tau/2\|^2+
       (1/2+1/e)\|d\tau\|^2+2Z\|{\cal G}\|^2 .
$$
The completed internal action gives the $C,M$ variations of 69 directly:
$\delta\mathcal B=*da-\mathcal B\tau/2$ and
$\delta e_A{}^i=-h_A{}^i/2$. The two dilaton contributions in $M$
coincide by $e^s\mathcal B=e^{-s}(1-|\Phi|^2)/2$.
Thus $U_0^{(2)}=\|dS\|^2+2\|C\|^2+2\|M\|^2$.
There is no boundary on the compact sphere. Integrations in the null
coordinate can be made on Fourier pairs or on wave packets. Fixed
bundle degree and Gauss--Bonnet remove the two topological integrals.
These steps reconstruct the scalar identity from the Lorentzian action.

The vector check also follows from the same action:
$\|(\mathcal L_Xg)^\circ\|^2
=2\langle X,(\Delta_1-2K)X\rangle$ on a surface, and the background
Einstein equation is
$K|X|^2=(Z/2)|\iota_XF|^2+G|D_X\Phi|^2$.
The curvature term therefore cancels the background pieces in the
two matter squares of 69, with weights $2Z$ and $4G$. This checks
the nonround vector reduction as well as the scalar reduction.

### Root projection, sources and coordinate equations

The action in 71 specifies the off-background horizontal lift; its
linearization is $\delta N_a{}^m=h_a{}^m$. Since every background
horizontal root derivative vanishes, the quadratic horizontal action is
exactly $-Z_Hg^{ab}_{\mathcal B}\operatorname{Re}\langle W_a,W_b\rangle$.
Neither a volume variation nor a base inverse-metric variation adds a
quadratic term. Transporting the roots by an internal coordinate
variation cancels $\partial_a\xi^mD_mH$ from the mixed metric. The
remaining term is $(D_mH)\nabla_F^m\xi_a$, giving the operator
$\mathcal F$ printed in 71.

There is an additional coordinate check. Define $\mathcal F$
on real $H^1(F)$ and take its range closure in the real two-root
$L^2$ space, as in 71. For $p=P\psi$ its distributional adjoint is
$$
 \mathcal F^*p=-\nabla_F^m
       \operatorname{Re}\sum_\pm[(D_mH_\pm)^*p_\pm]=0 .
$$
In particular the root metric source
$J_m=2Z_H\operatorname{Re}\sum_\pm[(D_mH_\pm)^*p_\pm]$
satisfies $\nabla_F^mJ_m=0$. This is the residual external-coordinate
equation expressed in the projected variables.

For any actual stationary auxiliary solution,
$W_a=K_a-\mathcal F\xi_a$ and $\mathcal F^*W_a=0$ imply
$W_a=PK_a$. Existence of such a solution for every arbitrary $K_a$
is unnecessary for a lower bound. Even when the range is nonclosed,
$\inf_\xi\|K_a-\mathcal F\xi\|^2=\|PK_a\|^2$.
For spacelike components this is the comparison used in 71. For time
and null components one uses stationarity on the actual admissible
domain. This establishes their projected kinetic norm and does not
assert a smooth auxiliary representative for every projected $L^2$
field. A smaller admissible domain preserves the lower estimate.

The horizontal null term shifts the Einstein source by $-J_m$ and the
charge-one Maxwell Gauss source by $-J_A/Z_A$, where
$J_A=2Z_H\operatorname{Re}\sum_\pm[(iH_\pm)^*p_\pm]$.
These signs follow by the same integration in $x^-$ as for the vortex
current above. Eliminating the auxiliaries gives projective cross terms
$-4\langle\nabla^i h_{im},J^m\rangle
-4\langle\nabla^iv_i,J_A\rangle$.
Direct expansion of $4Z_H\|\partial_i p-P\mathcal U_i\|^2$
and integration by parts gives their opposites. Orthogonality of $P$
justifies removing it from the pairing with $p$. Equal external and
projective coefficients are exactly what makes the multipliers agree.

The $--$ constraint remains the trace equation: the background has zero
horizontal root derivative, and the internal squares have no linear
variation with respect to the null base inverse-metric component. The
mixed metric stress does have the linear current $J$ derived above. The
colour Maxwell constraint stays unchanged because the roots are
neutral under that connection. The remaining internal coordinate
variables enter the internal zero-background squares without base
derivatives. The projective coordinate variables enter additionally
through the positive spatial horizontal residual and the colour curl;
the $d_c\xi_\chi$ part of the latter has zero curl. Keeping these
variables or taking their stationary/minimized spatial form cannot
lower the comparison. Thus no further coordinate, Maxwell or root
constraint was omitted from the lower-bound argument. The common
linearized time-symmetric Hamiltonian constraint follows pointwise
from the zero first energy variation of each added square. Its added
quadratic spatial energy is nonnegative. With the positive projected
kinetic norm this verifies the fibre-positivity step in 71.

These calculations close the three specified action-reduction checks.
They require the fibration action and equal horizontal coefficient
stated in 71. A different horizontal prescription would require a new
reduction. No undefined action coefficient or additional boundary datum
was found for the compact fixed-flux problem.

## Regularity of the finite inverse in result 78

GPT-6.1 Sol also checked the explicit light inverse and supplied a hand
proof of the previously assumed finite-map regularity in
[result 78](../results/78_finite_weak_pole_and_current_match.md#compact-sphere-regularity-of-the-finite-inverse).
The proof uses regular polar coordinates on the fixed compact sphere,
extracts the common fractional root amplitude before constructing its
elliptic gradient projector, proves uniform invertibility of the round
angular complement on a common $H^1$ form domain, and factors the
finite light Schur pencil as $L^2\widehat S$. The prefactor $1/(CV)$
cancels the corresponding static-inverse singularity. The resulting
map is continuous in the radius parameter with jointly continuous
derivative in the five scaled microscopic parameters, as required for
the parameter-dependent inverse theorem. The analytic reduced forms
give the stronger all-variable regular extension as well.

For simple selected sourced poles and strict positive leading inputs,
this establishes the local positive finite inverse for sufficiently
small $L$. It provides no quantitative admissible-$L$ threshold and
does not certify the printed $2$ TeV Galerkin fit as an exact solution
of the infinite operator. A direct numerical inverse and its degree
convergence remain different checks.

## Parent character in result 90

For the separate ten-dimensional claim `projective_vortex_spectator_descent`,
the six parent species of 72 give the signed character, per family,
$(e^{z_q+x}+e^{-3x})[(e^{2v}-1)-(e^{3x}+e^{-3x})(e^v-1)]$. Here
$z_q=-4h$ is the actual $\mathcal O(-4)$ twist, and the terms $-1$ represent
the opposite-chirality zero-vortex spectators. Its equivalent form in result
90 makes the $v^2$ and $x^2v$ factors explicit. The projective triplet arises
from $H^{0,2}(\mathcal O(-4))$, dual to $H^0(\mathcal O(1))$; the latter
line is not the parent twist. This corrects the former six-dimensional sum
attribution in the ledger and the line-class convention in result 90.

## Hadronic ratios in result 100

To check the remaining result 100 table columns, use the supplied input
$B_*^{-1}=5495.75997$ GeV, $B_n^{-1}=4704.73509$ GeV,
$H_{N,*}=0.312$ GeV, $f_S=5000$ GeV and $I_3=0.7698512376$. Result 99
gives $M_g=\min\{\sqrt\mu, B^{-1}\sqrt{g(s)},
B^{-1}\sqrt{15-\sqrt{120}}\}$, where $s=f_S^2B^2/I_3$ and
$g(s)=8s/[8+s/2+\sqrt{64+s^2/4}]$. The meridian estimate gives
$\sqrt\mu\ge6324.54$ GeV on the finite segment. The two colour
candidates are 3961.31 and 11053.92 GeV at the fit, and 3936.25 and
9462.89 GeV at the neck. With $H_N=H_{N,*}B_*/B$, the resulting ratios
are 12696.50 and 14737.38. On late shrink the $j=2$ shell gives
$\sqrt{15-\sqrt{120}}/(H_N B)=35429.24$. The omitted mirror ratio is
$280/0.312=897.4359$ at every member. At the fit $M_C/H_N=257.4808$ and
$G_F H_N^2=1.1353995\times10^{-6}$. These agree with the rounded table.
The homogeneity comparison keeps the renormalized dimensionless coupling and
all $m_i B$ fixed; dimensional transmutation and the calibrated hadron input
then keep $\Lambda_3B$ and $H_NB$ fixed. The finite matching terms remain
separate inputs, as stated in result 100.
