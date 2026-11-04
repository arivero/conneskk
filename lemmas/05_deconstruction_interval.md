The geometric identification exists: the minimal grading-preserving spectral truncation of a suitable chiral interval is exactly Connes–Lott, with
\[
|m|=\frac{\pi}{2l},\qquad d_{\mathrm{trunc}}=\frac{2l}{\pi}.
\]
The truncated endpoint states are smeared states on the original interval. Moreover, this interval has no zero mode, which limits the physical interpretation of both extremes.

## Part 1. Deconstructed chain

**Statement.** There is a natural family with opposite endpoint chiralities, an exact Connes–Lott member at \(N=2\), and endpoint distance converging to \(l\). The answer depends on the representation of the site algebra; the familiar lattice-distance anomaly is not universal.

**Hypotheses.** We consider complex even spectral triples, without imposing additional real-structure or KO-dimension axioms. Let \(N\geq2\), \(n=N-1\), and
\[
A_N=\mathbb C^N,\qquad
H_N=\operatorname{span}\{L_1,\ldots,L_{N-1},R_2,\ldots,R_N\}.
\]
Thus interior sites carry both components, site \(1\) only \(L\), and site \(N\) only \(R\). Define
\[
\pi_N(a)=
\operatorname{diag}(a_1,\ldots,a_{N-1},a_2,\ldots,a_N),
\qquad
\Gamma_N=\operatorname{diag}(I_n,-I_n).
\]
If \(S_n\) is the lower shift, set
\[
B_N=h_N(I_n-S_n),\qquad
D_N=\begin{pmatrix}0&B_N\\B_N^*&0\end{pmatrix}.
\]

These are forward/backward differences:
\[
(D_N\psi)_{L_i}=h_N(R_{i+1}-R_i),\qquad
(D_N\psi)_{R_j}=h_N(L_{j-1}-L_j),
\]
with the missing components interpreted as
\[
R_1=0,\qquad L_N=0.
\]
There are nearest-neighbour couplings and onsite \(L\)-\(R\) terms at interior sites.

For compatibility with the spectral truncation in Part 3, choose
\[
\theta_N=\frac{\pi}{4N-2},\qquad
h_N=\frac{\pi}{4l\sin\theta_N}\sim\frac{N}{l}.
\tag{1}
\]
This fixes the smallest positive eigenvalue to \(\pi/(2l)\) at every \(N\).

**Proof.**

The representation is faithful, \([\Gamma_N,\pi_N(a)]=0\), and \(\Gamma_ND_N=-D_N\Gamma_N\). At \(N=2\),
\[
A_2=\mathbb C^2,\quad H_2=\mathbb C^2,\quad
D_2=\begin{pmatrix}0&h_2\\h_2&0\end{pmatrix},
\quad h_2=\frac{\pi}{2l}.
\]
This is exactly the stated two-point triple; a diagonal unitary supplies any desired phase of \(m\).

Ordering the basis as
\[
L_1,R_2,L_2,R_3,\ldots,L_{N-1},R_N
\]
makes \(D_N\) a path adjacency matrix with alternating signs. A diagonal unitary removes those signs. The usual sine eigenvectors of a path therefore give
\[
\operatorname{spec}(D_N)
=\left\{2h_N\cos\frac{j\pi}{2N-1}:1\leq j\leq2N-2\right\}
=\{\pm\lambda_{N,r}:1\leq r\leq N-1\},
\]
where
\[
\boxed{\lambda_{N,r}=2h_N\sin((2r-1)\theta_N).}
\tag{2}
\]
Consequently,
\[
\boxed{
K_N(t)=\operatorname{Tr}e^{-tD_N^2}
=2\sum_{r=1}^{N-1}
e^{-4t h_N^2\sin^2((2r-1)\theta_N)}.
}
\tag{3}
\]

For a real site function \(a\), the onsite terms commute with \(\pi_N(a)\), while
\[
B_N\pi_R(a)-\pi_L(a)B_N
=h_N\operatorname{diag}(a_2-a_1,\ldots,a_N-a_{N-1}).
\]
Hence
\[
\|[D_N,\pi_N(a)]\|
=h_N\max_i|a_{i+1}-a_i|.
\]
The triangle inequality bounds \(|a_j-a_i|\) by \(|j-i|/h_N\); the function \(a_i=(i-1)/h_N\) attains this bound. Thus
\[
\boxed{d_N(i,j)=\frac{|i-j|}{h_N}.}
\tag{4}
\]
In particular,
\[
\boxed{
d_N(1,N)=\frac{4l(N-1)}{\pi}\sin\frac{\pi}{4N-2}
\longrightarrow l.
}
\tag{5}
\]

