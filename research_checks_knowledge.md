# Technical content of the research_limits check scripts

*This file is historical record, the ground the project started from (2 November 2026). Its claims are carried in `ledger.pl` as corpus rows, 62 of the 84 without an outside checker. Where a lemma in `lemmas/` corrects or supersedes a statement here, the lemma governs. No result of the papers rests on this file (`reviews/2026-11-04_unchecked_claims_audit.md`). A full reading, to carry forward the ideas that remain open, is in progress (4 November 2026, `CORPUS_SALVAGE.md`).*

Source folder: `research_limits/` (scripts removed after this extraction; recover them with `git show 54445a4:unzipped/zip_B_1800/research_limits/<name>`). This file records the mathematics and the recorded results of
`checks.py`, `solidification_checks.py`, `nine_dimensional_checks.py`, `canonical_checks.py`,
`paper_assets/make_heat_figure.py` and their JSON outputs (folded into section 7), so that the scripts can be removed.
The papers they support are `research_note.md` (first stage), `solidification.md` (second stage),
`nine_dimensional_construction.md` and the consolidated `canonical_research.md`.

**Reproduction status (2 Nov 2026 review).** A copy of the folder was run in a scratch directory with numpy 2.3.5 and
matplotlib 3.10.7. Every assertion passed. The regenerated `solidification_verification.json` and
`canonical_verification.json` are byte-identical to the recorded ones. `verification.json` differs only in
floating residuals (e.g. fuzzy `order_zero` for N=5,8 is 0.0 instead of about 2e-15; `order_one` differs at the
1e-14 level). `nine_dimensional_verification.json` differs only in the last printed digit of three values.
The zip_A copies of all four check scripts and JSON files are identical to zip_B, except for one comment in
`canonical_checks.py`, which relabels the Wilson-line block as phase arithmetic on supplied analytic inputs (see §6, item 4).

---

## 0. Shared conventions

* Pauli matrices $\sigma_x,\sigma_y,\sigma_z$; $I_n$ identity.
* Column vectorization: $\mathrm{vec}(X)_{i+nj}=X_{ij}$, so $(I\otimes a)\,\mathrm{vec}X=\mathrm{vec}(aX)$,
  $(b^T\otimes I)\,\mathrm{vec}X=\mathrm{vec}(Xb)$, and in general $(A\otimes B)\mathrm{vec}X=\mathrm{vec}(BXA^T)$.
  The transposition operator $T\,\mathrm{vec}X=\mathrm{vec}X^T$ has entries $T[k+n i,\,i+n k]=1$.
* Antiunitaries are written $J=UK$ with $K$ one complex conjugation of all coefficients. The tested identities are
  $J^2=U\bar U$, $JD=DJ \Leftrightarrow U\bar D=DU$, $J\gamma=\mp\gamma J\Leftrightarrow U\bar\gamma=\mp\gamma U$,
  and the opposite action $b^\circ=Jb^*J^{-1}=U\,b^T U^\dagger$.
* "Real dimension" of a set of complex matrices means the rank of the real matrix whose columns are
  $(\mathrm{Re\,vec}\,a,\mathrm{Im\,vec}\,a)$. Tolerances: numpy default (`checks.py`), 1e-9 (`nine_dimensional`,
  `canonical`), singular values above 1e-10 (`solidification` null spaces).
* Complex commutant dimension of generators $t_k$ on $\mathbb C^n$: $n^2-\mathrm{rank}\big[\,I\otimes t_k-t_k^T\otimes I\,\big]_k$.
* Residuals are Frobenius norms unless stated. "Exact" below means Python `Fraction`/integer arithmetic.

---

## 1. `checks.py` → `verification.json`

Supports `research_note.md` §§2–7 and `canonical_research.md` §2.1 (example), §3 (hypercharges), §4
(twistor), §14.2 (lepton anomalies). Produces `dimension_window.png` and `dimension_staircase.png`.

### 1.1 Real fuzzy-sphere family (`fuzzy(N, shift)`)

Cases: $N\in\{2,3,5,8\}$, shift $c\in\{0,1\}$ (8 cases). Floating point, all residuals asserted $<10^{-9}$.

Construction, $H_N=\mathbb C^2_{\rm copy}\otimes\mathbb C^2_{\rm spin}\otimes M_N(\mathbb C)$, dimension $4N^2$:

* Spin $j=(N-1)/2$ matrices: $m=-j,\dots,j$; $L_+[k+1,k]=\sqrt{(j-m_k)(j+m_k+1)}$;
  $L_1=(L_++L_-)/2$, $L_2=(L_+-L_-)/(2i)$, $L_3=\mathrm{diag}(m)$.
* $\delta_i=I\otimes L_i-L_i^T\otimes I$ (so $\delta_iX=[L_i,X]$).
* $D_0=\sum_i\sigma_i\otimes\delta_i+c\,1$, $D=\sigma_1\otimes D_0$, $\gamma=\sigma_3\otimes 1$.
* $J=UK$, $U=\sigma_1\otimes i\sigma_2\otimes T$ (copy flip, spin charge conjugation, $X\mapsto X^*$ after $K$).
* $L(a)=I_4\otimes(I\otimes a)$ (left multiplication), $R(b)=I_4\otimes(b^T\otimes I)$ (right multiplication);
  $a,b$ random complex Gaussian $N\times N$ (seed $713+N$).

Identities tested: $D=D^\dagger$; $D\gamma+\gamma D=0$; $J^2=-1$; $JD=DJ$; $J\gamma=-\gamma J$ (KO-dimension 2 signs);
$J\,L(b^*)\,J^{-1}=R(b)$; order zero $[L(a),R(b)]=0$; order one $[[D,L(a)],R(b)]=0$.
Recorded residuals: 0.0 for most entries; largest is `order_one` = 7.6e-14 (N=8, c=0).

Spectrum: eigenvalues asserted integral to 1e-9 and equal, as a multiset, to the prediction
$D_0$: eigenvalue $\ell+c$ with multiplicity $2\ell+2$ and $c-\ell-1$ with multiplicity $2\ell$, $\ell=0,\dots,N-1$;
$D=\sigma_1\otimes D_0$ has $\pm$ each. Recorded spectra (eigenvalue: multiplicity, symmetric in sign):

| N | c | dim | spectrum |
|---|---|---|---|
| 2 | 0 | 16 | 0:4, ±1:4, ±2:2 |
| 2 | 1 | 16 | ±1:4, ±2:4 |
| 3 | 0 | 36 | 0:4, ±1:4, ±2:8, ±3:4 |
| 3 | 1 | 36 | ±1:4, ±2:8, ±3:6 |
| 5 | 0 | 100 | 0:4, ±1:4, ±2:8, ±3:12, ±4:16, ±5:8 |
| 5 | 1 | 100 | ±1:4, ±2:8, ±3:12, ±4:16, ±5:10 |
| 8 | 0 | 256 | 0:4, ±1:4, ±2:8, …, ±7:28, ±8:14 |
| 8 | 1 | 256 | ±1:4, ±2:8, …, ±7:28, ±8:16 |

