# Finite spectral triples as towerless intervals

*Draft, 3 November 2026. Results proved in this project by Astra 6 (gpt-6-astra) and Claude Opus 5.5, refereed by Terra 6.1 where indicated; detailed proofs are in the lemma files cited at each result. Prior work is recorded in [../LITERATURE.md](../LITERATURE.md); the statements of novelty below follow it.*

## Abstract

We study the finite factor of almost-commutative spectral triples as the remnant of a fifth dimension from which the Kaluza-Klein tower has been removed. The Connes-Lott two-point space is the minimal grading-preserving spectral truncation of a chiral interval of length $l$, with mass $\pi/(2l)$. With a bulk mass, the interval carries one light Dirac pair whose truncation is again Connes-Lott, now with Connes distance $1/\lambda_0$; as $l\to\infty$ the pair becomes two chiral wall modes and a one-dimensional Weyl law appears above the bulk gap, and as $l\to0$ the pair survives at fixed mass exactly along $\mu(l)\,l=-W_{-1}(-m_fl/2)+o(1)$, of order $l^{-1}\log(1/(m_fl))$ with a $\log\log$ correction. A boundary Yukawa matrix interpolates between chiral and vectorlike boundary conditions at constant index, and in the towerless limit the Yukawa block of the finite Dirac operator is $\Phi_Q\hat Y\Phi_U$, a product of localization factors and an order-one matrix. For real structures we give a criterion for a KO-dimension-6 triple to factor as an odd triple times a Clifford point (formally $4+5=9$ or $4+7=11$), show that the real structure, the spacetime charge conjugation and particle-number conservation do not select the sign, and show that a finite triple with an unpaired left-handed neutrino admits only the factorization of KO-degree 7. These KO-degrees are not metric dimensions; the metric statements are the Weyl laws of the interval limits. In the spectral-action normalization, an infinitely heavy W forces an infinitely heavy Dirac fermion. The gauge sector does not follow the tower: the compression of gauge fluctuations to the light pair is exact but not gauge covariant, and the finite spectral action gives vector masses fixed by the whole fermion trace, which differ from the mass $\pi/(2l)$ of the broken gauge mode on the interval.

## 1. Introduction

The finite space of the noncommutative Standard Model has KO-dimension 6, so that the product with four-dimensional spacetime has total KO-dimension $10\equiv2 \pmod 8$ [Connes 2006; Barrett 2007; CCM 2007]. Its simplest relative, the Connes-Lott two-point space, has algebra $\mathbb C\oplus\mathbb C$ and Dirac operator $\begin{pmatrix}0&m\\ m&0\end{pmatrix}$, and its two points lie at Connes distance $1/|m|$ [Connes-Lott 1990]. It is often read as a discrete fifth dimension, already by Connes and Lott. It is also the oldest layer of the theory: it has no real structure, no KO-dimension and no first-order condition, which the current framework supplies [Connes 2006; CCM 2007; Chamseddine-Connes 2008]. KO-dimension is not metric dimension: the finite space has metric dimension 0 and KO-dimension 6, so the numbers 9, 10 and 11 below are KO-degrees of factorizations, while the emergence or loss of metric dimension is measured by Weyl laws and requires a singular limit. We make the discrete-dimension reading precise and test it in two limits that a Kaluza-Klein picture suggests: massless weak bosons, where a dimension should open (10 to 11), and infinitely heavy weak bosons and top, where a dimension should close (10 to 9).

Our model of the fifth dimension is the chiral interval $I_l=[0,l]$ with boundary conditions that make the two chiralities live at opposite ends. The results are:

