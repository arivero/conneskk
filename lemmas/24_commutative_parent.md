# Commutative cylinders, spectral walls, and the two-stage compression

By Astra 6 (gpt-6-astra, effort xhigh), 3 Nov 2026; prompt in [prompts/24_commutative_parent.md](../historical/prompts/24_commutative_parent.md). Reproduced as delivered, with links made relative. The section "Numerical check" at the end is by Claude Opus 5.5. Refereed by Terra 6.1 (effort max, 3 Nov 2026; [report](../historical/reviews/2026-11-03_terra_check_24.md)): no error in the displayed equations, and one gap in the general statement on compression maps. The record above the section "Referee amendments" stays as delivered, and those amendments apply to it.

A commutative cylinder admits an exact realization of the **operator window** of lemmas 22 and 23 when the two finite gradings are prescribed through nonlocal spectral boundary conditions. The higher \(K\)-modes then decouple as the radius of \(K\) tends to zero. Two qualifications remain essential: these boundary conditions restrict scalar functions at the walls, and compression of scalar functions through both stages differs from generating a matrix algebra between the stages. In particular, aligned walls give \(\mathbb R\oplus\mathbb R\) on the quaternionic factor under direct scalar compression, whereas the intervening matrix-algebra construction gives \(\mathbb H\oplus\mathbb H\). Local boundary gradings preserve all scalar functions, but their reduction to the unchanged four-section window has a precise restriction proved below. The radial no-go of lemma 22 survives rechecking in its stated scope. For the massless one-loop potential of lemma 23, an analytic argument strengthens the numerical statement to all \(n_f>0\).

**1. Theorem — An exact spectral boundary construction.**

**Hypotheses and conventions.** Let
\[
K=\mathbb {CP}^{3},\qquad
\mathcal H_K=L^2\!\left(K,\Lambda^{0,*}T^*K\otimes\mathcal O(1)\right),
\]
and let
\[
A=\sqrt2(\bar\partial+\bar\partial^*),\qquad
\gamma_K=(-1)^{\deg}.
\]
Use the Fubini–Study metric at a fixed reference scale. Write
\[
V=\ker A\simeq\mathbb C^4,\qquad
\Pi=P_K,\qquad
\Delta_K=\inf\bigl(\operatorname{spec}|A|\setminus\{0\}\bigr)>0.
\]
Here \(\gamma_K|_V=1\). The radius parameter \(r>0\) replaces \(A\) by \(A/r\), after the usual unitary identification of the \(L^2\)-spaces.

These are the analytic data of [Example 16.9](16_coarse_truncation.md). Its \(S^4\) option uses functions pulled back to this same twistor space. An actual operator on \(S^4\) with the required kernel and compression map would need to be specified separately.

Let
\[
E=\begin{pmatrix}0&1\\-1&0\end{pmatrix},\quad
Z=\begin{pmatrix}1&0\\0&-1\end{pmatrix},\quad
S=\begin{pmatrix}0&1\\1&0\end{pmatrix}.
\]
On \(L^2(I_\ell;\mathbb C^2\otimes\mathcal H_K)\), set
\[
\mathcal D_r=E\partial_x+Z\,A/r,\qquad
\widehat\gamma=Z\gamma_K .
\]
All unspecified tensor factors are identities.

Choose self-adjoint involutions \(\Gamma_0,\Gamma_1\) on \(V\), each with two-dimensional positive and negative eigenspaces, and assume
\[
-1\notin\operatorname{spec}(\Gamma_1\Gamma_0).
\]
Extend \(\Gamma_i\) by zero on \(V^\perp\), writing \(C_i=\Pi\Gamma_i\Pi\). Define \(\operatorname{sgn}A=0\) on \(V\), and impose
\[
\chi_0\psi(0)=\psi(0),\qquad
\chi_\ell\psi(\ell)=\psi(\ell),
\]
where
\[
\chi_0=ZC_0-S\operatorname{sgn}A,\qquad
\chi_\ell=ZC_1+S\operatorname{sgn}A.                 \tag{1}
\]

Then:

1. The \(H^1\) realization of \(\mathcal D_r\) is self-adjoint with compact resolvent and anticommutes with \(\widehat\gamma\).
2. \(\Pi\otimes1\) reduces the operator, including its domain.
3. On this reducing subspace, the operator is exactly \(D(\Gamma_0,\Gamma_1)\) of lemma 23.
4. Every eigenvalue on the complementary subspace satisfies
   \[
   |\lambda|\ge \Delta_K/r.                       \tag{2}
   \]

**Proof.** Put \(B=SA/r\). Since \(ES=Z\),
\[
\mathcal D_r=E(\partial_x+B).
\]
The operators \(\chi_i\) are self-adjoint involutions and anticommute with \(E\). Their positive eigenspaces are therefore maximal isotropic for the boundary form
\[
[\langle\psi,E\phi\rangle]_{0}^{\ell}.
\]

On \(V^\perp\), condition (1) selects the negative spectral subspace of \(B\) at \(0\) and its positive spectral subspace at \(\ell\). These are APS conditions with the inward-normal sign reversed between the two walls. On \(\ker B=\mathbb C^2\otimes V\), condition (1) supplies a Lagrangian subspace:
\[
\Gamma_i\psi_L=\psi_L,\qquad
\Gamma_i\psi_R=-\psi_R.
\]

