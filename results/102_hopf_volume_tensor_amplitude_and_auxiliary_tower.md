# The dynamical Hopf volume tensor and auxiliary Maxwell tower

Keep the trajectories, intrinsic colour stabilizers and full vortex Maxwell system of 101. Retain the marked Killing projection in the matter derivative, the quotient roots and two-period tensor, and the horizontal fermion domain. Replace the fixed orbit field by a complex volume tensor with independent amplitude, orientation and arbitrarily high colour harmonics. Extend the auxiliary $U(1)_C$ Maxwell field to all components on the total space. The observables are the new coloured thresholds and the original weak current poles. A separate local metric-connection calculation tests the role of the Killing projection.

## Polynomial potential and the colour sextet

**Proposition 102.1.** A charged ambient chiral three-form has an invariant quartic potential with a rank-one vacuum orbit and a positive normal Hessian. At the Hopf vacuum its physical constant normal variables are a neutral real radial mode and a weak-singlet complex colour sextet with $Q=-2/3$. The masses are independently tunable while preserving the locking stiffness of 94.

**Proof.** Choose the Euclidean Hodge half of the ambient complex three-forms that contains the $P=3$ conjugate holomorphic volume form. Under $\mathrm{Spin}(6)=\mathrm{SU}(4)$ it is $\mathrm{Sym}^2\mathbb C^4$. Contraction by the unit radial normal $\nu$ identifies this space pointwise with complex two-forms on the colour sphere. For a chiral ambient form $\Xi$ its tangent and normal parts are paired by Hodge star, so $\|\Xi\|^2=2\|\iota_\nu\Xi\|^2$. This fixes the normalization of the leaf two-form. We use the ambient flat derivative in the marked spherical frame. The spin representation restricts as $\mathbf3_{-1/2}+\mathbf1_{3/2}$ under colour and $P$, giving the active weights of 94.

Represent the tensor by a symmetric matrix $M$ of $C$-charge $-2$. Let $M_0=s_0e_4e_4^{\mathsf T}$, $s_0>0$. With $N=M^\dagger M$ take
$$
 W(M)=\frac{\alpha}{4}(\operatorname{tr}N-s_0^2)^2+
       \frac{\beta}{4}\big[(\operatorname{tr}N)^2-\operatorname{tr}N^2\big],
 \qquad \alpha,\beta>0 .
$$
The second term is $\beta/2$ times the sum of products of pairs of distinct eigenvalues of $N$. The zero set therefore consists of rank-one symmetric matrices of squared norm $s_0^2$. These are $s_0vv^{\mathsf T}$ with $\|v\|=1$ and $v$ identified with $-v$. This is a single compact gauge orbit, diffeomorphic to $\mathbb{RP}^7$. The connected locked stabilizer and the action of the common central sign are those of 94, since $M_0$ has weights $(P,C)=(3,-2)$.

In orthonormal linear coordinates write
$$
 M=\begin{pmatrix}
 A & u/\sqrt2\\
 u^{\mathsf T}/\sqrt2 & s_0+r+i\vartheta
 \end{pmatrix},
 \qquad A=A^{\mathsf T},\quad r,\vartheta\in\mathbb R .
$$
Here $u$ and $\vartheta$ are orbit tangents. The quadratic potential is $\alpha s_0^2r^2+\beta s_0^2\|A\|^2/2$. For example the terms of first order in the two-by-two minors are precisely $s_0A_{ij}$. With kinetic coefficient $Z_M/2$ in the real Frobenius norm, the squared masses are $2\alpha s_0^2/Z_M$ for $r$ and $\beta s_0^2/Z_M$ for $A$. The latter is $\mathbf6$ with $P=-1$ and therefore $Q=Y=(-1-3)/6=-2/3$. Its six complex components are genuine spin-zero modes of the field on the colour leaves. The constant triplet and phase are the old gauge tangents.

