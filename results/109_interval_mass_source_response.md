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
