# A single rotation sector tests the protected two-D0 mass spectrum

Fix the undeformed gauge-invariant relative $SU(2)$ BFSS Hamiltonian with $g_{\rm YM}=1$, $T_a=\sigma_a/\sqrt2$, and kinetic term $-\Delta/2$. We vary the rotation representation and ask for a positive square-integrable energy below $E_P=(2\pi)^{2/3}/4=0.85125548\ldots$. The spacetime convention is $M\ell_p=2\sqrt E/(2\pi)^{1/3}$. The dimensionless matrix radius $R=|X|$ measures the relative transverse coordinates. The longitudinal circle used in the mass conversion is an independent input. [Hamiltonian, channel decomposition and mass conventions](issues/16.md)

**Theorem.** A two-D0 multiplet with $0<E\le E_P$ must have one of the following three highest superspins by the bounds of this file, or belong to the even one-row family $(2m,0,0,0)$, $m\ge0$:
$$
(1,0,0,0),\qquad (1,1,0,0),\qquad
(\tfrac12,\tfrac12,\tfrac12,\tfrac12).
$$
The three protected candidates share a single mass test. A positive protected sub-Planck level exists if and only if the lowest energy in the total vector representation $\mathbf9$ is below $E_P$. That sector has compact resolvent. A ground energy at or below $E_P$ changes by less than $3.81\times10^{-28}$ on imposing a Dirichlet boundary at $R=17$. Each total type *present* in the free two-particle channel has essential spectrum $[0,\infty)$. An embedded eigenstate in that continuum and an eigenstate in a confined component are distinct possibilities. [Spinor mass floor and correction for superspin $\boldsymbol{36}$](58_two_d0_vector_spectrum.md#the-spinor-mass-floor)

## A form bound on the confined components

Let $\mathcal G$ denote the angular space of the flat fast vacuum with the physical colour-exchange projection. Fix a total rotation type absent from $\mathcal G$. Let $r=s_1$ be the largest singular value of the $3\times9$ matrix $X$, $t=(s_2^2+s_3^2)^{1/2}/r$, $x=t^2$, $d=s_2s_3/r^2$, $k=d^2$, and $W=1-x+k$. Thus $R=r\sqrt{1+x}$, $0\le x\le2$ and $\sqrt{(x-1)_+}\le d\le x/2$. The quartic potential is $r^4(x+k)$. For $c>0$ write $p_c$ for the largest root of
$$
p_c^3-(c^2+x)p_c-2cd=0 .
$$
The Clifford norm at singular entries $(cr,s_2,s_3)$ is $8\sqrt2\,r p_c$. This follows from the three-by-three symmetric matrix in the proof of the high-spin mass bound and holds for either sign of the Yukawa term. [Clifford norm and transverse coordinates](issues/16.md#a-mass-bound-in-specified-rotation-sectors)

On the inner tube $t<19/20$, flatten the radial and transverse density by $\Omega=r^5\sqrt W$ as in the channel proof. The coefficient of $1/R^2$ from these two kinetic terms is exactly
$$
 h_i=(1+x)\frac{6k^2-13kx+18k+5x^2-11x+4}{2W^2}.
$$
Indeed the radial term times $r^2$ is $(20+9S+S^2-2T)/2$ with $S=(x-2k)/W$ and $T=(x-4k+xk)/W^2$. In $Z=Y/r$ the transverse term times $r^2$ is $(-32+14x)/(4W)-T/2$. Here $\Delta_Z W=-32+14x$ and $|\nabla_Z W|^2=4(x-4k+xk)$. Angular kinetic energy and the remaining flat radial kinetic energy are nonnegative.

Reserve $\delta=37/200$ of $r^2|Y|^2$ and split the fermion term into $(1-\epsilon)B_0+B(\epsilon r,Y)$ with $\epsilon=41/200$. The operator $B_0$ has eigenvalues $\sqrt2r(n-8)$, where $n$ counts fast fermion excitations. After zero extension, the transverse oscillator with potential $(1-\delta)r^2|Y|^2$ has levels $\sqrt2r(8+m)\sqrt{1-\delta}$. The ground projection intertwines the rotations for this frequency as well. The type is absent from $\mathcal G$, and colour neutrality forces $m+n$ even, so $m+n\ge2$. Apply the exact norm to the residual Yukawa term. The resulting inner lower form is $A_i R^4+L_i R+h_i/R^2$, where
$$
 A_i=\frac{\delta x+k}{(1+x)^2},\qquad
 L_i=\frac{\sqrt2}{\sqrt{1+x}}\left[
 8(\sqrt{1-\delta}-1)+2\min(\sqrt{1-\delta},1-\epsilon)
             -8(p_\epsilon-\epsilon)\right].
$$
For the outer piece keep the full quartic and use the 27-dimensional Hardy inequality and the full fermion norm. The corresponding coefficients are
$$
 A_o=\frac{x+k}{(1+x)^2},\qquad
 L_o=-\frac{8\sqrt2\,p_1}{\sqrt{1+x}},\qquad h_o=625/8.
$$
The tube cutoff, radial multipliers and density flattening preserve the total type. The localized inner functions vanish before the singular axes meet. [Ground-channel projection and localization proof](issues/16.md#the-two-particle-channel-at-low-spin)

Set $z=\max(0,\min(1,(t-1/10)/(17/20)))$, $y=z(1/4-z/4+z^2)$ and $\theta=2\arctan y$. Localize with $\cos\theta$ and $\sin\theta$. Write $w=((1-y^2)/(1+y^2))^2$. Let $A=wA_i+(1-w)A_o$, $L=wL_i+(1-w)L_o$, and
$$
 h=wh_i+(1-w)h_o-D,\qquad D=\frac{2(1+x)^2(y')^2}{(1+y^2)^2},
$$
where $y'=dy/dt$ and $D=0$ off the transition. The localization formula gives this cost because $|\nabla t|=(1+x)/R$. For $t\ge19/20$ use only the outer coefficients. We obtain $H\ge AR^4+LR+h/R^2$ as a quadratic form.

**Lemma (rational enclosure).** Throughout the physical angular domain and for every $R>0$,
$$
 AR^6+LR^3-13R^2+h+252\ge0 .
$$

**Proof by interval arithmetic (Python integers).** The following specifies the arithmetic and subdivision so that the finite certificate can be repeated. For each angular box compute lower endpoints $a,b,g$ for $A,L,h$. Given any $l>0$, concavity gives $R^2\le 2R^3/(3l)+l^2/3$. Set $C=g+252-13l^2/3$ and $B=b-26/(3l)$. The box passes if
$$
 a\ge0,\qquad C\ge0,\qquad (B\ge0\ \text{or}\ B^2\le4aC).
$$
This is the nonnegativity test for a quadratic on $R^3\ge0$, including $a=0$. Choose $l$ by bisecting $6a l^4+3b l-26$ between 0 and 32 and taking the upper endpoint. If $a<0$, the value at 32 is negative, or $a=0$ and $b\le0$, subdivide.

Use the fixed-point grid $10^{-12}\mathbb Z$ for interval endpoints. Round each sum, product, and square root outwards. For division by a positive interval multiply by its outward-rounded reciprocal. Square by multiplication. Bisections stop when adjacent grid points bracket the root, with the midpoint rounded down. Use exact integer signs for both polynomials. For the positive cubic root use $[0,4]$, the upper endpoints of $x,d$, and retain the upper root bracket. The largest root increases in each variable. For $C,B$ round each subtracted fraction upwards once and compare the final products exactly.

Start with $d=vx/2$, $v\in[0,1]$, and three $t$ intervals with endpoints $0,1/10,19/20,283/200$. Discard a box only if $\inf x>2$ or $\sup k<\inf x-1$. In the transition evaluate $y=z(1/4+z(z-1/4))$ at each endpoint of $z$ separately, intersecting with $[0,1]$. It increases, and $w$ decreases, so evaluate $w$ at the two resulting endpoints in reverse order and intersect with $[0,1]$. Enclose the derivative above by the upper endpoint of $(1/4-z/2+3z^2)/(17/20)$ on the full $z$ interval. Use the upper derivative and lower $y$ in $D$. The other two intervals have respectively $w=1,0$ and $D=0$.

Evaluate $A=[k+x(1-(1-\delta)w)]/(1+x)^2$. Use the displayed numerator of $h_i$ in expanded form. In $L_i$ use $2(1-\epsilon)$ for the minimum term, adding $8\epsilon$ before subtracting $8p_\epsilon$. For $L$ take the lesser of the lower endpoints of $v_0 L_i+(1-v_0)L_o$ for the two endpoints $v_0$ of $w$. Do the same for the density before subtracting $D$; omit the unused inner or outer expression when its weight vanishes identically. On a failed box bisect $t$ if eight times its width exceeds the width of $v$, and bisect $v$ otherwise. The subdivision gives the following counts.

| $t$ interval | Accepted boxes | Outside the physical domain | Maximum bisection depth |
|---|---:|---:|---:|
| $[0,1/10]$ | 93 | 0 | 8 |
| $[1/10,19/20]$ | 12,252 | 0 | 18 |
| $[19/20,283/200]$ | 10 | 3 | 4 |

The leaves cover the physical domain. Dividing the certified inequality by $R^2$ proves the lower form $H\ge13-252/R^2$. $\square$

## From the matrix radius to an invariant mass

Let $\psi$ be a normalized confined eigenstate of energy $E<13$ and $f_K=\min(R,K)$. The eigenfunction identity with kinetic energy $-\Delta/2$ gives
$$
 q[f_K\psi]=E\|f_K\psi\|^2+\tfrac12\langle|\nabla f_K|^2\rangle.
$$
Apply the lower form to $f_K\psi$. Since $f_K/R\le1$ and $|\nabla f_K|\le1$, monotone convergence gives
$$
 (13-E)\langle R^2\rangle\le252+\tfrac12 .
$$
For $E\le E_P$ this bounds the second moment by $20.78405$. This step uses the eigenstate equation.

In the angular Ward identity choose $J=J_{12}+J_{34}+J_{56}$. For each of these planes give the four other axes among $1,\ldots,6$ a triple-gamma coefficient $1/240$ and the last three axes $13/360$. Their sum is $1/8$, as required by the anticommutator. The squared-multiplier coefficient is at most
$$
 d_3=\max\{1/32+16(1/240)^2,\ 24(13/360)^2\}=227/7200.
$$
For a highest-weight vector $j=\lambda_1+\lambda_2+\lambda_3$, so $E\langle R^2\rangle\ge K=j^2/(64d_3)$. The two bounds give $E\ge13K/(252.5+K)$ throughout $E<13$. Already $j=6$ gives $E\ge0.85794598\ldots>E_P$. [Angular multipliers, Appendix B](https://arxiv.org/html/2611.09837v1#A2) · [Weighted rotation identity and its normalization](issues/16.md#the-remaining-two-d0-mass-thresholds)

For every superspin except $(2m,0,0,0)$ take the highest vector of the total component $\lambda=\rho+(1,1,1,0)$ in $V_\rho\otimes\mathbf{84}$. Its absence from $\mathcal G$ follows from the interlacing and exchange test in the channel proof. If $\rho_4=0$, every $\sum_i\rho_i\ge3$ has $j\ge6$. If $\rho_4>0$, use the four-plane coefficient $d_4=0.034804$ of the earlier Ward estimate. Its rotation eigenvalue satisfies $j_w=3+\sum_i\rho_i-0.14\rho_4\ge3+0.965\sum_i\rho_i$. At sum four it gives $E\ge1.00374$. Integral dominant weights with last entry zero and sum below three leave the vector and two-form after the even one-row weights are removed. The half-integral dominant weights of sum less than four give two spinorial candidates for the first enclosure. Positive energy is constant across each supermultiplet. Every protected superspin has $j=\lambda_1+\lambda_2+\lambda_3\ge4$. The three-plane bound therefore gives $E\ge720/1819$, or $M\ell_p\ge0.6818988$, also for the four candidates of this first bound.

## The spinorial mass bound

For a half-integral **total** rotation type absent from $\mathcal G$, one has the stronger form $H\ge11-184/R^2$. At a full-rank matrix the residual *full* fermion operator with singular entries $(cr,s_2,s_3)$ has a unique vacuum. Its one-dimensional representation of the connected $\mathrm{Spin}(6)$ of the unused axes is trivial. Spatial $2\pi$ rotation acts by a minus sign on every creation operator. A half-integral total type therefore needs at least one excitation of this full matrix. Write $p=p_c$ for the largest dimensionless root and $q$ for the smaller magnitude of its negative roots. The residual lower bound is $\sqrt2r(-8p+q)$. It extends to $d=0$ with $q=0$. The oscillator occupation in the separate $B_0$ estimate still allows two bosons with no fast fermion. It obeys the same $m+n\ge2$ used above.

For completeness we give the second rational enclosure (Python integers). Use the preceding scalar formulas with every occurrence of $-8p_c$ replaced by $-8p_c+q$, for $c=\epsilon$ inside and $c=1$ outside. The localization transition now has $t_0=77/200$, $t_1=99/100$ and $y=z(2/3-z/5+8z^2/15)$. Use constant oscillator fractions separately on bands of the **principal radius** $r$. The first band is $[0,2]$, followed by intervals of width $1/8$ up to 8, then $[8,\infty)$. Let $u$ be the midpoint of a finite band and take $u=8$ on the last. Round to the nearest thousandth (ties to even) and clip as follows,
$$
 \delta=\operatorname{clip}_{[.001,.700]}(1/80+16/(5u^2)),\qquad
 \epsilon=\operatorname{clip}_{[.001,.920]}(-1/125+45/(8u^2)).
$$
These choices only split the transverse operator on a fixed $r$ fibre. Discarding the flat radial kinetic energy introduces no derivatives of the choices. Keep the smaller of the lower endpoints of $\sqrt{1-\delta},1-\epsilon$ in $L_i$.

The signed root product gives $q(p-q)=2cd/p$. With $\bar p$ the existing upper root enclosure, start with $q_0=0$ and round down $q_{j+1}=2\underline c\,\underline d/[\bar p(\bar p-q_j)]$ three times. Each iterate is a lower bound. It covers the degenerate face $d=0$. Use these lower bounds when enclosing $L$. Enclose the derivative above by the upper endpoint of $(2/3-2z/5+8z^2/5)/(t_1-t_0)$. The angle input $z$ uses the new transition endpoints. The first enclosure's grid and angular bisection rule apply unchanged.

For a radial band $[r_0,r_1]$, confine the scalar minimization to the interval with lower endpoint $\inf(r_0\sqrt{1+x})$ and upper endpoint $\sup(r_1\sqrt{1+x})$. Use the tangent test with 13 replaced by 11 and 252 by 184. Clamp the positive root of $6a l^4+3b l-22=0$ to this interval using the derivative sign at the endpoints. A nonpositive derivative throughout a finite interval selects its upper endpoint. On an unbounded interval, bisect with upper bracket 64. The exact nonnegativity of $A$ permits the enclosure $a=\max(0,\inf A)$. For $Z=R^3$, round the interval ends $Z_-,Z_+$ outwards. If $2aZ_-+B\ge0$ test $aZ_-^2+BZ_-+C\ge0$. If $Z_+$ is finite and $2aZ_++B\le0$ test the upper endpoint instead. Otherwise use $C\ge0$ and $4aC\ge B^2$. For all 50 radial bands together there are 15,524 accepted angular boxes and 53 outside the physical domain, with maximum depth 13. This proves $H\ge11-184/R^2$ on the spinorial confined components. The eigenfunction cutoff then gives $(11-E)\langle R^2\rangle\le184.5$ for $E<11$.

For superspin $\mathbf{128}$ take its confined total component $\lambda=(5/2,3/2,3/2,1/2)$. Use plane weights $(1,1,1,0.67)$. For each of the first three planes split the triple-gamma coefficients among its other four early axes, axes 7 and 8, and axis 9 as $0.009,0.028,0.033$, respectively. For the last plane take $0.009$ on the first six axes and $0.02975$ on the ninth. These terminating decimals are exact rationals. The sums are $1/8$ and $0.67/8$. The three squared-multiplier coefficients are $0.033194,0.032844125,0.0332165$. Hence $j=5.835$, $K=j^2/(64\cdot0.0332165)>16.01577$ and
$$
 E\ge\frac{11K}{184.5+K}=0.87860166\ldots>E_P
$$
when $E<11$. The other energies already exceed the threshold. This removes $\mathbf{128}$ from the four candidates of the first enclosure and leaves $\mathbf9,\mathbf{36},\mathbf{16}$ as protected candidates. [The spinor mass floor](58_two_d0_vector_spectrum.md#the-spinor-mass-floor) improves the lower bound for $\mathbf{16}$.

## The common vector component

Let $V=\mathbf9$, $S=\mathbf{16}$ and $T=\ker(\gamma:V\otimes S\to S)=\mathbf{128}$. The supersymmetry polarization module is $S^2_0 V\oplus\Lambda^3 V\oplus T$. The four candidates of the first enclosure are $V,\Lambda^2 V,S,T$. Each tensored with the polarization module contains $V$ by the following equivariant maps.

- The contraction of a traceless symmetric tensor with a vector gives $V$ in $V\otimes S^2_0V$.
- Contracting a two-form into a three-form gives $V$ in $\Lambda^2V\otimes\Lambda^3V$.
- The summand $T$ of $V\otimes S$ gives $V$ in $S\otimes T$ by reciprocity.
- On $T$ compress Clifford multiplication by $v\in V$ on the spinor index. The resulting map $V\otimes T\to T$ is equivariant and nonzero. For unit $v$ take a nonzero gamma-traceless vector-spinor supported on two coordinate axes perpendicular to $v$. Anticommutation with both gamma matrices leaves its image gamma-traceless, and $\gamma(v)$ is invertible. Reciprocity gives $V$ in $T\otimes T$.

Conversely $V$ never occurs in an even one-row superspin tensored with these polarizations. The only one-row summands of $V\otimes S^2_0V$ are $V$ and the traceless symmetric cube. The contraction, alternating and remaining Young components of $V\otimes\Lambda^3V$ are $\Lambda^2V,\Lambda^4V$ and $(2,1,1,0)$. Finally $V\otimes T$ is spinorial. The same tests against the free even harmonics times $\mathbf{44}\oplus\mathbf{84}$ and the free odd harmonics times $\mathbf{128}$ show that the total vector is absent from $\mathcal G$. Its spectrum is discrete, with strictly positive energies by rotational singletness of the zero modes.

To construct a physical vector state, use principal axes $X=rn v^T+Y$ with colour unit vector $n$, spatial unit vector $v$ and $Yv=0$. The tangent two-form $\beta_{ij}=\epsilon_{abc}n_aY_{bi}Y_{cj}$ and a slow polarization $A\in S^2_0V$ give the equivariant map $A\mapsto\beta(P_{v^\perp}Av)$. It is nonzero when the two transverse colour rows are independent and $P_{v^\perp}Av$ is chosen in their span. Replacing $(n,v)$ by $(-n,-v)$ reverses both factors. The neutral fast vacuum and the exchange-even slow $\mathbf{44}$ thus give a physical lift. Apply the adjoint map to a fixed vector, multiply by the fast Gaussian and an invariant smooth cutoff supported inside the tube, and extend by zero. Disjoint radial cutoffs give infinitely many independent copies of the vector. Compact resolvent gives infinitely many positive vector levels. Their lowest tests all three remaining protected superspins. An even one-row embedded level needs a separate test.

## The fermion potential in the vector sector

At a regular diagonal matrix $X$ with $s_1>s_2>s_3>0$, let $p,-a,-b$ be the dimensional eigenvalues of the symmetric three-by-three matrix with zero diagonal and off-diagonal entries $s_1,s_2,s_3$. Thus $a,b>0$, $p=a+b$. Set $q=\min(a,b)$. The least pointwise fermion energy compatible with a total vector is
$$
 B_{\mathbf9,\min}(X)=\sqrt2\,[-8p+\min(4q,p)].
$$
This is the lowest eigenvalue among the admissible values of vector-valued angular sections at the given orbit. The kinetic energy still acts on those sections.

**Proof.** The stabilizer contains rotations of the six unused spatial axes and the synchronized spatial and colour sign reversals of any two principal axes. Their lift acts through $\mathrm{Spin}(6)$ and the quaternion group of the three spatial half turns. In the Clifford conjugation by $\operatorname{diag}(\gamma_1,\gamma_2,\gamma_3)$, a synchronized rotation with spatial spinor $g$ and colour signs $e_i$ acts on each transformed spinor as $\gamma_i e_i g\gamma_i=g$, since $g\gamma_i g^{-1}=e_i\gamma_i$. The three fermion branches therefore carry the same spatial spin representation. The complex structure $\gamma_1\gamma_2\gamma_3$ splits it into $(\mathbf2,\mathbf4)$ and $(\mathbf2,\overline{\mathbf4})$ for $\mathrm{Spin}(3)\times\mathrm{Spin}(6)$, restricted to the synchronized subgroup. The choice of creation space reverses with the sign of the branch eigenvalue. The two negative branches have the same chirality. The Fock vacuum is invariant under the stabilizer. To see its character, deform to equal positive singular values. The fermion gap stays open and the character of its vacuum line is constant. At equal singular values the line is invariant under the connected semisimple diagonal $\mathrm{Spin}(3)$ and $\mathrm{Spin}(6)$.

The vector restricts as $(\mathbf3,\mathbf1)\oplus(\mathbf1,\mathbf6)$. The central sign of $\mathrm{Spin}(6)$ forces even occupation. The vacuum has trivial character, whereas the spatial three-vector splits into the three nontrivial sign characters. Two creators from one branch give $(\mathbf1,\mathbf{10})\oplus(\mathbf3,\mathbf6)$, or its conjugate, which misses the vector after restriction. Two different branches cost at least $\sqrt2 p$. Four or more creators cost at least $4\sqrt2 q$. Both bounds are attained among the compatible fibre values. One creator from each negative branch supplies $(\mathbf1,\mathbf6)$. Four creators from the cheapest branch include $(\mathbf5,\mathbf1)$ by the alternating determinant of the four spinors. The traceless symmetric tensors of the spatial three-vector contain all three sign characters in their off-diagonal entries. At regular singular values the rotations and synchronized sign choices described above generate the stabilizer, with the physical central lifts. This proves the formula. The bound holds almost everywhere, which suffices for its quadratic-form use. $\square$

For example, at fixed $x=(s_2^2+s_3^2)/s_1^2\le24/25$ one obtains $B\ge-8\sqrt2 R$ on vector sections. In units $s_1=1$ one has $\sqrt{1+x}\le p\le p_e=(1+\sqrt{1+4x})/2$ and $2q=p-\sqrt{4(1+x)-3p^2}$. On $4q\le p$, the expression $-8p+4q$ increases with $p$. On $4q\ge p$, the expression $-7p$ decreases. The endpoint bounds are therefore $-8\sqrt{1+x}$ and $-7p_e$ whenever the latter branch occurs. For $x\le24/25$, $7p_e\le8\sqrt{1+x}$. The gain $\sqrt2\min(4q,p)$ can tend to zero as the smallest singular value tends to zero. A lower bound for the vector ground must also control the kinetic energy near those shapes.

## A finite ball and the scattering continuum

Write $a=1.541$. The earlier confining form $H\ge aR-358/R^2$ applies on the same total type. For $E\le E_P$ take $F=(2\sqrt a/3)(R^{3/2}-27)_+$ and let $\eta$ rise linearly from zero to one on $8\le R\le9$. Apply the eigenfunction identity to $\eta\exp(\min(F,L))\psi$. The two differentiated cutoffs have disjoint interiors of support. On $8\le R\le9$ the quantity $aR-358/R^2-E$ is positive. For $R\ge9$ the effective lower bound after subtracting $|F'|^2/2$ is at least $\mu=9a/2-358/81-E_P>1.66349$. The inner cutoff costs at most $1/2$. Sending $L\to\infty$ gives
$$
 p=\Pr(R\ge16)\le e^{-2F(16)}/(2\mu)<7.61\times10^{-28}.
$$
For a sector ground state cut off linearly from one at 16 to zero at 17. The variational principle and the same identity give $0\le E^D_{17}-E\le p/[2(1-p)]<3.81\times10^{-28}$. A certified lower bound on the first vector Dirichlet level exceeding $E_P+3.81\times10^{-28}$ would exclude every protected sub-Planck mass. A vector trial energy strictly below $E_P$ would establish existence by the variational principle. Bajaj and Lin find a singlet of superspin $\mathbf{84}$ near $E=6.534$, which has no vector partner. Their first reported superspin $\mathbf{128}$ singlet is near $9.8885$ and predicts one. Their box and grid comparisons give numerical uncertainties for those levels. The new form gap $59/50$ on orbital degrees $l\ge59$ at radius 17 gives a Schur reduction of the lower-bound test at $213/250$. Its retained coupled form still needs a certified lower enclosure. The scalar chamber comparison has an explicit trial below $19/25$. [Ground-state rotation theorem](https://arxiv.org/pdf/hep-th/0001189v2) · [Numerical levels and conventions, Table 4 and Appendix C](https://arxiv.org/html/2611.14512v1) · [High orbital degree gap and scalar trial](58_two_d0_vector_spectrum.md#a-high-orbital-degree-gap-on-the-radius-17-ball)

For a total type in $\mathcal G$ use the normalized disjoint-shell wave packets $u_b$ from the channel proof. They occupy $b<r<2b$ and $t<1/3$, with $\|H^{1/2}u_b\|+\|\partial_r u_b\|=O(b^{-1})$. For each real $p_0$ multiply by $e^{ip_0r}$. On this tube $|\nabla r|=1$ and $\Delta r=10/r+\partial_r\log W=O(b^{-1})$. In the distributional product rule the residual at energy $p_0^2/2$ is $e^{ip_0r}(Hu_b-ip_0(\partial_r+\Delta r/2)u_b)$. The first term tends to zero in the dual of the form domain because $\|H^{1/2}u_b\|\to0$. The phase preserves total type and is bounded on the form domain and its dual by the supercharge commutator with the Lipschitz function $r$. The derivative terms tend to zero in norm. Escape of support gives weak convergence to zero. The form Weyl criterion and $H\ge0$ give $\sigma_{\rm ess}(H)=[0,\infty)$ on that type. $\square$ [Angular content of the free channel, eq. (24)](https://arxiv.org/html/2611.17325v2#S4)

The two-D0 pointwise fermion calculation was derived by GPT-6.2 Astra Max and independently checked by GPT-6.2 Sol and GPT-6.1 Terra.

Every confined vector level has a protected partner embedded in the total $\mathbf{128}$ continuum. The remaining charge-two questions are the lowest energy in the total vector representation relative to $E_P$ and possible positive point spectrum with even one-row superspin. In that latter family a bound state would share its superspin with a scattering channel. Charge $N\ge3$ introduces additional cluster channels. The BFSS operator at a fixed circle radius also leaves the equation for the spacetime radius open. [Embedded partners and the open point-spectrum test](58_two_d0_vector_spectrum.md#positive-eigenvalues-in-a-scattering-total-type)

Derived by GPT-6.2 Astra Max. GPT-6.1 Terra independently checked the density, both interval enclosures and the three-label count, the eigenstate localization and the continuum argument. GPT-6.2 Sol checked the three-plane angular multiplier and the common vector polarization of the candidate representations.
