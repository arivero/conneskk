# Referee report on the main draft and the note

By Terra 6.1 (gpt-6.1-terra, effort max), 3 Nov 2026; prompt in [../lemmas/prompts/terra_check_paper_note.md](../prompts/terra_check_paper_note.md). Reproduced as delivered, with links relativized. The corrections are incorporated in [the paper](../../paper/towerless_intervals.tex), [the note](../../paper/chiral_limit_note.tex) and lemmas 17 and 18.

The main draft contains useful exact calculations, but it needs substantial revision before it is ready for a Physical Review journal. The most consequential issues are the identification of the formal KO labels with geometric endpoints, the claim that collapse with a fixed light mass requires a tuned bulk mass, and several statements whose scope changes between the theorems, Table I, the abstract, and the discussion.

The note preserves the corrected reduced-mass formula and the sign of \(j_-\). Its main mathematical defect is that the stated condition on the condensate subtraction does not suffice for the claimed \(O(m)\) remainder.

The numbered verdicts below count distinct statements, including separate occurrences in Table I and the abstract. We read the LaTeX sources as text and did not compile or edit any file. The underlying lemmas were consulted for the relevant statements and hypotheses; their proofs were not re-refereed in full.

## Part 1. Main draft

### Chirality at the odd labels

The paragraph is at [towerless_intervals.tex:184](../../paper/towerless_intervals.tex).

**1. Classical objection — Correct with amendment.** An irreducible spinor representation in odd spacetime dimension has no intrinsic Weyl decomposition: the Clifford volume element is central, so there is no nontrivial chirality operator that anticommutes with every Clifford generator. In the usual smooth, closed, product compactification of an odd-dimensional bulk, the standard fermion reduction therefore has a vectorlike four-dimensional content.

State the compactification and fermion assumptions. Odd-dimensional bulk theories can have chiral modes localized on defects or boundaries, and “no chiral fermions” should not be read as excluding all localized modes. The full text of the cited Witten 1981 article was inaccessible in this review; its precise attribution remains unchecked. The mathematical amendment above follows directly from the Clifford representation.

**2. Full chiral algebra — Correct with amendment.** For the *specified Standard Model representation* of \(\mathbb C\oplus\mathbb H\oplus M_3(\mathbb C)\), neither proposed odd factorization exists. Let \(e_{\mathbb H}=(0,1_{\mathbb H},0)\). Its represented range lies in one grading sector and has no counterpart in the other. A grading-reversing \(U\) commuting with the algebra would have to identify those two ranges. This is the argument in [lemma 06, Result 8](../../lemmas/06_vectorlike_odd_factorization.md).

The conclusion depends on the representation, not on the abstract algebra alone. Name the Standard Model bimodule in the sentence.

**3. Label 9 and the absence of needed chiral fermions — Correct with amendment.** The charged surviving sectors are vectorlike under the reduced \(SU(3)\times U(1)_{\rm em}\) representation and each admits the \(s=-1\) factorization. This establishes a sectorwise formal label 9.

It does not give that factorization for the strict *whole* light spectrum with one or three unpaired neutrinos. A neutral Weyl fermion has a real gauge representation but remains a chiral spacetime fermion; it may be expressed in Majorana form. State explicitly whether the neutral sector is removed, paired, or treated separately.

**4. Neutral representation and parity — Correct.** The neutral gauge representation is real in the reduced model. If the descended antiunitary \(j\) obeys \(j^2=-1\), its complex representation space has even dimension. Indeed, writing \(j=UK\) gives
\[
|\det U|^2=\det(-1)=(-1)^{\dim_{\mathbb C}H_0}.
\]
For a Majorana block the stronger condition is even multiplicity of **each** singular value, including zero, because \(j\) commutes with \(d^2\). Odd total multiplicity is one obstruction.

**5. Spectrum at fixed distance from a wall — Error.** At fixed \(\mu>0\), the normalized left-wall profile tends to
\[
\sqrt{2\mu}\,e^{-\mu y}.
\]
It is nonzero at every fixed finite distance \(y\) from the wall. Thus a region at fixed distance from a wall still sees the chiral wall mode, even though its amplitude is exponentially small when \(\mu y\) is large.

