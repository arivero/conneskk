# Referee report on N8 (gpt-6.1-terra, effort max, 3 Nov 2026)

Prompt: [../lemmas/prompts/terra_check_N8.md](../lemmas/prompts/terra_check_N8.md). Subject: [../connes_kk_research_state.md](../connes_kk_research_state.md), section 6.6 and ledger row N8. Reproduced as received; the clarification was added to section 6.6.

We find claim [N8](../connes_kk_research_state.md) correct with one clarification: the bridge exchange in [§6.6](../connes_kk_research_state.md) must be the normalized exchange that preserves the common color factor. With that choice, the claims below follow from exact block identities. Our verification is by hand; we used no numerical or computer-algebra calculation.

The source states that “The first-order identities were checked on all 26 real basis elements of \(A_4\)” ([§6.6](../connes_kk_research_state.md)). Our argument establishes the identity for arbitrary algebra elements and does not rely on that reported check.

Write
\[
H_{18}=H_{13}\oplus H_{23}\oplus H_{31}\oplus H_{32},
\qquad H_{ij}=\operatorname{Hom}(V_j,V_i),
\]
and let \(E_i=\rho(e_i)\), \(E_i^\circ=JE_iJ^{-1}\), where \(e_i\) is the unit of the \(i\)-th algebra summand. The dimensions are \(18+12+2=32\) over \(\mathbb C\).

For the bridge operator, we make the natural identification \(V_1=V_4=\mathbb C\) explicit: \(T\) sends each row matrix in \(H'_{13}\) to the *same row matrix* in \(H_{43}\), and conversely. It likewise exchanges the same column matrices in \(H'_{31}\) and \(H_{34}\), and vanishes elsewhere. Thus \(T\) is self-adjoint, \(T^2=1\) on the bridge, and it commutes with \(J\).

