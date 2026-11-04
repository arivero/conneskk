**Scope.** All connections below are unitary, and all endomorphism algebras are complex. “Parallel” does not require the endomorphism to be `SU(3)`-invariant. Non-unitary connections are not classified.

The canonical obstruction is correct, but it is evadable by invariant off-diagonal connections. In particular, `K_1 + K_2 + K_3` admits both a flat invariant connection with parallel algebra `M_6(C)` and a nonflat invariant connection with parallel algebra `M_3(C)`.

## Part A — Canonical connection

**Statement.** The canonical principal connection has holonomy `SU(2)`. Consequently,
\[
\operatorname{End}_{\parallel}(K_1\oplus K_2\oplus K_3)=\mathbb C^3,
\qquad
\operatorname{End}_{\parallel}\!\left(\bigoplus_n K_n^{\oplus r_n}\right)
=\bigoplus_n M_{r_n}(\mathbb C).
\]

**Hypotheses.** Use the reductive complement in the question and the induced connections on the associated bundles.

**Proof.** Put
\[
X(v)=\begin{pmatrix}0&v\\-v^\dagger&0\end{pmatrix},\qquad v\in\mathbb C^2.
\]
Direct multiplication gives
\[
[Z,X(v)]=X(3iv),
\]
and
\[
[X(v),X(w)]=H(v,w)+\omega(v,w)Z,
\]
where
\[
\omega(v,w)=\operatorname{Im}(v^\dagger w),\qquad
H(v,w)=wv^\dagger-vw^\dagger-i\omega(v,w)I_2\in\mathfrak{su}(2).
\]
The matrices
\[
H(e_1,e_2)=
\begin{pmatrix}0&-1\\1&0\end{pmatrix},\quad
H(e_1,ie_2)=
\begin{pmatrix}0&i\\i&0\end{pmatrix},\quad
H(e_1,ie_1)=
\begin{pmatrix}i&0\\0&-i\end{pmatrix}
\]
span `su(2)`. Thus the four-dimensional off-diagonal part alone supplies all curvature directions; brackets involving `Z` supply no isotropy component.

Ambrose–Singer therefore gives holonomy Lie algebra `su(2)`, hence holonomy group `SU(2)`. Its representations on the three summands are the mutually inequivalent irreducibles of dimensions `1,2,3`. Schur’s lemma proves both assertions, including the multiplicity formula. ∎

## Part B1 — All invariant connection parameters

**Statement.** The invariant unitary connections on `E=K_1+K_2+K_3` form an affine space of real dimension **11**.

**Hypotheses.** Identify the fundamental dual with the fundamental by an `SU(2)`-equivariant unitary identification. Write
\[
E_o=\mathbb C\oplus F\oplus\operatorname{Sym}^2F,\qquad F=\mathbb C^2.
\]
Let
\[
J(z_1,z_2)=(-\overline z_2,\overline z_1),\qquad
S_v(f)=\tfrac12(v\otimes f+f\otimes v).
\]
Use the inner product on `Sym^2 F` inherited from `F tensor F`.

**Proof and parametrization.** Every invariant connection has exactly the form
\[
D:=\Lambda(Z)=i\,\operatorname{diag}(a_0,a_1I_2,a_2I_3),
\qquad a_j\in\mathbb R,
\]
\[
L(v):=\Lambda(X(v))=
\begin{pmatrix}
0&-A(v)^\dagger&0\\
A(v)&0&-B(v)^\dagger\\
0&B(v)&0
\end{pmatrix},
\]
where
\[
A(v)=pv+qJv,\qquad B(v)=rS_v+sS_{Jv},
\qquad p,q,r,s\in\mathbb C.
\]

Indeed, `Z` is isotropy-trivial, so its image lies in the skew-Hermitian isotropy commutant: three imaginary scalars. Each diagonal endomorphism block contains only integer-spin representations and therefore receives no map from the horizontal fundamental.