- **Theorem A** (section 3): the Connes-Lott space is the minimal grading-preserving spectral truncation of $I_l$, with $|m|=\pi/(2l)$.
- **Theorem B** (section 4): with a bulk mass, a light Dirac pair of mass $\lambda_0=\mu\,\mathrm{sech}(\kappa_0 l)\approx2\mu e^{-\mu l}$ truncates to Connes-Lott; it controls both limits.
- **Theorem C** (section 5): boundary Yukawa matrices, the index under symmetry breaking, and the towerless Yukawa texture $\Phi_Q\hat Y\Phi_U$.
- **Theorem D** (section 6): when a KO-6 triple factors as an odd triple times a Clifford point, and why the sign that distinguishes 9 from 11 is extra data.
- **Proposition E** (section 7): in the spectral-action normalization, a heavy W forces a heavy Dirac fermion.
- **Proposition F** (section 7): the gauge sector of the truncation does not reproduce the tower; the vector masses of the finite spectral action depend on the whole fermion trace.

The tower is essential for one direction and dispensable for the other: the emergence of a dimension needs the tower back, while the collapse can keep a finite light sector, provided the bulk mass is tuned.

## 2. Setting and conventions

Let $H=L^2(I_l;\mathbb C^2)$ with $\psi=(L,R)$, grading $\Gamma=\mathrm{diag}(1,-1)$, and for a real bulk mass $M$
$$
(D_M\psi)_L=R'+MR,\qquad (D_M\psi)_R=-L'+ML .
$$
We use three boundary types: (a) $R(0)=R(l)=0$; (b) $L(0)=L(l)=0$; (c) $R(0)=0$, $L(l)=0$. Each defines a self-adjoint operator with compact resolvent anticommuting with $\Gamma$ [lemma 09, Lemma 9.1].

A real structure is an antiunitary $J$ with $J^2=\epsilon$, $JD=\epsilon' DJ$, $J\Gamma=\epsilon''\Gamma J$; KO-dimension 6 means $(\epsilon,\epsilon',\epsilon'')=(+,+,-)$. A spectral truncation of $(A,H,D)$ to a spectral subspace $PH$ is the triple $(PAP,PH,PDP)$ with the compressed operator system $PAP$ [Connes-van Suijlekom].

## 3. The two-point space is a truncated interval

**Theorem A** [lemma 05]. Take $M=0$ and type (c). The spectrum of $D_0$ is $\pm(r-\tfrac12)\pi/l$, $r\ge1$. The lowest spectral subspace is spanned by $u_L=\sqrt{2/l}(\cos(\pi x/2l),0)$ and $u_R=\sqrt{2/l}(0,\sin(\pi x/2l))$; on it $PD_0P=m\sigma_1$ with $m=\pi/(2l)$, $P\Gamma P=\sigma_3$, and the compression of $C(I_l)$ has range the diagonal algebra $\mathbb C\oplus\mathbb C$. Hence the truncation is the Connes-Lott two-point space with $|m|=\pi/(2l)$; its truncated Connes distance is $2l/\pi$.

The discrete version is a staggered chain $H_N=\mathrm{span}\{L_1,\dots,L_{N-1},R_2,\dots,R_N\}$ with $B_N=h_N(I-S)$, whose spectrum $2h_N\sin((2r-1)\pi/(4N-2))$ converges to that of $D_0$ and whose sites lie at distance $|i-j|/h_N$; the two-point space is its $N=2$ case (dimensional deconstruction [Arkani-Hamed-Cohen-Georgi 2001]).

**Proposition A.1 (bare limits)** [lemma 05, Part 4; lemma 08, No-go theorem 8]. At fixed truncation, $m\to0$ produces no heat dimension, and $m\to\infty$ leaves no light fermions; in the product with any finite KO-6 triple, $D_F^2=D_0^2\otimes1+1\otimes D_I^2\ge\pi^2/(4l^2)$, so the literal collapse $l\to0$ of the massless interval has an empty light sector at every fixed cutoff.

## 4. Bulk mass: the light pair and both limits

**Theorem B** [lemma 09, refereed by Terra 6.1].

