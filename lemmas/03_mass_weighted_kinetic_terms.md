**Part A. Statement.**

For a constant finite operator commuting with the gauge connection, the Yang–Mills term is
\[
\boxed{
S_{\mathrm{YM}}
=-\frac1{24\pi^2}\int_M
\sum_j f(m_j^2/\Lambda^2)\,
\operatorname{tr}_{H_j}(F_{\mu\nu}F^{\mu\nu})\,dV .
}
\]
Here \(H_j\) is an eigenspace of \(D_F^2\). The trace includes its entire finite multiplicity; the spin trace has already been taken.

**Hypotheses.**

Use Hermitian Euclidean gamma matrices, \(\{\gamma^\mu,\gamma^\nu\}=2g^{\mu\nu}\), and skew-Hermitian gauge curvature
\[
F_{\mu\nu}=[\nabla_\mu+A_\mu,\nabla_\nu+A_\nu]_{\rm gauge}.
\]
The spectral action is the literal trace on \(L^2(M,S)\otimes H_F\), without a subsequent chirality or reality projection.

To distinguish the Laplace measure from the mass ratios, write
\[
f(z)=\int_{(0,\infty)}e^{-sz}\,d\nu(s),
\qquad
0<\nu((0,\infty))<\infty,
\qquad
\int(s^{-2}+s^2)\,d\nu(s)<\infty.
\]
This class includes \(f(z)=e^{-z}\). In particular, \(f(0)<\infty\), \(f(\infty)=0\), and the spectral action is trace class.

Assume the finite-sector decomposition is fixed as \(\Lambda\) varies, \(A\) is smooth and independent of \(\Lambda\), and
\[
\partial_\mu D_F=0,\qquad [A_\mu,D_F]=0.
\]

**Proof.**

Put \(\mathcal D=D_{M,A}\), suppressing identity factors. Chirality satisfies
\[
\{\mathcal D,\gamma_5\}=0,\qquad \gamma_5^2=1.
\]
Consequently,
\[
(\mathcal D+\gamma_5D_F)^2
=\mathcal D^2+D_F^2+\gamma_5[D_F,\mathcal D]
=\mathcal D^2+D_F^2.
\]
The two summands strongly commute. Since \(A\) preserves every eigenspace \(H_j\) of \(D_F^2\),
\[
\boxed{
\operatorname{Tr}e^{-tD_A^2}
=\sum_j e^{-tm_j^2}\operatorname{Tr}e^{-tD_{M,A_j}^2}.
}
\]

Let \(P_j=D_{M,A_j}^2\), and use integrated heat coefficients:
\[
\operatorname{Tr}e^{-tP_j}
=t^{-2}a_0(P_j)+t^{-1}a_2(P_j)+a_4(P_j)+R_j(t).
\]
For fixed smooth backgrounds, \(|R_j(t)|\le C t\) for all \(t>0\): the small-\(t\) estimate is the heat expansion, and the large-\(t\) estimate follows from \(P_j\ge0\).

Define
\[
x_j=m_j^2/\Lambda^2,\qquad
\Phi_k(x)=\int s^{-k}e^{-sx}\,d\nu(s).
\]
Integration of the exact factorization gives
\[
S=\sum_j\left[
\Lambda^4\Phi_2(x_j)a_0(P_j)
+\Lambda^2\Phi_1(x_j)a_2(P_j)
+f(x_j)a_4(P_j)
\right]+O(\Lambda^{-2}).
\]
The remainder is bounded by
\[
C\Lambda^{-2}\int s\,d\nu(s),
\]
**uniformly for all \(x_j\ge0\)**. It is also uniform over compact smooth families of connections. Thus fixed mass ratios require no expansion in \(m_j/\Lambda\).

It remains to compute the gauge part of \(a_4\). With
\(\gamma^{\mu\nu}=\tfrac12[\gamma^\mu,\gamma^\nu]\), the gauge-dependent endomorphism in the convention \(P=-(\nabla^2+E)\) is
\[
E_F=\tfrac12\gamma^{\mu\nu}F_{\mu\nu}.
\]
The relevant terms are
\[
a_4(P)\big|_{F^2}
=(4\pi)^{-2}\int_M
\operatorname{tr}_{S,F}\left(\frac1{12}F_{\mu\nu}F^{\mu\nu}
+\frac12E_F^2\right)dV.
\]
Using
\[
\operatorname{tr}_S1=4,\qquad
\operatorname{tr}_S(\gamma^{\mu\nu}\gamma^{\rho\sigma})
=4(g^{\mu\sigma}g^{\nu\rho}-g^{\mu\rho}g^{\nu\sigma}),
\]
the two contributions are \(+\tfrac13\operatorname{tr}_F F^2\) and
\(-\operatorname{tr}_F F^2\). Hence
\[
a_4(P)\big|_{F^2}
=-\frac1{24\pi^2}\int_M\operatorname{tr}_F F^2\,dV.
\]
This proves the statement.