The off-diagonal decompositions are
\[
\operatorname{Hom}(K_1,K_2)\cong V_{1/2},\qquad
\operatorname{Hom}(K_2,K_3)\cong V_{1/2}\oplus V_{3/2},
\]
\[
\operatorname{Hom}(K_1,K_3)\cong V_1.
\]
The real fundamental is quaternionic: its real equivariant endomorphisms are precisely `v -> pv+qJv`. Each allowed pair consequently contributes four real parameters. Total:
\[
3+4+4=11.
\]
Adjoints determine the opposite blocks. ∎

For later use, the corresponding parametrizations are:

- On `E'=C^2+F`,
  \[
  \Lambda(Z)=\operatorname{diag}(D_0,ibI_2),\quad D_0\in\mathfrak u(2),
  \]
  \[
  \Lambda(X(v))=
  \begin{pmatrix}0&-T(v)^\dagger\\T(v)&0\end{pmatrix},
  \quad T(v)=v\,p+(Jv)\,q,
  \]
  with complex rows `p,q` of length two. Dimension: **13 real**.
- On `K_1+K_2`, retain just `a_0,a_1,p,q` above. Dimension: **6 real**.

## Part B2 — Curvature and holonomy

**Statement.** For every parameter choice,
\[
F_\Lambda(X,Y)
=[\Lambda(X),\Lambda(Y)]
-\Lambda([X,Y]_{\mathfrak m})
-\rho_*([X,Y]_{\mathfrak h}).
\]
In the preceding coordinates,
\[
F_\Lambda(Z,X(v))=[D,L(v)]-L(3iv),
\]
\[
F_\Lambda(X(v),X(w))
=[L(v),L(w)]-\omega(v,w)D-\rho_*(H(v,w)).
\]

There is also an exhaustive dichotomy that substantially simplifies holonomy:
\[
\boxed{\ \mathfrak k/\mathfrak{hol}=0\ \text{or}\ \mathfrak{su}(3)\ },
\qquad
\mathfrak k=\operatorname{Lie}_{\mathbb R}
\langle\rho_*(\mathfrak h),\Lambda(\mathfrak m)\rangle.
\]

**Hypotheses.** The base is `SU(3)/SU(2)`, and the connection is invariant and unitary.

**Proof.** Extend the connection map to
\[
W:\mathfrak{su}(3)\longrightarrow\mathfrak u(N),
\qquad W(A+X)=\rho_*(A)+\Lambda(X).
\]
The curvature formula follows by applying the Maurer–Cartan equation.

