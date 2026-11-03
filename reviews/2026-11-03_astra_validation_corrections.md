# Validation of the corrections to the ledger, the citations and the steer note

By Astra 6 (gpt-6-astra, effort xhigh), 3 Nov 2026; prompts in [../lemmas/prompts/astra_validate_corrections.md](../lemmas/prompts/astra_validate_corrections.md) and [../lemmas/prompts/astra_validate_corrections_resume.md](../lemmas/prompts/astra_validate_corrections_resume.md). The job was cut off once by a usage limit and resumed in the same session. Reproduced as delivered, with links made relative. The amendments are applied in `ledger.pl`, `LITERATURE.md`, the steer note, the main paper, the Farsi-Latrémolière assessment and `README.md`.

We checked the current working tree, including the three subsequent fixes. The replacement of \(\alpha\) by \(\varphi\), the updated Farsi–Latrémolière publication statement, and the repaired relative-bound estimate are correct. They are not outstanding defects.

We worked alone, read the supplied sources and referee reports, and made no repository changes. The numerical verification used **Python 3, NumPy and SciPy**; the ledger tests used **SWI-Prolog**. The computations supplement the proofs below.

1. **Correct — Witten 1981.**

   The quotations and page references in [LITERATURE.md](../LITERATURE.md) agree with the supplied source. The chirality argument is on p. 422, within the cited discussion on pp. 421–423. The discussion of nonorientable internal spaces is on p. 423; torsion remains a possibility to investigate on pp. 423 and 426–427. The discussion of metric parameters determining gauge couplings on pp. 425–426 supplies no calculation of a weak angle.

   The hypotheses matter: the argument concerns the usual smooth compactification with an orientable internal space of odd dimension, the geometric spin connection, and gauge transformations induced by coordinate transformations. Witten applies it to the fermion modes of eleven-dimensional supergravity, including the \(M^{pqr}\) candidates. The text correctly presents nonorientability and torsion as possibilities considered, without claiming that Witten constructs a successful model using either.

   The opening Clifford-algebra sentence in [the paper](../paper/towerless_intervals.tex) is correctly separated from the attribution. On an irreducible complex odd-dimensional Clifford module, the volume element is a nonzero scalar. An operator anticommuting with every Clifford generator would anticommute with that scalar, so no nonzero chirality grading exists on that module.

   Read with the immediately following specification of Witten’s model, the negative statement has the required scope. Boundaries, defects, changed connections and gauge fields outside the massless isometry construction remain outside it. **No correction is required.**

2. **Correct with amendment — Witten 1982.**

   Footnote 2 is indeed at the foot of **p. 327**, and its quotation is accurate after normalizing typography. Section 6.12 of [the research state](../connes_kk_research_state.md) agrees with it: the special invariant construction gives the unique **\(SU(3)\)-invariant spinor**, rather than establishing that every possible zero mode is invariant or that the entire kernel always has dimension one.

   The criterion involving \(\operatorname{tr}T^2\) is on **p. 328**, with the doublet normalized to \(1/2\). For one left-handed representation, the anomalous case has half-odd-integral index. Let
   \[
   T(j)=\sum_{m=-j}^{j}m^2=\frac{j(j+1)(2j+1)}3.
   \]
   Then
   \[
   T\!\left(2k+\frac12\right)
   =\frac{(4k+1)(2k+1)(4k+3)}6
   \]
   is half an odd integer: its odd numerator is divisible by three. Also
   \[
   T\!\left(2k+\frac32\right)
   =\frac{(4k+3)(k+1)(4k+5)}3
   \]
   is an integer. Both closed forms are correct.

   **Correction:** the original cylinder and the later mapping-torus formulation must be distinguished. Replace the parenthesis identifying the original construction with the mapping torus, and the later sentence “Witten’s criterion is phrased on the mapping torus \(S^4\times S^1\),” by:
   > Witten’s original construction uses \(S^4\times\mathbb R\), with the specified asymptotic gauge fields; footnote 2 discusses its conformal compactification to \(S^5\). The mapping-torus formulation uses \(S^4\times S^1\), with the gauge bundle glued by the gauge transformation.

3. **Correct — Banks–Casher.**

   Section 2 of Giusti–Lüscher counts the eigenvalues of **one flavour**, including both signs. Its convention gives
   \[
   \Sigma=\pi\lim_{\lambda\to0}\lim_{m\to0}\lim_{V\to\infty}\rho(\lambda,m).
   \]
   Thus infinite volume is taken first, followed by the chiral limit, followed by the limit in spectral argument.

   The paragraph in [chiral_limit_note.tex](../paper/chiral_limit_note.tex) is consistent with that normalization. Its sum defining \(c_V\) includes both signs, and the corresponding density does too. Consequently
   \[
   \int_{\mathbb R}\frac{m\,\rho_m(\lambda)}{\lambda^2+m^2}\,d\lambda
   \longrightarrow \pi\rho_0(0).
   \]
   There is no additional factor two. If only positive eigenvalues were counted, that convention would require the compensating factor two.

   The stated equicontinuity, convergence at zero, and uniform control of tails and subtraction justify the approximate-identity argument. The fixed-volume statement also now requires the compatible \(O(m)\) subtraction that the referee requested.

   The citation is honest: it identifies Giusti–Lüscher as the source actually consulted and identifies the analytic hypotheses as those of the note. **No correction is required**, provided “condensate” retains the stated flavour and sign convention.

