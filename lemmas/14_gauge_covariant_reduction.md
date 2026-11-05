# T4b: gauge-covariant projection and conditional bosonic matching

Prompt: [prompts/14](../historical/prompts/14_gauge_covariant_reduction.md) (STRATEGY T4b). Attempted by gpt-6-astra (3 Nov 2026). The ratio 3/5 of Counterexample 6 agrees with the restricted computation of lemma 13, Result 6 (c_L = 8/(3 pi), c_R = 4/(3 pi)). Reading: the spectral-action vector mass matches the Neumann-Dirichlet tower only through a fermion whose mass is at the tower scale (the matching bulk mass M_* > 0 leaves no light pair, Theorem 9.4 case 3), and with bounded light fermions no matching is possible as l -> 0.

We prove that a gapped spectral projection defines a gauge-covariant light-fermion bundle with its induced Grassmannian connection. For the mixed interval with a gauge-invariant bulk mass, its finite link has fixed singular values; it does not supply the full scalar fluctuation space of a two-sheet finite triple. At the leading four-dimensional spectral-action order, equality with a specified Kaluza–Klein vector mass is equivalent to an explicit trace-and-overlap sum rule. Covariance does not enforce that rule: the massless-bulk example gives \(M_{\mathrm{spec}}^2=\frac35M_{\mathrm{KK}}^2\), whereas a suitable positive bulk mass gives exact equality. We also prove that bounded retained fermion masses cannot match a Neumann–Dirichlet vector mass diverging as \(1/l\). Matching one vector mass does not, by itself, determine relative gauge couplings or all scalar kinetic coefficients.

**1. Theorem (covariant spectral projection and the data controlling its spectrum).**

*Scope.* The double-coset statement needs the endpoint transformations to act independently through H_0 and H_l, with extendability understood, and it is a local pointwise classification unless the global topology is specified. Periodic conditions require g(l) = g(0), and then the holonomy is classified by conjugation.

Let \(I=[0,l]\), and let
\[
E=\begin{pmatrix}0&1\\-1&0\end{pmatrix},
\qquad
\Gamma=\begin{pmatrix}1&0\\0&-1\end{pmatrix}.
\]
Let the vertical operator be
\[
D_{A_5,\mathsf M,\mathcal B}
=
E(\partial_x+iA_5)+
\begin{pmatrix}0&\mathsf M\\ \mathsf M&0\end{pmatrix},
\]
where \(A_5\) and \(\mathsf M\) are Hermitian matrix-valued functions, and \(\mathcal B\) specifies a self-adjoint boundary domain. Gauge transformations act in the same representation on both interval chiralities.

Let the operators form a smooth family in \(y\), in the norm-resolvent sense after local identification of their domains. Assume that the selected light cluster is separated from the rest of the spectrum and contains complete eigenspaces, including any gauge degeneracy. Let \(P_A(y)\) be its spectral projection.

Then
\[
\boxed{P_{A^g}=G_gP_AG_g^\dagger,}
\]
provided the transformation includes
\[
A_5^g=gA_5g^\dagger+i(\partial_xg)g^\dagger,
\qquad
\mathsf M^g=g\mathsf Mg^\dagger,
\qquad
\mathcal B^g=G_g\mathcal B.
\]
For fixed \(\mathsf M,\mathcal B\), this assertion applies exactly to the transformations preserving those data.

Define parallel transport by
\[
\partial_xW=-iA_5W,\qquad W(0)=1,
\qquad W_l=W(l).
\]
The vertical spectrum is determined by the axial-gauge data
\[
\boxed{
\widetilde{\mathsf M}(x)=W(x)^\dagger\mathsf M(x)W(x),
\qquad
\widetilde{\mathcal B}=W^\dagger\mathcal B.
}
\]
Consequently:

- For a gauge-invariant bulk mass and the mixed conditions
  \[
  R(0)=0,\qquad L(l)=0,
  \]
  the entire spectrum is independent of \(A_5\).
- With nontrivial endpoint data and gauge-invariant bulk coefficients, the relevant holonomy information is the Wilson line relative to those endpoint data. If the endpoint groups are \(H_0,H_l\), its gauge class is represented by
  \[
  H_l\backslash G/H_0.
  \]
- A bulk matrix not commuting with parallel transport can introduce dependence on the whole transported profile \(\widetilde{\mathsf M}(x)\), beyond \(W_l\).

An open Wilson line is not generally gauge invariant:
\[
W_l^g=g(l)W_lg(0)^\dagger.
\]
It is invariant under transformations fixed at both endpoints; it transforms by conjugation when the endpoint transformations are identified. With independently unrestricted endpoints, its double-coset class is trivial.

