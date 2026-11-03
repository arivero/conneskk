# T5b: vector masses in the spectral action at fixed cutoff

Prompt: [prompts/18](prompts/18_heavy_limit_near_cutoff.md) (STRATEGY T5b). Attempted by gpt-6-astra (codex 0.164, xhigh, 3 Nov 2026), working alone. Checked by Claude Opus 5.5 with Python (numpy, scipy), by computations independent of the kernel derived here: a direct heat trace with constant a reproduces equation (2) for five choices of (m_1, m_2), to about 0.03%; a direct heat trace on Fourier modes with a_2(x_1) = a cos(q x_1), including the F_{12} and [T, V] vertices, reproduces the kernel (37) at three values of (m, q), to 0.1-0.3%, the size of the discretization error. The closed forms (16)-(19), the bound (28), the limits (27), the neutral matrix (30) recomputed from Standard Model charges, and the identities behind (31) also check. The largest value of the Taylor mass is M_W^2 = 0.275 Lambda^2, at m_t^2 = 2.02 Lambda^2. Refereed by Terra 6.1 (gpt-6.1-terra, effort max, 3 Nov 2026; [report](../reviews/2026-11-03_terra_check_18_16b.md)): all ten numbered results are correct, with small amendments incorporated below. The referee added Propositions 11 to 14 and Remark 15, which widen the scope in both directions; the ratio in Proposition 14 was added by Claude.

**Scope.** Within the three-generation, zero-Majorana, top-only family at fixed cutoff, these results refute an infinitely heavy W, Z, t limit for the stated quadratic mass definitions. They do not rule out other finite data (Proposition 14), a different action or constraint, a joint limit with Lambda -> infinity, or a quantum effective theory. They do not show unbroken SU(2) x U(1) on the light space (Remark 15).

For the heat cutoff, on \(\mathbb R^4\), we obtain the exact quadratic vector form without expanding in \(m/\Lambda\). In the three-generation Standard Model finite representation with only the top Dirac mass nonzero, both the mass defined by the \(q^0/q^2\) Taylor ratio and the unique positive timelike pole mass satisfy \(M_W\sim\Lambda^2/m_t\) as \(m_t/\Lambda\to\infty\) at fixed \(\Lambda\). The broken vectors consequently do not decouple by becoming heavy, although the heavy fermion contribution disappears from the gauge coefficients. These statements concern the classical bosonic quadratic action about a prescribed constant background; moreover, the positive Laplace class considered below does not itself select a finite nonzero stationary background when radial variations of that background are allowed.

**1. Theorem (exact quadratic kernel).**

Let
\[
D_A=-i\gamma^\mu(\partial_\mu+iA_\mu)+\gamma_5V,
\qquad V=V_0=V_0^\dagger,
\]
on \(\mathbb R^4\), with Hermitian Euclidean gamma matrices,
\(\{\gamma^\mu,\gamma^\nu\}=2\delta^{\mu\nu}\), \(\gamma_5^2=1\), and four spin components. Let the finite trace be the literal trace on \(H_F\), including every stated multiplicity, without a subsequent projection; this agrees with the bosonic trace of Chamseddine-Connes-Marcolli, which counts particles, antiparticles and four spin components. Take \(A\) smooth and compactly supported.

We use the vacuum-subtracted action, or equivalently its quadratic variation, since the constant-background trace on \(\mathbb R^4\) has infinite volume. Write
\[
A_\mu(q)=a_\mu(q)T,\qquad T=T^\dagger,\qquad q^\mu a_\mu(q)=0,
\qquad
\int_q=\int\frac{d^4q}{(2\pi)^4}.
\]
Diagonalize \(V_0\):
\[
V_0e_i=m_i e_i,\qquad m_i\in\mathbb R.
\]
The signed eigenvalues are needed; their squares alone do not determine the answer.

For \(S_t=\operatorname{Tr}e^{-tD_A^2}\), define
\[
b(u)=u(1-u),\quad
d_{ij}=m_i-m_j,
\]
\[
I_t(a,b;q^2)=
\int_0^1e^{-t[(1-u)a+ub+u(1-u)q^2]}\,du.
\]
Then
\[
S_t^{(2)}=\int_q |a_T(q)|^2\,C_{t,T}(q^2),
\]
where
\[
\boxed{
C_{t,T}(q^2)=\frac1{8\pi^2}
\sum_{ij}|T_{ij}|^2
\left[
\left(\frac2t+d_{ij}^2+q^2\right)
I_t(m_i^2,m_j^2;q^2)
-\frac{e^{-tm_i^2}+e^{-tm_j^2}}t
\right].
}
\tag{1}
\]
For several generators, replace \(|T_{ij}|^2\) by
\(\operatorname{Re}((T_a)_{ij}(T_b)_{ji})\).

In particular, writing \(C(q^2)=C_0+q^2C_1+O(q^4)\), we obtain
\[
\boxed{
C_{0,t}=\frac1{8\pi^2}\sum_{ij}|T_{ij}|^2
\left[
\left(\frac2t+d_{ij}^2\right)I_t(m_i^2,m_j^2;0)
-\frac{e^{-tm_i^2}+e^{-tm_j^2}}t
\right],
}
\tag{2}
\]
and
\[
\boxed{
C_{1,t}=\frac1{8\pi^2}\sum_{ij}|T_{ij}|^2
\int_0^1 e^{-t[(1-u)m_i^2+um_j^2]}
\bigl[1-2b(u)-t d_{ij}^2b(u)\bigr]\,du.
}
\tag{3}
\]

These formulas also apply, after integration over \(t=s/\Lambda^2\), to
\[
f(z)=\int_{(0,\infty)}e^{-sz}\,d\nu(s),
\quad
0<f(0)=\nu((0,\infty))<\infty,
\quad
\int(s^{-2}+s^2)\,d\nu(s)<\infty,
\tag{4}
\]
where \(\nu\) is positive. These hypotheses suffice for the Euclidean action density and the Taylor coefficients used below. They do not, by themselves, guarantee analytic continuation to every negative \(q^2\).

