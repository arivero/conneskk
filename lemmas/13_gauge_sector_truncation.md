# T4: gauge fluctuations of the chiral interval

Prompt: [prompts/13](prompts/13_gauge_sector_truncation.md) (STRATEGY T4). Attempted by gpt-6-astra (codex 0.164, xhigh, 3 Nov 2026), working alone. Checked by Claude Opus 5.5 by hand: Results 2, 3, 4, 5 and 6 (the compression integrals, the counterexample B = -2a/(3 pi) with trivial Wilson line, the Neumann-Dirichlet mass, the 1 : 3 ratio of the a_4 gauge and scalar terms with the canonical normalization, and the eigenvalues 0 and 6m^2); Results 7 and 8 reproduce the standard CCM relations (8 M_W^2 = sum N_f m_f^2, M_W/M_Z = sqrt(5/8) with Q_2 = 12, Q_Y = 20).

Refereed by Terra 6.1 (gpt-6.1-terra, effort max, 3 Nov 2026; [report](../reviews/2026-11-03_terra_check_08_13_14.md)): of 8 statements, 7 are correct and Proposition 8 needs one amendment, recorded there.

We prove an exact compression formula, but it does not identify the continuum gauge theory with the full Connes–Lott gauge theory. The fermion boundary conditions impose no boundary conditions on the gauge potentials, and fixed spectral compression produces only links of the form `phi = m I + i B`, with `B` Hermitian. The proposed ratio `M_W/m = sqrt(3/8)` is correct under the three-generation Standard Model CCM normalization, with one massive colour triplet and all other Dirac masses zero. It is not a consequence of the interval alone: the minimal two-sheet spectral action has a different gauge representation and gives a massive relative gauge field of mass `sqrt(6) m`.

**1. Theorem (inner fluctuations and boundary conditions).**

Let \(M\) be a closed Riemannian spin four-manifold. We use Hermitian Euclidean gamma matrices, \(D_M=-i\gamma^\mu\nabla_\mu^S\), and
\[
E=\begin{pmatrix}0&1\\-1&0\end{pmatrix},
\qquad
D=D_M\otimes1+\gamma_5\otimes E\partial_x .
\]
Let
\[
\mathcal H=L^2(S_M)\otimes L^2([0,l],\mathbb C^2)\otimes\mathbb C^n,
\]
with the algebra acting by the same matrix multiplication on \(L\) and \(R\). The interval boundary conditions are
\[
R(y,0)=0,\qquad L(y,l)=0.
\]

We consider complex inner fluctuations \(D+\omega\), where
\(\omega=\sum_j a_j[D,b_j]\) and \(\omega^*=\omega\). No real structure or additional bimodule is assumed.

Then the fluctuated operators are exactly
\[
\boxed{
D_A=-i\gamma^\mu(\nabla_\mu^S+iA_\mu)
       +\gamma_5E(\partial_x+iA_5),
}
\]
where \(A_\mu(y,x)\) and \(A_5(y,x)\) are arbitrary smooth Hermitian \(n\times n\) matrices. They are connections on the trivial \(U(n)\) bundle over \(M\times I_l\). Restriction to traceless potentials gives the \(SU(n)\) case.

The fermion conditions induce **no Dirichlet, Neumann, or endpoint-value conditions on \(A_\mu\) or \(A_5\)**.

*Proof.* For a matrix-valued function \(b\),
\[
[D,b]=-i\gamma^\mu\partial_\mu b+\gamma_5E\partial_xb.
\]
Consequently, represented one-forms have precisely these five Clifford components. Self-adjointness makes their connection coefficients anti-Hermitian, hence \(iA_\alpha\) with \(A_\alpha\) Hermitian. Conversely, smooth matrix-valued one-forms are finite sums \(a\,db\), using local coordinates and a partition of unity.

Every such fluctuation is a bounded self-adjoint perturbation of \(D\), so \(D_A\) is self-adjoint on the original domain. A bounded perturbation need not map that domain into itself; requiring this would impose an additional, unjustified condition.

Every smooth \(g:M\times I_l\to U(n)\) preserves the fermion boundary conditions:
\[
(gR)(y,0)=0,\qquad (gL)(y,l)=0.
\]
The usual transformation
\[
A_\alpha\longmapsto
gA_\alpha g^*+i(\partial_\alpha g)g^*
\]
therefore allows arbitrary endpoint values of \(g\).