4. **Correct with amendment — Farsi–Latrémolière.**

   The update correctly identifies the unchanged six hypotheses of Theorem 3.4 and the defective estimate printed as equation (3.11). The corrected relative-bound estimate is
   \[
   \|(1-p)\xi\|
   \le \frac{C\varepsilon}{\delta}
          \bigl(\|\xi\|+\|D_\varepsilon\xi\|\bigr).
   \]
   Under the separate anticommutation hypothesis, it becomes
   \[
   \|(1-p)\xi\|\le\frac{\varepsilon}{\delta}\|D_\varepsilon\xi\|.
   \]

   **Counterexample R1 satisfies the hypotheses.** Let
   \[
   A=B=\mathbb C,\qquad H=\ell^2(\mathbb N_0),\qquad
   D_ve_n=ne_n,\qquad D_he_n=-n^2e_n.
   \]
   On their natural diagonal domains,
   \[
   D=D_h+D_v,\qquad
   D_\varepsilon e_n=(n/\varepsilon-n^2)e_n.
   \]
   The operators are self-adjoint. For every fixed \(\varepsilon>0\),
   \[
   |n/\varepsilon-n^2|\longrightarrow\infty,
   \]
   so \(D_\varepsilon\) has compact resolvent. Its domain is the quadratic weighted domain of \(D_h\); cancellations at finitely many indices do not change this conclusion. In particular, this verifies compact resolvent for **every** \(\varepsilon\in(0,1)\).

   The scalar representation is faithful. Its state space is a singleton and its commutator seminorm vanishes precisely on the real scalars, so \((A,H,D)\) and each \((A,H,D_\varepsilon)\) are metric spectral triples. Also
   \[
   \operatorname{Sp}(D)=\{0,-2,-6,-12,\ldots\},
   \]
   so zero is isolated even under the theorem’s printed wording involving \(D\), rather than the intended \(D_v\).

   The numbered hypotheses hold as follows:

   - **(1), (2):** all commutators vanish; any positive \(M\) works.
   - **(3):** \(D_v\) commutes with \(B=\mathbb C\).
   - **(4):** \(p=|e_0\rangle\langle e_0|\) commutes with \(B\) and \(D_h\).
   - **(5):** the proposed limit is the metric spectral triple \((\mathbb C,\mathbb Ce_0,0)\).
   - **(6):** \(E=\mathrm{id}_{\mathbb C}\) is positive and fixes \(B\); all required inequalities have both sides zero.

   Let \(a>0\) and
   \[
   \varepsilon_n=(n+a/n)^{-1}.
   \]
   Then \(\varepsilon_n\to0\) and \(D_{\varepsilon_n}e_n=ae_n\). Corollary 3.5 would place \(a\) in the limiting spectrum \(\{0\}\), a contradiction. The estimate (3.11) likewise gives
   \[
   1=\|(1-p)e_n\|
   \le4\sqrt{2\varepsilon_n}(1+a)\longrightarrow0.
   \]
   This proves the Counterexample analytically.

   We compared the main statements in Sections 3–6 with v3. We found no further mathematical change in those statements beyond the reported correction \(L_A\to L_B\) in Definition 2.13. That definition still needs real and imaginary parts of the inner product. An apparent pair of negative signs in the extracted Theorem 6.2(3) is an extraction artifact: the journal HTML has an invisible `mphantom` minus, retaining the limits \(+\mu_j,-\mu_j\).

   **Corrections:**

   - In `fl_R1`, replace “needs anticommutation … or a relative bound” by:
     > The printed hypotheses are insufficient. Anticommutation, or the stated uniform relative bound, supplies a sufficient additional hypothesis.
   - Identify the numbering accurately: **Theorem 3.4 in v3 and the journal; Theorem 2.5 in v1**.
   - Replace the blanket “applications … are unaffected” by “the anticommuting applications avoid this cancellation defect.” In particular, the product statements in Theorem 4.6 and Corollary 4.7 also require a **nonzero vertical kernel** for their displayed target to be a spectral triple. That omission is present in both versions; it is not a new journal change.
   - Limit “is v3 after copy-editing” to the statements and equations actually compared.