*Proof.* Direct differentiation, including the boundary domain, gives
\[
D_{A^g,\mathsf M^g,\mathcal B^g}
=
G_gD_{A,\mathsf M,\mathcal B}G_g^\dagger.
\]
For a contour enclosing the selected cluster,
\[
P_A=\frac1{2\pi i}\oint (z-D_A)^{-1}\,dz.
\]
Conjugation of the resolvent proves covariance. Smoothness follows from the same formula and the assumed gap.

Multiplication by \(W\) removes the connection:
\[
W^\dagger D_{A_5,\mathsf M,\mathcal B}W
=
D_{0,\widetilde{\mathsf M},\widetilde{\mathcal B}}.
\]
This proves the assertion about spectral data. For a commuting bulk mass and the mixed boundary conditions, both transformed data equal their unfluctuated values.

Finally, the transport equation gives \(W^g(x)=g(x)W(x)g(0)^\dagger\). The endpoint transformation law and the stated quotients follow. If the gap closes, no fixed-rank smooth light bundle is asserted. \(\square\)

**2. Theorem (the induced connection and finite operator).**

Let \(M_4\) be a closed Riemannian spin four-manifold. Use Hermitian Euclidean gamma matrices and
\[
\mathscr D_A
=
-i\gamma^\mu(\nabla_\mu^S+\partial_\mu+iA_\mu)
+\gamma_5D_{I,A_5}.
\]
Assume the hypotheses of Result 1, and let
\[
\mathcal E_y=\operatorname{Ran}P_A(y).
\]
Then the induced connection and vertical endomorphism are
\[
\boxed{
\nabla_\mu^{\mathcal E}
=
P_A(\partial_\mu+iA_\mu)P_A,
\qquad
V=P_AD_{I,A_5}P_A\big|_{\mathcal E}.
}
\]
The compressed first-order operator is exactly
\[
\boxed{
P_A\mathscr D_AP_A\big|_{\mathcal E}
=
-i\gamma^\mu(\nabla_\mu^S+\nabla_\mu^{\mathcal E})
+\gamma_5V.
}
\]

In a local orthonormal frame \(U(y):\mathbb C^r\to\mathcal E_y\),
\[
\boxed{
\mathcal A_\mu
=
U^\dagger A_\mu U-iU^\dagger\partial_\mu U,
\qquad
V_F=U^\dagger D_{I,A_5}U.
}
\]
The inner products here include integration over the interval. Its curvature is
\[
[\nabla_\mu^{\mathcal E},\nabla_\nu^{\mathcal E}]
=
P_A(iF_{\mu\nu})P_A
+
P_A[\nabla_\mu P_A,\nabla_\nu P_A]P_A,
\]
where \(\nabla_\mu P_A=\partial_\mu P_A+i[A_\mu,P_A]\).

*Proof.* Write a light section as \(U\chi\). Applying \(\partial_\mu+iA_\mu\) and multiplying by \(U^\dagger\) gives the displayed connection. The spectral projection commutes with the vertical operator, giving the displayed finite endomorphism. Expanding the commutator of the projected covariant derivatives and using \(P_A^2=P_A\) gives the curvature formula.

If
\[
U^g=G_gUh^\dagger,
\]
then
\[
\mathcal A_\mu^g
=
h\mathcal A_\mu h^\dagger+i(\partial_\mu h)h^\dagger,
\qquad
V_F^g=hV_Fh^\dagger.
\]
Thus the construction is gauge covariant.

This is an exact compression. It is not generally the operator obtained by eliminating the other fermions. With \(P^\perp=1-P_A\), elimination additionally produces
\[
-P_A\mathscr D_AP^\perp
\bigl[P^\perp(\mathscr D_A-z)P^\perp\bigr]^{-1}
P^\perp\mathscr D_AP_A,
\]
when the inverse exists. Horizontal derivatives and \(A_\mu(x)\) generally make these off-diagonal blocks nonzero. \(\square\)

**3. Theorem (the finite algebra and fluctuation image for the mixed interval).**

*Global form.* The statement that the continuum link image consists of all links with Phi^\* Phi = lambda^2 I holds locally in spacetime. Globally the unitary link must admit a path from the identity in the chosen trivialization. For M_4 = S^1 x S^3, n = 1 and Phi = lambda exp(i theta), every globally smooth real A_5 gives Phi = lambda exp(i int A_5 dx), with zero winding around S^1, so this Phi is not attained. The displayed formulas, the compression range and the reducing-subalgebra criterion are correct.

Let
\[
D_{I,A_5}
=
\begin{pmatrix}
0&\partial_x+iA_5+M\\
-\partial_x-iA_5+M&0
\end{pmatrix},
\qquad M\in\mathbb R,
\]
with \(R(0)=0,\ L(l)=0\), acting on \(\mathbb C^n\)-valued fields. Let the parent algebra be \(C^\infty(I,M_n(\mathbb C))\), acting identically on both interval chiralities.

