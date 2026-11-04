# Referee report on lemma 30, the note and the corrected case (a) of lemma 29, by Terra 6.1

Model gpt-6.1-terra, effort max, read-only sandbox, run on 4 November 2026 with the prompt [terra_check_30_note.md](../lemmas/prompts/terra_check_30_note.md). The report below is verbatim, except that local absolute links were rewritten as relative links. No Python was run by the referee.

Assessment by Claude Opus 5.5, reading it against the text. All items applied, with these checks. Item 7: correct; the bulk interpolation allowed by (H3) need not keep j_E parallel. The fix was checked by hand: j_E (n . J) j_E^-1 = -n . J gives j_E P_q j_E^-1 = P_{-q}, so j_E is parallel for the line-preserving connection and for real affine interpolation with the pull-back connection, which is the interpolation in tools/lemma28_radial.py, and C then commutes with i Phi_M as well as with D. The unconditional bound eta_t = O(M^{-1/2}) is adopted, with its proof written out. Item 4: correct; lemma 24 has V = C^4 with gradings of type (2, 2). Item 9, first point: the counterexample to the implication from the hierarchy alone is correct. Item 5: the sign in Proposition 29.10 and the missing projection estimate are applied; the Weyl constant has the rank 64 = 8 x 4 x 2. Item 1: the gap is an equality, since the next level is (pi - theta_max)/l. Item 13: the identifiers not already in the record were checked on arXiv. The source-level attributions to Parthasarathy, Bismut-Lebeau and Kirchberg stay unread, as the referee says. This was the last Codex job available in the weekly quota, so these corrections have had no further independent reading.

---

The main mathematical gap is in Proposition 30.7: the allowed case-(b) connections need not preserve the charge conjugation used in the proof. With an added compatibility hypothesis, the weighted argument gives the displayed exponential bound. A fresh reading of the corrected case (a) also found a remaining sign error in Proposition 29.10.

The interval and disc-bundle counting arguments otherwise support the stated joint limits, subject to the amendments below. No Python calculation was run in this review.

## Part A: lemma 30

1. **AMENDMENT — Theorem 30.1.** The compression constant \(2/3\), the gap bound and both counts agree with [Theorems 22.1 and 22.4](../lemmas/22_dirac_operator_as_boundary_condition.md). Add \(l_*>0\), \(E_*>0\), and the algebra and representation assumptions needed to define \(Q_\varepsilon(a)\) and \(\pi(a)\). Alternatively, state the compression estimate for a bounded even operator \(a\), using its operator norm.

   There are \(r/2\) singular values counted with multiplicity, and each gives two signed arithmetic progressions. These remain **\(r\) progressions with multiplicity** when singular values coincide or vanish. In particular, a zero singular value contributes two zero modes. Thus the moving-window count is \(r\), and the fixed-energy leading term is
   \[
   \frac{2rl_*E}{\pi}\varepsilon^{-\alpha}.
   \]
   For small \(\varepsilon\), the displayed lower bound for the first discarded level is in fact an equality:
   \[
   \Delta_\varepsilon=\frac{\pi}{l_\varepsilon}-\varepsilon\|D_*\|.
   \]

2. **AMENDMENT — Corollary 30.2.** The two endpoint pairs are correct for the **universal fully massive family**, with both members of every Standard Model doublet assigned the same Dirac mass and no Majorana mass. In that family the two commutator quotients are \(2m^2\) and \(16m^2/5\); multiplying them by \((3-d_{\rm eff})/2\) gives \((3,24/5)m^2\) as \(d_{\rm eff}\to0\) and \((2,16/5)m^2\) as \(d_{\rm eff}\to1\).

   [Lemma 25](../lemmas/25_sum_rule_effective_dimension.md) concerns the leading **Taylor quotient** for the heat-cutoff spectral action, with an even vector generator constant in the transported frame and an enlarged admissible gauge algebra. The interval poles belong to the separately specified five-dimensional Yang–Mills problem. The coefficient comparison holds at leading order; it does not identify the full spectral-action pole problem with that Yang–Mills problem.

   The path is correct:
   \[
   s=l_\varepsilon E_\varepsilon
     =l_*E_*\varepsilon^{\beta-\alpha}\longrightarrow0,
   \qquad
   \frac{m_\varepsilon}{E_\varepsilon}\longrightarrow0.
   \]
   At fixed \(\Lambda>0\), \(s\to\infty\) and \(m_\varepsilon/\Lambda\to0\). Lemma 25 states its expansion first at fixed \(s\); a joint-limit use should add a uniform remainder argument, or state explicitly that the displayed endpoints concern the leading coefficient. Varying the action cutoff is an additional prescription, as the corollary says.