5. **Correct — tower gauge coefficients.**

   Let \(g_1=\sqrt{5/3}\,g_Y\). For one Standard Model generation,
   \[
   \sum_{\rm Weyl}T_1
   =\frac35\left[
   6\left(\frac16\right)^2+
   3\left(\frac23\right)^2+
   3\left(\frac13\right)^2+
   2\left(\frac12\right)^2+1\right]=2.
   \]
   The corresponding \(SU(2)\) and \(SU(3)\) sums are also \(2\). Three generations therefore give \(6\) for each group.

   The four-dimensional Weyl contribution is \((2/3)6=4\). At each nonzero orbifold level, each chiral zero-mode fermion has a massive Dirac partner, giving \((4/3)6=8\).

   One complex Higgs doublet contributes
   \[
   (1/10,\;1/6,\;0).
   \]
   The nonzero gauge level contributes
   \[
   -\frac{11}{3}C_2+\frac16C_2=-\frac72C_2.
   \]
   Here the real adjoint \(A_5\) contribution belongs to the gauge-fixed massive-vector system. It accounts for the eaten component; it must not be counted again as an additional physical scalar.

   Thus
   \[
   \widetilde b
   =(0,-7,-21/2)+(8,8,8)+(1/10,1/6,0)
   =\boxed{(81/10,\;7/6,\;-5/2)}.
   \]
   The zero-mode calculation gives
   \[
   b=(0,-22/3,-11)+(4,4,4)+(1/10,1/6,0)
   =\boxed{(41/10,\;-19/6,\;-7)}.
   \]

   The source’s \(S^1/\mathbb Z_2\) field expansions have precisely one complex Higgs doublet per positive level. Item 9’s derivation agrees with them. **No correction is required within this field content.**

6. **Correct — top Yukawa equation.**

   In the source’s equation labelled `eq:gen` and the following display, retaining only the top Yukawa gives a tower self-coupling coefficient
   \[
   \frac32+2(3)=\frac{15}{2}.
   \]
   The gauge coefficients are
   \[
   -12g_3^2-\frac{21}{8}g_2^2-\frac98g_1^2,
   \]
   exactly as written in the note.

   The Standard Model contribution is also correct:
   \[
   \frac92y_t^2-\frac{17}{20}g_1^2-\frac94g_2^2-8g_3^2.
   \]
   For example, the gauge coefficients follow from the left- and right-handed quadratic charges:
   \[
   3\frac35\left[(1/6)^2+(2/3)^2\right]=\frac{17}{20},
   \quad 3(3/4)=9/4,\quad 3(4/3+4/3)=8.
   \]
   The Yukawa coefficient is \(3/2+3=9/2\).

   **No equation correction is required.** The provenance can now record this source comparison and independent check instead of leaving the Standard Model part supported only by memory.

7. **Correct with amendment — numerical table and ranges.**

   The independent **Python 3/SciPy** calculation used analytic gauge running and integrated the linear equation for \(w=1/y_t^2\), splitting the integration at every step threshold. Let \(S=\mu/M_{\rm KK}\). Above the first threshold,
   \[
   \alpha_i^{-1}(\mu)=\alpha_i^{-1}(M_Z)
   -\frac{b_i\log(\mu/M_Z)+\widetilde b_iF(S)}{2\pi},
   \]
   where
   \[
   F_{\rm step}(S)=n\log S-\log(n!),\quad n=\lfloor S\rfloor,
   \qquad
   F_{\rm cont}(S)=S-1-\log S.
   \]
   Root finding determined the crossings and the self-consistent running masses.

   The integration passed analytic constant-coefficient controls, a deliberately corrupted-sign control, a tolerance comparison, and a comparison with direct integration of \(y_t\). Tightening tolerances changed the reported outputs by less than \(3\times10^{-10}\).

   In the following table, \(S_{ij}\) denotes the \(g_i=g_j\) crossing; the inverse couplings are evaluated at \(S_{23}\). The ratio columns explicitly give the order \(23,12\).

   | Count | \(M_{\rm KK}\), TeV | \(S_{12},S_{23}\) | \(\alpha_1^{-1},\alpha_2^{-1}\) at \(S_{23}\) | \(y_t/g_2\) at \(S_{23},S_{12}\) |
   |---|---:|---:|---:|---:|
   | Step | 0.235 | 24.8101, 34.2107 | 15.4359, 26.0038 | 0.196469, 0.326215 |
   | Step | 1 | 23.3248, 32.7204 | 16.4118, 26.9837 | 0.237497, 0.384323 |
   | Step | 10 | 20.9742, 30.3537 | 17.9604, 28.5387 | 0.302775, 0.471369 |
   | Step | 100 | 18.6209, 27.9945 | 19.5049, 30.0897 | 0.366415, 0.550320 |
   | \(S-1\) | 0.235 | 26.4934, 36.0556 | 15.4724, 26.0405 | 0.200248, 0.332162 |
   | \(S-1\) | 1 | 24.9784, 34.5436 | 16.4495, 27.0215 | 0.241186, 0.389913 |
   | \(S-1\) | 10 | 22.5700, 32.1396 | 18.0001, 28.5787 | 0.306277, 0.476373 |
   | \(S-1\) | 100 | 20.1622, 29.7359 | 19.5469, 30.1318 | 0.369697, 0.554772 |

   The mass pairs below use boundary ratios \(\sqrt2,\,2/\sqrt3\), in that order.

   | Count | \(M_{\rm KK}\), TeV | \(m_t\) from \(S_{23}\), GeV | \(m_t\) from \(S_{12}\), GeV |
   |---|---:|---:|---:|
   | Step | 0.235 | 231.399, 230.197 | 230.509, 227.195 |
   | Step | 1 | 224.766, 223.249 | 223.731, 219.738 |
   | Step | 10 | 217.558, 215.471 | 216.297, 211.166 |
   | Step | 100 | 212.679, 209.955 | 211.207, 204.910 |
   | \(S-1\) | 0.235 | 230.285, 229.067 | 229.384, 226.029 |
   | \(S-1\) | 1 | 223.994, 222.457 | 222.947, 218.907 |
   | \(S-1\) | 10 | 217.081, 214.970 | 215.807, 210.624 |
   | \(S-1\) | 100 | 212.358, 209.607 | 210.872, 204.520 |

   These reproduce the stated approximate ranges:

   - Through \(10\) TeV: approximately \(21\)–\(34\) tower spacings for steps and \(23\)–\(36\) for \(S-1\).
   - At the \(23\) crossing: approximately \(26\)–\(29\) and \(15\)–\(18\) for the two inverse fine-structure couplings.
   - Through \(100\) TeV: approximately \(0.20\)–\(0.37\) and \(0.33\)–\(0.56\) for the two Yukawa ratios.
   - The stated mass ranges \(205\)–\(231\) GeV and \(211\)–\(231\) GeV are rounded numerical ranges.
   - At the tabulated scales and either crossing, changing the boundary ratio from \(1\) to \(5\) changes the mass by at most \(25.465\) GeV for steps and \(25.708\) GeV for \(S-1\).
   - A boundary ratio \(0.5\) gives \(155.534\)–\(216.217\) GeV for steps and \(154.909\)–\(214.918\) GeV for \(S-1\).

   Without the tower, the crossings are approximately \(1.0003\times10^{13}\) and \(1.0030\times10^{17}\) GeV.

   **Corrections:**

   - Replace “inverse \(g_1,g_2\)” everywhere by **\(\alpha_1^{-1},\alpha_2^{-1}\), where \(\alpha_i=g_i^2/(4\pi)\)**.
   - Label the Yukawa-ratio column’s crossing order explicitly.
   - Replace its small numerical discrepancies by the values above. The stated boundary \(y_t(m_t)=0.936\), together with \(v=246.22\) GeV, fixes \(m_t\simeq162.965\) GeV.
   - Identify the \(\kappa\) range as the **step-threshold** result: approximately \(23.7\)–\(132.9\) through \(1\) TeV, reaching \(1232.8\) at \(10\) TeV. With \(S-1\), these become approximately \(25.3\)–\(140.3\), reaching \(1305.3\).
   - Describe “at most \(26\) GeV” as a numerical scan result. The computed samples do not constitute an analytic bound over every intermediate \(M_{\rm KK}\).

