# Wilson mass and current sources on the chiral interval

Fix the sphere, finite interval, domain, two probe species and neutral scalar profiles of 89.2. Read all four chiral mass links at one common scale below the omitted charged states as in 89.3. The input to derive is the first tower correction to the four-mass ratio. The Wilson comparison keeps the eliminated determinant in the stiffness and the marked insertions in their own normalized density. Its scalar mass coordinate and its continuum flavour-current contact are separate tests. We use the same distinction for the interval sources. [Mass pencil, frames and determinant](89_monopole_charge_and_a_chiral_interval.md#four-masses-at-a-common-matching-scale) · [Wilson determinant, §98.3](https://github.com/yang-mills-group/OpenAI-informal-20261115/blob/6ca21d98b4022263fd7f2a3de5b5913b8495ee02/continuum-yang-mills-theory.pdf) · [Stiffness and mass definitions](https://github.com/yang-mills-group/OpenAI-QCD-20261104/blob/53f81cafe5cb9cd18cd0d5b49b8364cce50a0fe7/proof/YM/Massive/Target/Tower.lean) · [Contact-normalization comparison](https://github.com/yang-mills-group/QCD/blob/9b2971888b9d525431bdb398ae2cb3ac33bf28e5/docs/mass-current-normalization.md)

## A Green function for each cubic mass

**Proposition 109.1.** Use only the two holomorphic interspecies links specified in 89.2, with their Hermitian adjoints. Write $i=c,\ell$ for a colour entry or lepton, and $j=6,7$ for the up or down link. The positive-sphere-chirality right singlet times its scalar lies exactly in the retained left doublet. Indeed, the two longitudinal Gaussians have the same width and their product is proportional to $g_{2b,c_{di}}$, since $2c_{di}=c_{s,ij}+c_{Hj}$. The angular singlet times the degree-one scalar section is the normalized doublet up to its constant factor. The commutator of the root matrices sends $E_{ij}$ only to $E_{i5}$. Thus $QW|R_{ij}\rangle=0$. The double-resolvent mass vertex in 89.3 vanishes between these light modes. Its remaining contribution is
$$
 \operatorname{Re}(c_{ij}/a_{ij})=-S_{ij}/2,\qquad
 S_{ij}=\|(QD_0Q)^{-1}QW L_{ij}\|^2 .
$$

Here is its evaluation in scalar interval problems. Put $\mathcal A=4\pi r^2$, $b=1/(2r^2)$, and let $w_k$ be the fixed product of scalar amplitude and microscopic Yukawa in root $k$ before multiplication by $\epsilon$. For each $i,k$ set
$$
 F_{ik}=g_{b,c_{Hk}}g_{2b,c_{di}},\quad \psi_{ik}=g_{b,c_{s,ik}},\quad
 d=\partial_y+b(y-c_{s,ik}),\quad H=d^\dagger d .
$$
The operator $H$ has $dP=0$ at both ends. Define $I_{ik}^0=\langle F_{ik},H^+ F_{ik}\rangle$, with the normalized kernel $\psi_{ik}$ removed, and $I_{ik}^1=\langle F_{ik},(H+2/r^2)^{-1}F_{ik}\rangle$. Then
$$
 a_{ij}=w_j\langle\psi_{ij},F_{ij}\rangle/\sqrt{\mathcal A},\qquad
 S_{ij}=\mathcal A^{-1}\sum_{k=6,7}|w_k|^2
 \left[\delta_{jk} I^0_{ik}+\frac{2-\delta_{jk}}3 I^1_{ik}\right]
$$
up to a common choice of phases for the linear links. To see the weights, on the round sphere the two orthonormal degree-one sections have squared norms $(1\pm\cos\theta)/\mathcal A$. Their conjugate products have only angular momenta zero and one. The squared singlet overlap is $\delta_{jk}/\mathcal A$. The full norm is $(1+\operatorname{sign}_j\operatorname{sign}_k/3)/\mathcal A$ by spherical averaging. Subtraction gives the stated triplet weight. In the degree-one target the squared sphere Dirac eigenvalue on spin $l$ is $l(l+1)/r^2$. The separated first-order operator of 89.2 is unitarily represented by $\partial_y+\mu\sigma_3+\lambda_l\sigma_1$, with $\mu=b(y-c_{s,ik})$. Its adjoint product on the positive sphere component is $-\partial_y^2+\mu^2-b+\lambda_l^2$. The complementary component vanishes at the ends and the adjoint condition imposes $dP=0$ there. This yields the two resolvents. $\square$

On $I=[u,v]$ put $F_\perp=F-\psi\langle\psi,F\rangle$. Solving $d^\dagger z=F_\perp$ with zero end values gives
$$
 I^0=\int_u^v\frac{\left|\int_u^y\psi(t)F_\perp(t)\,dt\right|^2}{\psi(y)^2}\,dy .
$$
For $I^1$ solve $(H+2/r^2)z=F$ with the two Robin conditions and integrate $Fz$. Alternatively use the orthonormal eigenfunctions of the same $H$. Cutting its spectrum at $\Lambda^2$ leaves an absolute tail at most $\|F_\perp\|^2/\Lambda^2$ for $I^0$ and $\|F\|^2/(\Lambda^2+2/r^2)$ for $I^1$.

**Finite member.** In radius units choose $r=1$, $I=[-4,4]$, $(h_c,h_\ell,h_5,h_6,h_7)=(0.2,-0.3,0,0.4,-0.7)$ and $w_6=w_7=1$ in the corresponding units. The Cartan trace includes the colour multiplicity three and is zero. The crossings are $c_{s,ik}=(h_k-h_i)/b$, $c_{Hk}=(h_5-h_k)/b$. Quadrature for $I^0$ and a Robin boundary-value solve for $I^1$ give

| Link | $a_f$ | $\operatorname{Re}(c_f/a_f)$ |
|---|---:|---:|
| $u$ | 0.125200121 | −0.005928924 |
| $d$ | 0.042048497 | −0.007211140 |
| $\nu$ | 0.082036740 | −0.007833941 |
| $e$ | 0.082036740 | −0.007895274 |

The finite-wall log ratio is $1.091089787+0.001220883\,\epsilon^2+O(\epsilon^4)$ at tree level. The two displayed solver tolerances give the same rounded values. The quantum threshold of 89.3 still enters at the common subtraction point. [Calculation](../paper/interval_mass_response.py)

## A wall source that survives the alternating combination

In the log ratio, multiplicative corrections of the form $x_i+y_j$ cancel. A wall Yukawa proportional to the corresponding bulk Yukawa, with a length coefficient $l_j$ at the right end and common to colour and lepton, is allowed by the retained wall gauge group. Use the full doublet contraction before specializing its neutral component. To first order in $l_j$ the fractional linear mass shift is
$$
 l_j\,\frac{(\psi_{ij} g_{b,c_{Hj}}g_{2b,c_{di}})(v)}
                 {\int_I\psi_{ij}g_{b,c_{Hj}}g_{2b,c_{di}}\,dy}
 =l_j g_{2b,c_{di}}(v)^2 .
$$
Consequently $(l_6-l_7)[g_{2b,c_{dc}}(v)^2-g_{2b,c_{d\ell}}(v)^2]$ survives the alternating combination. Each end can carry such a term and a less symmetric wall can also distinguish colour and lepton. This identifies a particular finite counterterm at the first quantum order if $l_j$ is of that order. The next visit uses independently shaped scalar insertions to determine its boundary coefficient, then varies $h_c-h_\ell$ with the coefficients fixed. The gauge determinant and the current contact keep their own normalizations throughout.

## Calibrating the wall vertex and changing the geometry

**Proposition 109.2.** Work to first order in independent nonderivative wall Yukawa coefficients $l_{ij,-},l_{ij,+}$ and at the tree orders of 109.1. The coefficients are held fixed in the parent. Use the same subtraction scale below the first omitted threshold on both geometries. Write $d_i(y)=g_{2b,c_{di}}(y)^2$ and $e_\pm=u,v$ for the ends. Give the scalar in link $ij$ the prescribed external variation $p(y)g_{b,c_{Hj}}(y)$. At zero root expectation, in units of its computed uniform tree link, the low chiral mass vertex is
$$
 V_{ij}[p]=\int_I d_i(y)p(y)\,dy+
       \sum_{\pm}l_{ij,\pm} d_i(e_\pm)p(e_\pm).
$$
This follows from the exact product of the two Gaussians. At this order there is no heavy kinetic correction linear in the root expectation. The normalized external variation may excite massive modes of the parent. It is an insertion in the generating functional, with its profile specified by the source.

To read this vertex in a flavour Ward convention, take at least two identical dynamical copies on both backgrounds and fix the off-diagonal conserved vector charge by its contact on an internal bilinear. An infinitesimal *difference* of their real mass-link sources at fixed colour reference couples the divergence to the corresponding off-diagonal shaped scalar. Divide the sum of divergence and spectator variation by the source difference and compare its separated insertion with the scalar of a specified mass scheme, choosing a probe with a nonzero denominator. In a low-energy matching calculation this compares the coefficient of that same scalar after separately subtracting higher-dimension operators. Fix the scalar units independently at the common scale. This uses replicas of equal colour and electric charge within each species. The six positive-mass QCD construction supplies the regulator identity and the contact-matching obligation. A continuum realization for this geometric family still requires these introduced sources and limits. [QCD mass-current comparison](https://github.com/yang-mills-group/QCD/blob/9b2971888b9d525431bdb398ae2cb3ac33bf28e5/docs/mass-current-normalization.md)

At the calibration geometry take the linear hat functions $t_-=(v-y)/(v-u)$, $t_+=1-t_-$ and $b_I=t_-t_+$. For each $i$ use
$$
 p_{i,\pm}=t_\pm-b_I\,\frac{\int d_i t_\pm}{\int d_i b_I}.
$$
Their bulk linear mass vertices vanish and their endpoint values select opposite walls. Thus the two readings $B_{ij,\pm}=V_{ij}[p_{i,\pm}]$ determine $l_{ij,\pm}d_i(e_\pm)$ independently of the four uniform masses. At a second geometry the additive correction to the log cross-ratio is
$$
 \mathcal L\left(\sum_{\pm}\frac{d_i'(e_\pm)}{d_i(e_\pm)}B_{ij,\pm}\right),
 \qquad
 \mathcal L(X)=X_{c6}+X_{\ell7}-X_{c7}-X_{\ell6}.
$$
Here a prime denotes the new background. The two-by-two calibration is invertible on a finite slab because both Gaussian endpoint densities are positive. Exponentially small densities can limit precision. The displayed ratios propagate reading errors directly and avoid first dividing by a small density to quote a microscopic coupling. $\square$

Change $(h_c,h_\ell)$ from $(0.2,-0.3)$ to $(0.25,-0.45)$ in the finite example, preserving $3h_c+h_\ell$ and every other input. The computed uniform log ratio on the second slab is $1.525772225+0.001662035\,\epsilon^2$ through cubic order in the mass. Add the wall term above with left/right multipliers $(1.458633,0.655406)$ for colour and $(0.269146,2.966848)$ for leptons. The change in the bulk tree log ratio is $0.434682438+0.000441152\,\epsilon^2$. No measured masses enter either number. Errors include $O(\epsilon^4)$ in the bulk log ratio, second order in the wall coefficients and mixed wall times $\epsilon^2$ terms.

This prediction fixes the displayed boundary terms **conditional on the two independent readings per link**. Their values have yet to be obtained for an interacting family. Smooth finite vertex corrections can also respond to $p_{i,\pm}$. One extension separates an endpoint distribution from any integrable bulk density by taking sources equal to one at that end with support in a collar of width $\delta$; the bulk error is bounded by the integral of the absolute density over the collar. This demands locality, control of the source normalization at that resolution, and a regulator limit before $\delta\downarrow0$. Further wall operators involving derivatives or powers of the background require additional sources or geometries.

## A finite contribution to the Wilson colour stiffness

At zero neutral expectation the constant external gluon couples diagonally to each coloured internal eigenmode. Its tree inverse coupling in the unwarped product with fixed seven-dimensional gauge metric is proportional to $4\pi r^2(v-u)$ and stays fixed in this intercept variation. Define the one-loop fermion response by the transverse, momentum-squared coefficient of the two-background-gluon Hessian of the heavy determinant in 89.3, including its two-gluon contact. The Wilson construction similarly reads stiffness from transverse sine and cosine tests. Here we can sum exactly the change from the entire *nonzero longitudinal towers over the retained sphere kernels*. The light chiral zero modes are kept in the effective theory. [Wilson stiffness readout](https://github.com/yang-mills-group/OpenAI-QCD-20261104/blob/53f81cafe5cb9cd18cd0d5b49b8364cce50a0fe7/proof/YM/Massive/Target/Tower.lean) · [Accumulated determinant response, Lemma 98.3](https://github.com/yang-mills-group/OpenAI-informal-20261115/blob/6ca21d98b4022263fd7f2a3de5b5913b8495ee02/continuum-yang-mills-theory.pdf)

For slope $b_0$ and crossing $c$, the nonzero squared masses of $d^\dagger d$ also form the spectrum of $dd^\dagger$ with Dirichlet ends, $d=\partial_y+b_0(y-c)$. In radius units let
$$
 Y(b_0,c)=\big[g_{b_0,c}(u)g_{b_0,c}(v)\big]^{-1}.
$$
The Dirichlet determinant ratio at two crossings is $Y(b_0,c')/Y(b_0,c)$. Indeed the zero-energy solution of $dd^\dagger z=0$ with initial data $(0,1)$ is
$z(y)=[g(u)g(y)]^{-1}\int_u^y g(t)^2\,dt$. Its end value is $Y$, and the Dirichlet determinant ratio theorem applies to these positive scalar operators on the same compact interval. The high longitudinal relative logarithms are summable because the two bounded potentials differ by a bounded multiplication and the squared eigenvalues grow quadratically. [Dirichlet functional determinants](https://arxiv.org/abs/math-ph/0305010)

For one family sum $\log(Y'/Y)$ with multiplicity two at $(2b,c_{dc})$ and one each at $(b,c_{s,c6})$ and $(b,c_{s,c7})$. Each nonzero longitudinal mode is a Dirac colour triplet with $T_F=1/2$. The difference in its one-loop matching term between geometries is $-T_F\log(Y'/Y)/(12\pi^2)$ per tower with the listed multiplicity. The finite example gives total log squared-mass ratio $0.1910232443$ and inverse-coupling shift $-0.0008064459$ per family. This is the change in the heavy Dirac decoupling correction at common scale and fixed high-side coupling. Other angular modes, charged bosons and local gauge counterterms enter the full stiffness. The next calculation can sum the remaining angular modes of these same fermions after isolating their local ultraviolet subtractions. [Two-geometry calculation](../paper/interval_mass_response.py)
