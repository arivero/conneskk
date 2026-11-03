# Referee report on the two-model no-go results and lemma 19

By Terra 6.1 (gpt-6.1-terra, effort max), 3 Nov 2026; prompt in [../lemmas/prompts/terra_check_nogo_19.md](../lemmas/prompts/terra_check_nogo_19.md). Reproduced as delivered, with links relativized. The corrections are incorporated in lemmas 05, 06 and 19.

We checked the statements below by direct mathematical reasoning. No numerical computation was run. Each numbered verdict contributes one count to the final line.

## Part 1. Bare limits and odd factorizations

### 1. The limit \(m\to0\) in [Lemma 05, Part 4](../lemmas/05_deconstruction_interval.md)

**Verdict: Correct with amendment.** The fixed-rank statement is correct. The phrase “exact continuum limit throughout a fixed positive energy window” should specify the mode of convergence.

At fixed \(N\), \(D_N=mT_N\), with \(T_N\) independent of \(m\). Hence, for fixed \(t>0\),
\[
K_N(t)=\operatorname{Tr}e^{-tm^2T_N^2}\longrightarrow 2(N-1).
\]
The ultraviolet heat dimension is zero for each finite \(N\). The distances between distinct sites are proportional to \(1/m\) and diverge.

For \(l\to\infty\), the condition \(N/l\to\infty\) gives uniform convergence of the finite-chain dispersion to the continuum dispersion on every fixed bounded energy window. It also gives convergence of normalized heat traces and counting densities. It does not by itself give convergence of the *unnormalized difference* \(K_N(t)-K_l(t)\) to zero.

To see the distinction, put
\[
b=\frac{l}{2N-1},\qquad
k_r=\frac{(r-\tfrac12)\pi}{l},\qquad
\theta=\frac{\pi}{4N-2}.
\]
Then
\[
\lambda_{N,r}=\frac{\theta}{\sin\theta}\frac{\sin(bk_r)}{b}.
\]
For example, taking \(N=\lfloor l^{5/4}\rfloor\), expansion of the Gaussian sums gives, for fixed \(t>0\),
\[
K_N(t)-K_l(t)\sim
\frac{l^3}{16\sqrt{\pi}\,t^{3/2}N^2},
\]
which diverges, although \(K_N(t)/l\to1/\sqrt{\pi t}\).

**Direction.** The finite-rank obstruction concerns the stated bare chain and heat trace. A resolved decompactification requires growing rank; the rate should be chosen for the desired notion of spectral convergence.

### 2. The limit \(m\to\infty\) in [Lemma 05, Part 4](../lemmas/05_deconstruction_interval.md)

**Verdict: Correct.** Every eigenvalue of the massless chiral interval, and of the calibrated finite chain, has magnitude at least
\[
m=\frac{\pi}{2l}.
\]
Thus, at every fixed cutoff \(\Lambda\), the light spectral projection vanishes once \(m>\Lambda\). At fixed \(N\),
\[
\|(D_N-i)^{-1}\|=\frac1{\sqrt{m^2+1}}\longrightarrow0,
\qquad
d_N(i,j)\longrightarrow0.
\]
The zero resolvent limit on the original nonzero Hilbert space is not the resolvent of a finite self-adjoint operator there. The metric collapse and the empty fixed-energy sector are consequently compatible.

**Direction.** A nonempty light sector in a collapse calls for altered data, such as a tuned bulk mass or a scaled boundary coupling. The conclusion above applies to the stated massless interval and its calibrated truncations.

### 3. [Proposition A.1](../paper/towerless_intervals.tex)

**Verdict: Correct.** For the stated graded product
\[
D_F=D_0\otimes1+\Gamma_0\otimes D_I,
\qquad \{D_0,\Gamma_0\}=0,
\]
the cross terms cancel and
\[
D_F^2=D_0^2\otimes1+1\otimes D_I^2
\geq \frac{\pi^2}{4l^2}.
\]
This holds for any finite KO-6 factor with the stated product operator, including an \(l\)-dependent finite Dirac operator. The fixed-cutoff light sector is empty for sufficiently small \(l\).

**Direction.** The proposition points to modifications of the interval operator, boundary data, product coupling, or limiting prescription. It does not exclude a light sector in those modified families.

### 4. [Result 3: electrodynamics](../lemmas/06_vectorlike_odd_factorization.md)