For \(q\) in the complementary domain, integration by parts gives
\[
\|\mathcal D_rq\|^2
=\|q'\|^2+\|Aq/r\|^2+
 [\langle q,Bq\rangle]_{0}^{\ell}
\ge \|q'\|^2+\frac{\Delta_K^2}{r^2}\|q\|^2.       \tag{3}
\]
The boundary term is nonnegative by the spectral choices.

An eigenbasis of \(A\) decomposes the complementary problem into finite-dimensional interval problems with maximal isotropic endpoint conditions. Each is self-adjoint. Estimate (3) identifies the domain of their self-adjoint direct sum with the stated \(H^1\) domain and gives compactness of its resolvent. The finite-dimensional tangential kernel contributes an ordinary self-adjoint interval problem. This proves self-adjointness, compactness, and (2).

Every boundary projector commutes with \(\Pi\), proving reduction. Finally, \(\{\gamma_K,A\}=0\) implies \(\{\widehat\gamma,\mathcal D_r\}=0\), and \(\widehat\gamma\) preserves both boundary subspaces. ∎

Define
\[
K_F=\frac1{2\ell}\log(\Gamma_1\Gamma_0),\qquad
D_F=\Gamma_0K_F,\qquad R(x)=e^{xK_F},
\]
with the principal logarithm. Let \(P_\pm=(1\pm\Gamma_0)/2\). The finite-window embedding is
\[
W_\ell v(x)=\ell^{-1/2}
 \begin{pmatrix}R(x)P_+v\\R(x)P_-v\end{pmatrix}.   \tag{4}
\]
Direct differentiation gives
\[
\mathcal D_rW_\ell=W_\ell D_F,\qquad
\widehat\gamma W_\ell=W_\ell\Gamma_0.
\]
Thus the prescribed finite operator and grading are exact, provided \(\Delta_K/r>\|D_F\|\). The next eigenvalue in absolute value is at least
\[
\min\left\{\frac{\Delta_K}{r},
               \frac{\pi-\ell\|D_F\|}{\ell}\right\}. \tag{5}
\]

---

**2. Proposition — Local walls and spectral walls have different scalar domain algebras.**

**Hypotheses.** Use the product differential expression of Result 1.

For the local option, let \(G_i(y)\) be smooth self-adjoint bundle involutions and impose
\[
G_i\psi_L=\psi_L,\qquad G_i\psi_R=-\psi_R
\quad\text{at }x=i.
\]
Assume
\[
[G_i,\gamma_K]=0,\qquad
[G_i,\sigma_A(y,\xi)]=0
\quad(\xi\in T_y^*K),                            \tag{6}
\]
where \(\sigma_A\) is the tangential principal symbol.

Then these local conditions give a self-adjoint elliptic realization with compact resolvent, and **every** smooth scalar function on \(K\times I_\ell\) preserves its domain.

For the spectral option (1), the maximal smooth scalar \(*\)-algebra preserving the domain is
\[
\mathcal A_{\rm APS}
=\left\{f\in C^\infty(K\times I_\ell):
 f(\,\cdot\,,0),f(\,\cdot\,,\ell)\text{ are constant on }K\right\}. \tag{7}
\]
The same conclusion holds for the subalgebra pulled back from \(S^4\times I_\ell\).

