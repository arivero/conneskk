# Referee checks of finite fits and constrained operators

## Disposition of the fifteen November checks

Each group below received an end-to-end check by a model different from the original author. The earlier partial checks remain attributed to their original referees. For claims containing computed fits, threshold estimates or an infimum evaluated on a mesh, the ledger records both the derivation and the numerical method. A numerical value reproduced with SciPy cannot be graded as a hand calculation.

| Result | Independent checker | What was checked |
|---|---|---|
| 68.1, 69.1, 71.1 | GPT-6.1 Sol | From the specified actions through the constraints, determinant or projection bounds and final spectral statements. |
| 78.1 | GPT-6.1 Sol | Both inverses and the compact-sphere regularity proof for sufficiently small circle radius. A separate degree-12 calculation checks the two finite illustrations. |
| 90, ten-dimensional spectator descent | GPT-6.1 Terra | Signed species sum with the corrected projective twist and local factorization. |
| 94.4, 100 | GPT-6.1 Terra | Analytic neutral-current and QCD normalization arguments, with the fitted values and complete hadronic table reproduced in Python/SciPy. |
| 98.2 | GPT-6.2 Astra | Corrected the coupled degree-one bound to $5/B^2$. GPT-6.1 Terra separately checked the mode attaining it. |
| 104.1–104.5 | GPT-6.2 Astra | Local constrained Hessian, bounds, towers and ordering. An independent SciPy diagonalization also verifies the 104.5 example. |
| 105.4, 107.1 | GPT-6.2 Astra | Variational proofs, normalization and ordering, with the sufficient crossing and soft coefficient independently recomputed. [Finite-element check](soft_tensor_finite_elements.py) |

The three formerly pending fits (92, 93 and 97) were reproduced by GPT-6.1 Terra. The comparison uses the supplied actions and Born inputs. A finite-element limit, a central fit and a physical measurement have different uncertainty budgets.

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

## The locking charge and neutral poles in 94.4

GPT-6.1 Terra checked the leading inverse by hand and reran the two
finite-matrix fits in Python/SciPy. Write $A_Q=kp$, $z=w-kp$ and
$l=3p-2c$. The coefficient of $A_Q^2$ in
$I_Ww^2+6I_3p^2+I_Cc^2$ is $I_Q=I_W+(6I_3+9I_C/4)/k^2$.
After orthogonal projection off the photon the remaining kinetic entries are
$K_{zz}=I_W(1-s)$, $K_{zl}=I_W\eta$, $K_{ll}=I_C/4-I_Q\eta^2$,
where $s=I_W/I_Q$ and $\eta=3I_C/(4kI_Q)$. The corresponding
sources are $T_3-sQ$ and $-q_C/2+\eta Q$. The latter is $3/2$ for the
left neutrino, $3/2-\eta$ and $5/2-\eta$ for the left and right electron,
and $1/2$ for the right neutrino. In the proton-plus-electron vector sum
the electric charges cancel and the vector $C$ charges sum to $-12$.
The electron axial locking source is $-1$. With the weak-charge convention
of 81.1 this gives the positive locking term $6v_F^2/f_S^2$ alongside
the vortex term $-12d_v$.

Eliminating the locking coordinate from the neutral mass determinant at
$M_Z$ gives $v_h^2/4=M_Z^2K_{zz}+M_Z^4 K_{zl}^2/(f_S^2-M_Z^2K_{ll})$.
The fitted branch requires a positive denominator and kinetic determinant,
$\rho>1$ and $0<d_v<1$. In that branch the measured axial contact fixes
$d_v$ for given $\rho$, and the vector contact fixes $s$. For the inputs
of 94.4 the leading-matrix program above gives $M_{\rm lock}=7044.961$ GeV
and $B^{-1}=5509.218$ GeV. With the zero-charge-sum input it gives
$f_S=4377.589$ GeV. These are numerical solutions in that approximation.

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

## Independent check of Proposition 105.4

Fix the relative electric and magnetic representatives of 105.1 with the split weak tangent connection. The local minus pullback transgressions transform at both ends under the same gauge change. The term bearing the descent variation therefore retains its coefficient after integration over the unit colour period. In an external transverse slot the two linear transgressions have weak top-form coefficients $zF_A/\pi$ and $7zF_A/\pi-\ell R_\Sigma/(2\pi)$, since the derivative of a squared curvature contains two copies of the background curvature. The vertical skew connection gives $\ell=-*dX^\flat/2$. An exact weak shift contributes zero curl. Tensor gauge transformations remove the internal exact one-form polarization alongside its longitudinal partner; the remaining electric vector uses a coexact primitive. For a product scalar harmonic with $\lambda=\nu/B^2+\widehat\mu/a^2$, the weak area source has exact fraction $\widehat\mu/(a^2\lambda)$ by the product Hodge decomposition. Its coexact remainder remains in the static norm. The external massive two-form gives the magnetic dual vector with kinetic weight $Z_D/\lambda$, $Z_D=(4\pi^2 Z_6)^{-1}$. Colour derivative legs in the magnetic source vanish against the colour volume form. These facts give the two squares of 105.2 in this representative.

