# Second referee of the Opus 5.5 pending-claim audit

Referee: Claude Fable 5.2 (effort xhigh), 20 November 2026, 07:03–07:27, read-only, hand derivation and read-only ledger queries only. Object: the review of the repository by Claude Opus 5.5 (kept outside the repository) and `historical/reviews/2026-11-20_opus_check_pending_audit.md`. The report below is the referee's output, kept verbatim. The ledger changes made in response are listed at the end.

## Second referee report (Claude Fable 5.2, 20 November 2026)

**Verdict.** The first review holds on every point re-examined. Twenty-four claims were re-derived by hand from the sources, and all are correct as the ledger states them. The audit's arithmetic also holds wherever sampled. Its weak point is the label "checked in full": the ledger went from 82 pending (`86635ad`, 01:09:45) to 4 (`b8e781d`, 01:57:07), 78 claims of the hardest tier in 47 minutes, and 21 rows recorded as checked say that forms or numbers were "taken as stated" or "not recomputed". Those rows are consistency checks. One paper sentence quotes a nine-dimensional number for the eleven-dimensional action (M1). Large parts of the four pending fits are hand-verifiable, and `hadron_root_slope` can be closed.

### Point by point

- **§1 tables: agree** with every row; 12 rows re-derived independently (table below). The two "not settled" items, settled in §5, are both correct.
- **§2.1: agree.** The exemption is still at `ledger.pl:4351`. After the audit, 241 claims have Opus 5.5 as their only non-author checker.
- **§2.2: agree.** Second independent checks now exist for 84.3, 94.6, the saturation proposition, the heterotic Euler exclusion and the 64.1/98.1 determinant.
- **§2.3: agree.** Two further instances: the coefficient `\zeta=\zeta_0[1+(B_\sigma/a_{\rm dil})^4]` (`two_endpoint_limits.tex:464`), chosen to restore the ordering, and the 280 GeV mirror cap of 100.1.
- **§2.4: agree, with numbers** (M2). The axion remark also holds: 2.97e-5 against 7.0e-7 is a factor 42.
- **§2.5 and §4: outdated.** `git ls-remote --heads origin` shows only `master`, `11D` and `html-integrated-edition`.
- **§2.6: agree**, still open (M5).
- **§5: partly agree.** Every number sampled is right. "Every claim that hand derivation can settle has been checked" overstates in both directions: 21 rows are partial, and 82.1 is settled by hand below. The "hidden assumptions" are in the ledger statements (`ledger.pl:2746` "With equal horizontal root coefficients"; `:3785` "prescribed positive dilaton function zeta").

### Sample re-check

| Claim | Result | Verdict | Evidence |
|---|---|---|---|
| `fr_product_relative_radius` | paper | correct | $\Delta_L=0$: $m^2=-2\lambda=-12/L^2$, $L_{\rm AdS}=L/2$; also $V''=-280\lambda$ over 140 |
| `m111_membrane_charge` | paper | correct | $\mathrm{Vol}=9\pi^4/128$; $\int\omega\wedge{*\omega}=(8/27\pi^2)(9\pi^4/128)L^3$; $g_B^{-2}=L^3/(768\pi^2\ell_p^3)$; $\tfrac32\pi T_2L^3=8\sqrt{N/3}$ |
| `m111_membrane_saturation` | paper | correct | equality gives $\eta|_\Sigma=0$, equal densities, a degree-one cover, against $3|q|$ |
| `hopf_source_free_freund_rubin` | 94.6 | correct | $f^2=2c^2$; $R_{55}\le c^2/3$ against $c^2$ |
| `projective_cjs_gauge_ratio` | 84.2 | correct | direct 11D: colour $1+g^2/2\lambda_c=4$; weak $1+g^2r^2+g^4r^4=19/4$ |
| `spin_seven_periods` | 84.3 | correct | $\dim\mathfrak h=5$, weak projection at most one-dimensional; Gysin determinant $j^2$; spin forces $j$ odd |
| `spin_tensor_reeb_current` | 84.4 | correct | $8j^2/L^2$; $(16j^2+24j)/8j^2$; $m^2L_{\rm AdS}^2=12$ |
| `spin_magnetic_surface_products` | 87.2 | correct | $\lambda_i=(2g_i^2-g_j^2)/6$; derivative numerator $2t^4+t^2+2$ |
| `round_twelve_flavours` | 68.3 | correct | $4n(n+j+2)/B^2$, $n(n+N)/r^2$; $2/r^2<9/(4r^2)$; $b_0=3$, $b_1=-50$ |
| `hopf_supported_spin_product` | 94.2 | correct | $(2U-2Zf_5^2)/9=0$; $\|\beta_K\|^2=f_5^2\|K\|^2B^2/8$ doubles the norm |
| `hopf_broken_colour_vectors`, crossing | 94.5, 99 | correct | $|\mathcal L_K\Omega|^2/|\Omega|^2=2$; $s=1.075$, $g=0.5195$: 3.961 TeV; $s=12.23$: 1.630 TeV |
| `hopf_local_volume_tensor_rayleigh_test` | 102.3 | correct | $K\perp\nabla f$; $(7/12-1/60)/8=17/240$ |
| `hopf_colour_octet_instability` | 98.1 | correct in its scope | determinant of M1, which also returns $k(k-q+1)$, $(k+q-1)(k+2q-2)$ on AdS$_p\times S^q$ |
| `hopf_uniform_light_mass_inverse` | 100.1 | correct | $K$ maximal at the pole; $43.462/0.6982=62.25<63$; 309 GeV |
| `spectator_global_bordism` | 90 | correct | $Sq^2$-homology $\mathbb Z_2[c_2^2]$ |
| `finite_weak_current_inverse` | 78.1 | correct | $s=0.230333$, $\rho=1.00913$, $d_v=0.001565$, $\alpha^{-1}=128.127$ |
| `hopf_global_*` | 108.1–3 | correct | Euler class $c_3$; projection formula; degrees $3+4+5$ |
| `dual_tensor_round_poles` | 92.2 | correct | null vector, trace, minors; $A_\pm$ from $r^2=1/(8\pi^2f_ef_m)$ |