General pattern: $|\lambda|=k$ ($1\le k\le N-1$) has multiplicity $4k$ per sign in both cases; $|\lambda|=N$ has
$2(N-1)$ per sign at $c=0$ and $2N$ at $c=1$; $c=0$ has a 4-dimensional kernel and $c=1$ has none
(the paper's "permitted scalar shift removes the zero modes").

### 1.2 Heat-dimension window (`spectrum`, `heat_and_dimension`, `make_plot`)

Squared eigenvalues of one factor (with $\pm$ folded into multiplicity): $(\ell+c)^2$ with multiplicity $4\ell+4$,
$(c-\ell-1)^2$ with multiplicity $4\ell$. For $c=0$ this is the paper's closed form, with $x=s/R^2$,
$$K_N(x)=4+8\sum_{k=1}^{N-1}k\,e^{-xk^2}+4(N-1)e^{-xN^2},$$
with regimes $4N^2$ ($x\ll N^{-2}$), $\approx4/x$ ($N^{-2}\ll x\ll1$), $4$ ($x\gg1$).

Effective dimension of one factor: $d(s)=-2\,\frac{d\log K}{d\log s}=2s\,\frac{\sum m\lambda^2e^{-s\lambda^2}}{\sum m\,e^{-s\lambda^2}}$.
Plotted total: $4+3d(s)$ (four spacetime dimensions plus three identical fuzzy factors), $c=0$, $N\in\{12,48,192\}$,
$s/R^2\in[10^{-8},10^2]$ (600 log points). Recorded samples of $4+3d$:

| $s/R^2$ | N=12 | N=48 | N=192 |
|---|---|---|---|
| 1e-8 | 4.0000043 | 4.0000691 | 4.0011058 |
| 1e-4 | 4.0427935 | 4.6643380 | 9.4308837 |
| 1e-2 | 7.2687139 | 9.9504330 | 9.9504330 |
| 1 | 7.4330056 | 7.4330056 | 7.4330056 |
| 100 | 4.0 | 4.0 | 4.0 |

Content: fixed-$N$ ultraviolet exponent 4, a middle plateau tending to 10 as $N$ grows, and infrared value 4 from the
$4^3$-dimensional kernel; the order-of-limits statement
$\lim_N\lim_{s\to0}d_{\rm eff}=4$, $\lim_{s\to0}\lim_N d_{\rm eff}=10$.

### 1.3 Two-circle staircase (`circle_dimension`, `make_circle_plot`)

Circle heat trace $K_r(s)=\sum_{n\in\mathbb Z}e^{-sn^2/r^2}$, $x=s/r^2$. Dimension $d=-2\,d\log K/d\log s$ evaluated as
* $x\le1$ (Poisson-resummed, $m=1..29$): $d=1-\dfrac{4\pi^2}{x}\dfrac{\sum m^2e^{-\pi^2m^2/x}}{1+2\sum e^{-\pi^2m^2/x}}$;
* $x>1$ ($n=1..29$): $d=4x\dfrac{\sum n^2e^{-xn^2}}{1+2\sum e^{-xn^2}}$.

Plot: $9+d(s/a^2)+d(s/b^2)$ with $a=1$, $b=0.02$, $s/a^2\in[10^{-7},10^2]$ (700 points); windows at 9, 10, 11
(5-dimensional base plus spacetime assumed resolved). Figure caption text: "Heat dimension alone does not supply a
chiral projection." No numbers recorded in JSON.

### 1.4 Standard Model finite mass map (`sm_checks`)

One generation, particle sector only, $Q=T_3+Y$. Left space $\mathbb C^8$ ordered $(u_c,d_c)$ for $c=1,2,3$, then $(\nu,e)$;
right space $\mathbb C^8$ ordered $u_R^{1,2,3},d_R^{1,2,3},\nu_R,e_R$.

* $Y_L=\mathrm{diag}(1/6\times6,\,-1/2\times2)$, $Y_R=\mathrm{diag}(2/3\times3,\,-1/3\times3,\,0,\,-1)$,
  $T_a^L=I_4\otimes\sigma_a/2$, $T_a^R=0$.
* Yukawas $(y_u,y_d,y_\nu,y_e)=(0.9,0.4,0.2,0.1)$; $\tilde h=i\sigma_2\bar h$.
* $M(h)$ ($8\times8$, right→left): column $u_R^c$ = $y_u\tilde h$ in rows $(u_c,d_c)$; column $d_R^c$ = $y_dh$;
  column $\nu_R$ = $y_\nu\tilde h$ in rows $(\nu,e)$; column $e_R$ = $y_eh$. Vacuum $h_0=(0,1/\sqrt2)$.

Tested (tolerance 1e-12):
* Electromagnetic intertwining $Q_LM=MQ_R$, $Q_L=T_3^L+Y_L$, $Q_R=Y_R$: residual 2.4e-17.
* $\mathrm{rank}\,M(h_0)=8$ (invertible when all four Yukawas are nonzero).
* $SU(2)$ covariance $M(uh)=(I_4\otimes u)M(h)$ for $u=\exp(i\,0.185\,\sigma_x)$.
* Hypercharge covariance $M(e^{i\theta/2}h)=e^{i\theta Y_L}M(h)e^{-i\theta Y_R}$, $\theta=0.37$ ($\tilde h$ carries the opposite phase).
* Gauge mass form: generators $(T_1,0),(T_2,0),(T_3,0),(Y_L,Y_R)$; links $\ell_A=A_LM-MA_R$;
  Gram $G_{AB}=\mathrm{Re\,Tr}(\ell_A^\dagger\ell_B)$. Asserted rank 3, $G(0,0,1,1)^T=0$, and
  $$G=G_{11}\begin{pmatrix}1&0&0&0\\0&1&0&0\\0&0&1&-1\\0&0&-1&1\end{pmatrix},\qquad G_{11}=0.37=\tfrac18(3y_u^2+3y_d^2+y_\nu^2+y_e^2).$$
  The null direction $T_3+Y=Q$ is the photon; three massive directions. Gauge couplings are absent (effectively $g=g'=1$).
* Exact anomaly arithmetic (right-handed fields counted with reversed sign):
  leptons $SU(2)^2Y=(-\tfrac12)(\tfrac12)=-\tfrac14$; quarks $3\cdot\tfrac16\cdot\tfrac12=\tfrac14$;
  leptons $Y^3=2(-\tfrac12)^3+1=\tfrac34$; quarks $Y^3=3[2(\tfrac16)^3+(-\tfrac23)^3+(\tfrac13)^3]=-\tfrac34$.
* Recorded charge multiplets under $SU(3)\times U(1)_{\rm em}$, left and right:
  $(3,2/3),(3,-1/3),(1,0),(1,-1)$. These are typed in as literals; only $Q_LM=MQ_R$ is computed.

### 1.5 Twistor checks (`twistor_checks`)

Clifford data on $\mathbb C^4$: $\Gamma_{1,2,3}=\sigma_x\otimes\sigma_{x,y,z}$, $\Gamma_4=\sigma_y\otimes I$, $\Gamma_5=\sigma_z\otimes I$.
(In this basis $\Gamma_1\Gamma_2\Gamma_3\Gamma_4\Gamma_5=-I$, computed during the review.) Quaternionic structure
$j=U_jK$, $U_j=\Gamma_2\Gamma_4=\sigma_z\otimes i\sigma_y=\begin{pmatrix}0&1&0&0\\-1&0&0&0\\0&0&0&-1\\0&0&1&0\end{pmatrix}$.

Asserted (1e-12): $\{\Gamma_a,\Gamma_b\}=2\delta_{ab}$; $j^2=-1$; $j\Gamma_a=\Gamma_aj$ for all $a$; the 16 matrices
$\{I,\Gamma_a,\Gamma_a\Gamma_b\,(a<b)\}$ have real dimension 16 (the real form $M_2(\mathbb H)$ = commutant of $j$).

Hopf/twistor map $\mathbb{CP}^3\to S^4$: for 30 random unit $w\in\mathbb C^4$ (seed 4096), $x_a=w^\dagger\Gamma_aw$
satisfies $|x|^2=1$ (max error 6.7e-16), and $w'=\cos(0.43)w+e^{0.2i}\sin(0.43)\,jw$ (same quaternionic line, same
twistor fibre) gives the same $x$ (max error 2.9e-16).

Finite real triple, $H=\mathrm{Hom}(E,F)\oplus\mathrm{Hom}(F,E)=\mathbb C^{16}\oplus\mathbb C^{16}$, $E=\mathbb H^2\cong\mathbb C^4$
(indices 0,1 right-handed, 2,3 left-handed; $\Gamma=\mathrm{diag}(1,1,-1,-1)$), $F=\mathbb C^4$ (index 0 lepton line,
1–3 colour):
* $\rho(a,b)=\mathrm{diag}(I_4\otimes b,\;I_4\otimes a)$, i.e. $(\xi,\eta)\mapsto(b\xi,a\eta)$.
* $\gamma=\mathrm{diag}(-\Gamma^T\otimes I_4,\;I_4\otimes\Gamma)$, i.e. $(\xi,\eta)\mapsto(-\xi\Gamma,\Gamma\eta)$.
* $J=U_JK$, $U_J=\begin{pmatrix}0&T\\T&0\end{pmatrix}$ ($T$ = 16×16 transposition), i.e. $J(\xi,\eta)=(\eta^*,\xi^*)$.
* Matched algebra elements (random): $a=\mathrm{diag}(\lambda,\bar\lambda)\oplus q$, $q=\begin{pmatrix}z&w\\-\bar w&\bar z\end{pmatrix}$;
  $b=\lambda\oplus m$, $m\in M_3(\mathbb C)$. Same $\lambda$ in both (scalar matching).
* Dirac operator from Yukawa input: $D(\xi,\eta)=(P_\ell\xi Y_\ell+P_c\xi Y_q,\;Y_\ell\eta P_\ell+Y_q\eta P_c)$ with
  $P_\ell=\mathrm{diag}(1,0,0,0)$, $P_c=1-P_\ell$, $Y_\ell=\begin{pmatrix}0&M_\ell\\M_\ell&0\end{pmatrix}$, $M_\ell=\mathrm{diag}(y_\nu,y_e)=\mathrm{diag}(0.03,0.2)$,
  $Y_q$ likewise with $\mathrm{diag}(y_u,y_d)=\mathrm{diag}(0.9,0.4)$.

Tested (asserted $<10^{-11}$; all recorded residuals exactly 0.0): $J^2=+1$; $J\gamma=-\gamma J$; $D=D^\dagger$; $JD=DJ$;
$D\gamma=-\gamma D$; $[\gamma,\rho(a)]=0$; order zero $[\rho(a),J\rho(b)^*J^{-1}]=0$; order one
$[[D,\rho(a)],J\rho(b)^*J^{-1}]=0$. These are the KO-dimension-6 signs. (Spectrum of this $D$, computed during the
review: $\pm0.9,\pm0.4$ with multiplicity 6 per sign, $\pm0.2,\pm0.03$ with multiplicity 2 per sign; no kernel.)

Recorded dimensions: `quaternionic_real_algebra_dimension` 16 (computed), `base_linear_image_dimension` 6
(span of $1,\Gamma_a$; literal), `full_twistor_real_algebra_dimension` 32 (literal here; computed in
`nine_dimensional_checks.py`), `matched_SM_algebra_real_dimension` $6+20-2=24$ (literal:
$\dim(\mathbb C\oplus\mathbb H)+\dim(\mathbb C\oplus M_3\mathbb C)-2$ for the matched scalar), `finite_Hilbert_dimension` 32.
Recorded caveat: two module actions, scalar matching, unimodularity and Yukawas are inputs; orientability fails on
the neutral right-handed sector.

---

## 2. `solidification_checks.py` → `solidification_verification.json`

Supports `solidification.md` §2 (multiscale/seesaw), §3 (Majorana centralizer, first-order failure), §4
(electromagnetic centralizer, table 40/24/20, 21/12/9, 32/30/18, unimodularity traces), §5 (CP3 index), §6 (cone
inflow vs hypercharge); `canonical_research.md` §2.2, §3, §11.1, §11.3. Uses the module, $\gamma$ and $J$ of §1.5
(Pauli matrices imported from `checks.py`).

### 2.1 Parent algebra and index map

Real basis of $A_{PS}=\mathbb H_R\oplus\mathbb H_L\oplus M_4(\mathbb C)$, 40 elements: $q\in\{I,i\sigma_x,i\sigma_y,i\sigma_z\}$
placed in $a[0{:}2,0{:}2]$ ($\mathbb H_R$) or $a[2{:}4,2{:}4]$ ($\mathbb H_L$), and $E_{rc}$, $iE_{rc}$ in $b$.

State indices: $\xi\in\mathrm{Hom}(E,F)$ stored as $X[f,e]$ at index $f+4e$ (0–15); $\eta\in\mathrm{Hom}(F,E)$ stored
as $X[e,f]$ at index $16+e+4f$. With $e_0,e_1$ right-handed (up, down), $e_2,e_3$ left-handed (up, down),
$f_0$ lepton, $f_{1,2,3}$ colours: index 0 is $\nu_R=|f_0\rangle\langle e_0|$, index 16 is its conjugate $J\xi_0$.

### 2.2 Heavy operators

* Majorana $T_R$: entries $(0,16)$ and $(16,0)$ equal 1, i.e. $T_R=|\xi_0\rangle\langle J\xi_0|+|J\xi_0\rangle\langle\xi_0|$. Rank 2.
* Top/up-type $T_u$: for $c=1,2,3$, symmetric entries $(c,c+8)$ coupling $\xi(f_c,e_0)=u_R^c$ with $\xi(f_c,e_2)=u_L^c$,
  and $(16+4c,\,16+4c+2)$ for the conjugates. Equal for all colours. Rank 12.
* Asserted (1e-12): both Hermitian, $J$-real ($U_J\bar T=TU_J$), odd ($\gamma T=-T\gamma$); $T_RT_u=0$ (disjoint supports).

### 2.3 Centralizers and gauge algebras

| Quantity | Parent | $\cap\{T_R\}'$ | $\cap\{T_R,T_u\}'$ |
|---|---|---|---|
| Real algebra dimension | 40 | 24 ($\mathbb C\oplus\mathbb H\oplus M_3\mathbb C$) | 20 ($\mathbb C\oplus M_3\mathbb C$) |
| Gauge Lie algebra dimension | 21 | 12 | 9 |
| Strict light Hilbert dimension | 32 | 30 | 18 |

* Algebra centralizers: real null space of the stacked real-vectorized commutators $[T,\rho(x)]$ over the 40-element basis.
* Gauge generators (21): $i\sigma_a$ in the $\mathbb H_R$ and $\mathbb H_L$ blocks (3+3); $\mathfrak{su}(4)$ as
  $E_{rc}-E_{cr}$, $i(E_{rc}+E_{cr})$ ($r<c$, 12) and $i(E_{rr}-E_{33})$, $r=0,1,2$ (3). Each lifted to the adjoint
  action $X\mapsto\rho(X)+J\rho(X)J^{-1}$ before taking centralizers (unimodular lift inherited from the parent).
  Results 12 ($\mathfrak{su}(3)\oplus\mathfrak{su}(2)\oplus\mathfrak u(1)$) and 9 ($\mathfrak{su}(3)\oplus\mathfrak u(1)_{\rm em}$).
* The light Hilbert dimensions 32/30/18 are typed in; they agree with the computed ranks 2 and 12 on disjoint
  supports ($32-2-12=18$). The 18 states: $d_R,d_L$ (3 colours each), $e_R,e_L,\nu_L$ and their conjugates.
* All 24 elements of $A_{PS}\cap\{T_R\}'$ commute with $T_R$ to $<10^{-10}$.

First-order failure of $T_R$ on the parent: $p_F=\rho(0,I_4)$ (central projection $e_F$), $p_F^\circ=Jp_F^*J^{-1}$;
$\|[[T_R,p_F],p_F^\circ]\|_F=\sqrt2=1.4142135623730951$ (asserted $>1$).

### 2.4 Unimodularity trace

Remove indices 0 and 16 (the Majorana pair). Generators: $\lambda$-phase $a=\mathrm{diag}(i,-i,0,0)$, $b=\mathrm{diag}(i,0,0,0)$;
common colour phase $a=0$, $b=\mathrm{diag}(0,i,i,i)$. $\mathrm{Im\,Tr}\,\rho$: full module $(4,12)$, after removal
$(2,12)$ (asserted exactly). Equivalently $\det\rho=(\lambda\det m)^4$ on 32 states and $\lambda^2(\det m)^4$ on 30 states,
so a determinant-one condition reimposed after projection changes the hypercharge constraint.

### 2.5 Exact topological arithmetic

* Spin Dirac on $\mathbb{CP}^3$ twisted by $\mathcal O(k)$: $\mathrm{ind}=\int e^{kh}(1-h^2/6)=(k^3-k)/6$ (from $c_1=4h$,
  $p_1=4h^2$, $\int h^3=1$). Recorded for $k=-5..5$: $-20,-10,-4,-1,0,0,0,1,4,10,20$. Asserted $\mathrm{ind}(3)=4$
  (four sections of $\mathcal O(1)$, since $S=\Lambda^{0,*}\otimes\mathcal O(-2)$) and $\mathrm{ind}(1)=0$.
* Cone inflow moments for the primitive link class $w$: $\sum q^3=\int w^3=1$, $\sum q=\tfrac14\int wp_1=\tfrac14\cdot4=1$
  (typed-in values).
* One generation, all left-handed, $q=6Y$: $Q_L$: $1\times6$; $u^c$: $-4\times3$; $d^c$: $2\times3$; $L$: $-3\times2$;
  $e^c$: $6$; $\nu^c$: $0$. Exact: $\sum q=0$, $\sum q^3=0$ (asserted). The cone's $(1,1)$ differs from $(0,0)$.

### 2.6 Seesaw growth-rate toy

Light eigenvalue of $\begin{pmatrix}0&m\\m&t\end{pmatrix}$, $m=t^\alpha$, in cancellation-free form
$\lambda_-=-\dfrac{2m^2}{t+\sqrt{t^2+4m^2}}\approx-t^{2\alpha-1}$ (the script evaluates this closed form only):

| $\alpha$ | t=10 | t=100 | t=10⁴ |
|---|---|---|---|
| 0 | −0.0990195 | −0.0099990 | −9.99999990e-5 |
| 0.25 | −0.3068143 | −0.0999002 | −0.00999999 |
| 0.5 | −0.9160798 | −0.9901951 | −0.9999000 |
| 0.75 | −2.5248107 | −9.1607978 | −99.0195136 |

Content: vanishing correction for $\alpha<1/2$, finite limit $-1$ at $\alpha=1/2$ (Schur term $-BC^{-1}B^*$), new
divergent scale for $\alpha>1/2$.

---

## 3. `nine_dimensional_checks.py` → `nine_dimensional_verification.json`

Supports `nine_dimensional_construction.md` §2 (five-dimensional growth, figure), §3 (compensation, symbols,
order-zero obstruction), §4 (one S⁵ zero mode); `canonical_research.md` §4 (16/32), §12.1, §12.2, §13.1.
Produces `nine_dimensional_collapse.png`. Matrix assertions use `np.allclose` defaults unless stated.

### 3.1 Quaternionic structure and circle generator on $V=\mathbb C^4$

* $j=U_jK$, $U_j=I_2\otimes i\sigma_y$; circle generator $L=I_2\otimes\sigma_z$ (weights $+1,-1,+1,-1$).
* $\Gamma=(\sigma_x\otimes I,\ \sigma_z\otimes I,\ \sigma_y\otimes\sigma_x,\ \sigma_y\otimes\sigma_y,\ \sigma_y\otimes\sigma_z)$
  (here $\Gamma_1\cdots\Gamma_5=+I$, computed during the review; Clifford relations hold).
* Asserted: $j^2=-1$; $jLj^{-1}=-L$ ($U_j\bar L=-LU_j$: $j$ reverses circle charge); $j\Gamma_a=\Gamma_aj$.
  Real dimension of $\{I,\Gamma_a,\Gamma_a\Gamma_b\}$ = 16 ($M_2(\mathbb H)$); with $i\times$ those added = 32 ($M_4(\mathbb C)$).
  This gives the nested pair $M_2(\mathbb H)\subset M_4(\mathbb C)$.

### 3.2 Opposite-charge compensator

* Coefficient doublet $C=\mathbb C_{-1}\oplus\mathbb C_{+1}$, $L_C=-\sigma_z$; total charge $L_{\rm tot}=L\otimes I_2+I_4\otimes L_C$ on $V\otimes C$ (dim 8).
* Embedding $I:V\to V\otimes C$, $e_i\mapsto e_i\otimes c_0$ if $L_{ii}=+1$, $e_i\otimes c_1$ if $L_{ii}=-1$.
* Asserted: $L_{\rm tot}I=0$; $\mathrm{rank}\,L_{\rm tot}=4$ (invariant subspace $W=\mathrm{im}\,I$, $\dim W=4$; the other 4 of the
  8 modes are charged); $I^\dagger I=I_4$; $j_W\bar I=IU_j$ with $j_W=U_j\otimes\sigma_x$ ($j_C=\sigma_xK$ swaps the
  coefficient lines, $j_C^2=+1$, hence $j_W^2=-1$).

### 3.3 Invariant matrix-valued symbols

* $P_\pm=(1\pm L)/2$, blocks $A_{rs}=P_rAP_s$. Test matrices: the 16 quaternionic basis elements plus one random
  complex $4\times4$ (seed 20261102).
* Symbol $f_B(w)=5\langle w,Bw\rangle-\mathrm{Tr}B$ ($|w|=1$) and $F_A(w)=\sum_{r,s}f_{A_{rs}}(w)\,|c_r\rangle\langle c_s|$.
* Quantization enters through the level-one second-moment identity $Q(\langle w,Bw\rangle)=(B+\mathrm{Tr}B\cdot1)/5$, hence
  $Q(f_B)=B$; the script writes this identity directly (no integral over $\mathbb{CP}^3$ is computed).
* Compression $I^\dagger\big(\sum_{rs}Q(f_{A_{rs}})\otimes E_{rs}\big)I=A$: max error 1.07e-15.
* Equivariance for one random unit $w$, $\theta=0.381$: $F_A(e^{i\theta L}w)=e^{i\theta L_C}F_A(w)e^{-i\theta L_C}$: max error 9.9e-16
  (both asserted $<10^{-12}$).

### 3.4 Order-zero obstruction toy

$M_2$ acting on $\mathbb C^2$ by left multiplication with $J=\sigma_xK$: opposite of $e_{11}$ is $\sigma_x\bar e_{11}\sigma_x=e_{22}$,
and $\|[e_{12},e_{22}]\|=\|e_{12}\|=1.0$. A single left coefficient action with the line-swapping conjugation fails order zero.

### 3.5 Exact scalar $\mathbb{CP}^3$ harmonics and the 10→9 collapse

Fubini–Study (holomorphic sectional curvature 4): level $k$ eigenvalue $4k(k+3)$. Effective circle (weights $(1,1,-1,-1)$
modulo $\mathbb Z_2$) charge $q=a-b$.
* $\mathrm{Sym}^k(\mathbb C^2_+\oplus\mathbb C^2_-)$: weight $2a-k$ with multiplicity $m_{k,a}=(a+1)(k-a+1)$, $0\le a\le k$.
* Bihomogeneous $(k,k)$ charge multiplicity $c_k(q)=\sum_a m_{k,a}m_{k,a+q}$; harmonic multiplicity
  $d_k(q)=c_k(q)-c_{k-1}(q)$.
* Asserted exactly (integers) for every $k\le700$: $d_k(q)\ge0$; $\sum_qd_k(q)=\binom{k+3}{3}^2-\binom{k+2}{3}^2$;
  neutral cumulative count
  $$N_0(K)=\sum_{k\le K}d_k(0)=\sum_{a=0}^K(a+1)^2(K-a+1)^2=\frac{(K+2)^5-(K+2)}{30}.$$
  Degree 5 in $K$ (invariant) versus degree 6 for $\binom{K+3}3^2$ (all modes).

First levels (computed during the review from the same recursion):

| k | eigenvalue | $d_k(q)$, $q=-k..k$ | total | $N_0$ |
|---|---|---|---|---|
| 0 | 0 | 1 | 1 | 1 |
| 1 | 16 | 4, 7, 4 | 15 | 8 |
| 2 | 40 | 9, 20, 26, 20, 9 | 84 | 34 |
| 3 | 72 | 16, 39, 60, 70, 60, 39, 16 | 300 | 104 |
| 4 | 112 | 25, 64, 106, 140, 155, 140, 106, 64, 25 | 825 | 259 |

Heat diagnostics for $\Delta+\tau^2L^2$ with spacetime: eigenvalues $\lambda=4k(k+3)+\tau^2q^2$,
$d(E)=4+2s\,\frac{\sum d\,\lambda e^{-s\lambda}}{\sum d\,e^{-s\lambda}}$, $s=E^{-2}$, $E\in[2.5,160]$ (90 geometric points,
FS curvature units). Recorded values (columns are the grid points nearest 10 and 40, namely $E=10.157$ and
$E=39.382$, and $E=160$):

| $\tau$ | E≈10 | E≈40 | E=160 |
|---|---|---|---|
| 0 | 9.8449030 | 9.9896836 | 9.9993750 |
| 10 | 9.8029367 | 9.9873970 | 9.9992373 |
| 80 | 8.8014774 | 9.2437726 | 9.9991986 |
| 1000 | 8.8014774 | 8.9866827 | 8.9991927 |

Content: total dimension 10 at every finite $\tau$ for $E\gg\tau$, and 9 in the window $E\ll\tau$; order of limits matters.
The plot uses the scalar spectrum (no twisted fermion spectrum).

### 3.6 S⁵ harmonic Clifford half

On $\mathrm{span}\{1,\mathrm{vol}\}$ (the harmonic forms of $S^5$) the normalized volume Clifford element is entered as
$\sigma_y=\begin{pmatrix}0&-i\\i&0\end{pmatrix}$; $\mathrm{rank}\,(1+\sigma_y)/2=1$. This records the one-dimensional kernel
of $D$ twisted by $S_5^*$; the actual proof is the Hodge/signature-operator argument in the paper.

---

## 4. `canonical_checks.py` → `canonical_verification.json`

Supports `canonical_research.md` §6 (flag Chern classes, square-zero), §8 (Berry curvature, kernel commutants, real
structures), §9 (Wilson line), §10 (spin lifts, Frobenius–Schur, order-zero failure), §14.3 (trace ratio, Berger angle).
Floating checks use tolerance 1e-9 (rank) or `np.allclose`; trace and angle arithmetic is exact.

### 4.1 Berry curvature on $SU(3)\to SU(3)/SU(2)=S^5$

Horizontal generators: $E_{02}-E_{20}$, $i(E_{02}+E_{20})$, $E_{12}-E_{21}$, $i(E_{12}+E_{21})$, $i\,\mathrm{diag}(1,1,-2)$.
$\mathrm{pr}_{\mathfrak{su}(2)}(X)$ = upper-left $2\times2$ block minus its trace part. Curvature $F(X,Y)=-\mathrm{pr}_{\mathfrak{su}(2)}[X,Y]$
over all 10 pairs spans a real 3-dimensional space (all of $\mathfrak{su}(2)$). With Ambrose–Singer: full $SU(2)$ holonomy.

### 4.2 Monopole kernel commutants

Kernel for flux $n$ carries spin $(n-1)/2$: $n=1$ zero $1\times1$; $n=2$ $\sigma/2$; $n=3$ $L_\pm$ with $\sqrt2$ entries,
$L_3=\mathrm{diag}(1,0,-1)$.
* Complex commutants of each irreducible: $[1,1,1]$.
* Flux $(1,2,3)$, $0\oplus\tfrac12\oplus1$: commutant 3 ($\mathbb C\oplus\mathbb C\oplus\mathbb C$).
* Flux $(1,1,2)$, $0\oplus0\oplus\tfrac12$: commutant 5 ($M_2(\mathbb C)\oplus\mathbb C$).

### 4.3 Real structure sign on $W\oplus\bar W$

Generators $\mathrm{diag}(t,-\bar t)$, $t=\sigma/2$. $J=UK$ with $U=\begin{pmatrix}0&I_2\\ \pm I_2&0\end{pmatrix}$, $U\bar U=\pm I$.
Dimension of $\{X\in\mathfrak u(4): [X,t_k]=0,\ XU=U\bar X\}$: $J^2=+1\Rightarrow3$; $J^2=-1\Rightarrow1$.
The vertical KO-2 charge conjugation has $J^2=-1$.

### 4.4 Spin lifts of the Weyl action on $T^6=A\times E$

Six Clifford generators on $\mathbb C^8$ (Jordan–Wigner): $\sigma_x\otimes I\otimes I$, $\sigma_y\otimes I\otimes I$,
$\sigma_z\otimes\sigma_x\otimes I$, $\sigma_z\otimes\sigma_y\otimes I$, $\sigma_z\otimes\sigma_z\otimes\sigma_x$, $\sigma_z\otimes\sigma_z\otimes\sigma_y$.
* $S=\Gamma_0\Gamma_2$ (transposition, rotation by $\pi$ in one real plane), $T=\Gamma_4\Gamma_5$ ($E$ inversion),
  $R=(\tfrac12+\tfrac{\sqrt3}2\Gamma_0\Gamma_1)(\tfrac12+\tfrac{\sqrt3}2\Gamma_2\Gamma_3)$ (3-cycle: rotation by $2\pi/3$ in planes 01 and 23).
* Asserted: $S^2=T^2=-1$, $R^3=1$, $SRS^{-1}=R^{-1}$, $[T,S]=[T,R]=0$.
* Chirality $\gamma_6=-i\Gamma_0\cdots\Gamma_5$; compress to its $+1$ eigenspace ($\mathbb C^4$).
  Real dimensions of spans of compressed elements:
  - $\mathrm{Dic}_3=\{R^aS^b\}$ (12 elements): 6, i.e. $\mathbb R[\mathrm{Dic}_3]e_-\cong\mathbb C\oplus\mathbb H$;
  - $\mathrm{Dic}_3\times\{1,T\}$ (24): 12, i.e. $\mathbb C\oplus\mathbb C\oplus M_2(\mathbb C)$;
  - Klein lift $\{1,S,T,ST\}$: 4 ($\mathbb C\oplus\mathbb C$); corner with $P=(1+ST)/2$ ($(ST)^2=1$): 2 ($\mathbb C$).
* `finite_corner_SM_algebra_real_dimension` $=6+3\cdot3\cdot2=24$ ($\mathbb C\oplus\mathbb H\oplus M_3\mathbb C$; literal).
* Geometric real structure $J_6=\Gamma_1\Gamma_3\Gamma_5\,K$: $J_6^2=+1$, commutes with $R,S,T$ (asserted); it anticommutes with
  $\gamma_6$ (computed during the review). Opposite of $R$ is $J_6R^*J_6^{-1}=R^{-1}$, and
  $\|[S,R^{-1}]\|_F=2\sqrt3=3.4641016$ on the full $\mathbb C^8$: order-zero failure.

### 4.5 Frobenius–Schur indicators of $\mathrm{Dic}_3$

Doublet $r=\mathrm{diag}(\omega,\bar\omega)$, $\omega=e^{2\pi i/3}$, $s=\begin{pmatrix}0&1\\-1&0\end{pmatrix}$:
$\frac1{12}\sum_g\mathrm{tr}(g^2)=-1$ (quaternionic; recorded −0.9999999999999997). Character $\chi(R^aS^b)=i^b$:
$\frac1{12}\sum\chi(g)^2=0$ (complex type).

### 4.6 Flag $F=P(Q)\to\mathbb{CP}^2$ characteristic classes

* Vertical kernel $\mathrm{Sym}^{n-1}Q^*$: $c_1=-\tfrac{n(n-1)}2h$, $c_2=\tfrac{z(z+2)}8h^2$, $z=n(n-1)$.
  Recorded: $n=1$: rank 1, $(0,0)$; $n=2$: rank 2, $(-h,h^2)$; $n=3$: rank 3, $(-3h,6h^2)$.
  The script evaluates this closed form. (Splitting-principle check during the review, with $c_1(Q^*)=-h$,
  $c_2(Q^*)=h^2$: $c_2=\big[(z/2)^2-(2P-S_2)\big]/2\cdot h^2$ with $2P-S_2=-z/2$, giving $z(z+2)/8$ for all $n$.)
* Square-zero classes: with $x^2=-hx-h^2$, $(ah+bx)^2=(a^2-b^2)h^2+(2ab-b^2)hx$. Integer search over $a,b\in[-10,10]$:
  only $(0,0)$.

### 4.7 Engineered Berger connection: Wilson-line phase arithmetic

* Horizontal spin generator $G$ = compression of $\Gamma_0\Gamma_1+\Gamma_2\Gamma_3$ to positive chirality; $iG$ has eigenvalues
  $(-2,0,0,2)$ (asserted). Singlet projector $P_s=-G^2/4$ (onto $iG=\pm2$); natural (unengineered) kernel holonomy
  $2P_s-1=\mathrm{diag}(1,1,-I_2)$ on (singlet, singlet, doublet).
* Spin holonomy around the Hopf loop: $H_{\rm spin}(\eta)=-\exp(i\pi\eta^2\,iG)=\mathrm{diag}(-e^{2\pi i\eta^2},-e^{-2\pi i\eta^2},-I_2)$.
  Asserted: $=-I$ for integer $\eta^2$; $=2P_s-1$ for $\eta^2=1/2$.
* Parent coefficient holonomy entered as the formula $\mathrm{Hol}_R(V')=\mathrm{diag}(e^{2\pi i\eta^2},e^{-2\pi i\eta^2},1)$;
  circle zero-mode rank = number of unit entries (tolerance 1e-10).

| $\eta^2$ | 0.5 | 1 | 2 | 3 |
|---|---|---|---|---|
| parent phases | (−1, −1, 1) | (1, 1, 1) | (1, 1, 1) | (1, 1, 1) |
| zero-mode rank | 1 | 3 | 3 | 3 |

Asserted: rank 3 at $\eta^2=2$ and rank 1 at $\eta^2=1/2$. The analytic spin-connection generator, endpoint signs and
parent holonomy formula are inputs.

### 4.8 Gauge trace ratio and Berger angle (exact)

* Per generation, $Q=T_3+Y$: $K_W=3\cdot\tfrac12+\tfrac12=2$;
  $K_Y=6(\tfrac16)^2+2(\tfrac12)^2+3(\tfrac23)^2+3(\tfrac13)^2+1=\tfrac{10}3$; $K_Y/K_W=\tfrac53$;
  $\cos^2\theta_W=K_Y/(K_W+K_Y)=\tfrac58$.
* Berger lens-space comparison: $\cos^2\theta_W=\dfrac{3\xi^2}{4\xi^2+2}$; equals $\tfrac58$ at $\xi^2=\tfrac52$ (asserted). The paper's
  round value $\xi=1\Rightarrow\tfrac12$ is outside the script.

### 4.9 Recorded scope string

"Finite curvature, representation and characteristic-class checks. No full SM spectral triple, adiabatic PDE spectrum,
or vacuum dynamics is inferred."

---

## 5. Heat-dimension staircase (figure in `canonical_research.md` §2.1)

$E\in[0.1,3000]$ in units $1/a$ (1000 geometric points), $s=E^{-2}$; total dimension $9+d(s)+d(s/0.01^2)$, circle radii
$a=1$, $b=0.01$. Circle dimension: for $x>0.04$, $d=2x\sum_{|n|\le M}n^2e^{-xn^2}/\sum_{|n|\le M}e^{-xn^2}$ with
$M=\max(20,\lceil\sqrt{40/x}\rceil)$ (truncation below $e^{-40}$); for $x\le0.04$, $d=1$ (Poisson correction of order
$e^{-\pi^2/x}\le e^{-246}$). Reference levels 9, 10, 11 (base+spacetime; one circle resolved; two circles resolved),
transitions near $E\sim1$ and $E\sim100$. The older two-circle staircase of §1.3 uses $b/a=0.02$ instead.

---

## 6. Inconsistencies and gaps between scripts, JSON and papers

1. **Electromagnetic normalizations are unchecked.** `canonical_research.md` (Reproduction) says
   `nine_dimensional_checks.py` checks "electromagnetic normalizations". That script computes none. The sphere averages
   $\langle z^*T^2z\rangle=1/6$, $\langle(z^*Tz)^2\rangle=1/24$, $I_3$, $I_Q$ and $e^2/g_3^2=3(\eta^2+3)/(8\eta^2)$ or
   $3(\eta^2+3)/(32\eta^2)$ appear in no script. (`nine_dimensional_construction.md`'s own reproduction list omits them.)
2. **Twistor quantization formulas are unchecked.** $Q(x_a)=\Gamma_a/5$ and $Q(x_a)^2=I/25$ vs $Q(x_a^2)=I/5$
   (research_note §4; canonical §4 "Checked calculation") are computed by no script; they are now proved in [lemmas/10](lemmas/10_toeplitz_twistor.md), Proposition 10.1. `checks.py` checks the Clifford/$j$/Hopf
   data and the 16-dimensional span; `nine_dimensional_checks.py` writes the second-moment identity in by hand, so its
   compression error tests block bookkeeping on the compensated kernel.
3. **Literal JSON entries.** Typed-in values reported alongside computed ones: `checks.py` charge multiplets,
   `base_linear_image_dimension` 6, `full_twistor_real_algebra_dimension` 32, `matched_SM_algebra_real_dimension` 24;
   `solidification` `strict_light_H_dimensions` [32,30,18] and the cone moments; `canonical`
   `finite_corner_SM_algebra_real_dimension` 24. Each agrees with computations elsewhere or with simple arithmetic.
4. **Wilson-line check** (canonical §9): the parent holonomy vector is a formula input, so the zero-mode ranks restate
   that formula. zip_B labels this correctly; zip_A's comment ("Hopf holonomy") and zip_A paper wording
   ("verifies ... the Berger Wilson phases") overstate it.
5. canonical §8 says the brackets of "the four off-diagonal horizontal directions" span $\mathfrak{su}(2)$; the script uses
   five horizontal generators including $i\,\mathrm{diag}(1,1,-2)$, whose brackets project to zero, so the conclusion is the same.
6. `nine_dimensional_verification.json` keys "10" and "40" are nearest grid energies 10.157 and 39.382.
7. The Chern-class formula of §4.6 and the seesaw formula of §2.6 enter the scripts only as closed forms; their
   derivations (Chern roots, the 2×2 matrix) were verified by hand during this review.

## 7. Recorded outputs of the checks (former JSON files)

The JSON files written by the scripts were folded in here and removed (last present in commit 46d81b1, `research_limits/*.json`). Keys are flattened with dots; floats are rounded to 6 significant digits. Residuals and errors below 1e-12 are summarized in one line per file. `paper_verification.json` recorded only the build of the deleted mobile PDF; its one substantive entry, the markdown sha256 `7a6526f3...` of `canonical_research.md`, is quoted in DUPLICATES.md.

### `verification.json`

- `fuzzy.0.N` = 2
- `fuzzy.0.shift` = 0
- `fuzzy.0.dimension` = 16
- `fuzzy.0.errors` = {hermitian_D: 0, grading: 0, J_squared_minus_one: 0, JD_equals_DJ: 0, Jgamma_equals_minus_gammaJ: 0, opposite_action: 0, order_zero: 0, order_one: 0}
- `fuzzy.0.spectrum` = {-2: 2, -1: 4, 0: 4, 1: 4, 2: 2}
- `fuzzy.1.N` = 2
- `fuzzy.1.shift` = 1
- `fuzzy.1.dimension` = 16
- `fuzzy.1.errors` = {hermitian_D: 0, grading: 0, J_squared_minus_one: 0, JD_equals_DJ: 0, Jgamma_equals_minus_gammaJ: 0, opposite_action: 0, order_zero: 0, order_one: 0}
- `fuzzy.1.spectrum` = {-2: 4, -1: 4, 1: 4, 2: 4}
- `fuzzy.2.N` = 3
- `fuzzy.2.shift` = 0
- `fuzzy.2.dimension` = 36
- `fuzzy.2.errors` = {hermitian_D: 0, grading: 0, J_squared_minus_one: 0, JD_equals_DJ: 0, Jgamma_equals_minus_gammaJ: 0, opposite_action: 0, order_zero: 0, order_one: 0}
- `fuzzy.2.spectrum` = {-3: 4, -2: 8, -1: 4, 0: 4, 1: 4, 2: 8, 3: 4}
- `fuzzy.3.N` = 3
- `fuzzy.3.shift` = 1
- `fuzzy.3.dimension` = 36
- `fuzzy.3.errors` = {hermitian_D: 0, grading: 0, J_squared_minus_one: 0, JD_equals_DJ: 0, Jgamma_equals_minus_gammaJ: 0, opposite_action: 0, order_zero: 0, order_one: 3.24939e-15}
- `fuzzy.3.spectrum` = {-3: 6, -2: 8, -1: 4, 1: 4, 2: 8, 3: 6}
- `fuzzy.4.N` = 5
- `fuzzy.4.shift` = 0
- `fuzzy.4.dimension` = 100
- `fuzzy.4.errors` = {hermitian_D: 0, grading: 0, J_squared_minus_one: 0, JD_equals_DJ: 0, Jgamma_equals_minus_gammaJ: 0, opposite_action: 0, order_zero: 2.05616e-15, order_one: 1.01466e-14}
- `fuzzy.4.spectrum` = {-5: 8, -4: 16, -3: 12, -2: 8, -1: 4, 0: 4, 1: 4, 2: 8, 3: 12, 4: 16, 5: 8}
- `fuzzy.5.N` = 5
- `fuzzy.5.shift` = 1
- `fuzzy.5.dimension` = 100
- `fuzzy.5.errors` = {hermitian_D: 0, grading: 0, J_squared_minus_one: 0, JD_equals_DJ: 0, Jgamma_equals_minus_gammaJ: 0, opposite_action: 0, order_zero: 2.05616e-15, order_one: 1.36537e-14}
- `fuzzy.5.spectrum` = {-5: 10, -4: 16, -3: 12, -2: 8, -1: 4, 1: 4, 2: 8, 3: 12, 4: 16, 5: 10}
- `fuzzy.6.N` = 8
- `fuzzy.6.shift` = 0
- `fuzzy.6.dimension` = 256
- `fuzzy.6.errors` = {hermitian_D: 0, grading: 0, J_squared_minus_one: 0, JD_equals_DJ: 0, Jgamma_equals_minus_gammaJ: 0, opposite_action: 0, order_zero: 1.80341e-15, order_one: 7.57495e-14}
- `fuzzy.6.spectrum.-8` = 14
- `fuzzy.6.spectrum.-7` = 28
- `fuzzy.6.spectrum.-6` = 24
- `fuzzy.6.spectrum.-5` = 20
- `fuzzy.6.spectrum.-4` = 16
- `fuzzy.6.spectrum.-3` = 12
- `fuzzy.6.spectrum.-2` = 8
- `fuzzy.6.spectrum.-1` = 4
- `fuzzy.6.spectrum.0` = 4
- `fuzzy.6.spectrum.1` = 4
- `fuzzy.6.spectrum.2` = 8
- `fuzzy.6.spectrum.3` = 12
- `fuzzy.6.spectrum.4` = 16
- `fuzzy.6.spectrum.5` = 20
- `fuzzy.6.spectrum.6` = 24
- `fuzzy.6.spectrum.7` = 28
- `fuzzy.6.spectrum.8` = 14
- `fuzzy.7.N` = 8
- `fuzzy.7.shift` = 1
- `fuzzy.7.dimension` = 256
- `fuzzy.7.errors` = {hermitian_D: 0, grading: 0, J_squared_minus_one: 0, JD_equals_DJ: 0, Jgamma_equals_minus_gammaJ: 0, opposite_action: 0, order_zero: 1.80341e-15, order_one: 7.3696e-14}
- `fuzzy.7.spectrum.-8` = 16
- `fuzzy.7.spectrum.-7` = 28
- `fuzzy.7.spectrum.-6` = 24
- `fuzzy.7.spectrum.-5` = 20
- `fuzzy.7.spectrum.-4` = 16
- `fuzzy.7.spectrum.-3` = 12
- `fuzzy.7.spectrum.-2` = 8
- `fuzzy.7.spectrum.-1` = 4
- `fuzzy.7.spectrum.1` = 4
- `fuzzy.7.spectrum.2` = 8
- `fuzzy.7.spectrum.3` = 12
- `fuzzy.7.spectrum.4` = 16
- `fuzzy.7.spectrum.5` = 20
- `fuzzy.7.spectrum.6` = 24
- `fuzzy.7.spectrum.7` = 28
- `fuzzy.7.spectrum.8` = 16
- `standard_model.charge_multiplets_left.0` = [3, 2/3]
- `standard_model.charge_multiplets_left.1` = [3, -1/3]
- `standard_model.charge_multiplets_left.2` = [1, 0]
- `standard_model.charge_multiplets_left.3` = [1, -1]
- `standard_model.charge_multiplets_right.0` = [3, 2/3]
- `standard_model.charge_multiplets_right.1` = [3, -1/3]
- `standard_model.charge_multiplets_right.2` = [1, 0]
- `standard_model.charge_multiplets_right.3` = [1, -1]
- `standard_model.mass_map_rank` = 8
- `standard_model.gauge_mass_gram.0` = [0.37, 0, 0, 0]
- `standard_model.gauge_mass_gram.1` = [0, 0.37, 0, 0]
- `standard_model.gauge_mass_gram.2` = [0, 0, 0.37, -0.37]
- `standard_model.gauge_mass_gram.3` = [0, 0, -0.37, 0.37]
- `standard_model.gauge_mass_rank` = 3
- `standard_model.anomaly_coefficients` = {leptons_SU2_squared_Y: -1/4, quarks_SU2_squared_Y: 1/4, leptons_Y_cubed: 3/4, quarks_Y_cubed: -3/4}
- `twistor.quaternionic_real_algebra_dimension` = 16
- `twistor.base_linear_image_dimension` = 6
- `twistor.full_twistor_real_algebra_dimension` = 32
- `twistor.matched_SM_algebra_real_dimension` = 24
- `twistor.finite_Hilbert_dimension` = 32
- `twistor.finite_triple_errors` = {J_squared_plus_one: 0, J_gamma_anticommutes: 0, D_hermitian: 0, JD_equals_DJ: 0, D_gamma_anticommutes: 0, grading_commutes_with_algebra: 0, order_zero: 0, order_one: 0}
- `twistor.caveat` = Two module actions, scalar matching, unimodularity and Yukawas are inputs; orientability fails on the neutral R sector.
- `heat_sample_total_dimensions.12` = {1e-08: 4, 0.0001: 4.04279, 0.01: 7.26871, 1: 7.43301, 100: 4}
- `heat_sample_total_dimensions.48` = {1e-08: 4.00007, 0.0001: 4.66434, 0.01: 9.95043, 1: 7.43301, 100: 4}
- `heat_sample_total_dimensions.192` = {1e-08: 4.00111, 0.0001: 9.43088, 0.01: 9.95043, 1: 7.43301, 100: 4}
- 3 residual/error entries, all below 1e-12 (e.g. `standard_model.electromagnetic_intertwining_error`).

### `solidification_verification.json`

- `real_algebra_dimensions` = [40, 24, 20]
- `connected_gauge_lie_dimensions` = [21, 12, 9]
- `Majorana_rank` = 2
- `top_rank` = 12
- `strict_light_H_dimensions` = [32, 30, 18]
- `parent_first_order_failure_Frobenius_norm` = 1.41421
- `trace_coefficients_lambda_color_common_phase_full` = [4, 12]
- `trace_coefficients_lambda_color_common_phase_after_neutrino_removal` = [2, 12]
- `CP3_spin_twist_indices` = {-5: -20, -4: -10, -3: -4, -2: -1, -1: 0, 0: 0, 1: 0, 2: 1, 3: 4, 4: 10, 5: 20}
- `CP3_local_anomaly_moments` = {cubic: 1, mixed: 1}
- `SM_hypercharge_anomaly_moments_q_equals_6Y` = {linear: 0, cubic: 0}
- `seesaw_light_eigenvalues.0` = {10: -0.0990195, 100: -0.009999, 10000: -0.0001}
- `seesaw_light_eigenvalues.0.25` = {10: -0.306814, 100: -0.0999002, 10000: -0.00999999}
- `seesaw_light_eigenvalues.0.5` = {10: -0.91608, 100: -0.990195, 10000: -0.9999}
- `seesaw_light_eigenvalues.0.75` = {10: -2.52481, 100: -9.1608, 10000: -99.0195}
- `scope` = Exact finite linear algebra plus exact topological arithmetic; no continuum SM vacuum or anomaly spectrum derivation.

### `nine_dimensional_verification.json`

- `compensated_kernel_dimension` = 4
- `quaternionic_real_dimension` = 16
- `complex_matrix_real_dimension` = 32
- `single_left_coefficient_order_zero_failure` = 1
- `scalar_cutoff_k` = 700
- `exact_neutral_cumulative_count` = ((K+2)^5-(K+2))/30
- `plot_heat_dimension_samples.0` = {10: 9.8449, 40: 9.98968, 160: 9.99937}
- `plot_heat_dimension_samples.10` = {10: 9.80294, 40: 9.9874, 160: 9.99924}
- `plot_heat_dimension_samples.80` = {10: 8.80148, 40: 9.24377, 160: 9.9992}
- `plot_heat_dimension_samples.1000` = {10: 8.80148, 40: 8.98668, 160: 8.99919}
- `S5_harmonic_Clifford_half_dimension` = 1
- `scope` = Checks kernel compensation, symbols and exact scalar spectral arithmetic. Does not prove a full real SM triple or derive a 9D gauge vacuum.
- 2 residual/error entries, all below 1e-12 (e.g. `compression_error`).

### `canonical_verification.json`

- `Berry_curvature_su2_span_dimension` = 3
- `complex_parallel_endomorphism_dimensions_n_1_2_3` = [1, 1, 1]
- `complex_commutant_dimension_flux_123` = 3
- `complex_commutant_dimension_flux_112` = 5
- `unitary_real_commutant_Lie_dimensions_for_J_squared` = {1: 3, -1: 1}
- `spin_lift_real_algebra_dimensions_on_chiral_spinors` = {S3: 6, S3_times_Z2: 12, Z2_times_Z2: 4, selected_Klein_component: 2}
- `binary_dihedral_doublet_FS_indicator` = -1
- `binary_dihedral_complex_character_FS_indicator_real_part` = 0
- `geometric_J_order_zero_failure_Frobenius_norm` = 3.4641
- `finite_corner_SM_algebra_real_dimension` = 24
- `flag_vertical_kernel_Chern_classes.1` = {rank: 1, c1_h: 0, c2_h_squared: 0}
- `flag_vertical_kernel_Chern_classes.2` = {rank: 2, c1_h: -1, c2_h_squared: 1}
- `flag_vertical_kernel_Chern_classes.3` = {rank: 3, c1_h: -3, c2_h_squared: 6}
- `flag_square_zero_H2_small_integer_solutions.0` = [0, 0]
- `engineered_Berger_Wilson_check.0.5.parent_circle_zero_mode_rank` = 1
- `engineered_Berger_Wilson_check.0.5.parent_holonomy_phases_real_imag.0` = [-1, 1.22465e-16]
- `engineered_Berger_Wilson_check.0.5.parent_holonomy_phases_real_imag.1` = [-1, -1.22465e-16]
- `engineered_Berger_Wilson_check.0.5.parent_holonomy_phases_real_imag.2` = [1, 0]
- `engineered_Berger_Wilson_check.1.parent_circle_zero_mode_rank` = 3
- `engineered_Berger_Wilson_check.1.parent_holonomy_phases_real_imag.0` = [1, -2.44929e-16]
- `engineered_Berger_Wilson_check.1.parent_holonomy_phases_real_imag.1` = [1, 2.44929e-16]
- `engineered_Berger_Wilson_check.1.parent_holonomy_phases_real_imag.2` = [1, 0]
- `engineered_Berger_Wilson_check.2.parent_circle_zero_mode_rank` = 3
- `engineered_Berger_Wilson_check.2.parent_holonomy_phases_real_imag.0` = [1, -4.89859e-16]
- `engineered_Berger_Wilson_check.2.parent_holonomy_phases_real_imag.1` = [1, 4.89859e-16]
- `engineered_Berger_Wilson_check.2.parent_holonomy_phases_real_imag.2` = [1, 0]
- `engineered_Berger_Wilson_check.3.parent_circle_zero_mode_rank` = 3
- `engineered_Berger_Wilson_check.3.parent_holonomy_phases_real_imag.0` = [1, -7.34788e-16]
- `engineered_Berger_Wilson_check.3.parent_holonomy_phases_real_imag.1` = [1, 7.34788e-16]
- `engineered_Berger_Wilson_check.3.parent_holonomy_phases_real_imag.2` = [1, 0]
- `SM_trace_KW` = 2
- `SM_trace_KY` = 10/3
- `SM_trace_ratio` = 5/3
- `cos_squared_from_SM_trace` = 5/8
- `Berger_xi_squared_required` = 5/2
- `cos_squared_at_required_Berger_parameter` = 5/8
- `scope` = Finite curvature, representation and characteristic-class checks. No full SM spectral triple, adiabatic PDE spectrum, or vacuum dynamics is inferred.