In a first colour harmonic take $z=0$, $X=U\partial_\varphi$ and $c_n=b_{m,n}$. With $R_\Sigma=K_hf^2dt\wedge d\varphi$ the magnetic period is $\frac12\int K_h(f^2 U)'dt$, or $-\frac12\int f^2K_h'U\,dt$. The conformal scale cancels between the weak curl and its Hodge star. The fixed-flux backgrounds of 55 give $f^2=2\exp(u+b+e^{-b}-e^u)$ and $u_{tt}=(e^u-1)f^2$. Choosing $U=u_t$ yields a nonzero period on the nonround member. The harmonic tensor norm is at least $Z_D b_0^2/(2\pi a^2 D_b\lambda_C)$; the old static cost is $(3I_3/B^2)(Q_X+\lambda_Ca^2N_X)$. Their quotient gives the displayed bound and the $a^2/B^4$ scaling. At finite radii the old transverse mass controls the physical triplet profiles in $H^1$, and the two residual squares control the tensor amplitudes in $L^2$. The kinetic embedding of the latter is compact by the weights $1/\lambda_n\to0$. Zero energy forces each physical slot to vanish. Thus this trial bounds an actual positive eigenvalue. The neutral axial profile leaves the Hopf weight $\pm1$ as the sole charge numerator; the mirror calibration has $BM_{\rm mir}>0$.

An independent DOP853 solve in Python/SciPy with $u(0)=-.001$, $u_t(0)=0$ and reflection at the equator gives $(D_b,b_0,Q_X,N_X)=(23.72213665,0.94991695,0.35478566,0.29337946)$. With $a_n=2.6649\times10^{-5}\,\mathrm{GeV}^{-1}$, $B_n^{-1}=4704\,\mathrm{GeV}$ and $BM_{\rm mir}=280/5496$, equating the single-trial bound to the mirror value gives $B^{-1}=1341.33\,\mathrm{GeV}$. This is sufficient on the smaller-$B^{-1}$ side. It determines neither the finite eigenfunction nor the exact crossing.

## Independent check of Proposition 107.1

Put $e=a/B$, $\lambda_C=\nu/B^2$, and test $m^2=d e^2/B^2$. Minimizing each strictly positive tensor diagonal in $Q-m^2K$ gives electric multiplier $Z_6(\lambda_C-m^2)/(\lambda_n-m^2)$ and magnetic multiplier $-Z_Dm^2/(\lambda_n-m^2)$. For the harmonics normalized on $h$, the physical source coefficients are $a^{-1}\widehat b_n$. After multiplication by $B^2$ the $n=0$ electric and magnetic contributions are respectively
$$
 Z_6 e^{-2}|L_e|^2/A_h,\qquad
 -d Z_D |L_m|^2/[(\nu-d e^2)A_h].
$$
For $n>0$ the electric coefficient of $|\widehat b_{e,n}|^2$ is $Z_6(\nu-d e^2)/(\widehat\mu_n+\nu e^2-d e^4)$; the corresponding magnetic coefficient is $-Z_Dd e^2/(\widehat\mu_n+\nu e^2-d e^4)$. Since $\widehat\mu_1>0$, the errors from their limits are $O(e^2)\|u\|_{H^1}^2$ at fixed shape and $\nu$. On $L_e=0$ this yields exactly the positive weak form $\mathscr H_\nu$ minus one magnetic period square. The weak energy controls $H^1$ modulo the axial lift. The electric primitive of that lift is nonzero although its period vanishes. Compactness modulo the finite kernel thus gives coercivity of $\mathscr H_\nu$ on $\ker L_e$. The chosen metric trial gives $L_m\ne0$ there. A fixed complementary direction for $L_e$ has positive penalty of order $e^{-2}$; completing its square costs only $O(e^2)$ in the bounded residual form. The limiting sign change occurs at the infimum of 107.1.