Also confirmed: 88.1 charge table, lecture Exercise 9 ($16+8+16=40$), 105.1 spectra, 106.2, 108.5 running values, 82.2, the Jarlskog identity.

### The four pending claims

- **`hadron_root_slope` (82.1): closable.** Table 1 of arXiv:2007.03319 gives $f_{ud},f_s,f_c,f_b,f_t=0.0398,0.0577,0.0734,0.0702,0.0680$. Heavy part $-0.0135$; light part $(1-r)f_{ud}/(1+r)=0.01380$ at $r=0.485$; sum $+0.0003$. The isospin term $0.0038695$ equals $(D_n-D_p)/2=0.003870$. The common sum is $0.3091$ against $0.309043$. Inverting the two stored rows gives $(f_{ud},f_s)=(0.03975,0.05775)$, inside table rounding. The statistical error from the quoted covariance plus $\delta r$ is $0.006537$ (file: $0.0065364$); the systematic from Table 1 in quadrature is $0.0066$. Only the last digits of the program output remain.
- **`dual_tensor_finite_fit` (92).** Verified: $f_e/7f_m$ and $Z_6=(f_e/f_m)/2\pi$ on both branches; equal $v_A^2=3.8655\times10^7$ GeV$^2$; $f_ef_m=1/(2\pi\mathcal A_\Sigma)$ returns $D_b=4.000$ on both branches; root sum and product give $I_W\simeq2.36$, $I_Y\simeq7.9$ and the fold near 580 GeV; $\Xi$, $I_3$, 11.89 and 19.00 TeV. Remaining: the Galerkin solve (580.21, $M_v$, 0.9999872, the 828.91 fold).
- **`dual_tensor_finite_neck` (93).** Verified: 26.7 TeV; matching sum $9.87+O(0.1)$ against $10.007$; $f^2\ge1.73$ on $|t|\le5$, so one meridian level lies below 18.3 TeV; $\Xi=\sqrt2\sigma_HS_b/8=2.017\times10^{-13}$; $M_C/H_N=1.856\times10^5$ from 37.25. Remaining: $P_b$, $I_T$, $S_b$, 37.25 and the second and third meridian levels.
- **`hopf_finite_current_fit` (97).** The constant-profile $3\times3$ block gives 6.676 and 23.172 TeV (stated 6.6828, 23.1744), and 5.91, 22.88 at $f_S=4371.67$. $Q_W$ cancels at $f_S=4378$ GeV. $I_Q-I_Y=2.349$; $M_4=11.81$ TeV; neck $\Xi=2.604\times10^{-13}$ using $S_b$ of 93. Remaining: the weak-shape solve, $Z$ residues, 1.6555 TeV, 0.999899, $B^{-1}=9.30$ TeV.

### New findings

**High**

- **H1. Audit grade.** `2026-11-20_opus_check_pending_audit.md:224` "The fourth minors and the $t=2$ determinants were taken as stated"; `:181` "The component potentials were taken as stated"; `:201`, `:202` leave 1.34 TeV and 6598 unrecomputed, and both numbers are in the ledger statements (`ledger.pl:3773`, `:3843`). Action: record these 21 rows with a third grade (for example `consistency`) and keep `by_hand` for full re-derivations. Theorems 68.1, 69.1, 71.1 and 104.1–104.5 still need their linearized operators re-derived.
- **H2. Dependence on the pending fits.** `rests_on/2` shows 48 Opus-checked claims (42 `proved`) resting on the four pending claims, with no test for it. The 19 paper claims show zero such dependence, while the text does: `two_endpoint_limits.tex:446` "It predicts $G_F=1.161834\times10^{-5}$ … with $B^{-1}\simeq9.30$ TeV". Action: add a `rests_on_pending/1` test and name the unrefereed numbers in the papers' closing lines.

**Medium**

