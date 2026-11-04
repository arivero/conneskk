### Lemma 1 — Exact scalar count

**Statement.** Let \(N_r(K)\) denote the complex dimension of the effective-character-\(r\) part of scalar levels \(0,\ldots,K\). Then
\[
N_0(K)=\sum_{a=0}^K(a+1)^2(K-a+1)^2
      =\frac{(K+2)^5-(K+2)}{30}.
\]
For every fixed integer \(r\), writing \(q=|r|\),
\[
N_0(K-q)\le N_r(K)\le N_0(K)\qquad(K\ge q),
\]
and consequently
\[
N_r(K)=\frac{K^5}{30}+O_r(K^4).
\]

**Hypotheses.** Use the stated Fubini–Study normalization and scalar eigenspaces \(H_{k,k}\). The effective circle parameter is \(\theta=2t\), so an original weight \(2r\) is effective weight \(r\).

**Proof.** Write \(\rho=|z|^2\), and let \(P_{K,K}\) be the bihomogeneous polynomial space. Harmonic decomposition gives the equivariant direct sum
\[
P_{K,K}=\bigoplus_{k=0}^K\rho^{K-k}H_{k,k}.
\]
For completeness, with \(\Delta_c=\sum_{j=1}^4\partial_{z_j}\partial_{\bar z_j}\),
\[
\Delta_c(\rho^s h)=s(2k+s+3)\rho^{s-1}h
\quad(h\in H_{k,k}).
\]
The nonzero coefficients give the decomposition inductively by removing traces. Restriction to \(\rho=1\), equivalently \(p\mapsto p/\rho^K\) on projective space, is injective by homogeneity. Thus
\[
P_{K,K}\cong\bigoplus_{k=0}^K H_{k,k}
\]
as circle representations. This explains why a *single* polynomial space counts all levels through \(K\).

Using the pullback convention in which coordinate variables have weights \(+1,+1,-1,-1\),
\[
\operatorname{Sym}^k(\mathbb C^2_+\oplus\mathbb C^2_-)
=\bigoplus_{a=0}^k
  \operatorname{Sym}^a\mathbb C^2_+
  \otimes\operatorname{Sym}^{k-a}\mathbb C^2_-.
\]
The summand has weight \(2a-k\) and dimension
\[
m_{k,a}=(a+1)(k-a+1).
\]
The antiholomorphic factor has opposite weights. Hence the pair indexed by \(a,b\) in \(P_{K,K}\) has original weight \(2(a-b)\), or effective weight \(a-b\). Invariants pair precisely \(a=b\), while
\[
N_r(K)=
\sum_{\substack{0\le a,b\le K\\a-b=r}}m_{K,a}m_{K,b}.
\]

The generating function for the invariant count is
\[
\sum_{K\ge0}N_0(K)t^K
=\left(\sum_{a\ge0}(a+1)^2t^a\right)^2
=\frac{(1+t)^2}{(1-t)^6}.
\]
Its coefficient is
\[
\binom{K+5}{5}+2\binom{K+4}{5}+\binom{K+3}{5}
=\frac{(K+2)^5-(K+2)}{30}.
\]

Finally, symmetry gives \(N_{-r}=N_r\), and for \(K\ge q\),
\[
N_r(K)=\sum_{b=0}^{K-q}m_{K,b+q}m_{K,b}.
\]
Each factor is at least \(m_{K-q,b}\), giving the lower bound. Cauchy–Schwarz gives the upper bound \(N_r(K)\le N_0(K)\). The asserted asymptotic follows by squeezing. If \(K<q\), the count is zero.