*Proof.* With \(\nabla_\mu=\partial_\mu+iA_\mu\),
\[
D_A^2=-\nabla^2+V_0^2
-\frac i2\gamma^{\mu\nu}F_{\mu\nu}
+\gamma^\mu\gamma_5[A_\mu,V_0].
\]
Let \(P_0=-\partial^2+V_0^2\) and write
\(D_A^2=P_0+P_1+P_2\), according to degree in \(A\). Duhamel expansion and cyclicity give
\[
S_t^{(2)}
=-t\operatorname{Tr}(e^{-tP_0}P_2)
+\frac{t^2}{2}\int_0^1
\operatorname{Tr}
\left(e^{-(1-u)tP_0}P_1e^{-utP_0}P_1\right)du.
\tag{5}
\]
The linear vertex from \(j,p\) to \(i,p+q\) is
\[
T_{ij}\left[
(2p+q)\cdot a
+\gamma^{\mu\nu}q_\mu a_\nu
+(m_j-m_i)\gamma^\mu\gamma_5a_\mu
\right].
\]
Completing the momentum square produces
\[
(4\pi t)^{-2}
e^{-t[(1-u)m_i^2+um_j^2+b(u)q^2]}.
\]
For transverse \(a\), the averaged spin trace of the vertex product is
\[
4\left(\frac2t+d_{ij}^2+q^2\right)|a|^2.
\]
The \(P_2\) term contributes
\[
-\frac1{4\pi^2t}\sum_{ij}|T_{ij}|^2e^{-tm_i^2}|a|^2.
\]
Symmetrizing in \(i,j\) proves (1). Differentiation proves (2)–(3).

The divided-difference structure is explicit:
\[
I_t(a,b;0)
=\frac{e^{-ta}-e^{-tb}}{t(b-a)},
\qquad I_t(a,a;0)=e^{-ta},
\tag{6}
\]
and
\[
\int_0^1u(1-u)e^{-t[(1-u)a+ub]}\,du
=\frac1{t^2}\partial_a\partial_b I_t(a,b;0).
\tag{7}
\]
Thus (2) uses a first divided difference, while (3) also uses its mixed derivative. The full momentum dependence follows from the convergent series
\[
I_t(a,b;q^2)
=\sum_{n=0}^\infty
\frac{(-q^2/t)^n}{n!}
\partial_a^n\partial_b^n I_t(a,b;0).
\tag{8}
\]
Repeated-node values are obtained continuously.