One can instead choose the geometric normalization
\[
h_N=\frac{N-1}{l}.
\tag{6}
\]
Then \(d_N(1,N)=l\) exactly for every \(N\), with the same continuum limit. However, its \(N=2\) mass is \(1/l\), rather than the continuum lowest eigenvalue \(\pi/(2l)\). Equations (1) and (6) distinguish spectral calibration from metric calibration at finite resolution.

Two other natural choices clarify the literature:

- **One-component staggered path.** Take \(A=\mathbb C^M\), \(H=\mathbb C^M\), alternating grading, and \(D=h\) times path adjacency. Opposite endpoint chiralities require even \(M\). Its spectrum is \(2h\cos(j\pi/(M+1))\). For \(k=|i-j|\),
  \[
  \boxed{
  d(i,j)=
  \begin{cases}
  (k+1)/(2h),&k\ \text{odd},\\[2mm]
  \sqrt{k(k+2)}/(2h),&k\ \text{even}.
  \end{cases}}
  \tag{7}
  \]
  In particular \(d(1,M)=M/(2h)\). Thus \(h=M/(2l)\) gives endpoint distance \(l\), whereas \(h=M/l\) gives \(l/2\).

  Here is a direct proof of (7). Restrict the commutator to the connecting subpath and extend the function constantly outside it. After removing phases, its norm is that of weighted adjacency, with dimensionless edge weights \(w_i=h|\Delta a_i|\). If its two bipartition sizes are \(p,q\), the off-diagonal block \(C\) satisfies
  \[
  \sum_iw_i=\mathbf1_p^TC\mathbf1_q
  \leq\sqrt{pq}\,\|C\|.
  \]
  For \(p=q\), alternating weights \(1,0,1,\ldots,1\) attain the bound. For \(p=q+1\), the weights
  \[
  \frac{(q,1,q-1,2,\ldots,1,q)}{\sqrt{q(q+1)}}
  \]
  attain it: the normalized constant vectors on the two bipartitions are singular vectors with singular value \(1\), and positivity gives the norm \(1\). This proves (7).

  These are the nonadditive distances studied by [Bimonte–Lizzi–Sparano, §5](https://arxiv.org/pdf/hep-lat/9404007) and given explicitly by [Atzmon, Eq. (30)](https://arxiv.org/pdf/hep-th/9507002). Reduction to the connecting path also agrees with [Iochum–Krajewski–Martinetti, Proposition 4](https://arxiv.org/pdf/hep-th/9912217).

- **Vertex-edge incidence Dirac.** Let \(\partial:\mathbb C^N\to\mathbb C^{N-1}\) be the path difference matrix and use
  \[
  D_{\mathrm{inc}}=h\begin{pmatrix}0&\partial^*\\\partial&0\end{pmatrix}.
  \]
  Its spectrum and heat trace are
  \[
  \{0\}\cup
  \left\{\pm2h\sin\frac{k\pi}{2N}:1\leq k<N\right\},
  \]
  \[
  K_{\mathrm{inc}}(t)=1+
  2\sum_{k=1}^{N-1}e^{-4th^2\sin^2(k\pi/(2N))}.
  \]
  These follow by substituting the cosine eigenvectors into the path Laplacian \(\partial^*\partial\). Representing a site function on each edge by its value at the tail gives distance \(|i-j|/h\). But \(H\) has dimension \(2N-1\), has a zero mode, and both endpoint vertex components have the same grading. At \(N=2\), its spectrum is \(0,\pm\sqrt2h\), so it is not Connes–Lott.

Thus the quoted integer deconstruction tower belongs to the incidence construction. Opposite chiral boundary conditions produce the shifted tower (2).

**Status: PROVED**

## Part 2. Continuum limit

**Statement.** The chain above converges to an interval Dirac operator in three precise senses: ordered low eigenvalues, heat traces locally uniformly for \(t>0\), and pure-state metric spaces in Gromov–Hausdorff distance. It also has a controlled one-dimensional heat window.

**Hypotheses.** On \(H_l=L^2([0,l],\mathbb C^2)\), define
\[
D_l=\begin{pmatrix}0&\partial_x\\-\partial_x&0\end{pmatrix},
\qquad
\operatorname{Dom}D_l
=\{(L,R)\in H^1:R(0)=0,\ L(l)=0\},
\tag{8}
\]
with scalar multiplication by \(C^\infty([0,l])\) and grading
\(\Gamma=\operatorname{diag}(1,-1)\).

These are opposite local chiral conditions. Reflection parity is \(\Gamma\) at \(0\) and \(-\Gamma\) at \(l\); their composition gives antiperiodicity on the doubled interval.

**Proof.**

Integration by parts gives the boundary form
\[
[\overline L\,\widetilde R-\overline R\,\widetilde L]_0^l.
\]
The conditions in (8) form a maximal isotropic boundary subspace, so \(D_l\) is self-adjoint. Its resolvent is compact by the compact embedding \(H^1\hookrightarrow L^2\).

Solving \(D_l\psi=\lambda\psi\) gives
\[
\psi_\lambda(x)=c(\cos\lambda x,\sin\lambda x),\qquad
\cos(\lambda l)=0.
\]
Therefore
\[
\boxed{\operatorname{spec}(D_l)
=\left\{\pm\frac{(r-\tfrac12)\pi}{l}:r=1,2,\ldots\right\}.}
\tag{9}
\]
The kernel is zero. Squaring gives mixed Neumann–Dirichlet conditions on \(L\), and Dirichlet–Neumann conditions on \(R\).

For scalar \(f\),
\[
\|[D_l,f]\|=\|f'\|_\infty,
\qquad d_l(x,y)=|x-y|.
\tag{10}
\]

Under normalization (1), with \(m_1=\pi/(2l)\),
\[
\lambda_{N,r}
=m_1\frac{\sin((2r-1)\theta_N)}{\sin\theta_N}
\longrightarrow(2r-1)m_1.
\tag{11}
\]
This proves low-eigenvalue convergence. Since
\[
\sin y\geq\frac{2y}{\pi}\quad(0\leq y\leq\pi/2),
\]
we also have
\[
\lambda_{N,r}\geq\frac{2r-1}{l}.
\tag{12}
\]
A summable Gaussian majorant now proves, uniformly on every \(t\in[\varepsilon,T]\),
\[
K_N(t)\longrightarrow
K_l(t)=2\sum_{r=1}^{\infty}
e^{-t((r-\frac12)\pi/l)^2}.
\tag{13}
\]

Poisson summation gives
\[
\boxed{
K_l(t)=\frac{l}{\sqrt{\pi t}}
\left(1+2\sum_{q=1}^{\infty}(-1)^q e^{-q^2l^2/t}\right).
}
\tag{14}
\]
In particular, \(K_l(t)\sim l/\sqrt{\pi t}\) as \(t/l^2\to0\).

The finite-chain heat window has the following rigorous meaning. For every sequence \(t_N>0\) satisfying
\[
\frac{t_N}{l^2}\to0,\qquad
\frac{N^2t_N}{l^2}\to\infty,
\tag{15}
\]
one has
\[
\boxed{
K_N(t_N)\sim\frac{l}{\sqrt{\pi t_N}},
\qquad
-2t_N\frac{K_N'(t_N)}{K_N(t_N)}\to1.
}
\tag{16}
\]
To prove this, put \(u_r=\pi\sqrt{t_N}(r-\tfrac12)/l\). On bounded \(u_r\)-intervals, the sine argument in (11) tends uniformly to zero, so \(\sqrt{t_N}\lambda_{N,r}/u_r\to1\). The mesh tends to zero and its upper endpoint tends to infinity. Bound (12) controls the tails. Gaussian Riemann sums, and then the same sums weighted by \(t_N\lambda_{N,r}^2\), prove both assertions.

Finally, identify site \(i\) with \(x_i=(i-1)l/(N-1)\). Equation (4) gives
\[
d_N(i,j)=\rho_N|x_i-x_j|,
\qquad
\rho_N=\frac{N-1}{lh_N}=1+O(N^{-1}).
\]
The metric distortion and the grid mesh are both \(O(l/N)\), proving Gromov–Hausdorff convergence to \([0,l]\).

The endpoint chirality here concerns allowed boundary components. It does not supply localized chiral zero modes.

**Status: PROVED**

## Part 3. Minimal spectral truncation

**Statement.** The minimal nonzero grading-preserving spectral truncation of (8) is unitarily equivalent to Connes–Lott, with
\[
\boxed{|m|=m_1=\frac{\pi}{2l},\qquad c=\frac{\pi}{2}.}
\]
Its natural truncated endpoint states have distance \(1/m_1=2l/\pi\). Literal endpoint evaluations do not descend through compression.

**Hypotheses.** Let
\[
P=\mathbf1_{[0,E]}(|D_l|),\qquad m_1\leq E<3m_1,
\]
and give \(S=P\,C([0,l])\,P\) its inherited operator-system structure. This is the compression construction described in [Connes–van Suijlekom, §1](https://link.springer.com/article/10.1007/s00220-020-03825-x).

**Proof.**

An orthonormal chiral basis of \(PH_l\) is
\[
u_L(x)=\sqrt{\frac2l}
\begin{pmatrix}\cos(\pi x/(2l))\\0\end{pmatrix},
\qquad
u_R(x)=\sqrt{\frac2l}
\begin{pmatrix}0\\\sin(\pi x/(2l))\end{pmatrix}.
\]
In this basis,
\[
P D_lP=
\begin{pmatrix}0&m_1\\m_1&0\end{pmatrix},
\qquad
P\Gamma P=\operatorname{diag}(1,-1).
\tag{17}
\]

Compression of multiplication is
\[
Q(f)=
\begin{pmatrix}
\displaystyle\frac2l\int_0^l f(x)\cos^2\frac{\pi x}{2l}\,dx&0\\
0&\displaystyle\frac2l\int_0^l f(x)\sin^2\frac{\pi x}{2l}\,dx
\end{pmatrix}.
\tag{18}
\]
Since
\[
Q(1)=I,\qquad
Q(\cos(\pi x/l))=\tfrac12\operatorname{diag}(1,-1),
\]
its range is exactly the full diagonal algebra:
\[
\boxed{S=\mathbb C\oplus\mathbb C.}
\tag{19}
\]
Here the compressed operator system happens to be an algebra, although \(Q\) is not multiplicative.

Evaluation on the finite-dimensional space \(PH_l\) is bounded. At \(0\), only \(u_L\) has a nonzero boundary value; at \(l\), only \(u_R\) does. The normalized evaluation vectors therefore define
\[
\omega_0(\operatorname{diag}(a,b))=a,\qquad
\omega_l(\operatorname{diag}(a,b))=b.
\]
Using (17),
\[
\|[PD_lP,\operatorname{diag}(a,b)]\|=m_1|a-b|,
\]
and hence
\[
\boxed{d_{\mathrm{trunc}}(\omega_0,\omega_l)=\frac1{m_1}
=\frac{2l}{\pi}<l.}
\tag{20}
\]

Minimality follows because there is no zero mode and the grading exchanges the eigenspaces at \(+m_1\) and \(-m_1\). A nonzero grading-preserving spectral subspace must retain both.

There is an essential distinction between these states and literal evaluations. For
\[
g(x)=\cos(3\pi x/l),
\]
equation (18) gives \(Q(g)=0\), while \(g(0)=1\) and \(g(l)=-1\). Thus neither endpoint evaluation factors through \(Q\).

The pullbacks of the truncated endpoint states are instead the probability measures
\[
d\mu_L=\frac2l\cos^2\frac{\pi x}{2l}\,dx,\qquad
d\mu_R=\frac2l\sin^2\frac{\pi x}{2l}\,dx.
\]
Their distance using the **original** continuum seminorm is
\[
d_{D_l}(\mu_L,\mu_R)
=\int_0^l\left|\int_0^x(d\mu_L-d\mu_R)\right|dx
=\frac{4l}{\pi^2}.
\tag{21}
\]
The equality follows by integration by parts and is attained by \(f=-x\). Equations (10), (20), and (21) concern three different state/metric comparisons.

**Status: PROVED**

## Part 4. The two limits

*Amendment (Terra 6.1, 3 Nov 2026; [report](../historical/reviews/2026-11-03_terra_check_nogo_19.md)).* The statements of this part are correct for the stated bare chain, with one precision: the condition N/l -> infinity gives uniform convergence of the dispersion on bounded energy windows and of normalized heat traces and counting densities, and does not by itself give convergence of the unnormalized difference of heat traces (for N = floor(l^(5/4)) it diverges). Escapes for the empty light sector: a tuned bulk mass or a scaled boundary coupling.

**Statement.** At fixed finite rank, \(m\to0\) produces infinitely separated finite geometry, not an additional heat dimension. A resolved interval requires a growing tower. As \(m\to\infty\), the metric collapses, but the light Hilbert space is zero.

**Hypotheses.** Identify
\[
m=m_1=\frac{\pi}{2l},
\]
use normalization (1), and hold physical energies or heat times fixed unless stated otherwise.

**Proof.**

For fixed \(N\), \(D_N=mT_N\) with \(T_N\) independent of \(m\). Therefore, as \(m\to0\),
\[
D_N\to0,\qquad K_N(t)\to2(N-1),\qquad
d_N(i,j)\to\infty\quad(i\ne j).
\]
For the minimal truncation,
\[
K_2(t)=2e^{-tm^2}.
\]
Every finite \(N\) has ultraviolet heat dimension zero. Making its finitely many modes light does not change that conclusion.

For the full interval, a fixed energy \(E\) is in the resolved one-dimensional regime when
\[
\frac1l\ll E.
\]
For its finite-chain approximation, one additionally needs
\[
\boxed{\frac1l\ll E\ll\frac{N}{l}.}
\tag{22}
\]
Thus, as \(l\to\infty\), an exact continuum limit throughout a fixed positive energy window follows if \(N/l\to\infty\). Equivalently, as \(m\to0\), one needs \(Nm\to\infty\).

The continuum counting function and heat density make the emergence explicit:
\[
\#\{|\lambda|\leq E\}
=2\left\lfloor\frac{lE}{\pi}+\frac12\right\rfloor,
\qquad
\frac{K_l(t)}l\longrightarrow\frac1{\sqrt{\pi t}}
\quad(l\to\infty).
\tag{23}
\]
Based at an endpoint, the metric limit is a half-line; the opposite endpoint recedes to infinity.

The order of limits matters even for the normalized heat trace:
\[
\lim_{l\to\infty}\lim_{N\to\infty}\frac{K_N(t)}l
=\frac1{\sqrt{\pi t}},
\qquad
\lim_{N\to\infty}\lim_{l\to\infty}\frac{K_N(t)}l=0.
\tag{24}
\]
Likewise, taking \(t\to0\) at fixed \(N\) gives dimension zero, whereas taking \(N\to\infty\) first gives the interval’s dimension one.

As \(m\to\infty\), all distances tend to zero. At fixed \(N\), the algebra elements with uniformly bounded commutators reduce to constants. But every eigenvalue has magnitude at least \(m\), so
\[
\|(D_N-i)^{-1}\|
\leq\frac1{\sqrt{m^2+1}}\longrightarrow0.
\tag{25}
\]
The same holds for \(D_l\), after identifying the varying intervals by dilation. Its heat trace tends to zero at every fixed \(t>0\).

Thus the metric limit is a point, while the embedded resolvent limit has
\[
H_{\mathrm{light}}=\ker T_N=0.
\]
There is no finite operator limit on the original nonzero Hilbert space, and no surviving fermion pair at fixed energy.

Finally, the two-state spectral truncation exists for
\[
m_1\leq E<3m_1.
\]
A genuine spectral cutoff \(E\ll1/l\) retains no modes. The ratio between the first two positive levels is always \(3\), so the minimal pair has no parametrically large separation from the next level.

**Status: PROVED**

## Verdict on hypothesis H (theorem T1)

**Supported for T1’s geometric assertion.** Connes–Lott is exactly the minimal nonzero grading-preserving spectral compression of the opposite-chirality interval above, with
\[
l=\frac{\pi}{2|m|}.
\]
The chain recovers its spectrum, heat window, and metric.

The precise replacement for the stronger interpretation of H is:

> The two sheets are truncated endpoint evaluation states, whose pullbacks are smeared over the interval. Refinement restores the interval. Decompactification produces a one-dimensional heat regime only when the number of retained modes grows sufficiently rapidly. Collapse identifies the metric points but removes all fermionic modes of this particular interval at fixed energy.

Accordingly, a nonempty two-state sector at \(E\ll1/l\), or surviving light fermions after collapse, is disproved by this model. The construction supplies no KO-6 or Standard Model identification.
---

## Independent numerical check (Claude, 2 Nov 2026)

For l = 1 and N = 2, 3, 5, 9 we checked the following. The spectrum of D_N agrees with +/- 2 h_N sin((2r-1) theta_N) to 1e-14. The lowest positive eigenvalue equals pi/(2l) for every N. For random real site functions, ||[D_N, pi_N(a)]|| equals h_N max abs(a_{i+1} - a_i), which is the identity behind d_N(i,j) = abs(i-j)/h_N. The endpoint distance d_N(1,N) = 0.6366, 0.7869, 0.8844, 0.9398 tends to l. For the minimal truncation, Q(cos(3 pi x/l)) = 0, and the smeared-state distance 0.405290 matches 4l/pi^2. The truncated distance is 2l/pi = 0.6366, identical to d_2(1,2).

**Literature ([../LITERATURE.md](../paper/LITERATURE.md), section A).** The Kaluza-Klein reading of the two-point space is in Connes-Lott (sections I and III: "two copies of Z separated by a distance L"); the two points as points of a fifth dimension are in Viet-Wali 1996; the two-point model as an approximation of a manifold, to be related to dimensional reduction, is in Dimakis-Muller-Hoissen 1994 (section III, Example 4, and section VII). Connes-van Suijlekom (section 1) note that compressions P A P are operator systems, of which the chiral interval is an exception. The truncation theorem with |m| = pi/(2l) was not found in print.