1. *Chirality from boundary conditions.* For every $M$ and $l$, $\ker D_M$ is $\mathbb C(e^{Mx},0)$ for type (a), $\mathbb C(0,e^{-Mx})$ for type (b) and $0$ for type (c); the indices are $+1,-1,0$. For a finite sum of representations $V_\rho$ of a compact group with types $\tau(\rho)$, the equivariant index is $\sum_{\tau=a}[V_\rho]-\sum_{\tau=b}[V_\rho]$, which realizes $[V_L]-[V_R]$.
2. *Light pair.* For type (c), $M=-\mu<0$ and $\mu l>1$, there is exactly one positive eigenvalue below $\mu$,
$$
\lambda_0=\mu\,\mathrm{sech}(\kappa_0 l),\qquad \tanh(\kappa_0 l)=\kappa_0/\mu,\qquad \lambda_0=2\mu e^{-\mu l}(1+o(1)),
$$
and the others are $(\mu^2+k_n^2)^{1/2}$ with $k_n\in(n\pi/l,(n+\tfrac12)\pi/l)$. The profiles satisfy $R_0(x)=L_0(l-x)=\sinh(\kappa_0x)$ up to normalization.
3. *Truncation.* The light pair truncates to Connes-Lott with $D=\lambda_0\sigma_1$; the Connes distance between its states is $1/\lambda_0$.
4. *Decompactification ($l\to\infty$, fixed $\mu$).* $\lambda_0\to0$; the normalized profiles converge, uniformly on compacta and in $L^2$, to $\sqrt{2\mu}e^{-\mu y}$ at the two walls, exact chiral zero modes of the half-line operators; and $\#\{n:\lambda_n\le E\}=(l/\pi)\sqrt{E^2-\mu^2}+O(1)$ for $E>\mu$.
5. *Collapse at fixed light mass.* For $m_f>0$ and $l<1/m_f$ there is a unique $\mu(l)$ with $\lambda_0=m_f$; as $l\to0$, $\mu(l)l=\log(2\mu(l)l/(m_fl))+o(1)$, that is $\mu(l)l=-W_{-1}(-m_fl/2)+o(1)=L+\log L+o(1)$ with $L=\log(2/(m_fl))$ (a statement about this localization model), the next eigenvalue exceeds $(\mu^2+\pi^2/l^2)^{1/2}$, and the interval collapses to a point while the truncation stays Connes-Lott with mass $m_f$. At fixed $\mu$ instead, every eigenvalue eventually has $|\lambda|>\mu$ and the smallest is $(\pi/2l)(1+o(1))$.

*Proof sketch.* Eliminating $R$ reduces type (c) to $-L''+M^2L=\lambda^2L$ with $L(l)=0$, $L'(0)=ML(0)$; root counting for $\tanh t=t/c$ and $\tan t=t/c$ gives item 2. Item 3 is the computation $Du_L=\lambda_0u_R$ with orthogonal chiral supports. Item 5 uses that $F(c)=c^2\mathrm{sech}^2 s(c)$, $s=c\tanh s$, decreases strictly from 1 to 0 on $(1,\infty)$. $\square$

So the dimension emerges only with the tower restored (item 4), and the collapse keeps a finite light sector only along the curve $\mu(l)$ (item 5); the finite Dirac operator records the light mass, a quantized internal momentum combined in quadrature with the bulk mass, $\lambda_n^2=\mu^2+k_n^2$.

## 5. Boundary Yukawa matrices and towerless textures

Let $Q\in L^2(I_l;\mathbb C^2)\otimes\mathbb C^{N_Q}$ and $U\in L^2(I_l;\mathbb C^2)\otimes\mathbb C^{N_U}$ carry diagonal bulk masses, and for a matrix $X$ impose $Q_R(0)=0$, $U_L(0)=0$, $Q_R(l)=XU_R(l)$, $U_L(l)=-X^\dagger Q_L(l)$. This defines a self-adjoint $D_X$ anticommuting with $\Gamma$. Write $c^Q_i=-m^Q_il$, $c^U_j=m^U_jl$ (positive $c$ localizes a field away from the Yukawa wall) and $\phi(c)^2=2c/(e^{2c}-1)$.

**Theorem C** [lemma 12].