For \(F_{\mu\nu}=F_{\mu\nu}^aT_a\), with skew-Hermitian \(T_a\), the coefficient matrix is therefore
\[
-\frac1{24\pi^2}\sum_j f(x_j)\operatorname{tr}_{H_j}(T_aT_b).
\]
It is positive semidefinite. The normalization is per full four-component spin Dirac operator, with the finite representation traced explicitly.

The three regimes are:

| Heavy mass ratio | Weight | Consequence for the kinetic term |
|---|---:|---|
| \(m_h/\Lambda\to0\) | \(f(0)\) | Full inherited finite trace |
| \(m_h/\Lambda\to c\in(0,\infty)\) | \(f(c^2)\) | Partial suppression |
| \(m_h/\Lambda\to\infty\) | \(0\) | Trace over the light sectors |

Absolute divergence \(m_h\to\infty\) does not distinguish these regimes.

---

**Part B. Statement.**

Write
\[
\ell=f(0),\qquad h=f(\mu^2).
\]
For \(N\) generations with exactly one heavy up-type quark, the coefficients on the full finite space are
\[
\boxed{
\begin{aligned}
\kappa_{\rm em}^{(N)}
&=\frac1{24\pi^2}\frac{16}{3}\big[(2N-1)\ell+h\big],\\
\kappa_s^{(N)}
&=\frac1{24\pi^2}2\big[(2N-1)\ell+h\big].
\end{aligned}}
\]
Here \(S_{\rm YM}=\int(\kappa_{\rm em}F_{\rm em}^2+
\kappa_s\sum_aG_a^2)\,dV\); there is no \(1/4\) in this definition.

Thus
\[
\boxed{
\frac{\kappa_{\rm em}^{(N)}(\mu)}{\kappa_{\rm em}^{(N)}(0)}
=
\frac{\kappa_s^{(N)}(\mu)}{\kappa_s^{(N)}(0)}
=\frac{(2N-1)f(0)+f(\mu^2)}{2Nf(0)}.
}
\]

**Hypotheses.**

Use \(Q=T_3+Y\) and the following particle states:

| Multiplet | Number of states | \(Y\) | \(T_3\) | \(Q\) |
|---|---:|---:|---:|---:|
| \((u_L,d_L)\) | \(6\) | \(1/6\) | \(+1/2,-1/2\) | \(2/3,-1/3\) |
| \(u_R\) | \(3\) | \(2/3\) | \(0\) | \(2/3\) |
| \(d_R\) | \(3\) | \(-1/3\) | \(0\) | \(-1/3\) |
| \((\nu_L,e_L)\) | \(2\) | \(-1/2\) | \(+1/2,-1/2\) | \(0,-1\) |
| \(\nu_R\) | \(1\) | \(0\) | \(0\) | \(0\) |
| \(e_R\) | \(1\) | \(-1\) | \(0\) | \(-1\) |

Charge conjugates double this to the standard \(32\)-dimensional finite space. For color, use Hermitian generators with
\[
\operatorname{tr}_{\mathbf3}(t_at_b)=\tfrac12\delta_{ab}.
\]
All three colors of the selected up-type quark have the same Dirac mass. Photon and gluon generators commute with these masses.

**Proof.**

On the particle space, both chiralities contribute
\[
\begin{array}{c|ccc}
&u&d&e\\ \hline
\operatorname{tr}Q^2&8/3&2/3&2\\
\text{color index}&1&1&0 .
\end{array}
\]
Therefore, for one generation,
\[
K_{\rm em}^{\rm particle}=\frac83(h+\ell),
\qquad
K_s^{\rm particle}=h+\ell.
\]
Charge conjugation doubles both expressions. Each additional light generation adds \(32\ell/3\) and \(4\ell\), respectively, on the full finite space. Part A now gives the stated coefficients.

In particular:

| Heavy sector | Both kinetic-coefficient ratios | \(\mu\to\infty\) |
|---|---:|---:|
| Up quark in one generation | \(\dfrac{f(0)+f(\mu^2)}{2f(0)}\) | \(1/2\) |
| Top only in three generations | \(\dfrac{5f(0)+f(\mu^2)}{6f(0)}\) | \(5/6\) |