Azimuthal averaging preserves $L_m,L_e$ and decreases the invariant quadratic energy. In the surviving axial sector reflection retains odd $U$ and even $z$; the uncoupled parity contributes positive energy. The physical tangential gauge shift has already been removed in this quotient. On the codimension-one subspace $c_0=0$ the old and electric energy control $B^{-2}\|u\|_{H^1}^2$, including the lifted axial kernel. Nonconstant magnetic kinetic weights obey $\lambda_n^{-1}\le a^2/\widehat\mu_1$. The bound on the source and the magnetic square therefore control the full kinetic norm by $O(B^2)Q$ there. This leaves one soft polarization in each first harmonic. Comparing colour degrees at fixed $e_n/\sqrt{\lambda_n}$ and $c_n$ increases the electric and old energy and decreases the magnetic norm. Also $C_\nu\ge(\nu/5) C_5$ for $\nu\ge5$ from the positive electric primitive term and the prefactor in the infimum. The next scalar degree has $\nu=12$; monotonicity gives uniform separation above it. The scalar gap of 106.1 for fixed positive sextet stiffness and the other old coloured gaps complete the ordering. The $j=1$ real colour shell is a complex triplet and its conjugate. In a kinetic-unit soft eigenmode, $Q=O(e^2/B^2)$ implies $\|u\|_{H^1}=O(e)$. The old and electric norms are $O(e^2)$ since their energies dominate $\lambda_C$ times these norms. For $n>0$ the exact magnetic equation $c_n=b_{m,n}/(1-m^2/\lambda_n)$ and the weak gap give the same $O(e^2)$ bound. This puts $1-O(e^2)$ of the kinetic norm in the harmonic magnetic slot.

The cubic-spline program gives $6598.2570$ at spacing $1/8$. A separate Python/SciPy calculation on $0\le t\le22$ used continuous affine fields $U,z,q$, $U(0)=q(0)=q(22)=0$, with one midpoint constraint $q'=A'z/\pi$ per element. This enforces the electric period and represents its primitive with energy $4\pi Z_6\nu\int q^2dt$ on the half-interval. The magnetic constraint is $-\int f^2 K'_hU\,dt=1$. The coefficient $16$ in the vortex gradient and local squares includes the charge-two coupling to the square-root connection. Spacings $0.025,0.0125,0.00625$ give $C_{\rm soft}=6598.2257,6598.2492,6598.2551$, respectively, with $Z_6=0.49604141748$ and $I_3=0.76985123759$. Both methods support the stated four significant figures as a numerical estimate.

## Completed hand reviews of 68.1, 69.1, 71.1 and 78.1

GPT-6.1 Sol completed the independent reviews of these four actual ledger
statements on 20 November 2026. Fix each stated action and its compact
background, vary all fields admitted by its physical domain, and test the
claimed nonnegativity, gap or local inverse. This completes the preceding
action-level checks with the following spectral and analytic checks. All
four dispositions are **verified as stated**, with their explicit
hypotheses. The four Sol ledger rows consequently use `by_hand`.

For **68.1**, the co-closed metric--one-form block, after normalizing the
one-form by a factor two, has diagonal $t-2,t+2$ and squared off-diagonal
$2(t-2)$. Its lower eigenvalue is $t-\sqrt{2t}$. Longitudinal and co-closed
images of the trace-free Lie derivative are orthogonal by polarization of
the printed norm identity, so the completion also covers representations
containing both. For the longitudinal four-dimensional matrix, the
threshold data $(a,b,c,d,p^2,r^2,v^2,s^2,rvs)$ are
$$
 (17/6,107/40,82/3,154/3,48,16/3,16,1024/3,512/3)
$$
and
$$
 (7/2,127/28,30,38,32,24,16,384,384).
$$
Expanding $M_3=abc-bp^2-ar^2$ and
$M_4=(ac-p^2)(bd-v^2)-ab s^2-ar^2d+2arvs$ by hand gives exactly the
four minors printed for each factor. In particular the fourth-minor
numerators over denominators $540$ and $14$ are respectively
$1928935-1396992-418880+522240=635303$ and
$159797-85344-44688+37632=67397$.
The derivative Schur margins at the two thresholds are $115/48$ and
$139/54$; every subtracted term decreases above threshold. At $t=2$ the
same expansion gives $(4/5)x^2(9x^2+118x+264)$ and
$(8/7)x^2(9x+68)$. Their remaining roots are negative, giving the stated
$2\lambda$ scalar gap. The adjoint branching allows the Hermitian
trace-free tensor and excludes the anti-Hermitian types; the sphere has
no trace-free tensor at angular degree one. At $t=0$ the form is the
printed modulus square. The centre-neutral $SU(3)$ weights have first
nonadjoint nonzero Casimir $t=4$ (weights $(3,0),(0,3)$), sufficient for
the half-unit bound; scalar weights start at $16/3$ above the adjoint.
The mixed blocks have eigenvalues $t\pm\sqrt{2t}$ and equal-norm metric
and Maxwell components in their $t=2$ kernel. Distinct-factor kernels
share only their metric halves, hence $\|P_cP_w\|\le1/2$. This gives
$\mathcal Q_c+\mathcal Q_w\ge\min(\lambda_c,\lambda_w)/4$ when both
representations are nontrivial. With a trivial weak representation no
weak invariant one-form exists, leaving exactly the external gluon
polarizations. The coloured vortex and root scalar additions have
nonnegative weak squares and projective cost at least $2\lambda_c$
with the stated equal coefficient. These checks cover the full theorem,
including its kernel and all higher harmonic representations.