1. *Index and symmetry breaking.* $\ker D_X\cong\ker X^\dagger\oplus\ker X$ in the two chiralities, so $\mathrm{ind}\,D_X=N_Q-N_U$ for all $X$. If a compact group acts, the domain is invariant under the stabilizer $H_X$ of $X$, and $\mathrm{ind}_{H_X}D_X=[\rho_Q]-[\rho_U]$ restricted to $H_X$. All zero modes lift iff $X$ is invertible, which requires $\rho_Q\cong\rho_U$ as $H_X$-representations; for $H=SU(3)\times U(1)_{em}$ and leptons without $\nu_R$, a massless $\nu_L$ is forced for every $X$.
2. *Interpolation.* For one massless flavor the positive spectrum is $\theta/l$ and $(n\pi\pm\theta)/l$, $\theta=\arctan|X|$: the light pair moves from the chiral zero modes of types (a)$\oplus$(b) at $X=0$ to the Connes-Lott mass $\pi/(2l)$ of two copies of type (c) as $|X|\to\infty$.
3. *Light spectrum.* With $\alpha_i,\beta_j$ the explicit functions $\omega\coth(\omega l)\pm m$ ($\omega^2=m^2-\lambda^2$), the light eigenvalues are the fixed points $\lambda=\sigma_k(A(\lambda)^{1/2}XB(\lambda)^{1/2})$, and
$$
\sigma_k(Y_0)\Big(1-\frac{\lambda_k^2}{\Lambda_Q^2}-\frac{\lambda_k^2}{\Lambda_U^2}\Big)\le\lambda_k\le\sigma_k(Y_0),\qquad Y_0=F_QXF_U,
$$
where $F$ are the zero-mode values at the wall and $\Lambda$ the type-(c) thresholds.
4. *Towerless limit.* As $l\to0$ with the $c$'s and $\hat Y=X/l$ fixed, the spectrum in $[-E,E]$ converges to $0$ (multiplicity $N_Q+N_U-2\,\mathrm{rank}\hat Y$) and the $\pm\sigma_k(M_F)$ with $\sigma_k(M_F)\le E$, with
$$
M_F=\Phi_Q\hat Y\Phi_U,\qquad D_F=\begin{pmatrix}0&M_F\\ M_F^\dagger&0\end{pmatrix},
$$
the Yukawa block of the Chamseddine-Connes finite Dirac operator; all other eigenvalues diverge.
5. *Hierarchies.* For graded $F=\mathrm{diag}(f_1\le\dots\le f_N)$, $G$ likewise, and nonzero trailing minors $\Delta_p$ of $X$, $\sigma_1\cdots\sigma_p(FXG)$ lies between $f_{T_p}g_{T_p}\Delta_p$ and $f_{T_p}g_{T_p}[\Delta_p+D_p((1+K_p\epsilon^F_p)(1+K_p\epsilon^G_p)-1)]$ (compound matrices). With an order-one $\hat Y$ the masses follow $\phi(c^Q_k)\phi(c^U_k)\approx2\sqrt{c^Q_kc^U_k}\,e^{-c^Q_k-c^U_k}$: order-one differences of localization give exponential hierarchies [split fermions: Arkani-Hamed-Schmaltz 2000; Gherghetta-Pomarol 2000; Grossman-Neubert 2000].

The mixing pattern $|V_{ij}|\sim\phi(c^Q_i)/\phi(c^Q_j)$ holds in our numerical samples [lemma 12, Remark 12.10] and is known in the extra-dimensional flavor literature [Huber-Shafi 2001; Agashe-Perez-Soni 2005]; we have no proof with explicit constants.

## 6. Real structures: the choice between 9 and 11

**Theorem D** [lemma 06; lemma 08].

