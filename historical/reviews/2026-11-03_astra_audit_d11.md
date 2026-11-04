# conneskk: audit and a route from the massless electroweak limit to eleven dimensions

Review of the advances dated 3 November 2026. Audited repository snapshot: [b2ddf98cd37eb59c0558d87c8f3eba2262f79869](https://github.com/arivero/conneskk/tree/b2ddf98cd37eb59c0558d87c8f3eba2262f79869). This revision supersedes the earlier audit of 530fa06, including its isometry-first recommendation and its incorrect normalization finding.

The research objective is to construct a family in which the finite NCG description is linked to a resolved Kaluza–Klein geometry as the W and Z masses vanish. The disk bundle X = D(Λ²₋T*S⁴) remains a principal candidate because of its compression and localization mechanisms. An SM-isometry manifold such as M¹¹¹ provides a comparison. Its symmetry group alone does not select the relevant NCG limit.

The strongest constructive result of this audit is an explicit hierarchy that the existing interval theorems already support:

\[
m_{\mathrm{weak}}\ll E_\varepsilon\ll\Delta_{\mathrm{KK}}\longrightarrow0.
\]

The weak masses approach zero faster than the first discarded KK mass. A moving low-energy window continues to contain finitely many states, while a fixed positive energy resolves increasingly many modes. Sections 3–5 derive two such families, extend the operator construction to seven internal dimensions, and state exactly what remains conditional for X. Section 6 derives a uniform bound on quaternionic breaking from the radial density and applies a new Python check.

No changes were pushed to the repository. The accompanying calculation bundle contains the audit script, its numerical output, the audited radial solver and instructions. The radial calculations reuse that solver; they are reproductions with a new observable, rather than an independent discretization.

## 1. Changes that materially revise the audit

Two commits after the earlier snapshot, b80f85b and b2ddf98, substantially strengthen [lemma 28](https://github.com/arivero/conneskk/blob/b2ddf98cd37eb59c0558d87c8f3eba2262f79869/lemmas/28_two_walls_connected_parent.md).

| Subject | Status at the audited snapshot |
|---|---|
| Spin connection in the numerical operator | The sign error is corrected. The old singular values and boundary fibre parts are explicitly withdrawn. In particular, the old next value 1.04 and the representation-16 value 1.35 must not be reused. |
| Reproducibility of lemma 28 | `tools/lemma28_radial.py` is now retained. Its assertions check Casimir values, anticommutators, the curvature contribution, the line-bundle spectrum and the wall mixing formula. All of these assertions passed in this review. |
| Local operator and wall | Theorem 28.9 constructs a self-adjoint operator with a local wall. The normal model and four core states have precise statements. |
| Boundary compression | Proposition 28.13 derives persistent channel mixing. At Fubini–Study radius the pull-back connection gives fibre weight 2/3, rather than the level-one value 1. A line-preserving collar connection gives the desired value in the leading wall model. |
| Eight-state spectral window | Conjecture 28.6 remains open. The missing global coercivity estimate must control every relevant Sp(2) representation. Selected representations are insufficient. |
| Exact finite-mass quaternionic core | Proposition 28.16 supplies the correct density test. The corrected samples show small symmetry breaking; convergence of maps does not imply convergence of generated algebras. |
| Reality and grading | Propositions 28.18–28.20 now explicitly distinguish formal charge conjugation from domain invariance, the end grading from the internal quaternionic grading, and the 64-state product from its nonreducing 32-state odd part. These are acknowledged construction obligations. |
| Prescribed compression windows | Theorem 28.21 proves the connected-space compression mechanism with the windows supplied as input. Deriving those windows from the local operator is a separate problem. |

**Correction to the previous audit.** The alleged missing factor ℓ⁻¹ᐟ² in the R-component of the embedding W was a reading error. Both components have the factor in `paper/boundary_condition_note.tex:53`, in both 530fa06 and b2ddf98. The normalization finding is withdrawn; no source correction is needed.

The reality-convention complaint is also closed by the current explicit treatment: quaternionic conjugation reverses the Hermitian generators and commutes with the corresponding skew-Hermitian Lie-algebra action. The remaining issue is preservation of the operator domain and the desired finite correspondence.

## 2. Mathematical and publication issues that remain

### 2.1 The finite bimodule still needs its own connector

Assume the conjectured eight-state window W⊕V, with dim W = dim V = 4, and choose the tunnelling phase so that

\[
d=\lambda\sigma_1\otimes1_4,\qquad \gamma=\sigma_3\otimes1_4.
\]

The coarse product of lemma 16 gives

\[
\mathbb D=d\otimes1+\gamma\otimes\bar d,
\qquad G=\gamma\otimes\bar\gamma,
\qquad P_-=(1-G)/2.
\]

**Proposition.** In this specified construction,

\[
\mathbb D^2=2\lambda^2 1_{64},\qquad
P_-\mathbb D P_-=0,\qquad
\|[P_-,\mathbb D]\|=\sqrt2|\lambda|.
\]

The odd space has dimension 32 and the desired abstract off-diagonal bimodule, but it is not reducing for λ ≠ 0. At λ = 0 all 64 states are zero modes, so an energy cutoff still does not select just the odd half.

*Proof.* The cross terms in the square cancel because dγ = −γd. Also {G,𝔻} = 0, so 𝔻 exchanges its two graded halves. ∎ This is now explicitly incorporated in Proposition 28.20. A connector on Hom(V,W)⊕Hom(W,V) remains to be constructed.

There is also a dimension count to preserve. For an elliptic seven-dimensional parent, Tr exp(−tD²) has leading exponent t⁻⁷ᐟ². Finite-rank coefficient bundles or matrix doubling preserve that exponent. An independent product of two copies has squared heat trace, with exponent t⁻⁷: internal spectral dimension fourteen. Thus a seven-dimensional parent for the real bimodule should use a suitable finite-rank correspondence, or another controlled construction that avoids introducing an independent second geometric tower. Introducing the bimodule after truncation remains algebraically possible but leaves its geometric origin open.

The inherited end grading is scalar on W and V. The further involution splitting W ≅ H² into two quaternionic lines remains additional data, as Proposition 28.19 now states. Neither the connector nor this grading follows from dimension counting.

### 2.2 The massless limit must specify a path

Lemma 23 gives, for its stated five-dimensional Yang–Mills action,

\[
\sin^2(M_W\ell)=\tfrac12\sin^2(2\theta),\qquad
\sin^2(M_Z\ell)=\tfrac45\sin^2(2\theta).
\]

At fixed ℓ, θ → 0 makes both vector masses vanish with the tower spacing fixed. The other endpoint θ → π/2 also makes the vector masses vanish, while the fermion mass approaches π/(2ℓ). These are useful controls on the interpretation of the limit. The implication from masslessness to an expanding geometric regime requires a specified family of lengths, angles, localization masses and couplings.

The constructive response is the joint family in section 3. The strategy's opening statement should refer to that kind of family, or explicitly state that selecting it dynamically is a hypothesis. The existing results do not establish that every path to M_W = M_Z = 0 opens a geometric dimension.

### 2.3 Geometry, index and chirality on X

The boundary of X is CP³. The zero section S⁴ is an interior defect of codimension three. In M⁴×X they give a ten-dimensional boundary and an eight-dimensional defect worldvolume. A codimension-three Callias reduction and a boundary-layer reduction are required; the two sites have different local models.

The extending bundle restricts to O(3)⊕O(1)⊕O(−1)⊕O(−3). In the repository's spin-Dirac convention on CP³,

\[
\operatorname{ind}D_{O(k)}=(k^3-k)/6,
\]

so the four indices are 4, 0, 0, −4. Their sum is zero, consistent with extension over the filling. The wall condition and Callias potential must determine the surviving sectors and physical chiralities. This total index does not decide the localized spectral-window question. A gauge-equivariant index and anomaly calculation for the eventual electroweak spectrum remain necessary.

The standard Bryant–Salamon geometry on Λ²₋T*S⁴ is a relevant geometric comparison, with an asymptotic CP³ cone. Lemma 28 instead uses a deliberately chosen connection metric and collar. Its spectral conclusions should be attributed to that metric family; the Bryant–Salamon metric has not been obtained as the NCG limit. See [Karigiannis–Lotay, arXiv:2002.06444](https://arxiv.org/abs/2002.06444).

### 2.4 Docs and distribution

The PDFs in `docs/` were last refreshed at 4ae5b43, 3 November at 16:13 CET, before the new lemma-28 developments. The papers do contain eleven-dimensional and Hořava–Witten discussion. The missing item is a dedicated analysis of the massless limit and its seven-dimensional parent, rather than every mention of d = 11.

| Location | Verified issue | Suggested change |
|---|---|---|
| `paper/build_supplement.sh` | The explicit part list omits lemma 17 and ends at 27. | Add 17 and 28, with the current proof/conjecture distinctions and the relevant new review reports. |
| `docs/index.html` | The three drafts and supplement do not expose the current seven-dimensional programme. | Add a research-status entry for the W,Z → 0 family and connected parent, linking to the current lemmas and reproducible calculations. |
| `docs/supplemental_mobile.pdf` | A repeated PyMuPDF word-box scan flags right-edge overflow on 81 of 478 pages; page 5 was also visually confirmed to clip a table in the earlier review. | Reflow wide displays and tables, render, and inspect. |
| `docs/supplemental.pdf` | The same scan flags 13 of 263 pages. | Include the standard supplement in the layout repair. A coordinate flag is a triage measure, not by itself proof of unreadable content. |
| Numerical support | Lemma 28 now has its solver. Some earlier temporary checks, including those described in lemma 26, remain less reproducible. | Retain scripts, input parameters, convergence tables and representation ranges alongside each result. |
| `STRATEGY.md` | T13 still steers the next paper toward D = 9 masses and scales. | Add a parallel, explicit W,Z → 0 work item with the joint-limit criteria below. |

No right-edge word overflow was detected in the six individual paper PDFs. The earlier link check reported 963 links with zero failures; the Prolog suite was not run because `swipl` was unavailable. Neither check substitutes for mathematical verification.

## 3. A positive joint-limit result from the exact interval

Let ε be dimensionless, 0 < α < 1, and take

\[
D_F(\varepsilon)=\varepsilon D_*,\qquad
\ell_\varepsilon=\ell_*\varepsilon^{-\alpha}.
\tag{1}
\]

Here D* has the signs and grading required by lemma 22. The wall data are Xε = tan(ℓεD_F(ε)), in the block notation of that lemma.

**Proposition: a finite window and an opening tower coexist.** For sufficiently small ε, the exact interval realization has:

\[
\begin{aligned}
W_\varepsilon^*D_\varepsilon W_\varepsilon&=\varepsilon D_*,\\
\Delta_\varepsilon&\ge \frac{\pi}{\ell_*}\varepsilon^\alpha
                      -\varepsilon\|D_*\|,\\
\|Q_\varepsilon(a)-\pi_F(a)\|
 &\le \frac23\ell_*^2\|D_*\|^2
       \varepsilon^{2(1-\alpha)}\|a\|.
\end{aligned}
\tag{2}
\]

The finite J and Γ are inherited exactly. Choose α < β < 1 and Eε = E*εᵝ. Eventually all the supplied finite states lie below Eε and all the other interval states lie above it. For every fixed E > 0,

\[
N_\varepsilon(E)
=\#\{|D_\varepsilon|\le E\}
\sim \frac{2r\ell_* E}{\pi}\varepsilon^{-\alpha}
\longrightarrow\infty,
\qquad r=\dim H_F.
\tag{3}
\]

*Proof.* The condition ℓε‖D_F‖ < π/2 follows from ε¹⁻ᵅ → 0. Lemmas 22.1 and 22.4 give the first two lines and the compression estimate. The ratios ε/Eε and Eε/εᵅ both tend to zero. Counting the signed arithmetic spectra (nπ ± θε,k)/ℓε gives (3). ∎

Thus the two observations have different limits:

\[
N_\varepsilon(E_\varepsilon)=r,
\qquad
N_\varepsilon(E)\longrightarrow\infty\quad(E>0\text{ fixed}).
\tag{4}
\]

This is a direct corollary of the corpus, with an explicit scaling and proof. It preserves the finite description near the weak scale while opening the geometric tower at fixed energy.

**Scope.** Lemma 22 starts from supplied finite data and a matrix-valued parent algebra. Equation (1) changes the wall data externally; a dynamical scalar selecting this family has not been derived. A fixed Majorana block does not satisfy D_F = εD*. Applying this proposition to an electroweak Dirac block requires an actual reducing sector, or an additional justified treatment of the heavy neutral sector.

### 3.1 A vector-mass realization in the stated toy action

For the universal channel of lemma 23, put mε = εm* and θε = ℓεmε. Its exact light poles are

\[
M_W=\ell_\varepsilon^{-1}
\arcsin\!\left(\frac{\sin2\theta_\varepsilon}{\sqrt2}\right),
\qquad
M_Z=\ell_\varepsilon^{-1}
\arcsin\!\left(\frac{2\sin2\theta_\varepsilon}{\sqrt5}\right).
\]

Consequently,

\[
M_W^2=2m_\varepsilon^2[1+O(\theta_\varepsilon^2)],
\qquad M_Z^2=\tfrac{16}{5}m_\varepsilon^2[1+O(\theta_\varepsilon^2)].
\tag{5}
\]

The physical vector poles of this toy therefore follow the required hierarchy. These constants belong to its five-dimensional Yang–Mills action. The finite spectral-action coefficients are 3 and 24/5 in the corresponding universal-mass convention. They must not be equated just because both families have a massless limit.

Lemma 25 provides a useful matching diagnostic: the heat-cutoff coefficient depends on s = ℓΛ through (3 − d_eff(s))/2. Along Λ = Eε, s → 0 and the finite coefficient is recovered; at fixed Λ > 0, s → ∞ and the interval coefficient is approached, within that theorem's constant-profile, small-mass scope. Varying the physical action cutoff is an additional prescription. An observational cutoff alone does not change the action.

## 4. A localized family with the same hierarchy

The preceding result uses boundary angles. Lemma 9 supplies a local overlap mechanism closer to the two-site construction on X.

Take M = −μ and the mixed interval conditions R(0) = 0, L(ℓ) = 0. For μℓ > 1,

\[
s=\kappa\ell,\qquad s=\mu\ell\tanh s,
\qquad m=\mu\operatorname{sech}s.
\]

**Proposition: localized joint limit.** Choose

\[
\mu_\varepsilon=\mu_*\varepsilon^\alpha,
\qquad c_\varepsilon=\mu_\varepsilon\ell_\varepsilon
=(1-\alpha)\log(1/\varepsilon)+c_0,
\qquad0<\alpha<1.
\tag{6}
\]

Then

\[
m_\varepsilon\sim2\mu_*e^{-c_0}\varepsilon,
\qquad\Delta_\varepsilon\sim\mu_*\varepsilon^\alpha,
\qquad\frac{\text{localization width}}{\ell_\varepsilon}
\sim\frac1{c_\varepsilon}\longrightarrow0.
\tag{7}
\]

*Proof.* Lemma 9 gives m ∼ 2μe⁻ᶜ and κ/μ → 1. Its first oscillatory root has π < k₁ℓ < 3π/2, so Δ/μ = √(1 + (k₁ℓ/c)²) → 1. The localization width is 1/κ. ∎

Both physical localization widths and the interval length grow, but their ratio shrinks. For α < β < 1, the weak observational wavelength also grows faster than the localization width: Eε/κ → 0. The localized states remain unresolved at that scale. At any fixed positive energy the tower becomes accessible.

**Proposition: exact quadratic tail identity.** Write the left profile as a multiple of

\[
L(x)=e^{-\kappa x}-r e^{\kappa x},\qquad r=e^{-2\kappa\ell}.
\]

Then

\[
r=\left(\frac{m}{\mu+\kappa}\right)^2,
\qquad \mu-\kappa=\frac{m^2}{\mu+\kappa}.
\tag{8}
\]

*Proof.* From μ = κ coth s and m = κ/sinh s, one has μ + κ = κeˢ/sinh s. The first identity follows; the second is m² = μ² − κ². ∎

Thus the opposite-wall correction to this core profile is quadratic in m/μ. Under (6), r ∼ e⁻²ᶜ⁰ ε²⁽¹⁻ᵅ⁾. This gives a concrete mechanism to investigate behind the observed λ²-sized defect on X. Equation (8) is exact for the interval; it is not a proof of the corresponding estimate on X.

**Python check.** Set μ* = 1, α = 1/2, c₀ = 2. Roots of the exact secular equations give:

| ε | μ | ℓ | Light mass m | Next positive mass |
|---:|---:|---:|---:|---:|
| 10⁻² | 0.1 | 43.026 | 2.71049 × 10⁻³ | 0.134573 |
| 10⁻⁴ | 0.01 | 660.517 | 2.70677 × 10⁻⁵ | 0.0114223 |
| 10⁻⁶ | 0.001 | 8907.76 | 2.70671 × 10⁻⁷ | 0.00107515 |
| 10⁻⁸ | 0.0001 | 112103 | 2.70671 × 10⁻⁹ | 0.000104600 |

The script also checks (8) and the exact boundary-angle family's compression bound and vector poles.

The finite two-state Connes distance is 1/m. Here

\[
\frac{1/m}{\ell}\sim\frac{e^c}{2c}\longrightarrow\infty.
\]

Both distances diverge, with different rates. A geometric correspondence through low-energy compression should retain this distinction; a metric convergence statement needs its own comparison maps and topology.

## 5. Seven internal dimensions and the disk bundle

### 5.1 An exact operator-level example already available

Lemma 24 considers CP³ with A = √2(∂̄ + ∂̄*) twisted by O(1), ker A ≅ C⁴, and first nonzero absolute eigenvalue ΔK. On Iℓ × CP³ its operator is

\[
\mathcal D_r=E\partial_x+Z A/r.
\]

The specified spectral walls preserve the finite tangential kernel exactly. The complement has |λ| ≥ ΔK/r; the next radial level is at least π/ℓ − ‖D_F‖.

**Corollary.** Set rε = r*ε⁻ᵞ and use (1), with 0 < α,γ < 1. A cutoff Eε = E*εᵝ with max(α,γ) < β < 1 isolates the finite window, because

\[
\Delta_\varepsilon\ge
\min\{(\Delta_K/r_*)\varepsilon^\gamma,
       (\pi/\ell_*)\varepsilon^\alpha-\varepsilon\|D_*\|\}.
\tag{9}
\]

For the especially simple choice γ = α, the geometry expands homothetically in all seven internal directions. At fixed positive energy, its leading local Weyl count has seven-dimensional growth, proportional to ℓεrε⁶E⁷, and spacetime plus the internal geometry gives eleven dimensions. The small change of the prescribed kernel-wall angles affects the low modes and does not change the bulk Weyl exponent.

This proves compatibility at the level of an explicitly given seven-dimensional operator and its low-energy window. Lemma 24's spectral walls constrain scalar functions at the boundary, and its two-stage algebra construction supplies additional structure. It does not yet derive the full finite SM algebra and real bimodule from unrestricted smooth scalar multiplication.

The dimensional conventions should remain explicit. A finite internal spectral triple has metric heat dimension zero and can have KO-dimension six. An interval times a fixed finite Hilbert space has one internal metric dimension. To interpret the resolved parent as an ordinary eleven-dimensional geometry, the six tangential geometric directions must also occur in its spectrum, as they do in this cylinder example.

### 5.2 Conditional scaling of X without changing its topology

Let D̂s denote a family of the local operators of lemma 28 on disk bundles Xs, where s includes the mass profile, collar length and connection. Suppose the required end-model estimates give:

1. the desired eight-state window, with splitting λs and complementary gap δs;
2. λs/δs → 0;
3. convergence of the selected compression maps to the intended core and boundary maps.

These are substantive hypotheses: the uniform estimate in item 1 is still part of Conjecture 28.6.

For any positive scale R, dilate the metric and scale the Callias potential consistently:

\[
g_{s,R}=R^2g_s,\qquad
D_{s,R}=R^{-1}\widehat D_s
\tag{10}
\]

after the unitary L² identification. The connection is pulled along with the geometry and the potential is multiplied by R⁻¹. Then, exactly,

\[
m_{s,R}=\lambda_s/R,\qquad
\Delta_{s,R}=\delta_s/R,\qquad
\frac{m_{s,R}}{\Delta_{s,R}}=\frac{\lambda_s}{\delta_s}.
\tag{11}
\]

Multiplication compressions are unchanged under the same pullback identification. Consequently a shape family that separates the window can be combined with R → ∞ to close the physical gap while retaining the relative separation.

If δs stays comparable to one and λs ∼ C exp(−κL), a sample choice is Rε = ε⁻ᵅ and κLε ∼ (1 − α)log(1/ε), giving m ∼ Cε and Δ of order εᵅ. The actual decay rate must come from the radial system; the interval value μ must not be inserted into X without derivation. When convergence to the precise core compression also needs the shape localization parameter M → ∞, it must be varied as well, with L adjusted using the resulting decay rate.

For a seven-dimensional regime at fixed physical energy, the rescaled bulk potential and curvature must also be controlled. For example, a slowly increasing M together with R much larger than M makes the potential scale M/R small. A global uniform gap in *shape units* is compatible with a closing gap in physical units. The existing coercivity programme should therefore be formulated in shape units before applying (10).

**Scope of this route.** Homothety preserves the disk-bundle topology of each member. It does not prove that the limiting pointed metric is a complete Bryant–Salamon manifold; an expanding smooth neighbourhood may instead have a flat tangent limit. Metric completion, asymptotic geometry and spectral convergence need to be specified separately. Similarly, uniform C¹ bounds must state whether they use shape coordinates or physical distances. Finite-window approximation at the moving weak scale does not imply convergence for all observables at a fixed physical resolution.

## 6. A uniform measure of emerging quaternionic structure

Lemma 28.16 gives, for an equivariant copy of the representation 4, a radial density

\[
B(r)=F(r)^*F(r)
=\operatorname{diag}(b_a(r)I_2,b_+(r),b_-(r)).
\]

Choose the quaternionic antiunitary j commuting with Sp(2), and define the real-linear projection

\[
\mathcal P_H(A)=\tfrac12(A+jAj^{-1}).
\]

In the script's convention, t̂ = 2i GEN[6] has eigenvalues 0,0,+1,−1. Up to their ordering, tr(Bt̂) = b₊ − b₋. Put

\[
\eta_t=
\frac{\int|\operatorname{tr}(B(r)\hat t)|\,dr}
     {\int\operatorname{tr}B(r)\,dr}.
\tag{12}
\]

The half-density convention absorbs the radial volume factor into B.

**Proposition: a bound for every bounded real scalar observable.** For the normalized compression Q associated with this equivariant four-state mode,

\[
\sup_{\|f\|_\infty\le1,\ f\ \mathrm{real}}
\|Q(f)-\mathcal P_HQ(f)\|\le2\eta_t.
\tag{13}
\]

*Proof.* Normalize angular Haar measure to one. By Schur's lemma, the angular average of B is (tr B/4)I, so normalization of Q multiplies its integral by 4/∫tr B. Quaternionic conjugation interchanges b₊ and b₋, and

\[
\|B-\mathcal P_HB\|=|b_+-b_-|/2.
\]

It commutes with the angular Sp(2) action. Applying the triangle inequality inside the normalized integral gives (13). ∎

The estimate does not require cancellation or a Lipschitz assumption. If η = 2ηt bounds the defect of each compressed real function of sup norm at most one, the defect of a product of k such contractions is at most kη, by telescoping the product and its j-conjugate. A real polynomial with coefficient ℓ¹ sum C and degree at most k has defect at most Ckη. Thus bounded expressions become quaternionic when η → 0. An unrestricted generated algebra may still use coefficients growing like 1/η and retain extra directions.

This is a useful quantitative formulation of the distinction already exposed by Counterexample 28.17. It fits the use of operator systems for finite-resolution spectral truncations; see [Connes–van Suijlekom, arXiv:2004.14115](https://arxiv.org/abs/2004.14115). It does not by itself prove convergence of real spectral triples or derive their gauge action.

### 6.1 New Python calculation on the corrected radial system

The calculation fixes φ₀ = 4, ρ(x) = tanh x, φ(x) = 4 tanh(x/0.3), and uses the core problem, sign −1 and wall bc +1. It varies collar length L and computes the integral of the **absolute** fibre-breaking density. The original displayed t observable was its signed integral.

| L | Finest mesh elements | Light singular value, rounded | ηt | Bound 2ηt from (13) |
|---:|---:|---:|---:|---:|
| 2 | 3000 | 0.2880 | 4.50018 × 10⁻² | 9.00035 × 10⁻² |
| 3 | 3000 | 0.08821 | 5.70716 × 10⁻³ | 1.14143 × 10⁻² |
| 4 | 6000 | about 0.0278 | about 6.3021 × 10⁻⁴ | about 1.2604 × 10⁻³ |
| 5 | 12000 | about 0.0088 | about 6.5983 × 10⁻⁵ | about 1.3197 × 10⁻⁴ |

At all sampled mesh points the fibre trace has the same sign, so absolute and absolute-signed integrals agree numerically. The small integrated defect therefore survives the removal of possible cancellation. The absolute integrals are substantially more stable under mesh refinement than the very small singular values. The latter are especially sensitive to the finite-element floor; the script records both meshes and no continuum error certification is claimed.

The observed quotient ηt/λ² is roughly 0.54, 0.73, 0.82 and 0.85 in the finest samples. This is compatible with a quadratic tail effect over this range. It establishes neither the asymptotic power law nor a uniform gap over all representations. The second singular values returned here are only those in representation 4.

A suitable analytic target is a dimensionless estimate

\[
\eta_t\le C\left(\frac{\lambda}{\delta}\right)^2
       +\text{controlled end-model errors},
\tag{14}
\]

with δ a proved complementary spectral scale. Under the dilation (10), ηt and λ/δ are invariant. Writing an unqualified bound proportional to the square of a dimensional mass would obscure that invariance.

## 7. Making the joint path dynamical

The constructions above establish compatibility. The physical question is what selects the path when the electroweak order parameter changes.

### 7.1 A concrete target for the modulus potential

Let r = R/R* and ε = v/v* be dimensionless, and consider the *model-building ansatz*

\[
V(r,\varepsilon)=V_*\bigl(a r^{-p}+b\varepsilon^2r^q\bigr),
\qquad a,b,p,q>0.
\tag{15}
\]

**Proposition about this toy potential.** At each ε > 0 it has a unique minimum in r > 0,

\[
r_\varepsilon=
\left(\frac{ap}{bq}\right)^{1/(p+q)}
\varepsilon^{-2/(p+q)}.
\tag{16}
\]

Its second derivative in log r at that point is V*ap(p+q)r⁻ᵖ > 0. If p + q > 2, the exponent α = 2/(p+q) lies in the required range (0,1). At ε = 0 the minimum runs to infinite radius.

*Proof.* Differentiate with respect to log r and use bqε²rᑫ = apr⁻ᵖ. ∎ For p = q = 2, equation (16) gives R proportional to v⁻¹ᐟ².

This supplies a specific criterion to test in an actual reduced action: competing radius terms with the required signs and an electroweak-dependent term can select the joint limit. The repository has not derived (15). Its coefficients and powers must be calculated from the chosen spectral action, curvature, connection, flux or wall sector, with the correct four-dimensional frame. Stability in v and the other moduli must be checked as well. Adding (15) by hand would not derive the proposal from NCG.

### 7.2 The gauge normalization is part of the test

For a bulk Yang–Mills field with constant internal zero-mode profile and fixed microscopic coupling,

\[
g_4^{-2}=\operatorname{Vol}(X)/g_{11}^2.
\]

Thus simple dilation can also drive the four-dimensional coupling to zero. That possibility must be separated from the intended restoration at finite interaction strength. Gauge fields descending from metric isometries have the corresponding Killing-field overlap integrals; the displayed Yang–Mills volume formula must not be transferred to them without calculation.

For a candidate parent, calculate the kinetic matrix Kε and mass Hessian Hε for the vector fluctuations, and solve

\[
H_\varepsilon u=M^2 K_\varepsilon u.
\tag{17}
\]

For physical poles beyond the derivative expansion, use the full momentum-dependent quadratic kernel. The aim is to establish M_W,M_Z ∼ cλ/R with finite nonzero couplings and a controlled tower. The fermion tunnelling eigenvalue alone does not establish (17).

There is relevant prior work linking Higgs condensation to gauge localization: [Arai–Blaschke–Eto–Sakai, arXiv:1802.06649](https://arxiv.org/abs/1802.06649). Its Higgs-dependent gauge kinetic term is a possible ingredient. Its zero-Higgs limit can make that kinetic term degenerate, so it does not automatically provide the joint limit sought here. Another useful precedent, [Iso–Kitazawa–Suyama, arXiv:2111.06508](https://arxiv.org/abs/2111.06508), explicitly tracks KK modes becoming massless during gauge restoration in flux compactifications. That mechanism has different geometry, but illustrates why the discarded modes must be followed.

## 8. Suggested next note and calculations

A suitable working title is **Finite NCG windows and the massless electroweak limit of seven-dimensional parents**.

The central claim should be a family of operators, compression maps and actions with the hierarchy (2)–(4). The following sequence gives concrete, reviewable intermediate results:

1. **Publish the joint-limit proposition.** Use the exact interval as a proved prototype, then the seven-dimensional cylinder as an operator-level realization. State which algebra, real-structure and action data are inputs.
2. **Complete the shape-unit estimate for X.** Prove the core and collar reductions and global complementary coercivity, beginning with the line-preserving collar already identified in the repository. Keep errors uniform in the parameters that will subsequently vary.
3. **Prove a quantitative compression estimate.** Include the absolute-density bound (13) and seek the dimensionless quadratic estimate (14). Track the finite observables and controlled polynomial expressions, alongside the exact generated algebra.
4. **Construct the real bimodule and its connector in seven dimensions.** Preserve the Weyl exponent, identify the additional quaternionic grading, and explain how chirality is inherited.
5. **Compute the action in both the electroweak and radius variables.** Determine whether its vacuum branch has R(v) → ∞, whether the physical gauge couplings stay finite, and whether the full vector poles follow the tunnelling scale.
6. **Refresh the distribution.** Include the new status table, scripts and convergence data; repair the supplement layout and expose the d = 11 route on the landing page.

The first and part of the third items can be written now with the proofs above. Items two, four and five are research tasks. The isometry group is then examined as part of the resulting geometry and gauge realization; it need not be imposed as a prior filter that removes X.

## Appendix A. The M¹¹¹ comparison retained in scope

The Witten family has homogeneous presentation

\[
M^{pqr}=\frac{SU(3)\times SU(2)\times U(1)}
{SU(2)\times U(1)'\times U(1)''},\qquad\dim=7.
\]

M¹¹¹ has the relevant isometry Lie algebra and a detailed KK harmonic analysis. The conventional supergravity setting is AdS₄×M¹¹¹, and its geometric U(1) is an R-symmetry. Identification with hypercharge and a chosen spacetime vacuum requires further structure. Reference: [Fabbri–Fré–Gualtieri–Termonia, hep-th/9903036](https://arxiv.org/abs/hep-th/9903036).

Its circle bundle over B = CP²×CP¹ has c₁ = 3h + 2u, up to orientation. Since TB has w₂ = h mod 2 and the pullback of the circle bundle's Chern class vanishes, the total space is spin. The base description requires Spin-c and charge data. Reference for the fibration and holomorphic sectors: [Fabbri et al., hep-th/9907219](https://arxiv.org/abs/hep-th/9907219).

The first positive holomorphic Fourier sector is H⁰(B,O(3,2)), of dimension 10·3 = 30, transforming as Sym³(C³)* ⊗ Sym²(C²)*. Toeplitz compression of moment maps generates the irreducible matrix algebras on the two factors, hence the complex algebra M₃₀(C). This finite correspondence has not been shown to be a light window of the relevant seven-dimensional Dirac operator. A fixed circle-charge sector also acts by a scalar phase on its states, so its conjugation action on this one matrix algebra is trivial. The hypercharge question therefore belongs to the charged module and gauge lift.

These calculations make M¹¹¹ a useful comparison for geometric symmetry becoming a finite action. No W,Z → 0 family linking it to the desired finite NCG has yet been constructed in this audit.

## Appendix B. Reproduction and limits of verification

The bundle contains `conneskk_joint_limit_checks.py`, `conneskk_joint_limit_results.json`, the exact audited `lemma28_radial.py`, a SHA-256 manifest, and a README with commands. NumPy and SciPy are required. Run the assertions of the bundled solver, then the audit script; this needs no network access. Alternatively, supply a checkout at b2ddf98 using `--repo`. The script checks the solver hash in both modes and the commit when a checkout is supplied.

Completed in this review:

- all current radial solver assertions;
- exact interval secular roots, scale separation, tail identity and compression bound;
- vector-pole evaluation in the specified boundary-angle toy;
- two meshes at each of four disk-bundle collar lengths, including absolute density and its core contribution;
- recheck of the embedding formula at both audited revisions;
- PDF overflow scan and source checks for the supplement and docs.

The earlier finite 64×64 product calculation and the small-mass effective-dimension coefficient check remain consistent with the unchanged formulas. They are not an independent verification of the whole programme. No global representation bound, physical vacuum, full SM real correspondence or eleven-dimensional solution of field equations is claimed here. The proposed additions above include exact elementary consequences, conditional constructions and explicitly labelled numerical evidence; external priority or independent refereeing of those additions has not been established.
