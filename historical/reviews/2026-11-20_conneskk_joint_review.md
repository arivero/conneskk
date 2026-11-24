# Review: conneskk (final version, 20 November 2026)

**Reviewers.** First review and pending-claim audit: Claude Opus 5.5, 19–20 November 2026. Second referee: Claude Fable 5.2 (xhigh), 20 November, read-only, hand derivation and read-only ledger queries. This final version merges both and was checked against the repository at the state below.

**Repository state this review matches.** `master` = `origin/master` = `aa7316b` (20 Nov 20:30), working tree clean. The remote has three branches: `master`, `11D` and `html-integrated-edition`. No pull request is open. Seven issues are open (#1, #16, #24–#27, #29). `swipl -g run_tests -t halt ledger.pl` passes 19 of 19 tests. `docs/` was rebuilt after the last text change (`8d0229c`).

**Scope.** The work of 18–19 November by "GPT-6.2 Astra Max" and "gpt-6.2-sol ultra": 142 commits, 50 new results files (`results/59`–`108`), the two endpoint papers (`paper/seven_m_theory.tex`, `paper/two_endpoint_limits.tex`) and the compact-spaces lecture. The focus is the 168 ledger claims that were `referee_pending` on 19 November.

**Records in the repository.** The claim-level audit is `historical/reviews/2026-11-20_opus_check_pending_audit.md`. The second referee's report is `historical/reviews/2026-11-20_fable_second_referee.md`. Each check is a `checked_by/3` row in `ledger.pl`. `AGENTS.md` says `historical/` is provenance and is not read into context, so the open actions below are stated in full.

## Verdict

**No claim was found wrong.** Of the 168 claims pending on 19 November:

| State now | Count | Ledger form |
|---|---|---|
| Re-derived by hand in full, Opus 5.5 | 149 | `checked_by(C, claude_opus_5_5, by_hand)` |
| Consistency check, Opus 5.5: structure re-derived, some forms or numbers taken from the results file | 15 | `checked_by(C, claude_opus_5_5, partial("..."))` |
| Re-derived by hand, Fable 5.2 (Proposition 82.1) | 1 | `checked_by(hadron_root_slope, claude_fable_5_2, by_hand)` |
| Still pending: numerical fits | 3 | `referee_pending(C)` |

The second referee re-derived 24 of the audited claims independently, weighted towards the ones most likely to fail. All 24 are correct as the ledger states them.

Two cautions about what this verdict is worth:

- The audit moved 78 claims of the hardest tier in 47 minutes (`86635ad` 01:09 to `b8e781d` 01:57). The second referee found that several rows marked "checked in full" had taken forms or numbers as stated. Those rows are now graded `partial` (action 2).
- One earlier claim, the superspin-36 exclusion of `results/58`, had two by-hand model checks and still rested on a wrong highest weight. The project found and corrected it in `7edd407`. Model checks, including the ones recorded here, are evidence and fall short of proof.

All checks are by AI referees. No human review exists.

## Open actions, ranked

Nothing in this list has been applied in the repository, except where "done" is stated.

### 1. Three numerical fits are unrefereed, and 47 checked claims rest on them (high)

```
ledger.pl:3246   claim(dual_tensor_finite_fit, claim, numerical, "Result 92, finite pole and contact fits", ...
ledger.pl:3447   claim(hopf_finite_current_fit, claim, numerical, "Result 97, finite weak inverse", ...
referee_pending(dual_tensor_finite_fit).  referee_pending(dual_tensor_finite_neck).  referee_pending(hopf_finite_current_fit).
```

The ledger lists the dependents as `awaits_pending/1` facts (47 claims, 41 of them `proved`), mostly in results 94–108. The rule `pending_dependent/2` and two tests keep that list in step with the dependency graph. The papers' closing lines (`paper/seven_m_theory.tex:531`, `paper/two_endpoint_limits.tex:583`) now name the numbers that come from these fits.

What the second referee verified by hand, and what remains:

| Fit | Verified by hand | Remaining |
|---|---|---|
| `dual_tensor_finite_fit` (92) | $f_e/7f_m$ and $Z_6=(f_e/f_m)/2\pi$ on both branches; equal $v_A^2=3.8655\times10^7$ GeV$^2$; $D_b=4.000$ on both branches; $I_W\simeq2.36$, $I_Y\simeq7.9$; the fold near 580 GeV; $\Xi$, $I_3$, 11.89 and 19.00 TeV | The Galerkin solve: 580.21, $M_v$, 0.9999872, the 828.91 fold |
| `dual_tensor_finite_neck` (93) | 26.7 TeV; the matching sum $9.87+O(0.1)$ against $10.007$; one meridian level below 18.3 TeV; $\Xi=2.017\times10^{-13}$; $M_C/H_N=1.856\times10^5$ | $P_b$, $I_T$, $S_b$, 37.25, the second and third meridian levels |
| `hopf_finite_current_fit` (97) | The constant-profile $3\times3$ block gives 6.676 and 23.172 TeV (stated 6.6828, 23.1744); $Q_W$ cancels at $f_S=4378$ GeV; $I_Q-I_Y=2.349$; $M_4=11.81$ TeV; $\Xi=2.604\times10^{-13}$ | The weak-shape solve, the $Z$ residues, 1.6555 TeV, 0.999899, $B^{-1}=9.30$ TeV |

Results 92, 93 and 97 agree with each other across files ($S_b$, 37.25 against 37.07, $d_v$).

**Action:** have a model other than the author rerun the three fits, record the language used, and then remove the `referee_pending` rows and the `awaits_pending` facts. The two tests fail until both are removed together.

### 2. Fifteen checks are consistency checks and need a full re-derivation (high)

| Claim (result) | `ledger.pl` line | Taken as stated |
|---|---|---|
| `round_flux_product_gap` (68.1) | 4312 | the fourth minors, the $t=2$ determinants, the reduction to the mass form |
| `vortex_constraint_squares` (69.1) | 4309 | the quadratic forms of `results/69` (their reduction from the action) |
| `rooted_colour_gap` (71.1) | 4310 | the quadratic forms of `results/71`; needs equal external and projective $Z_H$ |
| `finite_weak_current_inverse` (78.1) | 4316 | the remaining entries and the inverse-function step |
| `projective_vortex_spectator_descent` (90) | 4304 | the exact species sum |
| `hopf_locking_weak_charges` (94.4) | 4262 | the fitted values 7.045 TeV and 4377.59 GeV |
| `hopf_intrinsic_colour_stabilizers` (98.2) | 4264 | the component potentials |
| `hopf_comoving_hadronic_benchmark` (100) | 4307 | the table entries from the fit of 97 |
| `hopf_local_scalar_constraint_positivity` (104.1) | 4329 | the quadratic forms of `results/104` |
| `hopf_local_vertical_orientation_bound` (104.2) | 4288 | the quadratic forms of `results/104` |
| `hopf_local_normal_scalar_towers` (104.3) | 4265 | the quadratic forms of `results/104` |
| `hopf_local_calibrated_coloured_gap` (104.4) | 4330 | the quadratic forms of `results/104` |
| `hopf_local_full_boson_ordering` (104.5) | 4331 | the quadratic forms of `results/104`; the SciPy example |
| `hopf_bulk_tensor_independent_magnetic_pole` (105.4) | 4286 | the crossing scale $B^{-1}=1.34$ TeV, which is in the claim statement (`ledger.pl:3775`) |
| `hopf_isotropic_tensor_sharp_soft_mass` (107.1) | 4287 | $C_{\rm soft}\approx6598$, which is in the claim statement (`ledger.pl:3845`) |

The second referee counted 21 such rows. The six left at `by_hand` omit only illustrative examples outside the claim statement, or numbers that referee has since re-derived (94.5, 98.3). The fluctuation operators of 99.1, 103 and 105–107 were also taken from their results files by both referees, in the sense that the reduction from the eleven-dimensional action was not repeated.

**Action:** re-derive the linearized operators of 68.1, 69.1, 71.1 and 104.1–104.5 from the action, recompute 1.34 TeV and 6598, and regrade each row to `by_hand` when done.

### 3. The octet mass is quoted without its restriction (medium)

```
paper/seven_m_theory.tex:118
... perturbation of the magnetic five-form has $m^2B^2=4(29-4\sqrt{67})/7$. ...
ledger.pl:3471
"For the supported round colour factor with zero volume-line penalties in the frozen weak and colour-dilaton restriction, the top-form colour octet has a physical negative second variation with m^2 B^2=4(29-4 sqrt(67))/7."
```

Second referee's derivation: with $p$ flat non-colour dimensions, colour dimension $q$, $c^2=2\lambda$ and $D_0=2(p-1)/(p+q-2)$, the trace and form equations give $x^2+(qD_0-2)x-2(q-1)D_0\nu/\lambda=0$ for $x=(\nu-m^2)/\lambda$. At $p=4$ this is $7x^2+16x-144=0$ and $m^2B^2\simeq-2.138$, the paper's value. With the six longitudinal dimensions of `results/99_nonround_hopf_colour_gap_and_level_crossing.md:27` it is $9x^2+32x-240=0$ and $m^2B^2=4(43-4\sqrt{151})/9\simeq-2.735$. The forms of 99.1 at $\eta=\varrho=0$, $z=3$ give the same root. The sign, and so the instability, is the same in both.

**Action:** add the qualifier to the paper sentence, or quote the $p=6$ value.

### 4. $G_F$ is called a prediction (medium)

```
ledger.pl:3246    ... predicts GF about 1.160934e-5 ...
ledger.pl:3447    ... gives GF about 1.161834e-5 GeV^-2 in the stated pole and width convention, prior to radiative matching.
paper/two_endpoint_limits.tex:446
It predicts $G_F=1.161834\times10^{-5}\ {\rm GeV}^{-2}$ with $B^{-1}\simeq9.30$ TeV.
results/78_finite_weak_pole_and_current_match.md:100
The pole formula itself also holds in an ordinary single-doublet weak theory to this accuracy.
```

By hand the formula of `results/78:96-98` gives $1.160929\times10^{-5}$. Result 92's value equals the single-doublet tree formula to 4 ppm, and result 97's lies 0.078% above it. The muon-lifetime-free fits reproduce the ordinary tree relation from $M_Z$, $\Gamma_{\ell\ell}$ and $\sin^2\theta^\ell_{\rm eff}$.

**Action:** say in the two ledger statements and in the paper sentence that the number is the single-doublet tree relation.

### 5. Heavy-pole scales are quoted without their error (medium)

```
paper/seven_m_theory.tex:107
... The leading-matrix fit of Part S248 gives $M_v\simeq1.66$ TeV, a locking pole at $7.045$ TeV and $B^{-1}\simeq5.51$ TeV.
```

The fit input is $d_v=g_A+\rho/2=0.0016$, against a CHARM II error of $\pm0.017$ (from memory). `results/78` carries this caveat and the paper sentence does not.

**Action:** add the caveat to the paper.

### 6. Mirror and axion phenomenology omit the exclusions (medium)

- `paper/two_endpoint_limits.tex:511`: "... give $S_{\rm mir}=2/\pi$ at leading order." No comparison with the electroweak fit or with the $T$ bound of 79.1 follows. Stable coloured mirrors at 280 GeV are stated without the collider conclusion.
- `ledger.pl:3054` (`root_phase_charm_test`): "... give F_a about 41 GeV and mass about 139 keV. The connected-charm approximation alone gives a radiative branching ratio of about 3.0e-5." Result 85 itself states that this visible axion is excluded by TEXONO and BBN, and its rate $2.97\times10^{-5}$ is 42 times the BESIII limit $7.0\times10^{-7}$. The ledger statement omits the exclusion.

**Action:** state the exclusions in the paper and in the ledger statement.

### 7. Literature records stop before the new results (medium)

- `paper/LITERATURE.md` has no rows for results 59–108.
- `paper/seven_m_theory.tex` lacks Klebanov–Pufu–Tesileanu, arXiv:1004.0413 (abstract read), for the Betti vector, and Bousso–DeWolfe–Myers and Brown–Dahlen for the shape instability. The latter are cited only at `results/98:15`.
- `results/89` lacks Randjbar-Daemi–Salam–Strathdee (from memory).

### 8. The stipulations are not listed anywhere (medium)

The results follow a pattern: a member of the family fails a physical test, and a new ingredient is added to the action.

- `results/75_infrared_currents_and_continuum_limits.md:16-19` gives $g_V=5/2+2s_w^2$, against the Standard Model's $(-\tfrac12+s_w^2,\ s_w^2)$ and CHARM II. Result 77 then adds a quantized Chern–Simons flux mass.
- Result 98 finds the tachyonic octet of action 3 and adds "positive intrinsic colour-leaf squares".
- Results 68 and 79 need three mirror families, with the $S,T$ cost of action 6.
- `paper/two_endpoint_limits.tex:464`: the coefficient $\zeta=\zeta_0[1+(B_\sigma/a_{\rm dil})^4]$ is chosen to restore the ordering.
- The 280 GeV mirror cap of 100.1.
- Inputs that the statements name and a reader can miss: equal horizontal root coefficients $Z_H$ in 71.1 (`ledger.pl:2748`, "With equal horizontal root coefficients ..."), and the "prescribed positive dilaton function zeta" of 105.5 (`ledger.pl:3787`) and 106.1.

Each step is stated honestly and each claim is about "the specified action". No file records that the action was specified to pass the previous test. `STRATEGY.md` has no stipulation list.

**Action:** add a running list of stipulations, each with the test that motivated it, to `STRATEGY.md` or the papers' scope sections.

### 9. "proved" covers claims with a single AI referee (medium)

- 239 `proved` or `conditional` claims have Claude Opus 5.5 as their only checker other than the author.
- The test `self_checks_are_corpus_only` (`ledger.pl:4407-4408`) exempts any self-checked claim flagged `referee_pending`. On 19 November that let 150 author-only claims carry `proved` with a green test suite.
- Results 59–108 were created between 03:50 and 14:57 on 19 November: 50 files in about 11 hours, faster than review can follow.
- `AGENTS.md` asks for consensus among several models before a negative result is relied on. Two referees now agree on five of the negative results: `spin_seven_periods` (84.3), `hopf_source_free_freund_rubin` (94.6), `m111_membrane_saturation`, the heterotic Euler exclusion, and the 64.1/98.1 determinant. The other negative results have one referee.

**Action:** give single-referee claims a distinct status or say so in the README, and hold new results while actions 1 and 2 are open.

### 10. README (low)

- The README has no prose statement of what is new, known, conditional or unrefereed.
- `README.md:49` says "Binaries, code and duplicated developments were removed", while `paper/` tracks 16 scripts (`.py` and `.sh`), which the build uses.

### 11. Smaller points (low)

- 82.2's proof compresses a unit change ($2\tau^2/3$ absolute against $8\tau^2/3$ relative) and would read better spelled out.
- Several margins are tight and hold: 74.1 ($Y^2>0.204$ against $1/5$) and 100.1 ($62.25$ against $63$).

## Done on 20 November

- The line `research/two-endpoint-papers` and `research/issue-results` were merged into `master`, and the alternative-solution branches are gone from the remote. The fixes for the closed issues and the superspin correction are on `master`.
- The Opus 5.5 report on snapshot `90e31b3` is archived as `historical/reviews/2026-11-19_opus_check_endpoint_papers_90e31b3.md` and registered in the ledger.
- `AGENTS.md` records the direct default-branch workflow.
- Ledger (`b53a80e`): the grade `partial(Description)` and the fifteen regrades of action 2; Proposition 82.1 checked by the second referee from Table 1 of arXiv:2007.03319 (heavy part $-0.0135$, light part $0.01380$, common sum $0.3091$ against $0.309043$, statistical error $0.006537$ against the file's $0.0065364$); `pending_dependent/2`, `awaits_pending/1` and two tests.
- The provenance lines of results 59–108 record the checks. Lines of files with partial rows say that some checks took forms or numbers as stated. Lines of files that rest on 92, 93 or 97 say so.
- The closing lines of both papers name the numbers that come from unrefereed fits, and `docs/` was rebuilt (`8d0229c`).

## What was verified

**Claims of the two papers and the lecture** (all 19 are checked)

| Claim | Check |
|---|---|
| `fr_product_relative_radius` (`seven_m_theory.tex:56-65`) | For any Freund–Rubin AdS$_4\times M_1\times M_2$ product the volume-preserving relative mode has $\Delta_L$-eigenvalue $0$, so $m^2L^2=-3<-9/4$. Radii $a^2=2L^2/3$, $b^2=L^2/6$. Second referee agrees. |
| `heterotic_wall_three_index` | Tian–Yau $\mathbb Z_3$ quotient: $(h^{1,1},h^{2,1})=(6,9)$, $\chi=-6$; three net $\mathbf{27}$; $\chi\ne0$ excludes a locally free $S^1$ action. |
| `heterotic_wall_pair_threshold` | Counts $(9-r+k,\,6-r+k)$; exactly three $\mathbf{27}$s forces $r=6$, $k=0$. |
| `m111_circle_descent` | $w_2(\mathbb{CP}^2\times\mathbb{CP}^1)=(1,0)$ and $e=j(3,2)$: spin iff $j$ is odd. |
| `m111_horizontal_modes` | $n=jr-\tfrac12$ is an integer; $\mathcal O(-4,1)\mapsto-11u$. |
| `m111_membrane_charge`, `m111_membrane_saturation` | $\mathrm{Vol}(Y)=9\pi^4/128$ (base $9\pi^3/64$ times Reeb length $\pi/2$); $mL_{\rm AdS}=\tfrac32\pi T_2L^3=8\sqrt{N/3}$; saturation fails by a degree-one cover against $3|q|$. Both referees. |
| `two_endpoint_flavour_wall` | Mixed reflections give $k=(n+\tfrac12)\pi/d$, gap $\pi/2d$. |
| `two_endpoint_fixed_energy_count` | Quarter-disk count $t^2(E^2-\Lambda_j)/4\pi$ with perimeter error. |
| `two_endpoint_face_current` | Neumann face Green function $\coth(q\ell)/q$; logarithmic corner divergence. |
| `two_endpoint_scalar_count` | $(n_u,n_d,g)=(2,3,3)$; $\mathfrak{so}(30)=\mathfrak u(15)\oplus\Lambda^2V$, $225+210=435$. |
| `lecture_projective_circle_gap` | $h^0(\mathcal O(3))\,h^0(\mathcal O(2))=30$. |

**Results the papers depend on**

| Claim | Check |
|---|---|
| `shared_circle_window` (59.1) | $\mathbb{CP}^2$ levels $4j(j+2)$, multiplicity $(j+1)^3$, threshold $\sqrt{12}/B$, every power of $a$ in the scaling table. |
| `shared_circle_density` (59.2) | $B^6L=8I_3/(D\gamma)$, hence $B^7\propto P_b$ and $L/B\to k\sqrt c$. |
| `shared_polar_solution` (62.1) | Trace-reversed balance $(2U-3Zf^2/2)/9=0$ outside $\mathbb{CP}^2$ and $18/B^2$ inside. The vortex stress is taken from result 55. |
| `vortex_root_vacua` (63.1) | $H_+H_-=\zeta_0e^{-2\sigma}\Phi$; added squares and their first variations vanish; only $Q=K_3+Y$ survives. |

**Negative results with two independent checks**

- `hopf_source_free_freund_rubin` (94.6): the form equations need $f^2=2c^2$; then $R_{55}\le c^2/3$ against the Hopf value $c^2$.
- `spin_seven_periods` (84.3): a finite-kernel isometric action of the 12-dimensional group forces a transitive action; the resulting spaces have $b_3=b_4=b_6=0$ by Gysin; the determinant is $j^2$ and spin forces $j$ odd.
- `spectator_global_bordism` (90): $\Omega^{\rm Spin}_7(B(U(3)\times U(1)))=0$, since the $Sq^2$-homology is $\mathbb Z_2[c_2^2]$.
- `hopf_colour_octet_instability` (98.1): $4(29-4\sqrt{67})/7\simeq-2.138$ in its stated restriction (action 3).

**Second referee's further sample, all correct**

84.2 (colour $1+g^2/2\lambda_c=4$, weak $19/4$, ratio $19/72$), 84.4 ($8j^2/L^2$, $m^2L_{\rm AdS}^2=12$), 87.2, 68.3 ($b_0=3$, $b_1=-50$), 94.2, 94.5 with the crossing of 99 (3.961 TeV and 1.630 TeV), 102.3 ($17/240$), 100.1 ($43.462/0.6982=62.25<63$, 309 GeV), 78.1 ($s=0.230333$, $\rho=1.00913$, $d_v=0.001565$, $\alpha^{-1}=128.127$), 108.1–108.3 (Euler class $c_3$, projection formula, degrees $3+4+5$), 92.2, the 88.1 charge table, lecture Exercise 9, the 105.1 spectra, 106.2, the 108.5 running values and 82.2.

**Further items of the first review**

- 60.1, 60.2 (residues $1/5$, $1/45$, $-1/15$), 60.4; 64.1–64.3; 65.1–65.3 ($M_S^2=27\zeta(3)g^2/(16\pi^4L^2)$); 66.1; 67.1 (first mass $\pi/d$); 68.2–68.3; 70.2; 72.2; 76.3 ($41/3$, $484/3$, weak $b_0=-1$); 79 ($6\pi S=12$); 96 ($\int_0^1[8-3(1-2x)^2]dx=7$, $S_1=412/3$).
- 103.1: the stiffnesses recomputed in complex coordinates are $25,6,9,8$, giving $37/8$ and $25/8$. 103.3: $4.9925$ against the stated $4.99246$.
- The `7edd407` correction: the highest weight of $\mathbf{36}\otimes\mathbf{128}$ is $(\tfrac52,\tfrac32,\tfrac12,\tfrac12)$; the retracted exclusion used $(\tfrac52,\tfrac52,\tfrac12,\tfrac12)$.
- In 84.2 the first pass of the audit got $10/72$, having omitted the Chern–Simons-induced second weak compensator. The claim's $19/72$ is right.

The full claim-by-claim record is in the audit report named at the top.

## Limits of this review

- The three fits of action 1 and every Galerkin or spline output are unchecked.
- The fifteen rows of action 2 are consistency checks.
- Most checks start from the quadratic forms and actions as the results files state them. The reduction from the eleven-dimensional action was repeated only where a row says so.
- Before the user's instruction to stop running programs, the first review ran the ledger tests, `check_html.py` (12 pages), `test_figures` (6/6), the paper scripts and `test_finite_flux_currents` (7/7); the values quoted in results 78 and 96 reproduced. After it, only SWI-Prolog was used.
- Sources read by the second referee: arXiv:2007.03319 Table 1 and the abstract of arXiv:1004.0413. Recalled from memory: DNP, Brown–Dahlen, the CHARM II errors, electroweak and collider limits.
- Priority and novelty of the new results were not searched.