Let \(p_L,p_R\) be real normalized profiles for the lowest pair:
\[
(-\partial_x+M)p_L=\lambda p_R,
\qquad
(\partial_x+M)p_R=\lambda p_L,
\qquad
\|p_L\|=\|p_R\|=1.
\]
Use the endpoint-adapted light frame
\[
U_L=p_LW,\qquad U_R=p_RW W_l^\dagger.
\]
Then
\[
\boxed{
V_F=
\begin{pmatrix}
0&\lambda W_l^\dagger\\
\lambda W_l&0
\end{pmatrix}.
}
\]
Writing \(w_L=p_L^2,\ w_R=p_R^2\) and
\[
B_\mu=W^\dagger A_\mu W-iW^\dagger\partial_\mu W,
\]
the induced connections are
\[
\boxed{
\begin{aligned}
\mathcal A_{L,\mu}&=\int_0^l w_LB_\mu\,dx,\\
\mathcal A_{R,\mu}&=
W_l\left(\int_0^l w_RB_\mu\,dx\right)W_l^\dagger
-iW_l\partial_\mu W_l^\dagger.
\end{aligned}}
\]

The range of algebra compression is
\[
A_F=M_n(\mathbb C)\oplus M_n(\mathbb C)
\]
on
\[
H_F=\mathbb C_L^n\oplus\mathbb C_R^n,
\qquad
\Gamma_F=\operatorname{diag}(1,-1).
\]
Taking this range with its matrix product gives a complex even finite triple. Its unitary group is \(U(n)_L\times U(n)_R\), and its unrestricted inner fluctuations have an arbitrary complex matrix as their total link.

The continuum construction, however, produces exactly
\[
\boxed{\Phi^\dagger\Phi=\Phi\Phi^\dagger=\lambda^2I_n}
\]
for the link. With unrestricted \(A_\mu\), it produces arbitrary pairs of Hermitian sheet connections locally in spacetime. Thus its field space is the fixed-singular-value restriction of that finite triple’s fluctuation space.

The inherited local gauge action is
\[
h=\operatorname{diag}(g(0),g(l)).
\]
Additional gauge boundary conditions restrict this endpoint group. Globally, only endpoint transformations extending across \(M_4\times I\) are inherited.

*Proof.* Gauge removal and the two profile equations give the formula for \(V_F\). Applying Result 2 to \(U_L,U_R\) gives the connection formulas. Under a continuum transformation,
\[
U_L^g=gU_Lg(0)^\dagger,\qquad
U_R^g=gU_Rg(l)^\dagger,
\]
which proves the endpoint action.

The two functions \(w_L,w_R\) are linearly independent: one vanishes at \(x=0\), and the other does not. Therefore the map
\[
b(x)\longmapsto
\left(\int w_Lb,\int w_Rb\right)
\]
is onto \(M_n(\mathbb C)\oplus M_n(\mathbb C)\). This proves both the algebra-range assertion and the connection-surjectivity assertion. Every unitary \(W_l\) has a local smooth path lift, proving the stated link image.

For the finite triple with
\[
D_F=\lambda\begin{pmatrix}0&I_n\\I_n&0\end{pmatrix},
\]
multiplication of \(p_L[D_F,p_R]\) by the left algebra generates arbitrary upper-right matrices; adjoining the adjoint generates arbitrary self-adjoint odd fluctuations. The full finite fluctuation space therefore includes radial changes absent from the continuum image.

There is a further distinction concerning algebra multiplication. For any compression \(C(a)=PaP|_{PH}\),
\[
C(a^\dagger a)-C(a)^\dagger C(a)
=
Pa^\dagger(1-P)aP.
\]
Hence \(C\) is a representation on a unital \(*\)-subalgebra precisely when that subalgebra reduces \(P\). In the present model, multiplication by \(a(x)\) reduces the light pair precisely when
\[
a(x)=W(x)bW(x)^\dagger
\]
for a constant matrix \(b\). Its restriction is a single diagonal \(M_n(\mathbb C)\), commuting with \(V_F\), and its finite scalar one-forms vanish.

Thus the two-sheet algebra is obtained by equipping the compression range with its matrix product; the interval multiplication algebra has no multiplicative quotient onto it. No real structure, real gauge-group prescription, or Standard Model representation follows from this construction. \(\square\)

**4. Proposition (boundary Yukawa data determine a finite operator, but not a unique finite triple).**

*Scope.* To obtain the entire limiting block, retain the full zero-mode-descended cluster of dimension N_Q + N_U: for two massless flavours and X = l diag(1, 2), the cluster containing only the lowest pair is gapped and has a 1 x 1 limiting block. The nonzero singular values of Y are the retained positive eigenvalues; zero singular values and unmatched chiral zero modes are included separately.