The precise holonomy result used is **Wang’s Theorem 3**, pp. 17–18: the holonomy algebra is the linear span of curvature values and their iterated brackets with `W(g)`. [Wang, *On Invariant Connections over a Principal Fibre Bundle*](https://www.cambridge.org/core/services/aop-cambridge-core/content/view/7AC585E9DDCEF66E15F24C3481EEF592/S0027763000023461a.pdf#page=17).

Explicitly, set
\[
\mathcal H_0=\operatorname{span}_{\mathbb R}\{F_\Lambda(X,Y)\},
\qquad
\mathcal H_{j+1}=\mathcal H_j+[W(\mathfrak g),\mathcal H_j].
\]
Then
\[
\mathfrak{hol}=\mathcal H_{N^2}.
\]
Stabilization occurs within this bound because these are increasing subspaces of `u(N)`. The `rho_*(h)` brackets can be omitted: equivariance makes every stage isotropy-stable.

In particular, `hol` is an ideal in `k`. Modulo this ideal, the curvature identity says that `W` is a Lie algebra homomorphism. Its image generates—and therefore equals—`k/hol`. Simplicity of `su(3)` proves the dichotomy.

Since `k` has the positive invariant inner product `-tr(AB)`, its ideal `hol` has a commuting ideal complement. In the nonzero-quotient case,
\[
W(Y)=R_*(Y)+C(Y),
\]
where `R_*` is a representation of `su(3)` and every `C(Y)` commutes with `R_*(su(3))`.

The exceptional cases below list every possibility with nonzero quotient and give their holonomy explicitly. **For every other connection,**
\[
\boxed{\mathfrak{hol}=\mathfrak k.}
\]
Thus holonomy for all parameters is determined by the explicit exceptional formulas or the finite matrix bracket closure above. ∎

## Part B3 — Complete parallel-algebra classification

**Statement.** For `E`, the possible algebras are exactly
\[
\boxed{\mathbb C,\ \mathbb C^2,\ \mathbb C^3,\
M_3(\mathbb C),\ M_3(\mathbb C)\oplus\mathbb C,\ M_6(\mathbb C).}
\]
For `E'`, they are exactly
\[
\boxed{\mathbb C,\ \mathbb C^2,\ \mathbb C^3,\
M_2(\mathbb C)\oplus\mathbb C,\
M_3(\mathbb C)\oplus\mathbb C,\ M_4(\mathbb C).}
\]

**Hypotheses.** Continue with unitary connections and the normalizations of B1. Normal forms below are up to an isotropy-equivariant unitary change of fibre coordinates.

### 1. The bundle `E=K_1+K_2+K_3`

Here are all exceptional parameter families. In the table, `t,u` are arbitrary real numbers.

| Family | `(a_0,a_1,a_2)` | `A(v)` | `B(v)` | Parallel algebra |
|---|---|---|---|---|
| Symmetric square | `(t-4,t-1,t+2)` | `sqrt(2) v` | `sqrt(2) S_v` | `M_6(C)` |
| Tensor product | `(t+1,t-2,t+1)` | `-Jv/sqrt(2)` | `S_v` | `M_3(C)` |
| Direct sum | `(t-2,t+1,u)` | `v` | `0` | `M_3(C)+C` |

Include also the **dual families**: replace every horizontal argument `v` by `Jv` and negate the fixed weight shifts in the second column, leaving `t,u` unchanged. Independent unit phases on the nonzero `A,B` blocks are allowed.

For every parameter choice outside these families, let `e` be the number of nonzero maps among `A,B`. Then
\[
\boxed{\operatorname{End}_{\parallel}(E)=\mathbb C^{\,3-e}.}
\]

The exceptional holonomies have the following concrete descriptions. Let `U` denote the defining three-dimensional `SU(3)` representation, or its dual; put `V_2=Sym^2 F` and let `theta(Z)=1`, `theta(X(v))=0`.

- **Symmetric square:** identify `E_o=(Sym^2 U)|_H` and take
  \[
  \Lambda(X)=(\operatorname{Sym}^2U)_*(X)+it\theta(X)I_6.
  \]
  Then
  \[
  \mathfrak{hol}=\mathbb R(itI_6).
  \]
  At `t=0` the connection is flat.

- **Tensor product:** identify `E_o=U|_H\otimes F`, with diagonal isotropy action, and take
  \[
  \Lambda(X)=U_*(X)\otimes I_2+it\theta(X)I_6.
  \]
  Then
  \[
  \mathfrak{hol}=I_3\otimes\mathfrak{su}(2)+\mathbb R(itI_6).
  \]
  This is the nonflat example with parallel algebra `M_3(C)`.

- **Direct sum:** identify `E_o=U|_H\oplus V_2` and take
  \[
  \Lambda(X)=
  \bigl(U_*(X)+it\theta(X)I_3\bigr)\oplus iu\theta(X)I_3.
  \]
  Then
  \[
  \mathfrak{hol}
  =(0\oplus(V_2)_*(\mathfrak{su}(2)))
  +\mathbb R\,i\operatorname{diag}(tI_3,uI_3).
  \]

### 2. The bundle `E'=K_1+K_1+K_2`

Its exceptional connections have fibre model `U|_H+C` and
\[
\Lambda(X)=
\bigl(U_*(X)+it\theta(X)I_3\bigr)\oplus iu\theta(X).
\]
Consequently,
\[
\mathfrak{hol}=\mathbb R\,i\operatorname{diag}(tI_3,u),
\]
and
\[
\boxed{
\operatorname{End}_{\parallel}(E')=
\begin{cases}
M_4(\mathbb C),&t=u,\\
M_3(\mathbb C)\oplus\mathbb C,&t\ne u.
\end{cases}}
\]

Explicitly, these are precisely the normal forms
\[
T(v)=(v,0),\quad
D_0=i\operatorname{diag}(t-2,u),\quad b=t+1,
\]
or
\[
T(v)=(Jv,0),\quad
D_0=i\operatorname{diag}(t+2,u),\quad b=t-1.
\]

For every nonexceptional connection, define subspaces of the two-dimensional singlet space by
\[
U_0=\operatorname{span}_{\mathbb C}\{p^\dagger,q^\dagger\},\qquad
S=\operatorname{span}_{\mathbb C}\{D_0^jU_0:j\ge0\}.
\]
Then:

| Condition | Parallel algebra |
|---|---|
| `dim S=2` | `C` |
| `dim S=1` | `C+C` |
| `S=0`, `D_0` has distinct eigenvalues | `C+C+C` |
| `S=0`, `D_0` is scalar | `M_2(C)+C` |

In particular, the canonical connection is the last case with `D_0=b=T=0`.

### 3. The bundle `K_1+K_2`

The exceptional connections are
\[
\Lambda(X)=U_*(X)+it\theta(X)I_3,
\]
with
\[
\mathfrak{hol}=\mathbb R(itI_3),\qquad
\operatorname{End}_{\parallel}=M_3(\mathbb C).
\]
In B1’s parameters, their loci are
\[
q=0,\quad |p|=1,\quad a_1-a_0=3,
\]
or
\[
p=0,\quad |q|=1,\quad a_1-a_0=-3.
\]
Outside these loci, the parallel algebra is `C+C` when `A=0`, and `C` when `A` is nonzero.

### Proof of exhaustiveness and the algebra formulas

Because `S^5` is simply connected, evaluation at the base point identifies parallel endomorphisms with the commutant of the holonomy Lie algebra.

First suppose `hol=k`. Every such endomorphism commutes with isotropy.

For `E`, Schur’s lemma makes it
\[
\operatorname{diag}(c_0,c_1I_2,c_2I_3).
\]
Commuting with `L(v)` imposes `c_0=c_1` exactly when `A` is nonzero and `c_1=c_2` exactly when `B` is nonzero. This proves `C^(3-e)`.

For `E'`, an isotropy-commuting endomorphism is `Q+cI_F`, with `Q` acting on the singlets. The remaining equations are
\[
[Q,D_0]=0,\qquad T(v)Q=cT(v),\qquad QT(v)^\dagger=cT(v)^\dagger.
\]
They force `Q=cI` on `S` and forbid mixing between `S` and `S^\perp`. Since `D_0` is skew-Hermitian, both subspaces are invariant. On `S^\perp`, `Q` is arbitrary subject to commuting with `D_0`. This gives exactly the four cases in the table. The three-dimensional case follows identically.

It remains to classify the nonzero-quotient case from B2. Write
\[
W=R_*+C,\qquad [R_*(\mathfrak g),C(\mathfrak g)]=0.
\]
On isotropy,
\[
\rho_*(A)=R_*(A)+C(A),
\]
and `C|_h` is itself a representation into the centralizer of `R`.

The `SU(3)` dimension formula
\[
\dim V_{a,b}=\frac{(a+1)(b+1)(a+b+2)}2
\]
shows that the only nontrivial irreducibles of dimension at most six are
`3`, its dual, `6=Sym^2(3)`, and its dual. Thus, in dimension six, the possible nontrivial `R` are:

1. **An irreducible six.** Its centralizer is scalar, so `C|_h=0`. Its restriction is `1+2+3`, giving the symmetric-square family.
2. **Two equivalent threes.** Write the fibre as `U tensor C^2`. Its centralizer is `u(2)`. Matching isotropy requires the fundamental action on the multiplicity space, since
   \[
   (1+2)\otimes2=2+(1+3).
   \]
   This gives the tensor-product family.
3. **A three plus three trivial representations.** Matching isotropy requires the spin-one action on the trivial three-dimensional part. This gives the direct-sum family.
4. **A three plus its inequivalent dual.** The centralizer is Abelian, so `C|_h=0`; the restriction is `1+1+2+2`, which is excluded.

In each admissible case, the centralizer, acted on by `C(h)`, contains **no fundamental representation**. Therefore
\[
C(X(v))=0.
\]
Its isotropy-fixed part supplies exactly the scalar `Z` terms displayed above. This proves exhaustiveness, including all parameter restrictions.

The numerical coefficients in the parameter table follow directly from normalized tensor decompositions: in `Sym^2 U`, the normalized mixed tensors give `A=sqrt(2)v` and `B=sqrt(2)S_v`; in `U tensor F`, the unit singlet
\[
(e_1\otimes e_2-e_2\otimes e_1)/\sqrt2
\]
gives `A=-Jv/sqrt(2)` and `B=S_v`.

In dimensions four and three, the only possible nontrivial `R` is respectively `U+1` or `U`. Their centralizers are Abelian, forcing `C|_h=0` and yielding precisely the exceptional families already listed.

Finally, substituting these families into the curvature formula gives their stated holonomies: the brackets of horizontal vectors span `h+RZ`, so the displayed isotropy and central curvature directions are all attained. Taking commutants gives the asserted matrix algebras. All ordinary algebra cases occur, for example by setting `D=0` and choosing the indicated nonzero mixing blocks; the remaining repeated-singlet cases follow by choosing `D_0` scalar or with distinct eigenvalues. ∎

## Verdict on corpus claim

Section 8’s assertion for the **homogeneous horizontal/Berry connection** is correct, including its multiplicity formula. That is the scope explicitly stated in [the canonical-connection discussion](../historical/corpus/canonical_research.md).

The obstruction is **not robust under all `SU(3)`-invariant unitary connections**:

- `E` admits a flat connection with parallel algebra `M_6(C)`.
- `E` also admits a nonflat connection with parallel algebra `M_3(C)`.
- `E'` admits a flat connection with parallel algebra `M_4(C)`, besides its canonical `M_2(C)+C`.

These connections use the off-diagonal freedom identified in [section 9](../historical/corpus/canonical_research.md). For block-diagonal invariant connections on `E`, the algebra remains `C+C+C`.

The crucial distinction is that a parallel endomorphism need not be invariant under the transitive `SU(3)` action. Applying isotropy Schur’s lemma to every parallel endomorphism would incorrectly exclude the exceptional families.
---

## Independent numerical check (Claude, 2 Nov 2026)

Wang's closure was computed directly. hol is the real span of the curvature values F(X,Y) = [L X, L Y] - L([X,Y]_m) - rho([X,Y]_h), for X, Y in a basis of m, closed under brackets with W(su(3)). The parallel algebra is its complex commutant in M_6(C). Isotropy SU(2) sits in the upper-left block; m is spanned by Z = i diag(1,1,-2) and the four real off-diagonal directions.

| connection on K_1+K_2+K_3 | dim_R hol | dim_C parallel algebra | max abs(F) |
|---|---|---|---|
| canonical, Lambda = 0 | 3 | 3 (C+C+C) | 2.0 |
| Sym^2 U family, t = 0 | 0 (flat) | 36 (M_6(C)) | 9e-16 |
| Sym^2 U family, t = 0.7 | 1 | 36 (M_6(C)) | 0.7 |
| U (x) F family, t = 0 | 3 | 9 (M_3(C)) | 1.0 |
| U (x) F family, t = 0.7 | 4 | 9 (M_3(C)) | 1.7 |
| U (x) F family plus a generic skew-Hermitian Z-term | 36 | 1 (C) | 2.0 |

All six rows agree with Parts A and B3. The isotropy models are the ones used above: Sym^2(C^3) restricted to SU(2) is 1+2+3, and C^3 (x) C^2 restricted to SU(2) is (2+1)(x)2 = 1+2+3.