The common suppression implies
\[
\boxed{\kappa_{\rm em}/\kappa_s=8/3}
\]
throughout this particular family. The absolute kinetic form changes, while its photon-to-gluon ratio remains unchanged.

The same charge table gives, on the particle space,
\[
K_W=3\cdot\tfrac12+\tfrac12=2,
\]
\[
K_Y=6(1/6)^2+3(2/3)^2+3(1/3)^2+2(1/2)^2+1
=\frac{10}{3},
\]
reproducing the conventions in [section 14.3](../historical/corpus/canonical_research.md).

---

**Part C. Statement.**

For broken generators, a mass-dependent “\(F^2\) coefficient” requires a prescription for separating gauge and Higgs derivative terms. I use the **integrated quadratic transverse kinetic coefficient**: expand about zero gauge field with \(D_F\) held constant, remove the gauge-field mass term, and extract the coefficient of \(q^2|a_T(q)|^2\). Since
\[
F_{\mu\nu}(q)^*F_{\mu\nu}(q)=2q^2|a_T(q)|^2,
\]
this specifies the quadratic \(F^2\) coefficient, including all Higgs contributions to it.

For a vectorial doublet with nonnegative masses \(m_1,m_2\), put
\[
x_i=m_i^2/\Lambda^2,\quad
z(u)=(1-u)x_1+ux_2,\quad b(u)=u(1-u).
\]
The normalized weight is
\[
\boxed{
w_f(x_1,x_2)=\frac32\int_0^1
\left[
(1-2b)f(z)+b(\sqrt{x_1}-\sqrt{x_2})^2f'(z)
\right]du .
}
\]
It is symmetric and satisfies \(w_f(x,x)=f(x)\).

For the heat cutoff,
\[
\boxed{
w_{\exp}(x_1,x_2)
=\frac32\int_0^1 e^{-z(u)}
\left[1-\bigl(2+(\sqrt{x_1}-\sqrt{x_2})^2\bigr)b(u)\right]du .
}
\]
This is generally more complicated than a divided difference of an antiderivative.

**Hypotheses and scope.**

Compute the local, gravity-independent coefficient in flat coordinates, with fixed \(m_i/\Lambda\) and \(q/\Lambda\to0\). The result concerns the quadratic action; longitudinal derivative terms and the full covariant Higgs-operator expansion remain distinct.

For an odd finite operator, the vectorial model can be realized as
\[
D_F=\begin{pmatrix}0&M\\M&0\end{pmatrix},
\qquad
M=\operatorname{diag}(m_1,m_2),
\qquad
T=\begin{pmatrix}t&0\\0&t\end{pmatrix}.
\]
The Standard Model instead has a left doublet and right singlets. That representation changes the answer, as calculated below.

This distinction is necessary: prescribing \(D_F^2\) alone does not prescribe \([T,D_F]\). Moreover,
\[
[\nabla_\mu,\nabla_\nu]D_F=[F_{\mu\nu},D_F],
\]
so a noncommuting curvature cannot coexist with a covariantly constant finite operator. A separate “pure curvature” coefficient obtained by discarding Higgs derivative operators would require an additional operator-basis convention.

**Proof by Duhamel expansion.**

Without the commuting assumption,
\[
\boxed{
D_A^2=D_{M,A}^2+D_F^2
+i\gamma^\mu\gamma_5[A_\mu,D_F].
}
\]
The last term is essential at fixed \(D_F/\Lambda\).

First take \(f(z)=e^{-z}\), put \(\tau=\Lambda^{-2}\), and diagonalize
\[
D_F=\operatorname{diag}(\lambda_i).
\]
Use \(A_\mu=i\,a_\mu T\), with \(T\) Hermitian. The free squared operator is
\[
P_0=-\partial^2+D_F^2.
\]
The linear vertex between internal states \(j\) and \(i\), carrying momentum \(q\), is
\[
(V_1)_{ij}
=T_{ij}\left[
(2p+q)\cdot a
+\gamma^{\mu\nu}q_\mu a_\nu
+(\lambda_i-\lambda_j)\gamma^\mu\gamma_5a_\mu
\right].
\]
The quadratic vertex has no external momentum and therefore makes no contribution to the \(q^2\) coefficient.