8. **Correct with amendment — infrared attraction and the scan boundary.**

   “Infrared quasi-fixed point” is reasonable terminology if it means the limiting infrared trajectory obtained as the ultraviolet Yukawa boundary value grows. The coefficients depend on \(S\), so a constant fixed point of an autonomous system is not being exhibited.

   Let \(t<T\), and write
   \[
   w'=\frac{C(t)w-A(t)}{8\pi^2},
   \qquad w=y_t^{-2},
   \]
   with \(A=9/2+15N/2\) and \(C\) the positive gauge combination. Then
   \[
   w(t)=e^{-\int_t^T C/(8\pi^2)}w(T)
   +\int_t^T e^{-\int_t^s C/(8\pi^2)}
              \frac{A(s)}{8\pi^2}\,ds.
   \]
   The first term measures dependence on the ultraviolet boundary. As \(y_t(T)\to\infty\), it vanishes, leaving a limiting trajectory. This proves the relevant attraction mechanism; it does not prove complete independence from finite boundary values.

   The conclusion about \(2M_W\) is supported only for the displayed universal bulk content, one-loop equations, threshold prescription, crossing scales and boundary ratios. It directs attention to running and matching in the actual parent. Comparing a running top mass with an on-shell \(W\) mass also does not supply a common-scale matching test.

   **The lower endpoint \(235\) GeV is illustrative, not derived by Lemmas 22, 23 or 25.** With the level spacing used in the calculation,
   \[
   M_{\rm KK}=\frac{\pi}{l}.
   \]
   The strict-wall Yang–Mills family of Lemma 22 gives \(M_{\rm KK}=2M_W\), approximately \(161\) GeV. In the flat interior family of Lemma 23,
   \[
   \sin^2(M_Wl)=\frac{\sin^2(2\theta)}2,
   \]
   so \(M_Wl\le\pi/4\), hence
   \[
   \boxed{M_{\rm KK}\ge4M_W\simeq321\ {\rm GeV}.}
   \]
   Lemma 25’s leading spectral-action sum rule supplies no universal numerical lower bound on \(M_{\rm KK}\).

   **Replacement wording:**
   > The scan uses an illustrative lower endpoint of \(235\) GeV. A scan tied to the flat interior Yang–Mills family must instead impose \(M_{\rm KK}\ge4M_W\). The downward flow approaches an infrared quasi-fixed trajectory. The resulting masses test the stated universal-tower matching conditions; the corresponding calculation for the actual parent remains open.

