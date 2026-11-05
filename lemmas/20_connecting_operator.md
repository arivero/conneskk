# Sheet-connecting operators and boundary gluing

By Astra 6 (gpt-6-astra), 3 Nov 2026; prompt in [prompts/20_connecting_operator.md](../historical/prompts/20_connecting_operator.md). The sections "Numerical check" and "Readings" at the end are by Claude Opus 5.5.

A rank-one operator can connect the two finite summands with the required real signs and grading, and the Chamseddine–Connes maximal algebra follows from its intertwining algebra. A boundary coupling supplies such an operator in an explicit interval model. However, agreement of scalar functions at a wall generally does not survive compression as the finite order-one restriction: an exact one-flavour counterexample exhibits this failure. The interval construction realizes the classified rank-one block when its matrix algebra, grading and coupled channels are supplied as inputs; it does not derive those inputs from Example 16.9. The three requested obstruction checks hold in the scopes specified below.

## 1. Theorem — Finite connecting blocks and their admissible algebras

**Hypotheses and conventions.** Let
\[
E=\operatorname{Hom}_{\mathbb C}(V,W),\qquad
E^*=\operatorname{Hom}_{\mathbb C}(W,V),
\]
with Hilbert–Schmidt inner products, conjugate-linear in the first argument. Here \(E^*\) denotes the second Hom space; operator adjoints also carry a superscript \(*\).

Let \(c:E\to E^*\) be the antiunitary occurring in the real structure:
\[
J(x,y)=(c^{-1}y,cx),\qquad
\Gamma=\begin{pmatrix}g&0\\0&h\end{pmatrix},
\qquad h=-cgc^{-1}.
\]
In Example 16.9, after choosing the grading of \(W\),
\[
cx=x^*,\qquad gx=\gamma_Wx,\qquad hy=-y\gamma_W.
\]
For the more general graded flip of Corollary 16.8, \(c\) includes its stated grading sign.

Let \(\mathcal A^{\mathrm{ev}}\) act diagonally through \(\pi_1,\pi_2\). Write \(\rho_i(b)\) for its opposite action on the two summands. Assume that the sheet-diagonal \(D_F\) already satisfies self-adjointness, oddness, \(JD_F=D_FJ\), and order one on \(\mathcal A^{\mathrm{ev}}\), as in [Corollary 16.8](16_coarse_truncation.md).

For a complex-linear map \(T:E\to E^*\), put
\[
S_T=\begin{pmatrix}0&T^*\\T&0\end{pmatrix},
\qquad D=D_F+S_T,\qquad
\tau(T)=cT^*c.
\]

Then \(D\) has the required signs and satisfies order one on a unital involutive subalgebra \(B\subseteq\mathcal A^{\mathrm{ev}}\) precisely when
\[
\boxed{\quad T=\tau(T),\qquad hT+Tg=0,\quad}
\tag{1}
\]
and
\[
\boxed{
\bigl(T\pi_1(a)-\pi_2(a)T\bigr)\rho_1(b)
=
\rho_2(b)\bigl(T\pi_1(a)-\pi_2(a)T\bigr)
\quad(a,b\in B).
}
\tag{2}
\]
Self-adjointness is automatic from the definition of \(S_T\). In bases related by \(c\), the first equation in (1) says that the matrix of \(T\) is complex symmetric.

In the ordinary adjoint-flip convention, for \(a=(a_W,a_V)\),
\[
\pi_1(a)x=a_Wx,\quad \pi_2(a)y=a_Vy,\quad
\rho_1(a)x=xa_V,\quad \rho_2(a)y=ya_W.
\]
Thus (2) is an entirely explicit equation on Hom spaces.

For an operator \(R:E\to E^*\), define exactly the commutation algebra used in section 4 of Chamseddine–Connes:
\[
\mathcal A(R)=
\left\{
a\in\mathcal A^{\mathrm{ev}}:
\begin{array}{l}
\pi_2(a)R=R\pi_1(a),\\
\pi_2(a^*)R=R\pi_1(a^*)
\end{array}
\right\}.
\tag{3}
\]
For fixed \(T\) satisfying (1), its maximal admissible algebras are the inclusion-maximal members of
\[
\boxed{
\left\{\mathcal A(R):
\ hR+Rg=0,\quad T=R+\tau(R)\right\}.
}
\tag{4}
\]
Consequently, maximal dimension for fixed \(T\) is obtained by maximizing the dimension of the algebras in (4). The distinction between \(T\) and \(R\) is necessary.

**Proof.** Block multiplication gives (1). The lower off-diagonal block of the order-one equation is exactly (2); adjoints give the other block.

To prove (4), suppose (2) holds. Average over the compact unitary group of the finite-dimensional real \(C^*\)-algebra \(B\):
\[
R_0=\int_{U(B)}\pi_2(u)T\pi_1(u)^*\,du.
\]
Then \(R_0\) intertwines the left actions. Equation (2) implies that
\[
T-\pi_2(u)T\pi_1(u)^*
\]
intertwines the opposite actions. Therefore \(Q_0=T-R_0\) intertwines the opposite actions.