**Verdict: Correct.** With the displayed matrices, both
\[
U_+=\operatorname{diag}(\sigma_1,\sigma_1),\qquad
U_-=\operatorname{diag}(\sigma_1,-\sigma_1)
\]
are grading-reversing unitary involutions. They commute with the algebra, its opposite, and \(D\), while
\[
U_+J=JU_+,\qquad U_-J=-JU_-.
\]
Thus the same \(D,J,\gamma\) admits both reductions, including at \(m=0\). The displayed representation and Dirac matrix agree, after the stated phase choice, with the electrodynamics data in [van den Dungen–van Suijlekom, Eqs. (4.1)–(4.2)](https://ems.press/content/serial-article-files/30538).

**Direction.** A selection of one factorization needs additional input beyond the displayed real structure and the listed doubling conditions.

### 5. [Lemma 4: neutral-sector criterion](../lemmas/06_vectorlike_odd_factorization.md)

**Verdict: Correct.** In bases related by \(J\), the KO-6 relations make the off-diagonal block \(M\) complex symmetric. Takagi factorization gives \(M=\Sigma\), with nonnegative diagonal entries.

For \(s=+1\), \(V=I\) satisfies the criterion. For \(s=-1\), the descended antiunitary \(j\) has \(j^2=-1\) and commutes with \(d^2=M^*M\). Each eigenspace of \(d^2\), including its kernel, therefore has even complex dimension. Conversely, on each pair of equal entries of \(\Sigma\), \(V=\sigma_2\) is a Hermitian unitary and gives
\[
(V^*K)^2=-1,\qquad V^*\Sigma=(V^*\Sigma)^*.
\]
This proves the stated equivalence, including zero singular values.

**Direction.** A KO-5 reduction can be recovered by neutral-sector pairing or by a symmetry enforcing the required even singular-value multiplicities. The result assumes the same scalar algebra character on the whole sector.

### 6. [Proposition 5: the strict one-generation heavy limit](../lemmas/06_vectorlike_odd_factorization.md)

**Verdict: Correct.** In the specified reduced representation, the surviving electron and down-quark sectors have both involutions from Result 3. The neutral sector has basis \((\nu_L,J\nu_L)\), zero Dirac block, and
\[
\gamma=\sigma_3,\qquad J=\sigma_1K,\qquad U=\sigma_1.
\]
It supplies a KO-7 reduction. The full light space has dimension \(18\); a KO-5 reduction would require an antiunitary squaring to \(-1\) on a complex space of dimension \(9\), which is impossible. The neutral bimodule gives the same obstruction directly.

**Direction.** The conclusion concerns the stated projection and reduced algebra. Adding an appropriate neutral partner can change the result; imposing particle-number preservation changes the admissible reductions, as in item 9 below.

### 7. [Result 7: three generations](../lemmas/06_vectorlike_odd_factorization.md)

**Verdict: Correct with amendment.** State that “arbitrary flavor mixing” means arbitrary matrices within the displayed species blocks, with the heavy projection chosen as a projection onto the specified top Dirac sector. Mixing between inequivalent species is outside the displayed Dirac operator.

The dimension counts are
\[
96-6-12=78,\qquad 96-6-36=54.
\]
The surviving three left neutrinos give a zero neutral block of size \(3\), so Lemma 4 gives KO-7 and excludes KO-5. Charged square flavor blocks can be brought to singular-value form by bimodule unitaries.

With three right neutrinos and a purely Dirac matrix \(Y_\nu\), the symmetric neutral block
\[
M_N=\begin{pmatrix}0&Y_\nu^T\\Y_\nu&0\end{pmatrix}
\]
has every singular value of \(Y_\nu\) twice, including zero. For a general symmetric Majorana block, the even-multiplicity criterion of Lemma 4 applies.

**Direction.** The obstruction is controlled by the neutral multiplicities. Paired neutral content or protected degeneracies provide directions to investigate.

### 8. [No-go theorem 8: the full chiral representation](../lemmas/06_vectorlike_odd_factorization.md)

**Verdict: Correct.** For the full displayed representation with \(g\geq1\),
\[
e_{\mathbb H}=(0,1_{\mathbb H},0)
\]
has range of dimension \(8g\) in \(H_+\) and zero range in \(H_-\). An algebra-linear grading-reversing unitary would identify these spaces. No such unitary exists, independently of the admissible \(D\) and of the sign against \(J\).

This conclusion concerns the full quaternionic algebra, the displayed representation and grading, and the doubling criterion of Result 2. A projection that removes only one member of a weak doublet is generally not invariant under the full quaternionic algebra.

**Direction.** Possible directions include changing the algebra or representation, retaining the even description, and studying boundary or defect realizations of chirality.

### 9. [No-go theorem with \([U,Q]=0\)](../lemmas/06_vectorlike_odd_factorization.md)

**Verdict: Correct.** In the stated strict light representation, an algebra- and opposite-algebra-linear \(U\) preserving particle number must map the \(\nu_L\) particle subspace to an opposite-grading particle subspace with the same bimodule. No such partner is present. The KO-7 involution in Proposition 5 instead maps \(\nu_L\) to its conjugate and fails \([U,Q]=0\).

**Direction.** A particle-preserving reduction requires a matching particle bimodule of opposite grading, or a change in the particle content or imposed conditions. The conclusion holds for either sign against \(J\).

## Part 2. Fluctuations and the parent comparison

### 10. Comparison with Chamseddine–Connes–van Suijlekom

**Verdict: Correct.** The formulas in [Lemma 19](../lemmas/19_fluctuations_without_order_one.md) agree with [arXiv:1304.7583v2, §III.2, Eqs. (10)–(11)](https://arxiv.org/html/1304.7583v2#S3.SS2). That paper takes a “self-adjoint, universal one-form” and gives
\[
A_{(2)}=\sum_j\widehat a_j[A_{(1)},\widehat b_j],
\qquad
U=uJuJ^{-1},
\qquad
UD(\omega)U^*=D\bigl(u\delta(u^*)+u\omega u^*\bigr).
\]
Here \(\widehat x=JxJ^{-1}\). The formula for \(A_{(2)}\) uses the same universal one-form as \(A_{(1)}\); replacing it by an independently chosen one-form would change the construction. The algebraic calculation in Theorem 19.1 also extends to universal forms that are not self-adjoint.

For \(J=\sigma_3K\), the alternative pointwise choice, \(JDJ^{-1}=-D\). The factor \(\epsilon=-1\) in
\[
\widetilde A_{(1)}=\epsilon J A_{(1)}J^{-1}
\]
then gives the same displayed two-point formulas.

### 11. [Theorem 19.1](../lemmas/19_fluctuations_without_order_one.md)

**Verdict: Correct.** Direct evaluation gives
\[
\frac{A_{(2)}}m=
\begin{cases}
\begin{pmatrix}0&|\phi_1|^2\\|\phi_2|^2&0\end{pmatrix},
&J_0=K,\\[3mm]
\begin{pmatrix}0&\phi_1\overline{\phi_2}\\
\phi_2\overline{\phi_1}&0\end{pmatrix},
&J_r=\sigma_1K.
\end{cases}
\]
Adding the two linear terms and \(D\) gives both factorizations in the theorem.

The represented self-adjointness condition is \(\phi_2=\overline{\phi_1}\). In this two-point example the universal one-forms are spanned by \(p_1\delta p_2\) and \(p_2\delta p_1\), which are adjoints and are represented faithfully for \(m>0\). Thus the same condition characterizes self-adjoint universal forms. Setting \(\Phi=1+\phi_1\) gives
\[
D'_{J_0}=m|\Phi|^2\sigma_1,\qquad
D'_{J_r}=m\begin{pmatrix}0&\Phi^2\\\overline{\Phi}^{\,2}&0\end{pmatrix}.
\]

### 12. [Corollary 19.2](../lemmas/19_fluctuations_without_order_one.md)

**Verdict: Error.** The gauge actions and full fluctuated images in items 1–2 are correct. The common linear-only formula in item 3 is incorrect for \(J_0\).

Let \(z=e^{i\psi}\). On the gauge orbit of the zero universal form,
\[
A_{(1)}=m\begin{pmatrix}0&z-1\\\bar z-1&0\end{pmatrix}.
\]
Removing \(A_{(2)}\) gives the upper links
\[
\begin{array}{c|c|c}
&\text{upper link}&\text{modulus near }\psi=0\\ \hline
J_0&m(2\cos\psi-1)&m(1-\psi^2+O(\psi^4))\\
J_r&m(2e^{i\psi}-1)&m(1+\psi^2+O(\psi^4)).
\end{array}
\]
For example, at \(\psi=\pi/3\) the \(J_0\) linear-only operator is zero, while the stated \(J_r\) expression has link \(i\sqrt3\,m\). Adding \(A_{(2)}\) restores the stated full results: \(D'=D\) for \(J_0\), and the link is \(mz^2\) for \(J_r\).

Two wording amendments accompany the correction. The set \(\Phi=e^{i\psi}\) is the orbit in the potential parameter; the \(J_0\) operator orbit consists only of \(D\). The map \(\Phi\mapsto\Phi^2\) is two-to-one away from zero and one-to-one at zero. The image statement is pointwise; a globally prescribed smooth link need not have a global smooth square root.

### 13. Reflection real structure and compression

**Verdict: Correct.** In [Counterexample 08.4](../lemmas/08_product_selects_ko.md),
\[
J_{\mathrm{ref}}=\sigma_1R_lK.
\]
For the real lowest-pair basis
\[
u_L=\sqrt{2/l}\,(\cos mx,0),\qquad
u_R=\sqrt{2/l}\,(0,\sin mx),\qquad m=\pi/(2l),
\]
the identities \(\cos(m(l-x))=\sin(mx)\) and \(\sin(m(l-x))=\cos(mx)\) give
\[
J_{\mathrm{ref}}u_L=u_R,\qquad J_{\mathrm{ref}}u_R=u_L.
\]
The subspace is \(J_{\mathrm{ref}}\)-invariant, and its compressed antiunitary is exactly \(\sigma_1K\). Its signs are \((J^2,JD/DJ,J\gamma/\gamma J)=(+,+,-)\).

For \(e=\operatorname{diag}(1,0)\), the two compressed real structures give
\[
[[D,e],\widehat e]=m\sigma_1\quad(J_0),
\qquad
[[D,e],\widehat e]=-m\sigma_1\quad(J_r).
\]
Both two-point data satisfy order zero and fail order one.

### 14. [Proposition 19.3, item 1](../lemmas/19_fluctuations_without_order_one.md)

**Verdict: Correct.** Without a real structure, self-adjoint finite one-forms give every upper link \(m(1+\phi_1)\in\mathbb C\). For fixed compression of the real parent gauge coefficient \(A_5\), the link is
\[
m+iB,\qquad B=\frac1l\int_0^l\sin\frac{\pi x}{l}\,A_5(x)\,dx\in\mathbb R.
\]
Every real \(B\) is reached, so the fixed-compression image is the stated vertical line.

### 15. [Proposition 19.3, item 2](../lemmas/19_fluctuations_without_order_one.md)

**Verdict: Correct with amendment.** “A neutral radial field with no parent scalar” is fair when it means: *the finite pointwise-real fluctuation has a gauge-neutral radial parameter, while the specified pointwise-real parent has no surviving self-adjoint scalar inner fluctuation*. It does not establish a dynamical scalar field, its action, or the absence of parent fields in other models.

Let \(E=\begin{psmallmatrix}0&1\\-1&0\end{psmallmatrix}\). A represented parent one-form is \(Eh(x)\). Self-adjointness requires \(h=ia\) with \(a\) real, and
\[
K(iEa)K^{-1}=-iEa.
\]
Thus the parent real fluctuation cancels. By contrast, the finite gauge-invariant link is
\[
t=m|\Phi|^2\geq0,
\]
so \(t\) is a function of the radial variable \(|\Phi|\), and every \(t\geq0\) occurs.

The proof at line 71 needs this self-adjointness step. An individual commutator does not generally change sign under \(K\): for \(f=x\), \(K[D,f]K^{-1}=[D,f]=E\). The sign reversal holds for the self-adjoint represented sum \(iEa\).

The parent does possess an \(A_5\) one-form before real symmetrization; the cancellation concerns the resulting real fluctuation. Compression of the algebra is also nonmultiplicative, so the construction gives no canonical identification of all finite potentials with parent potentials.

### 16. [Proposition 19.3, item 3](../lemmas/19_fluctuations_without_order_one.md)

**Verdict: Correct.** The reflected opposite algebra consists of multiplication operators, so the parent satisfies order one. For real \(A_5\),
\[
J_rD_{A_5}J_r^{-1}=D_{A_5\circ R}.
\]
Consequently its real scalar fluctuation has coefficient
\[
A_5^s=A_5+A_5\circ R.
\]
Since the compression weight is reflection-even, \(B^s=2B\), where \(B\) is calculated from the unsymmetrized \(A_5\).

### 17. [The table in Proposition 19.3](../lemmas/19_fluctuations_without_order_one.md)

**Verdict: Correct with amendment.** Label the real structure and the meaning of \(B\) in each row. The covariant projection has fixed singular value \(m\), and the full finite \(J_r\) orbit has link modulus \(m\). The linear-only row has the stated modulus for \(J_r\), locally growing at second order.

The fixed-compression row
\[
\sqrt{m^2+B^2}
\]
is the formula of Lemma 13 for the unsymmetrized coefficient. For the reflection-real parent of item 3, if \(B\) continues to denote the integral of the original \(A_5\), the corresponding expression is
\[
\sqrt{m^2+(B^s)^2}=\sqrt{m^2+4B^2}.
\]
Equivalently, the table may retain its formula after defining its \(B\) to be the integral of the *symmetrized* coefficient. The increase is quadratic along paths for which the relevant \(B\) has a nonzero linear term; a nontrivial gauge path can also have \(B=0\).

### 18. Wilson phase in the paragraph following the table

**Verdict: Error.** For a constant unsymmetrized \(A_5=a\), the transported link and its expansion are
\[
mW_l^*=me^{ial}
=m+i\,mla+O(a^2)
=m+i\frac{\pi a}{2}+O(a^2).
\]
Thus the Wilson **phase** is \(al\); \(mla=\pi a/2\) is the coefficient of the first-order imaginary change in the link. The fixed-compression value is \(m+i(2a/\pi)\).

For the reflection-real fluctuation starting from the same \(a\), the symmetrized coefficient is \(2a\): the transported link is \(me^{2ial}\), and the fixed-compression link is \(m+i(4a/\pi)\).

### 19. [Reading at the end of Lemma 19](../lemmas/19_fluctuations_without_order_one.md)

**Verdict: Correct with amendment.** Replace “truncation generically breaks order one” by the demonstrated statement that spectral compression *can* break it, and state the hypotheses needed to apply the cited framework: a represented algebra, a preserved real structure, and order zero.

For example, on the circle take \(D=-i\,d/dx\), \(J=K\), and the full multiplication algebra. The parent satisfies order zero and order one. Compression to the zero Fourier mode leaves only scalar operators and preserves both conditions. Compression instead to the modes \(-1,0,1\) sends \(e^{ix}\) to a truncated shift \(S\); its conjugate is \(S^*\), and
\[
[S,S^*]\ne0.
\]
Thus this compression fails order zero. It also illustrates why the compressed operator system and the algebra it generates require separate attention.

The proposed relation to a singlet remains an analogy. In the cited [1304.7583v2, Proposition 8 and §IV](https://arxiv.org/html/1304.7583v2#S4), the toy model uses three complex fields, and the authors state that its quadratic term “does not generate new scalar fields”; it is expressed in fields already present in \(A_{(1)}\). The present \(A_{(2)}\) likewise depends on the same two-point parameters, but that fact gives no identification of the models. [Devastato–Lizzi–Martinetti, arXiv:1304.0415v3, §4.3](https://arxiv.org/html/1304.0415v3#S4.SS3), obtain their \(\sigma\) from a Majorana-operator fluctuation in a larger algebra. An identification would require a map of algebras, representations, fields and gauge actions, together with an action comparison.

## Amendments and errors

- Specify the convergence asserted in the \(m\to0\) continuum limit; \(N/l\to\infty\) controls dispersion and normalized densities.
- Restrict the three-generation mixing statement to the displayed species blocks and specified heavy projection.
- In the parent comparison, use self-adjointness to prove the pointwise-real cancellation, and distinguish the original \(A_5\) from its reflection symmetrization.
- Correct Corollary 19.2’s \(J_0\) linear-only link and the Wilson phase following the table.
- Qualify the general reading of truncation and retain the singlet comparison as an open analogy.

Overall: 12 Correct; 5 Correct with amendment; 0 Gap; 2 Error.