Referee: GPT-6.1 Terra (effort max), 5 November 2026, second reading of lemma 29 after the applied first report; brief by Claude Fable 5.1 in historical/prompts/terra_check_29_second_reading.md. The two scripts named in the brief had been removed by the rule that checking scripts are not kept, so the referee ran no Python.

The corrected case (b) has a credible spectral argument, and the core–wall channel assignment is consistent. The text nevertheless contains an error in the IMS justification and states the window theorem with an incorrect range for \(\delta\). The latter has an immediate counterexample at \(\delta=0\). The principal estimates admit the repairs described below; no counterexample to the corrected theorem with \(0<\delta<\sqrt3\) was found.

For case (a), the corrected overlap factor, Schur-complement structure and fibre sign are consistent with the finite matrix in Proposition 28.13. The live text does not derive that matrix from the geometric data, so its use remains a source-level proof obligation for a stand-alone paper.

No Python was run. The two named scripts were absent from `tools/` in the inspected workspace, so the recorded numerical tables and matrix assertions were not independently reproduced.

## 1. Case (b): Theorem 29.7 and its chain

**Hypotheses and conclusion — ERROR as stated.** Let \(X\) be the disc bundle over \(S^4=Sp(2)/(Sp(1)_a\times Sp(1)_b)\), with boundary \(\mathbb{CP}^3\), \(E=S^3(S)\), and
\[
T_M=D_X^E+i\varepsilon M f(r)\,n\!\cdot\!J.
\]
The metric is the connection metric
\[
dr^2+\pi^*g_{S^4}+\rho(r)^2g_{S^2},
\]
with unit-radius \(S^4\), \(\rho=r\) near the zero section and \(\rho=1\) on a product collar. The mass profile is \(f=r\) near the zero section, positive elsewhere, and a positive constant \(f_0\) on the collar. The connection is the pull-back connection near the core, preserves the four mass-eigenline summands on the collar, and has an invariant interpolation between them. Finally, \(\varepsilon=-\gamma_b\), and the doubled operator has \(Zu=-u\) for the \(T_M\) domain and \(Zv=+v\) for the \(T_M^*\) domain.

The intended conclusion is: **for each fixed \(0<\delta<\sqrt3\), there is \(M_\delta\) such that**, for \(M\geq M_\delta\), the doubled operator has exactly eight eigenvalues in \((-\delta,\delta)\), counted with multiplicity. Its spectral space splits by the doubled grading into two copies of the four-dimensional \(Sp(2)\)-representation: the even copy is \(O(M^{-1/2})\) from the cut-off core model, and the odd copy is \(O(M^{-1/2})\) from the cut-off \(\mathcal O(3)\) wall model.

In [Theorem 29.7](../../lemmas/29_window_on_the_disc_bundle.md), replace:

> “let delta < sqrt 3. For M large”

with:

> “For each fixed \(0<\delta<\sqrt3\), there is \(M_\delta\) such that, for \(M\ge M_\delta\),”

The same correction is needed in Outcome item 1 and in Theorem 29.11. At \(\delta=0\), the stated interval is empty. The order of quantifiers also matters: the proof supplies a threshold depending on \(\delta\).

**Proposition 29.1 — AMENDMENT.** The splitting and the sum of squares have the expected form. The spinor identification is
\[
\Sigma(TX)\simeq \pi^*\Sigma(TS^4)\otimes\pi^*\Sigma(N),
\qquad
\Sigma_7\simeq\Sigma_4\otimes\Sigma_3.
\]
For the connection metric with flat, totally geodesic fibres, the difference between the Levi-Civita spin connection and the horizontal–vertical connection is the zero-order O’Neill curvature contraction. It is linear in the fibre variable, so \(\|R(y)\|\le C|y|\). The pull-back twist gives the displayed normal operator.

The commutation argument is sound on the ambient space of functions on \(G\) with values in the fibre Hilbert space. The individual \(e_a\) need not preserve the equivariant subspace; the summed operator does. Since the normal operator is constant in the \(G\)-variable and \(K\)-equivariant,
\[
D_H\widehat Q=\widehat Q^{\,*}D_H,
\]
which gives both displayed sum-of-squares identities. The proof should state this domain distinction and display the curvature contraction with its conventions. In particular, replace:

> “So Q^ maps equivariant maps to equivariant maps, and it commutes with each derivative e_a”

with:

> “On the ambient space of fibre-valued functions on \(G\), \(\widehat Q\) commutes with each \(e_a\). Both \(\widehat Q\) and the summed operator \(D_H\) preserve the \(K\)-equivariant subspace.”

