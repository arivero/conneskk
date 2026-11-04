# Heavy W in the spectral-action family forces a heavy fermion

Theorem T5 of [../STRATEGY.md](../STRATEGY.md). Proved by Claude Opus 5.5 without Astra or Fable. Refereed by Terra 6.1 (gpt-6.1-terra, effort max, 3 Nov 2026): Proposition 11.1 correct; Corollaries 11.2 and 11.3 and the regime amendment overstated their conclusions as first written; corrected below, report appended. The result is conditional on the Chamseddine-Connes-Marcolli normalization at the matching (unification) scale.

**Hypothesis (CCM relation).** In the spectral action of the almost-commutative Standard Model, the gauge normalization g^2 f_0 / (2 pi^2) = 1/4 and the Higgs normalization by a = Tr(Y_nu* Y_nu + Y_e* Y_e + 3(Y_u* Y_u + Y_d* Y_d)) give, at the matching scale,

    8 M_W^2 = sum over generations of (m_nu^2 + m_e^2 + 3 m_u^2 + 3 m_d^2),

where the m are Dirac masses (Chamseddine-Connes-Marcolli, Adv. Theor. Math. Phys. 11 (2007), section 5). In outline (H the unrescaled Higgs field of CCM; the normalization is the three-generation one): the Dirac masses satisfy sum N_f m_f^2 = a abs(<H>)^2, while M_W^2 = (g^2/4)(a f_0/pi^2) abs(<H>)^2 with f_0 = pi^2/(2 g^2). Majorana masses do not enter a.

**Proposition 11.1.** Assume the CCM relation at fixed gauge coupling, with N_g generations, and let m_max be the largest Dirac mass. Then

    m_max / (2 sqrt 2) <= M_W <= sqrt(N_g) m_max.

In particular M_W -> infinity if and only if m_max -> infinity.

*Proof.* Every term has weight at least 1, so 8 M_W^2 >= m_max^2. Each generation has weights 1 + 1 + 3 + 3 = 8, so 8 M_W^2 <= 8 N_g m_max^2. ∎

**Corollary 11.2 (no-go for the fixed-mass prescription).** The heavy-W prescription of canonical 14.1 and research_state 9 (v -> infinity with y_f v fixed for every fermion and the gauge couplings fixed, so that the Yukawa couplings tend to zero) is incompatible with the CCM relation: the right-hand side stays bounded while M_W -> infinity. In the spectral-action family a heavy-W/Z limit forces m_max -> infinity, with m_max >= M_W/sqrt(N_g); some species is then unbounded along a subsequence, though no single fixed species need diverge along the whole family (the referee report gives a family with m_e^2 + m_nu^2 = 8 t^2 in which each mass returns to zero infinitely often). ∎

**Corollary 11.3 (only the top heavy).** Assume that the up-type Dirac mass of one generation (three colors) diverges and every other Dirac mass stays bounded. Then

    m_t^2 = (8/3) M_W^2 + O(1),   so   m_t / M_W -> sqrt(8/3), approximately 1.633.

Top dominance is a hypothesis here: the relation alone also allows, for example, y_e = 2g with every other Yukawa zero, which gives m_e = 2 sqrt(2) M_W and m_t = 0. Under the hypothesis, the surviving SU(3) x U(1)_em theory is vectorlike and anomaly-free, and job 03 gives the residual kinetic weights. ∎

**Remark (interval comparison).** In the massless chiral interval of job 05, the fermion truncation mass and the Neumann-Dirichlet gauge mass both equal pi/(2l) (Lemma 9.11). Under top dominance (Corollary 11.3), the CCM relation instead fixes m_t / M_W = sqrt(8/3) at matching. The interval model and the spectral action therefore assign the top and the W to the same scale with different order-one ratios. Matching them is part of T4.