The involution \(\tau\) exchanges these two intertwining conditions. Since \(\tau(T)=T\),
\[
R=\frac12\bigl(R_0+\tau(Q_0)\bigr)
\]
intertwines the left actions and satisfies \(T=R+\tau(R)\). Averaging preserves oddness because \(B\) is even; \(\tau\) also preserves oddness. Hence \(B\subseteq\mathcal A(R)\) for an \(R\) occurring in (4).

Conversely, on \(\mathcal A(R)\), the term \(R\) intertwines the left actions and \(\tau(R)\) intertwines the opposite actions. Their sum satisfies (2). This proves the characterization and the maximality statement.

For an explicit reason why \(\mathcal A(T)\) alone is insufficient, take ungraded \(W=V=\mathbb C^2\), \(g=1\), \(h=-1\), and
\[
B=\{(\operatorname{diag}(\alpha,\beta),
       \operatorname{diag}(\alpha,\beta))\}.
\]
Let \(e_{ij}\in E\), \(f_{ij}=ce_{ij}\), and define
\[
Te_{11}=f_{12},\qquad Te_{12}=f_{11},
\]
with all other images zero. This \(T\) is symmetric and odd. The first arrow preserves the right \(B\)-character; the second preserves the left character. Each therefore satisfies order one. But the first arrow fails to intertwine the left actions when \(\alpha\ne\beta\). ∎

## 2. Theorem — The classified algebra is realized by a rank-one block

**Hypotheses.** Let
\[
W=W_+\oplus W_-,\qquad
\dim_{\mathbb H}W_+=\dim_{\mathbb H}W_-=1,\qquad V=\mathbb C^4,
\]
and use the adjoint-flip convention of Result 1. Thus
\[
\mathcal A^{\mathrm{ev}}
=\mathbb H_+\oplus\mathbb H_-\oplus M_4(\mathbb C).
\]
Choose unit vectors \(w\in W_+\), \(v\in V\), and \(\kappa\ne0\). Put
\[
e=wv^*\in E,\qquad f=vw^*=ce,
\]
and
\[
\boxed{
T_\kappa x=\kappa\,(w^*xv)\,vw^*
=\kappa\,|f\rangle\langle e|x.
}
\tag{5}
\]

Then \(T_\kappa\) has complex rank one, satisfies (1), and has intertwining algebra
\[
\boxed{
\mathcal A(T_\kappa)=
\{(\lambda\oplus q,\lambda\oplus m):
\lambda\in\mathbb C,\ q\in\mathbb H,\ m\in M_3(\mathbb C)\}.
}
\tag{6}
\]
Here the first \(\lambda\) acts on the quaternionic line \(W_+\) as
\[
\lambda\longmapsto
\begin{pmatrix}\lambda&0\\0&\overline\lambda\end{pmatrix}
\]
in a basis starting with \(w\), and the second acts on \(\mathbb Cv\subset V\).

The algebra (6) has real dimension \(24\). Up to an automorphism of \(\mathcal A^{\mathrm{ev}}\), it is the unique maximal-dimensional involutive subalgebra admitting a nonzero sheet-connecting Dirac block with order one. The off-diagonal self-adjoint operator \(S_{T_\kappa}\) has complex rank two.

**Proof.** Since \(ge=e\) and \(hf=-f\), \(T_\kappa\) is odd. Its matrix has the single symmetric entry \(\kappa\) in \(c\)-paired bases, so \(\tau(T_\kappa)=T_\kappa\).

The two intertwining equations in (3) require that \(\mathbb Cw\) and \(\mathbb Cv\) be reducing subspaces for the respective actions, with the same scalar action on these lines. A quaternion preserving \(\mathbb Cw\) belongs to the displayed copy of \(\mathbb C\). On \(V\), the orthogonal complement \(v^\perp\) carries an arbitrary \(M_3(\mathbb C)\)-action. The other quaternionic summand is unrestricted. This proves (6), and \(2+4+18=24\).