9. **Correct with amendment — new checker records.**

   The source passages support the new provenance records:

   - `l10_generates_m4`: Example 16(c) in the 15–16 report checks the Clifford generators and generation of \(M_4(\mathbb C)\).
   - `l05_truncation`: the 08–13–14 report checks Theorem A, with its stated amendments.
   - `fl_R1`: item 49 of the paper-note report gives the scalar Counterexample and explicitly describes the proposed repairs as sufficient.
   - `l18_sum_rule`: items 13–15 verify the heat-cutoff **Taylor** identity with its trace normalization.

   A **Python 3** comparison of the facts found **213 existing `checked_by` facts preserved, none removed, and 13 added**. Thus moving the old facts preserved their set; the complete diff also contains genuine additions.

   The five corpus descriptions are accurate: §§3.2, 6.2, 6.9 and 6.13 report the stated quadrature or finite-matrix checks without identifying their language. Recording `corpus, not_recorded(...)` preserves that provenance. It does not supply an independent referee.

   **Corrections to the associated statements:**

   - `l05_truncation` should say that the two-state **compressed complex data/operator system** have mass \(\pi/(2l)\) and distance \(2l/\pi\). The pulled-back states are smeared measures; the full diagonal algebra with inherited \(J\) fails first order.
   - `fl_R1` needs the replacement in item 4.
   - Replace `l18_sum_rule` by:
     > For the heat cutoff and the specified mass-compatible doublet decomposition, \(8\kappa M_{W,\mathrm{Taylor}}^2=\sum_iN_i m_i^2\rho(x_i)\), where \(\rho(x)=2[1-(1+x)e^{-x}]/x^2\), \(\kappa=(P+\sum_i d_iw(x_i))/6\), \(N_i=2d_i\), \(P+\sum_i d_i=6\), and \(w(x)=3\int_0^1u^2e^{-xu}\,du\). The CCM relation follows to leading order when every \(x_i\to0\).

10. **Correct — the mixing bound, with the missing proof supplied.**

   Let
   \[
   M=FXG,\quad
   F=\operatorname{diag}(f_1,f_2,f_3),\quad
   G=\operatorname{diag}(g_1,g_2,g_3),
   \]
   with positive entries in increasing order. Let \(D_1,D_2\) be the largest absolute entry and largest absolute \(2\times2\) minor of \(X\), and let
   \[
   \Delta_1=|X_{33}|,\qquad
   \Delta_2=|\det X_{\{2,3\},\{2,3\}}|.
   \]
   Assume \(X\) invertible and \(\Delta_1\Delta_2>0\). Put
   \[
   a=\frac{\sqrt3D_1}{\Delta_1},\qquad
   b=\frac{\sqrt3D_2}{\Delta_2},\qquad K=(1+a)(1+b).
   \]

   Let \(H=MM^\dagger=U\operatorname{diag}(\lambda_1,\lambda_2,\lambda_3)U^\dagger\), with increasing eigenvalues. Then
   \[
   \lambda_3\ge H_{33}\ge f_3^2g_3^2\Delta_1^2,\qquad
   H_{ii}\le3D_1^2f_i^2g_3^2.
   \]
   Since \(H_{ii}\ge\lambda_3|U_{i3}|^2\),
   \[
   |U_{i3}|\le a\,\frac{f_i}{f_3}.
   \]

   Next,
   \[
   H^{-1}=F^{-1}X^{-\dagger}G^{-2}X^{-1}F^{-1}.
   \]
   Cofactors of \(X\) give
   \[
   |(X^{-1})_{11}|=\frac{\Delta_2}{|\det X|},
   \qquad |(X^{-1})_{ki}|\le\frac{D_2}{|\det X|}.
   \]
   Therefore
   \[
   \lambda_{\max}(H^{-1})
   \ge\frac{\Delta_2^2}{f_1^2g_1^2|\det X|^2},\qquad
   (H^{-1})_{ii}
   \le\frac{3D_2^2}{f_i^2g_1^2|\det X|^2}.
   \]
   Applying the same diagonal estimate to its largest eigenvector gives
   \[
   |U_{i1}|\le b\,\frac{f_1}{f_i}.
   \]

   The omitted unitary-cofactor step is explicit. From
   \(U^{-1}=U^\dagger=\operatorname{adj}(U)/\det U\) and \(|\det U|=1\),
   \[
   |U_{12}|=|U_{21}U_{33}-U_{23}U_{31}|,
   \qquad
   |U_{32}|=|U_{11}U_{23}-U_{13}U_{21}|.
   \]
   Consequently,
   \[
   \begin{aligned}
   |U_{12}|
   &\le b\frac{f_1}{f_2}
      +ab\frac{f_2}{f_3}\frac{f_1}{f_3}
    \le b(1+a)\frac{f_1}{f_2},\\
   |U_{32}|
   &\le a\frac{f_2}{f_3}
      +ab\frac{f_1}{f_3}\frac{f_1}{f_2}
    \le a(1+b)\frac{f_2}{f_3}.
   \end{aligned}
   \]
   Together with the four preceding off-diagonal bounds and
   \(|U_{ii}|\le1\), this proves
   \[
   |U_{ij}|\le K\min(f_i/f_j,f_j/f_i).
   \]

   Apply this separately to \(U_u,U_d\). For every \(k\) and \(i<j\),
   \[
   \min(f_k/f_i,f_i/f_k)\,
   \min(f_k/f_j,f_j/f_k)\le f_i/f_j.
   \]
   This follows directly from the ordering, or from the triangle inequality for \(\log f_i\). Thus
   \[
   |V_{ij}|
   \le\sum_{k=1}^3|(U_u)_{ki}|\,|(U_d)_{kj}|
   \le\boxed{3K_uK_d\,f_i/f_j}.
   \]

   Identical sectors permit the same ordered singular basis and give \(V=I\); hence no positive universal lower bound follows. This review supplies an **independent analytic check** of `l12_mixing_bound`. The proof does not validate the separately reported sample medians.