The second-order heat trace is
\[
\frac{\tau^2}{2}\int_0^1
\operatorname{Tr}\left(
e^{-(1-u)\tau P_0}V_1e^{-u\tau P_0}V_1
\right)du,
\]
together with the quadratic-vertex term. Completing the Gaussian square gives the factor
\[
(4\pi\tau)^{-2}
e^{-\tau[(1-u)\lambda_i^2+u\lambda_j^2+bq^2]}.
\]
For \(q\cdot a=0\), the Gaussian-averaged spin trace of the vertex product is
\[
4\left[\frac2\tau+(\lambda_i-\lambda_j)^2+q^2\right]|a|^2.
\]
Expanding to order \(q^2\), and writing \(r_i=\lambda_i/\Lambda\), yields
\[
\frac{q^2|a|^2}{8\pi^2}
\sum_{ij}|T_{ij}|^2
\int_0^1e^{-[(1-u)r_i^2+ur_j^2]}
\left[1-2b-b(r_i-r_j)^2\right]du.
\]
Comparison with \(F^2=2q^2|a|^2\) and Part A's normalization proves the heat-cutoff formula.

Integration over the Laplace measure replaces
\[
e^{-z}\mapsto f(z),\qquad
-s e^{-sz}\mapsto f'(z),
\]
giving the stated general formula. The moment assumptions justify these operations. The small-momentum expansion is uniform for mass ratios in compact sets.

For a vectorial positive-mass pair, the two relevant signed-mass branches both have
\((r_i-r_j)^2=(\sqrt{x_1}-\sqrt{x_2})^2\). At equal masses, that term vanishes and
\[
\frac32\int_0^1(1-2u(1-u))\,du=1,
\]
which recovers Part A.

The divided difference does occur as
\[
\int_0^1f(z(u))\,du
=\frac{\mathcal F(x_1)-\mathcal F(x_2)}{x_1-x_2},
\qquad \mathcal F'=f.
\]
The orbital vertices and finite-operator commutator supply the additional terms in \(w_f\).

**Standard Model doublet.**

For the left-handed weak generator,
\[
T=\begin{pmatrix}t&0\\0&0\end{pmatrix},
\qquad
[T,D_F]=
\begin{pmatrix}0&tM\\-Mt&0\end{pmatrix}.
\]
For an off-diagonal \(t\), summing these matrix elements replaces
\[
(\sqrt{x_1}-\sqrt{x_2})^2
\quad\hbox{by}\quad x_1+x_2.
\]
Thus
\[
w_L(x_1,x_2)
=\frac32\int_0^1e^{-z(u)}
[1-(2+x_1+x_2)b(u)]\,du.
\]
In particular,
\[
w_L(x,x)=e^{-x}(1-x/2).
\]
Equal masses do not make a left-only weak generator commute with \(D_F\), because its right partners are weak singlets. The conjectured diagonal identity therefore applies to the vectorial model, but not to this chiral representation.

For a heavy up quark and massless down quark, both models give
\[
\boxed{
w(x):=w_L(x,0)
=3\int_0^1u^2e^{-xu}\,du
=\frac{3[2-(x^2+2x+2)e^{-x}]}{x^3},
\qquad x=\mu^2 .
}
\]
The value at zero is defined continuously. In particular,
\[
w(x)=1-\frac34x+\frac3{10}x^2+O(x^3),
\qquad
w(x)\sim\frac6{x^3}\quad(x\to\infty).
\]
The divided-difference candidate \((1-e^{-x})/x\) already disagrees at first order.

**Weak-angle consequences.**

Use particle traces below; charge conjugation doubles the entire kinetic matrix. Let \(N=1\) or \(3\), with one heavy up-type quark, \(x=\mu^2\), and \(r=e^{-x}\). The charged and neutral transverse coefficients are
\[
\begin{aligned}
K_W&=2N-\frac32+\frac32w(x),\\
K_{33}&=2N-\frac34+\left(\frac34-\frac{3x}{8}\right)r,\\
K_{YY}&=\frac{10N}{3}-\frac{17}{12}
       +\left(\frac{17}{12}-\frac{3x}{8}\right)r,\\
K_{3Y}&=-\frac14+\left(\frac14+\frac{3x}{8}\right)r .
\end{aligned}
\]
The neutral action contains \(K_{33}F_3^2+2K_{3Y}F_3F_Y+K_{YY}F_Y^2\).

For completeness, a Dirac species of mass ratio squared \(x\), with neutral charges \(q_L^a,q_R^a\), contributes
\[
e^{-x}\left[
q_L^aq_L^b+q_R^aq_R^b
-\frac{x}{2}(q_L^a-q_R^a)(q_L^b-q_R^b)
\right].
\]
Applying this formula to the three up colors proves the neutral entries above. The commutator term is responsible for the terms proportional to \(xr\).

