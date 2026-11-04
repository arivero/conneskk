# Product real structures and the choice between 9 and 11

Prompt: [prompts/08](../historical/prompts/08_product_selects_ko.md) (Task A: check Lemmas 07.1-07.3; Task B: Conjecture 07.4). Attempted by gpt-6-astra (codex 0.164, xhigh, 3 Nov 2026), working alone. Checked by Claude Opus 5.5: by hand (results 1-3, 4 second part, 8, 12) and numerically in Python (results 5, 6, 7, 11 and 8; section at the end).

Refereed by Terra 6.1 (gpt-6.1-terra, effort max, 3 Nov 2026; [report](../historical/reviews/2026-11-03_terra_check_08_13_14.md)): all 12 numbered statements are correct. Two points of scope: the case t = -1 in Result 1 uses the extended convention 0_-, since the standard KO-0 signs have t = +1; and Theorem 7 concerns the scalar-algebra truncation, since the full compressed two-sheet algebra with its inherited real structure fails first order (Counterexample 4).

**Outcome.** Lemmas 07.1-07.3 hold under the pointwise reality hypothesis. Conjecture 07.4 is false as stated: Counterexample 11 fixes the physical D_F, J_F, Gamma_F and particle number Q and still admits admissible involutions of both signs. What holds instead: in the standard internal-first KO-6 product, the bare interval reflection always has s = -1 (Theorem 5, formally 4+5 = 9); the product is exactly T_5(m) x P_1 with d_5 = D_0 + m Gamma_0 (Theorem 7); particle preservation pairs the two signs whenever [Q, D] = 0 (Theorem 12); and the literal collapse of the massless interval leaves no light sector (No-go theorem 8).

We use the sign convention
\[
J^2=\epsilon,\qquad JD=\epsilon'DJ,\qquad
J\Gamma=\epsilon''\Gamma J.
\]
Unless stated otherwise, KO-6 means the standard signs \((+,+,-)\). We require the order-zero and first-order conditions when calling data a real spectral triple; we impose no orientability or Poincare-duality assumption.

**1. Lemma (07.1: classification under pointwise reality).**