**Amendment (regime of validity; review of 3 Nov 2026; corrected after the referee report).** The CCM relation is a relation in the truncated asymptotic (heat-kernel) action at the matching scale Lambda; small Dirac masses relative to Lambda alone do not make it exact for the full finite-cutoff action, which also needs control of momenta and of the Majorana sector. With fixed Yukawa couplings, M_W and every mass with nonzero Yukawa diverge together as v -> infinity, with ratios fixed by all the Yukawas through the matching constraint (for example y_t = y_nu = g gives m_t/M_W = sqrt 2); Corollary 11.3's ratio needs top dominance. At fixed Lambda a heavy-W limit leaves every fixed small-mass hierarchy (m_max <= eps Lambda implies M_W <= sqrt(N_g) eps Lambda), so it needs Lambda -> infinity jointly or a calculation of the finite-cutoff action. The weights f(m^2/Lambda^2) of [lemma 03](03_mass_weighted_kinetic_terms.md), Part A, hold under its commuting finite-operator hypothesis and do not apply directly to the broken gauge and Higgs kinetic terms (Part C's w_L(x, 0) = 1 - 3x/4 + O(x^2) differs from f); near the cutoff the coefficients need their own calculation (STRATEGY T5b).

**Literature ([../LITERATURE.md](../paper/LITERATURE.md), section E).** The mass relation and the top ratio are in CCM 2007: equation (1.5), Lemma 4.6 equation (4.16) and section 5.4 equation (5.27). Corollary 11.3 restates that result; Proposition 11.1 and Corollary 11.2 apply it to the heavy-W prescription of the corpus.

## Referee report on lemmas 10 and 11 (gpt-6.1-terra, effort max, 3 Nov 2026)

Prompt: [prompts/terra_check_10_11.md](../historical/prompts/terra_check_10_11.md). Reproduced as received; the corrections above (and in lemma 10) implement it. Claude checked the counterexamples (the rotating e/nu family; y_e = 2g; y_t = y_nu = g) and the corrected fourth moment by hand.

We count Proposition 10.1, Proposition 11.1, the two corollaries, and the regime-of-validity amendment as five statements. The checks below are analytic; we did not rerun the Monte Carlo calculation.

### [Proposition 10.1](10_toeplitz_twistor.md)

**Verdict: Correct with amendment.** All three identities and the normalization of \(Q\) are correct. The displayed fourth-moment formula in the proof has an index error, and its subsequent contraction is consequently incorrect as written.

For \(w\) uniformly distributed on \(S^7\subset\mathbb C^4\), the moments are

\[
\mathbb E\!\left[\prod_{r=1}^{p}w_{j_r}\overline{w_{i_r}}\right]
=
\frac{\displaystyle\sum_{\sigma\in S_p}
\prod_{r=1}^{p}\delta_{j_r i_{\sigma(r)}}}
{4\cdot5\cdots(3+p)}.
\]

Thus the fourth moment required in the proof is

\[
\mathbb E[w_jw_k\overline{w_i}\overline{w_l}]
=
\frac{\delta_{ij}\delta_{kl}+\delta_{jl}\delta_{ki}}{20}.
\]

The file instead has \(\delta_{il}\delta_{kj}\) as its second term. For example, with \(i=l=1\) and \(j=k=2\), its formula gives \(1/20\), whereas the expectation is zero by phase invariance. Contracting the erroneous formula with \(A_{ij}\) gives \(A_{lk}\), not the claimed \(A_{kl}\).

The sixth-moment statement is correct: its denominator is \(4\cdot5\cdot6=120\), and its numerator is the sum over all six matchings. Also,

\[
Q(1)=4\mathbb E[ww^*]=I.
\]

For any \(4\times4\) matrix \(A\), the corrected moments give

\[
Q(w^*Aw)=\frac{\operatorname{tr}(A)I+A}{5}
\]

and

\[
Q((w^*Aw)^2)
=\frac{
\big((\operatorname{tr}A)^2+\operatorname{tr}(A^2)\big)I
+2\operatorname{tr}(A)A+2A^2}{30}.
\]

For \(A=\Gamma_a\), conjugation by a different Clifford generator shows \(\operatorname{tr}\Gamma_a=0\), while \(\Gamma_a^2=I\) and \(\operatorname{tr}(\Gamma_a^2)=4\). Consequently,

\[
Q(x_a)=\frac{\Gamma_a}{5},\qquad
Q(x_a)^2=\frac{I}{25},\qquad
Q(x_a^2)=\frac{I}{5}.
\]