11. **Correct — Proposition 14, with a complete proof.**

   We take the heat cutoff, three generations with right-handed neutrinos, no Majorana masses, and one common positive Dirac mass \(m\) for every species. Let
   \[
   x=m^2/\Lambda^2,\qquad y=q^2/\Lambda^2,\qquad
   H(y)=\int_0^1e^{-yu(1-u)}\,du,\qquad
   g(y)=(2+y)H(y)-2.
   \]

   Every mass eigenvalue is \(+m\) or \(-m\). The exact quadratic kernel for a generator entry is therefore proportional to
   \[
   e^{-x}\left[g(y)+\frac{(m_i-m_j)^2}{\Lambda^2}H(y)\right]|T_{ij}|^2.
   \]
   For a charged generator, equal weights connect equal and opposite mass signs. The average squared difference is \(2m^2\), giving
   \[
   C_W(y)\propto e^{-x}[g(y)+2xH(y)].
   \]

   In the neutral particle trace, let \(v=(1,-1)^T\). The charge and mass-commutator traces give
   \[
   Q=\operatorname{diag}(6,10),\qquad
   C_{\rm neutral}(y)\propto
   e^{-x}[Qg(y)+12xH(y)vv^T].
   \]
   The determinant factors as
   \[
   \det Q\,g(y)
   \left[g(y)+12x\,v^TQ^{-1}v\,H(y)\right].
   \]
   Since \(v^TQ^{-1}v=1/6+1/10=4/15\), the massive neutral factor has coefficient \(16x/5\). Charge conjugation multiplies the common normalization and does not change the roots.

   Both massive pole equations thus have the form
   \[
   (2+\beta-z)H(-z)=2,
   \qquad
   \beta_W=2x,\quad \beta_Z=\frac{16x}{5}.
   \]
   Let \(h(z)=H(-z)\) and
   \[
   F(z)=z-2+\frac2{h(z)}.
   \]
   For \(z\ge0\), \(h(z)\ge1\) and
   \[
   0<h'(z)
   =\int_0^1u(1-u)e^{zu(1-u)}\,du\le h(z)/4.
   \]
   Hence
   \[
   F'(z)=1-\frac{2h'(z)}{h(z)^2}
   \ge1-\frac1{2h(z)}\ge\frac12.
   \]
   Also \(F(0)=0\) and \(F(z)\to\infty\). Therefore each \(\beta>0\) has a unique positive solution. At that solution \(h(z)>1\), so
   \[
   z=\beta+2-\frac2{h(z)}
   \quad\Longrightarrow\quad
   \beta<z<\beta+2.
   \]
   This proves
   \[
   \boxed{2x<z_W<2x+2,\qquad
   \frac{16x}{5}<z_Z<\frac{16x}{5}+2.}
   \]

   For small \(z\),
   \[
   h(z)=1+\frac z6+O(z^2),\qquad
   F(z)=\frac23z+O(z^2).
   \]
   Thus \(z_W\sim3x\), \(z_Z\sim24x/5\), and their ratio tends to \(5/8\). For \(x\to\infty\), the bounds give
   \(z_W=2x+O(1)\), \(z_Z=16x/5+O(1)\), again giving \(5/8\). Both pole masses diverge at fixed \(\Lambda\).

   At fixed Euclidean momentum, every kernel entry is \(e^{-x}\) times a function growing at most linearly in \(x\), and therefore tends to zero. Finally,
   \[
   H'(0)=-1/6,\qquad g'(0)=2/3,
   \]
   so the charged Taylor kinetic coefficient is proportional to
   \[
   e^{-x}\left(\frac23-\frac x3\right)
   =\frac23e^{-x}(1-x/2),
   \]
   which is negative for \(x>2\).

   A supplementary **Python 3/SciPy** quadrature and root calculation gave
   \[
   x=3:\quad z_W=7.4996477083,\quad z_Z=11.3746146417,
   \quad z_W/z_Z=0.6593320253.
   \]
   This supports the recorded “about \(0.66\).” The Proposition establishes pole locations and the Taylor sign in this family; it does not establish a healthy Lorentzian limiting theory. This review supplies the independent analytic checker requested for `l18_fully_massive`.