- **M1. Scope of the octet value.** `seven_m_theory.tex:118` "has $m^2B^2=4(29-4\sqrt{67})/7$" omits the restriction of `ledger.pl:3469` ("in the frozen weak and colour-dilaton restriction"). Derivation: with $h_{\alpha\beta}=(\pi/q)g_{\alpha\beta}Y$, $\delta A=b\,\epsilon^\gamma{}_{\cdots}\nabla_\gamma Y$ and $p$ flat non-colour dimensions, the traceless colour equation gives $H=-(q-2)\pi/q$; the trace and form equations are $(\Box-\nu)\pi=(qD_0-2)\lambda\pi+qD_0c\nu b$ and $(\Box-\nu)b=\tfrac{q-1}{q}c\pi$, with $c^2=2\lambda$ and $D_0=2(p-1)/(p+q-2)$. Hence $x^2+(qD_0-2)x-2(q-1)D_0\nu/\lambda=0$ for $x=(\nu-m^2)/\lambda$. At $p=4$: $7x^2+16x-144=0$, $-2.138$. At $p=6$, the "six longitudinal dimensions" of `results/99:27`: $9x^2+32x-240=0$, $m^2B^2=4(43-4\sqrt{151})/9\simeq-2.735$. The forms of 99.1 at $\eta=\varrho=0$, $z=3$ give the same root ($9y^2-86y-63=0$). The sign is unchanged. Action: add the qualifier or quote the $p=6$ value.
- **M2. $G_F$.** Hand evaluation of the formula at `results/78:96-98` gives $1.160929\times10^{-5}$; result 92 quotes $1.160934\times10^{-5}$. The 92 "prediction" equals the single-doublet tree formula to 4 ppm, and 97 lies 0.078% above it. Action: reword `ledger.pl:3244`, `:3445` and `two_endpoint_limits.tex:446`.
- **M3. Heavy-pole scales.** $d_v=g_A+\rho/2=0.0016$ against the CHARM II error $\pm0.017$. `seven_m_theory.tex:107` "gives $M_v\simeq1.66$ TeV, a locking pole at $7.045$ TeV" carries no such caveat; `results/78` does.
- **M4. Mirror phenomenology.** `two_endpoint_limits.tex:511` "give $S_{\rm mir}=2/\pi$ at leading order" stands without the electroweak-fit comparison or the $T$ bound of 79.1, and 280 GeV stable coloured mirrors are stated without the collider conclusion. Action: state the exclusions plainly.
- **M5. Literature.** `paper/LITERATURE.md` ends at section T and has no rows for results 59–108. Missing in `seven_m_theory.tex`: Klebanov–Pufu–Tesileanu (arXiv:1004.0413) for the Betti vector, and Bousso–DeWolfe–Myers and Brown–Dahlen for the shape instability (cited only at `results/98:15`). `results/89` lacks Randjbar-Daemi–Salam–Strathdee.

**Low**

- **L1.** 46 of the 50 files `results/59–108` still end "Independent scientific review is pending", as do `seven_m_theory.tex:531` and `two_endpoint_limits.tex:583`.
- **L2.** `STRATEGY.md` has no stipulation list; `README.md` says code was removed while `paper/` tracks 15 scripts.

**Note.** Results 92, 93 and 97 agree with each other across files ($S_b$, 37.25 against 37.07, $d_v$).

### Checked and not checked

Checked by hand: the rows above, the pending-claim items, the running values of `two_endpoint_limits.tex:485`, and ledger queries. Not re-derived: the fluctuation operators of 68.1, 69.1, 71.1, 99.1, 103–107, and every Galerkin or spline output. Sources read: arXiv:2007.03319 Table 1 (PDF), the constants of `lincomb.c` through a fetched summary, the abstract of arXiv:1004.0413. Recalled: DNP, Brown–Dahlen, the CHARM II errors, electroweak and collider limits.

## Ledger changes made in response (Claude Opus 5.5, 20 November 2026)

- H1: a new check grade `partial(Description)`. Fifteen rows were regraded from `by_hand`, each naming what was taken from the results file. These are the eight rows whose own text leaves a stated form, number or proof step unchecked: 94.4, 98.2, 105.4, 107.1, 90 (species sum), 100 (benchmark table), 68.1 and 78.1. To them were added the seven rows whose quadratic forms were taken from the results file: 69.1, 71.1 and 104.1–104.5. The remaining rows flagged by the referee's count leave out only illustrative examples outside the claim statements (for instance SciPy crossing examples), or checked numbers later re-derived by this referee (94.5, 98.3). They keep `by_hand`.
- H2: the rule `pending_dependent/2` and the facts `awaits_pending/1` list every checked claim that rests on a claim still referee pending, with two tests keeping the list and the dependency graph in step.
- 82.1: `hadron_root_slope` is recorded as checked by this referee, by hand, from Table 1 of arXiv:2007.03319, and its pending flag is removed. The last digits of the program output were not recomputed. They lie inside the rounding of the table inputs.
- L1: provenance lines of the results files and the closing lines of the two papers updated (see the commit).
- M1–M5 and L2 are open items for the authors.