The gapped bulk statement applies when the observation region recedes from **both** walls as \(l\to\infty\). In that limit the translation-invariant bulk Dirac operator has spectral threshold \(\mu\), while the two half-line limits retain the chiral zero modes.

**6. Assignment of the wall limit to label 11 — Gap.** The wall-mode limit and the KO-7 factorization are established separately. The text does not construct an identification that assigns KO label 11 to the decompactifying interval. The interval product in Theorem D also has a stated KO-5 factorization. Present the label-to-endpoint connection as an interpretation, or give the missing compatibility and limiting construction.

**7. Hořava–Witten comparison — Correct with amendment.** Boundary chirality is a fair qualitative comparison. With a common orientation and common identification of the ten-dimensional tangent spaces, the two Hořava–Witten boundary gaugino sectors have the same ten-dimensional chirality. In the interval model here, the two limiting modes of one type-(c) fermion have opposite \(\Gamma\)-chirality. Boundary-induced orientations reverse between the two ends, so the chirality convention must be stated.

The constructions also have different content: Hořava–Witten has an \(E_8\) vector multiplet on each boundary and anomaly cancellation involving the bulk, whereas the interval calculation follows two modes of a bulk Dirac operator. The comparison should identify that common feature and those limits. See [Hořava and Witten, hep-th/9603142, §§1–2](https://arxiv.org/html/hep-th/9603142) and their [preceding orbifold paper, §2](https://arxiv.org/html/hep-th/9510209).

**8. Physical point at finite \(l\) in an even interior — Gap.** The results do not relate \(l\) quantitatively to the measured Fermi constant or weak angle, nor do they identify the physical Standard Model point with a member of this interval family. State this as a proposed interpretation. The finite KO-6 structure does accommodate chirality; its identification with a measured finite-\(l\) point remains to be shown.

### Labels by sector

**9. Charged paired sectors — Correct.** In the reduced representation, each charged species and its conjugate form an invariant sector for the represented algebra, its opposite, \(D\), and \(J\). The displayed paired-sector construction admits both signs, including with flavour mixing within a species.

**10. One or three unpaired neutrinos — Correct with amendment.** With the stated zero Majorana block and reduced algebra, the strict light triple admits \(s=+1\) and excludes \(s=-1\). Add that the neutral \(s=+1\) involution does **not** preserve particle number. If particle preservation is imposed on the strict unpaired spectrum, neither proposed reduction is available; see [lemma 06](../../lemmas/06_vectorlike_odd_factorization.md).

**11. Right-handed neutrinos with pure Dirac masses — Correct.** Retaining the Dirac partners gives paired singular values in the neutral block, so both signs occur under the stated reduced representation.

**12. Majorana masses — Correct with amendment.** A Majorana term breaks the particle-number hypothesis used to pair \(U\) and \(QU\). Generic nondegenerate neutral Majorana data obstruct \(s=-1\), while \(s=+1\) remains available under the scalar-character assumptions. State the exact criterion: \(s=-1\) exists precisely when every neutral-block singular value has even multiplicity. A nonzero Majorana term alone does not exclude it in several generations.

### Weighted sum rule and cutoff limit

The claims are at [towerless_intervals.tex:202](../../paper/towerless_intervals.tex) and [towerless_intervals.tex:228](../../paper/towerless_intervals.tex); their source is [lemma 18, Remark 16](../../lemmas/18_heavy_limit_near_cutoff.md).

**13. Weighted identity — Correct with amendment.** The identity
\[
8\kappa M_{W,\mathrm{Taylor}}^2
 =\sum_f N_fm_f^2\,\rho(m_f^2/\Lambda^2),
\qquad
\rho(x)=\frac{2[1-(1+x)e^{-x}]}{x^2},
\]
follows from the displayed kernel for the heat cutoff \(f(z)=e^{-z}\). Its scope is the specified finite collection of doublets, each massive doublet having one massive Dirac member and one massless member, with the trace weights and mass-compatible doublet decomposition used in Proposition 13 of lemma 18. The mass is the **Taylor ratio** \(C_W(0)/C'_W(0)\), not the exact pole mass.

Also define the trace on \(\mathbb R^4\) through a relative heat trace or action density: the unsubtracted vacuum heat trace has infinite volume.

**14. Definition of \(\kappa\) — Correct with amendment.** In the three-generation normalization, write
\[
\kappa=\frac{P+\sum_i d_iw(x_i)}{6},\qquad
N_i=2d_i,\qquad
w(x)=3\int_0^1u^2e^{-xu}\,du,
\]
where \(P\) is the particle-trace weight of complete massless doublets and \(P+\sum_i d_i=6\). Thus \(\kappa\) is the charged Taylor kinetic coefficient divided by its all-massless value. For the top alone, \(P=9/2\), \(d_t=3/2\), giving \((3+w)/4\).

“Normalization of the kinetic term” without these weights does not define \(\kappa\) for the displayed general sum.

**15. Small-mass form — Correct with amendment.** If **all** \(x_i=m_i^2/\Lambda^2\to0\), then \(\rho(x_i)\to1\) and \(\kappa\to1\), giving the CCM relation to leading order. This proves the stated relation for the heat-cutoff Taylor calculation. The CCM asymptotic formula also has its own cutoff and trace conventions; the displayed \(\rho\) is not a general-cutoff form factor.

**16. Five-percent departure — Correct.** For the top alone,
\[
\frac{M_W^2/m^2}{3/8}=\frac{\rho(x)}{\kappa(x)}.
\]
The expansions
\[
\rho(x)=1-\frac23x+\frac14x^2+O(x^3),\qquad
w(x)=1-\frac34x+\frac3{10}x^2+O(x^3)
\]
give a departure of about \(5\%\) in \(m/M_W\) at \(x=0.45^2\).

**17. Peak — Correct.** The stated peak is supported by the formula. For an analytic uniqueness check, set
\[
B=1-(1+x)e^{-x},\qquad
D=x^3+2-(x^2+2x+2)e^{-x}.
\]
Apart from a positive factor, the derivative has the sign of
\[
T(x)=4-x^3+(x^5+x^4-8x-8)e^{-x}
 +(x^3+4x^2+8x+4)e^{-2x}.
\]
The power series of \(e^{2x}T(x)\) has positive coefficients at degrees 5, 6 and 7, and negative coefficients at every degree at least 8. Dividing by \(x^7\) therefore gives a strictly decreasing function on \(x>0\), with one zero. The Taylor mass has one positive maximum and falls thereafter.

One small **Python 3** computation solved this derivative equation and evaluated the stated mass formula. It gave \(x=2.02428\), \(m/\Lambda=1.42277\), and \(M_W/\Lambda=0.52422\). The computation tests the location; the sign argument gives uniqueness.

**18. Heavy suppression — Correct with amendment.** A massive diagonal contribution to the unperturbed heat trace is exponentially suppressed. In a mixed massive–massless contribution, the form factor instead has the algebraic behavior
\[
\rho(x)\sim 2/x^2.
\]
The corresponding mass-source contribution behaves as \(m^2\rho(m^2/\Lambda^2)\sim2\Lambda^4/m^2\). State which trace contribution is exponentially suppressed so that the sentence does not suggest exponential suppression of the mixed loop.

**19. Necessity of \(\Lambda\) growing faster than \(m_t\) — Correct with amendment.** It is an exact necessity for the **top-only heat-cutoff Taylor family** if the limit requires \(m_t/M_W\to\sqrt{8/3}\). To see this, use
\[
\rho(x)=2\int_0^1u e^{-xu}\,du,\qquad
w(x)=3\int_0^1u^2e^{-xu}\,du.
\]
The function \(3+w-4\rho\) vanishes at zero and has derivative
\(\int_0^1u^2(8-3u)e^{-xu}\,du>0\). Hence the exact top-only ratio differs from its CCM value for every \(x>0\); it approaches that value only if \(x\to0\).

The necessity is broader than the calculation if stated without the top-only and cutoff hypotheses. For example, retain one complete massless lepton doublet and give one member of each other doublet the common mass \(m\). Then \(\kappa=(1+11w)/12\). Near zero, \(\rho-\kappa=x/48+O(x^2)>0\), while at infinity it tends to \(-1/12\). Continuity gives a positive \(x_*\) at which the full weighted identity equals the unweighted CCM sum exactly. Scaling \(m=\sqrt{x_*}\Lambda\) preserves that equality with a nonzero \(m/\Lambda\). This is a different mass family.

### Generated algebra and the cited remark

**20. Bicommutant — Correct with amendment.** For a unital complex representation on the finite-dimensional \(V\),
\[
C^*(Q(A_0))=Q(A_0)''
\]
by the finite-dimensional bicommutant theorem. State that the commutants are taken in \(\operatorname{End}_{\mathbb C}(V)\), and retain the unital or nondegenerate-representation hypothesis. The quaternionic real algebra in item 4 needs a separate real-algebra statement.

**21. Attribution to Connes and van Suijlekom — Correct.** Their introduction says that in many interesting examples the \(C^*\)-algebra generated by \(PAP\) is a “non-informative full matrix algebra.” The draft preserves both the scope and the substance of the observation. Their paper also emphasizes the information retained by the operator system itself. [Connes and van Suijlekom, arXiv:2004.14115v2, Introduction](https://arxiv.org/html/2004.14115).

**22. Interval block structure — Correct with amendment.** The grading commutes with every compressed function, so it forces the generated algebra to be block diagonal. The explicit interval compressions then show that it fills both blocks, giving \(M_2(\mathbb C)\oplus M_2(\mathbb C)\).

The grading alone gives containment in that block algebra; it does not prove equality. The two matrices displayed in the main proof sketch lie in different blocks and commute, so those two examples alone do not generate both full blocks. Add the independent symmetric matrices within each block and the argument separating the two summands; [lemma 16, example (b)](../../lemmas/16_coarse_truncation.md) supplies it.

**23. Quaternionic form on \(S^4\) — Correct with amendment.** For **real functions**, the compressed operators commute with the antiunitary \(j\), \(j^2=-1\), and generate the real algebra \(M_2(\mathbb H)\). The five compressed coordinate matrices provide the generators. The complex \(C^*\)-algebra generated by the same coordinates is \(M_4(\mathbb C)\).

Thus \(j\) identifies a quaternionic real form; it is an antiunitary symmetry and is not an element of the ordinary complex-linear commutant in item 1. State the real-versus-complex distinction at [towerless_intervals.tex:296](../../paper/towerless_intervals.tex), not only earlier in item 4.

### Reading the negative results

The directions in [towerless_intervals.tex:306](../../paper/towerless_intervals.tex) are reasonable research directions when kept within their stated scope.

**24. Odd-dimensional chirality \(\to\) boundaries and an even interior — Correct with amendment.** Boundaries are one way to obtain localized chiral modes. The claimed even interior is an additional proposal; singularities, defects and other changes of hypotheses are also possible directions.

**25. Bare interval limits \(\to\) bulk mass — Correct with amendment.** A negative bulk mass with the stated localization supplies a light pair. The boundary-Yukawa family supplies another route; see check 34.

**26. Fixed-compression covariance failure \(\to\) covariant projection — Correct.** Projecting onto a gauge-transformed spectral subspace addresses the demonstrated covariance defect. Further matching of actions remains a separate question.

**27. Bounded-fermion collapse \(\to\) tower-scale fermion or changed action/order — Correct with amendment.** This follows for the leading spectral action, specified trace, common profile setting, and tower matching considered in Proposition F. It is a useful direction beyond those assumptions, not a general theorem about every gauge action.

**28. Inherited order-zero failure \(\to\) doubled parent — Correct.** The tensor-square parent supplies commuting left and opposite actions and thereby gives a constructive route. The two-sheet and grading inputs remain explicit.

**29. Fixed-cutoff behavior \(\to\) joint cutoff limit — Correct with amendment.** The joint limit is a valid route in the top-only family. At fixed cutoff the lemma also contains fully massive families with diverging pole locations, so the direction must retain the mass-family and mass-definition hypotheses.

**30. No finite radial vacuum \(\to\) a potential or constraint — Correct.** Adding a specified radial potential or imposing a constraint could alter the radial stationarity problem. Neither follows from the spectral action already analyzed.

**31. Commutative whole limits \(\to\) truncation — Correct with amendment.** Compression followed by algebra generation is a constructive way to obtain noncommutative finite data. The commutative-limit statement concerns the specified spectral propinquity and whole scalar algebras; it does not rule out other notions of convergence or other parent algebras.

### Table I

The table begins at [towerless_intervals.tex:46](../../paper/towerless_intervals.tex).

| Check | Entry and verdict | Amendment |
|---|---|---|
| **32** | Two-point space — **Correct.** | The stated mass and minimal truncation are the content of Theorem A. |
| **33** | 10 to 11 — **Correct with amendment.** | Say “in the type-(c) family, at fixed \(\mu>0\).” The KO-label identification remains the gap in check 6. |
| **34** | 10 to 9 — **Error.** | A tuned bulk mass is necessary for the stated one-field type-(c) family, not for every interval collapse. In Theorem C’s one-flavour model take zero bulk masses and \(X(l)=\tan(ml)\). The light eigenvalue is exactly \(\arctan|X|/l=m\) for small \(l\), and the higher levels diverge. |
| **35** | Yukawa block — **Correct with amendment.** | Replace “\(D_F\) is the towerless limit” by “the displayed Dirac Yukawa block of \(D_F\) is obtained in the boundary-Yukawa limit.” The full finite algebra, Majorana block and real triple are not derived there. |
| **36** | 9 and 11 — **Correct with amendment.** | Specify the reduced representation and the particle-number caveat in check 10. The full chiral algebra admits neither proposed factorization. |
| **37** | Heavy \(W\) — **Correct with amendment.** | The weighted formula is for the heat cutoff and Taylor mass with the stated doublets. The top/W limit needs top dominance in the CCM expansion. |
| **38** | \(W\) against the tower — **Correct with amendment.** | State the leading action, trace, gauge-boundary input and common-profile matching assumptions. |
| **39** | Chirality — **Gap.** | The table promotes the proposed assignment of the two odd labels to limits and of the physical point to an even interior into a result. Supply the identification or label it as an interpretation. |
| **40** | Finite algebra — **Correct with amendment.** | Distinguish the complex generated algebra from the real quaternionic form, and retain the two sheets, restricted algebra and added grading as inputs. |

### Abstract

**41. Collapse and boundary Yukawa data — Error.** The abstract repeats the unrestricted “only along a tuned bulk mass” claim and makes the boundary-Yukawa result sound like the continuation of that same tuned family. The counterexample in check 34 applies. State the two different constructions and their scalings separately.

**42. KO labels and weighted mass relation — Correct with amendment.** State that the charged and neutral factorizations use the reduced representation, and identify the heat cutoff and Taylor mass for the weighted sum. The complete chiral Standard Model algebra has neither factorization.

**43. Whole-triple limit and two-sheet parent — Correct with amendment.** “Whole triples converge … only to points” needs restriction to the finite limits of the connected commutative metric triples considered in Proposition G. The two-sheet construction reproduces the specified algebraic data with the listed inputs; it does not derive a connected parent or the full finite Dirac operator.

### Discussion, literature, and one additional main-text statement

**44. Masses as momenta combined in quadrature — Error.** The discussion at [towerless_intervals.tex:302](../../paper/towerless_intervals.tex) applies the real-momentum formula to the localized light mode. For that mode \(k=i\kappa_0\), and
\[
\lambda_0^2=\mu^2-\kappa_0^2.
\]
The formula \(\lambda_n^2=\mu^2+k_n^2\) with real \(k_n\) applies to the excited tower.

**45. Localization alone determines the texture — Error.** At [towerless_intervals.tex:149](../../paper/towerless_intervals.tex), order-one **entries** of \(\hat Y\) do not by themselves give the stated individual mass pattern. Let
\[
F=G=\operatorname{diag}(\varepsilon,1),\qquad
\hat Y=\begin{pmatrix}1&1\\1&1+\eta\end{pmatrix}.
\]
All entries are order one and the trailing minors are nonzero for \(\eta>0\), but
\(\det(F\hat YG)=\varepsilon^2\eta\). The small singular value carries the additional arbitrarily small factor \(\eta\). Require quantitative lower bounds on the relevant minors, as well as the stated profile hierarchy, or present the formula as a generic numerical expectation.

**46. Index and open problems — Correct with amendment.** The ordinary index is stable under the boundary coupling in the stated family. The equivariant statement is made for the stabilizer of \(X\): symmetry breaking changes the group on which the representation-valued index is read. The discussion should distinguish those statements and retain its explicit qualifications on the parent, grading, dynamics and action.

**47. Claims about what was not found — Gap.** The statements about the chiral-interval compression, tuned collapse, localization-derived Yukawa block and factorization criterion may be accurate, but the draft does not say which databases, years, synonyms, or citation chains were searched. We cannot infer a comprehensive absence from the text.

The source check here was limited. Queries included `"noncommutative geometry" "interval" "spectral truncation" two point chiral 2026`, a localization/Yukawa query, and an odd/even real-triple factorization query. We opened the relevant sections of the sources cited in checks 7, 21, 48 and 49. Forward and backward citation chains and author recency searches were not completed, and the full texts of Witten 1981 and Banks–Casher 1980 were unavailable. Consequently this review does not establish priority or absence in the literature.

A relevant recent neighboring paper is [Baptista, arXiv:2506.09126v2, §§1 and 5](https://arxiv.org/html/2506.09126): it studies chiral couplings to massive gauge fields in smooth Kaluza–Klein models. Its examples use even-dimensional internal spaces; it does not refute the odd-dimensional Clifford statement. It is relevant to the broader discussion of routes to chiral interactions.

**48. Positive attributions checked — Correct.** [Csáki et al., hep-ph/0310355v1, Eq. (5.6)](https://arxiv.org/html/hep-ph/0310355) give \(\tan(m_nL)=M_DL\), yielding the one-flavour arctangent spectrum after identifying the boundary parameter. [Chamseddine and Connes, arXiv:0706.3688v1, Remark 2.9](https://arxiv.org/html/0706.3688), give the two Hom-space bimodule and flip real structure cited in the draft. Check 21 establishes the Connes–van Suijlekom attribution.

**49. Farsi–Latrémolière theorem — Correct with amendment.** The issue is visible in [arXiv:2404.00240v3, Theorem 3.4 and Eq. (3.11)](https://arxiv.org/html/2404.00240). The proof’s displayed estimate requires control of the vertical operator by the total rescaled operator. A scalar example shows the need for an additional condition: on \(e_n\), take \(D_ve_n=ne_n\), \(D_he_n=-n^2e_n\), and \(\epsilon_n=(n+1/n)^{-1}\). Then \(D_{\epsilon_n}e_n=e_n\) although the proposed limit on \(\ker D_v\) has spectrum \(\{0\}\).

Anticommutation or a suitable relative bound are **sufficient repairs**, rather than the only conceivable repairs. Identify the checked preprint version; the published text was not examined here.

**50. Proposition G converse — Error.** The statement at [towerless_intervals.tex:263](../../paper/towerless_intervals.tex) uses the previously arbitrary unitary \(W_n\) in an “if and only if.” Take the constant triple
\[
T_n=T_F=(\mathbb C,\mathbb C^2,\operatorname{diag}(1,2)),
\]
with \(P=1\), and let every \(W_n\) swap the two basis vectors. The spectral propinquity is zero, while
\(\Delta_n=\|\operatorname{diag}(2,1)-\operatorname{diag}(1,2)\|=1\).

The converse needs **there exist** appropriate light spectral projections and unitaries \(W_n\) for which \(\Delta_n\to0\), with \(g_n\) chosen as the actual exterior gap or a lower bound tending to infinity. This is the quantifier stated in [lemma 15, Theorem 15.7](../../lemmas/15_propinquity_collapse.md).

## Part 2. Note compared with the corrected lemma

We compared [chiral_limit_note.tex](../../paper/chiral_limit_note.tex) against [lemma 17](../../lemmas/17_explicit_masses_chiral_limit.md) and its [referee report](2026-11-03_terra_check_17.md).

**51. Sign of \(j_-\) — Correct.** With the standard Pauli matrix,
\[
i\sigma_2=
\begin{pmatrix}0&1\\-1&0\end{pmatrix}.
\]
The note’s \(j_-=i\sigma_2K\) is exactly the matrix in lemma 17. There is no sign discrepancy.

**52. Reduced mass — Correct.** In the note’s basis \(H_0=(q_L,\bar q_R)\),
\[
d_{\Sigma,s}
 =(\Sigma M^*\otimes1_3)\oplus
   (s\,\overline{\Sigma^*M}\otimes1_3).
\]
On \(q_L\), \(UD_F\) gives \(\Sigma M^*\). On \(\bar q_R\), the antiparticle block of \(U\) contributes the factor \(s\), yielding \(s\overline{\Sigma^*M}\). This agrees with the corrected lemma and report.

**53. Reduced action and trace — Correct.** The theorem retains the trace-class hypothesis, the sign-dependent real structure, the change of independent Grassmann variables in the paired sector, and the warning that the formal chiral rotation has a quantum Jacobian. The Majorana-type unpaired example prevents the Dirac conclusion from being applied to every sector.

**54. Commuting subalgebra — Correct with amendment.** The note states the no-scalar-fluctuation proposition and the restriction needed before calling the fields photon and gluons. Add the surviving electron pair to the explicit representation check, and state that the conclusion concerns the kept mass blocks and admissible involution. The first paragraph of the abstract should keep the same restriction.

**55. Electric charge and flavour — Correct with amendment.** The \(U(1)^4\) statement needs **two differently charged flavours**, such as \(u,d\). Two flavours of the same electric charge retain a larger flavour symmetry. The note also omits the corrected lemma’s corresponding statement for admissible reductions: with charge included, intersect the colour-only admissible set with the charge commutant **and retain** \(\Sigma^*M=(\Sigma^*M)^*\). At zero mass for \(u,d\) this leaves diagonal phases; positive nonzero diagonal masses leave signs.

**56. Stationarity, reduced mass and polar part — Correct.** The condition \(\Sigma^*M\) Hermitian is equivalent to stationarity of \(-\operatorname{Re}\operatorname{tr}(M\Sigma^*)\). The homogeneous-space statement at \(M=0\), the Hermitian involutions for \(M=mI>0\), and the unique polar minimum for invertible \(M\) agree with the corrected lemma. “Sign matrices” for positive distinct masses are to be read in a mass eigenbasis.

**57. Vacuum alignment and mass signs — Correct.** The note says that the stationary points include saddles and maxima, that no physical alignment energy or map to a condensate has been supplied, and that changing a reduction differs from a physical mass-sign change at fixed measure. These preserve the corrections to Remark 17.7.

**58. Spacetime-dependent reduction — Correct with amendment.** The displayed reduced operator and the statement that it is generally non-self-adjoint agree with Proposition 17.10. The kinetic term belongs to the separately chosen operator \(D_M+\gamma_5d_\Sigma(x)\), with the coefficient tracing both reduced blocks; it vanishes at \(M=0\). State these normalizations beside the formula and emphasize that this does not construct the massless pion effective action.

**59. Fixed-background condensate expansion — Error.** “A subtraction regular at \(m=0\)” does not alone imply
\(c_V=n_0/(Vm)+O(m)\). For a finite pair-preserving spectral cutoff, subtracting a nonzero constant \(C\) is regular at zero and gives
\[
c_V^{\rm reg}(m;A)=\frac{n_0}{Vm}-C+O(m).
\]
Require a compatible subtraction whose finite remainder vanishes at zero with \(O(m)\), for example an odd analytic subtraction in \(m\), together with the spectral pairing. This issue is also present in the corresponding wording of the corrected lemma.

**60. Banks–Casher form and determinant — Correct with amendment.** The note retains the added assumptions \(\rho_m(0)\to\rho_0(0)\), equicontinuity, tail and subtraction control, and the order of limits. Add \(m>0\), state the spectral-density and condensate normalization, and specify a regulator compatible with the \(\pm\lambda\) pairing. The positive determinant formula is for \(-iD_M+m\), as written.

The original Banks–Casher full text was inaccessible here, so the precise hypotheses should remain explicitly those of the note rather than be attributed to that paper.

**61. Interval routes — Correct with amendment.** For the localized branch state \(\mu>0\), \(\mu l>1\), and define \(\kappa_0>0\) by
\[
\tanh(\kappa_0l)=\kappa_0/\mu.
\]
The asymptotic \(m\sim2\mu e^{-\mu l}\) is for \(\mu l\to\infty\), and the absolute limit quoted in the note follows at fixed \(\mu\). The boundary-Yukawa operator is a distinct construction from the scalar-algebra tensor-product truncation; the corrected lemma explicitly warns that identifying them at finite \(l\) needs proof. The note should retain that warning.

**62. Fixed-background continuity and quantum input — Correct with amendment.** The operator \(D_M+\gamma_5m\) and its square vary continuously with \(m\). The regularized condensate itself need not have a finite limit at fixed background: a zero mode gives \(n_0/(Vm)\). Specify the object whose continuity is asserted. The measure, volume sequence and order of limits remain additional inputs.

**63. Provenance — Correct with amendment.** The note says the identities were checked with Python on finite models. The recorded numerical checks in lemma 17 cover particular identities and examples, not every claim in the note. Name those checked identities. The earlier report also records four amendments in addition to five erroneous items; “corrected five items” should not be read as the whole scope of that report.

## Part 3. Readiness for a Physical Review journal

We recommend substantial revision before submission.

1. **Separate the mathematical results from the endpoint proposal.** The introduction moves from formal KO signs to “10 to 9” and “10 to 11” limits before a map from those signs to the interval geometries or measured weak parameters has been constructed. Give the physical hypothesis, the exact results, and the unresolved identification in that order.

2. **Repair the cross-surface overclaims.** Correct the collapse statement in Table I and the abstract, the localized-mode mass formula in the discussion, the flavour-texture claim, the propinquity converse, and the condensate subtraction. State heat-cutoff and Taylor-mass scope wherever the weighted rule is summarized.

3. **Make the proof sketches show the decisive steps.** Theorem B’s sketch omits the index and wall/Weyl arguments; Theorem C invokes concavity and compound matrices without defining the quantities that make the bounds work; Proposition H’s displayed matrices do not alone establish the generated algebra. Proposition G needs its existential matching unitary stated in the theorem itself. The supplemental references are useful, but a reader should be able to see why each main-text conclusion follows.

4. **Define the notation needed to read the results.** In particular, define \(\Phi_Q,\Phi_U\), the threshold quantities, and the symbols \(f_{T_p},g_{T_p},D_p,K_p,\epsilon_p^{F,G}\) in Theorem C. Define \(\kappa\) by its trace weights, distinguish \(M_{W,\mathrm{Taylor}}\) from a pole mass, and state the relative-trace or density convention on \(\mathbb R^4\).

5. **State the status of the literature comparison.** Give a reproducible, appropriately scoped account of the searches behind the “we did not find” statements. Keep the established interval, domain-wall, truncation and spectral-propinquity ingredients visibly distinct from the proposed combination and from the still-open physical construction.

## Amendments and errors

- **Chirality and labels:** scope the odd-dimensional objection, the Standard Model representation, the neutral parity criterion, particle preservation, and the Hořava–Witten comparison as in checks 1–3, 7, 10 and 12. The finite-\(l\) physical interpretation and the assignment of label 11 remain gaps.
- **Wall and collapse limits:** replace the fixed-distance bulk claim and the unrestricted tuned-bulk claim as in checks 5, 34 and 41. Keep the type-(c) localization and boundary-Yukawa scalings separate.
- **Spectral action:** define the heat cutoff, Taylor mass, trace weights and \(\kappa\); restrict the asserted necessity of \(m_t/\Lambda\to0\) to the family proved in check 19.
- **Algebras and limits:** distinguish complex bicommutants from quaternionic real forms, expand the interval generation argument, and insert the existential unitary in Proposition G.
- **Discussion and note:** correct the localized-mode momentum formula, add minor bounds to the texture claim, require an \(O(m)\)-compatible condensate subtraction, and restore the interval-branch, charge, normalization and provenance qualifications in checks 54–63.

Overall: 63 statements checked: 16 correct, 36 correct with amendment, 4 gaps, and 7 errors.