Choose $Z_M=z_M B_0^2e^{2\sigma}$ once in the action, so $Z_M=z_M B^2$ on the background. The phase kinetic stiffness is $CV Z_Ms_0^2=f_S^2$. The same equivariant norm gives twice that stiffness on each broken rotation in the original metric basis, as in 94.5. Since $CV B^2=3I_3$ along the fit, taking $z_Ms_0^2=f_S^2/(3I_3)$ retains the locking term exactly. The independent coefficients $\alpha,\beta$ then set the two physical normal masses in units of $1/B$. $\square$ [Chiral three-form spinor representation](https://arxiv.org/abs/1212.2689) · [Hopf lift and rotation stiffness](94_spin_hopf_trajectory_and_its_charge_lift.md)

## Fibre harmonics and the full auxiliary gauge field

**Proposition 102.2.** There is a fixed fibration action retaining every colour harmonic of $M$ and the full auxiliary Maxwell field. In it the first extra coloured bosonic squared mass along the fitted trajectory of 101 is the smaller of the old squared mass and
$$
                  m_6^2=\frac{\kappa}{B^2},
                  \qquad \kappa=\frac{\beta s_0^2}{z_M}.
$$
It retains the transverse weak current pencil of 97 for the specified colour-singlet sources. In particular $\kappa>15-\sqrt{120}$ preserves the $j=2$ crossing and the calibrated six-flavour window. A sufficiently small positive $\kappa$ puts a sextet below the previous mirror threshold without changing the classical background or the original weak poles.

**Proof.** Let $Y=M_4\times\Sigma$. For a field $M(y,z)$ use the horizontal lift $H^K$ of the projected Killing connection on the marked sphere bundle, acting both by advection on $z$ and by the ambient spin representation on $M$. The derivative along the colour fibre uses the ambient flat reference connection in the marked round frames. The auxiliary connection $C$ is an ordinary Abelian one-form on the total space with Maxwell term $-Z_C|dC|^2/2$. It enters both derivatives of $M$ with charge $-2$, evaluated on the projected horizontal lift or on a colour tangent respectively. The kinetic coefficient is $Z_M/2$ in both directions in the physical product metric at the background. Off the background one can use the projected horizontal metric and the physical metric on the leaves. The potential is the pointwise quartic above. On the background $C=0$, $M=M_0$ is independent of the fibre coordinate in the ambient frame, both derivatives vanish and $W=0$ is stationary. The stress tensors and first variations of these new terms vanish there, so the supported products and the fitted radius equations still hold.

Here is a gauge-equivariant prescription for the quotient couplings in the presence of fibre-dependent auxiliary gauges. Write $\langle\cdot\rangle_0$ for the normalized round reference average, take $\Delta_V$ to be the positive reference scalar Laplacian on the colour fibre, and let $\chi=\Delta_V^{-1}\delta_V(C|_V)$ with zero mean. Under $C\mapsto C+d\Lambda$ we have $\chi\mapsto\chi+\Lambda-\langle\Lambda\rangle_0$. Thus $\langle e^{2i\chi}M\rangle_0$ transforms as a basic field of charge $-2$ for the mean gauge parameter. Each fibre is simply connected, so this construction also gives the transformation law for local real lifts of circle-valued gauge functions, with mean phase defined modulo $2\pi$. The quotient auxiliary connection $\langle C(H^K)\rangle_0$ transforms as a connection for the same mean gauge: the Killing advection integrates to zero. Use these operations on the trivial auxiliary bundle of the matched backgrounds, or in local base gauges for a bundle pulled back from $Y$.

In a neighbourhood of the orbit take the nearest-point projection of the dressed mean of $M$ onto it. This is smooth and equivariant under the common gauge group by compactness of the orbit and invariance of the Euclidean norm. Use that orbit field in the old root and horizontal fermion prescription, with $\langle C(H^K)\rangle_0$ for the auxiliary connection. A smooth invariant cutoff supported inside the tubular neighbourhood can extend the orientation-dependent terms globally, equal to one throughout a smaller neighbourhood of the vacua. The kinetic and potential terms of $M$ itself require no such restriction. At linear order the dressed mean is just the mean of $\delta M$, since $\langle\chi\rangle_0=0$. The derivative of the nearest-point projection at $M_0$ is the orthogonal orbit-tangent projection. Accordingly none of the new nonconstant harmonics or constant normal variables enters these quotient couplings at quadratic order. The same charge lift and the calibrated fermion mass functions are available at $M_0$.

The quadratic colour-constant tangents, constant auxiliary vector and constant weak components of $C$ reproduce the old Higgs and Maxwell terms. On all colour-nonconstant modes the geometric source from the Killing connection is orthogonal to the new fields by fibre integration. The background $dC=0$ and $DM_0=0$ also remove changes of the volume factors and dilaton coefficients from this Hessian. Away from the constant phase, the new $C$ sector combines with the phase of $M$ into a product Maxwell--Stückelberg system with squared mass $4Z_Ms_0^2/Z_C$. Eliminating the phase gives the Proca operator on the corresponding nonconstant scalar harmonics and colour one-forms. The Proca constraint preserves the product Hodge decomposition. The positive scalar gap on the round colour sphere is $5/B^2$, the exact one-forms have that same gap, and the coexact colour one-forms start at $8/B^2$. There is no harmonic colour one-form. Thus every new auxiliary polarization costs at least $5/B^2$ in squared mass, even before adding its nonnegative weak energy and Stückelberg mass.

The nonconstant colour harmonics of the remaining matrix entries also start at $5/B^2$, with additional positive normal penalties on the radial and sextet entries. In the colour-constant sector the radial excitation is a colour singlet and the sextet is a weak scalar with mass $m_6$. A weak-constant sextet profile attains $m_6$ and costs no other quadratic energy. The old bosonic threshold is bounded above by $(15-\sqrt{120})/B^2<5/B^2$. This proves the minimum. The colour-singlet fibre-constant sources in 97 couple only to the original mean connection and weak operators. This result concerns their tree poles and residues; the extra charged matter can contribute to radiative matching. $\square$ [Full vortex block and threshold](101_hopf_threshold_with_the_full_vortex_maxwell_field.md) · [Calibrated mass window](100_hopf_light_fermion_window_and_hadronic_calibration.md)

**Two choices of potential.** With $s_0=1$ and $\kappa=9$ the lightest sextet mass is $3/B$, or $16.49$ TeV at the compact fit. With $\kappa=10^{-3}$ it is about $174$ GeV in compact units, below the $280$ GeV mirror mass. The two actions have identical bosonic backgrounds and identical retained weak poles. The second case requires the coloured scalar in the strong matching, so the former upper edge of the pure six-quark window no longer applies.

## A local metric-connection test at the first vector shell

**Proposition 102.3.** In the transverse vector calculation, replacing the projected connection in the volume-tensor kinetic term by the vertical projection of the Levi-Civita horizontal derivative gives a nonzero extra mass-form entry on an explicit $j=2$ colour vector of 101. The part of that entry orthogonal to the auxiliary phase is $17f_S^2/(60I_3)$ in the normalized metric-vector slot.

**Proof.** Work at the product and keep the internal metric fixed for the transverse perturbation. Let $X$ be a colour metric shift in a transverse external direction. Use the metric horizontal lift and the vertical Levi-Civita connection on tangent vectors, with the unit normal line parallel along the base. In the locally flat ambient frame the infinitesimal skew action on a pair $(t,V)$ of normal and tangent parts is
$$
 (t,V)\longmapsto
 \left(-\frac{\langle X,V\rangle}{B},\
        \frac{tX}{B}+\frac{\nabla X-(\nabla X)^*}{2}V\right).
$$
In fact a constant ambient vector has $X(t)=\langle X,V\rangle/B$ and $\nabla_X V=-tX/B$. The vertical part of the horizontal Levi-Civita derivative is the bracket with the horizontal lift plus half its Lie derivative of the fibre metric. This yields the displayed skew action. For a genuine round Killing field it gives exactly its ambient generator.

Let $n=z/B$ on the colour sphere in $\mathbb R^6$, use the standard complex structure $J$, and let $K=z_1\partial_2-z_2\partial_1-z_3\partial_4+z_4\partial_3$, an $\mathfrak{su}(3)$ rotation. Take $f=n_5$ and $X=fK$. This is a $j=2$ transverse vector: it is tangent and divergence-free, and its ambient components are homogeneous harmonic quadratics up to the common scale. The part $f$ times the ambient generator annihilates $M_0$. The surviving pointwise skew part is one half the rotation tensor $K\wedge\nabla f$ on the tangent plane.

For two orthogonal real unit vectors $u,v$, the squared norm of the action of their unit plane rotation on a normalized holomorphic volume form, projected perpendicular to its phase, is $(1-\langle Ju,v\rangle^2)/2$. To see this, rotate the pair to $u=e_1$ and $v=\cos\theta\,Je_1+\sin\theta\,e_3$. The complex-line rotation is pure phase. The rotation between distinct complex planes contributes two orthogonal mixed-type terms of norm $1/2$ each, giving squared norm $1/2$. Thus for the remaining skew part the perpendicular norm divided by $s_0^2$ is
$$
 \frac{|K|^2|\nabla f|^2-\langle JK,\nabla f\rangle^2}{8}.
$$
The round averages of the two quantities in the numerator are $7/12$ and $1/60$. These follow from the fourth and sixth coordinate moments of the unit sphere, since $|K|^2/B^2=\sum_{i=1}^4 n_i^2$ and $\langle JK,\nabla f\rangle=f(n_1^2+n_2^2-n_3^2-n_4^2)$. Also $\langle |X|^2\rangle_0=B^2/12$. Dividing the averaged new kinetic square by the Einstein vector kinetic normalization gives
$$
 \frac{Z_Ms_0^2}{B^2}\,\frac{17}{20}
     =\frac{17}{60}\frac{f_S^2}{I_3}.
$$
The auxiliary phase can only couple to the parallel part of the action on $M_0$. A scalar tensor derivative along the four-momentum has no transverse component. Thus the exhibited perpendicular entry tests the local coupling directly; the old projected $j=2$ eigenvector with this metric profile no longer has its old quadratic energy. Determining the new first eigenvalue calls for the coupled local-connection operator, since this calculation fixes a single Rayleigh direction. $\square$

**Provenance.** Polynomial potential, coupled Maxwell completion and local transverse comparison by gpt-6.2-sol ultra with the tensor and fermion research agents. Claude Opus 5.5 checked every ledger claim of this file by hand on 20 November 2026 and found no error (ledger `checked_by` rows). The claims that use the fits of 92, 93 and 97 hold with those numerical inputs. GPT-6.1 Terra reproduced the fit outputs using the existing implementations; the review scope and input limitations are recorded in [the numerical check](../paper/NUMERICAL_CHECKS.md).