For smooth sections in \(\operatorname{Dom}(D_A^2)\), the additional conditions are
\[
(\partial_x+iA_5)L(y,0)=0,\qquad
(\partial_x+iA_5)R(y,l)=0.
\]
These are conditions on the fermions, not on \(A_5\). They follow by applying the original boundary conditions to \(D_A\psi\).

An orbifold extension would add different hypotheses. Requiring \(A_\mu\) to be even and \(A_5\) odd under endpoint reflections gives \(\partial_xA_\mu=0\) and \(A_5=0\) there. Those parity requirements do not follow from the stated fermion domain. \(\square\)

**2. Theorem (exact fixed-projection compression and its image).**

Let
\[
m=\frac{\pi}{2l},\qquad
u_L=\sqrt{\frac2l}\binom{\cos(mx)}0,\qquad
u_R=\sqrt{\frac2l}\binom0{\sin(mx)},
\]
and let \(P\) project onto their span, tensored with the spacetime and gauge factors. This is the unfluctuated lowest-pair projection of [Lemma 05, Part 3](05_deconstruction_interval.md).

Define
\[
w_L(x)=\frac2l\cos^2(mx),\qquad
w_R(x)=\frac2l\sin^2(mx),\qquad
k(x)=\frac1l\sin\frac{\pi x}{l}.
\]
Then, under the identification \(P\mathcal H\simeq L^2(S_M)\otimes(\mathbb C^n_L\oplus\mathbb C^n_R)\),
\[
\boxed{
PD_AP=
-i\gamma^\mu\left(\nabla_\mu^S+
 i\begin{pmatrix}A_{L,\mu}&0\\0&A_{R,\mu}\end{pmatrix}\right)
+\gamma_5
 \begin{pmatrix}0&\phi\\\phi^*&0\end{pmatrix},
}
\]
where
\[
\boxed{
A_{L,\mu}=\int_0^l w_LA_\mu\,dx,\qquad
A_{R,\mu}=\int_0^l w_RA_\mu\,dx,
}
\]
and
\[
\boxed{
\phi=mI_n+iB,\qquad
B=\int_0^l k(x)A_5(y,x)\,dx=B^*.
}
\]
Here \(\phi\) denotes the total link; its additive fluctuation is \(\phi-mI_n\).

The exact image consists of arbitrary Hermitian sheet connections together with links satisfying
\[
\boxed{\phi+\phi^*=2mI_n.}
\]
In particular, not every Connes–Lott fluctuation arises by this compression.

*Proof.* The spacetime term is diagonal in interval chirality, giving the two weighted averages. The unfluctuated interval operator satisfies
\[
D_Iu_R=mu_L,\qquad D_Iu_L=mu_R.
\]
The upper-right matrix element of \(iEA_5\) is
\[
i\frac2l\int_0^l\cos(mx)\sin(mx)A_5\,dx=iB;
\]
the lower-left element is \(-iB\). This proves the operator identity without approximation.

The elementary integrals
\[
\int_0^l w_L\,dx=\int_0^l w_R\,dx=1,
\quad
\int_0^l w_L\cos\frac{\pi x}{l}\,dx=\frac12,
\quad
\int_0^l w_R\cos\frac{\pi x}{l}\,dx=-\frac12
\]
show that any prescribed \(A_L,A_R\) have the lift
\[
A_\mu(y,x)=\frac{A_{L,\mu}+A_{R,\mu}}2
 +(A_{L,\mu}-A_{R,\mu})\cos\frac{\pi x}{l}.
\]
Since \(\int_0^l k\,dx=2/\pi\), any Hermitian \(B\) has the lift
\[
A_5(y,x)=\frac{\pi}{2}B(y).
\]
Thus the stated image is exact.

By contrast, the finite algebra
\[
M_n(\mathbb C)\oplus M_n(\mathbb C)
\]
with \(D_F=m\begin{psmallmatrix}0&I\\I&0\end{psmallmatrix}\) admits an arbitrary complex matrix as its total link. Indeed, writing \(p_L,p_R\) for its central projections, \(p_L[D_F,p_R]\) supplies an arbitrary upper-right block after multiplication by the left algebra; adding its adjoint supplies the lower-left block. The allowed finite fluctuation \(\phi=0\), for example, has no continuum lift under the displayed compression.

For \(SU(2)\), \(B\) is additionally traceless. The continuum \(A_5\) is adjoint-valued; it is not automatically an electroweak Higgs doublet.

