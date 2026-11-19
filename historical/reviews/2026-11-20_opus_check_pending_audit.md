# Referee check of pending claims, 20 November 2026

Referee: Claude Opus 5.5 (`claude_opus_5_5`). Snapshot: `master` at `8ec19b0`.

Method: hand derivation from the results files and papers. Prolog was used only for ledger queries. No other programming. The full review of the 18–19 November work, including process findings, is kept outside the repository (`~/reviewConneskk.md` on the working machine). This file records the claim-level verdicts that the ledger cites.

No claim checked here was found wrong.

## Checked in full (ledger: `checked_by(..., claude_opus_5_5, by_hand)`, pending flag removed)

| Claim | Location | What was verified |
|---|---|---|
| `fr_product_relative_radius` | `paper/seven_m_theory.tex:56-65` | Radii $a^2=2L^2/3$, $b^2=L^2/6$, $L_{\rm AdS}=L/2$. For any Freund–Rubin AdS$_4\times M_1\times M_2$ the volume-preserving relative mode has $\Delta_L=0$, so $m^2=-2c$ with $cL_{\rm AdS}^2=3/2$, giving $m^2L_{\rm AdS}^2=-3<-9/4$. |
| `heterotic_wall_three_index` | seven_m_theory | Tian–Yau $\mathbb Z_3$ quotient: $(h^{1,1},h^{2,1})=(6,9)$, $\chi=-6$. Standard embedding gives $9\cdot\mathbf{27}+6\cdot\overline{\mathbf{27}}$. $\chi\ne0$ excludes a locally free circle action. |
| `heterotic_wall_pair_threshold` | seven_m_theory | Counts $(9-r+k,6-r+k)$. Exactly three $\mathbf{27}$s requires $r=6$, $k=0$. |
| `m111_circle_descent` | seven_m_theory | Gysin: $w_2(\mathbb{CP}^2\times\mathbb{CP}^1)=(1,0)$, $e=j(3,2)$. Spin iff $j$ is odd. |
| `m111_horizontal_modes` | seven_m_theory | $n=jr-\tfrac12$ is integral for odd $j$ and half-integral $r$. $\mathcal O(3n,2n)$ coefficients; $H^0(\mathcal O(2n))$ on $\mathbb{CP}^1$ has isospin $n$. $\mathcal O(-4,1)\mapsto-8u-3u=-11u$. |
| `m111_membrane_saturation` | `seven_m_theory.tex:219-227` | Equality forces a horizontal $\beta$-calibrated surface; the projection to $\mathbb{CP}^1$ is a local diffeomorphism, hence a degree-1 covering, against $\lvert\int k_{\rm w}\rvert=3\lvert q\rvert$. |
| `two_endpoint_flavour_wall` | two_endpoint_limits | Opposite outer reflections give $k=(n+\tfrac12)\pi/d$, gap $\pi/2d$. Periodic channels keep zero modes. |
| `two_endpoint_fixed_energy_count` | two_endpoint_limits | Quarter-disk lattice count $t^2(E^2-\Lambda_j)/4\pi$ with perimeter error $O(1+tE)$. |
| `hopf_source_free_freund_rubin` (94.6) | `results/94:116-126` | Invariant closed four-forms $g_1J^2/2+g_2J\wedge\omega$; closure removes $\operatorname{Re}\Omega\wedge\omega$, $\operatorname{Im}\Omega\wedge\omega$. The duals ${*}(J^2/2)=\eta\wedge\omega$, ${*}(J\wedge\omega)=J\wedge\eta$ give the displayed form equations, and a nonzero solution needs $f^2=2c^2$. Then $R_{55}=-G^2/144=(f^2-g_1^2-2g_2^2)/6\le c^2/3$, against $\tfrac14F_{ij}F^{ij}=c^2$. The round case gives $B=2r$. |
| `spin_seven_periods` (84.3) | results/84 | A finite-kernel isometric action of the 12-dimensional group is transitive: any isotropy of dimension $\ge6$ contains a maximal torus (hence the central $U(1)$) or two commuting $SU(2)$s (hence $SU(2)_w$). The resulting $M^{pqr}$-type and $S^5\times S^2$-type spaces have $b_3=b_4=b_6=0$ by Gysin. |
| `vortex_yukawa_half_interval` (67.1) | results/67 | The Koszul sequence $0\to\mathcal O(-1)\to\mathcal O^2\to\mathcal O(1)\to0$ and $H^*(\mathcal O(-1))=0$ give no zero modes. An N/D interval of length $d/2$ gives $(2j+1)\pi/d$. |
| `restored_finite_current_running` (76.3) | results/76 | Per family $\sum Y^2=10/3$, $\sum YN=0$, $\sum N^2=8\cdot4+8=40$. Six copies plus two root doublets give $(2/3)\cdot20+1/3=41/3$ and $(2/3)\cdot240+4/3=484/3$. Weak $b_0=22/3-8-1/3=-1$. |
| `helical_probe_charge` (60.1) | results/60 | $Q=T_3+n_s/k$ reproduces the table; sixteen particle coefficients. |
| `helical_probe_current` (60.2) | results/60 | $PxP=\sigma/3$, the spin-½ Berezin compression. Residue ratios $4n_sn_{s'}/(5k^2)$ give $1/5$, $1/45$, $-1/15$. |
| `magnetic_single_pole_test` (60.4) | results/60 | Two-momentum identity by mode-wise subtraction. |
| `shared_circle_window` (59.1) | results/59 | $\mathbb{CP}^2$ levels $4j(j+2)$, multiplicity $(j+1)^3$, threshold $\sqrt{12}/B$, and every power of $a$ in the scaling table. |
| `shared_circle_density` (59.2) | results/59 | $B^6L=8I_3/(D\gamma)$, $L=k\sqrt{cB^2-a^2J_3}$, $\gamma\sim1/P_b$, so $B,L\propto P_b^{1/7}$ and $L/B\to k\sqrt c$. |
| `shared_polar_solution` (62.1) | results/62 | Trace-reversed balance $(2U-3Zf^2/2)/9=0$ outside $\mathbb{CP}^2$ and $+Zf^2/2=6/B^2$ inside, with $Z_0q^2=12B_0^6$, $U_0=9/B_0^2$. The dilaton equation coincides with the balance. The vortex stress is taken from result 55. |
| `vortex_root_vacua` (63.1) | results/63 | $H_+H_-=\zeta_0e^{-2\sigma}\Phi$; all added squares and their first variations vanish. The invariance condition leaves only $Q=K_3+Y$. |
| `colour_wilson_lift` (65.2) | results/65 | Mass matrix $\nu\begin{pmatrix}1+2c_\eta&-1\\-1&1\end{pmatrix}$, eigenvalues $\nu(1+c_\eta\pm\sqrt{1+c_\eta^2})$, with $\lVert dK^\flat\rVert^2=2\lambda_c\lVert K\rVert^2$ for a Killing field. |
| `round_colour_threshold` (68.2) | results/68 | $\lambda_w=8\lambda_c/9$, $L^{-2}=2\lambda_c/(5k^2)$, Wilson pair $2\lambda_c(2\pm\sqrt2)$. Every gap lies above $1/L$. Conditional on 68.1, which is partly checked (below). |
| `round_twelve_flavours` (68.3) | results/68 | Twisted Dirac levels $4n(n+j+2)/B^2$ on $\mathbb{CP}^2$ and $n(n+N)/r^2$ on the sphere give $\sqrt2/r$. $b_0=3$, $5/2$ with the Wilson adjoint, $b_1=-50$. |
| `shared_neutral_poles` (66.1) | results/66 | $M_Z^2/M_C^2=1+g_Y^2/g_2^2=8/5$ with $I_W/I_Y=3/5$. $M_v^2/M_C^2=4I_W/I_v=2/3$ with $I_v=16CVa^2=6I_W$. |
| `root_wilson_winding` (70.2) | results/70 | $k^2B^2/(4L^2)=3/5$ at canonical matching, which is $1/45$ of the gluon's 27. |
| `vortex_mirror_anomalies` (72.2) | results/72 | SM traces cancel, cubic sum zero. $\mathcal A_{SU(3)^2v}=1$, $\mathcal A_{SU(2)^2v}=4$, $\sum N$ difference $8$, $\sum N^3$ difference $56$. Signed parent rank $2-4=-2$. |
| `root_phase_charm_test` (85) | results/85 | $\mathcal B_c=44.3\,{\rm GeV}^2\,\lvert\tilde Fy_c\rvert^2=2.97\times10^{-5}$ at $y_c=4.06\times10^{-3}$. BESIII bound $y_c<6.23\times10^{-4}$, amplitude factor $0.154$. The results file states the minimal axion is excluded; the ledger statement omits that. |

## Partly checked (pending flag kept)

| Claim | Checked | Not checked |
|---|---|---|
| `m111_membrane_charge` | Mass bound: $\int_{(2,-3)}(J_1-J_2)=3\pi$ (Sasaki–Einstein base factors $3/4$, $1/8$); $mL_{\rm AdS}=8\sqrt{N/3}$ requires $\mathrm{Vol}(M^{111})=9\pi^4/128$, the known value. | $g_B^{-2}=\sqrt N/(36\sqrt3\pi)$ and the norm $\pi^2L^3/48$. |
| `spectator_global_bordism` (90) | $\Omega_7^{\rm Spin}(B(U(3)\times U(1)))=0$ via the AHSS and $Sq^2$-homology $\mathbb Z_2[c_2^2]$. | The determinant-anomaly identification with the differential cup product. |
| `projective_flux_octet`, `projective_kahler_octet`, `projective_kahler_moduli` (64.1–64.3) | Determinants $7x^2+18x-96$, $7x^2+34x+32$, $x[7cx^2+(34c+56)x+32c+168]$ and their roots, given the stated linear equations. | The linearized Einstein–Maxwell equations themselves. |
| `round_flux_product_gap` (68.1) | The four principal minors at $t_0=16/3$ ($17/6$, $1819/240$, $4583/72$, $635303/540$) and the projection bound. | The full mass-form derivation. |
| `background_weak_multiplet_threshold` (96) | $\int_0^1[8-3(1-2x)^2]dx=7$. | The Feynman-parameter integrand itself. |
| `mirror_custodial_bound` (79) | $6\pi S=12$ for three degenerate mirror families. | The quadratic $T$ bound. |
| `hopf_colour_octet_instability` (98) | $4(29-4\sqrt{67})/7\simeq-2.138$. | The fluctuation equations. |
| `two_endpoint_face_current` | Neumann face Green function $\coth(q\ell)/q$; logarithmic corner divergence. | The aspect-ratio discrimination. |

The remaining pending claims were not examined in this check.

## Second batch (checked in full)

| Claim | Location | What was verified |
|---|---|---|
| `projected_current_floor` (73.2) | results/73 | Trial mass norm $2/5+1/5+40/27=281/135$ (metric $4r^{-2}\cdot r^2/10$, Maxwell with $r=\sqrt2a$, circle $2L^2/(3k^2r^2)$ at $L^2/k^2=20r^2/9$). Lepton overlap $-2Y_\ell/3=1/3$. Bound $(1/3)^2/(8\cdot281/135)=15/2248$. |
| `matched_colour_trajectory` (74.1) | results/74 | Canonical chain: $X^7\ge\sqrt{5/12}/(\sqrt{2/3}\,\pi/2)$ gives $X>0.906$, then $Y^2>2/3-0.463>1/5$ (tight), and $\delta_bL^2\ge(1-1/\sqrt2)\,3k^2/5\approx6.3>1$ at $\lvert k\rvert=6$. Zhong–Yang gives $\mu\ge1/r_\circ^2$. The $\Lambda_3$ formula matches piecewise one-loop decoupling with exponent $2/27$. |
| `vortex_ir_neutral_current` (75.1) | results/75 | The vortex contact adds $N_\nu N_e/2=(2,1)$ to $(g_L,g_R)$, and $s_{\nu e}^2\to-(1+s_w^2)$. The CHARM II numbers reproduce ($s^2\simeq0.233$, $B_{\rm IR}\simeq42.6$ GeV, $R\simeq1.01$, $\Xi=1.14249\times10^{-6}$). |
| `vortex_flux_mass_relation` (77.2) | results/77 | $M=\begin{pmatrix}1&1&0\\0&\gamma&1\end{pmatrix}$ has squared singular values $1$ and $2+\gamma^2$ and kernel $(1,-1,\gamma)$. $\gamma=p\sqrt{z_B}/(16\pi)$ follows from $I_b/I_E=z_B/4$. Both residue formulas follow from the eigenvectors $(-\gamma,0,1)$ and $(1,1+\gamma^2,\gamma)$. $M_{\rm high}^2-2M_D^2=2\gamma^2/r^2$. |
| `vortex_flux_ir_contact` (77.3) | results/77 | The static minimization over $\eta$ removes the added mass; $g_V=-1/2+2s^2$ gives $-0.034$ at $0.233$ and $1/4$ at $3/8$. |
| `neutral_target_parity` (81.1) | results/81 | Each $C_{1f}$ gets $+3d_v/2$, so $Q_W^p=\rho(1-4s)-9d_v$, $Q_W^n=-\rho-9d_v$, $Q_W^e=\rho(-1+4s)-3d_v$, and the sum is $-12d_v$. |
| `vortex_hadronic_polarization` (81.2) | results/81 | $j^Z_V=(\tfrac12-s_0)j^\gamma-j_{\rm num}/12$ and $j^v_V=\tfrac32j_{\rm num}$ give the factor 18. Mainz inputs at $Q^2=1$ GeV$^2$ give $\bar\Pi_{Qv}=0.01354$ (stated $0.01353$). |

Also verified, with the pending flag kept because the kinetic-metric derivation was not re-done: `root_phase_kinetic` (85). The values $F_a=v_F/6=41.04$ GeV and $m_a=6\chi/v_F=138.7$ keV follow from the stated formulas.

## Third batch (checked in full)

| Claim | Location | What was verified |
|---|---|---|
| `dual_four_cycle_flux` (84.1) | results/84 | $\lvert p_M\rvert\sqrt{Z_B}/(\pi Z_A)=(\lvert I\rvert/2\pi J)\,T_2^2/T_5=\lvert I\rvert/J$, using $T_2^2=2\pi T_5$. $\lvert I\rvert\le J$ with equality iff $h$ is (anti-)self-dual. |
| `k3_ade_charge_embedding` (88.1) | results/88 | $n=(0,0,0,0,-2,-1,-1,0)$ and $y'=(1,1,1,-3,0,-3,3,0)$ lie in $E_8$ (integral, even sum), with $n^2=6$, $\lvert y'\rvert^2=30$, $n\cdot y'=0$, so $h^2=8-6=2$ and $h\cdot f=1$. Every row of the charge table follows from $N=n_i-n_j$ and $6Y=y'_i-y'_j$, including both weak links and $[E_{a6},E_{65}]=E_{a5}$. |
| `vortex_neutral_spectator_tensor` (90.1) | results/90 | $\mathrm{ch}_1(\mathcal V)=0$, $\mathrm{ch}_2(P)=c_2(E)-2l^2=B$, $\mathrm{ch}_2(D)=9x^2$, $\mathrm{ch}_2(\mathcal R)=12B$, $\mathrm{ch}_4(\mathcal R)=B(-10B-81x^2)=B(C_0-7B)$. From the species list, per-family coefficients of $v^4$, $x^2v^2$, $Cv^2$, $p_1v^2$ are $7/3$, $-12$, $-1$, $-1/6$. Three families give $I_8^{(0)}=v^2(7v^2-3C-36x^2-\lambda)$. |

Also verified, pending flag kept:

- `projective_cjs_gauge_ratio` (84.2): $B^2=24r^2$ follows from the 11D Einstein equations with $G=g\,\omega_c\wedge\mathrm{vol}_w$ ($R_{\mathbb{CP}^2}=g^2/6$, $R_{S^2}=2g^2/3$, external $-g^2/3$). The $19/72$ kinetic ratio was not checked.
- `k3_hypercharge_period_bound` (88.3): $5/3=\lvert Y\rvert^2/\lvert t\rvert^2=(5/6)/(1/2)$. The excess bound was not checked.

## Fourth batch (checked in full)

| Claim | Location | What was verified |
|---|---|---|
| `hopf_diagonal_hypercharge` (94.1) | results/94 | $6Y=P+3C/2$ reproduces the whole table ($1,4,-2,-3,-6,0$). The vacuum $S$ with $(P,C)=(3,-2)$ is invariant. The four links need $C$-shifts $-2$ ($S$, for up and $\nu$) and $+2$ ($\bar S$, for down and $e$) at zero Hopf weight. |
| `quotient_tensor_free_fermion_shells` (95.2) | results/95 | Antiperiodic azimuthal momenta give $D_{\rm flat}^2\ge1/4$; with $f^2\le2$ the spectator bound is $1/(2\sqrt2a)$. For $N=2$ the potential bound is $\min(1/16,\ x_0^2(1-x_0^2)\vert_{\lvert x_0\rvert\in[1/4,3/4]})=15/256$, giving $\sqrt{15/512}/a$. The closing numerical comparison with $1/L$ ($a\le1.112\times10^{-4}$ GeV$^{-1}$) was taken from 95.1 without rechecking. |
| `hopf_global_locked_group_and_spin` (108.1) | results/108 | The ray stabilizer $(L,(\det L)^{-1})\cong U(3)$; $L\mapsto wL$ has kernel $\{\pm I_3\}$. $TE\oplus\mathbb R=\pi^*(TY\oplus W_{\mathbb R})$ with injective $\pi^*$ in degree two gives spin iff $c_1(W_c)$ is even. |
| `hopf_integral_euler_flux_domain` (108.2) | results/108 | Gysin $H^5(E)\to H^0(Y)\xrightarrow{\cup c_3}H^6(Y)$: a unit fibre class exists iff $c_3=0$ integrally, with periods in $N\mathbb Z$ for torsion of order $N$. The mapping-torus example uses $c_3(TS^6)=\chi(S^6)=2$. |

Also verified, pending flag kept: 98.1's determinant $7x^2+16x-144=0$ with $D_0=6/7$ and $\nu=3\lambda$ gives $m^2B^2=4(29-4\sqrt{67})/7$, given the general fluctuation equations of 64.1. In 106 the sextet exponent $5/54=(T(\mathbf6)/3)/b_0^{(3)}$ and electric weight $6\cdot(2/3)^2=8/3$ check; their quoted numerical values were not recomputed.

## Fifth batch

| Claim | Location | What was verified |
|---|---|---|
| `spin_magnetic_surface_products` (87.2), checked in full | results/87 | The four-form stress gives $\lambda_w=S/3$, $\lambda_5=-S/6$, $\lambda_i=(2g_i^2-g_j^2)/6$. Genus $0$: $t^3+2t^2-2t-1=(t-1)(t^2+3t+1)$, so $t=1$. Genus $g\ge2$: $g-1=t(t^2-2)/(2t^2-1)$, with derivative numerator $2t^4+t^2+2$; $t=42.0357$ gives $21.000$ for $g=22$. $M^2=4\pi^2\cdot12r^2/(4\pi r^2)^2=3/r^2$. The K3 remark is sound: $\mathcal R_X=\lvert G\rvert^2/3\ge0$ against $\hat A(\mathrm{K3})=2$ by Lichnerowicz. |

Also verified, pending flag kept: in `hopf_nonround_covariant_core` (99.1) the colour estimate holds given the displayed quadratic forms. At $z=3$, $A_z=43.96$, $\lvert B_z\rvert\le9.6$, $Q_{DD}/\lambda=31.4$; after the Young splits the remaining $D^2$ coefficient is $26.75$; $T_c\le10.2\dot H^2+\dot D^2$ (negative discriminant); hence $Q_c\ge2\lambda T_c$. The $j=1$ entries $0.288$ and $14.46$ also hold. The forms themselves and the light-cone split were read, not re-derived.
| `two_endpoint_compressed_flip`, checked in full | `paper/two_endpoint_limits.tex:144-158` | $F_{\rm ex}PF_{\rm ex}=(1-P_L)\otimes1$ since $\iota^{-1}P_0\iota=P_L$. Hence $(PF_{\rm ex}P)^2=(1-P_L)\otimes(1-P_0)$, of rank 9 on the 12-dimensional $C\otimes F_0$, with kernel $\mathbb C_{\rm lep}\otimes F_0$. |
| `lecture_projective_circle_gap` (Exercise 9), checked in full | `paper/kk_strings_lecture.tex` | At the Sasaki–Einstein point (base $\tfrac34g_{\rm FS}(\mathbb{CP}^2)+\tfrac18g_{S^2}$, Reeb radius $\rho=1/4$), the $\mathcal O(3)$ and $\mathcal O(2)$ lowest Landau levels are $16$ and $8$. So $1/\rho^2+24=40$ in units $L^{-2}$. This agrees with $\Delta=r(r+6)$ at Reeb weight $r=4$ for sections of $K^{-1}=\mathcal O(3,2)$, with multiplicity $h^0(\mathcal O(3,2))=30$. |

Also verified, pending flag kept: `two_endpoint_trace_matching`. The growth $M_W^2=Hs^2/(4K)\propto A^{-1/2}$ against a bounded $\lVert D_F\rVert$ is consistent; the constant 24 was not derived.

## Sixth batch (checked in full)

| Claim | Location | What was verified |
|---|---|---|
| `hopf_full_maxwell_round_scalar` (101.3) | results/101 | The block is $(\lambda+\mu_j)I+N$ with $N_{12}=-\lambda$, $N_{13}=\sqrt{\mu\mu_j}$, so its eigenvalues are $\lambda+\mu_j$ and $\lambda+\mu_j\pm\sqrt{\lambda^2+\mu\mu_j}$. The lower branch has derivative $\ge\tfrac12$ in $\mu_j$; at $j=1$, $\mu_1=1/a^2=\mu$. The weak gluon excitation $\mu$ lies above the new entry. |
| `hopf_sextet_colour_running_threshold` (106.2) | results/106 | $T(\mathbf6)=6C_2/8=5/2$, $b_0=37/6$, $\Lambda_3$ ratio $\exp(-2\pi\Delta\alpha^{-1}/9)=(M_6/\mu_*)^{5/54}$. With $M_6/\mu_*=173.799/250$ the ratio is $0.96690$, and its square is $0.93490$. Scalar-free coupling $0.1028573$, retuned coupling $0.1038878$, $\delta I_3=-0.0038372$. |
| `hopf_sextet_euclidean_photon_subtraction` (106.3) | results/106 | Electric weight $6(2/3)^2=8/3$. The integral at $q^2/M_6^2=2.0692$, by hand Simpson ($h=0.05$), is $0.060605$, giving $0.012861$ (stated $0.0128633$). $\delta I_C=-16\times0.00102363=-0.016378$; the colour version is $\times15/16=0.0120593$; the low-momentum term is $(8/3)q^2/(120\pi M_6^2)$. |

This supersedes the fourth-batch remark that the 106 numbers were not recomputed.
| `hopf_soft_tensor_pair_current_benchmark` (107.4), checked in full | results/107 | Expanding the bracket gives $g^2(u+u^2/4)+g(u-u^2/2)+(3-u+u^2/4)$. The $g^2$ coefficient, by hand Simpson ($h=0.5$) on $\int_4^9$, is $0.246049/(48\pi)=0.0016317$ (stated $0.00163116$). The minimum is $c-b^2/4a=0.00036454$ and the value at $g=1$ is $0.00083231$. Charge weight $3(1/6)^2=1/12$. |
| `lecture_faithful_isometries` (Exercise 11), checked in full | `paper/kk_strings_lecture.tex` | $(U(3)\times U(2))/\{(\lambda,\lambda^{-1})\}\cong S(U(3)\times U(2))$: trivial kernel, surjective via $\lambda=1/(\det A\det B)$. The invariant products $z_iw_a$ form $(\mathbf3,\mathbf2)$ with $Y=-\tfrac13+\tfrac12=\tfrac16$. The Euler class $h+k\equiv(1,1)$ mod 2 equals neither $w_2(\mathbb{CP}^2\times\mathbb{CP}^1)=(1,0)$ nor $0$, so the pullback of $w_2$ is nonzero. |

Also verified, pending flag kept: in `hopf_local_full_boson_ordering` (104.5) the threshold is exact. At $\nu=8$, $u_\Sigma=55/3$: $\nu+u/2-\sqrt{u^2/4+8\nu}=103/6-73/6=5$, increasing for $\nu\ge8$. The fixed-shape estimate $(B/B_n)^9\ge(55/3)/1.80$ gives $B^{-1}\le3.63$ TeV. The vector-ordering part of the claim was not checked.
| `dual_tensor_round_poles` (92.2), checked in full | results/92 | Rows $(1,1,0,0)$, $(0,\gamma_e,1,0)$, $(2\gamma_m,7\gamma_m,0,1)$ have null vector $(1,-1,\gamma_e,5\gamma_m)$ of norm$^2$ $2+\gamma_e^2+25\gamma_m^2$. $\operatorname{tr}RR^T=4+\gamma_e^2+53\gamma_m^2$, and Cauchy–Binet gives $\det RR^T=25\gamma_m^2+\gamma_e^2+1+1$. So $6T+D-26=7(\gamma_e^2+49\gamma_m^2)$. The positive-root condition on $P$ follows from the discriminant of $(P+A_+)\lambda^2-I_W\lambda+(P+A_-)=0$. |
| `dual_tensor_stiffness_bound` (90), checked in full | results/90 | $Z_D=1/(4\pi^2Z_6)$ gives $f_ef_m=\sqrt{Z_6Z_D}/A=1/(2\pi A)$. The charges $2$ and $14$ are the sphere pushforwards of $v^2$ and $7v^2$. AM–GM gives $v_A^2=(2f_e)^2+(14f_m)^2\ge56f_ef_m=28/(\pi A)$. |
| `vortex_root_upper_current` (63.3), checked in full | results/63 | With $I_x=4I_E$ the canonical mass form is $(2/r^2)(\hat z+\hat u)^2$: eigenvalues $0$ and $4/r^2$ along $(1,-1/2)$ and $(1,1/2)$, both of norm$^2$ $2I_E$. The vertex $u-4(z+u/2)/3$ equals $1$ and $-1/3$ on these, giving $1/9$. The circle pole repeats 60.2 with $I_W/I_D=4r^2/L^2=9/(5k^2)$. |
| `vortex_root_magnetic_link` (63.5), checked in full | results/63 | With $w=-2z$ (equal kinetic norm $I_E$) the mass form is $(2I_E/r^2)(u-w)^2$ and the vertex is $u/3+2w/3$: two equal sites with stiffness $2I_E/r^2$ and probe weights $1/3$, $2/3$. |
| `m111_membrane_charge`, now checked in full | `paper/seven_m_theory.tex:195-213` | In addition to the mass bound: $\omega=(2/9\pi)(J_1-2J_2)$ is primitive ($\Lambda J_1-2\Lambda J_2=2-2=0$) and integrates to $(2/9\pi)(3\pi/2+3\pi)=1$ on the $(2,-3)$ cycle. Its norm is $(8/27\pi^2)L^{-4}\cdot(9\pi^4/128)L^7=\pi^2L^3/48$. With $2\kappa^2T_2^2=(2\pi)^4\ell_p^3$ and $L^3=64\pi\sqrt N\ell_p^3/(3\sqrt3)$, $g_B^{-2}=\sqrt N/(36\sqrt3\pi)$ exactly. |
| `spectator_global_bordism` (90), now checked in full | results/90 | In addition to $\Omega_7^{\rm Spin}=0$: with vanishing bordism the exponentiated determinant anomaly is fixed by its factorized characteristic form $I_8=\mathcal X\mathcal Y$, which identifies it with the differential cup-product functional. This is the standard argument (Monnier; Yonekura). |
| `lecture_shared_circle_resolution` (Exercise 12), checked in full | `paper/kk_strings_lecture.tex:362-380` | Fixed shape: $VB^2\propto B^7a^2$ is fixed, so $B,L\propto a^{-2/7}$, $M_{\rm D0}\propto a^{2/7}$, $\ell_s^2=\ell_p^3/L\propto a^{2/7}$, $\ell_s^2K_{\rm cap}\propto a^{-12/7}$, and the worked factors $1/4$, $1/2$, $2^{12}$ follow. Long neck: $B,L\propto P_b^{1/7}$ and $K_{\rm cap}\propto P_b^2$, so $\ell_s^2K_{\rm cap}\propto P_b^{13/7}$ and the D0 gap $\propto P_b^{-1/7}$. |
| `two_endpoint_current`, checked in full | `paper/two_endpoint_limits.tex:258-335` | $M_Z^2/M_W^2=1+K/K_Y=8/5$. $G_F/\sqrt2=g_2^2/(8M_W^2)=1/(2V_5AHs^2)$ and $e^{-2}=V_5AK(1+5/3)=\tfrac83V_5AK$, so a finite $e$ with weak decoupling requires $AK$ finite and $AH\to\infty$. The resolvent bound for a profile-$j$ current is $g_2^2\lVert j\rVert^2/[2(p^2+M_W^2)]$. |
| `two_endpoint_face_current`, now checked in full | same file | The Neumann kernel at $(0,0)$ is $\coth(q\ell)/q$, times $\ell$ in volume-average measure. Corner: density $A/\pi^2$ with squared overlap 4 gives $(2A/\pi)\log(\Lambda/\Lambda_0)$, and the once-subtracted summand is $O(\lvert k\rvert^{-4})$. $x\coth x$ is strictly increasing ($\sinh x\cosh x>x$), with $1+x^2/3$ at small $x$, so the face response fixes $\ell$ along a fixed-area curve. |
| `two_endpoint_flavour_current`, checked in full | `paper/two_endpoint_limits.tex:200-232, 280-283` | $\operatorname{Im}\operatorname{tr}[H_u,H_d]^3=3\operatorname{Im}\det[H_u,H_d]=6J\prod\Delta a\prod\Delta b$, the standard Jarlskog identity, and it vanishes with fewer than three indices. The Fourier example gives $J=\operatorname{Im}(\omega)/9=1/(6\sqrt3)$. The parallel-current exchange factorizes as $C_0(p)V_{ij}\bar V_{kl}$. |

Also verified, pending flag kept: in `two_endpoint_scalar_count` the counting core holds. $n_d(n_d+1)/2=n_un_d=2g$ gives $n_d=2n_u-1$; $n_u^2+n_d^2-1=2n_un_d$ gives $(n_d-n_u)^2=1$; hence $(n_u,n_d,g)=(2,3,3)$. The examples $(4,7,14)$, the traceful no-solution case, the three charge-$4/3$ antitriplets and the anomaly $-3$ also check. The interval-parity sentence was not checked.