3. **AMENDMENT — Proposition 30.3.** The root and asymptotics follow from [Theorem 9.4 and Lemma 9.5](../lemmas/09_massive_chiral_interval.md). For \(c>1\), the first oscillatory root satisfies
   \[
   \pi<k_1l<\frac{3\pi}{2},\qquad
   \frac{\Delta}{\mu}=\sqrt{1+\left(\frac{k_1l}{c}\right)^2}\longrightarrow1.
   \]
   The two tail identities follow from \(\mu=\kappa\coth s\) and \(m=\kappa/\sinh s\).

   The localized family needs a **new length**, since its length cannot also be the \(l_*\varepsilon^{-\alpha}\) of Theorem 30.1. State
   \[
   l_\varepsilon^{\rm loc}
   =\frac{(1-\alpha)\log(1/\varepsilon)+c_0}
          {\mu_*\varepsilon^\alpha},
   \]
   with \(\mu_*>0\) and \(0<\alpha<1\). The reuse of \(l_\varepsilon\) is also misleading in the note.

4. **ERROR — Corollary 30.4 for arbitrary finite data.** The cylinder in [lemma 24](../lemmas/24_commutative_parent.md) has \(\ker A\simeq\mathbb C^4\), with wall gradings having two positive and two negative directions. It does not realize an arbitrary dimension \(r\) from Theorem 30.1. For example, finite data with \(H_+=H_-=\mathbb C^3\) and \(D_*=0\) satisfy the interval hypotheses and have \(r=6\); the stated cylinder has a four-dimensional tangential kernel.

   Restrict the corollary to the compatible \(r=4\) data, or construct and state an enlarged tangential bundle for other dimensions. The gap estimate then follows from lemma 24. The seven-dimensional count needs an additional Weyl argument: Dirichlet and Neumann bracketing of the squared product operator give the same leading term as \(l_\varepsilon,r_\varepsilon\to\infty\), proportional to \(l_\varepsilon r_\varepsilon^6E^7\). Lemma 24’s gap estimate alone does not prove that asymptotic.

5. **AMENDMENT — Theorem 30.5 and corrected case (a).** For a fixed shape, it is legitimate to substitute \(M=M_\varepsilon\to\infty\) into Theorem 29.7 or 29.11. Proposition 29.8 supplies \(M_\eta,C_\eta\) independent of \(M\) after the shape and \(\eta\) are fixed. Substitution gives \(\lambda_M/R_\varepsilon\le C_\eta\varepsilon\). No uniformity in a varying shape is needed for this family.

   The domain of \(\widehat D_M\) is independent of \(M\): the wall projector is fixed and \(M V\) is bounded, with \(\|V\|\le(3/2)\sup f\). Min–max applied to the singular values gives the displayed comparison of the counting functions of \(|\widehat D_M|\) and \(|\widehat D_0|\). The local self-adjoint elliptic boundary problem has the usual leading Weyl law. Counting both signs and complex multiplicity,
   \[
   C_X=\frac{64\,\omega_7\,\operatorname{Vol}_g(X)}{(2\pi)^7},
   \]
   since the seven-dimensional spinor bundle has complex rank \(8\), \(E\) rank \(4\), and the operator is doubled. The estimate \(M_\varepsilon/R_\varepsilon\to0\) makes the bounded perturbation negligible at the counting threshold. The physical first discarded level also tends to zero: its shape-unit value is at most \(s_9(\widehat D_0)+cM_\varepsilon\).

   Dilation is exact under the canonical spinor identification and the \(L^2\) unitary factor \(R^{-7/2}\). With physical radial coordinate \(s=Rr\), the potential is
   \[
   \frac{M}{R}\,f(s/R)\,n\!\cdot\!J.
   \]
   A radial half-density normalized with respect to \(ds\) acquires the corresponding \(R^{-1/2}\) factor. The compression estimate uses \(C^1\) norms in fixed shape coordinates. Add \(0<\delta\), \(E_*>0\), and state that if \(m_\varepsilon=0\), zero has total multiplicity eight.

   **Fresh check of case (a).** The corrected chiral definition of \(A_{\rm eff}\), the profile overlap \(\sqrt3/2\), the perturbation bound \(3/2\), and the squared nonzero singular values
   \[
   \frac{45\pm3\sqrt{33}}8
   \]
   are consistent. The displayed matrix at \(\rho=1\) has kernel \((-2,1,1)\), giving signed fibre part \((-4-1+1)/6=-2/3\). However, [Proposition 29.10](../lemmas/29_window_on_the_disc_bundle.md) still says that the fibre part tends to \(+w(\rho)\). It must say **\(-w(\rho)\)**. Theorem 29.11 has the correct sign.

   The adjoint estimate in Proposition 29.10 also needs one explicit step. Orthogonality to the *exact* half-cylinder kernel does not immediately give orthogonality to \(\ker F^*\). The Schur-complement graph estimate gives
   \(\|P_{\ker T_M^*}-P_{\ker F^*}\|=O(1/m)\); inserting this projection estimate supplies the required \(O(1/m)\) loss. With that addition, no further error was found in the corrected case-(a) block argument.