We reproduce the dimension argument in [Chamseddine–Connes, section 4](https://arxiv.org/abs/0706.3688), where (3) is the relation labelled comrel in the LaTeX source. A nonzero connecting block implies, by Result 1, a nonzero intertwiner \(R\) for \(B\). Compress \(R\) on either side by projections in the commutants of the full even algebra. Some nonzero compression remains, and its support and range can be placed in irreducible representation spaces
\[
K:\mathbb C^2\longrightarrow\mathbb C^4.
\]
These compressions enlarge the intertwining algebra.

If \(K\) has rank two, its image is a reducing two-plane in \(\mathbb C^4\). The matrix action on that plane is determined by the quaternion action. The remaining two-plane contributes at most \(M_2(\mathbb C)\). Including the unused quaternionic summand gives
\[
\dim_{\mathbb R}B\le4+4+8=16.
\]
If \(K\) has rank one, its support and range are complex lines. The intertwining algebra is (6), of dimension \(24\). Unitary changes of these lines, and exchange of the quaternionic summands, give the stated uniqueness.

Finally, \(T_\kappa\) and \(T_\kappa^*\) have orthogonal source and target summands, giving \(\operatorname{rank}S_{T_\kappa}=2\). ∎

The connecting condition here is relative to the sheet projections of the original prealgebra: \([S_{T_\kappa},e_1]\ne0\). On the selected algebra (6), this particular Majorana block commutes with the algebra. Additional sheet-diagonal Dirac terms are needed for the usual nontrivial finite one-forms and Yukawa data.

## 3. Lemma — Boundary preservation is an intertwining condition

**Hypotheses.** Use the domain of [Lemma 12](12_boundary_yukawa_interval.md):
\[
Q_R(0)=0,\quad U_L(0)=0,\quad
Q_R(l)=XU_R(l),\quad U_L(l)=-X^*Q_L(l).
\tag{7}
\]
Let multiplication act through smooth matrix functions \(F_Q,F_U\), with the same matrix on both chiral components of each field.

Multiplication preserves this domain precisely when
\[
\boxed{
F_Q(l)X=XF_U(l),\qquad
F_U(l)X^*=X^*F_Q(l).
}
\tag{8}
\]
These equations define a unital involutive algebra. For scalar functions and \(X\ne0\), they reduce to
\[
f_Q(l)=f_U(l).
\tag{9}
\]
For \(X=0\), no equality between the boundary values is required.

**Proof.** At \(x=l\), the traces \(Q_L(l)\) and \(U_R(l)\) can be chosen independently. Applying multiplication to the first coupled condition in (7) gives
\[
F_Q(l)XU_R(l)=XF_U(l)U_R(l)
\]
for every \(U_R(l)\). This is the first equation in (8). The other condition gives the second equation. Conversely, these equations preserve both boundary conditions; the conditions at zero are automatically preserved.

Taking the adjoint of the second equation gives
\[
F_Q(l)^*X=XF_U(l)^*.
\]
Thus (8) has precisely the two-equation form (3). Closure under products and adjoints follows directly. ∎

For matrix-valued functions, “agreement at the wall” therefore means agreement through \(X\) on the coupled boundary channels. It need not mean equality of the entire boundary matrices.

## 4. Counterexample — Scalar gluing does not imply finite order one

**Hypotheses.** Let \(N_Q=N_U=1\), both bulk masses vanish, and \(X=t>0\). Set
\[
\theta=\arctan t\in(0,\pi/2),\qquad m=\theta/l.
\]
Take the full domain-preserving scalar algebra
\[
\mathcal A_{\mathrm{glue}}
=\{(f_Q,f_U)\in C^\infty([0,l])^2:f_Q(l)=f_U(l)\}.
\tag{10}
\]
The bulk operator is
\[
D(Q_L,Q_R;U_L,U_R)
=(Q_R',-Q_L';U_R',-U_L')
\]
on (7). Use physical chirality
\[
\Gamma(Q_L,Q_R;U_L,U_R)
=(Q_L,-Q_R;U_L,-U_R)
\]
and the antiunitary
\[
\mathcal J(Q_L,Q_R;U_L,U_R)
=(\overline{U_R},-\overline{U_L};
  -\overline{Q_R},\overline{Q_L}).
\tag{11}
\]

This parent satisfies the signs \((+,+,-)\), order zero and order one. Its lowest symmetric spectral window gives
\[
A_{\mathrm{fin}}=\mathbb C\oplus\mathbb C,\qquad
D_{\mathrm{fin}}=m\sigma_1,\qquad
J_{\mathrm{fin}}=\sigma_1K,\qquad
\Gamma_{\mathrm{fin}}=\sigma_3,
\tag{12}
\]
and these finite data fail order one.

**Proof.** The boundary form proves self-adjointness, as in Lemma 12.1. Equation (11) preserves (7), squares to one, commutes with \(D\), and reverses \(\Gamma\). The opposite algebra acts by the two scalar functions exchanged. Hence it commutes both with the multiplication algebra and with its differential commutators.

The lowest window is spanned by the orthonormal chiral vectors
\[
u_+(x)=l^{-1/2}(\cos mx,0;-\sin mx,0),
\]
\[
u_-(x)=l^{-1/2}(0,\sin mx;0,\cos mx).
\tag{13}
\]
Direct differentiation gives \(Du_+=mu_-\), \(Du_-=mu_+\). The boundary conditions hold because \(\tan(ml)=t\). Solving the same elementary ODE gives the next absolute eigenvalue \((\pi-\theta)/l\), so any symmetric cutoff between \(m\) and this value selects exactly (13).

Compression of (10) is
\[
Q(f_Q,f_U)=
\begin{pmatrix}
\displaystyle\frac1l\int_0^l(f_Q\cos^2mx+f_U\sin^2mx)\,dx&0\\[2mm]
0&\displaystyle\frac1l\int_0^l(f_Q\sin^2mx+f_U\cos^2mx)\,dx
\end{pmatrix}.
\tag{14}
\]
Let \(f_Q\) be a nonnegative bump supported sufficiently near zero, and let \(f_U=0\). The wall equality holds, while the difference of the diagonal entries is
\[
\frac1l\int_0^l f_Q(x)\cos(2mx)\,dx>0.
\]
Together with the identity, this gives the full diagonal algebra \(\mathbb C^2\).

On (13), (11) gives \(J_{\mathrm{fin}}=\sigma_1K\). For \(p=\operatorname{diag}(1,0)\),
\[
p^\circ=1-p,\qquad
[[D_{\mathrm{fin}},p],p^\circ]=-D_{\mathrm{fin}}\ne0.
\]
Thus finite order one fails.

There is also a precise distinction between the original field sheets and the two finite chiral summands. The projection onto the \(Q\)-field compresses to
\[
\begin{pmatrix}
\frac12+\frac{\sin2\theta}{4\theta}&0\\
0&\frac12-\frac{\sin2\theta}{4\theta}
\end{pmatrix},
\tag{15}
\]
which is not a projection. The coupled spectral window does not preserve the original field decomposition. ∎

This proves failure of statement 2(c) for the full scalar gluing algebra, even when the parent has all the required real signs and order conditions. It also specifies the qualification needed in 2(b): the finite summands require an identification, such as continuation from the uncoupled zero modes.

## 5. Theorem — An exact interval parent supplies the rank-one connector

**Hypotheses.** Use the Hom representation, \(c,g,h\) of Result 1. Set
\[
k=cgc^{-1},\qquad h=-k.
\]
Choose a unit vector \(e\in E\) with \(ge=e\), let \(f=ce\), and put
\[
S=|f\rangle\langle e|,\qquad X=tS^*:E^*\to E,\qquad t>0.
\tag{16}
\]
Take two massless interval fields, \(Q\) valued in \(E\) and \(U\) valued in \(E^*\), with boundary conditions (7).

As candidate multipliers, take **constant** elements of \(\mathcal A^{\mathrm{ev}}\), acting by \(\pi_1\) on \(Q\) and \(\pi_2\) on \(U\). Their domain-preserving algebra is
\[
B=\mathcal A(S).
\tag{17}
\]
Define
\[
\widehat\Gamma(Q_L,Q_R;U_L,U_R)
=(gQ_L,-gQ_R;kU_L,-kU_R),
\tag{18}
\]
\[
\widehat J(Q_L,Q_R;U_L,U_R)
=(c^{-1}U_R,-c^{-1}U_L;-cQ_R,cQ_L).
\tag{19}
\]

Let \(n=\dim_{\mathbb C}E\), \(\theta=\arctan t\), \(m=\theta/l\), and choose
\[
m<\Lambda_0<(\pi-\theta)/l.
\]
Then the spectral projection
\[
P=1_{[-\Lambda_0,\Lambda_0]}(D_X)
\]
has rank \(2n\). Under an explicit identification \(P\mathcal H\simeq E\oplus E^*\), its finite data are
\[
\boxed{
\left(
B,\ E\oplus E^*,\
\begin{pmatrix}0&mS^*\\mS&0\end{pmatrix},\
J,\
\begin{pmatrix}g&0\\0&-k\end{pmatrix}
\right).
}
\tag{20}
\]
They satisfy self-adjointness, oddness, order zero, order one, and the signs \((+,+,-)\). The connecting block is \(T=mS\), of complex rank one.

**Proof.** Result 3, with \(X=tS^*\), gives (17). The rank-one condition makes \(\mathbb Ce\) and \(\mathbb Cf\) reducing subspaces for \(B\), with the same action on the two lines.

The coupled channels have exactly the eigenvectors (13), with \(1\) replaced by \(e\) in the \(Q\)-components and by \(f\) in the \(U\)-components. Every orthogonal \(Q\)-channel has boundary type (a), and every orthogonal \(U\)-channel has type (b). They contribute \(2n-2\) constant chiral zero modes; their next absolute eigenvalue is \(\pi/l\). The coupled channels contribute the two eigenvalues \(\pm m\). This proves the window and dimension assertions.

The identification in (20) sends \(e\) and \(f\) to these two coupled chiral vectors. It sends \(e^\perp\subset E\) to constant \(Q_L\)-profiles and \(f^\perp\subset E^*\) to constant \(U_R\)-profiles. Since \(B\) acts identically on the coupled lines, this identification intertwines its representations exactly. Direct application of (18) and (19) gives the displayed finite grading and real structure.

On the parent, (19) squares to one and commutes with the real differential expression. The relations \(kf=f\) and \(ge=e\) ensure grading preservation of the boundary conditions. The identity
\[
cX=X^*c^{-1}
\]
ensures their preservation by \(\widehat J\). These establish the real signs on the operator domain.

The opposite representation is the original right Hom action, so order zero holds. Every admissible constant multiplier commutes with \(D_X\), including preservation of its domain. Order one therefore holds on the parent and on (20). ∎

The wall coupling can also be converted explicitly into a bounded bulk term. On the coupled field channels, let
\[
F=\begin{pmatrix}0&1\\-1&0\end{pmatrix},\qquad
E_{\mathrm{spin}}=\begin{pmatrix}0&1\\-1&0\end{pmatrix},
\qquad
U(x)=\exp(mxF).
\]
Apply the same field rotation to both spin components. It maps the uncoupled boundary domain to the coupled domain and gives
\[
U^*D_XU=D_0+mF\otimes E_{\mathrm{spin}}.
\tag{21}
\]
Compression of the added bounded term to the uncoupled zero modes is exactly \(m(S+S^*)\). Thus the parent supplies the connector through an explicit change of domain and an explicit unitary transport.

Two specializations specify the extent of this construction.

* **A commutative example.** Let \(E=E^*=\mathbb C\), \(g=1\), \(c=K\), and start with constant pairs \(\mathbb C^2\). Boundary preservation selects their common scalar:
  \[
  B=\{(\lambda,\lambda)\}\simeq\mathbb C.
  \]
  The finite triple is
  \[
  (\mathbb C,\mathbb C^2,m\sigma_1,\sigma_1K,\sigma_3).
  \]
  This is the simplest successful instance of 2(a)–(c), with the candidate observable algebra restricted to constant functions on each sheet.

* **The classified block.** Take \(E=\operatorname{Hom}(\mathbb C^4,\mathbb H^2)\), the chosen quaternionic grading, and \(e=wv^*\) from Result 2. Equations (17) and (20) give
  \[
  B=\mathbb C\oplus\mathbb H\oplus M_3(\mathbb C),\qquad
  \dim_{\mathbb C}H_{\mathrm{fin}}=32,
  \]
  and the rank-one connecting block (5) with \(\kappa=m\). This parent contains the Hom fibres and constant matrix algebra as inputs. It is not a construction from scalar functions on the twistor parent.

An exact tower-decoupling family is obtained by fixing \(m>0\) and setting
\[
t(l)=\tan(ml),\qquad 0<ml<\pi/2.
\]
The finite mass remains exactly \(m\), while the next absolute eigenvalue is \(\pi/l-m\to\infty\).

The usual zero-dimensional orientability axiom fails in these examples: the linked vectors \(e,f\) have identical left and opposite characters, whereas their grading eigenvalues are opposite. Every represented zero-cycle acts identically on these two lines. The claims above concern real even spectral triples with the stated order conditions and signs.

## 6. Proposition — Point evaluation bounds rank by the boundary-channel dimension

**Hypotheses.** Let \(K_i\) be finite-dimensional windows of smooth sections, let
\[
\operatorname{ev}_i:K_i\to F_i
\]
be evaluation at the proposed wall, and suppose a finite coupling is defined by
\[
T=\operatorname{ev}_2^*\,X\,\operatorname{ev}_1.
\tag{22}
\]
Then
\[
\operatorname{rank}T
\le
\min\{\operatorname{rank}X,\dim F_1,\dim F_2\}.
\tag{23}
\]
A single scalar evaluation channel gives rank at most one. A point with several fibre components can give larger rank.

**Proof.** Equation (23) follows by factoring (22) through the range of \(X\).

For a counterexample to an unrestricted rank-one claim, take Lemma 12 with
\[
N_Q=N_U=N,\qquad M_Q=M_U=0,\qquad X=tI_N.
\]
It is the orthogonal sum of \(N\) copies of Result 4. Its lowest chiral block is
\[
T=\frac{\arctan t}{l}I_N,
\]
of rank \(N\), although the coupling occurs at the single point \(x=l\). ∎

For an exact boundary-domain perturbation, formula (22) is an additional hypothesis. The operators \(D_X\) and \(D_0\) have different domains, so their difference is not automatically a point-evaluation perturbation. The exact interval mass \(\arctan(t)/l\) also distinguishes the finite operator from its small-\(t\) approximation \(t/l\). An extended wall carries a space of boundary sections and supplies no rank-one conclusion by itself.

## 7. Proposition — Point gluing does not select the algebra in the unchanged twistor window

**Hypotheses.** Let \(Q_i(f)=P_iM_fP_i\), where \(P_i\) project onto finite-dimensional spaces of smooth sections on compact manifolds. Let \(Z_i\) be closed subsets with empty interior. Impose any scalar gluing condition which allows independent functions vanishing near \(Z_1\) and \(Z_2\), including equality at two marked points.

Then the image of this glued algebra under the **unchanged separate compressions** \(Q_1\oplus Q_2\) equals the image of the unrestricted pair algebra.

**Proof.** We first show
\[
Q_i\bigl(C_c^\infty(M_i\setminus Z_i)\bigr)
=
Q_i\bigl(C^\infty(M_i)\bigr).
\tag{24}
\]
If the left image were a proper subspace of the right image, finite-dimensional linear algebra would give a linear functional separating them. Applied to \(Q_i(f)\), that functional has the form
\[
f\longmapsto \int_{M_i}f(x)\,r(x)\,dx
\]
for a smooth density \(r\), because matrix entries of \(Q_i(f)\) are integrals against products of smooth sections.

Vanishing for every test function supported outside \(Z_i\) forces \(r=0\) there. Since that complement is dense and \(r\) is continuous, \(r=0\) everywhere, a contradiction. The argument also applies over the real numbers.

By (24), arbitrary compressed values on either sheet can be obtained using functions vanishing near its wall. Such pairs satisfy the gluing condition independently, proving the assertion. ∎

In [Example 16.9](16_coarse_truncation.md), both analytic section spaces come from \(\mathbb{CP}^3\); one observable algebra is restricted to pullbacks from \(S^4\). The corresponding matrix-entry densities on \(S^4\) are smooth after integration along the twistor fibres, so the same proof applies.

Neither closed space comes with the boundary required by Lemma 12. One may choose a base point \(p\in S^4\), a point \(q\in\mathbb{CP}^3\), or a twistor fibre, and impose scalar agreement there. In the original level-one windows, the generated real algebra remains
\[
M_2(\mathbb H)\oplus M_4(\mathbb C).
\]
Thus this operation derives no further algebra reduction.

A marked base point does provide a quaternionic line through
\[
\Pi_p=\frac12(1+p_a\Gamma_a).
\]
Choosing a complex line inside that quaternionic line, a complex line in the other four-space, and the rank-one map between the corresponding Hom vectors gives the data of Result 2. The grading \(2\Pi_p-1\) and the rule selecting this connector are then additional finite data. The stabilizer calculation derives \(\mathbb C\oplus\mathbb H\oplus M_3(\mathbb C)\) from those choices.

To obtain an analytic parent for Example 16.9, further work must specify an interface or interval collar, its boundary trace spaces, self-adjoint coupling conditions, a compatible real structure and grading, and the spectral window of the coupled operator. Result 7 concerns the unchanged windows. A new coupled window, boundary degrees of freedom, or a different observable representation lies outside its hypotheses.

*Scope.* For a general subset upstairs in the twistor space, add the hypothesis that its image in S^4 has empty interior, so that independent base test functions exist.

## 8. Proposition — Scope of the Hořava–Witten comparison

**Hypotheses.** Compare chiralities using one common ten-dimensional chirality convention, and retain the unbroken boundary gauge group \(E_8\times E_8\).

The same-chirality interval analogue is type **(a) at both ends**, or type **(b) at both ends** after reversing the chirality convention. To model two separately localized multiplets, take two fields of that same type, with opposite signs of their localization masses. Lemma 12 at \(X=0\) contains one type-(a) and one type-(b) field, so its displayed pair has opposite chiralities.

**Proof and scope.** Hořava–Witten impose \(\Gamma_{11}\chi=\chi\) on the boundary gaugino; the boundary vector multiplets are intrinsic boundary fields. Their chirality projector is stated in [section 2, immediately before the boundary Yang–Mills Lagrangian](https://arxiv.org/html/hep-th/9603142). Labels based on outward normals change sign between the endpoints; this does not change the comparison in a fixed ten-dimensional convention.

Type (a) in Lemma 09 retains the \(L\)-zero mode at both ends, while type (b) retains \(R\). Different mass signs localize two such fields near opposite ends. Type (c) instead produces opposite-chirality wall profiles.

On a space containing only the two same-chirality modes, an operator odd for that chirality grading has zero matrix elements between them. Moreover,
\[
\operatorname{Hom}_{E_8\times E_8}
\bigl((248,1),(1,248)\bigr)=0,
\]
because the first factor acts trivially on the target and has no invariant vector in its adjoint representation. Thus these boundary multiplets do not supply a gauge-invariant bilinear connector of the interval mass-block type. ∎

Bulk propagation can define effective boundary-to-boundary interactions. Identifying one with the finite \(T\) requires a specified field, representation and grading, potentially after compactification or symmetry breaking. The Hořava–Witten comparison alone supplies no such identification.

## 9. No-go theorem — Corollary 11.2 under its matching-scale hypothesis

**Hypotheses.** This restates [Corollary 11.2](11_spectral_action_heavy_w.md) with its scope. Assume a fixed finite set of Dirac mass parameters, \(N_g\) generations, and the matching-scale relation
\[
8M_W^2=\sum_{g=1}^{N_g}
(m_{\nu,g}^2+m_{e,g}^2+3m_{u,g}^2+3m_{d,g}^2).
\tag{25}
\]
For \(N_g\ne3\), the coefficient \(8\) is an explicitly assumed normalization; it does not follow automatically by replicating the three-generation gauge trace.

Then \(M_W\to\infty\) is incompatible with keeping every Dirac mass bounded. More precisely,
\[
\frac{m_{\max}}{2\sqrt2}\le M_W\le\sqrt{N_g}\,m_{\max}.
\tag{26}
\]

**Proof.** The weighted sum in (25) lies between \(m_{\max}^2\) and \(8N_gm_{\max}^2\), proving (26). Thus a fixed nonzero gauge coupling and \(v\to\infty\), with all \(y_fv\) fixed, contradict (25).

The conclusion concerns \(m_{\max}\). One fixed species need only be unbounded along a subsequence. For example, with \(M_W=t\), put
\[
\alpha(t)=\frac{\pi}{4}(1+\sin t),\quad
m_e=2\sqrt2\,t\cos\alpha(t),\quad
m_\nu=2\sqrt2\,t\sin\alpha(t).
\]
Their squared sum is \(8t^2\), while each mass vanishes on an unbounded sequence. ∎

**Scope and escapes.** Equation (25) belongs to the stated normalization of the truncated asymptotic spectral action at matching. It concerns Dirac Yukawa masses, including the neutrino Dirac parameters, rather than physical seesaw eigenmasses. Changing the action or normalization, controlling the full finite-cutoff action, varying the particle content, or allowing Dirac masses to grow changes the problem. Extrapolation to a heavy-mass limit at fixed cutoff requires a separate calculation; the theorem directs attention to that calculation.

## 10. Theorem — Proposition 16.1 holds for inherited pointwise reality

**Hypotheses.** This restates [Proposition 16.1](16_coarse_truncation.md) with its scope. Let
\[
J_0aJ_0^{-1}=a^*,\qquad [P,J_0]=0,\qquad
Q(a)=PaP|_{P\mathcal H},
\]
and let \(J_F=J_0|_{P\mathcal H}\). Let \(A_F\) be the involutive algebra generated by the compressed functions. Then order zero holds for this inherited structure exactly when \(A_F\) is commutative.

**Proof.**
\[
J_FQ(b)^*J_F^{-1}
=PJ_0b^*J_0^{-1}P
=Q(b).
\]
Order zero therefore requires
\[
[Q(a),Q(b)]=0
\]
for every pair of generators. Their generated algebra is then commutative.

Conversely, the opposite operation reverses products and fixes each compressed generator. On a commutative generated algebra its image lies in the same algebra, proving order zero. ∎

For a product with a fixed finite factor, the unit of that factor gives the same necessity. Sufficiency also requires that the finite factor satisfy order zero and that the product real structure be compatible. The commutativity conclusion concerns the compressed function algebra; the separate finite factor may be noncommutative.

**Scope and escapes.** The theorem concerns compression followed by algebra generation with this inherited pointwise reality and a \(J_0\)-invariant window. The coarse correspondence supplies a separate opposite action and escapes the hypothesis, as demonstrated positively by Theorem 16.2. Other representations or real structures require their own order-zero calculation.

## 11. Proposition — The stated inherited grading cannot equal \(\Gamma_5\)

**Hypotheses.** This states the grading obstruction of [Example 16.9](16_coarse_truncation.md) under the following simultaneous requirements:

1. Every parent observable under consideration is even: \([\gamma,a]=0\).
2. The finite grading is inherited as \(g=P\gamma P|_{P\mathcal H}\).
3. This compression is an actual grading: \(g^2=1\).
4. The retained observables include \(Q(x_a)=\Gamma_a/5\).

Under these hypotheses, \(g=\Gamma_5\) is impossible.

**Proof.** Even without initially assuming \([P,\gamma]=0\), the grading identity implies
\[
0=P-(P\gamma P)^2
=P\gamma(1-P)\gamma P
=\bigl((1-P)\gamma P\bigr)^*
  \bigl((1-P)\gamma P\bigr).
\]
Hence \((1-P)\gamma P=0\), and self-adjointness gives \([P,\gamma]=0\). Therefore
\[
[g,Q(a)]=P[\gamma,a]P=0
\]
for every retained even observable.

But
\[
[\Gamma_5,Q(x_1)]
=\frac15[\Gamma_5,\Gamma_1]
=\frac25\Gamma_5\Gamma_1\ne0.
\]
Thus the proposed grading and all the stated coordinate compressions cannot simultaneously be inherited in this manner. ∎

**Scope and escapes.** The conclusion does not exclude \(\Gamma_5\) as additional finite data or as a grading of a prealgebra. Possible changes include compressing a graded prealgebra with odd observables, restricting to the algebra commuting with the proposed grading, or constructing an additional grading. Changing the window alone does not remove the contradiction while retaining all four hypotheses. In the specified Dolbeault kernel, the inherited grading is already scalar.

## Consequence for T0b and T11

For T0b, an exact interval parent supplies a rank-one connector with KO-6 signs, and a parent with chosen Hom fibres and constant matrix multipliers realizes the classified connecting block and its algebra. Deriving that algebra, grading and connector from the commutative twistor parent remains open: scalar wall agreement in the original window does not perform the selection. For T11, same-chirality boundary multiplets require the type-(a) or type-(b) comparison, and the unbroken Hořava–Witten boundary representations supply no identified finite mass connector.

## Numerical check

By Claude Opus 5.5, in Python (numpy), 3 Nov 2026, in a temporary directory, not kept. On W = V = C^4 with random elements:

- T_kappa x = kappa K x K with K = v w\*, the rank-one map (5): J D = D J, J Gamma = -Gamma J, D Gamma = -Gamma D; complex rank 1; real dimension of A(T_kappa) inside the 40-dimensional H + H + M_4(C) equal to 24, by linear algebra.
- K of rank two on W_+: dimension 16, as in the proof of Result 2, and x -> K x K has rank 4.
- On C + H + M_3(C): order zero, and order one with defect about 10^-15, and [D, a] = 0 with defect about 10^-15. For a random element off this algebra the order-one defect is about 40.
- The example at the end of Result 1: order-one defect 0, and a nonzero defect of left intertwining.
- Result 4: the values in (15), with a quadrature. By hand: the eigenvectors (13), their boundary conditions, the action of (11), and the value of the commutator.
- Equation (21): by hand, including the compression to m (S + S\*).
- Pi_p is a projection of rank 2 and 2 Pi_p - 1 = p_a Gamma_a; the bound (26) on a random sample.

Against the source: (3) is equation (comrel) of arXiv:0706.3688, read in the LaTeX source. The proof there also takes an intertwiner distinct from the Dirac block, in line with the distinction between T and R in Result 1.

## Readings

By Claude Opus 5.5, as proposals.

**1. The connector is the Majorana block.** In the Standard Model dictionary (Chamseddine-Connes-Marcolli 2007, section 2), W_+ holds (nu_R, e_R) and V = C^4 holds the lepton line and the three colours, so that with w along nu_R and v along the lepton line, the vector e = w v\* is nu_R, and the off-diagonal block of D_F acts on nu_R alone. After this identification, and an overall grading convention if needed, T = m S in Result 5 has the form of the one-generation Majorana block (equation (2.34) there), with m = arctan(t)/l. In this window m < pi/(2l), so the first level of the tower bounds it, and for t of order one m is of the order of that level. As a pattern, this agrees with the placement of the Majorana mass near the cutoff in that model. Three identical copies give three equal masses, and a general three-generation Majorana matrix needs additional flavour data.

**2. The connector as a marked pair of points and a coupling.** Since T_kappa x = kappa K x K with K = v w\*, the data of the connector are a complex line w in W = C^4, a complex line v in V = C^4, that is, a point of CP^3 on each sheet, and the coupling kappa. In Example 16.9, the point w lies over a point p of S^4 in the twistor fibration, and Pi_p = (1 + p_a Gamma_a)/2 projects onto its quaternionic line. Since Q(x_a) = Gamma_a/5, the grading is

    2 Pi_p - 1 = p_a Gamma_a = 5 Q(p . x),

the compression of the height function at p. So one marked point fixes the quaternionic line and the complex line w, and a second one fixes v. Sp(2) acts transitively on the unit vectors of H^2, and U(4) on those of C^4, so at fixed nonzero |kappa| all line choices are conjugate, in agreement with the uniqueness in Result 2. The modulus |kappa| remains, rephasing w and v changes K x K by a phase, and other finite data can introduce relative moduli. The inputs are then: mark a point on each sheet, with a coupling and a prescription for evaluation and normalization. This has the form (22) with one channel per sheet.

The height function 5 Q(p . x) fails to commute with the other coordinate compressions, so it can serve as additional finite grading data only after restricting to its even algebra. This evades the inherited-grading hypothesis of Result 11, and it does not derive the grading from the even parent. Result 7 shows that scalar agreement at the points does not do this in the unchanged windows, so a coupled window with the data listed after Result 7 is needed. Whether a parent with an interface at those points yields this connector is open.

**3. The wall coupling as a Wilson line.** Equation (21) says that the wall coupling X = tan(m l) is unitarily equivalent to the uncoupled boundary conditions with a constant matrix connection m F, of relative endpoint rotation angle theta = m l, and the mass is that angle over the length, k = theta/l. On an interval, open-path transport depends on endpoint frames, and the physical quantity is the transport together with the boundary conditions. The comparison with gauge-Higgs unification (Y. Hosotani, Phys. Lett. B 126 (1983) 309; Hosotani, Noda and Takenaga, arXiv:hep-ph/0403106) is an analogy at this stage: the calculation supplies a fixed matrix connection, with no Higgs fluctuation or effective potential. It bears on the question of mass as internal momentum in [the steer for the next paper](../d9_masses_fermi_qcd_steer.md), and compares with the link of [lemma 19](19_fluctuations_without_order_one.md) and the covariant projection of [lemma 14](14_gauge_covariant_reduction.md).

**4. Next calculation.** The connector commutes with B, so it gives no finite one-forms and no Higgs field. The next test is one interval parent carrying both the Dirac Yukawa block of lemma 12, odd for g and diagonal in the sheets, and this connector, for instance at opposite walls: whether order one survives on B, and what the joint form of (21) is.