**Proof.** For the local option, the boundary involution is \(ZG_i\). It anticommutes with the normal matrix \(E\). Condition (6) makes it anticommute with the principal symbol of the adapted tangential operator \(SA/r\). Hence its positive eigenspace is an elliptic Lagrangian boundary condition. The corresponding local ellipticity and adjoint-domain criteria are described in Bär–Ballmann, Corollary 4.18 and Example 4.20. [Primary reference](https://arxiv.org/pdf/1307.3021)

Scalar multiplication commutes pointwise with \(G_i\), so it preserves the endpoint conditions and the \(H^1\) domain. Moreover,
\[
[\mathcal D_r,f]=E\,\partial_xf+Z[A,f]/r
\]
is bounded for each \(r>0\).

For spectral walls, preservation by a scalar \(*\)-algebra is equivalent to
\[
[M_{f_i},\chi_i]=0.
\]
Independence of the spin matrices \(Z,S\) gives
\[
[M_{f_i},C_i]=0,\qquad
[M_{f_i},\operatorname{sgn}A]=0.
\]
Since \(C_i^2=\Pi\), the first equation implies
\[
[M_{f_i},\Pi]=0.                                 \tag{8}
\]

Consequently multiplication by \(f_i\) preserves \(H^0(K,\mathcal O(1))\). If \(s\) is such a section, then
\[
0=\bar\partial(f_i s)=(\bar\partial f_i)s.
\]
The sections of \(\mathcal O(1)\) have no common zero, so \(\bar\partial f_i=0\) everywhere. A holomorphic function on compact connected \(\mathbb{CP}^3\) is constant. Constants plainly preserve (1), proving (7). ∎

The hypotheses in (6) are a sufficient local ellipticity condition. An arbitrary bundle grading supplies a pointwise isotropic condition, but self-adjointness on an \(H^1\) domain and compact resolvent still require an ellipticity check. Likewise, prescribing a grading only on \(V\) leaves the boundary problem incomplete until a condition on \(V^\perp\) is supplied.

*Scope.* Write G_0 at x = 0 and G_l at x = l. Equation (6) supplies the principal-symbol condition of Bär-Ballmann, Corollary 4.18 and Theorem 4.11; their Example 4.20 assumes more. On the unaugmented Dolbeault bundle the Clifford representation is irreducible, so a fibre endomorphism commuting with every sigma_A is scalar, and a smooth involution of this form is +1 or -1. Additional fibres and other local elliptic projectors lie outside this sufficient criterion.

---

**3. Proposition — Compression of a local grading and the unchanged level-one window.**

**Hypotheses.** Let \(G\) be a self-adjoint bundle involution acting by multiplication, and let
\[
g=\Pi G\Pi|_V,\qquad Q_K(f)=\Pi M_f\Pi|_V.
\]
Keep the level-one space and scalar representation of Example 16.9 unchanged.

Then
\[
1_V-g^2
 =\bigl((1-\Pi)G\Pi\bigr)^*
    \bigl((1-\Pi)G\Pi\bigr).                     \tag{9}
\]
In particular, \(g\) is a grading exactly when \([G,\Pi]=0\). In that event,
\[
[g,Q_K(f)]=0
\quad\text{for every scalar }f.                  \tag{10}
\]
For either the full \(\mathbb{CP}^3\) scalar algebra or the \(S^4\) pullback algebra, this forces
\[
g=1_V\quad\text{or}\quad g=-1_V.                 \tag{11}
\]

**Proof.** Expand \(\Pi G^2\Pi=\Pi\) using \(1=\Pi+(1-\Pi)\); this gives (9). Vanishing of its positive right-hand side implies \((1-\Pi)G\Pi=0\), and self-adjointness gives the other off-diagonal block.

Since scalar multiplication commutes with \(G\), reduction then gives (10). The compressed \(\mathbb{CP}^3\) functions generate \(M_4(\mathbb C)\). The compressed real \(S^4\) functions generate \(M_2(\mathbb H)\), whose complex-linear commutant on \(\mathbb C^4\) is also \(\mathbb C1\). Thus a self-adjoint involution satisfying (10) is \(\pm1\). ∎

For **aligned local walls** with \([G,A]=0\), the finite zero-mode window is explicitly
\[
v\longmapsto \ell^{-1/2}
 \begin{pmatrix}P_+(g)v\\P_-(g)v\end{pmatrix}.
\]
The induced grading is \(g\), and scalar compression is
\[
P_+(g)Q_K(f)P_+(g)+P_-(g)Q_K(f)P_-(g)=Q_K(f).
\]
By (11), the unchanged four-section window has trivial grading. Its generated algebra remains \(M_2(\mathbb H)\) or \(M_4(\mathbb C)\), according to the scalar algebra chosen. The globally constant choices \(G=\pm1\) give concrete self-adjoint examples with this window and a separated higher spectrum.

There is also an explicit local field illustrating failure of reduction. Add a trivial auxiliary \(\mathbb C^4\) bundle and put
\[
G(y)=\sum_{a=1}^5 y_a\Gamma_a^{\rm aux},
\]
where \(y\in S^4\) is the twistor projection and the \(\Gamma_a\) satisfy
\(\{\Gamma_a,\Gamma_b\}=2\delta_{ab}\). This is a local involution satisfying (6), but now the tangential kernel has dimension \(16\), and
\[
g=\frac15\sum_{a=1}^5
       \Gamma_a^{\rm section}\otimes\Gamma_a^{\rm aux}.
\]
Using \(\operatorname{tr}(\Gamma_a\Gamma_b)=4\delta_{ab}\),
\[
\operatorname{tr}(g^2)=\frac{16}{5}\ne16.
\]
Thus \(g\) is not a grading. Equation (9) even gives
\[
\|(1-\Pi)G\Pi\|\ge \frac2{\sqrt5},
\]
independently of \(r\). This is a bound on boundary-trace mixing; it does not identify the actual low spectral window of the coupled local problem.

A local \(G(y)\) specifies a **field of gradings**. It does not select a marked point \(p\). In the tautological quaternionic line bundle,
\[
\Pi_y=\frac{1+y_a\Gamma_a}{2},
\]
the natural field \(2\Pi_y-1\) acts as \(+1\) on the fibre \(\operatorname{ran}\Pi_y\). By contrast, the finite grading
\[
\Gamma_p=p_a\Gamma_a=5Q_K(p\cdot y)
\]
uses a separately chosen point \(p\). Its action on global section coefficients is nonlocal.

The restriction proved here concerns the unchanged level-one space, a local multiplication grading, and its compression as an actual involution. A different coupled window, additional fibres, or spectral boundary conditions remain available directions.

*Scope.* The statement on marked points concerns the natural field displayed above. A local field can encode a chosen point: on the auxiliary bundle, G_p(y) = p_a Gamma_a^aux is a local constant field whose coefficients contain p.

---

**4. Theorem — The composed compression map and the aligned-wall algebra.**

**Hypotheses.** Use the exact spectral construction of Result 1. For a scalar multiplier \(f(y,x)\), let
\[
T_f(x)=Q_K(f(\,\cdot\,,x)),\qquad
\mathcal E_0(T)=\frac12(T+\Gamma_0T\Gamma_0).
\]
Use real-valued functions and real algebra generation when discussing \(M_2(\mathbb H)\).

Then the compression directly from the scalar cylinder to the finite window is
\[
\boxed{\;
\Phi_\ell(f)
=\frac1\ell\int_0^\ell
 \mathcal E_0\!\left(R(x)^*T_f(x)R(x)\right)\,dx .
\;}                                                        \tag{12}
\]
It is independent of \(r\).

For aligned walls \(\Gamma_1=\Gamma_0=\Gamma_p\), direct scalar compression on the \(S^4\) factor generates
\[
\mathbb R\oplus\mathbb R.                         \tag{13}
\]
If instead one first generates \(M_2(\mathbb H)\) and then applies the interval compression, the result is
\[
\mathbb H\oplus\mathbb H.                         \tag{14}
\]

**Proof.** Insert (4) on both sides of the multiplication operator. Orthogonality of the two interval spin components gives exactly (12).

For real \(S^4\) functions, Example 16.9 implies
\[
Q_K(C^\infty(S^4,\mathbb R))
=\operatorname{span}_{\mathbb R}\{1,\Gamma_1,\ldots,\Gamma_5\}. \tag{15}
\]
Indeed all compressed functions are quaternionic Hermitian matrices; that space has real dimension six, and the displayed six matrices belong to the image and are independent.

For aligned walls \(R=1\). Clifford multiplication gives
\[
\mathcal E_p(\Gamma_a)=p_a\Gamma_p.
\]
Therefore the image of direct scalar compression is
\[
\operatorname{span}_{\mathbb R}\{1,\Gamma_p\}.
\]
This space is already the algebra \(\mathbb R\oplus\mathbb R\), proving (13).

On the other hand,
\[
\mathcal E_p(M_2(\mathbb H))
=\{a\in M_2(\mathbb H):[a,\Gamma_p]=0\}
=\mathbb H\oplus\mathbb H,
\]
proving (14). The noncommuting products needed to generate the quaternionic diagonal blocks have been inserted between the two compressions in this second procedure. ∎

On the single \(\mathbb{CP}^3\) factor, real scalar compression is onto the Hermitian \(4\times4\) matrices. A chosen \(2+2\) aligned grading therefore gives all Hermitian block-diagonal matrices and generates
\[
M_2(\mathbb C)\oplus M_2(\mathbb C).
\]

For the **chosen two-sheet coarse correspondence** of Example 16.9, with
\[
H_0=\operatorname{Hom}(V,W)\oplus\operatorname{Hom}(W,V),
\qquad
\Gamma_0(\xi,\eta)=(\Gamma_p\xi,-\eta\Gamma_p),
\]
the same calculation gives
\[
\boxed{\;
\operatorname{alg}_{\mathbb R}
   \bigl(\text{direct aligned scalar compression}\bigr)
 =\mathbb R\oplus\mathbb R\oplus M_4(\mathbb C).
\;}                                                        \tag{16}
\]
The \(V\)-side matrices act on the left of \(\eta\) and commute with its right grading, so that factor survives unchanged.

Endpoint restrictions do not change these finite-dimensional images. If a linear functional vanishes on compressions of functions supported in \(0<x<\ell\), its smooth matrix-entry density vanishes in the interior and hence everywhere. Finite-dimensional separation then gives equality with the unrestricted image, exactly as in [Result 7 of lemma 20](20_connecting_operator.md).

At the intermediate stage, however, spectral walls still give scalar endpoint values. Even after algebra generation, those values remain scalar. Enlarging them to the full stabilizers of \(\Gamma_0,\Gamma_1\), as in lemma 23, is another change of the parent algebra. Equality of finite compression images does not identify the parent gauge groups or one-forms.

---

**5. Theorem — Radius collapse, interval collapse, and controlled mixing.**

**Hypotheses.** First use the exact construction of Result 1. Identify the varying Hilbert spaces by metric rescaling. For resolvent formulas, fix units in which the nonreal spectral parameter is \(i\).

Then, at fixed \(\ell\),
\[
\left\|(\mathcal D_r-i)^{-1}
 -\iota_\Pi(D(\Gamma_0,\Gamma_1)-i)^{-1}\iota_\Pi^*
\right\|
\le \frac r{\Delta_K}.                            \tag{17}
\]
Thus radius collapse gives the entire matrix interval operator in generalized norm-resolvent sense.

If \(D_F\) is fixed, \(\ell\to0\), and
\[
\Gamma_1(\ell)
=e^{\ell\Gamma_0D_F}\Gamma_0e^{-\ell\Gamma_0D_F},
\]
then \(r\to0\) and \(\ell\to0\) decouple both towers and leave the finite operator \(D_F\). No relation between the two rates is required in this exactly reducing construction.

**Proof.** The resolvent is block diagonal with respect to \(\Pi\). Estimate (2) bounds its complementary block by \(r/\Delta_K\), proving (17). For the finite-window limit, (5) bounds the complementary resolvent by
\[
\max\left\{\frac r{\Delta_K},
 \frac{\ell}{\pi-\ell\|D_F\|}\right\},
\]
which tends to zero. ∎

A useful mixing statement requires additional hypotheses. Suppose a transformed problem has a common domain and the form
\[
\widetilde{\mathcal D}_r=\mathcal D_r+V_r,
\qquad V_r=V_r^*,\qquad \|V_r\|\le b_r.
\]
Write
\[
v_r=\|(1-\Pi)V_r\Pi\|.
\]
For an eigenvector \(\psi=p+q\), with \(p=\Pi\psi\), \(q=(1-\Pi)\psi\), and \(|\lambda|\le L\), assume
\[
g_r=\Delta_K/r-b_r-L>0.
\]
Then
\[
\boxed{\quad
\|q\|\le \frac{v_r}{g_r}\|p\|,\qquad
\|\text{Schur correction at }\lambda\|
 \le\frac{v_r^2}{g_r}.
\quad}                                                     \tag{18}
\]

**Proof.** The complementary eigenvalue equation gives
\[
q=-\bigl(\mathcal D_{r,Q}+V_{QQ}-\lambda\bigr)^{-1}V_{QP}p.
\]
The inverse has norm at most \(g_r^{-1}\). Substituting this formula into the \(p\)-equation gives the second bound. ∎

For bounded \(b_r,v_r\), both errors are \(O(r/\Delta_K)\). If a common-domain construction instead produces terms of order \(1/\ell\), sufficient conditions include
\[
\frac{r v_r}{\Delta_K}\to0,\qquad
\frac{r v_r^2}{\Delta_K}\to0,
\]
together with convergence of the \(\Pi\)-diagonal perturbation. A sufficient condition for the denominator is r (b_r + L) <= (1 - epsilon) Delta_K. The stronger estimate |D_{r,Q}| >= (Delta_K^2/r^2 + pi^2/(4 l^2))^{1/2}, from the one-ended Poincaré inequality on the positive and negative B-spectral components, replaces Delta_K/r by (Delta_K^2/r^2 + pi^2/(4 l^2))^{1/2} in g_r. This keeps g_r positive at every r when b_r = beta/l with beta < pi/2 and L l < pi/2 - beta; the error bounds of (18) then still need the conditions on v_r stated above.

An arbitrary local \(G_i(y)\) generally fails \([G_i,\Pi]=0\). Although the differential expression commutes with \(\Pi\), its domain then does not. Such a boundary change is not automatically a bounded perturbation satisfying (18). The explicit local field in Result 3 has nonvanishing boundary mixing at every radius. No convergence to the prescribed two-gradings operator is established here for that nonreducing local problem.

At the level of observables, radius collapse leaves (12) unchanged. For an \(x\)-independent \(T=Q_K(f)\),
\[
\|\Phi_\ell(f)-\mathcal E_0(T)\|
 \le \ell\|D_F\|\,\|T\|.                          \tag{19}
\]
If \(T\) is even for \(\Gamma_0\), the stronger formula of Theorem 22.4 applies:
\[
\Phi_\ell(f)=\operatorname{sinc}(\ell\,\operatorname{ad}_{D_F})(T),
\]
\[
\|\Phi_\ell(f)-T\|
 \le\frac{\ell^2}{6}\|[D_F,[D_F,T]]\|.             \tag{20}
\]
Equation (19) follows by integrating
\(\|R^*TR-T\|\le2x\|D_F\|\|T\|\); equation (20) follows by taking the even part of the conjugation series.

Convergence of the **compression maps on their scalar operator systems** needs a common domain and a collapse map: with aligned walls, D_F = 0 and f_l(y, x) = 6 (x/l)(1 - x/l), both endpoint values vanish while Phi_l(f_l) = 1. In the correct form, for F(y, s) fixed on K x [0, 1] and f_l(y, x) = F(y, x/l), Phi_l(f_l) tends to E_0 Q_K(int_0^1 F(., s) ds); for x-independent ambient multipliers the limit is \(\mathcal E_0Q_K\), by (19). It does not turn that image into every element of \(\mathcal E_0(P)\); Result 4 computes the difference explicitly. Algebra generation remains a separate operation.

---

**6. Proposition — The second sheet, reality, even algebra, and connector remain prescribed data.**

**Hypotheses.** Consider the scalar cylinder construction above and, separately, its extension using the two-sheet coarse correspondence of Example 16.9.

The resulting distinctions are:

| Structure | What follows under the stated choices |
|---|---|
| Second sheet and the two Hom spaces | They are inputs in the coarse correspondence. A single four-section cylinder window does not supply them. |
| \(J_1^2=-1\), \(J_1\Gamma_i=-\Gamma_iJ_1\) | These are additional compatibility conditions on the prescribed gradings and antiunitary. |
| \(\mathbb H\oplus\mathbb H\oplus M_4(\mathbb C)\) | This is the derived even part after choosing the quaternionic real form, the grading, and intermediate algebra generation. Direct aligned scalar compression gives (16). |
| Connector and \(\mathbb C\oplus\mathbb H\oplus M_3(\mathbb C)\) | The connector’s lines and coupling are chosen. Their intertwining algebra is then derived. |

**Proof.** The one-factor construction starts with \(V=\mathbb C^4\), and (4) has domain \(V\). The two-sheet construction instead starts with
\[
(W\otimes\overline V)\oplus(V\otimes\overline W).
\]
Geometrically, its analytic realization uses product factors and a restricted scalar algebra, as [Theorem 16.7](16_coarse_truncation.md) specifies. It is additional correspondence data over the scalar spaces.

For reality, suppose an antiunitary \(\mathcal J_1\) on the tangential Hilbert space satisfies
\[
\mathcal J_1^2=-1,\quad
\mathcal J_1A=-A\mathcal J_1,\quad
[\mathcal J_1,\gamma_K]=0,
\]
and its restriction \(J_1\) to \(V\) anticommutes with both \(\Gamma_i\). Then
\[
\widehat J=E\mathcal J_1
\]
preserves (1) and obeys
\[
\widehat J^2=1,\qquad
[\widehat J,\mathcal D_r]=0,\qquad
\widehat J\widehat\gamma=-\widehat\gamma\widehat J.
\]
On the window,
\[
J_F=\Gamma_0J_1.
\]
These identities follow directly from the stated commutation relations. They specify sufficient conditions; the natural \(\mathcal O(1)\) cylinder has not supplied such an extension or its order-zero property here.

In particular, the quaternionic antiunitary \(j\) used to recognize \(M_2(\mathbb H)\) commutes with the \(\Gamma_a\). It does not itself satisfy the required anticommutation with \(\Gamma_p\).

The even-algebra assertion is the centralizer calculation in Result 4 after intermediate generation.

Finally, choose
\[
w\in W_+,\quad v\in V,\quad \|w\|=\|v\|=1,\quad \kappa\ne0,
\]
and prescribe
\[
T_\kappa\xi=\kappa(w^*\xi v)\,vw^*.
\]
Its intertwining conditions require the lines \(\mathbb Cw,\mathbb Cv\) to be reducing, with the same scalar action. A quaternion preserving \(\mathbb Cw\) lies in its chosen copy of \(\mathbb C\); \(v^\perp\) carries arbitrary \(M_3(\mathbb C)\), and \(W_-\) carries arbitrary \(\mathbb H\). Hence
\[
\mathcal A(T_\kappa)
=\{(\lambda\oplus q,\lambda\oplus m)\}
\simeq\mathbb C\oplus\mathbb H\oplus M_3(\mathbb C),
\]
as in [Result 2 of lemma 20](20_connecting_operator.md). ∎

A marked \(p\in S^4\) fixes a quaternionic line, but choosing \(w\) also requires a complex line within it. The second line \(v\), the coupling, and an interface realizing the connector remain necessary. Scalar agreement at marked points has unchanged compression image by Result 7 of lemma 20, so it supplies none of this selection by itself.

---

**7. No-go theorem — Recheck of the radial statement in lemma 22.**

**Hypotheses.** Let the parent be exactly the one-interval model of lemma 22: fixed wall coupling \(X\), zero bulk mass, the even algebra \(\mathcal A_\ell\), scalar inner fluctuations \(E h\) with \(h^*=-h\), and the **moving spectral window**. For real fluctuations, include the conjugate one-form and assume the stated order-zero representation.

Then every fluctuated finite operator has the same singular values as \(D_F\). This is an exact finite-amplitude spectral statement; it uses no action or loop expansion.

**Proof.** Solve
\[
u'=-hu,\qquad u(0)=1,\qquad w=u(\ell),
\]
and set \(v(x)=u(x)w^*\). Then
\[
v(\ell)=1,\qquad v(0)=w^*.
\]
Since \(h\) is even, \(w\) preserves the boundary splitting at \(0\); the identity at \(\ell\) preserves the fixed coupled wall. Thus \(v\) preserves the original domain, and
\[
vD_Xv^*=D_X+Eh.
\]
For the real fluctuation, the analogous implementing unitary is
\[
vJ_FvJ_F^{-1};
\]
order zero separates the two factors in its derivative.

The full operators are unitarily equivalent, so their moving spectral windows are unitarily equivalent. In the finite identifications of lemma 22, the operators are \(w^*D_Fw\), or \(U_w^*D_FU_w\) in the real case. Their singular values coincide. ∎

The moving-window hypothesis matters. For example, with \(D_F=m\sigma_1\) and \(h=i\sigma_3\), fixed compression gives
\[
Q_\ell(Eh)
=-\frac{1-\cos(2m\ell)}{2m\ell}\sigma_2.
\]
Adding a multiple of this operator to the fixed \(m\sigma_1\) changes its singular values at second order.

The verdict agrees with the author’s amended theorem and [Terra’s independent endpoint-preserving proof](../historical/reviews/2026-11-03_terra_check_22.md). In the usual nondegenerate Standard Model representation, the normalized shifted Higgs quaternion lies on the unit-quaternion orbit; its norm is fixed.

The known escapes are a variable wall coupling, odd connection directions, suitable bulk masses, additional internal directions with nontrivial connection data, or additional elementary or composite fields. A quantum effective action on the same configuration space does not add a radial coordinate. The proposed \(K\times I_\ell\) parent has tangential directions and tangential one-forms, so this theorem does not decide its full fluctuation space.

---

**8. Lemma — A logarithmic concavity property of the one-loop integral.**

**Hypotheses.** Let
\[
\mathcal J(z)=\int_0^\infty
       \frac{x^3}{\sinh^2x+z}\,dx,\qquad z>0,
\]
and define
\[
e(z)=-\frac{z\mathcal J'(z)}{\mathcal J(z)}.
\]
Then \(0<e(z)<1\), and \(e\) is nondecreasing.

**Proof.** Positivity and
\[
0<\frac{z}{\sinh^2x+z}<1
\]
show that \(e(z)\), expressed as a weighted average of this fraction, lies strictly between zero and one.

Put \(x=e^v\), \(z=e^u\). Then
\[
\mathcal J(e^u)
=\int_{\mathbb R}
 \exp\!\left(
 4v-\log\!\bigl(\sinh^2(e^v)+e^u\bigr)
 \right)\,dv.                                    \tag{21}
\]
The function
\[
b(v)=2\log\sinh(e^v)
\]
is convex, because, with \(x=e^v\),
\[
b''(v)=2x\bigl(\coth x-x\,\operatorname{csch}^2x\bigr)>0.
\]
The last inequality is equivalent to \(\sinh x\cosh x>x\).

The function \((u,v)\mapsto\log(e^{b(v)}+e^u)\) is therefore convex. The integrand in (21) is jointly log-concave. Marginal integration preserves log-concavity by Prékopa’s theorem, so \(u\mapsto\log\mathcal J(e^u)\) is concave. We use precisely Theorem 6, p. 342, of [Prékopa’s original paper](https://rutcor.rutgers.edu/Prekopa/pdf/SCIENT2.pdf).

Finally,
\[
\frac{d}{du}\log\mathcal J(e^u)=-e(e^u).
\]
Concavity makes this derivative nonincreasing, proving the assertion. ∎

---

**9. Theorem — The massless one-loop potential has no interior local minimum.**

**Hypotheses.** Let the action be exactly the one-loop determinant displayed in [lemma 23](23_two_gradings_interval.md): a flat interval, zero bulk masses, frequency-one fermions, the stated charged and neutral gauge towers and multiplicities, and the prescribed connector wall condition. Assume that no fermion connector modifies the displayed fermion tower, and add no wall potential or other angle-dependent term.

Let \(n_f>0\), set \(t=\sin^2\theta\), and write
\[
\mathcal V(t)=8\pi^2\ell^4 V(\theta).
\]
Then:

1. \(t=1\), equivalently \(\theta=\pi/2\), is the unique global minimum.
2. If \(n_f\ge54/5\), the potential is strictly decreasing on the interior.
3. If \(0<n_f<54/5\), there is exactly one interior stationary point, and it is a strict maximum.

**Proof.** Define
\[
F(z)=\int_0^\infty x^3
       \log\!\left(1+\frac z{\sinh^2x}\right)\,dx,
\qquad F'(z)=\mathcal J(z).
\]
The exact potential is
\[
\mathcal V(t)
=3F(2t(1-t))
 +\frac32F\!\left(\frac{16}{5}t(1-t)\right)
 -n_fF(t).                                      \tag{22}
\]
Its gauge terms are nonnegative and vanish at \(t=1\). Since \(F\) is strictly increasing, the fermion term is uniquely minimized there. This proves item 1.

Differentiate:
\[
\mathcal V'(t)
=(1-2t)\left[
 6\mathcal J(2t(1-t))
 +\frac{24}{5}\mathcal J\!\left(\frac{16}{5}t(1-t)\right)
 \right]-n_f\mathcal J(t).                       \tag{23}
\]
For \(t\ge1/2\), this is strictly negative.

For \(0<t<1/2\) and \(c\ge2\), put
\[
R_c(t)=
 (1-2t)\frac{\mathcal J(ct(1-t))}{\mathcal J(t)}.
\]
Let \(a=ct(1-t)\). Then \(a\ge t\), and Result 8 gives \(e(a)\ge e(t)\). Consequently,
\[
\begin{aligned}
\frac{d}{dt}\log R_c(t)
&=-\frac2{1-2t}
 -\frac{1-2t}{t(1-t)}e(a)+\frac{e(t)}t\\
&\le-\frac2{1-2t}+\frac{e(t)}{1-t}\\
&<-\frac2{1-2t}+\frac1{1-t}<0.
\end{aligned}
\]
Thus every \(R_c\) is strictly decreasing. Since \(\mathcal J(0)\) is finite and positive,
\[
R_c(0+)=1,\qquad R_c(1/2-)=0.
\]
Therefore
\[
H(t)=6R_2(t)+\frac{24}{5}R_{16/5}(t)
\]
decreases strictly from \(54/5\) to zero. Equation (23) becomes
\[
\mathcal V'(t)=\mathcal J(t)\,[H(t)-n_f]
\quad(0<t<1/2).
\]
For \(n_f\ge54/5\), its sign is negative. For \(0<n_f<54/5\), it changes sign exactly once, from positive to negative. Since \(t=\sin^2\theta\) is strictly increasing on the interior, the same stationary-point classification holds in \(\theta\). ∎

This proves the massless statement for the entire parameter range, including the previously numerical range. No numerical computation is used in this proof.

The recorded author and [Terra referee calculations](../historical/reviews/2026-11-03_terra_check_23.md) agree on the sampled massless cases. The logarithmic-concavity proof above is an additional single-agent derivation; it has not received a fresh independent model review in this turn. The recorded agreement therefore should not be described as a multi-model review of this new proof.

The escapes remain changes to the stated determinant: frequency-two fermions, modified form factors through warping or other geometry, suitable bulk-mass sectors, wall potentials, and wall kinetic or interaction terms. The full effective action of the proposed \(K\times I_\ell\) parent, including its \(K\)-tower, has not been computed here. Theorem 9 is for theta in [0, pi/2]; at theta = pi/2 the determinant has its continuous value, while the principal-logarithm window is degenerate.

---

**10. Proposition — Scope of the bulk-mass scans.**

**Hypotheses.** Retain the flat gauge terms of (22) as an independent assumption. Replace the fermion factor by the expression in lemma 23:
\[
1+t(G(x)-1),\qquad
G(x)=
\frac{(w_Q\coth w_Q-c_Q)(w_U\coth w_U-c_U)}{x^2},
\quad w_i=\sqrt{x^2+c_i^2}.
\]

If \(c_U=-c_Q=c\), then the potential is finite and \(t=1\) is its unique global minimum for every \(n_f>0\). The reported absence of additional interior **local** minima at nonzero \(c\) remains a numerical statement here.

If \(a=c_Q+c_U\ne0\), the displayed unrenormalized integral has angle-dependent ultraviolet divergences, for nonzero fermion multiplicity and with no cancellation by additional sectors.

**Proof.** For opposite masses,
\[
G(x)=1+\frac{w^2}{x^2\sinh^2w},\qquad
w=\sqrt{x^2+c^2}.
\]
The added fraction is positive and decays exponentially at infinity. The negative fermion logarithm is strictly decreasing in \(t\). The gauge logarithms are nonnegative and vanish at \(t=1\), proving the global-minimum assertion.

For general masses,
\[
G(x)=1-\frac ax+\frac{a^2}{2x^2}+O(x^{-3}),
\]
and hence
\[
\log(1+t(G-1))
=-\frac{ta}{x}+\frac{t(1-t)a^2}{2x^2}+O(x^{-3}).
\]
Multiplication by the integration measure \(x^3dx\) produces angle-dependent divergences. A finite potential therefore requires a specified completion, regulator, and counterterms. ∎

The opposite-mass scan in lemma 23 samples finitely many masses, multiplicities, and angles. It cannot exclude unsampled local minima. General bulk masses and altered gauge form factors remain directions for constructing an interior vacuum; these conclusions leave that question open.

## Consequence for T0 and T0b

For T0, a commutative scalar representation with prescribed spectral walls gives an exact interval operator window and controlled tower decoupling, while local walls preserve the full scalar algebra under the ellipticity hypotheses above. The derivation of a nontrivial local grading and the desired algebra from one coupled scalar window remains open, and intermediate algebra generation must be stated explicitly. For T0b, the second sheet, compatible reality, quaternionic grading choice, and connector remain inputs; their algebraic consequences can be derived once those choices are supplied. Neither the radial theorem nor the specified one-loop potential closes the commutative-parent problem.

## Referee amendments

From Terra 6.1. These apply to the text above.

- **Result 2.** Write G_0 at x = 0 and G_l at x = l. Equation (6) supplies the principal-symbol condition of Bar-Ballmann, Corollary 4.18 and Theorem 4.11; their Example 4.20 assumes more. On the unaugmented Dolbeault bundle, the Clifford representation is irreducible, so a fibre endomorphism commuting with every sigma_A is scalar, and a smooth involution of this form is +1 or -1. Additional fibres and other local elliptic projectors lie outside this sufficient criterion.
- **Result 3.** The statement on marked points concerns the natural field displayed there. A local field can encode a chosen point: on the auxiliary bundle, G_p(y) = p_a Gamma_a^aux is a local constant field whose coefficients contain p.
- **Result 4.** Equation (16) has the two Hom spaces and the two scalar algebras of Example 16.9 as inputs. The endpoint argument proves equality of the finite-dimensional linear images, and does not identify the parent algebras, norms, gauge groups or one-forms.
- **Result 5, gap in the final assertion.** Convergence of compression maps needs a common domain and a collapse map. With aligned walls, D_F = 0 and f_l(y, x) = 6 (x/l)(1 - x/l), both endpoint values vanish while Phi_l(f_l) = 1. A correct form: for F(y, s) fixed on K x [0, 1] and f_l(y, x) = F(y, x/l), Phi_l(f_l) tends to E_0 Q_K(int_0^1 F(., s) ds). For x-independent ambient multipliers the limit is E_0 Q_K, by (19). The rate discussion after (18) also needs control of the denominator: a sufficient addition is r (b_r + L) <= (1 - epsilon) Delta_K. The case b_r = O(1/l) follows from the stronger estimate |D_{r,Q}| >= (Delta_K^2/r^2 + pi^2/(4 l^2))^{1/2}, from the one-ended Poincare inequality on the positive and negative B-spectral components.
- **Result 6.** At the finite level, if the gradings are Gamma_p, Gamma_q, a unit n orthogonal to p and q gives J_1 = Gamma_n j, with J_1^2 = -1 and the required anticommutation. Extending this choice to the parent remains a separate task.
- **Lemma 8 and Theorem 9.** An independent check of the key monotonicity, without log-concavity or Prekopa's theorem: with rho(s) = (arsinh sqrt(s))^3/(2 sqrt(s (1 + s))), J(z) = int_0^infinity rho(s)/(s + z) ds; with L(v) = log rho(e^v), L'(v) = 3 tanh(x)/(2x) - (1 + tanh^2 x)/2 for v = 2 log sinh x, which is strictly decreasing. For z = e^u, with the probability density in y proportional to e^y rho(e^{u+y})/(1 + e^y), e(e^u) is the mean of 1/(1 + e^y), and its derivative in u is Cov(1/(1 + e^y), L'(u + y)) > 0, as both are strictly decreasing. Theorem 9 is for theta in [0, pi/2]. At theta = pi/2 the determinant has its continuous value, while the principal-logarithm window is degenerate. Its hypotheses are the flat massless one-loop determinant, its gauge multiplicities and connector wall condition, frequency-one fermions, no fermion-connector modification, and no other angle-dependent term.
- **Result 10.** The divergence is stated for nonzero fermion multiplicity, with no cancellation by additional sectors. The opposite-mass scan in lemma 23 is a numerical result on its sampled parameters.

## Numerical check

By Claude Opus 5.5, in Python (numpy, scipy), 3 Nov 2026, in a temporary directory, not kept: E_p(Gamma_a) = p_a Gamma_p to 10^-15, which gives equation (13); tr(g^2) = 16/5 for the auxiliary field of Result 3; on grids, e(z) lies in (0, 1) and is nondecreasing for z in [10^-3, 50]; H(t) is strictly decreasing on (0, 1/2), with H near 54/5 at small t and near 0 at t = 1/2; for n_f in {1, 3, 6, 8, 10}, H - n_f has one sign change, with the stationary angle 0.34 at n_f = 8, which agrees with the referee of lemma 23. Results 1, 2, 5 and 6 were read and not separately computed.