The exact value \(C_R=1\) is reported as a Python result. A finite \(C_R\) suffices for the theorem; the value 1 does not need to carry the proof.

**Proposition 29.2 — AMENDMENT.** The Casimir calculation gives the stated gap once the normal model and its domain are supplied. For the normal kernel bundle
\[
W_0=(1,3)\oplus(1,1),
\]
the twist Casimirs are \(4\) and \(0\). The central character restricts the \(Sp(2)\)-types to odd ones; the smallest Casimir is \(5/2\) on the \(4\), and the next is at least \(15/2\). Thus the \(j=1\) twist has a zero only on the \(4\), while the untwisted part starts at \(4\). The zero occurs in \(\Sigma^{\gamma_b}=(1,2)\), and (H4) assigns it to \(T_0\). The opposite normal chirality gives no kernel of \(T_0^*\).

The assertion \(\ker Q=0\) has a short proof that should be included. With \(M=1\),
\[
Q^*Q=
\left(-\Delta+\frac{|y|^2}{4}-\frac32\right)
+\left((y\!\cdot\!J)^2-\frac{|y|^2}{4}\right)
+\left(\frac32-\sigma\!\cdot\!J\right).
\]
All three terms are nonnegative. Equality in the first forces a Gaussian times a constant vector; equality in the second would then force \(J_i^2v=v/4\) for all \(i\), contrary to \(\sum_iJ_i^2=15/4\). The equivariant Callias calculation still needs to be stated with its conventions to obtain \(\ker Q^*\cong3\oplus1\), rather than only its dimension. Compact resolvent is the assertion needed for \(Q^*Q\).

Replace:

> “The computation holds on compactly supported smooth sections, and extends by closure, since the doubled model is essentially self-adjoint on that core”

with:

> “The connection metric on the total space \(N\) is complete. The doubled model is a symmetric Dirac-type operator plus a smooth Hermitian zero-order potential, hence is essentially self-adjoint on \(C_c^\infty(N)\). The identities and estimates extend from this core to its closure.”