12. **Error — the ledger still contains statements rejected or qualified by referees.**

   The relocation of checker facts is sound, but `show/1` still presents several overbroad or incorrect statements as proved. The following replacements are required in [ledger.pl](../ledger.pl). The narrowed statements can retain `proved`; the stronger interpretations cannot inherit that status merely from a checker name.

   | Row | Replacement or exact amendment |
   |---|---|
   | `l05_truncation`, `l09_lightpair` | Specify the compressed complex two-point data. Add that the full diagonal algebra with inherited real structure fails first order; do not imply that all real spectral-triple axioms survive. |
   | `l07_real` | “Under pointwise reality, the real structures have the displayed diagonal form. Only \(\varepsilon'=+1\) has standard KO-0 signs; the other sign uses the extended convention.” |
   | `l07_reflection` | “For the bare interval, the reflection sign equals \(\varepsilon'\). This calculation does not select a physical odd factorization of a fixed product triple.” |
   | `l08_pairing` | Add that \(Q\) is a self-adjoint involution commuting with \(\Gamma,A,A^\circ,D\), anticommuting with \(J\), and that the admissible \(U\) commutes with \(Q\). Restrict the neutrino obstruction to the specified particle bimodules. |
   | `l09_limits` | Keep the fixed-\(\mu\) wall limit, bulk threshold and tuned collapse Theorems. Replace the parenthetical \(10\to11\), \(10\to9\) identifications by “proposed interpretations; compatibility with the KO factorizations is not established.” |
   | `l12_towerless` | “In a fixed spectral window whose boundary avoids the limiting spectrum, retain precisely the eigenvalues of \(D_F\) lying in that window. The full Yukawa block is retained when \(E>\|D_F\|\). The exterior gap is in absolute value.” Specify an algebra and representation before asserting convergence of spectral triples. |
   | `fl_R1` | Use the sufficient-repair and version wording in item 4. |
   | `fl_R2` | Prefix the displayed uncapped \(l/2\) lower bound by “for sufficiently small \(l\), including \(l<\sqrt2\) in this normalization”; otherwise retain the cap \(\min(\sqrt2/2,l/2)\). |
   | `l15_converse` | State that **there exist** suitable light projections and identifying unitaries with light-block error tending to zero and exterior gap tending to infinity. |
   | `l15_grading` | “The signs and Dirac relations descend exactly for the compressed operator \(D_B\). Relative to an independently chosen \(D_F\), the Dirac-relation defects are at most \(2\Delta\); control of \(J\) requires the stated extension to antilinear functionals.” |
   | `l17_condensate` | Replace “has no limit beyond the zero-mode term” by “With a pairing-compatible \(O(m)\) subtraction, \(c_V=n_0/(Vm)+O(m)\); it tends to zero when \(n_0=0\), and has the displayed pole when \(n_0>0\).” |
   | `l17_no_kinetic` | Replace “gives a non-self-adjoint operator” by “generally gives a non-self-adjoint reduced operator.” Constant reductions are an immediate exception. |
   | `l18_taylor` | Restrict the coefficient-one large-mass asymptotic and the bound \(\Lambda^2/e\) to the heat cutoff. For the positive Laplace class, the Taylor asymptotic is \(\displaystyle M_W^2\sim\frac{\int s^{-2}d\nu(s)}{f(0)}\frac{\Lambda^4}{m^2}\). |
   | `l18_joint` | State necessity of \(m_t/\Lambda\to0\) for the **top-only heat-cutoff Taylor family**. Other finite data and mass definitions require their own argument. |
   | `l18_several` | Add “heat cutoff, finitely many doublets, each with one massive and one massless member”; the stated \(P=0\) asymptotics additionally require all massive members to have the same \(m\). |
   | `l18_fully_massive` | Add “heat cutoff, common \(m>0\), all Dirac species including neutrinos”; identify the wrong-sign coefficient as the **charged** Taylor coefficient. Record the independent proof in item 11. |
   | `l18_sum_rule` | Use the Taylor mass, weight normalization and simultaneous small-mass limit specified in item 9. |
   | `l18_radial`, `l18_radial_general` | Explicitly require \(V_*\ne0\), together with the stated cutoff hypotheses. The zero ray has identically zero derivative. |
   | `l20_rank_one` | Add \(\kappa\ne0\) and the stated nonzero decomposable \(K=vw^*\). At \(\kappa=0\), the block has rank zero and the admissible algebra has dimension \(40\). |
   | `l20_no_selection` | In the twistor application, require the image of the glued subset in \(S^4\) to have empty interior. Empty interior upstairs alone does not supply independent base test functions. |
   | `l22_no_radial` | Add **moving spectral window**. A fixed compression can change singular values at second order. |
   | `l22_family` | Specify the physical real gauge representation of \(C_F\), its kernel and any unimodularity condition; \(u(C_F)\) itself has an extra abelian direction before that restriction. |
   | `l23_aligned` | Say “\(Q(a)=E_0(a)\) for constant ambient multipliers; the image is \(E_0(P)\). It equals \(P^{\rm ev}\) when \(\Gamma_0P\Gamma_0=P\).” This avoids reinstating the rejected algebra-image identification. |
   | `l23_wz` | Qualify the count of nine massless modes by \(0<\theta<\pi/2\); the endpoint symmetry is larger. |
   | `l25_mass`, `l25_sum_rule` | Identify the masses as **leading small-mass Taylor quotients for the specified constant transported profile**, using the unshifted unfolded-circle heat trace. Prefix the displayed identities in `l25_sum_rule` by “to leading order.” A lowest physical gauge branch requires the additional admissibility, positivity and isolation hypotheses. |

   The `l18_taylor` issue is a concrete numerical normalization error, not just missing terminology. For example, \(f(z)=e^{-z/10}\) belongs to the positive Laplace class and rescales the effective squared cutoff by ten; the universal bound \(\Lambda^2/e\) cannot survive unchanged.

   Conversely, the revised statements about the two sheet projections in `l16_two_sheets`, the added grading in `l16_twistor`, the local/global distinction in `l14_image`, and the conditional top-dominance statement in `l11_top` now respect the corresponding referee corrections.

13. **Correct — Contradictions 8 and 10.**

   [Canonical §14.3](../canonical_research.md) reads **Proved** for the stated Einstein–Hilbert ansatz and embedding. It explicitly separates that result from the additional postulate giving the \(p=5\) resonance.

   In §3, \(\varphi\) now consistently denotes the hypercharge phase, including
   \(\lambda^2=e^{-i\varphi}\). It collides with no other notation there.

   The two staircase parameter choices are separately recorded in `research_checks_knowledge.md`: \(b/a=0.02\) and \(0.01\) belong to different illustrative figures. Their general dimensional interpretation does not require the figures to use identical radii.

   Thus **resolved** is accurate for both entries in `ledger.pl` and `DUPLICATES.md`. **No further correction is required.**

14. **Correct — `rs_E2` as a missing record.**

   The `not_reconstructed` status and
   `open_items(missing_record(rs_E2))` correctly record missing provenance without deciding whether the reported flag value is right or wrong.

   We searched the four files in `transcripts/` and repository text, including hidden and ignored text files, for the flag discussion and variants of \(1/4\). The occurrences found repeat the report of the missing derivation or the separate \(SU(3)\) example. **No original flag derivation was located in the repository searched.** This finding makes no claim about unavailable conversations.

   The example in §3.3 is correct. Let
   \[
   T_8=\frac{\operatorname{diag}(1,1,-2)}{2\sqrt3},
   \qquad Y=T_8/\sqrt3.
   \]
   Then
   \[
   \operatorname{tr}T_3^2=\frac12,\qquad
   \operatorname{tr}Y^2=\frac16.
   \]
   Equal simple-group normalization gives
   \(g_YY=g_2T_8\), hence \(g_Y=\sqrt3g_2\), and
   \[
   \cos^2\theta_W=\frac{g_2^2}{g_2^2+g_Y^2}=\frac14.
   \]
   This proves the stated embedding example. It supplies no reconstruction of the missing flag calculation. **No correction is required.**

15. **Correct with amendment — tests and queries.**

   The SWI-Prolog run passed **13 of 14 tests**. The failing test is `self_checks_are_corpus_only`, with **two** nonnumerical, noncorpus causes:
   \[
   \boxed{\texttt{l18\_fully\_massive},\quad
          \texttt{steer\_tower\_coefficients}.}
   \]
   Therefore settling item 11 alone does not make the current test pass. Items 5 and 11 now supply independent analytic checks for both rows; those checks still need to be recorded.

   The new rules correctly find missing checkers, include numerical claims in `self_checked_only/1`, and expose missing records through `open_items/1`. Their limits should be explicit:

   - `rows_follow_the_referees` checks the presence of a Terra checker, Terra authorship, or an exception. It never examines the statement or the report’s verdict. Item 12 demonstrates why passing it does not establish mathematical agreement.
   - `contradictions_match_duplicates` checks that each ledger number has a matching state at the end of a Markdown row. It does not check the resolution’s substance, uniqueness, or the converse correspondence.
   - `nogo_models/2` counts distinct recorded agent identifiers, combining authors and checkers. Without a model-identity mapping and an independent-check condition, that is weaker than consensus among independent models.
   - `unchecked/1` is not restricted to corpus claims. Likewise, `self_checked_only/1` currently returns more than corpus claims and numerical orientations.

   **Corrections:** rename `rows_follow_the_referees` to something such as `refereed_claims_have_review_bookkeeping`, or add explicit claim-to-report verdict records. In README, remove the restrictive parentheticals “corpus claims only” and “corpus claims and numerical orientations.” Describe `nogo_below_consensus/2` as counting identifiers unless genuine model identities and independence are represented.

The outstanding amendments and errors are:

- Distinguish Witten’s cylinder from the mapping-torus formulation.
- State the Farsi–Latrémolière repairs as sufficient, correct the version numbering, and qualify the application and comparison claims.
- Correct the running table’s coupling notation, crossing order, small ratio discrepancies and threshold-dependent \(\kappa\) ranges.
- Describe infrared attraction as a quasi-fixed trajectory and identify \(235\) GeV as illustrative; use \(M_{\rm KK}\ge4M_W\) when invoking Lemma 23’s flat interior.
- Apply the ledger replacements in items 9 and 12, especially the spectral-window restriction, omitted hypotheses, Taylor-versus-pole distinction and cutoff-dependent normalization.
- Record the independent analytic checks supplied here for the tower coefficients, mixing bound and fully massive Proposition.
- Make the test and query descriptions match what their predicates actually inspect.

Overall: 8 Correct; 6 Correct with amendment; 0 Gap; 1 Error.