**Verdict on corpus claim:** **Correct as stated.** The representation-theoretic identification and fixed-character assertion in [section 2](../historical/corpus/nine_dimensional_construction.md#2-verify-five-dimensional-spectral-growth) hold exactly.

### Lemma 2 — Invariant spectral dimension five

**Statement.** Under the hypotheses below, there are constants \(c,C>0\) such that
\[
c\Lambda^5\le N_{\mathrm{inv}}(\Lambda)\le C\Lambda^5
\]
for all sufficiently large \(\Lambda\).

**Hypotheses.** The bundle \(E\) is smooth, Hermitian, and of finite **positive** rank, with a smooth unitary lift of the effective circle. The operator \(D\) is a smooth, formally self-adjoint differential operator of Dirac type, realized by its self-adjoint closure on \(H^1(X,E)\). Equivariance means that the circle unitaries preserve this domain and commute with \(D\). These conditions follow from smooth equivariance on \(C^\infty(X,E)\), since \(X\) is closed.

**Proof.** Put \(\mathcal H_0=\ker L\). Averaging over the circle gives an orthogonal projection commuting with the resolvent of \(D\). Thus \(D_0=D|_{\mathcal H_0}\) is self-adjoint with compact resolvent. Its squared quadratic form is
\[
Q(s)=\|Ds\|_2^2,\qquad
\operatorname{Dom}Q=H^1(X,E)\cap\mathcal H_0.
\]

We use the elliptic estimate
\[
\|s\|_{H^1}^2\le A\bigl(\|Ds\|_2^2+\|s\|_2^2\bigr).
\tag{1}
\]
Indeed, \(D^2=\nabla^*\nabla+R\) for a metric connection and a smooth endomorphism; integration and boundedness of \(R\) give (1). This is the usual Gårding estimate; see [Freed, *Geometry of Dirac Operators*, §3.2, Propositions 3.2.4 and 3.2.15](https://web.ma.utexas.edu/users/dafr/DiracNotes.pdf).

*Upper bound.* There is a smooth equivariant fibrewise isometric embedding
\[
J:E\longrightarrow X\times W
\]
for a finite-dimensional unitary circle representation \(W\). Here is a construction. Choose finitely many smooth sections spanning every fibre. Their finite circle-Fourier truncations converge uniformly, so sufficiently accurate truncations still span every fibre. The finitely many Fourier components span a finite-dimensional invariant space \(V\). Evaluation \(F_x:V\to E_x\) is surjective, and
\[
J_x=F_x^*(F_xF_x^*)^{-1/2}
\]
is the required embedding, with \(W=V\).

Smoothness of \(J\) and (1) imply
\[
\|d(Js)\|_2^2\le A'\bigl(\|Ds\|_2^2+\|s\|_2^2\bigr).
\tag{2}
\]
The invariant scalar Laplacian on \(X\times W\) decomposes into finitely many fixed-character scalar problems. If its counting function at eigenvalue cutoff \(T^2\) is \(M_W(T)\), Lemma 1 gives
\[
M_W(T)=\sum_j N_{r_j}\!\left(
 \left\lfloor\frac{\sqrt{T^2+9}-3}{2}\right\rfloor
 \right)=O(T^5).
\]
The signs of the characters depend on the action convention and do not affect these counts.

For the invariant spectral subspace of \(|D|\) below \(\Lambda\), (2) bounds every Rayleigh quotient of its image under \(J\) by \(A'(\Lambda^2+1)\). Since \(J\) is isometric, min–max yields
\[
N_{\mathrm{inv}}(\Lambda)
\le M_W\!\left(\sqrt{A'(\Lambda^2+1)}\right)
\le C\Lambda^5.
\]

*Orbit types and lower bound.* Write a point as \([u:v]\), with \(u,v\in\mathbb C^2\). If both are nonzero, stabilization requires
\[
e^{it}u=\lambda u,\qquad e^{-it}v=\lambda v,
\]
hence \(e^{2it}=1\). This is precisely the projective kernel removed in passing to the effective circle. Therefore the effective action is free on
\[
X_{\mathrm{free}}=\{[u:v]:u\ne0,\ v\ne0\},
\]
an open dense subset. The remaining orbits are the fixed components
\[
\{[u:0]\}\cong\mathbb{CP}^1,\qquad
\{[0:v]\}\cong\mathbb{CP}^1.
\]
There are no nonfixed exceptional orbits.

The free quotient is a smooth five-dimensional manifold. Choose a coordinate cube \(Q=(0,\pi)^5\) whose closure lies inside a trivializing patch for the principal circle bundle and the descended bundle \(E/G\). Choose a smooth unit section \(e\) of the descended bundle there.

For \(f\in H_0^1(Q)\), lift \(fe\) invariantly and extend it by zero to obtain \(s_f\in H^1(X,E)\cap\mathcal H_0\). On this compact patch, the quotient density, orbit length, and coefficients are bounded, with positive lower bounds where needed. Consequently
\[
\|s_f\|_2^2\ge b\|f\|_{L^2(Q)}^2,\qquad
\|Ds_f\|_2^2\le B\bigl(\|\nabla f\|_2^2+\|f\|_2^2\bigr).
\tag{3}
\]
Take the \(m^5\)-dimensional space spanned by
\[
\prod_{j=1}^5\sin(n_jy_j),\qquad 1\le n_j\le m.
\]
Every member satisfies \(\|\nabla f\|_2^2\le5m^2\|f\|_2^2\). By (3) and min–max,
\[
N_{\mathrm{inv}}\!\left(\sqrt{(B/b)(5m^2+1)}\right)\ge m^5.
\]
Choosing \(m\) proportional to \(\Lambda\) proves the lower bound. This uses Dirichlet trial functions for the form of \(D^2\); it does not impose a self-adjoint Dirichlet boundary condition on \(D\).

Only one free patch is needed for this lower bound. Freeness can be weakened to a principal patch with one-dimensional orbits and a nonzero isotropy-fixed fibre bundle. Without that fibre condition, invariant sections can vanish identically.

**Verdict on corpus claim:** **Correct with amendment:** explicitly require positive rank and the equivariant self-adjoint realization. The [comparison sketch](../historical/corpus/nine_dimensional_construction.md#2-verify-five-dimensional-spectral-growth) then proves the claimed exponent. The zero-rank bundle would give \(N_{\mathrm{inv}}=0\).

### Lemma 3 — Resolvent collapse

**Statement.** For real \(\tau\), with the realizations specified below,
\[
D_\tau^2=D^2+\tau^2L^2,\qquad
\|(1-P_0)(D_\tau-i)^{-1}\|
\le(1+\tau^2)^{-1/2}.
\]
Moreover, for every \(f\in C^\infty(X)\),
\[
\sup_{\tau\in\mathbb R}\|[D_\tau,f]\|<\infty
\quad\Longleftrightarrow\quad Kf=0.
\]

**Hypotheses.** Retain Lemma 2. Require \(\Gamma\) to be a smooth **Hermitian bundle involution**, commuting with the circle action, and require \(D\Gamma+\Gamma D=0\) on smooth sections. Thus \(\Gamma^*=\Gamma\), \(\Gamma^2=1\), and \([\Gamma,f]=0\). The generator \(L\) is self-adjoint with integer spectrum. Choose the sign convention
\[
[L,f]=-i\,M_{Kf}.
\]
Define \(D_\tau\) initially on smooth sections and take its closure.

**Proof.** All operators preserve the smooth core, where
\[
D\Gamma L+\Gamma LD=0,\qquad
(\Gamma L)^2=L^2.
\]
This proves the square identity there.

To justify the closures, decompose into finite-dimensional smooth joint eigenspaces
\[
\mathcal H_{\mu,r}
=\ker(D^2-\mu)\cap\ker(L-r),
\qquad \mu\ge0,\quad r\in\mathbb Z.
\]
They form a complete orthogonal decomposition: the circle preserves each finite-dimensional eigenspace of \(D^2\). Both \(D\) and \(\Gamma\) preserve these joint spaces. On each,
\[
A_{\tau,\mu,r}=D+\tau r\Gamma
\]
is a self-adjoint matrix satisfying
\[
A_{\tau,\mu,r}^2=(\mu+\tau^2r^2)I.
\]
Their self-adjoint direct sum is the closure of \(D_\tau\); finite sums of joint eigenspaces form a core. For \(\tau\ne0\), its domain is
\[
\operatorname{Dom}D\cap\operatorname{Dom}L=H^1(X,E),
\]
because \(L:H^1\to L^2\) is bounded. The same domain holds at \(\tau=0\). Thus smooth sections are a common core. The square identity also holds for the self-adjoint joint-spectral, equivalently quadratic-form-sum, realization of its right-hand side.

On a block with \(r\ne0\),
\[
\|(A_{\tau,\mu,r}-i)^{-1}\|
=\frac1{\sqrt{1+\mu+\tau^2r^2}}
\le\frac1{\sqrt{1+\tau^2}}.
\]
Taking the supremum proves the bound. On \(\mathcal H_0\), \(D_\tau=D_0\); therefore, if \(\iota:\mathcal H_0\hookrightarrow L^2(X,E)\),
\[
\left\|(D_\tau-i)^{-1}
-\iota(D_0-i)^{-1}\iota^*\right\|
\le(1+\tau^2)^{-1/2}.
\]
This is precisely embedded norm-resolvent convergence.

Finally,
\[
[D_\tau,f]=[D,f]-i\tau\Gamma M_{Kf}.
\]
The first term is bounded, and \(\Gamma\) is fibrewise unitary, so
\[
\|[D_\tau,f]\|
\ge|\tau|\,\|Kf\|_\infty-\|[D,f]\|.
\]
This proves necessity; if \(Kf=0\), the commutator equals \([D,f]\), proving sufficiency.

**Verdict on corpus claim:** **Correct as stated in its twisted-spin setting**, where \(\Gamma\) is the Hermitian bundle grading and the [self-adjoint closure is specified](../historical/corpus/nine_dimensional_construction.md#1-an-operator-family-that-actually-lowers-dimension). The four algebraic identities alone are insufficient as abstract hypotheses: the Hermitian, domain, and scalar-commutation conditions above are essential to this argument.