The proposed uniqueness is false: **the same KO-6 triple can admit both reductions**. Moreover, under the stated definition, the strict heavy-limit triple is a doubling of KO-7, although it is not a doubling of KO-5. The distinction between the full real Hilbert space and its physical particle subspace is essential.

**1. Lemma — Product convention and necessary correction of the “Clifford point.”**

Under ordinary spectral-triple conventions, a graded triple on `C^2` is not itself an odd KO-1 or KO-7 triple. The appropriate interpretation is an odd point
\[
P_k=(\mathbb C,\mathbb C,0,K),\qquad k=1\ \text{or}\ 7,
\]
together with the auxiliary `C^2` introduced by the odd-times-odd product. For real algebras, use the point algebra `R`, so that the product algebra remains `A`.

I use the following products, with the standard antilinear tensor product of real structures.

For even × even,
\[
D=D_1\otimes1+\gamma_1\otimes D_2,\qquad
\gamma=\gamma_1\otimes\gamma_2,
\]
\[
J=J_1\otimes(J_2\gamma_2^b),\qquad
b=(1-\epsilon_1'')/2.
\]

For even × odd, use the same formula for `D`, no grading, and
\[
J=(J_1\gamma_1^a)\otimes J_2,\qquad
(-1)^a=\epsilon_1''\epsilon_2'.
\]
Odd × even is obtained by transporting the even-first construction through the tensor flip.