The \(S^4\) calculation also has a direct literature check: Dolan’s homogeneous-instanton calculation gives four zero modes for isospin 1 and the next squared value 5; the untwisted squared spectrum starts at 4. See [arXiv:hep-th/0304037, §2(ii), equations (40)–(46)](https://arxiv.org/pdf/hep-th/0304037).

**Lemma 29.3 — CONFIRMED.** The eigenvalues of \(\sigma\!\cdot\!J\) are \(3/2\) and \(-5/2\). Together with \((y\!\cdot\!J)^2\ge |y|^2/4\), they give
\[
\||y|u\|\le \frac2M\|T_0u\|+\sqrt{\frac{10}{M}}\|u\|.
\]
The same constants work for \(T_0^*\), and the perturbation estimate follows from \(\|R(y)\|\le C_R|y|\). The numerical value of \(\mu_1\) is unnecessary. The first-moment estimate also supplies the \(O(M^{-1/2})\) core trial defect, including the cut-off term.

**Lemma 29.4 — AMENDMENT.** The bulk square and its lower bound are correct. The transition-region estimate should be made explicit, since it is used twice in the global IMS argument.

Replace:

> “For the second statement, \(T_M(\psi u)=\psi T_Mu+[D,\psi]u\).”

with:

> “Choose \(0\le\psi\le1\) equal to one on the compact set under consideration. Applying the first estimate to \(\psi u\) and using \(T_M(\psi u)=\psi T_Mu+[D,\psi]u\) gives
> \[
> \|\psi u\|^2\le
> \frac{2\bigl(\|T_Mu\|^2+\|d\psi\|_\infty^2\|u\|^2\bigr)}
> {M^2f_\psi^2/4-C_\Phi M}.
> \]
> Apply this with compact sets containing the supports of \(d\chi_i\) and \(\chi_b\).”

This yields the \(O(M^{-2})\) bounds used in the transition regions.

**Lemma 29.5 — AMENDMENT.** The formula and the claimed wall gaps agree with the homogeneous calculation:
\[
D_k^2=C_2(L)+\frac32-\frac{3k^2}{8}.
\]
For \(\mathcal O(3)\), the \(4\) occurs once and is the kernel. The \(SU(4)\) types with the next possible Casimir, the \(20\) and its dual, restrict to \(Sp(2)\) with a \(4\) summand; their occurrence would contradict that multiplicity. The next Casimir gives squared value 5. For \(\mathcal O(1)\), the smallest eligible Casimir gives squared value 3, and the next gives 6. The slice weights put the \(\mathcal O(3)\) kernel in \(Z=+1\). Thus \(\kappa_w=\sqrt3\), with the value attained on the \(4\).

The eligibility calculation should be displayed rather than left to an unretained Python assertion. Replace:

> “and the slice block on the 4 has \(D_1^2=3,6\).”

with:

> “Frobenius reciprocity gives the relevant \(SU(4)\) types \(4\) and \(20\), each in both chiralities; their Casimirs are \(15/8\) and \(39/8\). Hence the two squared values on the \(Sp(2)\) representation \(4\) are 3 and 6.”

There is also a directly applicable prior result. [Ben Halima, Theorem 1](https://dml.cz/bitstream/handle/10338.dmlcz/119734/CommentatMathUnivCarolRetro_49-2008-3_6.pdf), determines the line-twisted spectrum on odd complex projective spaces. The paper uses the tautological line \(L=\mathcal O(-1)\) and scalar curvature 3 on \(\mathbb{CP}^3\). Taking its exponent \(m=-k\) and multiplying its squared eigenvalues by 4 for the metric of scalar curvature 12 reproduces the zero and gap 5 for \(k=3\), and the gap 3 for \(k=1\). The \(Sp(2)\) branching and the \(Z\)-sign still need to be recorded in the present conventions.

**Lemma 29.6 — AMENDMENT.** The sum-of-squares identity, the Robin spectrum and the channel assignment are correct. With \(q=-\tau\), the stable free channels are
\[
(Z,q)=(-,q>0)\quad\text{for }T_M,
\qquad
(Z,q)=(+,q>0)\quad\text{for }T_M^*.
\]
The Robin profile has exponent \(m|q|\), a one-dimensional zero eigenspace and remaining spectrum beginning at \(m^2q^2\). The \(\mathcal O(3)\) zero mode lies only in the second list; the remaining stable channels have tangential squared energy at least 3. This agrees with Proposition 28.13 and with the relative core–wall sign in Remark 29.12. Reversing the mass sign exchanges the two operator domains and changes the wall line to \(\mathcal O(-3)\).

The mixed terms cancel *in their sum after integration by parts*. Individual mixed terms need not be purely imaginary. Replace:

> “where the cross terms are purely imaginary, using \(w_+(l)=0\).”

with:

> “The sum of the real parts of the mixed terms is the boundary term obtained by integrating \(\partial_x\langle w_+,Aw_-\rangle\); it vanishes because \(w_+(l)=0\).”

**Theorem 29.7, IMS step — ERROR in the proof, with a local repair.** In the convention fixed by \([D,\chi]=c(d\chi)\), the commutator is skew-adjoint. Its square is \(-|d\chi|^2\), not \(+|d\chi|^2\). For example, \([D,x]=iZ\) on the collar and \((iZ)^2=-1\).

Replace:

> “Since \([D,\chi]=c(d\chi)\) with \(c(d\chi)^2=|d\chi|^2\), and \(\sum\chi_i\,d\chi_i=0\),”

with:

> “Since \([D,\chi]=c(d\chi)\) is skew-adjoint and \(c(d\chi)^*c(d\chi)=|d\chi|^2\), while \(\sum_i\chi_i\,d\chi_i=0\),”

The displayed IMS identity itself is correct. With the transition estimate above, orthogonality to the cut-off core modes gives \(\Pi(\chi_cu)=0\) exactly; orthogonality to the cut-off wall modes gives the corresponding wall condition exactly. The resulting complement bound is \(\sqrt{3-o(1)}\). Together with the trial defect \(O(M^{-1/2})\), it verifies Lemma 28.14 for every fixed corrected \(\delta\).

## 2. Lemma 28.14

**AMENDMENT.** The criterion in [Lemma 28.14](../../lemmas/28_two_walls_connected_parent.md) is correct for the self-adjoint compact-resolvent operator of Theorem 28.9. The live lemma states it and cites a report; it does not contain the proof.

A self-contained replacement for “(Report, Lemma 6.)” is:

> “Let \(P\) be the spectral projection for \((-\delta,\delta)\). If \(\operatorname{rank}P>8\), its range meets \(\operatorname{Ran}(U_M)^\perp\) nontrivially, contradicting the complement estimate. If \(\operatorname{rank}P<8\), the range of \(U_M\) meets \(\ker P\) nontrivially, contradicting \(\|\widehat D_MU_M\|<\delta\). Hence \(\operatorname{rank}P=8\). The spectral theorem gives
> \(\|(1-P)U_M\|\le\epsilon_M/\delta\); equality of the finite ranks gives the same order of bound for the difference of the two projections.”

The hypotheses are verified by the repaired proof of Theorem 29.7: Gram–Schmidt changes the trial defect only by a bounded factor, the defect is \(O(M^{-1/2})\), and for a fixed \(0<\delta<\sqrt3\) the complement bound eventually exceeds \(\delta\).

## 3. Tunnelling and compression

**Proposition 29.8 — AMENDMENT.** The tunnelling identity is correct for a real singular value:
\[
\lambda\bigl(\langle u,\chi u\rangle-\langle v,\chi v\rangle\bigr)
=\langle v,[D,\chi]u\rangle.
\]
The boundary condition permits \(\chi u\) as a test section. The weighted identity is also correct as a quadratic-form identity.

The Agmon proof needs to retain the partition weights in the transition region. Replace the sentence beginning:

> “As in the proof of Theorem 29.7, with no core piece, the bulk bound …”

with:

> “Choose the partition so that the derivative of the Agmon weight is supported where the bulk cut-off is one. The IMS lower bound is
> \[
> \int (M^2f^2/4-CM)\chi_b^2|\xi u|^2
> +\kappa_w^2\|\chi_w\xi u\|^2
> -\sum_i\||d\chi_i|\xi u\|^2
> \le \lambda^2\|\xi u\|^2+\||d\xi|u\|^2.
> \]
> The transition terms are controlled by the bulk estimate. For the adjoint, use a cut-off vanishing near the wall and the core estimate in place of the wall estimate.”

With these cut-offs, the worst mass channel has \(|q|=1/2\), giving the stated fixed-geometry rate \((1-\eta)M/2\). The proof for a family with \(l\to\infty\) should quantify the uniform collar widths, cut-off derivatives, connection bounds and positive bulk lower bound on \(f\); the excluded end lengths must be absorbed using the spare \(\eta\).

**Theorem 29.9 — CONFIRMED, conditional on the preceding window and the case (a) wall matrix.** After equivariant unitary identifications of the two spectral spaces with their model copies of \(4\), Theorem 28.15 gives the \(O(M^{-1/2})\) estimate. The core density is \(2P_x\), with \(P_x=(1-x\!\cdot\!\Gamma)/2\). The wall densities are
\[
B(z)=4p_z\quad\text{in case (b)},\qquad
B(z)=2\bigl((1+w)p_z+(1-w)p_{jz}\bigr)\quad\text{in case (a)}.
\]
Consequently the base coordinate has compression \(-\Gamma_a/5\), and the signed wall fibre part is \(-w\).

The generation claim follows from independent endpoint restrictions. The projectors \(p_z\) span the real space of Hermitian \(4\times4\) matrices. On that space, the case (a) density applies
\[
A\longmapsto \tfrac12\bigl((1+w)A+(1-w)jAj^{-1}\bigr),
\]
which has eigenvalues 1 and \(w\) on the two real eigenspaces of quaternionic conjugation. It is invertible for \(w>0\). The resulting real Hermitian images generate \(M_4(\mathbb C)\), while the core image generates \(M_2(\mathbb H)\). This establishes the generation statement for the **limit map**.

## 4. Case (a)

**Proposition 29.10 — AMENDMENT.** The corrected effective operator has the right profile factor. For normalized profiles,
\[
\langle p_{3/2},p_{1/2}\rangle
=\frac{2\sqrt{(3/2)(1/2)}}{3/2+1/2}
=\frac{\sqrt3}{2}.
\]
The positive-channel off-diagonal block has norm \(\sqrt3/\rho\), giving
\[
A_{\rm eff}=D_3(\rho)\oplus D_1(\rho)
+\frac{\sqrt3}{2}B(\rho),
\qquad
\left\|\frac{\sqrt3}{2}B(\rho)\right\|=\frac{3}{2\rho}.
\]
In the vertical spin basis, the connection difference is, up to unitary signs, the off-diagonal spin-ladder matrix with \(J_+\) and \(J_-\); their spin-\(3/2\) ladder coefficients are \(\sqrt3,2,\sqrt3\). This also gives \(\|A_o\|=2/\rho\).

The two displayed elimination inequalities follow from the block decomposition and yield the claimed lower bound, with constants depending on fixed \(\rho\). The Schur-complement argument needs the complement’s **surjectivity**, in addition to its lower bound. Replace:

> “On the complement of \(P\), \(\|T_dw_2\|\ge(m/2)\|w_2\|\), by the sum of squares of Lemma 29.6”

with:

> “The sum of squares gives the bound \(m/2\) both for \(T_d:P^\perp\to Y^\perp\) and for its adjoint. Thus this block is bijective. For \(m>2\|A_o\|\), its bounded perturbation
> \(B_{22}=(1-\Pi_Y)(T_d+A_o)(1-P)\) is bijective and
> \(\|B_{22}^{-1}\|\le(m/2-\|A_o\|)^{-1}\).”

Writing \(B_{12}=\Pi_YA_o(1-P)\) and \(B_{21}=(1-\Pi_Y)A_oP\), the adjoint Schur complement is
\[
F^*-B_{21}^*(B_{22}^*)^{-1}B_{12}^*.
\]
Its difference from \(F^*\) has the stated \(O(1/m)\) bound. Under \(K(\rho)\), the inverse of \(F^*\) on the orthogonal complement of its kernel and the graph equation give the \(O(1/m)\) projection estimate. Equivariance and the \(2\times3\) block then give one copy of the \(4\) in the exact adjoint kernel.

The fibre sign is consistent with Proposition 28.13: the channel weights give \(-w(\rho)\), with an \(O(1/m)\) change from the graph correction. The geometric derivation of the finite matrix \(A(\rho)\), including its bases and signs, remains absent from the live proof. The algebra following that matrix is checkable; a stand-alone proof should include the matrix derivation.

**Theorem 29.11 — AMENDMENT.** Given the matrix of Proposition 28.13, \(K(1)\) follows. Off the \(4\),
\[
|A_{\rm eff}|\ge \sqrt5-\frac32>0.
\]
On the \(4\), the kernel vector is \((-2,1,1)\), and direct multiplication of \(A(1)A(1)^*\) gives squared nonzero singular values
\[
\frac{45\pm3\sqrt{33}}8.
\]
The fibre formula gives \(-w(1)=-2/3\).

The trial-state sentence needs its decay argument. Replace:

> “The trial wall states are cut-offs of the exact half-cylinder kernel, so their defect is exponentially small.”

with:

> “On the \(4\)-isotypic component the adjoint kernel equation is
> \(v'=(mZq+iZA_4)v\), where \(A_4\) is a fixed finite Hermitian matrix anticommuting with \(Z\). The coefficient is Hermitian. For large \(m\), every \(L^2\) solution on the negative half-cylinder lies in its positive spectral subspace, whose eigenvalues are at least \(m/2-\|A_4\|\). Its mass beyond distance \(a\) is therefore \(O(e^{-(m/2-\|A_4\|)a})\), and the cut-off defect is exponentially small.”

Also replace “for delta < min(2, kappa_a(1))” with “for each fixed \(0<\delta<\min(2,\kappa_a(1))\), for sufficiently large \(M\).”

## 5. Outcome, scope and numerical table

**AMENDMENT.** Outcome item 1 needs the corrected \(\delta\) range and quantifiers. Outcome item 2 should distinguish the abstract finiteness of the elliptic check from an explicit list of representations. Replace:

> “which is a finite check at each radius.”

with:

> “which reduces at each fixed radius to finitely many representations by ellipticity; an explicit bound identifying those representations remains to be written.”

The Scope paragraph accurately leaves the connector, quaternionic grading, dynamics and finite-mass generated algebra open. Its reference to Bryant–Salamon needs qualification: Theorem 28.9 assumes a product metric near a finite wall, while the complete Bryant–Salamon metric itself has varying radial coefficients. Replace:

> “other metrics in the class of Theorem 28.9, including the Bryant-Salamon metric”

with:

> “other metrics in the class of Theorem 28.9, including product-collar modifications of Bryant–Salamon-type metrics, and the complete Bryant–Salamon geometry.”

The printed Python table is consistent with its rounded predictions: the discrepancies at \(M=32\) on the displayed \(16\) and \(20\) wall values are about \(0.0048\). The table alone does not establish the quoted mesh error or all higher limiting eigenvalues; those require the unavailable mesh comparison and, for a theorem, corresponding spectral convergence estimates. The last sentence should say:

> “The Python wall values round to \(-1.00000\) at these sample points, consistent with the limiting fibre and \(\Gamma_5\) values in Theorem 29.9.”

The theorem establishes convergence; the printed decimals do not establish exact finite-\(M\) equality.

## 6. Prior work and paper requirements

**AMENDMENT.** Several components and methods have substantial prior literature. The following identifiers and the cited passages were checked:

- [Ben Halima, *Spectrum of twisted Dirac operators on the complex projective space*](https://dml.cz/bitstream/handle/10338.dmlcz/119734/CommentatMathUnivCarolRetro_49-2008-3_6.pdf), Theorem 1, contains the line-twisted \(\mathbb{CP}^3\) spectral calculation used in Lemma 29.5, after the normalization conversion above.
- [Dolan, arXiv:hep-th/0304037](https://arxiv.org/pdf/hep-th/0304037), §2(ii), contains the homogeneous \(S^4\) instanton spectrum relevant to the core calculation.
- [Maridakis, arXiv:1510.07004v1](https://arxiv.org/html/1510.07004), Lemma 2.2, contains the general zero-order-cross-term identity used in the bulk. [arXiv:2110.11654v2](https://arxiv.org/html/2110.11654), §2 and §§4–8, develops normal-model localization and spectral separation. Its Assumption 3 requires direction-independent leading squared data; \((n\!\cdot\!J)^2\) has direction-dependent eigenspaces here.
- [Kaad and van Suijlekom, arXiv:1710.03182v1](https://arxiv.org/html/1710.03182), Proposition 18, gives a horizontal–vertical Dirac factorization with a curvature contraction, under different fibration hypotheses.
- [Bismut and Lebeau, *Complex immersions and Quillen metrics*](https://www.imo.universite-paris-saclay.fr/~jean-michel.bismut/Bismut/1991.pdf), §§VIII–IX, in particular equations (9.155)–(9.156), give closely related model-space projection and spectral-counting arguments in the complex-immersion setting.
- Boundary localization and exponential estimates have close methodological ancestors in [Le Peutrec, *Small eigenvalues of the Neumann realization of the semiclassical Witten Laplacian*](https://numdam.org/item/10.5802/afst.1265.pdf), §§3–4. [Parker, arXiv:2307.00694v1](https://arxiv.org/html/2307.00694), Theorem 1.1, treats exponential concentration for a class of perturbed Dirac operators motivated in part by Taubes-type problems. [Schulz-Baldes and Stoiber, arXiv:2203.15014v2](https://arxiv.org/html/2203.15014), §§3 and 5, use IMS localization and local models for Callias operators with isolated gap-closing points.
- [Kottke, arXiv:0909.5661v2](https://arxiv.org/html/0909.5661), §5, supplies a families Callias-index framework. Its hypotheses and the passage from a bounded potential at infinity to the linear normal model should be matched explicitly.

The checked sources contain the end-model spectra, general square, factorization and localization methods. The passages checked do not state the combined eight-state theorem with this \(S^4\) core, \(\mathbb{CP}^3\) wall, anisotropic spin-\(3/2\) mass and local boundary condition. That is a finding about the checked records, not a completeness or priority determination. The search included Callias, Witten, boundary localization, homogeneous spectra and a 2026 recency query. Forward citation chains, author publication lists and mathematical review databases were not exhausted; the longer P3-level works were read at the cited sections rather than throughout.

A mathematics referee would ask for the precise spinor and curvature conventions, a self-contained normal Callias kernel calculation, the domains and essential self-adjointness on \(N\), the \(SU(4)\)-to-\(Sp(2)\) eligibility and chirality calculation, the repaired IMS and weighted estimates, and the derivation of the case (a) finite matrix. The paper should credit the published end spectra and state exactly what the combined boundary theorem adds.

## Corrections in order of severity

1. Correct the stated ranges and quantifiers for \(\delta\); \(\delta=0\) is a counterexample to the current wording.
2. Correct the Clifford-commutator sign in the IMS proof and retain the valid norm identity.
3. Supply the noncompact core domain, equivariant normal-index calculation, and explicit wall branching and chirality conventions.
4. Add the complement surjectivity and half-cylinder decay arguments in case (a), and derive the geometric matrix of Proposition 28.13.
5. Write the transition-region and Agmon estimates with their cut-offs; qualify the uniform \(l\)-family statement.
6. Correct the scope and numerical wording, and credit the prior end-model spectra and localization methods.

Case (b) is not ready for a stand-alone paper in its present form. The sign error and the \(\delta\) wording are repairable, and the end-model checks support the intended theorem. A paper-ready version still needs the indicated analytic and representation-theoretic details, followed by a completed literature comparison.