**KO-6 signs — Correct.** With the Hilbert–Schmidt inner product, \(JX=X^\dagger\) is antiunitary and \(J^2=1\). The Dirac operator \(D_v\) is self-adjoint and exchanges the \(+1\) and \(-1\) eigenspaces of \(G=\operatorname{diag}(1,-I_2)\). The bridge swap also exchanges opposite chiralities. Consequently, for every real \(t\),
\[
D_t^*=D_t,\qquad JD_t=D_tJ,\qquad
J\gamma=-\gamma J,\qquad
D_t\gamma=-\gamma D_t,
\]
with \(\gamma^2=1\) and \([\gamma,\rho(a)]=0\). These are the stated KO-6 signs; see also [Jureit and Stephan, Definition 2.1](https://arxiv.org/html/hep-th/0610040).

**Order zero — Correct.** On each \(H_{ij}\), the two actions are
\[
\rho(a)X=a_iX,\qquad
\rho(b)^\circ X:=J\rho(b)^*J^{-1}X=Xb_j.
\]
Left and right matrix multiplication commute, so
\[
[\rho(a),\rho(b)^\circ]=0
\]
on the parent and on the reduced space.

**First order — Correct with amendment.** Put \(L(a)=\operatorname{diag}(\lambda,q)\). On \(H_{18}\), writing \(X\in\operatorname{Hom}(V_3,V_1\oplus V_2)\) and \(Y\in\operatorname{Hom}(V_1\oplus V_2,V_3)\), we have
\[
[D_0,\rho(a)](X,Y)=\bigl([D_v,L(a)]X,\,0\bigr).
\]
The nonzero component is a left multiplication and commutes with the right \(M_3(\mathbb C)\)-action.

On \(H'_{13}\oplus H_{43}\), the commutator \([T,\rho(a)]\) exchanges the two rows with a scalar coefficient; the opposite action is right multiplication by the same \(m_b\) on both rows. On \(H'_{31}\oplus H_{34}\), \(T\) commutes with the common left \(m_a\)-action. Therefore
\[
[[D_t,\rho(a)],\rho(b)^\circ]=0
\quad\text{for all }a,b\in A_4,\quad t\in\mathbb R.
\]

The explicit color-preserving choice matters. If “exchange” meant only an arbitrary self-adjoint exchange of the subspaces, the assertion would not follow. For example, replace the row map by \(X\mapsto XW\), with \(W=\operatorname{diag}(1,-1,1)\), and use its adjoint for the reverse map and its \(J\)-conjugate on columns. For \(a=e_1\), \(b_3=E_{12}\), and \(X=(1,0,0)\in H'_{13}\),
\[
[[T,\rho(e_1)],\rho(b)^\circ]X
=X(E_{12}W-WE_{12})=-2XE_{12}\ne0.
\]
Thus the model should specify the common-factor-preserving exchange.

**Parent orientability — Correct.** The following finite orientation operator equals the grading on every parent block, including both copies of \(H_{13}\) and \(H_{31}\):
\[
\gamma=
(E_1-E_2-E_4)E_3^\circ
-E_3(E_1^\circ-E_2^\circ-E_4^\circ)
+E_1E_4^\circ-E_4E_1^\circ .
\]
Each summand is a left–right algebra product. The identity is independent of \(t\), so the parent is orientable throughout the family.

**Heavy centralizer and spectral projection — Correct with the stated exchange.** On the row bridge,
\[
\|[T,\rho(a)]\|=|\lambda-\mu|,
\]
and the commutator vanishes on the conjugate bridge and elsewhere. Hence
\[
A_4\cap\{T\}'=\{(\lambda,q,m,\mu):\mu=\lambda\}
\cong\mathbb C\oplus\mathbb H\oplus M_3(\mathbb C).
\]
The triangle inequality also shows that \(\|[D_t,\rho(a)]\|\) remains bounded as \(|t|\to\infty\), for fixed \(a\), exactly on this centralizer.

Let \(r=\|v\|=\|D_0\|>0\). The spectrum of \(D_t\) consists of \(0\) with multiplicity \(8\), \(\pm r\) with multiplicity \(6\) each, and \(\pm |t|\) with multiplicity \(6\) each. Thus, when \(r<\Lambda<|t|\),
\[
P_\Lambda(D_t)=P_{\ker T},\qquad
PH_{32}=H_{18}\oplus H_{14}\oplus H_{41}.
\]
This projection commutes with \(\rho(A_4)\), \(J\), and \(\gamma\), and the compressed Dirac operator is \(D_0\oplus0\). The preceding order and KO identities therefore persist after projection and restriction to the centralizer.

**Faithfulness of the reduction — Correct.** On the light space, \(\lambda\) acts faithfully on \(H_{13}\), \(q\) on \(H_{23}\), and \(m\) on \(H_{31}\). Hence no nonzero element of the three-summand centralizer acts trivially.

**Failure of reduced orientability — Correct.** On both surviving spectator lines \(H_{14}\) and \(H_{41}\), centralization gives
\[
\rho(a)=\lambda_a I_2,\qquad
\rho(b)^\circ=\lambda_b I_2.
\]
Every finite sum of left–right products is therefore scalar on this pair, while
\[
\gamma|_{H_{14}\oplus H_{41}}=\operatorname{diag}(1,-1).
\]
No such sum can equal \(\gamma\). In fact, its operator-norm distance from the space of finite orientation operators is exactly \(1\): the spectator pair gives the lower bound, and the orientation operator for \(H_{18}\) attains it.

**Nonzero one-forms — Correct.** Take \(a=e_1+e_4\), which belongs to the centralizer. On the \(X\)-part of \(H_{18}\),
\[
[D_0,\rho(a)]
=
\begin{pmatrix}0&-v^\dagger\\ v&0\end{pmatrix}
\]
acting by left multiplication. This is nonzero because \(v\ne0\). Thus the reduced one-form space contains a nonzero element.

**Other stated checks — Correct.** Projection alone retains a faithful representation of \(A_4\), including \(\mu\) on \(H_{41}\), and the displayed parent orientation formula restricts to the light space. The projected Dirac operator commutes with \(e_4\), so the two scalar states are infinitely far apart after projection alone. Before projection, the bridge gives
\[
d_{D_t}(\omega_1,\omega_4)=|t|^{-1};
\]
the element \(e_4/|t|\) attains the bound. Counting the chiral bimodules with minimal projections also gives the displayed intersection matrix \(Q_4\), whose Pfaffian is \(-2\) and determinant is \(4\).

**Overall:** N8 is correct for the explicit normalized, color-preserving bridge swap; stating that swap removes an ambiguity essential to the first-order and centralizer claims.