6. **CONFIRMED — Proposition 30.6.** Normalized angular Haar measure and Schur’s lemma give
   \[
   Q(f)=\frac4{\int\operatorname{tr}B}
        \int\!\!\int f(r,g)\lambda(g)^{-1}B(r)\lambda(g)\,dg\,dr .
   \]
   Quaternionic conjugation exchanges \(b_+\) and \(b_-\), so
   \(\|B-P_{\mathbb H}B\|=|b_+-b_-|/2\). This gives \(2\eta_t\). Each compression of a real \(f\) with \(\|f\|_\infty\le1\) is a contraction; telescoping against its \(j\)-conjugate gives \(2k\eta_t\) for a product of \(k\) such compressions.

7. **ERROR — Proposition 30.7 as stated for all allowed connections.** The proof assumes \(CT_M=T_MC\) throughout the interior. [Setting 29.0](../lemmas/29_window_on_the_disc_bundle.md) permits any invariant unitary interpolation in the bulk; it does not require that interpolation to preserve \(j_E\).

   This is a failure of a stated premise in the proof. For an allowed connection that is pull-back on a bulk annulus, put \(q=n\!\cdot\!J\) there and add the invariant skew-Hermitian connection form
   \[
   i\,h(r)\,\nabla^0(q^2),
   \]
   with real \(h\) supported inside the annulus. It has no radial component and leaves both end hypotheses intact. Since \(j_Eq^2j_E^{-1}=q^2\), antiunitarity sends this added form to its negative. Consequently \(j_E\) is not parallel and \(C\) need not commute with the resulting twisted Dirac operator. This example shows the failure of the asserted symmetry; it does not by itself establish a counterexample to the exponential estimate.

   Add \(\nabla^E j_E=0\), or another explicit hypothesis proving the same global symmetry. Under that hypothesis, the other checks work as follows.

   - \(C^2=j^2=-1\), so \(F\mapsto CFj^{-1}\) is an antilinear involution on \(\operatorname{Hom}_G(\mathbf4,-)\). On the core it preserves \(D_H\), the full fibre term \(i\widehat Q\), and \(R\). With the conventions of Proposition 29.1, it anticommutes with \(\widehat Q\) itself, because it is antilinear.
   - The phase can make \(\langle\chi_cF_0,u\rangle\) real, and then \(\Pi(\chi_c\zeta)=0\). The qualification by \(\chi_c\) is essential.
   - On \(r\le l-a\), \(g+\widetilde g=G\). The cut-off \(\xi\zeta\) vanishes near the wall and belongs to the required domain. The bulk first-order term has a positive \(\eta\)-margin; the core estimate uses the projection condition. The derivative of the wall cut-off is supported where \(g=G\), so its contribution is \(O(e^{-G})\). Thus the proposed argument gives \(\|\xi\zeta\|=O(e^{-G})\).
   - Pointwise,
     \[
     |b_+-b_-|
       \le(\|F\|+\|CF\|)\|\zeta\|.
     \]
     Weighted Cauchy–Schwarz on \(r\le l-a\), and the \(L^2\) tail bound beyond \(l-a\), both give \(O(e^{-2G})\).

   Therefore, **conditional on global \(C\)-preservation**, the proof gives
   \[
   \eta_t\le C_\eta
      \exp\!\left[-(1-\eta)M\int_{2e}^{l-a}f\,dr\right].
   \]
   The integral starts at \(2e\), whereas Proposition 29.8 displays the tunnelling bound starting at \(e\); the stated exponent is therefore not literally twice that displayed tunnelling exponent. A smaller core cut-off can be chosen if the comparison is to use the same starting radius.

   Under the original general connection hypotheses, the window estimate still gives
   \(\eta_t=O(M^{-1/2})\): choose an equivariant normalized core model fixed by the local real structure and use the \(L^2\) distance to that model from Theorem 29.7. Finally, an exponential upper bound expressed in \(M\) does not imply \(O(\lambda^2)\) without a lower bound on \(\lambda\).

   The Python samples cited at [lemma 30, line 106](../lemmas/30_massless_limit_as_a_joint_limit.md) vary the length at fixed mass and use profiles outside Setting 29.0. They support a qualitative comparison and do not test the stated \(M\to\infty\) theorem.