1. *Factorization criterion.* A KO-6 triple $T$ factors as $T_n\times P_k$ with $(s,n,k)=(+1,7,7)$ or $(-1,5,1)$ iff there is a unitary $U$ with $U^2=1$, $U\Gamma=-\Gamma U$, $[U,a]=[U,a^\circ]=[U,D]=0$ and $UJ=sJU$.
2. *The real structure does not select $s$.* The almost-commutative electrodynamics triple admits involutions of both signs. A finite triple with an unpaired left-handed neutrino and no Majorana term admits only $s=+1$, the KO-7 factorization; this concerns the finite triple, not the dimension of a parent manifold.
3. *The interval reflection.* On the chiral interval with pointwise reality ($JfJ^{-1}=\bar f$), the real structures are $\mathrm{diag}(\alpha,\beta)K$ with $\alpha=\epsilon'\beta$ (KO-dimension 0), and the reflection $x\mapsto l-x$ exchanging $L$ and $R$ has sign $\epsilon'$ against $J$. In the internal-first KO-6 product $F_0\times I_l$, the KO-6 conditions force the grading twist $J_F=J_0\otimes J_I\Gamma_I^b$ with $\epsilon'(-1)^b=-1$, and the bare reflection $1\otimes\sigma$ has $s=-1$ for either interval convention (formally 9).
4. *Exact reconciliation.* For the truncated interval, $F_0\times I_l\cong T_5(m)\times P_1$ with $d_5=D_0+m\Gamma_0$ and $j_5=J_0\Gamma_0$: the interval mass enters the odd Dirac operator and the interval's two states become the doubling space.
5. *No physical selection.* Spacetime grading twists ($J_M$ versus $J_M\gamma_5$) do not select the finite involution. A product with fixed $D_F,J_F,\Gamma_F$ and particle number $Q$ admits particle-preserving involutions of both signs (Counterexample 08.11); more generally, if $[Q,D]=0$ and $QJ=-JQ$, particle-preserving involutions come in pairs $U$, $QU$ of opposite sign.

The values 9 and 11 are therefore the KO-degrees, shifted by 4, of the two odd factorizations of one even triple. Replacing $J$ by $J\Gamma$ only changes signs inside the even classification [Dabrowski-Dossena 2011], and identifying either factorization with the dimension of a parent geometry would need a change of parity in K-homology that these results do not supply. Within the finite triple the sign is constrained by the neutrino sector: without $\nu_R$ only $s=+1$ occurs; with $\nu_R$ and Dirac masses both signs occur; a Majorana mass breaks $[Q,D]=0$ and the pairing of item 5, and whether a unique sign then remains is open.

## 7. Spectral action: heavy fermions and the gauge sector

**Proposition E** [lemma 11]. Assume the Chamseddine-Connes-Marcolli relation $8M_W^2=\sum N_fm_f^2$ over Dirac masses at the matching scale, with $N_g$ generations, and let $m_{\max}$ be the largest Dirac mass. Then
$$
m_{\max}/(2\sqrt2)\le M_W\le\sqrt{N_g}\,m_{\max}.
$$
Hence a heavy-W limit at fixed fermion masses is incompatible with the relation, and if only the up-type mass of one generation diverges, $m_t/M_W\to\sqrt{8/3}$, the top-mass relation of [CCM 2007]. The relation comes from the heat-kernel expansion and holds for masses well below the cutoff $\Lambda$; near $\Lambda$ the kinetic terms carry mass-dependent weights $f(m^2/\Lambda^2)$ [lemma 03], and a heavy-W limit at fixed $\Lambda$ must be redone with them.

**Proposition F** [lemma 13]. Fluctuate the product of spacetime with the chiral interval by a five-dimensional gauge field $(A_\mu,A_5)$ and compress to the light pair. Then (i) the sheet connections are the weighted averages $A_{L,R}=\int w_{L,R}A_\mu$ and the link is $\phi=m+iB$ with $B=\int_0^l l^{-1}\sin(\pi x/l)A_5\,dx$, so the image is $\{\phi+\phi^*=2m\}$ and not every Connes-Lott fluctuation arises; (ii) the fixed compression is not gauge covariant: $A_5=a\cos(2\pi x/l)$ has trivial Wilson line and changes the compressed spectrum; (iii) the spectral action gives vector masses $\mathcal M^2=\tfrac32Q^{-1/2}KQ^{-1/2}$, which equal $\sqrt6\,m$ for the minimal two-sheet model and $\sqrt{3/8}\,m$ with the CCM Standard Model trace and one massive colour triplet, while the Neumann-Dirichlet tower gives $m=\pi/(2l)$.