Let \(D_X\) have the boundary conditions of [Lemma 12](12_boundary_yukawa_interval.md):
\[
Q_R(0)=0,\quad U_L(0)=0,\qquad
Q_R(l)=XU_R(l),\quad U_L(l)=-X^\dagger Q_L(l).
\]
Let the bulk masses be \(M_Q,M_U\), and let the gauge representations commute with these masses.

Gauge covariance requires
\[
X^g=g_Q(l)Xg_U(l)^\dagger.
\]
If \(X\) is fixed, the allowed endpoint transformations satisfy
\[
g_Q(l)X=Xg_U(l).
\]
After axial gauge fixing,
\[
\widetilde X=W_Q(l)^\dagger XW_U(l).
\]

Let \(P_A\) retain a gapped grading-invariant light cluster. Then
\[
H_F=H_{F,+}\oplus H_{F,-},
\qquad
V_F=\begin{pmatrix}0&Y\\Y^\dagger&0\end{pmatrix},
\]
where the singular values of \(Y\) are the retained positive vertical eigenvalues. These eigenvalues alone do not determine the represented gauge generators or their trace data.

In the towerless scaling of [Theorem 12.7](12_boundary_yukawa_interval.md),
\[
X=l\widehat X,\qquad
M_Ql,\ M_Ul\ \text{fixed},
\]
the limiting block is, up to changes of chiral orthonormal frames,
\[
\boxed{Y=\Phi_Q\widehat X\Phi_U,}
\qquad
\phi(c)^2=\frac{2c}{e^{2c}-1},\quad \phi(0)=1.
\]
Every rectangular complex matrix \(Y\) is attainable as an operator block by choosing
\[
\widehat X=\Phi_Q^{-1}Y\Phi_U^{-1}.
\]
This does not establish that every finite algebra, real structure, gauge representation, or inner-fluctuation space is attained.

*Proof.* Transforming the boundary equations gives the transformation law for \(X\). Applying \(W_Q^\dagger,W_U^\dagger\) gives \(\widetilde X\). Since the domain is grading invariant, its symmetric spectral projection commutes with the grading; the restricted operator is therefore odd and has the displayed block form.

For an explicit spectral determination, define
\[
\alpha_i(\lambda)=\omega_i\coth(\omega_i l)+m_i^Q,
\qquad
\beta_j(\lambda)=\omega_j\coth(\omega_j l)-m_j^U,
\qquad
\omega^2=m^2-\lambda^2.
\]
In the low window where the transfer denominators are nonzero, the boundary equations give
\[
\det\!\left[
\lambda^2I-
\operatorname{diag}(\alpha_i)
\widetilde X
\operatorname{diag}(\beta_j)
\widetilde X^\dagger
\right]=0.
\]
This follows by solving the constant-coefficient first-order equations and imposing the two conditions at \(l\), as in [Theorem 12.4](12_boundary_yukawa_interval.md).

At zero spectral parameter, the normalized wall values give
\[
F_Q=l^{-1/2}\Phi_Q,\qquad F_U=l^{-1/2}\Phi_U.
\]
Consequently
\[
F_QXF_U=\Phi_Q\widehat X\Phi_U.
\]
The bounds of Theorem 12.6 give convergence of the retained positive eigenvalues to its singular values, with error \(O(l^2)\); the remaining rescaled eigenvalues stay separated from zero. Positivity of the diagonal entries of \(\Phi_Q,\Phi_U\) proves attainability of every operator block.

To obtain a finite triple, one must additionally specify the algebra to be represented on the retained space. A multiplicative restriction must satisfy the reducing-subalgebra criterion in Result 3; taking the algebra generated by compressed operators is a different prescription. Once an algebra \(A_F\) is specified, its complex gauge group is the represented \(U(A_F)\), and its scalar one-forms are
\[
\Omega^1_{V_F}(A_F)
=
\operatorname{span}\{a[V_F,b]:a,b\in A_F\}.
\]
Neither this algebra nor this space is determined by the light eigenvalues. \(\square\)

**5. Theorem (the exact quadratic matching condition at leading spectral-action order).**

*Scope.* Both quadratic forms must be compared on one common profile space on which G^(5) and Q are positive, because a Kaluza-Klein profile can be invisible to compression. For the massless mixed pair, f = cos(2 pi x/l) satisfies Neumann conditions at both ends and has positive norm, while int w_L f = int w_R f = 0, so Q = K = 0 for this mode.