For completeness, the mass coefficient for (4) can be written entirely in dimensionless variables. Put
\[
r_i=m_i/\Lambda,\quad x_i=r_i^2,\quad
z(u)=(1-u)x_i+ux_j,\quad
\Phi_1(z)=\int s^{-1}e^{-sz}\,d\nu(s).
\]
The bracket replacing that in (2) is
\[
\Lambda^2\left[
2\int_0^1\Phi_1(z(u))\,du
+(r_i-r_j)^2\int_0^1f(z(u))\,du
-\Phi_1(x_i)-\Phi_1(x_j)
\right].
\tag{9}
\]
The corresponding bracket in (3) is
\[
\int_0^1
\left[(1-2b)f(z)+(r_i-r_j)^2b f'(z)\right]du.
\tag{10}
\]
Each unweighted integral is a divided difference of an antiderivative. The moment assumptions justify the integrations and differentiations. \(\square\)

On a finite flat torus, (5) remains exact, but the Gaussian momentum integral must be replaced by the spin-structure-dependent lattice sum. Explicitly, for a transverse polarization \(a\), its two-vertex contribution per unit volume is
\[
\frac{2t^2}{\operatorname{Vol}}
\sum_{ij,p}|T_{ij}|^2\int_0^1
e^{-t[(1-u)(p^2+m_i^2)+u((p+q)^2+m_j^2)]}
\left(
|(2p+q)\cdot a|^2+(d_{ij}^2+q^2)|a|^2
\right)du,
\]
and the quadratic-vertex contribution is
\[
-\frac{4t}{\operatorname{Vol}}
\sum_{ij,p}|T_{ij}|^2e^{-t(p^2+m_i^2)}|a|^2.
\]
Consequently, the continuum formulas below are statements on \(\mathbb R^4\), or in the infinite-volume limit. A finite torus can have additional holonomy dependence, including for constant commuting connections.

**2. Lemma (gauge invariance and the Goldstone direction).**

Let scalar fluctuations include the gauge orbit of \(V_0\). Then the nonzero vector coefficient \(C_0\) in (2) is compatible with gauge invariance.

For one generator, parameterize the orbit by
\[
V(x)=e^{i\pi(x)T}V_0e^{-i\pi(x)T}.
\]
With our conventions,
\[
a_\mu\longmapsto a_\mu-\partial_\mu\alpha,
\qquad
\pi\longmapsto\pi+\alpha.
\]
The invariant combination is
\[
B_\mu=a_\mu+\partial_\mu\pi.
\tag{11}
\]

*Proof.* Gauge covariance gives
\[
D_{A^U,V^U}=UD_{A,V}U^{-1}.
\]
Applying \(U=e^{-i\pi T}\) transforms \(V\) to \(V_0\) and \(a\) to \(B\). Hence
\[
S[a,e^{i\pi T}V_0e^{-i\pi T}]=S[B,V_0].
\tag{12}
\]
This establishes the Goldstone completion directly, without a derivative expansion.

For comparison, the longitudinal vector kernel is obtained from (1) by replacing the \(q^2\) in its prefactor by \((1-2u)^2q^2\) inside the integral. If \([T,V_0]=0\), its integral vanishes by
\[
\int_0^1
\bigl[2+tq^2(1-2u)^2\bigr]e^{-tq^2u(1-u)}\,du=2.
\]
For a broken generator the longitudinal kernel need not vanish; it belongs to the invariant combination (11).

If \(V_0\) is not stationary, a Cartesian scalar Hessian alone need not annihilate the linear gauge-orbit tangent. The quadratic term in
\(e^{i\pi T}V_0e^{-i\pi T}\), contracted with the scalar tadpole, must also be retained. Equation (12) includes that term. Transverse vectors do not mix quadratically with scalar fluctuations on this translation-invariant background. \(\square\)

**3. Corollary (the asymptotic normalization).**

Let all finite eigenvalues be small relative to \(\Lambda\), let \(f\) satisfy (4), and let \(Q\) below be positive definite on the chosen generator space (otherwise pass to the quotient by its null space). Define
\[
Q_{ab}=\operatorname{Re}\operatorname{Tr}(T_aT_b),
\qquad
K_{ab}=\operatorname{Re}\operatorname{Tr}
([T_a,V_0]^\dagger[T_b,V_0]).
\]
At leading order,
\[
C_0=\frac{f(0)}{8\pi^2}K,
\qquad
C_1=\frac{f(0)}{12\pi^2}Q,
\]
and therefore
\[
\boxed{
\mathcal M_{\mathrm{Taylor}}^2
=\frac32Q^{-1/2}KQ^{-1/2}.
}
\tag{13}
\]
This reproduces [Proposition 13.5](13_gauge_sector_truncation.md).

For the full three-generation Standard Model representation,
\[
Q_{11}=12,\qquad
K_{11}=\sum_{\rm generations}
(m_\nu^2+m_e^2+3m_u^2+3m_d^2),
\]
so
\[
\boxed{
8M_W^2=
\sum_{\rm generations}
(m_\nu^2+m_e^2+3m_u^2+3m_d^2).
}
\tag{14}
\]

*Proof.* In (2), the orbital expression
\[
\frac2t I_t(a,b;0)-\frac{e^{-ta}+e^{-tb}}t
\]
starts at order \(t(a-b)^2\). The leading term is consequently \(d_{ij}^2\). In (3), the leading integral is
\(\int_0^1(1-2u(1-u))du=2/3\), proving (13).

For \(T_1=\sigma_1/2\) on each left doublet, one generation of particles contributes \(2\) to \(Q_{11}\). Charge conjugates and three generations give \(12\). A doublet with Dirac masses \(m_u,m_d\) contributes
\(\frac12(m_u^2+m_d^2)\) to the particle commutator trace, before color multiplicity. This proves (14).

Equivalently, the gauge coefficient is
\[
\frac{f(0)g_2^2}{2\pi^2}=\frac14.
\]
For comparison with CCM’s \(\operatorname{Tr}F(D/\Lambda)\), take \(F(v)=f(v^2)\); then \(F(0)=f(0)\). The normalization and mass constraint are precisely equations (4.10) and (4.16), with the latter stated in Lemma 4.6 of the checked preprint. CCM describes the relation as “valid at unification scale.” [Chamseddine–Connes–Marcolli, pp. 37–39](https://arxiv.org/pdf/hep-th/0610241#page=37). \(\square\)

The leading bound \(M^2\le6\|V_0\|^2\) in [Lemma 14](14_gauge_covariant_reduction.md) follows from (13) and \(K\le4\|V_0\|^2Q\). Formula (13), rather than an exact finite-cutoff identity, is its applicable approximation.

**4. Proposition (the exact charged-vector Taylor mass).**

Let the finite data be the full three-generation Standard Model representation, including charge conjugates. Let the Majorana matrix and every Dirac mass except one up-type color triplet be zero. Write
\[
m=\mu\Lambda,\qquad x=\mu^2,\qquad r=e^{-x}.
\]
Let \(f(z)=e^{-z}\). Define
\[
H(y)=\int_0^1e^{-yu(1-u)}\,du,
\]
\[
g(y)=(2+y)H(y)-2,
\]
\[
h_x(y)=(2+x+y)
\int_0^1e^{-xu-yu(1-u)}\,du-1-e^{-x}.
\tag{15}
\]
Then the full charged-vector kernel is
\[
\boxed{
C_W(q^2)=\frac{\Lambda^2}{4\pi^2}
\left[\frac92g(y)+\frac32h_x(y)\right],
\qquad y=q^2/\Lambda^2.
}
\tag{16}
\]

Define
\[
A(x)=h_x(0)=\frac{2[1-(1+x)e^{-x}]}x,
\]
\[
w(x)=3\int_0^1u^2e^{-xu}\,du
=\frac{3[2-(x^2+2x+2)e^{-x}]}{x^3}.
\tag{17}
\]
Continuous values are understood at \(x=0\). The particle-trace kinetic coefficient is
\[
K_W(x)=\frac92+\frac32w(x)>0.
\]
The Taylor mass, defined by \(M_{W,\mathrm{Taylor}}^2=C_W(0)/C_W'(0)\), is
\[
\boxed{
\frac{M_{W,\mathrm{Taylor}}^2}{\Lambda^2}
=\frac{9A(x)}{4K_W(x)}
=\frac{3[1-(1+x)e^{-x}]}{x[3+w(x)]}.
}
\tag{18}
\]
Its limiting behavior is
\[
\frac{M_{W,\mathrm{Taylor}}^2}{\Lambda^2}
=\frac38x-\frac{23}{128}x^2+O(x^3),
\qquad
\frac{M_{W,\mathrm{Taylor}}^2}{\Lambda^2}\sim\frac1x
\quad(x\to\infty).
\tag{19}
\]
Consequently,
\[
\frac{m}{M_{W,\mathrm{Taylor}}}\longrightarrow\sqrt{\frac83}
\quad(\mu\to0),
\qquad
\frac{m}{M_{W,\mathrm{Taylor}}}\sim\mu^2
\quad(\mu\to\infty).
\tag{20}
\]

*Proof.* On the particle space, \(Q_{11}=6\). The selected quark doublet contributes \(3/2\), while the remaining doublets contribute \(9/2\). Diagonalizing the massive left-right block produces eigenvalues \(+m,-m\). The charged generator connects these to the massless down states; every such pair has \(d_{ij}^2=m^2\). Formula (1) therefore gives \(h_x\) for the selected doublet and \(g\) for the remaining doublets. Charge conjugation supplies the factor two in (16).

Integration by parts gives
\[
h_x(y)=
2\int_0^1u\,[x+2y(1-u)]e^{-xu-yu(1-u)}\,du,
\tag{21}
\]
and
\[
\boxed{
h_x'(y)=
2\int_0^1u^2[1-y(1-u)]
e^{-xu-yu(1-u)}\,du.
}
\tag{22}
\]
The boundary term proving (22) is
\(\partial_u[u(1-u)e^{-xu-yu(1-u)}]\). Thus
\[
h_x'(0)=\frac23w(x),\qquad g'(0)=\frac23.
\]
This proves (18). Expanding the elementary expressions at zero and taking their large-\(x\) limits proves (19)–(20). \(\square\)

The same Taylor result extends to every \(f\) in (4). Put
\[
\ell=f(0),\qquad
w_f(x)=\int w(sx)\,d\nu(s),\qquad
A_f(x)=\int\frac{A(sx)}s\,d\nu(s).
\]
Then
\[
\boxed{
\frac{M_{W,\mathrm{Taylor}}^2}{\Lambda^2}
=\frac{9A_f(x)}
{4\left(\frac92\ell+\frac32w_f(x)\right)}.
}
\tag{23}
\]
All denominators are positive, and dominated convergence gives
\[
M_{W,\mathrm{Taylor}}^2\sim\frac38m^2
\quad(x\to0),
\qquad
\boxed{
\frac{M_{W,\mathrm{Taylor}}^2}{\Lambda^2}
\sim
\frac{\int s^{-2}\,d\nu(s)}{\ell x}
\quad(x\to\infty).
}
\tag{24}
\]
Indeed, \(A(z)/z\to1\), \(w(z)\to1\) at zero, while
\(zA(z)\to2\), \(w(z)\to0\) at infinity.

If the other Dirac masses are merely small and nonzero, the answer depends on those additional parameters and is given by (1). In particular, the vanishing limit in (19) assumes they are zero: masses of surviving light doublets can leave a residual vector mass.

**5. Theorem (the charged-vector pole).**

Under the heat-cutoff hypotheses of Proposition 4, define a timelike pole by analytic continuation of the quadratic inverse propagator:
\[
C_W(-M_{W,\mathrm{pole}}^2)=0.
\tag{25}
\]
For every \(x>0\), this equation has exactly one solution with
\(M_{W,\mathrm{pole}}^2>0\). It is simple and has positive residue in the convention that the Euclidean propagator near the pole is a positive multiple of
\((q^2+M_{W,\mathrm{pole}}^2)^{-1}\).

Let \(z(x)=M_{W,\mathrm{pole}}^2/\Lambda^2\). Its exact specification is the unique positive root
\[
\boxed{
\frac92g(-z)+\frac32h_x(-z)=0.
}
\tag{26}
\]
Furthermore,
\[
z(x)\sim\frac38x\quad(x\to0),
\qquad
z(x)\sim\frac1x\quad(x\to\infty),
\tag{27}
\]
and both mass definitions obey
\[
\boxed{
0<M_{W,\mathrm{Taylor}}^2,\ M_{W,\mathrm{pole}}^2
\le\frac{\Lambda^2}{e}.
}
\tag{28}
\]

*Proof.* Let
\[
F_x(y)=\frac92g(y)+\frac32h_x(y).
\]
Equation (22) implies \(h_x'(y)>0\) for \(y\le0\), and also
\(g'(y)>0\), since \(g=h_0\). Hence \(F_x\) is strictly increasing on that half-axis. We have
\[
F_x(0)=\frac32A(x)>0.
\]
As \(y\to-\infty\), the prefactors in (15) become negative and both integrals grow exponentially, so \(F_x(y)\to-\infty\). This proves existence, uniqueness, simplicity, and the residue sign.

For \(y\le0\), equation (22) gives \(g'(y)\ge2/3\), and therefore
\[
F_x'(y)\ge3.
\]
The mean-value theorem yields
\[
z(x)\le\frac12A(x).
\]
The Taylor denominator gives the same bound for
\(M_{W,\mathrm{Taylor}}^2/\Lambda^2\). Finally,
\[
A(x)=2\int_0^1xu\,e^{-xu}\,du\le\frac2e,
\]
proving (28).

As \(x\to0\), the bound implies \(z(x)\to0\), and
\(F_x'(y)\to4\) near the root. As \(x\to\infty\),
\(z(x)\to0\), \(h_x'(y)\to0\) near the root, and
\(F_x'(y)\to3\). Together with
\(F_x(0)\sim3x/2\) and \(F_x(0)\sim3/x\), respectively, these prove (27). \(\square\)

The pole mass governs the linearized dispersion relation of this analytically continued quadratic action. The Taylor mass governs its two-derivative truncation; they need not coincide near the cutoff. We assert no closed-form inversion of (26), no classification of complex poles, and no Lorentzian unitarity theorem.

The pole proof also extends to positive measures supported in a compact subset of \((0,\infty)\), using
\[
F_{f,x}(y)=\int\frac1s
\left[\frac92g(sy)+\frac32h_{sx}(sy)\right]d\nu(s).
\]
It gives the analogues of (24) for the pole mass. For the larger class (4), only the Euclidean and Taylor conclusions have been established here; its moment assumptions alone do not justify that continuation.

**6. Proposition (unbroken coefficients, neutral vectors, and weak angles).**

Retain the heat-cutoff Standard Model family of Proposition 4. Normalize color generators by
\(\operatorname{tr}_{\mathbf3}t_at_b=\frac12\delta_{ab}\), and use \(Q=T_3+Y\). Define the full-trace coefficients by
\[
S^{(2)}_{\rm unbroken}
=\int\left(\kappa_{\rm em}F_{\rm em}^2+
\kappa_s\sum_aG_a^2\right).
\]
Then
\[
\boxed{
\kappa_{\rm em}=\frac1{24\pi^2}\frac{16}{3}(5+r),
\qquad
\kappa_s=\frac1{24\pi^2}2(5+r),
\qquad
\frac{\kappa_{\rm em}}{\kappa_s}=\frac83.
}
\tag{29}
\]
Both coefficients approach \(5/6\) of their all-massless values.

Let \(K\) denote the particle-trace neutral \(q^2\) coefficient in coordinates \((A_3,A_Y)\). Then
\[
\boxed{
\begin{aligned}
K_{33}&=\frac{21}{4}+\left(\frac34-\frac{3x}{8}\right)r,\\
K_{YY}&=\frac{103}{12}+\left(\frac{17}{12}-\frac{3x}{8}\right)r,\\
K_{3Y}&=-\frac14+\left(\frac14+\frac{3x}{8}\right)r .
\end{aligned}}
\tag{30}
\]
The matrix \(K\), the charged coefficient \(K_W\), and the unbroken coefficients are positive for every \(x\ge0\).

Define the neutral-current angle from the current of the massive direction after diagonalizing the two-derivative neutral kinetic form:
\[
J_Z\ \propto\ T_3-\sin^2\theta_{\rm NC}\,Q.
\]
Then
\[
\boxed{
\cos^2\theta_{\rm NC}
=\frac{K_{YY}+K_{3Y}}
{K_{33}+2K_{3Y}+K_{YY}}
=\frac58.
}
\tag{31}
\]
A different continuation, namely
\[
\cos^2\theta_{\rm match}
:=\frac{K_{YY}}{K_W+K_{YY}},
\]
satisfies
\[
\boxed{
\cos^2\theta_{\rm match}(0)=\frac58,
\qquad
\cos^2\theta_{\rm match}(\infty)=\frac{103}{157}.
}
\tag{32}
\]
Thus these definitions cease to describe one common electroweak angle.

*Proof.* Photon and color generators commute with \(V_0\). Their coefficients therefore follow from (3) with \(d_{ij}=0\) on each invariant mass block. The charge traces give (29).

A Dirac species of mass \(m\), with neutral charges \(q_L^a,q_R^a\), contributes to \(K\)
\[
e^{-x}\left[
q_L^aq_L^b+q_R^aq_R^b
-\frac x2(q_L^a-q_R^a)(q_L^b-q_R^b)
\right].
\tag{33}
\]
Applying (33) to the three top colors, and retaining all other states, proves (30).

Write
\[
v=\binom1{-1},\quad
B_\infty=
\begin{pmatrix}
21/4&-1/4\\
-1/4&103/12
\end{pmatrix},
\quad
U=
\begin{pmatrix}
3/4&1/4\\
1/4&17/12
\end{pmatrix}.
\]
Then
\[
K=B_\infty+rU-\frac{3xr}{8}vv^T.
\]
We have \(B_\infty\ge5I\), \(U\ge0\), and \(xr\le1/e\). Hence
\[
K\ge\left(5-\frac3{4e}\right)I>0.
\]
Positivity of \(K_W\) follows from (17).

The neutral mass direction is \(v\), while the photon direction is \((1,1)\). The kinetic-orthogonal massive field is proportional to \(K^{-1}v\), giving the first expression in (31). Directly,
\[
K_{33}+K_{3Y}=5+r,\qquad
K_{YY}+K_{3Y}=\frac53(5+r),
\]
which proves (31). Taking limits proves (32). \(\square\)

The neutral mass also tends to zero. More precisely,
\[
\boxed{
\frac{M_{Z,\mathrm{Taylor}}^2}{\Lambda^2}
=\frac94xr\,v^TK^{-1}v
\sim\frac23xe^{-x}
\quad(x\to\infty).
}
\tag{34}
\]
For \(x>0\) there is likewise one positive massive neutral pole, besides the photon pole. To prove this, put \(B=B_\infty+rU\). The exact neutral kernel, apart from the common factor \(\Lambda^2/(4\pi^2)\), is
\[
B\,g(y)+\frac32xr\,H(y)vv^T.
\tag{35}
\]
After congruence by \(B^{-1/2}\), its massive eigenvalue is
\[
g(y)+\beta H(y),\qquad
\beta=\frac32xr\,v^TB^{-1}v>0.
\]
Its timelike root obeys
\[
z-2+\frac2{H(-z)}=\beta.
\tag{36}
\]
The left side increases from zero to infinity, because
\[
\frac d{dz}\left(z-2+\frac2{H(-z)}\right)
=1-\frac{2\,\mathbb E_z[b]}{H(-z)}
\ge\frac12,
\]
where \(\mathbb E_z\) uses density proportional to \(e^{zb(u)}\).
The pole is therefore unique and has positive residue. Since
\(v^TB_\infty^{-1}v=8/27\),
\[
\frac{M_{Z,\mathrm{pole}}^2}{\Lambda^2}
\sim\frac23xe^{-x}.
\]
In particular, \(M_W^2/M_Z^2\) does not continue to equal \(5/8\).

For every \(f\) in (4), equations (29)–(33) extend by replacing \(1\) by \(\ell=f(0)\), \(r\) by \(f(x)\), and \(xr\) by \(-xf'(x)\). Positivity follows by averaging the positive heat-cutoff matrices. The ratio \(8/3\), the neutral-current value \(5/8\), and the matching limit \(103/157\) persist. At the endpoint both neutral masses vanish, so the distinguished massive neutral direction—and hence its angle—requires continuation from finite \(x\).

**7. Counterexample (positive cutoff does not ensure positive broken kinetic coefficients).**

Let \(H_F=\mathbb C^2\),
\[
V_0=m\sigma_3,\qquad T=\sigma_1,\qquad x=m^2/\Lambda^2,
\]
with the same spacetime and trace conventions. For the heat cutoff,
\[
C_T(q^2)=
\frac{\operatorname{Tr}(T^2)\Lambda^2}{8\pi^2}e^{-x}
\left[(2+4x+y)H(y)-2\right].
\tag{37}
\]
Its \(q^2\) Taylor coefficient is proportional to
\[
e^{-x}(1-x).
\]
It vanishes at \(x=1\) and becomes negative for \(x>1\). Thus the two-derivative truncation has a wrong-sign vector kinetic term in this example.

Nevertheless, the full quadratic form has a unique positive real timelike pole with positive residue, satisfying
\[
\boxed{
4x<\frac{M_{\mathrm{pole}}^2}{\Lambda^2}<4x+2.
}
\tag{38}
\]
Consequently \(M_{\mathrm{pole}}\sim2m\) diverges at fixed cutoff.

*Proof.* The generator connects the eigenvalues \(m,-m\), so
\(d_{ij}^2=4m^2\) while both squared eigenvalues equal \(m^2\). Substitution in (1) proves (37). Its Taylor ratio is
\[
M_{\mathrm{Taylor}}^2=\frac{6m^2}{1-x},
\]
where this is a positive mass only for \(x<1\).

The pole equation is (36) with \(\beta=4x\). The monotonicity proof there gives uniqueness and the residue sign. Evaluating (37) at \(y=-4x\) gives \(2H(-4x)-2>0\), whereas at \(y=-4x-2\) it gives \(-2\); this proves (38).

For general \(f\) satisfying (4), the Taylor kinetic coefficient in this example is proportional to
\[
f(x)+xf'(x)=\frac d{dx}[xf(x)].
\tag{39}
\]
It must be negative somewhere: \(xf(x)>0\) for \(x>0\), but \(xf(x)\to0\) at infinity under (4). A nonnegative derivative everywhere would contradict these facts. \(\square\)

This counterexample concerns arbitrary finite data, not the top-only Standard Model family. It also distinguishes a wrong-sign **Taylor truncation** from a negative-residue pole of the **full** form factor. We have not proved absence of complex-pole or other nonlocal problems in either model.

**8. Counterexample (heavy fermions do not dynamically select the centralizer).**

Let the data be those of Proposition 4, and let
\[
\mathfrak g_{V_0}=\{X\in\mathfrak g_{\rm SM}:[X,V_0]=0\}.
\]
For nonzero top mass this is the represented unbroken gauge algebra
\(\mathfrak{su}(3)\oplus\mathfrak u(1)_{\rm em}\).
The limit \(x\to\infty\) at fixed \(\Lambda\) does **not** produce a theory containing only these vector directions by quadratic mass decoupling.

*Proof.* For fixed \(y\), equation (21) implies
\[
h_x(y)\longrightarrow0.
\]
Consequently
\[
\boxed{
C_W(q^2)\longrightarrow
\frac{\Lambda^2}{4\pi^2}\frac92g(q^2/\Lambda^2).
}
\tag{40}
\]
For positive \(y\),
\[
g(y)=4y\int_0^1u(1-u)e^{-yu(1-u)}\,du>0.
\]
Thus a charged generator outside \(\mathfrak g_{V_0}\) retains a finite nonzero quadratic kinetic form and a nonvanishing propagator at every fixed positive momentum. Its mass approaches zero. Equation (35) similarly leaves the positive matrix \(B_\infty g(y)\), including the additional neutral direction. These facts contradict decoupling of the broken vectors through diverging masses or vanishing propagators. \(\square\)

A narrower decoupling statement is true. If we **restrict the connection from the outset** to the centralizer, the finite mass blocks are invariant and the heat trace factorizes. On the heavy block its contribution carries \(e^{-sm^2/\Lambda^2}\), which tends to zero. The restricted action therefore converges to the light-block spectral action. This proves decoupling of a finite fermion block under that restriction; it does not prove dynamical elimination of the other gauge fields.

The amendment to [Lemma 03 Part C](03_mass_weighted_kinetic_terms.md) is therefore:

- Its transverse kinetic weights, including \(w_L(x,0)=w(x)\), and its two weak-angle formulas are correct under their stated conventions.
- They must be accompanied by the mass coefficient (2), including the quadratic-vertex subtraction.
- A centralizer-only endpoint does not follow from those weights. In the present exact quadratic family, the broken-vector masses vanish while their remaining kinetic coefficients are positive.

**9. No-go theorem (finite radial vacuum for the positive Laplace class).**

Let \(f\) satisfy (4), and suppose the allowed scalar configurations include
\[
V=cV_*,\qquad c>0,\qquad V_*\ne0,
\]
with \(A=0\). Let the action be the literal spectral action, without an added scalar potential or a constraint fixing \(c\). Then no finite \(c>0\) is stationary along this radial direction.

*Proof.* On \(\mathbb R^4\), the constant-background action density is
\[
\mathcal U(c)=
\frac{\Lambda^4}{4\pi^2}
\int s^{-2}
\operatorname{Tr}_{H_F}
e^{-sc^2V_*^2/\Lambda^2}\,d\nu(s).
\]
Differentiating gives
\[
\boxed{
\mathcal U'(c)=
-\frac{c\Lambda^2}{2\pi^2}
\int s^{-1}
\operatorname{Tr}_{H_F}
\left(V_*^2e^{-sc^2V_*^2/\Lambda^2}\right)d\nu(s)<0.
}
\tag{41}
\]
The inequality is strict because \(V_*\ne0\) and \(\nu\) is nonzero and positive. The same argument applies on a finite flat torus before performing its positive momentum sum. \(\square\)

Thus the masses above are conditional quadratic-background quantities. In the top-only family, the ordinary Higgs radial variation supplies the direction used in this theorem. A finite symmetry-breaking minimum of the polynomial asymptotic scalar potential cannot automatically be regarded as a minimum of this full positive-Laplace spectral action.

**10. Corollary (comparison of heavy limits).**

Let the background family and mass definitions be those above.

At fixed \(\Lambda\), with \(\mu\to\infty\):

\[
\begin{array}{c|c}
\text{quantity, heat cutoff} & \text{behavior}\\ \hline
m_t & \mu\Lambda\to\infty\\
M_{W,\mathrm{Taylor}},\ M_{W,\mathrm{pole}} & \sim\Lambda/\mu\to0\\
M_{Z,\mathrm{Taylor}},\ M_{Z,\mathrm{pole}} &
\sim\sqrt{2/3}\,\Lambda\mu e^{-\mu^2/2}\to0\\
m_t/M_W & \sim\mu^2\to\infty
\end{array}
\tag{42}
\]

At fixed \(0<\mu<\infty\), with \(\Lambda\to\infty\), all four vector masses in (42) instead grow linearly with \(\Lambda\), as does \(m_t\). A controlled asymptotic family can also satisfy
\[
\Lambda\to\infty,\qquad
\mu\to0,\qquad
\mu\Lambda\to\infty;
\]
then \(M_W,m_t\to\infty\) while
\[
m_t/M_W\to\sqrt{8/3}.
\]

*Proof.* The first assertions follow from (19), (27), and (34)–(36). At fixed positive \(\mu\), their dimensionless mass functions are fixed and positive, so multiplication by \(\Lambda\) proves the joint-limit assertions. The final assertion follows from the small-\(\mu\) limits. \(\square\)

Accordingly, the obstruction has three distinct scopes. The CCM identity cannot be extrapolated to \(\mu\to\infty\) at fixed cutoff because it belongs to the asymptotic truncation. The exact top-only quadratic action obstructs a fixed-cutoff heavy-\(W\) limit for the heat cutoff under both mass definitions, and for class (4) under the Taylor definition. A family of actual nonzero stationary vacua of the unmodified positive-Laplace action encounters the separate obstruction (41). Counterexample 7 excludes extending the first of these exact mass conclusions to arbitrary finite representations.

**11. Proposition (the radial derivative for general \(f\); referee).** On flat \(\mathbb R^4\), for a sufficiently integrable real cutoff \(f\), with \(\lambda_j^2\) the eigenvalues of \(V_*^2\),
\[
\mathcal U'(c)=
-\frac{c\Lambda^2}{2\pi^2}
\sum_j\lambda_j^2
\int_{c^2\lambda_j^2/\Lambda^2}^{\infty}f(z)\,dz. \tag{43}
\]
For nonnegative \(f\), a finite \(c>0\) is stationary exactly when every tail associated with a nonzero \(\lambda_j\) vanishes. So if \(f\) has nonzero support arbitrarily far out, there is no finite stationary point on this ray; if \(f\) has compact support ending at \(R\), there is a stationary plateau once every nonzero \(c^2\lambda_j^2/\Lambda^2\geq R\). Sign-changing cutoffs can have cancellations. A nonconstant cutoff flat near zero lies outside (4), since a nonzero positive measure gives \(f'(0)<0\); (43) covers the nonnegative ones. A radial path with an additional fixed noncommuting mass matrix need not have the form \(cV_*\). \(\square\)

**12. Proposition (the top-only Taylor mass for general \(f\); referee).** For nonnegative smooth compactly supported \(f\) with \(f(0)>0\), the formulas of Proposition 4 hold with
\[
A_f(x)=\frac2x\int_0^x zf(z)\,dz,\qquad
w_f(x)=\frac3{x^3}\int_0^x z^2f(z)\,dz,
\]
by approximating \(f\) with its derivatives by real combinations of \(e^{-nz}\). Hence
\[
\frac{M_{W,\mathrm{Taylor}}^2}{\Lambda^2}
\sim\frac{\int_0^\infty zf(z)\,dz}{f(0)\,x}.
\]
This includes cutoffs flat near zero. For a nonanalytic cutoff there need be no analytic continuation defining the pole. \(\square\)

**13. Proposition (several heavy doublets; referee).** For the heat cutoff, let \(P\) be the total particle-trace weight of complete massless doublets, and let heavy doublet \(i\), of weight \(d_i>0\), have one Dirac member of mass \(m_i\) and one massless member. Then
\[
C_W(y)=\frac{\Lambda^2}{4\pi^2}
 \Bigl(Pg(y)+\sum_i d_i h_{x_i}(y)\Bigr),\qquad
\frac{M_{W,\mathrm{Taylor}}^2}{\Lambda^2}
=\frac{3}{2}\,
\frac{\sum_i d_i A(x_i)}
     {P+\sum_i d_i w(x_i)}.
\]
For finitely many doublets, if \(P>0\) and all \(x_i\to\infty\), the Taylor mass tends to zero. If \(P=0\) and all \(x_i=x\), then \(M_{W,\mathrm{Taylor}}^2\sim m^4/(2\Lambda^2)\), the form factor has a unique positive pole with \(M_{W,\mathrm{pole}}^2\sim m^2/2\), and the whole unnormalized kernel tends to zero at every fixed Euclidean momentum. The divergent Taylor and pole scales differ, and neither alone establishes a healthy limiting gauge theory. \(\square\)

**14. Proposition (the fully massive family; referee).** Give both members of every Standard Model doublet the same Dirac mass \(m\), with no Majorana masses, and let \(z_W,z_Z\) be the charged and massive neutral poles in units of \(\Lambda^2\). The charged form factor is proportional to \(e^{-x}[g(y)+2xH(y)]\), and
\[
2x<z_W<2x+2,\qquad \tfrac{16}{5}x<z_Z<\tfrac{16}{5}x+2.
\]
So both pole masses diverge with \(m\) at fixed cutoff, and
\[
\frac{M_{W,\mathrm{pole}}^2}{M_{Z,\mathrm{pole}}^2}\longrightarrow\frac58
\qquad(x\to\infty),
\]
as also for \(x\to0\), where \(z_W\sim3x\) and \(z_Z\sim\frac{24}{5}x\). In between the ratio differs, reaching about \(0.66\) near \(x=3\) (Python, solving the pole equations). The kernel tends to zero at every fixed Euclidean momentum, and the charged Taylor kinetic coefficient is proportional to \(e^{-x}(1-x/2)\), negative for \(x>2\).

*Proof.* The species with equal mass have eigenvalues \(\pm m\). The charged generator connects them with \(d^2=0\) and \(d^2=4m^2\) in equal weights, which gives the charged form. For the neutral generators the diagonal charge has \(d=0\) and the off-diagonal charge \((q_L-q_R)/2=T_3v/2\) has \(d^2=4m^2\); on the particle trace the kernel is \(e^{-x}[\operatorname{diag}(6,10)g+12xHvv^T]\), so \(\beta=12x\,v^T\operatorname{diag}(6,10)^{-1}v=\frac{16}{5}x\), and for the charged direction \(\beta=2x\). Equation (36) gives the bounds, since \(H(-z)>1\). \(\square\)

This is a counterexample to any general no-go for diverging pole locations at fixed cutoff. It has no light fermions, and the physical quality of that limit is open.

**15. Remark (the light space does not carry unbroken \(SU(2)\times U(1)\); referee).** In the top-only limit the broken masses vanish, but this does not restore the electroweak group on the whole light space. The light space retains \(b_L\) after removing \(t_L\). If \(P_{\rm light}\) projects off the top mass block, then on \(b_L\) we have \(P_{\rm light}T_1P_{\rm light}=P_{\rm light}T_2P_{\rm light}=0\) and \(P_{\rm light}T_3P_{\rm light}=-\frac12\), which do not obey the \(SU(2)\) relations. Correspondingly \(K_W=9/2\), \(K_{33}=21/4\), \(K_{3Y}=-1/4\) in the limit, while a linearly realized unbroken action would have equal weak coefficients and no mixing. The remaining complete massless doublets carry the ordinary representation, and their contribution is gauge invariant. If both members of every removed doublet are heavy, the retained light space can be invariant under the full group; a full limiting theory still needs control of the remaining fields, normalizations, interactions and vacuum. "The heavy fermion leaves the loop" is shorthand for the suppression in this classical trace.

**16. Remark (the CCM relation as the small-mass form of a weighted sum rule; Claude).** For the heat cutoff and doublets with one massive member, Proposition 13 reads
\[
8\kappa M_{W,\mathrm{Taylor}}^2=\sum_fN_fm_f^2\,\rho(m_f^2/\Lambda^2),
\qquad
\rho(x)=\frac{A(x)}{x}=\frac{2[1-(1+x)e^{-x}]}{x^2},
\]
with \(N_f=2d_f\) and \(\kappa=(P+\sum_id_iw(x_i))/6\). As \(x\to0\), \(\rho,\kappa\to1\), which is the CCM relation (14). The relation is therefore the leading term of an expansion, and its range is \(m\ll\Lambda\). For the top alone, \(\kappa=(3+w)/4\); \(m/M_W\) departs from \(\sqrt{8/3}\) by 5% at \(m\approx0.45\Lambda\), and \(M_W\) peaks at about \(0.52\Lambda\) at \(m\approx1.42\Lambda\) (Python). The maximum is unique, at \(x=2.024\) with \(M_W/\Lambda=0.5242\) (referee, by a sign argument and Python). A massive diagonal contribution to the trace is exponentially suppressed above the cutoff, while the mixed loop with a massless partner has the algebraic \(\rho\sim2/x^2\) at large \(x\); a vacuum with no other mass leaves the W mass with no source. Whether the classical action is meaningful for \(m>\Lambda\) is a separate question, on which these formulas do not decide. In the top-only heat-cutoff family, the ratio differs from \(\sqrt{8/3}\) for every \(x>0\), since \(3+w-4\rho\) vanishes at zero and is increasing, so the limit with \(M_W\) and \(m_t\) diverging together and \(m_t/M_W\to\sqrt{8/3}\) needs \(\Lambda\to\infty\) faster than \(m_t\) (Corollary 10). This necessity is for that family: with one complete massless lepton doublet and one member of each other doublet of common mass \(m\), the weighted sum equals the unweighted CCM sum at some \(x_*>0\) (referee).

As algebraic checks, we used **Python 3 with SymPy** to verify the integration-by-parts identities, the displayed small-\(x\) Taylor series, and \(v^TB_\infty^{-1}v=8/27\). The arguments above provide the proofs; these computations introduce no fitted constants.

**Consequence for T5b.** At fixed cutoff, the specified top-only Standard Model spectral action does not realize an infinitely heavy \(W,Z,t\) family: the top grows while both vector masses tend to zero, for the heat cutoff and the stated quadratic mass definitions. A joint limit with \(\Lambda\to\infty\) permits all three background mass scales to diverge, but neither centralizer-only decoupling nor a stationary Higgs vacuum follows from that scaling. These conclusions concern the classical bosonic action and contain no quantum corrections or claims about the physical Standard Model at those scales. Other finite data behave differently: with every doublet heavy and no light fermions, the pole masses diverge at fixed cutoff with M_W^2/M_Z^2 -> 5/8 (Proposition 14). With a massless complete doublet retained, the Taylor mass tends to zero (Proposition 13). So in the families treated here, a heavy W and Z at fixed cutoff is found only without a massless complete doublet. Light nonzero masses are not treated: they leave a residual vector mass that depends on them.