If an additional finite factor is included in the internal-first convention, and the gauge algebra commutes with \(D_0,\Gamma_0\), its compressed internal operator is
\[
D_0\otimes1+\Gamma_0\otimes
\begin{pmatrix}0&\phi\\\phi^*&0\end{pmatrix}.
\]
There is no extra overlap factor. If \([D_0,a]\ne0\), additional finite scalar fluctuations occur. Moreover, the cited [Theorem 5](08_product_selects_ko.md) explicitly restricts the interval algebra to constants for its real-triple assertion; it does not supply a Standard Model real structure for the full compressed algebra. \(\square\)

**3. No-go theorem (fixed compression is not a gauge-covariant Wilson-link construction).**

Let \(P\) be the fixed projection of Result 2. Its link \(\phi[A_5]\) is not a functional of the Wilson line alone, and fixed compression does not descend to continuum gauge-equivalence classes.

*Proof.* It suffices to consider \(U(1)\) potentials independent of \(y\). Define parallel transport by
\[
W'(x)=-iA_5(x)W(x),\qquad W(0)=1.
\]
Then
\[
D_{I,A}=W D_I W^*.
\]
Multiplication by \(W\) preserves both fermion boundary conditions, so the complete interval spectrum is unchanged.

Take
\[
A_5(x)=a\cos\frac{2\pi x}{l}.
\]
Its Wilson line is \(W(l)=1\), but
\[
B=\frac a\pi\int_0^\pi\sin t\cos(2t)\,dt
  =-\frac{2a}{3\pi}.
\]
Thus
\[
\phi=m-\frac{2ia}{3\pi},
\qquad
|\phi|=\sqrt{m^2+\frac{4a^2}{9\pi^2}}.
\]
The zero connection and this connection are gauge equivalent even through a transformation equal to \(1\) at both endpoints, yet their fixed compressed operators have different internal eigenvalues.

The obstruction is that multiplication by an \(x\)-dependent gauge transformation generally fails to preserve \(P\mathcal H\). Compression of multiplication is not multiplicative, and \(PgP\) generally fails to be unitary.

The normalization difference is already visible for constant \(A_5=a\):
\[
\frac{\phi}{m}=1+i\frac{4l}{\pi^2}a,
\qquad
W(l)^*=e^{ial}.
\]
Neither equality with the Wilson link nor a universal correction to the mass follows from these expressions.

A different, gauge-adapted construction is possible. Use the transported interval frames
\[
u_L(x)W(x),\qquad u_R(x)W(x)W(l)^*.
\]
Their vertical Dirac matrix is exactly
\[
\begin{pmatrix}
0&mW(l)^*\\
mW(l)&0
\end{pmatrix}.
\]
Its link obeys \(\phi^*\phi=m^2I\), so it also omits general radial Higgs fluctuations. If \(W\) depends on \(y\), derivatives of these frames additionally enter the sheet connections.

Finally, compression differs from eliminating the omitted fermions. With \(Q=1-P\), block elimination adds
\[
-PD_AQ\,[Q(D_A-z)Q]^{-1}QD_AP
\]
whenever the inverse exists. This follows by solving the \(Q\)-component of \((D_A-z)\psi=0\) and substituting into the \(P\)-component. It is the distinction relevant to the effective-operator discussion in [research state §6.10](../connes_kk_research_state.md). \(\square\)

**4. Lemma (the continuum vector mass requires specified gauge boundary conditions).**

Let the quadratic transverse-vector operator in the interval direction be \(-\partial_x^2\), with
\[
f'(0)=0,\qquad f(l)=0.
\]
Assume no boundary kinetic terms or other modifications of this operator. Then
\[
\boxed{M_{\mathrm{KK}}=\frac{\pi}{2l}=m.}
\]

*Proof.* The Neumann condition selects \(f(x)=C\cos(kx)\). The Dirichlet condition gives
\[
kl=\left(r+\frac12\right)\pi,\qquad r=0,1,\ldots .
\]
The lowest eigenvalue is therefore \(m^2\).

A Dirichlet condition at one endpoint alone does not determine this answer. Dirichlet conditions at both endpoints give lowest mass \(\pi/l\), whereas two Neumann conditions give a zero mode. Thus the comparison uses specifically the mixed boundary problem listed in [Lemma 9.11](09_massive_chiral_interval.md), and Result 1 does not derive that problem from the fermion boundary conditions. \(\square\)