Let
\[
H_I=L^2([0,l],\mathbb C^2),\quad
D_I=E\partial_x,\quad
E=\begin{pmatrix}0&1\\-1&0\end{pmatrix},\quad
\Gamma_I=\begin{pmatrix}1&0\\0&-1\end{pmatrix},
\]
with
\[
\operatorname{Dom}D_I=\{(L,R)\in H^1:R(0)=0,\ L(l)=0\}.
\]
Suppose \(J_I\) is antiunitary, preserves this domain, and satisfies
\[
J_IfJ_I^{-1}=\overline f,\qquad J_ID_I=tD_IJ_I,
\quad t\in\{+1,-1\}.
\]
Then
\[
J_I=\operatorname{diag}(\alpha,\beta)K,\qquad
|\alpha|=|\beta|=1,\qquad \alpha=t\beta.
\]
Consequently,
\[
(\epsilon_I,\epsilon'_I,\epsilon''_I)=(+,t,+).
\]

*Proof.* The linear unitary \(W=J_IK\) commutes with every scalar multiplication operator. Hence \(W\) is multiplication by a measurable unitary matrix \(W(x)\).

Domain preservation, applied to compactly supported smooth sections, gives \(W\in H^1_{\mathrm{loc}}\). Comparing the coefficients of derivatives in
\[
WE\overline{\psi'}
=tE\bigl(W'\overline\psi+W\overline{\psi'}\bigr)
\]
gives
\[
WE=tEW,\qquad EW'=0.
\]
Thus \(W\) is constant. Preservation of the boundary conditions gives
\(W_{21}=W_{12}=0\), because the remaining endpoint traces are arbitrary.

Writing \(W=\operatorname{diag}(\alpha,\beta)\), the equation \(WE=tEW\) becomes \(\alpha=t\beta\). Finally,
\[
W\overline W=1,\qquad W\Gamma_I=\Gamma_IW.
\]
These imply the asserted signs. Conversely, every displayed \(J_I\) satisfies all the hypotheses. \(\square\)

Thus Lemma 07.1 is correct under its stated pointwise reality hypothesis. Up to phase, the two possibilities are \(K\) and \(\Gamma_IK\). They are \(0_+\) and \(0_-\) in the extended convention; Connes' even convention selects \(t=+1\). See [Dąbrowski–Dossena, arXiv v1, Table 1, p. 5](https://arxiv.org/pdf/1011.4456#page=5).

**2. Lemma (07.2: spectral compression).**

Every \(J_I\) in Result 1 commutes with the spectral projections of \(|D_I|\). On the minimal nonzero grading-preserving spectral subspace,
\[
D_2=m\sigma_1,\qquad \Gamma_2=\sigma_3,\qquad
J_2=\operatorname{diag}(\alpha,\beta)K,\qquad
m=\frac{\pi}{2l}.
\]

*Proof.* The relation \(J_ID_I=tD_IJ_I\) implies that \(J_I\) preserves every eigenspace of \(D_I^2\), hence every spectral subspace of \(|D_I|\).

Solving \(D_I\psi=\lambda\psi\) with the boundary conditions gives
\(\lambda=\pm(r-\tfrac12)\pi/l\). The lowest pair has the real orthonormal chiral basis
\[
u_L=\sqrt{\frac2l}\binom{\cos(mx)}0,\qquad
u_R=\sqrt{\frac2l}\binom0{\sin(mx)}.
\]
Direct differentiation gives \(D_Iu_L=mu_R\), \(D_Iu_R=mu_L\). Also
\(J_Iu_L=\alpha u_L\), \(J_Iu_R=\beta u_R\). \(\square\)

This proves Lemma 07.2 as a statement about the compressed operators. Result 4 below addresses the first-order condition.

**3. Lemma (07.3: reflection sign).**

Let \(R_l\psi(x)=\psi(l-x)\). A component-exchanging reflection
\[
\sigma=\begin{pmatrix}0&a\\b&0\end{pmatrix}R_l,
\qquad |a|=|b|=1,
\]
commutes with \(D_I\) exactly when \(a=b\). Requiring additionally \(\sigma^2=1\) gives \(a=b=\pm1\). For these reflections,
\[
\sigma\Gamma_I=-\Gamma_I\sigma,\qquad
\sigma J_I=tJ_I\sigma.
\]
On the minimal truncation, \(\sigma=\pm\sigma_1\).

*Proof.* Reflection exchanges the two endpoint conditions. Since
\(\partial_xR_l=-R_l\partial_x\), commutation with \(D_I\) requires
\[
-E\begin{pmatrix}0&a\\b&0\end{pmatrix}
=\begin{pmatrix}0&a\\b&0\end{pmatrix}E,
\]
which is equivalent to \(a=b\). Its square is then \(a^2\), so \(a=\pm1\).

For real \(a\), multiplication of the matrices representing \(\sigma\) and \(J_I\) gives
\[
\sigma J_I=tJ_I\sigma
\]
using \(\alpha=t\beta\). The identities
\(\cos(m(l-x))=\sin(mx)\) and \(\sin(m(l-x))=\cos(mx)\) give the compressed reflection. \(\square\)

Thus all three lemmas agree with the direct calculation. Notice, however, that
\[
\sigma f\sigma^{-1}=f(l-\cdot).
\]
The reflection commutes with constants, but generally does not commute with the interval algebra.

**4. Counterexample (two stronger interpretations of the interval lemmas fail).**

First, chiral boundary conditions alone do not force KO-dimension zero. Without pointwise reality, the antiunitary
\[
J_{\mathrm{ref}}=\sigma K,\qquad \sigma=\sigma_1R_l,
\]
has the standard KO-6 signs.

Second, the minimal two-point compression with its full diagonal algebra and inherited \(J_2\) is not a real spectral triple satisfying the first-order condition when \(m>0\).

*Proof.* For the first assertion,
\[
J_{\mathrm{ref}}^2=1,\qquad
J_{\mathrm{ref}}D_I=D_IJ_{\mathrm{ref}},\qquad
J_{\mathrm{ref}}\Gamma_I=-\Gamma_IJ_{\mathrm{ref}}.
\]
It implements
\[
J_{\mathrm{ref}}fJ_{\mathrm{ref}}^{-1}
=\overline f(l-\cdot).
\]
The opposite action is still scalar multiplication, so order zero and first order hold. This example violates precisely the pointwise reality hypothesis of Result 1.

For the second assertion, the compressed algebra is
\[
A_2=\{\operatorname{diag}(a,b)\}.
\]
Indeed, compression sends \(1\) to \(1\) and \(\cos(\pi x/l)\) to \(\frac12\sigma_3\). Let \(e=\operatorname{diag}(1,0)\). The inherited diagonal \(J_2\) gives \(e^o=e\), whereas
\[
[[D_2,e],e^o]=D_2\ne0.
\]
Moreover, \(\sigma_1e\sigma_1=1-e\), so the reflection is not an \(A_2\)-module map. \(\square\)

For the finite products below, we therefore explicitly restrict the interval algebra to scalar constants. This restriction makes the compressed interval a real triple and makes its reflection algebra-linear. It is an additional assumption about the proposed collapsed model.

**5. Theorem (B1–B2: the internal-first KO-6 product).**

Let
\[
F_0=(A_0,H_0,D_0,J_0,\Gamma_0)
\]
be a finite real KO-6 triple:
\[
J_0^2=1,\qquad J_0D_0=D_0J_0,\qquad
J_0\Gamma_0=-\Gamma_0J_0.
\]
Take either the interval or its scalar-algebra truncation, and use the internal-first product
\[
D_F=D_0\otimes1+\Gamma_0\otimes D_I,\qquad
\Gamma_F=\Gamma_0\otimes\Gamma_I.
\]

Among the grading-twisted tensor real structures
\[
J_{a,b}=(J_0\Gamma_0^a)\otimes(J_I\Gamma_I^b),
\qquad a,b\in\{0,1\},
\]
the standard KO-6 conditions force
\[
a=0,\qquad t(-1)^b=-1.
\]
For the induced reflection \(U=1\otimes\sigma\),
\[
\boxed{UJ_F=-J_FU.}
\]

*Proof.* Direct calculation gives
\[
J_{a,b}^2=(-1)^a,\qquad
J_{a,b}\Gamma_F=-\Gamma_FJ_{a,b}.
\]
The two Dirac summands satisfy
\[
J_{a,b}(D_0\otimes1)
=(-1)^a(D_0\otimes1)J_{a,b},
\]
\[
J_{a,b}(\Gamma_0\otimes D_I)
=-t(-1)^b(\Gamma_0\otimes D_I)J_{a,b}.
\]
Thus \(J_F^2=1\) requires \(a=0\), and \(J_FD_F=D_FJ_F\) requires \(t(-1)^b=-1\).

Since \(\sigma J_I=tJ_I\sigma\) and \(\sigma\Gamma_I=-\Gamma_I\sigma\),
\[
UJ_{a,b}=t(-1)^bJ_{a,b}U.
\]
The required product sign is therefore \(-1\). \(\square\)

Explicitly:

| Interval \(t=\epsilon'_I\) | Required \(b\) | Product reflection sign \(s\) |
|---|---:|---:|
| \(+1\) | \(1\) | \(-1\) |
| \(-1\) | \(0\) | \(-1\) |

For \(t=+1\), this is exactly job 06's formula
\[
J_F=J_0\otimes(J_I\Gamma_I).
\]
Changing \(J_I\) to \(J_I\Gamma_I\) while adjusting the required twist leaves the resulting \(J_F\) unchanged, up to phase. The general formula \(s=t(-1)^b\) is proved, but \(t\) and \(b\) are not independent choices when the product must have standard KO-6 signs. The relevant product constructions are [Dąbrowski–Dossena, §4.1, equation (18) and Tables 2–3](https://arxiv.org/pdf/1011.4456#page=8).

A KO-0 factor leaves the KO-degree unchanged. Hence \(F_0\) must already have degree six in this ordinary even-even construction. An odd internal triple multiplied by an even interval remains odd under the standard product rules.

**6. Proposition (B1–B2: the grading and the lift of reflection).**

The preceding construction has three necessary distinctions.

1. The interval grading alone cannot be the total KO-6 grading for a tensor real structure of the displayed form.
2. Twisting the reflection by the internal grading can change \(s\), but generally destroys commutation with \(D_F\).
3. Transporting all data between equivalent product conventions preserves \(s\).

*Proof.* If one sets \(\Gamma_F=1\otimes\Gamma_I\), then every \(J_{a,b}\) commutes with \(\Gamma_F\), contradicting the required KO-6 relation. The product grading must be
\(\Gamma_0\otimes\Gamma_I\).

For
\[
U_c=\Gamma_0^c\otimes\sigma,\qquad c\in\{0,1\},
\]
we obtain
\[
U_cJ_F=(-1)^c\,t(-1)^bJ_FU_c,
\]
and
\[
[U_c,D_F]=[\Gamma_0^c,D_0]\otimes\sigma.
\]
Thus \(U_0\) always commutes with \(D_F\). For \(c=1\),
\[
[U_1,D_F]=0\quad\Longleftrightarrow\quad D_0=0,
\]
because \(\{\Gamma_0,D_0\}=0\). When \(D_0=0\), both lifts are admissible and have opposite signs.

To compare product conventions, let
\[
W=P_+^0\otimes1+P_-^0\otimes\Gamma_I,\qquad
P_\pm^0=\frac{1\pm\Gamma_0}{2}.
\]
Then
\[
WD_FW=D_0\otimes\Gamma_I+1\otimes D_I,
\]
while
\[
W(1\otimes\sigma)W=\Gamma_0\otimes\sigma.
\]
Unitary transport preserves the relation \(UJ=sJU\). Keeping the bare symbol \(1\otimes\sigma\) after changing convention can therefore mean choosing a different involution. \(\square\)

The interval can still carry the physical L/R label. For example, if \(\Gamma_0=Q_0\) distinguishes particles from antiparticles, then
\[
\Gamma_F=Q_0\otimes\Gamma_I
\]
has the usual reversal of finite grading between a particle and its conjugate.

Multiplying the total real structure by \(\Gamma_F\) also flips \(s\), but changes its signs to \((-,-,-)\). It therefore leaves the standard KO-6 convention required by job 06.

**7. Theorem (B1: exact reconciliation with the odd Clifford point).**

For the scalar-algebra minimal truncation, choose the harmless overall phase so that
\[
D_F=D_0\otimes1+m\Gamma_0\otimes\sigma_1,\quad
\Gamma_F=\Gamma_0\otimes\sigma_3,\quad
J_F=J_0\otimes(\sigma_3K).
\]
With \(U=1\otimes\sigma_1\), this triple is exactly the odd-odd product
\[
\boxed{F\cong T_5(m)\times P_1,}
\]
where
\[
T_5(m)=
\bigl(A_0,H_0,\ d_5=D_0+m\Gamma_0,\ j_5=J_0\Gamma_0\bigr),
\]
and
\[
P_1=(\mathbb C,\mathbb C,0,K).
\]
For real algebras, use the scalar point algebra \(\mathbb R\).

*Proof.* The operator \(d_5\) is self-adjoint, and
\[
j_5^2=-1,\qquad j_5d_5=-d_5j_5.
\]
Its opposite action is unchanged, and
\([d_5,a]=[D_0,a]\), so order zero and first order descend.

Let \(e_\pm\) be the eigenvectors of \(\sigma_3\), and define
\[
R:H_0\longrightarrow H_{F,+},\qquad
Rx=P_+^0x\otimes e_++P_-^0x\otimes e_-.
\]
This is unitary onto the positive total-grading subspace. Direct calculation gives
\[
R^*UD_FR=D_0+m\Gamma_0,\qquad
R^*UJ_FR=J_0\Gamma_0.
\]
Under the unitary identification
\[
(x,y)\longmapsto Rx+URy,
\]
the operators become
\[
D_F=\begin{pmatrix}0&d_5\\d_5&0\end{pmatrix},\quad
\Gamma_F=\begin{pmatrix}1&0\\0&-1\end{pmatrix},\quad
J_F(x,y)=(-j_5y,j_5x).
\]
These are precisely the odd-odd product matrices with auxiliary matrix
\(B=-i\sigma_2\). \(\square\)

More generally, any admissible involution in a standard KO-6 triple gives
\[
d=(UD)|_{H_+},\qquad j=(UJ)|_{H_+},
\]
with
\[
j^2=s,\qquad jd=s\,dj.
\]
Thus
\[
s=-1:\quad F\cong T_5\times P_1,
\qquad
s=+1:\quad F\cong T_7\times P_7.
\]
The auxiliary matrices are respectively \(-i\sigma_2\) and \(\sigma_1\), in agreement with [Dąbrowski–Dossena, equation (25), Table 6, p. 12](https://arxiv.org/pdf/1011.4456#page=12).

The even KO-0 interval is therefore not identified with an odd point. Its two-dimensional space becomes the auxiliary doubling space after reorganizing the complete product, while its mass enters \(d_5\). The point itself has one-dimensional Hilbert space and zero Dirac operator. Because its Dirac operator is zero, the distinction between \(P_1\) and \(P_7\) includes a choice of KO label.

**8. No-go theorem (literal collapse produces no light finite sector).**

Assume the heavy-limit model uses exactly the product Dirac operator of Result 5, with \(m=\pi/(2l)\). At every fixed energy cutoff \(\Lambda\), its light subspace is zero for sufficiently small \(l\).

*Proof.* Anticommutation of \(D_0\) and \(\Gamma_0\) gives
\[
D_F^2=D_0^2\otimes1+1\otimes D_I^2.
\]
The chiral interval and its minimal truncation satisfy
\[
D_I^2\geq\frac{\pi^2}{4l^2}.
\]
Hence
\[
|D_F|\geq\frac{\pi}{2l},
\qquad
\mathbf1_{[0,\Lambda]}(|D_F|)=0
\quad\text{if }l<\frac{\pi}{2\Lambda}.
\]
The same conclusion holds for the alternative product convention by unitary equivalence. \(\square\)

Consequently, the exact product supplies an algebraic model at finite \(l\), but cannot yield a nonempty light vectorlike sector by literal collapse at fixed energy. Retaining such a sector requires additional dynamics or a modified limiting prescription.

**9. Proposition (B3: spacetime grading twists do not select the finite involution).**

Let the four-dimensional Euclidean spacetime triple satisfy
\[
J_M^2=-1,\qquad J_MD_M=D_MJ_M,\qquad
J_M\gamma_M=\gamma_MJ_M.
\]
For an odd reduction \((d,j_s)\) with
\[
j_s^2=s,\qquad j_sd=s\,dj_s,
\]
the job-06 even-odd convention requires
\[
J_{M\times T_s}=(J_M\gamma_M^{a_s})\otimes j_s,
\qquad (-1)^{a_s}=s.
\]
Therefore
\[
J_{4+5}=(J_M\gamma_M)\otimes j_5,\qquad
J_{4+7}=J_M\otimes j_7.
\]
These formulas do not imply that choosing physical spacetime charge conjugation selects \(s\).

*Proof.* For
\[
D_{M\times T_s}=D_M\otimes1+\gamma_M\otimes d,
\]
the proposed real structure has commutation signs \((-1)^{a_s}\) and \(s\) against the two summands. They must agree. Its square is \(-s\), giving KO-1 for \(s=-1\) and KO-3 for \(s=+1\).

We can also retain the removed point and compare the complete products. Write
\[
F=T_s\times P_k,\qquad
J_F=j_s\otimes(B_sK),
\]
where \(B_-=-i\sigma_2\), \(B_+=\sigma_1\). The unitary
\[
V=P_+^M\otimes1\otimes1+
  P_-^M\otimes1\otimes\sigma_1
\]
identifies \((M\times T_s)\times P_k\) with \(M\times F\). In particular,
\[
V\bigl((J_M\gamma_M^{a_s})\otimes j_s\otimes B_sK\bigr)V^*
=J_M\otimes J_F.
\]
Here the extra factor \(\gamma_M^{a_s}\) cancels because
\(\sigma_1B_s=sB_s\sigma_1\). \(\square\)

Thus both reconstructions can use the same original \(J_M\). The different spacetime factors in the reduced products are required by the product rules.

**10. Proposition (B3: Euclidean and Lorentzian charge conjugation).**

In the conventions used by Chamseddine–Connes–Marcolli and van den Dungen–van Suijlekom, the Euclidean spacetime charge-conjugation operator is \(J_M\), with
\[
(J_M^2,\epsilon'_M,\epsilon''_M)=(-,+,+).
\]
The operator \(J_M\gamma_5\) is its other even real-structure convention. Lorentzian charge conjugation requires changing signature and is not obtained merely by choosing between these two Euclidean operators.

*Proof and source identification.* CCM state, “The operator J is the charge conjugation operator,” in §3.1, and use \(J=J_M\otimes J_F\) in §3.2. Their calculation in §3.5.2 explicitly uses \(J_MD_M=D_MJ_M\). See [CCM, arXiv v1, §§3.1–3.2, p. 20, and §3.5.2, p. 27](https://arxiv.org/pdf/hep-th/0610241#page=20).

Van den Dungen–van Suijlekom likewise identify \(J_M\) as “the charge conjugation operator on the spinors” in Example 2.1 and use \(J=J_M\otimes J_F\) in Definition 2.3. Their fermionic action uses this \(J_M\). See [the published paper, pp. 435–436 and Proposition 4.3, p. 452](https://ems.press/content/serial-article-files/30538#page=3).

For an explicit signature comparison, take Lorentzian signature \((+---)\), chiral gamma matrices, and
\[
\gamma_E^0=\gamma_L^0,\qquad
\gamma_E^j=-i\gamma_L^j.
\]
Up to overall phases, standard conjugations are
\[
C_E=i\gamma_E^0\gamma_E^2K,\qquad
C_L=-i\gamma_L^2K.
\]
These are the conventions in [D'Andrea–Kurkov–Lizzi, arXiv v2, equations (3.4), (3.13)–(3.15)](https://arxiv.org/pdf/1605.03231#page=9).

The Clifford relations give
\[
C_E^2=-1,\quad [C_E,\gamma_5]=0,\quad
[C_E,D_E]=0,
\qquad D_E=-i\gamma_E^\mu\nabla_\mu,
\]
whereas
\[
C_L^2=1,\qquad C_L\gamma_5=-\gamma_5C_L.
\]
In the displayed common matrix basis,
\[
C_L=-i\gamma_E^0C_E.
\]
Both \(C_E\) and \(C_E\gamma_5\) square to \(-1\) and preserve Euclidean chirality; neither is already \(C_L\).

Finally, for real \(m\), Lorentzian charge conjugation carries
\[
(i\gamma_L^\mu(\partial_\mu+ieA_\mu)-m)\psi=0
\]
to the same equation with charge \(-e\). Composing \(C_L\) with \(\gamma_5\) instead reverses the scalar mass sign. Thus the usual massive Dirac-field identification distinguishes charge conjugation once the signature and Dirac-operator conventions are fixed. \(\square\)

This identification determines the starting spacetime convention. By Result 9, it does not determine the finite involution.

**11. Counterexample (fixed physical real structure permits both 9 and 11).**

There is a single scalar-interval product with fixed \(D_F,J_F,\Gamma_F,Q\) admitting particle-preserving involutions of both signs.

*Proof.* Let \(\tau_i\) act on an internal particle/antiparticle space and \(\sigma_i\) on the interval truncation. Set
\[
\rho(a,b)=\operatorname{diag}(a,b)\otimes1,\qquad
D_F=m\tau_3\otimes\sigma_1,
\]
\[
\Gamma_F=\tau_3\otimes\sigma_3,\qquad
J_F=(\tau_1\otimes\sigma_3)K,\qquad
Q=\tau_3\otimes1,
\quad m>0.
\]
This is Result 5 with
\[
D_0=0,\quad \Gamma_0=\tau_3,\quad J_0=\tau_1K.
\]
It has standard KO-6 signs. Its Dirac operator commutes with the algebra, so the first-order condition holds.

Define
\[
U_-=1\otimes\sigma_1,\qquad
U_+=\tau_3\otimes\sigma_1=QU_-.
\]
Both are grading-reversing unitary involutions commuting with \(D_F\), the two algebra actions, and \(Q\). Nevertheless,
\[
U_-J_F=-J_FU_-,
\qquad
U_+J_F=J_FU_+.
\]

The unitary
\[
W=\operatorname{diag}(1,\sigma_3)
\]
on the particle/antiparticle blocks transforms the data into
\[
D_F'=m\,1\otimes\sigma_1,\qquad
J_F'=(\tau_1\otimes1)K,
\]
while preserving \(\Gamma_F,Q,\rho\). The transformed involutions are
\[
U_-'=\operatorname{diag}(\sigma_1,-\sigma_1),\qquad
U_+'=\operatorname{diag}(\sigma_1,\sigma_1).
\]
Thus this is also the electrodynamics counterexample in job 06, expressed as an interval product. Tensoring with a fixed spacetime \(J_M\) leaves both possibilities available. \(\square\)

This disproves the assertion in Conjecture 07.4 that physical spacetime charge conjugation alone selects the reduction. Selecting specifically the bare reflection \(1\otimes\sigma\) is an additional restriction and gives \(s=-1\) in the internal-first convention.

**12. Theorem (B4: particle preservation and sign pairing).**

Let \(Q\) be a self-adjoint involution equal to \(+1\) on particles and \(-1\) on antiparticles.

For an interval product with \(Q=Q_0\otimes1\), the bare reflection automatically satisfies
\[
[1\otimes\sigma,Q]=0.
\]

More generally, assume a standard KO-6 triple satisfies
\[
[Q,D]=[Q,\Gamma]=[Q,a]=[Q,a^o]=0,\qquad QJ=-JQ.
\]
If an admissible doubling involution \(U\) preserves particle number, then \(QU\) is another particle-preserving doubling involution with the opposite sign against \(J\).

*Proof.* The tensor-product assertion is immediate. For the general assertion, \([Q,U]=0\) gives
\[
(QU)^2=1.
\]
The remaining commutation and grading properties follow from those of \(Q\) and \(U\). If \(UJ=sJU\), then
\[
(QU)J=sQJU=-sJ(QU).
\]
Also \([QU,Q]=0\). \(\square\)

Thus particle preservation does not select a sign in a particle-number-conserving sector. The additional assumption \([Q,D]=0\) is essential to the sign-pairing argument; Majorana terms can violate it.

Conversely, particle-preserving doubling requires the particle spaces of opposite grading to be isomorphic as bimodules: \(U\) restricts to such an isomorphism. An unpaired left-handed neutrino with no matching right-handed particle in its bimodule therefore obstructs particle-preserving doubling. The formal interval product builds in the missing partner and cannot represent that strict light spectrum without changing its particle content.

**Consequence for 9 versus 11**

Lemmas 07.1–07.3 hold under pointwise reality, but their proposed physical consequence does not follow. For the internal-first standard KO-6 product, the required grading twist gives the bare interval reflection \(s=-1\), hence a KO-5 reduction and formal \(4+5=9\). Changing the interval's even real-structure convention consistently does not change this result. A fixed spacetime charge conjugation \(J_M\), and even particle-number preservation, can coexist with both reductions; choosing the lift of L/R reflection remains additional data. Finally, literal collapse of this chiral interval leaves no light fermions, so neither 9 nor 11 has been established as the dimension of a surviving heavy-W/Z limit.

## Independent numerical check (Claude, 3 Nov 2026)

Python (numpy), antiunitaries represented as J = M K, with J X J^-1 = M conj(X) M^-1, J^2 = M conj(M), and U J = s J U iff U M = s M conj(U). F_0: H_0 = C^2 (+) C^2 with Gamma_0 = diag(g, -g), D_0 = diag(d, conj(d)) (d off-diagonal, random complex entry), J_0 = block swap times K; KO-6 signs verified. Interval truncation D_I = m sigma_1 (m = 0.7), Gamma_I = sigma_3, J_I = diag(t, 1) K.

- **Theorem 5.** Of the eight choices (t, a, b), exactly (t, a, b) = (+1, 0, 1) and (-1, 0, 0) give the KO-6 signs (+, +, -); both give s = -1 for U = 1 (x) sigma_1, and U commutes with D_F.
- **Theorem 7.** With R x = P_+ x (x) e_+ + P_- x (x) e_-: R* U D_F R = D_0 + m Gamma_0 and R* U J_F R = J_0 Gamma_0, with j_5^2 = -1 and j_5 d_5 = -d_5 j_5 (KO-5 signs).
- **Proposition 6.** Gamma_0 (x) sigma_1 commutes with D_F for D_0 = 0 and fails to commute for D_0 != 0.
- **Counterexample 11.** KO-6 signs, order zero and first order hold for random diagonal algebra elements; U_- and U_+ are both admissible (involutive, grading-reversing, commuting with D_F, Q, the algebra and its opposite), with s = -1 and s = +1.
- **No-go theorem 8.** D_F^2 = D_0^2 (x) 1 + 1 (x) D_I^2 holds exactly.
- **Counterexample 4 (first order), by hand.** For e = diag(1, 0) and the inherited diagonal J_2, e° = e and [[m sigma_1, e], e] = m sigma_1.

**Terminology.** Here "doubling" means the factorization of an even triple as an odd triple times a Clifford point (the doubling of an odd triple in Dabrowski-Dossena's product construction). It is unrelated to the "fermion doubling" of the noncommutative Standard Model (Lizzi-Mangano-Miele-Sparano). Prior work on products and on J versus J gamma: [../LITERATURE.md](../paper/LITERATURE.md), section D; the factorization criterion and the 9/11 results were not found in print.