For **69.1**, the completed internal functional is an exact sum of
squares plus $2\int F-\int R$, with both integrals fixed. Its second
variation and the independently derived null auxiliaries give exactly
$4U_0^{(2)}+2\|D^0-d\tau/2\|^2+(1/2+1/e)\|d\tau\|^2+
2Z\|\mathcal G\|^2$. All coefficients stay positive at every compact
shape and scale; no round harmonic estimate enters. The trace-free Lie
derivative identity and the pointwise transverse Einstein equation give
the vector squares with the printed $2Z,4G$ weights. Ordinary scalar
gradients and the Hodge form give the remaining spectator blocks.
Thus both the scalar identity and all asserted nonnegative sectors of
the actual Proposition 69.1 have been checked. No claim about a
shape-independent numerical weak gap is required by that proposition.

For **71.1**, the projected horizontal action, its null sources and
remaining coordinate equations are checked above. The common linear
Hamiltonian constraint and positive added spatial squares give fibre
positivity; time reversal and the positive propagating kinetic form
transfer it to the physical mass form. The extra projected root
component has colour Casimir at least $2\lambda_c$, so the colour
comparison still has gap $\gamma_c$ away from its Killing/compensator
kernel. In the sector containing that kernel, the fields close into the
fibre vector and free colour Maxwell one-form blocks. At nonzero
relative circle frequency the covariant lower bound is $n^2/L^2$, and
the added vector squares stay nonnegative. At zero frequency,
$H^1(\Sigma)=0$ gives the Hodge gap $\mu$ away from $d\chi$. The unit
curl lift costs $4\lambda_c$ on the remaining uniform Killing metric
component. Selecting the free Maxwell half on the nonharmonic part and
the metric half on the uniform circle part gives
$P_cRP_c=P_c/2$. Consequently
$\|P_c(1-R)\|=1/\sqrt2$ and
$1-P_c+R\ge1-1/\sqrt2$. This proves precisely the stated zero-frequency
bound; $4\lambda_c>\gamma_c$ makes the curl coefficient harmless in
its minimum. The flat-index external gluon and its $n=\pm1$ harmonics
annihilate all root and curl squares, so the lower bound is attained at
$1/L$ under the strict inequality. The stated round and asymptotic
regions satisfy it: at round matching $L^{-2}/\lambda_c=2/(5k^2)$;
on both matched limiting branches it tends to $1/(4k^2)$ while
$\mu/\lambda_c\to\infty$. This verifies all components of the actual
Theorem 71.1, including nonnegativity and the exact first threshold.

For **78.1**, direct substitution gives
$D=\rho(1+2s)$ and $R=\rho(1-s)$, proving the printed light inverse and
its nonsingular Jacobian on the strict positive interior. The scaled
microscopic inverse is positive and smooth there. The compact-sphere
proof now written in result 78 was checked through both regular pole
charts, the normalized holomorphic sections and fermion Gram matrices,
the real elliptic root projector and its uniformly invertible
mean-zero scalar operator. The common form domains and the round
kernel give a uniform angular complement inverse by the elliptic
estimate and compact embedding. The exact photon is removed by a
smooth finite-rank kinetic projection. The linear flux term has zero
light--light block, so the Schur matrix factors as
$L^2\widehat S$ with analytic coefficients. Its limiting finite pencil
contains the flux-compensated rotations and constant-vortex harmonic
obstruction, as required by the displayed leading masses. Simple
sourced poles and residues, and the contact after cancellation of its
$L^{-2}$ factor by $1/(CV)$, have the required parameter derivatives.
Thus the parameterized inverse theorem applies; it only needs
continuity in $L$ with joint continuity of the microscopic derivative.
The stronger analytic extension of the reduced forms supplies this.
The theorem proves the local finite inverse for sufficiently small
$L$ and supplies no certified threshold for the printed finite example.

Separately, Python/SciPy runs of `paper/finite_flux_currents.py --degree 12`
and the same command with `--hold-out-fermi`, with
`OPENBLAS_NUM_THREADS=1`, reproduce both finite illustrations. The first
gives $\epsilon=4.5499728922\times10^{-8}$, $h_0=0.12461445388$,
$a/L=0.055803145564$, $\gamma=0.046256232529$,
$e_*^2=0.098077379605$, $M_v=1659.1344409$ GeV and charged-contact
fraction $0.9999992159$. The held-out run gives
$G_F=1.1609294622\times10^{-5}$ GeV$^{-2}$,
$M_v=2357.6915528$ GeV and $e_*^2=0.098105389455$.
These are numerical reproduction checks of the supplied Galerkin
implementation, recorded separately from the full hand review of the
proposition's existence and uniqueness statement.