Let a five-dimensional Yang–Mills theory have no boundary kinetic or mass terms. Let \(\langle\ ,\ \rangle_5\) be its positive invariant gauge form, including its coupling constants. Expand the retained transverse vectors about \(A_5=0\) as
\[
A_\mu(y,x)=\sum_a a_\mu^a(y)F_a(x),
\]
where \(F_a(x)\) are fixed Hermitian Lie-algebra-valued profiles satisfying the chosen gauge boundary conditions. Define
\[
G^{(5)}_{ab}=\int_0^l\langle F_a,F_b\rangle_5\,dx,
\qquad
H^{(5)}_{ab}=\int_0^l\langle F_a',F_b'\rangle_5\,dx.
\]
Then
\[
\mathcal L_{\mathrm{KK}}^{(2)}
=
\frac14G^{(5)}_{ab}f_{\mu\nu}^af^{b,\mu\nu}
+\frac12H^{(5)}_{ab}a_\mu^aa^{b,\mu},
\]
and
\[
\boxed{
\mathcal M_{\mathrm{KK}}^2
=
(G^{(5)})^{-1/2}H^{(5)}(G^{(5)})^{-1/2}.
}
\]

Let \(U_0\) be the light frame at this background, and set
\[
T_a=U_0^\dagger F_aU_0,\qquad V_0=U_0^\dagger D_IU_0.
\]
For the literal spectral trace, retain the gauge and scalar derivative terms through \(a_4\), assume \(f_0>0\), and add no independent kinetic terms. Define
\[
Q_{ab}=\operatorname{Re}\operatorname{Tr}(T_aT_b),
\qquad
K_{ab}=\operatorname{Re}\operatorname{Tr}
\bigl([T_a,V_0]^\dagger[T_b,V_0]\bigr).
\]
On the subspace where \(Q>0\),
\[
\boxed{
\mathcal M_{\mathrm{spec}}^2
=
\frac32Q^{-1/2}KQ^{-1/2}.
}
\]

Thus equality of the vector mass spectra is equivalent to equality of the generalized spectra
\[
\boxed{
\operatorname{spec}\!\left(\tfrac32K,Q\right)
=
\operatorname{spec}\!\left(H^{(5)},G^{(5)}\right).
}
\]
For a retained sector whose KK mass matrix is \(\kappa^2I\), this is equivalent to the sum rule
\[
\boxed{K=\frac23\kappa^2Q.}
\]
Equality of the quadratic actions in the same field coordinates is stronger:
\[
\boxed{
G^{(5)}=4\eta Q,\qquad
H^{(5)}=6\eta K,
\qquad
\eta=\frac{f_0}{24\pi^2}.
}
\]

For a chiral finite block
\[
V_0=\begin{pmatrix}0&Y\\Y^\dagger&0\end{pmatrix},
\qquad
T_a=\operatorname{diag}(t_{L,a},t_{R,a}),
\]
put
\[
C_a=t_{L,a}Y-Yt_{R,a}.
\]
The trace data are explicitly
\[
\boxed{
Q_{ab}=\operatorname{Re}\operatorname{Tr}
(t_{L,a}t_{L,b}+t_{R,a}t_{R,b}),
\qquad
K_{ab}=2\operatorname{Re}\operatorname{Tr}(C_a^\dagger C_b).
}
\]
Here \(Y\) and the \(t_{L/R,a}\) must both be computed from the interval eigenfunctions and the retained gauge profiles.

*Proof.* Expanding the five-dimensional action gives the two integral forms \(G^{(5)},H^{(5)}\). Canonical normalization by \((G^{(5)})^{1/2}\) gives its mass matrix.

For
\[
\mathscr D=-i\gamma^\mu(\nabla_\mu^S+i\mathcal A_\mu)+\gamma_5V,
\]
the relevant heat-coefficient traces are
\[
\operatorname{tr}_S(\mathcal E_F^2)=2F_{\mu\nu}F^{\mu\nu},
\quad
\operatorname{tr}_S(\mathcal E_V^2)=4D_\mu VD^\mu V,
\quad
\operatorname{tr}_S(\Omega_F^2)=-4F_{\mu\nu}F^{\mu\nu}.
\]
Their coefficients \(1/2,1/2,1/12\) give
\[
\mathcal L_{\mathrm{spec}}
=
\eta\operatorname{Tr}F_{\mu\nu}F^{\mu\nu}
+
3\eta\operatorname{Tr}D_\mu VD^\mu V.
\]
At \(V_0\), this becomes
\[
\eta Q_{ab}f_{\mu\nu}^af^{b,\mu\nu}
+
3\eta K_{ab}a_\mu^aa^{b,\mu}.
\]
The normalization \(a_{\mathrm{can}}=2\sqrt\eta\,Q^{1/2}a\) proves the coefficient \(3/2\), agreeing with [Proposition 13.5](13_gauge_sector_truncation.md).