**5. Proposition (general spectral-action vector-mass formula).**

Let \(H_F\) be a specified finite fermion space with Hermitian represented gauge generators \(T_a\). Let
\[
\mathscr D=-i\gamma^\mu(\nabla_\mu^S+iA_\mu)+\gamma_5V,
\]
where \(V=V^*\) is the total finite scalar matrix. Use the ordinary spectral trace, an even cutoff function with \(f_0=f(0)>0\), and the terms through order \(\Lambda^0\). Assume no additional kinetic terms.

Let \(V_0\) be the chosen constant vacuum value. Define
\[
Q_{ab}=\operatorname{Re}\operatorname{Tr}_{H_F}(T_aT_b),
\qquad
K_{ab}=\operatorname{Re}\operatorname{Tr}_{H_F}
 \bigl([T_a,V_0]^*[T_b,V_0]\bigr).
\]
On the faithfully represented gauge algebra, the canonically normalized vector mass-squared matrix is
\[
\boxed{
\mathcal M^2=\frac32\,Q^{-1/2}KQ^{-1/2}.
}
\]
Consequently, relative to the mixed-boundary continuum mass,
\[
\boxed{
\frac{M_j^2}{M_{\mathrm{KK}}^2}
=\frac{3}{2m^2}\,
\lambda_j\!\left(Q^{-1/2}KQ^{-1/2}\right).
}
\]