So the finite spectral action and the interval tower disagree on the vector mass, and the disagreement depends on the whole fermion trace. Matching them requires a gauge-covariant reduction, a projection onto the low spectral subspace of the fluctuated operator, together with the gauge boundary conditions as data.

## 8. Discussion

**What the towerless picture gives.** The finite Dirac operator of an almost-commutative geometry behaves as the remnant of internal momentum on an interval: its masses are quantized momenta combined with bulk masses, its texture is localization data, and its chirality is carried by boundary conditions with an index that is stable under boundary Yukawa couplings and changes only through symmetry breaking. The emergence limit needs the tower; the collapse limit keeps a finite light sector along a tuned curve of bulk masses.

**What it does not give.** The results are spectral and kinematic. Nothing here selects the length, the bulk masses or the boundary data, and chirality is an input through boundary conditions, as in orbifold constructions. The interval reaches the Connes-Lott layer and the Yukawa block; no limit here yet produces the real structure, the order-one condition or a noncommutative finite algebra of the current framework, and since compressed functions form operator systems [Connes-van Suijlekom], such an algebra would have to come from the limit itself.

**Relation to the literature.** Theorem A: the Kaluza-Klein reading of the two-point space is in Connes-Lott (sections I and III), the two points as points of a fifth dimension in [Viet-Wali 1996], and the two-point model as an approximation of a manifold to be related to dimensional reduction in [Dimakis-Muller-Hoissen 1994, section VII]; the truncation theorem itself, with $|m|=\pi/(2l)$, was not found. Theorem B: wall modes with exponentially small mixing are classical [Jackiw-Rebbi 1976; Kaplan 1992; Shamir 1993], collapse of spectral triples to a point is treated by [Farsi-Latremoliere 2026]; the tuned collapse $\mu(l)$ was not found. Theorem C: the one-flavour spectrum is [Csaki et al. 2004, eq. (5.6)] and the warped multi-flavour textures are in [Casagrande et al. 2008]; no derivation of $D_F$ from localization in noncommutative geometry was found. Theorem D: products of real triples and the choice $J$ versus $J\Gamma$ are in [Dabrowski-Dossena 2011] and [Vanhecke-da Silva-Sigaud]; the factorization criterion and the results on 9 and 11 were not found. Proposition E restates [CCM 2007, eqs. (4.16), (5.27)]. Here "doubling" refers to the factorization of an even triple as an odd triple times a point, unrelated to fermion doubling. As mathematics, most ingredients are known; what may be new is their combination in one limiting construction that controls chirality, reality, truncation and localization together, and whether that combination imposes constraints the separate ingredients do not. We distinguish this from the novelty of the physical interpretation, which may be of interest even where the mathematics is established. Both will be checked against the literature before submission.

**Open problems.** (0) The founding problem: a family of commutative Kaluza-Klein data $(C^\infty(K_l),L^2(S_{K_l}\otimes E_l),D_l,J_l,\gamma_l)$ and notions of spectral, operator-algebraic and K-theoretic convergence under which it tends to a finite real triple $(A_F,H_F,D_F,J_F,\gamma_F)$, in particular a noncommutative one, with the structures of the current framework. (i) A gauge-covariant reduction of the gauge sector, since the fixed one fails (Proposition F). (ii) The sign of the reduction with a Majorana mass for $\nu_R$. (iii) Metric-compatible truncations (operator systems) for curved internal spaces. (iv) A proof of the mixing bound.

## Provenance