Equality with a scalar matrix \(\kappa^2I\) is equivalent to
\[
Q^{-1/2}KQ^{-1/2}=\frac23\kappa^2I.
\]
The block formulas follow by multiplying
\[
[T_a,V_0]=
\begin{pmatrix}0&C_a\\-C_a^\dagger&0\end{pmatrix}.
\]
This proves all the matching conditions.

For mixed fermion pairs labelled by \(r\), let their masses be \(\lambda_r\), and let a single gauge profile \(f\) have overlaps
\[
c_{L,r}=\int |p_{L,r}|^2f,\qquad
c_{R,r}=\int |p_{R,r}|^2f.
\]
If \(\tau_r=\operatorname{tr}_{r}(t^2)\) includes every multiplicity, the one-vector condition becomes
\[
\boxed{
3\sum_r\tau_r\lambda_r^2(c_{L,r}-c_{R,r})^2
=
\kappa^2\sum_r\tau_r(c_{L,r}^2+c_{R,r}^2).
}
\]
This is the trace-and-overlap sum rule for that gauge reduction.

If instead both sheet connections are fluctuated independently, with the same representation on each pair, their relative mass is
\[
M_{\mathrm{relative}}^2
=
6\frac{\sum_r\tau_r\lambda_r^2}{\sum_r\tau_r}.
\]
Equating this single eigenvalue to \(\kappa^2\) requires
\[
6\sum_r\tau_r\lambda_r^2=\kappa^2\sum_r\tau_r.
\]
That comparison has an additional massless diagonal vector and is not the same restriction as retaining one interval gauge profile.

All these spectral-action equalities concern the stated \(a_4\) approximation and chosen vacuum. For a full finite scalar fluctuation space, identifying \(V_0\) with the compressed bare operator additionally requires the scalar potential to select that vacuum. At masses comparable to the cutoff, [Lemma 03, Part C](03_mass_weighted_kinetic_terms.md) shows why weighting \(Q\) alone does not give the broken-generator answer.

Finally, a nonabelian truncation to nonconstant lowest profiles need not be closed under gauge transformations: \([ft_a,ft_b]=f^2[t_a,t_b]\) generally leaves the retained span. The theorem compares quadratic transverse actions; it does not assert equality of full interacting theories. \(\square\)

**6. Counterexample (the covariant lowest-mode reduction still gives \(3/5\)).**

Let the gauge group be \(U(1)\), and impose
\[
\partial_xA_\mu(0)=0,\qquad A_\mu(l)=0,
\]
with complementary conditions
\[
A_5(0)=0,\qquad \partial_xA_5(l)=0.
\]
Retain
\[
A_\mu=a_\mu(y)\cos(\kappa x),
\qquad
A_5=b(y)\sin(\kappa x),
\qquad
\kappa=\frac{\pi}{2l}.
\]
Let one charge-one fermion have the mixed boundary conditions and scalar bulk mass \(M\). Let \(\lambda\) be its lowest positive vertical eigenvalue, and define
\[
c_L=\int_0^l p_L^2\cos(\kappa x)\,dx,
\qquad
c_R=\int_0^l p_R^2\cos(\kappa x)\,dx.
\]

The gauge-covariant light projection gives
\[
\boxed{
M_{\mathrm{spec}}^2
=
3\lambda^2\frac{(c_L-c_R)^2}{c_L^2+c_R^2},
\qquad
M_{\mathrm{KK}}^2=\kappa^2.
}
\]
For \(M=0\),
\[
\boxed{M_{\mathrm{spec}}^2=\frac35M_{\mathrm{KK}}^2.}
\]