### [Proposition 11.1](11_spectral_action_heavy_w.md)

**Verdict: Correct.** For a fixed, finite \(N_g\), the proof follows from the assumed relation. If \(S\) denotes its weighted mass sum, then

\[
m_{\max}^2\leq S\leq 8N_gm_{\max}^2.
\]

Substituting \(S=8M_W^2\) proves both bounds and the equivalence of the two divergence statements.

The CCM relation is quoted correctly for the three-generation model. In [Chamseddine–Connes–Marcolli, arXiv:hep-th/0610241v1, equations (1.5), (4.10), (4.15)–(4.17), and (5.25)–(5.26)](https://arxiv.org/html/hep-th/0610241), the weights are \(1,1,3,3\); \(g\) is the weak coupling at matching; and the neutrino terms are **Dirac Yukawa mass parameters**, not the eigenmasses of the full seesaw matrix. The Majorana matrix does not enter the trace \(a\), although it enters other terms in the action. CCM states that the mass relation is valid “at unification scale.”

The outline preceding the proposition should identify its \(\langle H\rangle\) as the **unrescaled** spectral Higgs field. CCM’s canonically normalized field is \(\mathbf H=(\sqrt{af_0}/\pi)\varphi\). Equivalently, using the standard normalized Yukawas and \(v\),

\[
m_f=\frac{y_fv}{\sqrt2},\qquad M_W=\frac{gv}{2},\qquad
\sum_f N_fy_f^2=4g^2,
\]

which gives the quoted mass relation.

There is also a scope distinction for \(N_g\ne3\). Proposition 11.1 remains true under its explicitly assumed relation, but CCM derives the coefficient \(8\) for three generations. If we replicate the same gauge representations \(N_g\) times and normalize their gauge kinetic term in the same way, the gauge trace scales by \(N_g/3\), giving instead

\[
\sum_fN_fm_f^2=\frac{8N_g}{3}M_W^2.
\]

Thus the \(N_g\)-generation version with coefficient \(8\) is an additional assumption beyond the cited normalization.

### [Corollary 11.2](11_spectral_action_heavy_w.md)

**Verdict: Error.** The fixed-mass no-go and the displayed bound are correct. The subsequent assertion that a particular Dirac mass must *tend to infinity* is stronger than the relation proves for a general family.

If all finitely many Dirac masses are bounded, Proposition 11.1 bounds \(M_W\). Moreover, it gives exactly

\[
m_{\max}\geq \frac{M_W}{\sqrt{N_g}}.
\]

Thus \(M_W\to\infty\) forces \(m_{\max}\to\infty\), and at least one fixed species is unbounded along a subsequence. It need not force one fixed species to tend to infinity along the whole family.

For a counterexample with fixed gauge coupling, let \(t\to\infty\), put \(M_W=t\), and take all Dirac masses except one charged-lepton mass and one neutrino Dirac mass to be zero. Set

\[
\theta(t)=\frac{\pi}{4}(1+\sin t),\quad
m_e=2\sqrt2\,t\cos\theta(t),\quad
m_\nu=2\sqrt2\,t\sin\theta(t).
\]

Then \(m_e^2+m_\nu^2=8t^2\), so the assumed CCM relation holds. Nevertheless, each of \(m_e\) and \(m_\nu\) vanishes on an unbounded sequence. The corresponding Yukawa couplings vary; the gauge coupling can remain fixed.

The description of the fixed-mass prescription should also say **gauge couplings fixed**: nonzero fixed fermion masses with \(v\to\infty\) require their Yukawa couplings to tend to zero.

### [Corollary 11.3](11_spectral_action_heavy_w.md)

**Verdict: Error.** The displayed asymptotic formula is correct under the stated “only the top heavy” hypothesis. The claim that a heavy top follows from the spectral action, without that choice or another hypothesis selecting it, is false.

Let \(R\) be the weighted sum of all the other Dirac masses squared. Under the hypothesis, \(R=O(1)\), and

\[
8M_W^2=3m_t^2+R
\quad\Longrightarrow\quad
m_t^2=\frac83M_W^2-\frac13R.
\]

This proves the stated \(O(1)\) formula and \(m_t/M_W\to\sqrt{8/3}\).

For a counterexample to the unconditional heavy-top claim, take \(y_e=2g\) and every other normalized Yukawa coupling, including \(y_t\), equal to zero. The matching constraint is satisfied, \(m_e=2\sqrt2\,M_W\), and \(m_t=0\). The relation therefore permits a heavy charged lepton with no heavy top. CCM’s equation (5.27) likewise obtains the top ratio by neglecting the other Yukawa couplings; its equation (5.29) considers a comparable neutrino Yukawa instead. The [interval-comparison remark](11_spectral_action_heavy_w.md) needs the same top-dominance qualification.

The assertion about the surviving \(SU(3)\times U(1)_{\rm em}\) representation is correct for the stated Standard Model field content: each surviving charged Dirac fermion has identical left- and right-handed representations of the unbroken group. Their anomaly contributions cancel pairwise, and neutral Majorana states do not contribute to these gauge anomalies.

### [Amendment on the regime of validity](11_spectral_action_heavy_w.md)

**Verdict: Error.** The warning about a fixed cutoff is justified, but the amendment overstates both the fixed-Yukawa conclusion and the form of the threshold weights.

First, fixed Yukawa couplings do not by themselves imply a heavy top or the ratio in Corollary 11.3. A fixed nonzero \(y_t\) gives

\[
\frac{m_t}{M_W}=\frac{\sqrt2\,y_t}{g},
\]

but its value depends on the other Yukawas through the matching constraint. For example, \(y_t=y_\nu=g\), with all others zero, satisfies that constraint and gives \(m_t/M_W=\sqrt2\); both masses diverge as \(v\to\infty\). If \(y_t=0\), the top does not diverge. Corollary 11.3 applies only when the other Dirac masses remain bounded.

Second, the displayed CCM relation is a relation in the **truncated asymptotic action**. Small Dirac masses relative to \(\Lambda\) alone do not establish it as an exact relation for the full finite-cutoff action: the expansion also needs control of the other relevant scales, including momenta and the Majorana sector, or a suitable uniform remainder estimate. CCM’s own discussion places a Majorana scale of order \(\Lambda\) in one scenario; see its equations (5.16)–(5.21).

At fixed \(\Lambda\), the amendment correctly observes that a heavy-\(W\) limit cannot remain within a fixed small-mass hierarchy. Indeed, if \(m_{\max}\leq\varepsilon\Lambda\), Proposition 11.1 gives \(M_W\leq\sqrt{N_g}\varepsilon\Lambda\). A limit within that hierarchy requires a joint family with \(\Lambda\to\infty\), together with the necessary control of the remaining scales.

Finally, the simple weights \(f(m^2/\Lambda^2)\) in [lemma 03, Part A](03_mass_weighted_kinetic_terms.md) have a commuting finite-operator hypothesis. They cannot be assigned generally to broken gauge and Higgs kinetic terms. In particular, that same file’s [Part C](03_mass_weighted_kinetic_terms.md) gives, for a broken weak generator with one heavy and one massless partner and the squared-operator cutoff \(f(x)=e^{-x}\),

\[
w_L(x,0)=3\int_0^1u^2e^{-xu}\,du
=1-\frac34x+O(x^2),
\]

which differs from \(f(x)=1-x+O(x^2)\). Near the cutoff, the appropriate coefficients and any replacement for the CCM relation require a calculation under specified hypotheses.

### Amendments and errors found

- Correct the fourth-moment indices in Proposition 10.1’s proof; the three proposition identities are unchanged.
- Specify the unrescaled Higgs field in the CCM outline and retain the three-generation scope of the cited normalization.
- In Corollary 11.2, assert divergence of \(m_{\max}\), or add a hypothesis ensuring that one fixed species tends to infinity.
- In Corollary 11.3 and the interval remark, make top dominance a hypothesis; it is not forced by the mass relation.
- In the regime amendment, qualify fixed-Yukawa claims, distinguish the truncated action from the finite-cutoff action, and restrict the simple threshold weights to their applicable commuting setting.

Overall: 5 statements checked; 1 correct, 1 amended, 0 gaps, 3 errors.