*Proof.* We use the heat coefficient
\[
a_4\supset\frac1{16\pi^2}
 \operatorname{Tr}\left(\frac12\mathcal E^2+
                              \frac1{12}\Omega_{\mu\nu}\Omega^{\mu\nu}\right),
\]
as recorded in [CCM, Theorem 6.1, equation (6.10)](https://www.math.fsu.edu/~marcolli/SMpaper.pdf#page=68). Here \(\mathscr D^2=\nabla^*\nabla-\mathcal E\).

Write
\[
F_{\mu\nu}=\partial_\mu A_\nu-\partial_\nu A_\mu+i[A_\mu,A_\nu],
\qquad
D_\mu V=\partial_\mu V+i[A_\mu,V].
\]
The relevant endomorphism terms are
\[
\mathcal E_F=\frac i2\gamma^\mu\gamma^\nu F_{\mu\nu},
\qquad
\mathcal E_V=i\gamma^\mu\gamma_5D_\mu V.
\]
The Clifford traces give
\[
\operatorname{tr}_S(\mathcal E_F^2)=2F_{\mu\nu}F^{\mu\nu},
\quad
\operatorname{tr}_S(\mathcal E_V^2)=4D_\mu V D^\mu V,
\quad
\operatorname{tr}_S(\Omega_F^2)=-4F_{\mu\nu}F^{\mu\nu}.
\]
Hence the relevant Lagrangian is
\[
\boxed{
\mathcal L=
c\,\operatorname{Tr}_{H_F}(F_{\mu\nu}F^{\mu\nu})
+3c\,\operatorname{Tr}_{H_F}(D_\mu V D^\mu V),
\qquad c=\frac{f_0}{24\pi^2}.
}
\]

At \(V=V_0\), the quadratic gauge terms are
\[
cQ_{ab}F^a_{\mu\nu}F^{b,\mu\nu}
+3cK_{ab}A_\mu^aA^{b,\mu}.
\]
The change of variables \(A_{\rm can}=2\sqrt c\,Q^{1/2}A\) gives kinetic normalization \(F_{\rm can}^2/4\) and mass normalization \(A_{\rm can}\mathcal M^2A_{\rm can}/2\), proving the formula.

Thus the necessary data are the represented gauge generators, their full trace multiplicities, and the vacuum matrix \(V_0\). The common coefficient \(f_0\) cancels. However, the bare finite Dirac matrix need not itself be the vacuum: determining \(V_0\) requires the scalar potential, including its cutoff moments and curvature dependence. All masses below are conditional on the stated vacuum and refer to this leading spectral-action approximation. \(\square\)

**6. Counterexample (the minimal two-sheet action does not give the CCM triplet ratio).**

Let
\[
H_F=(\mathbb C_L^n\oplus\mathbb C_R^n)\otimes\mathbb C^N,
\qquad
V_0=m\begin{pmatrix}0&I_n\\I_n&0\end{pmatrix}\otimes I_N.
\]
Gauge both sheet groups, \(U(1)_L\times U(1)_R\) for \(n=1\), or \(SU(2)_L\times SU(2)_R\) for \(n=2\). Use the action of Result 5.

Then the diagonal gauge combination is massless and the relative combination has
\[
\boxed{M_{\rm relative}=\sqrt6\,m.}
\]
This remains true for colour multiplicity \(N=3\).

*Proof.* For one normalized generator \(t\), set
\[
T_L=\begin{pmatrix}t&0\\0&0\end{pmatrix},
\qquad
T_R=\begin{pmatrix}0&0\\0&t\end{pmatrix},
\qquad
\kappa=N\operatorname{tr}(t^2).
\]
Direct multiplication gives
\[
Q=\kappa I_2,\qquad
K=2\kappa m^2
\begin{pmatrix}1&-1\\-1&1\end{pmatrix}.
\]
Therefore
\[
\mathcal M^2=
3m^2\begin{pmatrix}1&-1\\-1&1\end{pmatrix},
\]
whose eigenvalues are \(0\) and \(6m^2\). The factor \(N\) cancels between scalar and gauge normalization. For \(SU(2)\), this calculation applies to each \(t=\sigma_a/2\).

If only the diagonal group is gauged, every generator commutes with \(V_0\), and all these vector masses vanish. Neither choice realizes the assumed continuum mixed-boundary breaking automatically.

The dependence on the full fermion trace can also be exhibited explicitly. In the \(U(1)\) example, add \(S\) otherwise identical charged pairs with zero finite Dirac operator. They contribute to \(Q\) but not \(K\), giving
\[
M_{\rm relative}^2=6\frac{N}{N+S}m^2.
\]
The mass and colour multiplicity of the original pair have not changed.

There is another distinction if one restricts the continuum field to its lowest mixed-boundary profile before evaluating the finite action:
\[
A_\mu(y,x)=a_\mu(y)\cos(mx).
\]
Result 2 then gives
\[
A_{L,\mu}=\frac{8}{3\pi}a_\mu,\qquad
A_{R,\mu}=\frac{4}{3\pi}a_\mu.
\]
For a restriction \(A_L=c_La,\ A_R=c_Ra\), Result 5 gives the one-field quadratic mass
\[
M_{\rm restricted}^2
=3m^2\frac{(c_L-c_R)^2}{c_L^2+c_R^2}.
\]
Thus this particular restriction gives
\[
M_{\rm restricted}^2=\frac35m^2.
\]
It is an additional restriction of the action, not a mass eigenvector of the unrestricted two-sheet theory. It demonstrates that retaining a continuum gauge profile and fluctuating the full compressed algebra are different prescriptions. \(\square\)

**7. Corollary (the precise conditional CCM comparison).**

Let the finite model instead have the full three-generation Standard Model representation and its usual Higgs doublet. Retain all charged fermion states in the spectral trace, including those whose Yukawa masses vanish. Identify one colour-triplet Dirac mass at the vacuum with
\[
m=\frac{\pi}{2l},
\]
and suppose every other Dirac mass is zero.

Then, at the matching scale,
\[
\boxed{
M_W^2=\frac38m^2,\qquad
\frac{M_W}{M_{\mathrm{KK}}}=\sqrt{\frac38}.
}
\]
No additional factor from the interval wavefunctions or from Wilson-line normalization multiplies this ratio.

*Proof.* We can recover the normalization directly from Result 5. For \(T_1=\sigma_1/2\), one Standard Model generation of particles contributes
\[
\operatorname{Tr}(T_1^2)=\frac12+3\frac12=2.
\]
Antiparticles double this, and three generations give
\[
Q_{11}=12.
\]

For a left doublet and its right singlets with mass matrix
\(Y=\operatorname{diag}(m_u,m_d)\), the particle contribution to \(K_{11}\) is
\[
2\operatorname{tr}(Y^*T_1^2Y)
=\frac12(m_u^2+m_d^2).
\]
Including antiparticles and all multiplicities gives
\[
K_{11}=\sum_fN_fm_f^2.
\]
Therefore
\[
M_W^2=\frac32\frac{K_{11}}{12}
      =\frac18\sum_fN_fm_f^2.
\]
This is the relation in [CCM, Lemma 4.6, equation (4.16)](https://www.math.fsu.edu/~marcolli/SMpaper.pdf#page=39), assumed in [Lemma 11](11_spectral_action_heavy_w.md). Substitution of \(K_{11}=3m^2\) proves the claimed ratio.

The normalization identity is equivalently
\[
\frac{f_0g_2^2}{2\pi^2}=\frac14.
\]
Its coefficient comes from \(Q_{11}=12\). Applying that coefficient after deleting the other charged states would no longer canonically normalize the gauge kinetic term.

The interval basis already satisfies \(\|u_L\|=\|u_R\|=1\), and
\(\langle u_L,D_Iu_R\rangle=m\). Thus its unfluctuated fermion mass is exactly \(m\). The factor \(2/\pi\) belongs to the coupling of a constant \(A_5\) to the fixed compressed link; it does not rescale the background mass. A change of scalar coordinates likewise cannot change a mass ratio when both kinetic and Yukawa terms are transformed consistently.

If other Dirac masses are nonzero, the exact conditional comparison becomes
\[
\frac{M_W^2}{M_{\mathrm{KK}}^2}
=\frac18\left(3+\sum_{\text{other }f}
 N_f\frac{m_f^2}{m^2}\right).
\]
If “a coloured doublet” means two massive coloured Dirac species, both of mass \(m\), their contribution is \(6m^2\), giving \(M_W/m=\sqrt3/2\) when all other masses vanish. \(\square\)

**8. Proposition (electroweak doublet and the neutral-vector ratio).**

*Amendment (referee).* In the last paragraph of this result, the law phi -> g_L phi g_R^\* holds for the link of the independently gauged finite two-sheet completion. The fixed compression of the continuum field does not obey it in general: Result 3 gives an endpoint-fixed gauge transformation that changes phi. The decomposition 1 + 3 under the diagonal SU(2) stays correct.

Let an additional electroweak assignment supply one complex Higgs doublet \(h\), with
\[
T_a=\frac{\sigma_a}{2},\qquad Y_h=\frac12,\qquad
\langle h\rangle=\frac1{\sqrt2}\binom0v,
\]
where \(Q_{\rm em}=T_3+Y\). Let the gauge fields have canonical kinetic terms and couplings \(g_2,g_Y\).

Then
\[
\boxed{
M_W^2=\frac{g_2^2v^2}{4},\qquad
M_Z^2=\frac{(g_2^2+g_Y^2)v^2}{4},
}
\]
and consequently
\[
\boxed{
\frac{M_W}{M_Z}=\cos\theta_W,\qquad
\rho=\frac{M_W^2}{M_Z^2\cos^2\theta_W}=1,
\quad
\tan\theta_W=\frac{g_Y}{g_2}.
}
\]

*Proof.* At the vacuum,
\[
|D_\mu h|^2
=\frac{v^2}{8}
\left[g_2^2\bigl((W_\mu^1)^2+(W_\mu^2)^2\bigr)
 +(g_2W_\mu^3-g_YB_\mu)^2\right].
\]
Diagonalizing the neutral quadratic form gives one massless photon and the displayed \(Z\) mass.

Under a common spectral-action coefficient, canonical normalization additionally gives
\[
g_2^2Q_2=g_Y^2Q_Y.
\]
For the full three-generation Standard Model trace, including antiparticles,
\[
Q_2=12,\qquad Q_Y=20,
\]
so
\[
\boxed{\frac{M_W}{M_Z}=\sqrt{\frac58}}
\]
at that matching scale. These trace weights agree with the per-generation calculation in [research state §6.10](../connes_kk_research_state.md).

The original interval multiplication representation acts identically on both chiralities. Its matrix link transforms as
\[
\phi\longmapsto g_L\phi g_R^*,
\]
and under the diagonal \(SU(2)\) it decomposes as \(1\oplus3\). It therefore does not specify the electroweak doublet assignment used above. That assignment, its hypercharges, and the charged fermion trace must be supplied separately. Likewise, the continuum value of \(\rho\) requires the neutral-sector boundary conditions and kinetic normalization; the single mixed-boundary eigenvalue in Result 4 cannot determine it. \(\square\)

**Consequence for T4 and hypothesis H**

The minimal fermion compression supports the geometric identification \(m=\pi/(2l)\), but it does not establish an equivalence of gauge fluctuations, gauge boundary conditions, or bosonic actions. The ratio \(\sqrt{3/8}\) is correct for the specified CCM Standard Model completion and receives no interval-overlap correction. Hypothesis H therefore requires an additional gauge-covariant reduction and a matching of representations, vacuum data, and kinetic forms before it can identify the finite vector spectrum with the interval Kaluza–Klein spectrum.