*Proof.* The vector boundary problem selects \(f(x)=\cos(\kappa x)\). Direct integration gives
\[
\frac{\int(f')^2}{\int f^2}=\kappa^2,
\]
which is the Neumann–Dirichlet result of [Lemma 9.11](09_massive_chiral_interval.md).

The retained abelian gauge transformations have parameter
\[
\epsilon(y,x)=\alpha(y)\cos(\kappa x).
\]
With the conventions of Result 1,
\[
a_\mu\mapsto a_\mu-\partial_\mu\alpha,
\qquad
b\mapsto b+\kappa\alpha.
\]
Thus this vector-scalar restriction is gauge closed.

Parallel transport is
\[
W(x)=
\exp\!\left[-\frac{ib}{\kappa}(1-\cos\kappa x)\right].
\]
Result 3 gives
\[
\Phi=\lambda e^{ib/\kappa},
\]
and
\[
\mathcal A_L
=
c_La-\frac{1-c_L}{\kappa}\,db,
\qquad
\mathcal A_R
=
c_Ra+\frac{c_R}{\kappa}\,db.
\]
Consequently,
\[
D\Phi
=
i\Phi(c_L-c_R)
\left(a+\frac{db}{\kappa}\right),
\qquad
F_L=c_L\,da,\quad F_R=c_R\,da.
\]
The quadratic spectral action is therefore
\[
\eta(c_L^2+c_R^2)(da)^2
+
6\eta\lambda^2(c_L-c_R)^2
\left(a+\frac{db}{\kappa}\right)^2.
\]
Canonical vector normalization proves the mass formula. In particular, the Berry terms have been included; the calculation does not use a fixed projection.

At \(M=0\),
\[
\lambda=\kappa,\qquad
p_L=\sqrt{\frac2l}\cos(\kappa x),
\qquad
p_R=\sqrt{\frac2l}\sin(\kappa x).
\]
Elementary integration gives
\[
c_L=\frac8{3\pi},\qquad c_R=\frac4{3\pi}.
\]
Hence
\[
\frac{M_{\mathrm{spec}}^2}{M_{\mathrm{KK}}^2}
=
3\frac{(8-4)^2}{8^2+4^2}
=\frac35.
\]
The matrices \(\operatorname{diag}(c_L,c_R)\) describe the coefficient of the retained vector in the induced connection; they are not the endpoint \(U(1)\) charge assignment. The explicit transformation formulas above establish covariance. \(\square\)

**7. Proposition (exact matching is possible after imposing an additional bulk-mass condition).**

Keep the gauge and fermion boundary conditions of Result 6. At fixed \(l\), let the fermion bulk mass vary over
\[
0\le M\le \frac{3\pi}{4l}.
\]
Then at least one value
\[
\boxed{0<M_*<\frac{3\pi}{4l}}
\]
satisfies
\[
M_{\mathrm{spec}}(M_*)=M_{\mathrm{KK}}.
\]
An exact defining condition is
\[
\boxed{
3\lambda(M_*)^2(c_L(M_*)-c_R(M_*))^2
=
\frac{\pi^2}{4l^2}
\bigl(c_L(M_*)^2+c_R(M_*)^2\bigr).
}
\]
No uniqueness is asserted.

*Proof.* For \(M\ge0\), write
\[
t=kl\in[\pi/2,\pi),
\qquad
M=-k\cot t,
\qquad
\lambda=\frac{k}{\sin t}.
\]
The lowest chiral profiles are proportional to
\[
p_L(x)\propto\sin(k(l-x)),
\qquad
p_R(x)\propto\sin(kx).
\]
The relation \(M=-k\cot(kl)\) follows by imposing
\(p_L'(0)=Mp_L(0)\); substitution in the first-order equation gives the displayed \(p_R\) and \(\lambda\).

At
\[
t=\frac{3\pi}{4},
\qquad
M=\frac{3\pi}{4l},
\]
we have
\[
\lambda^2=\frac{9\pi^2}{8l^2}.
\]
The common squared normalization integral is
\[
\int_0^l\sin^2(kx)\,dx
=
l\left(\frac12+\frac1{3\pi}\right).
\]
Integrating against \(\cos(\pi x/(2l))\) gives
\[
c_L=\frac9{3\pi+2},
\qquad
c_R=\frac6{3\pi+2}.
\]
Therefore
\[
\frac{M_{\mathrm{spec}}^2}{M_{\mathrm{KK}}^2}
=
3\frac92\frac{(9-6)^2}{9^2+6^2}
=
\frac{27}{26}>1.
\]
At \(M=0\), Result 6 gives \(3/5<1\). The lowest eigenvalue is simple, and the displayed root and normalized profiles depend continuously on \(M\). The intermediate value theorem proves the existence of \(M_*\). Thus universal impossibility of mass matching is false, while automatic matching is also false. \(\square\)

**8. No-go theorem (bounded light fermions cannot match the collapsing Neumann–Dirichlet tower).**

Let a family of induced finite operators satisfy
\[
\|V_0(l)\|\le C<\infty.
\]
Use the leading spectral action of Result 5, with no additional vector-mass or kinetic terms. The retained gauge couplings may depend on \(l\), and any finite multiplicities may be included.

Then every canonically normalized spectral-action vector mass satisfies
\[
\boxed{M_{\mathrm{spec}}^2\le6C^2.}
\]
Consequently it cannot equal
\[
M_{\mathrm{KK}}^2=\frac{\pi^2}{4l^2}
\]
for arbitrarily small \(l\).

This applies to the fixed-light-mass collapse of [Theorem 9.9](09_massive_chiral_interval.md) and to the bounded-texture limit of Result 4.

*Proof.* For every Hermitian retained coupling matrix \(T\),
\[
\|[T,V_0]\|_{\mathrm{HS}}
\le
\|TV_0\|_{\mathrm{HS}}+\|V_0T\|_{\mathrm{HS}}
\le2C\|T\|_{\mathrm{HS}}.
\]
Hence
\[
K\le4C^2Q
\]
as quadratic forms. Result 5 gives
\[
\mathcal M_{\mathrm{spec}}^2\le6C^2I.
\]
The same inequality holds after restricting to any gauge-profile subspace. Multiplicities cannot evade it because they enter both Hilbert–Schmidt norms.

The Neumann–Dirichlet mass diverges as \(l^{-1}\), proving the contradiction. More quantitatively, matching any such vector requires
\[
\boxed{\|V_0(l)\|\ge\frac{\pi}{2\sqrt6\,l}.}
\]
Thus some retained fermion scale must grow at least as \(1/l\), unless the bosonic action or the stated approximation is changed. \(\square\)

**9. Proposition (gauge-factor and scalar normalizations require additional conditions).**

Let the finite gauge kinetic form be diagonal on two specified factors, with fixed generator normalizations,
\[
Q|_{\mathfrak g_s}=q_sI,\qquad s=1,2.
\]
Let their five-dimensional kinetic terms have independent couplings \(g_{5,s}\), and let
\[
J_s=\int_0^l f_s(x)^2\,dx.
\]
Then the leading finite spectral action predicts
\[
\frac1{g_{4,s}^2}=4\eta q_s,
\qquad
\frac{g_{4,1}^2}{g_{4,2}^2}=\frac{q_2}{q_1},
\]
whereas the KK action gives
\[
\frac1{g_{4,s}^2}=\frac{J_s}{g_{5,s}^2}.
\]
Vector-mass matching does not imply equality of these relative normalizations.

For scalar coordinates \(\varphi^i\), let the induced connection at vanishing ambient \(A_\mu\) be
\[
\mathcal A_\mu=\mathcal B_i(\varphi)\partial_\mu\varphi^i,
\]
and define
\[
H_i=\partial_iV+i[\mathcal B_i,V].
\]
The spectral-action scalar metric, in the convention
\(\frac12Z_{ij}\partial_\mu\varphi^i\partial^\mu\varphi^j\), is
\[
\boxed{
Z_{ij}^{\mathrm{spec}}
=
6\eta\,\operatorname{Re}\operatorname{Tr}(H_iH_j).
}
\]
Mass matching constrains this metric on the corresponding gauge-orbit directions. It does not generally determine the metric on additional physical scalar directions.

*Proof.* Canonical normalization of
\(\eta q_sF_s^2\) gives the finite coupling formula. Integrating the five-dimensional kinetic term gives the KK formula. Rescaling \(g_{5,s}^{-2}\) multiplies both \(G^{(5)}_s\) and \(H^{(5)}_s\) by the same factor and leaves every KK mass unchanged. Therefore mass matching cannot determine the independent ratio \(g_{5,1}/g_{5,2}\). A common simple parent group with a specified invariant form could remove this freedom, but that is additional geometric input.

For the scalar metric,
\[
D_\mu V=H_i\partial_\mu\varphi^i.
\]
Substitution into \(3\eta\operatorname{Tr}(D_\mu VD^\mu V)\) proves the formula.

The eaten scalar in Result 6 illustrates the constrained directions precisely. Put
\[
G=\frac{l}{2g_5^2},\qquad
q=c_L^2+c_R^2,\qquad d=c_L-c_R.
\]
Its KK action is
\[
\frac G4(da)^2+\frac G2(db+\kappa a)^2.
\]
If both the gauge kinetic coefficient and the vector mass match,
\[
4\eta q=G,\qquad
3\lambda^2d^2=\kappa^2q,
\]
then the spectral scalar coefficient automatically satisfies
\[
Z_b^{\mathrm{spec}}
=
\frac{12\eta\lambda^2d^2}{\kappa^2}
=G.
\]
Thus no separate tuning is needed for this eaten scalar once those two equalities hold.

A scalar direction transverse to the gauge orbit is not tested by that mass equation. In the commuting-bulk mixed model, \(A_5\) supplies only the unitary link of Result 3, so there is no radial Higgs kinetic term to match. If boundary Yukawa matrices are promoted to independent scalar fields, their continuum dynamics, including any boundary kinetic form, must be specified separately. \(\square\)

## Consequence for T4b and hypothesis H

Gauge-covariant projection repairs the covariance defect and supplies an exact light-bundle connection, but it does not establish equality with the full finite-triple fluctuation space or with the interacting KK theory. At fixed length, vector-mass equality is possible precisely when the appropriate trace-and-overlap condition holds; covariance supplies no selection principle for it or for the remaining kinetic normalizations. Hypothesis H therefore requires additional geometric relations, and its collapse regime cannot reproduce a Neumann–Dirichlet vector of mass \(\pi/(2l)\) from a leading finite spectral action whose retained fermion masses all remain bounded.