8. **AMENDMENT — Remark 30.8.** The vector-sector and connector obligations are accurately identified. The gauge formula assumes a fixed microscopic coupling, a constant internal Yang–Mills profile and the stated normalization; then \(g_4\propto R^{-7/2}\).

   For the toy potential, require \(a,b,p,q>0\). Its unique minimum is
   \[
   r_\varepsilon=
   \left(\frac{ap}{bq}\right)^{1/(p+q)}
   \varepsilon^{-2/(p+q)},
   \]
   and \(p+q>2\) gives \(0<\alpha<1\). The complete-manifold sentence just before the remark also needs qualification: global charge conjugation gives a real structure on the multiplicity space, but the provided argument does not establish that this space is one-dimensional for **every** \(M\) or for every completion. Exact quaternionicity of a selected core copy follows if that multiplicity is one.

## Part B: the note

9. **ERROR — Several statements exceed their supplied hypotheses.** The following corrections are needed in [joint_limit_note.tex](../paper/joint_limit_note.tex).

   - **Hierarchy, lines 40–44.** The hierarchy alone does not imply that the fixed-energy count diverges. For a compact-resolvent counterexample, take signed spectrum
     \[
     0,\quad \pm\varepsilon^\alpha,\quad \pm1,\quad \pm2,\ldots
     \]
     and \(E_\varepsilon=\varepsilon^\beta\), \(\alpha<\beta<1\). The hierarchy holds with one retained zero mode, while \(N_\varepsilon(E)=3\) for fixed \(0<E<1\) and small \(\varepsilon\). State divergence as a separate property proved for the specific families.
   - **Interval and cylinder, lines 50–79.** Add the representation assumptions for the compression bound, separate the localized length from the angle-family length, and restrict the unmodified cylinder to compatible four-dimensional kernel data, as in items 1, 3 and 4. State the scope of the heat-cutoff Taylor quotient from item 2.
   - **Disc-bundle hypotheses, lines 83–90.** Define \(S=G\times_K(1,2)\) and its pull-back in \(E=S^3(S)\); state the round \(S^4\) radius, smoothness and positivity of \(\rho\) and \(f\), \(f_0>0\), and \(Sp(2)\)-invariance of the connection. The displayed metric with \(\rho=r\) does encode flat normal fibres near the core; the note also explicitly states constant \(f\) and the Fubini–Study radius on the collar. Case (a) in lemma 29 assumes the pull-back connection throughout, whereas the note only specifies it near the two ends. A bulk interpolation may be treatable by the bulk estimate, but that extension needs to be stated and proved.
   - **Sign and localization, lines 87–90.** The sign selects the core kernel of the **end model**. At finite \(M\), the full \(T_M\) can have nonzero tunnelling singular value. Describe the two four-dimensional subspaces by their proved proximity to the cut-off core and wall models, rather than as exact states at the two ends.
   - **Core proof, line 99.** The gap of the first-order fibre operator is of order \(\sqrt M\); the gap of its square is of order \(M\). \(D_H\) exchanges the relevant base chiralities and need not preserve the actual one-chirality fibre kernel. The argument uses the normal-mode projection extended over both chiralities, or the commutation of the actual kernel projection with \(D_H^2\).
   - **Bulk and wall, lines 101–110.** Replace the variable-\(f\) lower bound by an integral bound or a bound using the minimum of \(f\) on the support. Restrict the asserted wall gap to the relevant stable \(q>0\) channels: the full line sum also includes the \(\mathcal O(-3)\) zero modes. The case-(a) value \(-w(\rho)\) is the limiting effective-wall value, with a finite-\(M\) correction.
   - **Tunnelling and joint limit, lines 128–162.** Define the integration endpoints and the fixed cut-offs \(e,a\), rather than writing only “over the bulk.” State the equivariant identifications and the shape-coordinate \(C^1\) norm in the compression estimate. Include the zero-mass multiplicity qualification from item 5.
   - **Defect, lines 166–175.** Add the global charge-conjugation compatibility from item 7. Replace “no component on the model kernel” by \(\Pi(\chi_c\zeta)=0\), and distinguish the two action integrals in the tunnelling and defect estimates. The assertion that only the wall breaks \(C\) also needs the added connection hypothesis.
   - **Bimodule, line 185.** Specify “32 complex-dimensional bimodule with a real structure,” equivalently 64 real dimensions before taking a real fixed subspace.
   - **Status, line 189.** Lemma 29 case (b) had a Terra referee report; the corrected case-(a) text had not had a second reading. Proposition 30.7 and Theorem 30.5 were new.