For odd × odd,
\[
H=H_1\otimes H_2\otimes\mathbb C^2,\quad
D=D_1\otimes1\otimes\sigma_1+
1\otimes D_2\otimes\sigma_2,\quad
\gamma=1\otimes1\otimes\sigma_3,
\]
\[
J=J_1\otimes J_2\otimes(BK),
\]
where
\[
\begin{array}{c|cccc}
(\epsilon_1',\epsilon_2') &(+,+)&(+,-)&(-,+)&(-,-)\\ \hline
B&\sigma_1&1&\sigma_3&-i\sigma_2 .
\end{array}
\]
This agrees, up to harmless phases, with [Dąbrowski–Dossena, equation (25), Table 6](https://arxiv.org/pdf/1011.4456#page=12).

**Proof.** In the odd-odd case,
\[
B\sigma_1=\epsilon_1'\sigma_1B,\qquad
B\sigma_2=-\epsilon_2'\sigma_2B.
\]
The second minus sign compensates for complex conjugation of `sigma_2`. Consequently `JD=DJ`; computing `J^2` and `J gamma` gives the signs of the sum degree. The grading twists in the other two formulas follow by the same calculation. Order zero and first order pass to these products.

Thus the intended doubling has Hilbert space `H_0 ⊗ C^2`, with the displayed grading on the auxiliary factor. All subsequent statements use this corrected interpretation and the zero-Dirac point. ∎

**2. Theorem — Exact doubling criterion in KO-dimension six.**

Let `(A,H,D,J,gamma)` be a finite KO-6 triple. For `s=±1`, the following are equivalent:

1. It is a product `T_n × P_k`, where
   \[
   (s,n,k)=(+1,7,7)\quad\text{or}\quad(-1,5,1).
   \]
2. There is a complex-linear unitary `U` satisfying
   \[
   U^2=1,\quad U\gamma=-\gamma U,\quad
   [U,a]=[U,a^o]=[U,D]=0,\quad UJ=sJU,
   \]
   where `a^o=Ja^*J^{-1}`.

Write `H_L=H_{\gamma=+1}`, `H_R=H_{\gamma=-1}`, and
\[
D=\begin{pmatrix}0&M^*\\M&0\end{pmatrix}.
\]
Equivalently, there is an `A`-bimodule unitary `V:H_L→H_R` such that
\[
V^*M=(V^*M)^*,\qquad (V^*C)^2=s,
\quad C=J|_{H_L}:H_L\longrightarrow H_R.
\]
Here `C` and `V^*C` are antilinear.

**Proof.** Given `U`, identify
\[
H_L\oplus H_L\longrightarrow H,\qquad (x,y)\longmapsto x+Uy.
\]
Put
\[
H_0=H_L,\qquad d=(UD)|_{H_L},\qquad j=(UJ)|_{H_L}.
\]
The assumptions give
\[
d=d^*,\qquad j^2=s,\qquad jd=s\,dj.
\]
Hence `(j^2,jd/dj)` is `(+,+)` for KO-7 and `(-,-)` for KO-5. In these coordinates,
\[
a=\begin{pmatrix}a_0&0\\0&a_0\end{pmatrix},\quad
D=\begin{pmatrix}0&d\\d&0\end{pmatrix},\quad
\gamma=\begin{pmatrix}1&0\\0&-1\end{pmatrix},
\]
\[
J(x,y)=(sjy,jx).
\]
These are precisely the products in Result 1: `B=σ_1` for `(7,7)` and `B=-iσ_2` for `(5,1)`.

The descended opposite action is
\[
ja_0^*j^{-1}=a^o|_{H_L}.
\]
Since `[d,a_0]=U[D,a]|_{H_L}`, order zero and first order descend. Conversely, the product has `U=1⊗σ_1`, with all the required properties.

Finally,
\[
U=\begin{pmatrix}0&V^*\\V&0\end{pmatrix}.
\]
Its commutation with `D` is equivalent to self-adjointness of `V^*M`, while `UJ=sJU` is equivalent to `(V^*C)^2=s`.

If one prefers an anticommuting convention, replacing `U` by `i gamma U` exchanges `[U,D]=0` with `{U,D}=0` and preserves `s`. ∎

In particular, ordinary equality of left and right module multiplicities is only part of the criterion; compatibility with `D` and `J` must also be checked.

**3. Counterexample — J does not select a unique reduction; electrodynamics admits both.**

Consider the electrodynamics triple in the basis
`(e_L,e_R,bar e_L,bar e_R)`. After a phase change compatible with `A,J,gamma`, its matrices are
\[
\rho(a,b)=\operatorname{diag}(a,a,b,b),\qquad
\gamma=\operatorname{diag}(1,-1,-1,1),
\]
\[
J=\begin{pmatrix}0&I_2\\I_2&0\end{pmatrix}K,\qquad
D=m\begin{pmatrix}\sigma_1&0\\0&\sigma_1\end{pmatrix},
\quad m\geq0.
\]
These are the input data of [van den Dungen–van Suijlekom, §4.1, equations (4.1)–(4.2)](https://ems.press/content/serial-article-files/30538#page=15).

Define
\[
U_+=\operatorname{diag}(\sigma_1,\sigma_1),\qquad
U_-=\operatorname{diag}(\sigma_1,-\sigma_1).
\]

**Proof.** Both involutions reverse the grading and commute with the algebra, opposite algebra, and `D`. Direct multiplication gives
\[
U_+J=JU_+,\qquad U_-J=-JU_-.
\]
Thus the same triple, with the same `J`, admits both factorizations.

On `H_0=span(e_L,bar e_R)`, the two descended triples have
\[
d_+=mI_2,\qquad j_+=\sigma_1K
\]
and
\[
d_-=\operatorname{diag}(m,-m),\qquad
j_-=\begin{pmatrix}0&1\\-1&0\end{pmatrix}K.
\]
They have KO-degrees seven and five, respectively. This also holds at `m=0`. ∎

**4. Lemma — Exact neutral-sector criterion, including Majorana masses.**

Suppose a KO-6 sector has
\[
H=H_+\oplus H_-,\qquad \dim H_+=\dim H_-=r,
\]
and both algebra actions are the same scalar character throughout this sector. Then:

- a KO-7 reduction always exists;
- a KO-5 reduction exists exactly when **every singular value of `M`, including zero, has even multiplicity**.

**Proof.** Choose an orthonormal basis of `H_+` and its `J`-image as the basis of `H_-`. Then
\[
J=\begin{pmatrix}0&I\\I&0\end{pmatrix}K.
\]
The equation `JD=DJ` says `M^T=M`. Takagi factorization, implemented by a basis change preserving this form of `J`, reduces `M` to
\[
\Sigma=\operatorname{diag}(\mu_1,\ldots,\mu_r),\qquad \mu_i\geq0.
\]

Taking `V=I` satisfies Result 2 with `s=+1`.

For `s=-1`, the descended antiunitary `j` squares to `-1` and commutes with `d^2=D^2|_{H_+}`. Every eigenspace of `d^2` must therefore have even complex dimension. These dimensions are exactly the singular-value multiplicities.

Conversely, pair equal entries of `Sigma` and choose `V=σ_2` on each pair. Then `V` is a skew-symmetric Hermitian unitary commuting with `Sigma`; it satisfies the criterion with `s=-1`. ∎

A single neutral Weyl state and its conjugate therefore **are** a KO-7 doubling, even without a Dirac partner. They cannot be a KO-5 doubling. The same statement holds for a single Majorana pair, whether its mass vanishes or not.

**5. Proposition — The strict one-generation heavy limit is a KO-7 doubling, not a KO-5 doubling.**

Here is an explicit convention for the Standard Model representation. Set
\[
F=\mathbb C\oplus\mathbb C^3,\qquad
H_p=(\mathbb C^2\otimes F)_L\oplus
(\mathbb C^2\otimes F)_R,\qquad H=H_p\oplus H_{\bar p}.
\]
For `a=(lambda,q,m)`, put
\[
Q_\lambda=\operatorname{diag}(\lambda,\bar\lambda),
\qquad B_{\lambda,m}=\operatorname{diag}(\lambda,m),
\]
\[
\rho_p(a)=(q\otimes I_4)\oplus(Q_\lambda\otimes I_4),
\]
\[
\rho_{\bar p}(a)
=(I_2\otimes B_{\lambda,m})\oplus(I_2\otimes B_{\lambda,m}).
\]
Use
\[
J(p,\bar p)=(K\bar p,Kp),\qquad
\gamma=\operatorname{diag}(I_8,-I_8,-I_8,I_8).
\]
On particles, the Dirac block is
\[
S_p=\begin{pmatrix}0&Y^*\\Y&0\end{pmatrix},
\]
where `Y` has entries `y_nu,y_e,y_u I_3,y_d I_3` on the corresponding species. The antiparticle block is `bar S_p`; the additional Majorana block connects `nu_R` with `J nu_R`. This realizes the bimodule and mass-block structure in [CCM, Proposition 2.4 and Theorem 2.21](https://arxiv.org/pdf/hep-th/0610241).

Assume precisely the strict projection described in [canonical §3](../canonical_research.md): remove `nu_R,J nu_R` and the complete up-type Dirac sector, and restrict to
\[
B=\{(\lambda,Q_\lambda,m)\}\simeq\mathbb C\oplus M_3(\mathbb C).
\]
The surviving space consists of `d_L,d_R,e_L,e_R,nu_L` and their conjugates, with `D_light=PSP`.

**Proof.** The surviving down-quark and electron masses pair identical `B`-bimodules. After making their masses nonnegative, each sector has both involutions from Result 3, with the identity on color.

On
\[
N=\operatorname{span}(\nu_L,J\nu_L),
\]
both algebra actions are the scalar character `lambda`, and `PSP|_N=0`. Thus
\[
\gamma_N=\sigma_3,\qquad J_N=\sigma_1K,\qquad U_N=\sigma_1
\]
gives a KO-7 reduction. Combining this with `U_+` on the charged sectors gives a global KO-7 reduction.

A KO-5 reduction is impossible: the full space has dimension eighteen, so its descended space would have dimension nine, which cannot carry an antiunitary squaring to `-1`. More specifically, the neutral bimodule is inequivalent to the charged bimodules, so any permitted `U` preserves it; Result 4 already obstructs KO-5 there. ∎

Thus the anticipated claim “the neutral sector prevents any doubling” is false under the definition in Question 1.

**6. Proposition — Modifications and the distinction from physical vectorlikeness.**

For the reduced algebra `B` above, the following conclusions hold.

| Surviving neutral content | Odd reductions of the full light triple |
|---|---|
| No neutral sector | Both KO-5 and KO-7 |
| `nu_L,nu_R` and conjugates, pure Dirac mass | Both KO-5 and KO-7 |
| Only `nu_L,J nu_L` | KO-7 only |
| A single isolated Majorana pair | KO-7 only |
| General neutral Dirac–Majorana block | Always KO-7; KO-5 exactly under Result 4 |

**Proof.** The charged sectors admit both reductions by Result 3. Pure Dirac neutrinos have the same four-state construction, so adding or retaining `nu_R` restores both possibilities, including when its Dirac mass is zero.

For one generation with Dirac mass `m` and right Majorana mass `R`, the neutral symmetric matrix can be written
\[
M_N=\begin{pmatrix}0&m\\m&R\end{pmatrix}.
\]
Phase changes make `m,R` nonnegative. Its singular values are
\[
\mu_\pm=\frac{\sqrt{|R|^2+4|m|^2}\pm |R|}{2}.
\]
They coincide exactly when `R=0`. Hence any nonzero right Majorana mass obstructs KO-5 in this one-generation neutral sector, but never KO-7. Treating that sector separately leaves a charged KO-5 reduction; it does not turn the complete direct sum into a KO-5 reduction. ∎

There is an additional physically meaningful condition absent from Question 1. Let `Q` be `+1` on particles and `-1` on antiparticles.

**No-go theorem under the extra hypothesis `[U,Q]=0`.** An unpaired `nu_L` prevents doubling.

**Proof.** Such a `U` must map particle states of positive grading to particle states of negative grading within the same bimodule. No particle `nu_R` exists. The neutral involution used in Result 5 instead maps `nu_L` to its conjugate and violates `[U,Q]=0`. ∎

This is why physical chirality and doubling of the complete real triple are different tests.

**7. Proposition — Three generations and arbitrary flavor mixing.**

Assume the reduced algebra acts trivially on generation indices.

If all three right-neutrino Majorana pairs are removed and only the top Dirac sector is made heavy, the light space has
\[
96-6-12=78
\]
complex dimensions. If all three up-type sectors are removed, it has dimension fifty-four. In either case, with three surviving left neutrinos and `D_light=PSP`, the light triple admits KO-7 and excludes KO-5.

Dropping the remaining neutral sector, or retaining three right neutrinos with purely Dirac neutrino masses, permits both reductions.

**Proof.** Each surviving charged species has equal left/right flavor multiplicities. Singular-value decomposition of its mass matrix uses bimodule unitaries; conjugate transformations on antiparticles preserve `J`. Consequently every charged sector reduces to copies of Result 3, irrespective of mass rank or flavor mixing.

The three unpaired neutral states give `r=3`, `M_N=0` in Result 4, excluding KO-5 and admitting KO-7. Equivalently, the proposed descended spaces have odd dimensions thirty-nine and twenty-seven.

With three right neutrinos retained, the general neutral matrix is
\[
M_N=\begin{pmatrix}
0&Y_\nu^T\\
Y_\nu&R
\end{pmatrix},\qquad R^T=R.
\]
For `R=0`, every singular value of `Y_nu` appears twice, so both reductions exist. For general `R`, KO-7 always exists, while KO-5 exists exactly when every singular value of this six-by-six matrix has even multiplicity. Thus nonzero Majorana masses are not an unconditional obstruction in several generations; the exact obstruction is the stated multiplicity condition. ∎

**8. No-go theorem — The massless Standard Model triple is not a doubling.**

Let the algebra remain the full
\[
A=\mathbb C\oplus\mathbb H\oplus M_3(\mathbb C)
\]
with the representation of Result 5, for `g≥1` generations. Then no involution satisfying Result 2 exists, for any admissible `D`. In particular this applies at `v=0`, when only the Majorana block remains.

**Proof.** Consider the central projection
\[
e_{\mathbb H}=(0,1_{\mathbb H},0).
\]
Its represented range lies entirely in the particle left-handed sector:
\[
\dim \rho(e_{\mathbb H})H_+=8g,\qquad
\dim \rho(e_{\mathbb H})H_-=0.
\]
An algebra-linear grading-reversing unitary would identify these spaces, which is impossible.

In physical representation-ring notation,
\[
V_L=(3,2)_{1/6}\oplus(1,2)_{-1/2},
\]
\[
V_R=(3,1)_{2/3}\oplus(3,1)_{-1/3}
       \oplus(1,1)_{-1}\oplus(1,1)_0.
\]
Thus `I_G=[V_L]-[V_R]≠0`. For the complete real graded Hilbert space, the relevant gauge character is
\[
[H_+]-[H_-]=I_G-\overline{I_G},
\]
not merely `I_G`. It too is nonzero: the coefficient of `(3,2)_{1/6}` is `g`. Either this full-character calculation or the central-projection argument proves the obstruction. ∎

## Consequence for the 10 -> 9 claim

**9. Proposition — What dimension reduction is actually established.**

The heavy projection itself preserves KO-degree six, as [canonical §3 explicitly states](../canonical_research.md). Hence its spacetime product still has degree `4+6=10 mod 8`.

A subsequent choice of a KO-5 reduction removes a degree-one Clifford factor and gives the formal representative `4+5=9`. Such a reduction exists for the charged truncation or the pure-Dirac completion, but **both also admit KO-7 reductions**. Their fixed `J` does not select nine.

For the strict light spectrum with one or three unpaired left neutrinos, **KO-5 is obstructed; only KO-7 is available among the proposed reductions**. This gives the formal representative eleven, not nine. If particle preservation is additionally required, that strict light spectrum admits neither reduction.

**Proof.** These are Results 2–7. For completeness, the spacetime real structures are
\[
J_{4+5}=(J_M\gamma_M)\otimes j_5,\qquad
J_{4+7}=J_M\otimes j_7.
\]
Thus even the odd reductions require different product conventions. No finite-dimensional operation here changes heat dimension: a finite internal factor remains spectrally zero-dimensional. Consequently the claimed loss of one dimension is, at most, a chosen Clifford-factor removal—not a proved metric collapse, and not a consequence of vectorlike charged matter alone. ∎
---

## Independent numerical check (Claude, 2 Nov 2026)

We used the electrodynamics data of Result 3, with m = 0.7, J = [[0, I_2],[I_2, 0]] K and gamma = diag(1,-1,-1,1). The triple has J^2 = 1, JD = DJ and J gamma = -gamma J, so its KO-dimension is 6. Both U_+ = diag(sigma_1, sigma_1) and U_- = diag(sigma_1, -sigma_1) satisfy U^2 = 1 and U gamma = -gamma U. Both commute with random algebra elements, their opposites and D; and U_+ J = J U_+, U_- J = -J U_-. On H_0 = span(e_L, bar e_R), U_+ descends to j^2 = +1 with jd = dj (KO-7) and U_- to j^2 = -1 with jd = -dj (KO-5). For No-go 8 we also rechecked by hand the dimension count dim rho(e_H) H_+ = 8g, dim rho(e_H) H_- = 0 in the representation of Result 5.

**Terminology.** Here "doubling" means the factorization of an even triple as an odd triple times a Clifford point (the doubling of an odd triple in Dabrowski-Dossena's product construction). It is unrelated to the "fermion doubling" of the noncommutative Standard Model (Lizzi-Mangano-Miele-Sparano). Prior work on products and on J versus J gamma: [../LITERATURE.md](../LITERATURE.md), section D; the factorization criterion and the 9/11 results were not found in print.