| result | proved by | checked by |
|---|---|---|
| Theorem A, Proposition A.1 | Astra 6 (lemma 05); Astra 6 (lemma 08, No-go 8) | Claude (numerical spectra, distances; Python) |
| Theorem B | Claude (lemma 09) | Claude (discretization, Python); Terra 6.1 (referee; two errors corrected) |
| Theorem C | Claude (lemma 12) | Claude (ODE shooting and random samples, Python); Terra 6.1 (referee; three errors corrected) |
| Theorem D | Astra 6 (lemmas 06, 08); Claude (lemma 07) | Claude (by hand; Python for 06 and 08); Astra 6 (lemma 07) |
| Proposition E | Claude (lemma 11) | Claude (by hand); Terra 6.1 queued |
| Proposition F | Astra 6 (lemma 13) | Claude (by hand) |

## References

To be verified against [../LITERATURE.md](../LITERATURE.md).

- M. Casagrande, F. Goertz, U. Haisch, M. Neubert, T. Pfoh, Flavor physics in the Randall-Sundrum model I, JHEP 10 (2008) 094.
- Y. Shamir, Chiral fermions from lattice boundaries, Nucl. Phys. B 406 (1993).
- N. A. Viet, K. C. Wali, Noncommutative geometry and a discretized version of Kaluza-Klein theory with a finite field content, Int. J. Mod. Phys. A 11 (1996).
- N. Arkani-Hamed, A. G. Cohen, H. Georgi, (De)constructing dimensions, Phys. Rev. Lett. 86 (2001).
- N. Arkani-Hamed, M. Schmaltz, Hierarchies without symmetries from extra dimensions, Phys. Rev. D 61 (2000).
- K. Agashe, G. Perez, A. Soni, Flavor structure of warped extra dimension models, Phys. Rev. D 71 (2005).
- A. H. Chamseddine, A. Connes, Why the Standard Model, J. Geom. Phys. 58 (2008).
- A. Dimakis, F. Muller-Hoissen, Discrete differential calculus, graphs, topologies and gauge theory, J. Math. Phys. 35 (1994).
- J. W. Barrett, Lorentzian version of the noncommutative geometry of the standard model, J. Math. Phys. 48 (2007).
- A. H. Chamseddine, A. Connes, M. Marcolli (CCM), Gravity and the standard model with neutrino mixing, Adv. Theor. Math. Phys. 11 (2007).
- A. Connes, Noncommutative geometry and the standard model with neutrino mixing, JHEP 11 (2006).
- A. Connes, J. Lott, Particle models and noncommutative geometry, Nucl. Phys. B Proc. Suppl. 18 (1990).
- A. Connes, W. D. van Suijlekom, Spectral truncations in noncommutative geometry and operator systems, Comm. Math. Phys. (2021).
- C. Csaki, C. Grojean, J. Hubisz, Y. Shirman, J. Terning, Fermions on an interval, Phys. Rev. D 70 (2004).
- L. Dabrowski, G. Dossena, Product of real spectral triples, Int. J. Geom. Methods Mod. Phys. 8 (2011).
- F. D'Andrea, F. Lizzi, P. Martinetti, Spectral geometry with a cut-off, J. Geom. Phys. 82 (2014).
- T. Gherghetta, A. Pomarol, Bulk fields and supersymmetry in a slice of AdS, Nucl. Phys. B 586 (2000).
- Y. Grossman, M. Neubert, Neutrino masses and mixings in non-factorizable geometry, Phys. Lett. B 474 (2000).
- S. J. Huber, Q. Shafi, Fermion masses, mixings and proton decay in a Randall-Sundrum model, Phys. Lett. B 498 (2001).
- R. Jackiw, C. Rebbi, Solitons with fermion number 1/2, Phys. Rev. D 13 (1976).
- D. B. Kaplan, A method for simulating chiral fermions on the lattice, Phys. Lett. B 288 (1992).
- P. Martinetti, R. Wulkenhaar, Discrete Kaluza-Klein from scalar fluctuations in noncommutative geometry, J. Math. Phys. 43 (2002).