10. **AMENDMENT — Physics framing and named sources.** The abstract acknowledges that the disc-bundle vector poles remain open, and the body says that \(\mathbf4\) is pseudoreal. Put both qualifications next to the headline claim: the disc-bundle result treats a **fermion** window, and no calculation identifies its tunnelling scale with \(M_W\) or \(M_Z\). The title should describe a target electroweak limit or a fermion joint limit. The auxiliary \(\widehat\Gamma\)-grading and the zero virtual \(Sp(2)\)-index do not establish the chiral Standard Model spectrum.

   The reading of [Witten’s October 1983 preprint, pp. 7–8 and 43–44](https://inspirehep.net/files/aafed6325868aabd22bea81c916b789e), is consistent at the stated level. Witten discusses vectorlike quantum numbers under the specified geometric gauge assumptions and states equivariant cobordism invariance of the character-valued index. Here the extending object is the **sum** of the four line summands; the individual \(\mathcal O(k)\) do not all extend. The signed indices are \((4,0,0,-4)\). This index permits the spectral pairing and does not prove the window.

   [Maridakis, arXiv:2110.11654v2, §2, Assumption 3](https://arxiv.org/html/2110.11654) requires a direction-independent leading endomorphism. For spin \(3/2\), \((n\!\cdot\!J)^2\) depends on \(n\) as an endomorphism, even though its eigenvalues are direction-independent. The paper also works on a closed manifold, so the boundary layer requires separate analysis.

   The Bryant–Salamon qualification is correct. [Karigiannis–Lotay, arXiv:2002.06444v3, Eq. (3.36) and Theorem 3.6](https://arxiv.org/pdf/2002.06444) gives a complete asymptotically conical \(G_2\) metric on the same total bundle, with a radial horizontal scale and non-flat fibre metric outside Setting 29.0. Homothetic enlargement of the fixed shape has a flat pointed limit at a fixed interior point; a fixed boundary point gives a half-space limit.

11. **AMENDMENT — Citations and companion drafts.** The internal interval references support the exact spectrum and the qualified Taylor coefficient. The note should preserve the companion draft’s explicit distinction between a leading Taylor quotient and a pole calculation. [towerless_intervals.tex](../paper/towerless_intervals.tex) treats the relation between the KO labels and geometric limits as a proposal; the joint note’s introduction presents that relation more definitively and should retain the proposal status.

   [Connes–van Suijlekom, §1](https://link.springer.com/article/10.1007/s00220-020-03825-x) supports the operator-system discussion. Replace “generated algebras do not converge when compression maps do” at line 146 by “need not converge”; constant families already show that convergence can occur.

   The Kirchberg citation is apt for the **untwisted** \(R/3\) consistency check in complex dimension three. It does not by itself prove the twisted \(\mathcal O(k)\) spectrum. Kirchberg’s [1990 paper, introduction and Theorem 2](https://www.electronicsandbooks.com/edt/manual/Magazine/J/Journal%20of%20Geometry%20and%20Physics/V07/JGeomPhys_V07_p0449.pdf), explicitly gives the odd-dimensional bound and identifies \(\mathbb{CP}^3\) as a limiting case. The Parthasarathy and Bismut–Lebeau entries have matching bibliographic identities in the [Annals record](https://annals.math.princeton.edu/1972/96-1/p01) and [Numdam record](https://www.numdam.org/item/PMIHES_1991__74__1_0/), respectively; their full original texts could not be checked directly in this review, so the precise source-level attribution remains unchecked here. The numerical normalization in lemma 29 must be justified in the argument.

   [Baptista, arXiv:2506.09126v2, §1 and Eq. (1.2)](https://arxiv.org/html/2506.09126), supports the distinction between Killing and non-Killing metric modes in its stated Kaluza–Klein setting. It does not calculate the vector sector on this disc bundle.

12. **AMENDMENT — Table I.** Every displayed \(M=32\) row matches [lemma 29’s Python table](../lemmas/29_window_on_the_disc_bundle.md). The first \(\mathbf{16}\) entry is the core value and the second is the wall value; on the \(\mathbf{20}\), the first is the wall value and the second is the core value. Adding those labels would make the comparison easier to assess.

   The smallest computed \(\mathbf4\) value is floor-dominated at the reported meshes. Its mesh dependence does not determine whether the continuum value vanishes. The stated \(0.005\) wall discrepancy is a Python mesh observation from the source, not an independently established error bound. The caption should attribute the limit values to the end models and their spectral comparison: the window theorem by itself gives the low-window count and gap, not all individual excited limits.

13. **AMENDMENT — Prior results and comparison.** Several mechanisms in the note have established precedents that an expert would expect to see distinguished from the new combination.

   - [Kaplan, hep-lat/9206013v1, Eqs. (0) and surrounding discussion](https://arxiv.org/html/hep-lat/9206013), derives chiral defect localization. [Shamir, hep-lat/9303005v1, §§1–3](https://arxiv.org/html/hep-lat/9303005), treats boundary fermions and the finite fifth direction. These precede the interval localization mechanism.
   - [Csáki et al., hep-ph/0305237v1, §§2 and 6](https://arxiv.org/html/hep-ph/0305237), derives gauge symmetry breaking by interval boundary conditions. [Cacciapaglia–Csáki–Park, hep-ph/0510366v2, §5](https://arxiv.org/pdf/hep-ph/0510366), obtains \(m_t=2M_W\) at tree level for a suitable rank-four representation. Neither source establishes the lemma-25 crossover.
   - [Maridakis, arXiv:1510.07004v1, Lemma 2.2](https://arxiv.org/html/1510.07004), gives the concentrating-pair square identity. [Kaad–van Suijlekom, arXiv:1710.03182v1, Proposition 18](https://arxiv.org/html/1710.03182), gives a horizontal–vertical Dirac factorization with a curvature contraction. Their settings differ from the stated seven-dimensional boundary problem.
   - [Kottke, arXiv:0909.5661v2, §5](https://arxiv.org/html/0909.5661), gives a families Callias index theorem under asymptotically conic hypotheses. It supplies index information under those hypotheses; the finite boundary-window estimate is a separate question.
   - [Iso–Kitazawa–Suyama, arXiv:2111.06508v2, §§1 and 4–5](https://arxiv.org/pdf/2111.06508), follows massive Kaluza–Klein gauge modes that become massless during symmetry restoration in flux compactifications. The mechanism and geometry differ from the present joint family.

   Witten’s closed-geometry index restrictions and the boundary construction have different hypotheses; no contradiction was found in the checked records. These targeted checks do not establish priority for the eight-state theorem.

## Corrections in order of severity

1. Add global charge-conjugation compatibility to Proposition 30.7 and the note, or supply a different proof for the allowed case-(b) interpolations. Retain the unconditional \(O(M^{-1/2})\) defect estimate until then.
2. Remove the claimed implication from the hierarchy alone to divergent fixed-energy counting; retain the separate counts proved for the named families.
3. Correct Proposition 29.10’s signed fibre part to \(-w(\rho)\), and add the projection estimate for the adjoint wall bound.
4. Restore the disc-bundle hypotheses in the note, restrict the cylinder data, and give the localized interval family its own length.
5. Qualify the electroweak, chirality, Taylor-mass and finite-versus-limit compression claims in the title, abstract and theorem statements.