At \(x=0\),
\[
K_W=K_{33}=2N,\qquad K_{YY}=10N/3,\qquad K_{3Y}=0,
\]
so the usual matching angle is \(5/8\).

For \(x>0\), generally \(K_W\ne K_{33}\) and \(K_{3Y}\ne0\). Consequently, the usual electroweak relations no longer define one common weak angle. Two precise continuations are:

1. **Continue the charged-\(W\)/hypercharge matching prescription.** Define
   \[
   \boxed{
   \cos^2\theta_{\rm match}(x)
   :=\frac{K_{YY}}{K_W+K_{YY}}
   =\frac{80N-34+(34-9x)e^{-x}}
   {128N-70+(34-9x)e^{-x}+36w(x)} .
   }
   \]
   Then
   \[
   \cos^2\theta_{\rm match}(0)=\frac58,\qquad
   \cos^2\theta_{\rm match}(\infty)=
   \begin{cases}
   23/29,&N=1,\\
   103/157,&N=3.
   \end{cases}
   \]
   This prescription alone does not diagonalize the neutral kinetic terms.

2. **Define the angle from the neutral current.** When the neutral mass term has the Standard Model direction \((W_3-B)^2\), the photon direction is \((1,1)\). Its kinetic-orthogonal massive direction is proportional to
   \[
   (K_{YY}+K_{3Y},\,-K_{33}-K_{3Y}).
   \]
   Writing its current as \(T_3-\sin^2\theta_{\rm NC}Q\) gives
   \[
   \cos^2\theta_{\rm NC}
   =\frac{K_{YY}+K_{3Y}}{K_{33}+2K_{3Y}+K_{YY}}.
   \]
   Here
   \[
   K_{33}+K_{3Y}=2N-1+r,\qquad
   K_{YY}+K_{3Y}=\frac53(2N-1+r),
   \]
   and therefore
   \[
   \boxed{\cos^2\theta_{\rm NC}(x)=5/8.}
   \]
   This equality is special to the chosen heavy-up family. It does not restore a common \(SU(2)\) kinetic coefficient or the usual relations among charged and neutral couplings.

As a consistency check,
\[
K_{33}+2K_{3Y}+K_{YY}
=\frac83(2N-1+e^{-x}),
\]
exactly reproducing Part B's photon coefficient on the particle space.

---

**Verdict on corpus claim.**

[Item 1](../historical/transcripts/Review_Next_Steps_Sol.txt) states: “The centralizer and compressed resolvent do not determine the surviving gauge kinetic terms.” The calculation confirms that qualification.

- **The full inherited kinetic form survives** the joint limit \(m_h\to\infty\), \(\Lambda\to\infty\), \(m_h/\Lambda\to0\).
- **Finite nonzero ratios produce threshold weights.** When \(m_h/\Lambda\to\infty\), the residual kinetic form is the light-sector trace. For the specified up-quark removals, photon and gluon coefficients retain their ratio but acquire the common reductions \(1/2\) or \(5/6\).
- **The corpus's \(5/8\) is a valid electroweak matching condition** when the full module is light relative to the matching cutoff, or when that condition is imposed before taking the heavy limit. The broken action does not retain one universal weak angle. Its neutral-current angle happens to remain \(5/8\) in this family, whereas the continued charged-\(W\)/hypercharge matching ratio changes as above. At the strict \(SU(3)\times U(1)_{\rm em}\) endpoint, a weak angle requires reference to such an earlier matching prescription.
---

## Independent checks (Claude, 2 Nov 2026)

- Part A: (1/12) tr_S 1 + (1/2)(1/4) tr_S(gamma^{mu nu} gamma^{rho sigma}) F F gives (1/3 - 1) tr F^2 = -(2/3) tr F^2. Dividing by 16 pi^2 gives -1/(24 pi^2), the standard spectral-action Yang-Mills coefficient.
- Part B: the per-generation traces tr Q^2 = 8/3 (u), 2/3 (d), 2 (e) and color index 1, 1, 0 were rechecked by hand.
- Part C: w_L(x, 0) = 3 int_0^1 u^2 e^{-xu} du = 3[2 - (x^2+2x+2) e^{-x}]/x^3 agrees by quadrature to 1e-10 at x = 0, 0.3, 1, 4, 12. The limits cos^2 theta_match(infinity) = (80N-34)/(128N-70) give 23/29 (N=1) and 103/157 (N=3). The identity (K_YY + K_3Y) = (5/3)(K_33 + K_3Y), hence cos^2 theta_NC = 5/8 for every x, was verified algebraically.
