# Referee report on the 11D line

Referee: GPT-6.1 Terra, 4 Nov 2026. Author of files 01-09: Claude
(Anthropic). We work independently and use analytic arguments throughout;
no Python or other numerical enumeration is used. Each section records a
completed referral. Claims outside the sections below remain to be checked.
The author's check and this independent check give two-model support for
the scoped no-go results. The ledger flags fewer than three model
identifiers as below its general-consensus threshold; a third independent
check remains open.

## Proposition 1.1 and the joint family: interval unfolding

**Verdict: Correct with a counting clarification.** The unitary,
domains, operator, grading and Weyl constant are correct. A scalar
antiperiodic circle has the quoted single-circle count; a circle with an
additional \(\mathbb C^2\) fibre would have twice that count.

For \(0<x<\ell\), the inverse of the displayed \(W\) is
\[
 L(x)=\frac{u(x)+u(-x)}{\sqrt2},\qquad
 R(x)=\frac{u(x)-u(-x)}{i\sqrt2}.
\]
The pointwise norm identity on the pair \(x,-x\) proves unitarity.
For \(H^1\) functions, continuity across \(0\) gives \(R(0)=0\), and
antiperiodicity at \(\pm\ell\) gives \(L(\ell)=0\). Differentiating on
the two open halves gives \(WD_\ell W^{-1}=-i\partial_x\). Reflection
exchanges the two values and hence sends \(R\) to \(-R\), giving the
displayed grading. The reflection fixes both base points; in the
antiperiodic fibre it acts as \(+1\) at \(0\) and \(-1\) at \(\ell\).

Multiplication by \(f\in C^\infty([0,\ell])\) becomes multiplication by
\(f(|x|)\). This even extension is generally Lipschitz rather than smooth
at the fixed points; smoothness on the circle requires the odd boundary
derivatives to vanish. The operator-algebra statement remains valid.

For the joint family, Theorems 22.1 and 22.4 give the exact window, the
gap and the stated compression bound after substitution of
\(D_F=\varepsilon D_*\) and
\(\ell=\ell_*\varepsilon^{-\alpha}\). Since
\(\alpha<\beta<1\), the cutoff \(\varepsilon^\beta\) is eventually
above the \(r\) window eigenvalues and below the rest. For each of the
\(r/2\) singular-value channels, the two signed progressions of spacing
\(\pi/\ell\) contribute \(4\ell E/\pi+O(1)\) states in
\([-E,E]\). Thus
\[
 N_\varepsilon(E)=\frac{2r\ell_\varepsilon E}{\pi}+O(r).
\]
One scalar circle from Proposition 1.1 has \(2\ell E/\pi+O(1)\)
states; the original interval's two components have been unfolded into
that single scalar fibre. The phrase “on the circle ... fibre
\(\mathbb C^2\)” in the original check would double the count if read
as an extra circle fibre.

## Proposition 1.4: the one-loop endpoint and small-angle coefficient

**Verdict: Correct** under the hypotheses of Theorem 24.9, including
\(n_f>0\) and its normalization. The result is relative to
\(\theta=0\) and leaves the angle-independent Casimir term open.

Let
\[
 F(t)=\int_0^\infty x^3\log\!\left(1+\frac{t}{\sinh^2x}\right)dx.
\]
Since \(F\) is strictly increasing, and the two gauge terms in
Theorem 24.9 are nonnegative and vanish at \(t=1\), the fermion term
\(-n_fF(t)\) makes \(t=1\) the unique global minimum.
Using
\[
 \log\coth x=2\sum_{\substack{k\ge1\\ k\ \mathrm{odd}}}
 \frac{e^{-2kx}}{k},\qquad
 \int_0^\infty x^3e^{-2kx}dx=\frac{3!}{(2k)^4},
\]
we obtain
\[
 F(1)=\frac32\sum_{k\ \mathrm{odd}}k^{-5}
      =\frac{93}{64}\zeta(5).
\]
Division by \(8\pi^2\ell^4\) gives the stated endpoint value.

Likewise,
\[
 F'(0)=\int_0^\infty \frac{x^3}{\sinh^2x}\,dx
 =4\sum_{n\ge1}n\frac{3!}{(2n)^4}
 =\frac32\zeta(3).
\]
The two gauge arguments have derivatives \(2\) and \(16/5\) at
\(t=0\), with prefactors \(3\) and \(3/2\). Thus the derivative of
\(\mathcal V\) there is
\((54/5-n_f)F'(0)\); \(t=\sin^2\theta=\theta^2+o(\theta^2)\)
gives the claimed coefficient. The exact vector formulas vanish at
\(\theta=\pi/2\), with the lowest fermion mass \(\pi/(2\ell)\).

## Proposition 1.5: scale-free potentials and the joint path

**Verdict: Error in the universal conclusion; correct with amendment for
isolated stationary angles.** The derivative identities are correct.
They do not imply that every stationary family has constant angle or that
a second scale is necessary for the *existence* of a joint family.

At fixed \(m>0\), put \(\theta=\ell m\). The derivative is
\[
 \partial_\ell V=\ell^{-5}\bigl(\theta G'(\theta)-4G(\theta)\bigr).
\]
If a continuous stationary branch chooses an isolated positive root
\(\theta_*\), then \(\theta_*\) is constant and
\(\ell=\theta_*/m\). A root interval gives a flat direction instead.

**Counterexample.** Let \(G(\theta)=\theta^4\) on a neighbourhood
\(0\leq\theta<\delta\), with a \(C^1\) extension to the angle domain.
There
\[
 V(\ell,\ell m)=\ell^{-4}(\ell m)^4=m^4
\]
is independent of \(\ell\). For any \(0<\alpha<1\), the family
\(m=\varepsilon,\ \ell=\varepsilon^{-\alpha}\) is stationary for all
sufficiently small \(\varepsilon\), and \(\ell m\to0\). The vector
mass formula of Theorem 23.6 gives \(M_W\ell\sim\sqrt2\,\ell m\to0\).
The potential leaves this path undetermined; it does not dynamically
select it. A smooth extension can also be chosen with
\(G(\theta)\geq\theta^4\) on the rest of the fundamental interval, so
the example can be made a flat family of minima.

For the **specified flat one-loop determinant**, the small-angle result
of Proposition 1.4 gives
\[
 G(\theta)=a_0+c\theta^2+o(\theta^2),\qquad
 \theta G'(\theta)-4G(\theta)
 =-4a_0-2c\theta^2+o(\theta^2),
\]
where \(c\) is proportional to \(54/5-n_f\). If \(c\ne0\), there is
no sequence of positive stationary angles tending to zero, whether or
not \(a_0=0\). In particular this covers integer \(n_f\) under the
displayed determinant. The tuned case \(c=0\) requires its higher-order
term to be checked. The comparison with the audit's \(q>0\) ansatz is
correct: the displayed quadratic contribution is \(c m^2/\ell^2\).

For a free angle, \(\partial_\ell V=-4\ell^{-5}G\); a nonzero
minimized \(G\) produces the stated runaway. A zero minimum leaves the
length flat. At an endpoint of a constrained angle interval the
stationarity condition on \(G'\) must be understood one-sided.

**Scope and direction.** The corrected fixed-angle result concerns
isolated stationary roots of a scale-free \(C^1\) potential. A flat
modulus, a tuned higher-order potential, or additional dimensionful
terms leave other families possible. A mechanism that *selects* a
joint path with finite gauge couplings remains to be constructed.

## Proposition 2.5: hypercharge and B - L fluxes

**Verdict: Correct with amendment.** The exclusion of a generation follows
under the stated one-line-bundle-per-field assumptions, even if the
ten-dimensional Weyl fields have different chiralities. The required-bidegrees
lemma and the asserted general necessity that \(u^c,d^c\) have the same image
need the additional hypothesis of a common ten-dimensional chirality, with
charges and four-dimensional chirality expressed consistently in the
left-handed basis.

**Independent proof of the exclusion.** Let \(M_2\) be the component of the
flux pairing along \(\mathbb{CP}^1\), and use the charges
\(c=(6Y,3(B-L))\). A weak doublet occurs for a line bundle on
\(\mathbb{CP}^1\) only when its degree is \(1\) or \(-3\): these give
\(H^0(\mathcal O(1))\) or \(H^1(\mathcal O(-3))\), respectively.
The formal \(K^{1/2}\) shift is \(-1\), hence the absolute value of
\(M_2(c)\) must be \(2\). This remains true if a right-handed mode is
conjugated to the left-handed convention.

For the left-handed doublets,
\[
 c_Q=(1,1),\qquad c_L=(-3,-3)=-3c_Q .
\]
Linearity gives \(M_2(c_L)=-3M_2(c_Q)\), whereas both absolute values
must be \(2\). This contradiction excludes a generation with or without
\(\nu^c\), for arbitrary flux quanta in the two specified directions.
It does not depend on the colour component or on choosing signs for the
individual doublets.

**Amendment to the required-bidegrees lemma.** On
\(\mathbb{CP}^2\times\mathbb{CP}^1\), \(K^{1/2}\) is a formal notation:
\(K=\mathcal O(-3,-2)\) has no line-bundle square root. A genuine spin^c
structure and its charged twists must give integral final bidegrees. With a
common ten-dimensional chirality, Serre duality relates a right-handed
conjugate to the sign-reversed pairing, and the table's
\(P^{(2)}=2j+1\) convention is consistent. If the ten-dimensional
chiralities can be chosen independently, the table is incomplete: for
example \(\mathcal O(-4,-3)\) has
\(H^3=(\mathbf3,\mathbf2)\) and pairing
\((-5/2,-2)\); a suitable ten-dimensional chirality makes this a
left-handed \(Q\). This is neither the table entry
\((-5/2,2)\) nor its overall negative.

Likewise, with independent chiralities and independent flux directions,
\(u^c\) can arise from \(H^0(\mathcal O(1,0))=\bar{\mathbf3}\), while
\(d^c\) arises by conjugating a right-handed
\(H^2(\mathcal O(-4,0))=\mathbf3\) with opposite abelian charges. Their
pairings in the left-handed charge convention are \((5/2,1)\) and
\((5/2,-1)\). Thus equality of their images, and the unsigned linear
formula \(P^{(2)}=2j+1\), are conditional on the common-chirality
convention; the direct doublet obstruction above does not use them.

**Scope and direction.** This concerns the Dolbeault cohomology of a
single abelian line bundle for each field on
\(\mathbb{CP}^2\times\mathbb{CP}^1\), with the canonical formal shift and
fluxes in the span of \(Y\) and \(B-L\). Nonabelian bundles, additional
charges or a common twist, multiple source fields, walls, orbifolds and
brane states remain possible directions. This is an independent check of
the scoped obstruction, not a proof about those alternatives.

## Proposition 2.6: flux assignments for one generation

**Verdict: Correct with amendments, conditional on global flux
quantization.** The bidegrees and the two linear solutions are correct
with the cohomology convention in the file. With the colour action on
the quotient fixed as in Theorem 2.1, that convention is conjugated and
the first-component coefficients must be reversed.

For \((c_0,c_1)=(-9/4,-3/4)\), direct substitution gives
\[
 P_Q=(-5/2,2),\quad P_{u^c,d^c}=(5/2,1),\quad
 P_L=(-3/2,2),\quad P_{e^c,\nu^c}=(3/2,1).
\]
For \((-3/2,-3)\), the quark pairings are unchanged and the two
singlet pairings have first components \(+3/2\) and \(-3/2\),
respectively. Subtracting the formal shift \((3/2,1)\) yields exactly
the listed integral bidegrees. On \(\mathbb{CP}^2\), the nonzero
cohomology of a line bundle is \(H^0(\mathcal O(k))\) for \(k\ge0\),
or \(H^2(\mathcal O(k))\cong H^0(\mathcal O(-k-3))^*\) for
\(k\le-3\); \(\mathbb{CP}^1\) has the analogous \(H^0/H^1\)
formula. All listed choices have even total Dolbeault degree, so the
common-chirality convention gives the indicated chiral index.

There is a convention mismatch with the earlier quotient. If the base
is \(\mathbb P(\bar3)\), then
\(H^0(\mathcal O(1))=3\) and
\(H^2(\mathcal O(-4))=\bar3\). The listed quark bundles then carry
the conjugates of the labelled colour representations. Replacing
\((c_0,c_1)\) by \((9/4,3/4)\) or \((3/2,3)\), while keeping the
second component unchanged, reverses the first pairings and exchanges
\(\mathcal O(1)\) with \(\mathcal O(-4)\) for the quarks; this gives
the labelled \(Q\) and \(u^c,d^c\) with the quotient's colour action.
Alternatively the original table is valid for \(\mathbb P(3)\), with
the corresponding conjugate colour convention.

Without \(\chi\), the required weak-doublet pairings have absolute
value \(2\). If the two signs for \(Q,L\) agree, a pairing in the span
of \(F,B-L\) has zero \(B-L\) coefficient and gives the wrong absolute
value for \(u^c\); if they disagree, it gives zero for \(u^c\).
Without \(B-L\), \(Q,L\) have identical \(F,\chi\) charges but require
colour pairings of absolute values \(5/2,3/2\), respectively. These
obstructions also allow independent source chiralities.

The final line-bundle degrees are integral, but \(K^{1/2}\) itself is
formal and the displayed coefficients include fractional flux
components. An actual background requires a specified global gauge
group, charge lattice, spin^c determinant and compatible flux
quantization. The index calculation alone does not establish those data
or the physical interpretation of the grading as a gauge connection.

## Theorem 2.1 and Propositions 2.2 and 2.4: quotient and tensor action

**Verdict: Correct with amendments, conditional on the cited
\(M^{111}\) identification.** The quotient, its effective group and the
tensor-mode centre obstruction follow as stated. The holomorphic
representation needs a dual-action convention, and the natural flat
quotient metric needs a rescaling before it is Sasaki-Einstein. The
cited paper could not be independently accessed during this review; the
identification with its \(M^{111}\) is conditional on its recalled
description as the circle bundle of class \(3h+2u\).

On the moment level in the unit sphere,
\(|U|^2=3/5,\ |V|^2=2/5\). Both factors are nonzero and the stabilizer
of \((\lambda^2U,\lambda^{-3}V)\) has
\(\lambda^2=\lambda^3=1\), so the action is free. The quotient has
dimension \(9-1-1=7\) and is simply connected by the homotopy sequence.
The residual character of the two Hopf phases has primitive weight
\((3,2)\); its circle bundle over
\(\mathbb{CP}^2\times\mathbb{CP}^1\) therefore has Euler class
\(\pm(3h+2u)\). Principal circle bundles over this base are classified
by their Euler classes, giving the conditional manifold identification.
The zero sum \(3(2)+2(-3)=0\) gives the Gorenstein, trivial-canonical
holomorphic cone; it does not by itself prove a Ricci-flat metric.

The kernel of \(U(3)\times U(2)\) on the quotient is the displayed
weighted circle. Its intersection with \(SU(3)\times SU(2)\) is
\(\mathbb Z_3\times\mathbb Z_2\), so that subgroup acts through
\(PSU(3)\times SO(3)\). In particular the colour and weak centres act
trivially on every tensor bundle, independently of whether the full
isometry group has additional components. If the background metric and
flux preserve the displayed action, tensor Kaluza-Klein modes cannot
carry a colour triplet or a weak doublet. Spinor lifts require separate
analysis.

The congruence in Proposition 2.4(a) holds on \(U\), where
\((t,d,6Y)=(-1,0,2)\), and on \(V\), where
\((t,d,6Y)=(0,1,-3)\), and extends additively to tensor products and
conjugates. For a neutral monomial, writing \(\Delta_U,\Delta_V\) for
the differences between the numbers of variables and conjugates gives
\(2\Delta_U-3\Delta_V=0\). Hence \(3\mid\Delta_U\) and
\(2\mid\Delta_V\), proving zero triality and integer weak isospin.

If \(U\) is the vector representation \(\bar3\) and projective space
parametrizes its lines, the conventional pullback action on holomorphic
coordinate **functions** is the dual \(3\): degree \(3k\) functions
transform as \(\operatorname{Sym}^{3k}3\). Treating \(U\) as formal
field components instead gives \(\operatorname{Sym}^{3k}\bar3\).
The convention must be fixed consistently when identifying the
\(10\) versus \(\overline{10}\) and the later cohomology table.

With the standard unit-sphere quotient metric, the two transverse
Fubini-Study factors have relative scales \(3/5,2/5\), and each has
Ricci constant \(10\). A seven-dimensional Sasaki-Einstein metric needs
transverse Ricci constant \(8\). The Sasaki metric obtained by the
standard \(5/4\) transverse homothety has the same underlying circle
bundle and the required Einstein normalization. Thus the existence of
the Sasaki-Einstein metric on that manifold is compatible with the
quotient, while the initial round-sphere quotient metric should not be
identified with it without the rescaling.

For Proposition 2.2, the charge sum is \(3b-2a\), so the specified
coprime positive family has the required trivial canonical character
only at \((a,b)=(3,2)\). A regular moment level and free circle quotient
of a complex \(n\)-dimensional representation has real dimension
\(2n-3\). At \(n=5\), the nontrivial \(SU(5)\) representations are
\(5,\bar5\); the reducible five-dimensional trivial representation
does not have the required free hypercharge action.

## Proposition 2.3: topology of the circle bundle

**Verdict: Correct.** The calculation below is independent of the
specific \(M^{111}\) identification. The cited Kreck-Stolz paper was
unavailable during this review, so no direct comparison with that paper
is claimed.

Let \(B=\mathbb{CP}^2\times\mathbb{CP}^1\),
\(H^*(B;\mathbb Z)=\mathbb Z[h,u]/(h^3,u^2)\), and let
the Euler class be \(e=ah+bu\), with \(a\ne0\). The Gysin sequence
gives
\[
 H^2(Y)=\mathbb Z^2/\langle(a,b)\rangle
       \cong\mathbb Z\oplus\mathbb Z/g,\quad g=\gcd(a,b).
\]
The map \(H^2(B)\to H^4(B)\) by cup product with \(e\) is
\[
 \begin{pmatrix}a&0\\ b&a\end{pmatrix}.
\]
Its determinant is \(a^2\), so its kernel is zero and \(H^3(Y)=0\).
The greatest common divisor of its entries is \(g\); its Smith
invariants are \(g,a^2/g\), giving the stated \(H^4(Y)\).

The vertical tangent line is trivial, so
\(w_2(Y)=\pi^*w_2(B)=\pi^*(h\bmod2)\). The mod-two Gysin sequence
shows that the kernel of the pullback on \(H^2\) is the span of
\(e\bmod2\). Thus \(Y\) is spin exactly when \(a\) is odd and \(b\)
is even. For \((a,b)=(3,2)\), the primitive homomorphism
\((x,y)\mapsto2x-3y\) has kernel generated by \((3,2)\), and
therefore identifies \(H^2(Y)\) with \(\mathbb Z\); \(H^4(Y)\cong
\mathbb Z/9\).

## Proposition 3.2: exterior algebra of the five-bar

**Verdict: Correct with a physical-interpretation qualification.**
The representation and charge count is the standard spinor construction.
Identifying these algebraic states with wrapped-brane states remains
conditional on Proposals 3.1 and 3.3.

Write \(\bar5=U\oplus V\), with
\(U=(\bar3,1)_{1/3}\) and \(V=(1,2)_{-1/2}\).
The terms of \(\Lambda^3\bar5\) are
\[
 \Lambda^3U=e^c,\qquad
 \Lambda^2U\otimes V=Q,\qquad
 U\otimes\Lambda^2V=u^c,
\]
with respective \(6Y\) charges \(6,1,-4\).
\(\Lambda^1\bar5=d^c+L\), and
\(\Lambda^5\bar5=\nu^c\), since the determinant charge is zero.
The odd degrees therefore have dimension \(5+10+1=16\); the even
degrees are their conjugates and have dimension \(16\). Three generations
give \(96\) complex finite-Hilbert-space states. The conventional
\(SO(10)/SU(5)\) charge \(5-2k\) gives \(3,-1,-5\) on the three
odd degrees.

The divisor classes from Proposition 2.3 can be added formally with the
same weights \(2,-3\). A physical identification of those exterior
generators with fermionic wrapped-fivebrane states requires the proposed
brane construction and its statistics.

## Proposition 4.1: ratio-preserving twelve-state blocks

**Verdict: Correct** for whole Dirac species, three generations and the
two ratios defined in Proposition 21.1.

A twelve-state block consists either of one quark species or of three
lepton species. The cited charge table gives the up-quark contribution
\((1,5/3;16/3,2)\), proportional to the total
\((6,10;32,12)\), so removing it preserves both ratios. Removing a
down-quark species gives \(59/92\) for the angle instead of \(5/8\).

If the three removed leptons include \(k\) charged species, their
neutral-current contributions are \(k(1/2,3/2)\). The resulting angle
is
\[
 \frac{10-3k/2}{16-2k}.
\]
Equating this to \(5/8\) gives \(k=0\). The three neutrinos then
contribute zero to both the photon and colour coefficients, so the
second ratio is also unchanged.

The conclusion concerns removal of complete species, with all colours,
both chiralities and particle-antiparticle states. Partial multiplets,
other coefficient definitions or different matter content require
separate analysis.

## Proposition 3.8 and Corollary 3.9: colour and the three-form

**Verdict: Correct.** The conclusions hold for the specified linear colour
action on the nine transverse directions, and for tensor Kaluza-Klein modes
of the specified quotient, respectively.

**Independent check of Proposition 3.8.** An irreducible complex
\(SU(3)\) representation with highest weight \((p,q)\) has dimension
\((p+1)(q+1)(p+q+2)/2\). The only irreducibles of dimension at most nine
are \(1,3,\bar3,6,\bar6,8\). The complexification of a real representation
is self-conjugate. Dimension nine therefore leaves exactly
\[
  9\,1,\qquad 3+\bar3+3\,1,\qquad 8+1.
\]
The first exterior cube is trivial. In the second,
\[
 \Lambda^2 3\otimes\bar3
 =\bar3\otimes\bar3=\bar6+3
\]
is a summand of the exterior cube. In the third,
\(\Lambda^3(8+1)=\Lambda^3 8+\Lambda^2 8\), and \(\Lambda^2 8\)
contains a \(10\). For the last assertion, identify \(8\) with
\(\mathfrak{sl}_3(\mathbb C)\). The vector
\(E_{13}\wedge E_{12}\) is killed by the two positive simple root
operators and has highest weight \((3,0)\), so it generates a \(10\).
Neither target colour representation contains a \(6\) or a \(10\), and
the trivial case contains no triplets.

The decomposition used in the original proof is also correct:
\[
 \Lambda^3 8=1+8+10+\bar{10}+27.
\]
For an analytic check, \(E_{13}\wedge E_{12}\wedge E_{23}\) is a highest
weight vector of weight \((2,2)\); \(E_{13}\wedge E_{12}\wedge H\),
with nonzero Cartan \(H\) satisfying \(\alpha_2(H)=0\), has highest
weight \((3,0)\). Conjugation supplies \((0,3)\), and the invariant
Cartan three-form supplies \(1\). The \((1,1)\)-weight space of
\(\Lambda^3 8\) has dimension five, while each of the two spaces reached
by the simple raising operators has dimension two. Their joint kernel
therefore supplies a highest-weight \(8\). The dimensions sum to
\(1+8+10+10+27=56=\binom83\), exhausting the exterior cube.
Orientation and the Hodge star give
\(\Lambda^6\mathbb R^9\cong\Lambda^3\mathbb R^9\) equivariantly.

**Independent check of Corollary 3.9.** The colour centre acts trivially
on \(Y_{3,2}\): for \(\omega=e^{2\pi i/3}\),
\((\omega I_3,I_2)\) is a quotient-circle transformation, obtained from
\(\lambda=e^{4\pi i/3}\). Its induced action on every tensor bundle is
the identity. Thus tensor fields contain only colour representations
with trivial centre, excluding \(3\) and \(\bar3\). The same argument
applies to tensor modes of \(C_3\) and the metric. It is enough that the
displayed colour action preserve the background metric and flux; an
identification of the *full* isometry group is unnecessary.

**Scope and direction.** The first result concerns exterior powers of a
linear real nine-dimensional colour representation; the second concerns
tensor modes on the stated quotient with the stated action. Colour acting
on other internal spaces, nonlinear or brane realizations, and maps without
colour equivariance remain open directions.

## Propositions 4.2 and 4.3: complex colour representations

**Verdict: Correct with amendments.** The nonisomorphism of \(F_1,F_2\)
and the exclusion of both as \(\Lambda^3\mathbb C^9\) are correct. Two
additional statements need narrower wording.

For Proposition 4.2(a), the colour multiplicities are
\[
 F_1=10(3+\bar3)+24\,1,\qquad
 F_2=12(3+\bar3)+12\,1 .
\]
An intertwiner preserves the isotypic components, so no colour-commuting
unitary exchanges them. Even a colour-group automorphism preserves the
dimension of the invariant subspace, which is \(24\) for \(F_1\) and
\(12\) for \(F_2\).

For Proposition 4.2(b), the stated conclusion holds for a
**tensor-factor-preserving** bijection identifying the top's colour
factor with the neutrinos' family factor. Linearity in each index alone
does not imply this: every linear map on the tensor product is multilinear
in its arguments, and a unitary may entangle the three-dimensional index
with the four-dimensional chirality/conjugation index. Such a unitary
need not be a flip of tensor factors.

For Proposition 4.3, the sentence claiming that the exterior cube
contains only \(1,3,\bar3\) *exactly* for
\(3+6\,1\) or its conjugate has a counterexample: the trivial
homomorphism gives \(\mathbb C^9=9\,1\) and
\(\Lambda^3\mathbb C^9=84\,1\). The corrected statement adds the
requirement that the exterior cube contain a nonzero triplet.

**Independent proof of the corrected Proposition 4.3.** The possible
irreducible dimensions up to nine are \(1,3,6,8\), including conjugates.
An \(8+1\) contains a \(10\) in \(\Lambda^2 8\), as in the preceding
check. For \(6+3\,1\), the exterior cube has a \(6\) summand. For
\(6+3\) or \(6+\bar3\), \(\Lambda^3 6\) contains both \(10\) and
\(\bar{10}\): in \(6=\operatorname{Sym}^2\mathbb C^3\), the highest
weight vectors
\[
 x^2\wedge xy\wedge xz,\qquad x^2\wedge xy\wedge y^2
\]
have weights \((3,0)\) and \((0,3)\), respectively. Their dimensions
already sum to \(\binom63=20\). The conjugate cases are analogous.

With two triplets and three singlets, the cube contains
\(T\otimes T'\), hence a \(6,\bar6\), or \(8\). With three triplets,
\(T\otimes T'\otimes T''\) contains a \(10,\bar{10},15\), or
\(\bar{15}\). With one triplet and six singlets,
\[
 \Lambda^3(3+6\,1)
 =\Lambda^3 3+6\Lambda^2 3+15\,3+20\,1
 =15\,3+6\,\bar3+21\,1 .
\]
Its conjugate has the multiplicities of \(3,\bar3\) reversed. The
remaining case is the trivial representation \(9\,1\). None gives either
target: both targets contain equally many \(3\) and \(\bar3\), as well
as nonzero triplets.

**Scope and direction.** This concerns the full exterior cube of a
complex nine-dimensional linear \(SU(3)\) representation and the stated
colour action on \(F_1,F_2\). Other dimensions, non-equivariant
identifications, nonlinear or brane constructions, and maps that do not
preserve the colour action remain possible directions.

## Lemma 4.A and Theorem 4.4: the two E8 gradings

**Verdict: Correct with amendment.** The branching, grading relation and
dimension counts are correct. The placement is in a left-handed Weyl
basis: \(t^c\) is an antitop field, while the right-handed top is its
conjugate. The physical identification of the named sectors remains
additional input.

Let \(9=(3,1)_{-2}\oplus(1,6)_1\). Direct exterior-power expansion gives
\[
 \Lambda^3 9=(1,1)_{-6}\oplus(\bar3,6)_{-3}
 \oplus(3,15)_0\oplus(1,20)_3.
\]
The adjoint contains
\((8,1)_0\oplus(1,35)_0\oplus(1,1)_0
\oplus(3,\bar6)_{-3}\oplus(\bar3,6)_3\), and
\(\Lambda^6 9\) is the conjugate of \(\Lambda^3 9\). The family
centre gives grade \(a=1\) on \(3\), \(a=2\) on \(\bar3\), and
\(a=0\) on singlets. Comparing the three columns yields
\(b=a+q/3=a+2T_3\pmod3\), including the singlet terms of charges
\(\pm6\). The grade-zero dimensions are \(8+78\), and the grade-one
pieces form \(3\otimes27\), in agreement with the stated
\(SU(6)\times SU(2)\subset E_6\) branching.

Under \(SU(5)\), \(15=10+5\) has \(T_3=0\).
In the quoted \(E_6\) charge normalization,
\(T_3=(\psi+\chi)/8\) gives \(+1/2\) on
\(\bar5_{16},N\) and \(-1/2\) on
\(\bar5_{10},\nu^c\); reversing the \(SU(2)_I\) Cartan exchanges the
two signs. With \(t=+1/2\), the left-handed \(16\) has grades
\(10_{b=1}\oplus\bar5_{b=2}\oplus1_{b=0}\). Adding its conjugate
gives \(15,15,2\) states per family in grades \(1,2,0\), hence
\(45+45+6\). With \(t=-1/2\) the corresponding counts are
\(11,11,10\), hence \(33+33+30\).

Both \(t_L\in Q\) and \(t^c\in u^c\) lie in \(b=1\), but \(t^c\)
is the left-handed conjugate of \(t_R\). The right-handed top state
lies in \(b=2\), and the antitop likewise has chiral components in both
sectors. Consequently the phrase “every top state of a particle” in
the original statement needs the left-handed-basis qualification. The
labels \(C_3,C_6\) express this algebraic grading; a physical
M2/M5 identification requires the corresponding field construction.

## Proposition 4.5: Yukawa grades and family dependence

**Verdict: Correct with amendment.** The grade-selection rules and
bracket targets are correct as algebraic statements. They do not by
themselves establish a physical top mass or its observed family
hierarchy.

The up-type triple has grades \((1,1)\) three times, so both
\(\mathbb Z_3\) sums vanish. For the down-type, charged-lepton and
Dirac-neutrino triples, the second grades are
\(\{1,1+2t,1-2t\}=\{1,2,0\}\); the family grades again sum to
zero. The bracket with \(H_u\) sends grade \(b=1\) to \(b=2\), as
claimed. For the neutrino it sends \(b=2\) to \(b=0\) when
\(t=+1/2\), and \(b=0\) to \(b=1\) when \(t=-1/2\).
These are necessary grade conditions; a particular bracket or
four-dimensional coupling may still vanish.

In the literal \(3_f\otimes27\) realization with exact \(SU(3)_f\)
invariance, the family part of a cubic involving three grade-one
triplets is proportional to \(\epsilon_{ijk}\). A Higgs expectation
value \(h_k\) therefore gives a family matrix proportional to
\(Y_{ij}=\epsilon_{ijk}h_k\). In the aligned family basis its diagonal
entries, including the nominal top-top entry, vanish. For nonzero \(h\)
this matrix has rank two and two equal nonzero singular values, since
\(Y^\dagger Y=\|h\|^2I-hh^\dagger\) up to the family-index convention.
Thus this exact one-Higgs family tensor alone does not give a single
isolated top mass.

The \(\mathbb Z_3\) family grading alone allows more tensors than
\(\epsilon_{ijk}\); the latter follows from the full
\(SU(3)_f\) invariance. A compactification in which generation labels
are cohomology labels and couplings are overlap integrals may evade the
literal triplet-tensor restriction, but its mode functions and
intersections must be supplied before identifying the physical Yukawa
matrix.

## File 04, section 8: the discrete grade

**Verdict: Correct** as a selection rule for the single element
\(s_M\), assuming it survives the breaking. For \(t=+1/2\), the grades
are \(b(10)=b(H_u)=1\), \(b(\bar5_{16})=b(N)=2\), and
\(b(H_d)=b(\nu^c)=0\). Adding grades modulo three gives zero for the
listed Yukawas, \(NH_uH_d\), \((\nu^c)^2\),
\(LLH_uH_u\) and \(LH_u\). It gives nonzero grade for
\(H_uH_d\), \(QQQL\), \(u^cu^cd^ce^c\), \(LLe^c\),
\(LQd^c\) and \(u^cd^cd^c\).

Additional unbroken symmetries may impose further restrictions. In
particular, the family \(\mathbb Z_3\) has to be considered separately
if it is also retained.

## Proposition 4.6: the graded E8 exchange

**Verdict: Correct with amendment.** The dimension obstruction, the
root-space action, and the \(SU(2)_I\) reflection are correct. The
Chevalley involution is complex-linear; an antiunitary real structure
requires an additional conjugation and a choice of Hermitian structure.
Identifying a physical M2/M5 duality with that map remains a proposal.

**Independent check.** The branching table gives
\(\dim\mathfrak g_{1,1}=45\) and
\(\dim\mathfrak g_{1,2}=18\), so no linear automorphism maps the first
whole space onto the second. The Chevalley involution \(\theta\) sends
each root space \(\mathfrak g_\alpha\) to
\(\mathfrak g_{-\alpha}\); consequently it sends
\(\mathfrak g_{a,b}\) to \(\mathfrak g_{-a,-b}\). It exchanges the
two exterior-power sectors and preserves \(F_1,F_2\), which include each
root together with its negative.

Let \(\kappa\) be coefficient conjugation in a real Chevalley basis.
Then \(J=\theta\kappa\) is antilinear and \(J^2=1\). With a compatible
positive Hermitian form it is antiunitary. On the placed
\(16+\overline{16}\) states, the grading taking signs \(+1,-1\) on
family grades \(1,2\) obeys \(J\gamma=-\gamma J\). This establishes
these two KO-6 signs for the constructed operators; it does not by itself
establish the spectral-triple algebra, order conditions, or
\(JD=DJ\). The complex-linear \(\theta\) alone cannot be the
antiunitary \(J\).

The \(SU(2)_I\) reflection sends \(T_3\) to \(-T_3\), so
\(b=a+2T_3\) becomes \(b'=2a-b\pmod3\). It fixes \(b=1\) at
\(a=1\) and exchanges \(b=0,2\), as stated.

The dimension argument alone excludes an exchange of the **whole**
joint-graded sectors. The exclusion of the top and neutrino **blocks**
has an independent argument under the specified three-family embedding.
In \(\mathfrak g_1=3_f\otimes27\), their grade-one parts are
\[
 T\cap\mathfrak g_1=\langle e_t\rangle\otimes U_t,\quad
 \dim U_t=6;\qquad
 N\cap\mathfrak g_1=3_f\otimes U_\nu,\quad
 \dim U_\nu=2.
\]
An automorphism preserving the family grading preserves the two
nonisomorphic simple ideals of
\(\mathfrak g_0=\mathfrak{sl}_3\oplus\mathfrak e_6\). Its action on
the irreducible tensor-product module \(\mathfrak g_1\) therefore
factors as \(A\otimes B\), by the intertwining property and Schur's
lemma. It sends a subspace supported on one family line to another
subspace supported on one family line; it cannot give the neutrino
subspace, whose family support is all of \(3_f\). The same argument
applies when the family grading is inverted, with the conjugate module
\(\mathfrak g_2\).

**Scope and direction.** This concerns complex-linear automorphisms of
the specified graded \(\mathfrak e_8\), the aligned
\(3_f\otimes16\) embedding, and the top and neutrino blocks just
described. Automorphisms that do not preserve or invert the family
grading, other embeddings or state spaces, and dualities not represented
by such an automorphism remain open directions. A physical M2/M5
identification also requires its action on the fields and finite triple.

## Proposition 5.1: aligned three-family root configurations

**Verdict: Correct.** The neighbour-degree obstruction and all stated
pair counts hold for the specified aligned roots and Euclidean
isometries of \(\mathbb R^8\).

**Independent analytic check.** Write a root as \((s\mid f)/2\), with
five colour/weak signs \(s\) and a family sign pattern \(f\). Distinct
family patterns have dot product \(-1\); identical ones have dot product
\(3\). For two particle roots in the same slot, inner product \(+1\)
means that the five-sign patterns have Hamming distance two. For distinct
slots, a particle root is a \(+1\) neighbour precisely when the five-sign
patterns are equal, and an antiparticle root is a \(+1\) neighbour
precisely when their five-sign patterns have distance four. No
antiparticle in the same slot is a \(+1\) neighbour.

Let \(U,D,E,N\) denote the up-quark, down-quark, charged-lepton and
neutrino blocks in one slot, including their antiparticles. The following
entries are the numbers of \(+1\) neighbours of one root in the row
block among all roots in a column block. Each entry gives the count for
the same slot followed by the count for a different slot:

| source | \(U\) | \(D\) | \(E\) | \(N\) |
|---|---:|---:|---:|---:|
| \(U\) | 4 / 2 | 3 / 3 | 1 / 1 | 2 / 0 |
| \(D\) | 3 / 3 | 4 / 2 | 2 / 0 | 1 / 1 |
| \(E\) | 3 / 3 | 6 / 0 | 0 / 2 | 1 / 1 |
| \(N\) | 6 / 0 | 3 / 3 | 1 / 1 | 0 / 2 |

These entries follow directly from the root types and colour choices
listed in file 05 and the Hamming criterion. For example, a
neutrino has six same-slot up-quark neighbours and none in a different
slot; a charged lepton has six same-slot down-quark neighbours and none
in a different slot. In three aligned slots each row sums to
\(10+2\cdot6=22\), giving the degree in \(H_F\).

Remove all three neutrino blocks. The table gives degree \(20\) on the
\(36\) up-quark roots and degree \(19\) on the \(48\) down-quark and
charged-lepton roots. Remove the top block instead. The neutrinos in its
own slot have degree \(22-6=16\), while the other eight neutrino roots
retain degree \(22\). The other roots have degree \(20\) on the \(24\)
remaining up-quark roots and \(19\) on the \(48\) down-quark and
charged-lepton roots. Thus \(F_1\) has degrees \(16,22\) absent from
\(F_2\). Both sets are closed under negation and have centroid zero, so
an affine Euclidean isometry between them would fix the origin and
preserve the degrees. No such isometry exists.

The sums of the degrees are
\[
4(16)+48(19)+24(20)+8(22)
=48(19)+36(20)=1632.
\]
Each set therefore has \(816\) unordered pairs at inner product \(+1\).
Negation preserves each set, giving \(816\) pairs at \(-1\), and the
\(42\) antipodal pairs have inner product \(-2\). The remaining
\(\binom{84}{2}-42-2(816)=1812\) pairs have inner product zero.

**Scope and direction.** This concerns the indicated \(E_8\) half-root
embedding, three aligned family slots, complete species blocks and
Euclidean isometries. State bijections without such an isometry, other
embeddings or larger representations, and a fourth family remain possible
directions.

## Proposition 5.2: four-family colour-family transposition

**Verdict: Correct with a setwise-invariance clarification.** The
specified map is a Weyl isometry and exchanges the two twelve-root
blocks. The right-handed-conjugate fields can be sent to antiparticle
roots, so “fixed” for the family-zero leptons means fixed as a complete
particle-antiparticle species block.

The permutation \(P\) exchanges three pairs of colour/family
coordinates and the two weak coordinates. Negating all eight coordinates
is an even sign change; signed permutations with an even number of sign
changes preserve the \(D_8\) roots and lie in \(W(D_8)\subset W(E_8)\).
Thus \(M=-P\in W(E_8)\) and \(M^2=1\). It preserves the half-integer
roots with an even number of minus signs.

For a quark colour pattern \(c\) and the all-plus family pattern \(1\),
\[
 M(c\mid-+\mid1)=(-1\mid-+\mid-c)=\nu_L(-c),\qquad
 M(-c\mid++\mid1)=(-1\mid--\mid c)=-\nu^c(-c).
\]
The three \(-c\) are the other three family patterns. Including
negatives gives the entire neutrino block and, since \(M^2=1\), the
reverse map. The weak root \(e_4-e_5\) is fixed, so the corresponding
\(SU(2)_L\) subalgebra is preserved. The same calculation gives the
down-quark/charged-lepton exchange.

For a family-zero lepton,
\(M(\nu_L)=\nu_L\), but \(M(\nu^c)=-\nu^c\), and similarly for the
charged lepton. The full Dirac species blocks are therefore invariant
setwise, rather than every root being fixed pointwise.

## Proposition 5.3: finite-geometry flip

**Verdict: Correct with amendment.** The factor identification
\(\iota\) must be unitary, or unitary up to an overall nonzero scalar,
for the stated flip to be unitary. A general vector-space isomorphism
with the stated subspace images is insufficient.

For a counterexample to the unqualified statement, choose orthonormal
bases and set \(\iota(\ell)=2e_0\) while mapping the three colour
basis vectors to \(e_1,e_2,e_3\) isometrically. Then
\[
 F(\ell\otimes e_1)=2e_1\otimes e_0,
\]
so \(F\) changes the norm. It is still an involution.

With unitary \(\iota\), the flip is unitary and involutive. Its action
on the colour-family factors gives
\[
 F(P_q\otimes P_0)F^{-1}
 =P_\ell\otimes(1-P_0).
\]
It commutes with \(\gamma\), which acts on the chirality factor, and
with \(J\) by its conjugate extension to the second summand.
Extend the self-adjoint Dirac blocks to both particle and conjugate
summands in the same way. Their ranks are \(12\): two chirality
states, three colour or family states, and two conjugate summands.
Their kernels consequently have dimension \(128-12=116\).
If a fixed self-adjoint \(D\) commutes with \(F\), the two families
\(D+tT_{\rm top}\) and \(D+tT_\nu\) are conjugate for every \(t\);
the bounded spectral sector in the heavy limit has dimension \(116\).
The commutant algebras are conjugate when the represented algebra is
itself flip-invariant. The displayed Standard Model and Pati-Salam
colour algebras acting on the colour factor alone do not satisfy that
condition.

## Proposition 5.4: misaligned three-slot configurations

**Verdict: Correct with amendment.** The no-isometry conclusion holds for
all 192 assignments, by the analytic argument below. The universal
neighbour counts stated in the proposition are false when slots are
misaligned; the omitted scratch computation cannot support those counts.

Let \(A,B,C,D\) be the three-slot sets for up quarks, down quarks,
charged leptons and neutrinos, respectively, and let \(0\in A\) be the
top's slot. The table in the preceding section applies independently
to every slot assignment. For a root in slot \(f\), after removing all
neutrinos it gives
\[
\begin{array}{c|c}
\text{source} & d_{S-N}\\ \hline
 U,\ f\in A & 20\\
 D,\ f\in B & 17+2\,\mathbf1_C(f)\\
 E,\ f\in C & 13+6\,\mathbf1_B(f).
\end{array}
\]
For example, the down-quark degree is
\(3|A|+[4+2(|B|-1)]+2\mathbf1_C(f)
 =17+2\mathbf1_C(f)\).
Thus \(S-N\) has degrees in \(\{13,17,19,20\}\), and the degrees
\(16,22\) are absent.

After removing the top, every neutrino root in slot \(f\in D\) has
\[
 d_{S-T}=16+6\bigl(\mathbf1_A(f)-\mathbf1_{\{0\}}(f)\bigr)
 \in\{16,22\}.
\]
Indeed, all three down-quark slots contribute \(9\), all three
charged-lepton slots contribute \(3\), the two other neutrino slots
contribute \(4\), and up quarks contribute six exactly when
\(f\in A\), less six for the removed top when \(f=0\). Since both
sets are closed under negation, their centroids are zero. Any Euclidean
isometry between them would preserve the displayed degrees, which is
impossible. The argument covers all \(3\cdot4^3=192\) choices without
enumerating them.

**Counterexample to the stated counts.** Take
\[
 A=C=\{0,1,2\},\qquad B=D=\{0,1,3\}.
\]
In \(S-N\), down-quark roots in slot \(3\) have degree \(17\), and
charged-lepton roots in slot \(2\) have degree \(13\). In \(S-T\), the
neutrino degrees in slots \(0,1,3\) are \(16,22,16\), respectively.
This contradicts both the assertion that \(S-N\) has only degrees
\(19,20\) and the assertion that precisely one neutrino slot has degree
\(16\).

**Scope and direction.** This concerns the specific half-root
realization, whole colour multiplets, one root slot per species and
Euclidean isometries. General zero modes of a nonsplit \(SU(4)\) bundle,
other embeddings, and maps without an isometric root action are outside
the calculation; Proposal 5.5 is a direction to investigate.

## Proposal 5.5: four-slot bundles and three families

**Verdict: Correct with amendment as a possible escape.** General bundle
zero modes are sections, rather than individual fibre roots, so the
isometry hypotheses of Propositions 5.1 and 5.4 do not automatically
apply. The index counts net chirality, and the proposed Weyl map on
zero modes remains to be constructed.

On a Calabi-Yau threefold, for a rank-four \(SU(4)\) bundle \(V\),
Riemann-Roch gives
\[
 \chi(V)=\int_X \operatorname{ch}(V)\operatorname{Td}(X)
        =\frac12\int_X c_3(V).
\]
When \(H^0(V)=H^3(V)=0\), this is
\(-h^1(V)+h^2(V)\), with \(h^2(V)=h^1(V^*)\) by Serre duality.
Thus index three gives three **net** chiral families. Exactly three
\(16\) zero modes additionally requires the opposite-chirality
cohomology to vanish.

For a split bundle \(\oplus_iL_i\), the integers
\(n_i=-\chi(L_i)\) are signed indices; their sum being three does not
force one zero mode in each of three distinct slots. Even in that
special distribution, applying Proposition 5.1 to normalized global
sections requires an identification of the physical zero-mode metric
and the root configuration. The sentence that all split models fall
under Proposition 5.1 is therefore too broad.

The fibre Weyl transposition can exchange the abstract subgroups, but a
symmetry of a particular compactification must also act compatibly on
the bundle, connection, zero-mode spaces, inner products and any
Wilson-line data. Establishing such an action is an open construction;
the escape from the root no-go alone does not establish it.

## Proposition 3.5: magnetic product solution

**Verdict: Correct** as a classical local supergravity solution with
scaled Einstein factors. Flux quantization, global consistency,
supersymmetry and stability remain separate questions.

Choose an orthonormal frame on \(\mathbb{CP}^2\times S^2\) with
\(J=e^{12}+e^{34}\) and write
\[
 G=f_1e^{1234}+f_2(e^{1256}+e^{3456}).
\]
Then \(G^2=24(f_1^2+2f_2^2)\). The contraction
\(G_{aPQR}G_a{}^{PQR}\) is \(6(f_1^2+f_2^2)\) in a
\(\mathbb{CP}^2\) direction, \(12f_2^2\) in an \(S^2\) direction,
and zero in an AdS direction. Substitution in the displayed Einstein
equation gives
\[
 R_{\rm AdS}=-\frac{f_1^2+2f_2^2}{6},\quad
 R_{\mathbb{CP}^2}=\frac{f_1^2}{3}+\frac{f_2^2}{6},\quad
 R_{S^2}=\frac{2f_2^2}{3}-\frac{f_1^2}{6}.
\]
The forms \(J,\operatorname{vol}_{\mathbb{CP}^2},
\operatorname{vol}_{S^2}\) and the AdS volume form are parallel, so
\(dG=d{*G}=0\). Also \(G\wedge G=0\), since it is an eight-form
entirely on the six-dimensional compact factor.

Positive curvature of the \(S^2\) factor is equivalent to
\(|f_1|<2|f_2|\). This also makes the other compact curvature positive
and the AdS curvature negative. The radii are then determined by the
three Einstein constants. Here “round factors” means the standard
scaled Fubini-Study metric on \(\mathbb{CP}^2\) and round metric on
\(S^2\).

## Proposition 7.1: channel-angle fundamental domain

**Verdict: Correct with clarification.** The stated fundamental domain
classifies the signed channel spectrum, including its endpoint
multiplicities. The endpoints require separate domains or limits, and
the quotient of one spectrum need not identify complete physical
backgrounds.

The spectrum modulo \(\pi/\ell\) consists of the two residues
\(\pm\theta/\ell\). Equality of two such multisets is equivalent to
\(\theta'\equiv\pm\theta\pmod\pi\), giving the unique representative
in \([0,\pi/2]\). In the interior the progressions are disjoint.
At zero they coincide on \(\pi\mathbb Z/\ell\); at \(\pi/2\) they
coincide on \((\mathbb Z+1/2)\pi/\ell\). Thus every endpoint
eigenvalue has multiplicity two, including the zero at the first
endpoint.

The channel has two copies of the scalar antiperiodic circle spectrum
at the second endpoint. Theorem 22.1 assumes the strict window
\(\ell\|D_F\|<\pi/2\); \(\theta=\pi/2\) is the corresponding
boundary-condition limit and its lowest level is degenerate. The
massless electroweak vectors at that endpoint are a further conclusion
of the specified two-grading model of Lemma 23, rather than a property
of an arbitrary isolated channel.

## Proposition 7.2: Wilson-line endpoint and one-loop minimum

**Verdict: Correct with amendment.** The centralizer at
\(a=1/2\) has an additional disconnected component. The location of
the minimum is correct for the particular determinant and
\(n_f>0\); the D8 interpretation is conditional on the proposed
dictionary.

For \(0<a<1/2\), the nonreal conjugate rotation eigenvalues force a
commuting orthogonal transformation to preserve the two-plane and act
there by a rotation. Its centralizer in \(SO(32)\) is
\(SO(30)\times SO(2)\). At \(a=1/2\), the holonomy is
\(\operatorname{diag}(1_{30},-1_2)\), so the full centralizer is
\[
 S(O(30)\times O(2))
 =\{(A,B):\det A\,\det B=1\},
\]
with identity component \(SO(30)\times SO(2)\). At \(a=0\) the
centralizer is \(SO(32)\). Conjugation by a reflection in each
subspace sends \(a\) to \(-a\), and \(a\mapsto a+1\) leaves this
\(SO(32)\) holonomy unchanged.

For the determinant of Lemma 24, write \(t=\sin^2\theta\). Its two
gauge terms are nonnegative and vanish at \(t=1\); the fermion term
\(-n_fF(t)\) is strictly decreasing for \(n_f>0\). Thus the unique
global minimum is \(t=1\), or \(a=1/2\). This conclusion assumes the
flat massless determinant, its stated field content and wall
conditions, and no additional angle-dependent term. It does not derive
a force on a supersymmetric type-I' brane.

## Proposition 7.3: doubled torus and the finite algebra

**Verdict: Error in the stated unital finite triple.** The KO signs,
kernel dimensions and matrix-algebra generation check out. The
represented algebra acts by zero on the second summand, so its unit
is a proper projection. A unital repair adds a scalar summand. A
nontrivial spin structure also twists the displayed cohomology.

Let \(S_0\) be the flat spin line, with \(S_0^2\simeq\mathcal O\).
The two zero-mode spaces are
\[
 H^0(L\otimes S_0),\qquad H^1(L^{-1}\otimes S_0).
\]
The first has dimension \(p\), because a negative-degree line bundle
has no holomorphic sections and Riemann-Roch on a genus-one curve gives
\(\chi(L\otimes S_0)=p\). Serre duality identifies the second with
the dual of the first, hence with its complex conjugate after choosing
the inner product. With the stated orientation these have opposite
gradings. The untwisted formula in the proposition is literal for the
trivial spin structure; the dimensions hold for all four.

The assumed charge conjugation intertwines the two coupled Dirac
operators and reverses the grading. Consequently the displayed \(J\)
satisfies \(J^2=1\), \(JD=DJ\), and \(J\gamma=-\gamma J\).
In a constant field \(B=2\pi p/A\), the nonzero Dirac levels have
magnitudes \(\sqrt{2|B|n}\), \(n\geq1\), in the standard Dirac
normalization.

For a reciprocal lattice vector \(k\), projecting multiplication by
\(e^{ik\cdot x}\) onto the lowest Landau level gives the nonzero
Gaussian factor \(e^{-|k|^2/(4|B|)}\) times a guiding-centre
translation. This follows by splitting the position operator into
oscillator and guiding-centre parts and taking the oscillator-vacuum
matrix element. For primitive reciprocal vectors, the translations
form a clock-and-shift pair with commutator \(e^{\pm2\pi i/p}\);
their \(p^2\) products span \(M_p(\mathbb C)\). Flat spin and
connection holonomies change phases, not the nonzero Gaussian.
Compression generates this algebra; it is not itself a
homomorphism from the function algebra.

On \(V\oplus\bar V\), the generated representation is
\(\rho(a)=a\oplus0\). Thus \(\rho(1)=1_V\oplus0\), and both the
parent and finite representations are degenerate on the second
summand. They do not have the unital representation required in the
finite-data setting of Lemma 22. In particular, for \(p=3\), no
complex-linear unital \(M_3(\mathbb C)\) representation on
\(\mathbb C^3\oplus\overline{\mathbb C^3}\) can satisfy order zero
with a unital opposite action: it would make this six-dimensional
space a module for \(M_3\otimes M_3^{op}\cong M_9\), whose nonzero
modules have dimensions divisible by nine.

One repair is to unitize the represented corner:
\[
 A=M_p(\mathbb C)\oplus\mathbb C,\qquad
 \rho(a,\lambda)=a\oplus\lambda I_{\bar V}.
\]
In conjugate bases \(J\rho(b,\mu)^*J^{-1}=\mu I_V\oplus b^T\),
which commutes with \(\rho(a,\lambda)\). This yields a unital
finite KO-6 datum with \(D=0\) and order zero. It has an additional
scalar summand; deriving the full Standard Model algebra and its
representation remains open.

## Proposition 8.1: antiunitary commutants

**Verdict: Correct with clarification.** On each finite-dimensional
eigenspace of \(d^2\), the commutant of \(j\) in the unitary group is
\(O(n)\) for \(j^2=1\), and \(USp(n)\) for \(j^2=-1\), with even
complex dimension \(n\) in the latter case.

For \(j^2=1\), a real orthonormal basis identifies \(j\) with
complex conjugation, and its commuting unitaries are real orthogonal
matrices. For \(j^2=-1\), \(v\) and \(jv\) are orthogonal; taking
their orthogonal complement inductively gives a quaternionic
orthonormal basis. The commuting unitaries are the compact symplectic
group.

This commutant is defined using \(j\) and the \(d^2\) eigenspace
alone. It need not commute with \(d\), the represented algebra, or
other physical structures. For example, on \(\mathbb C^2\) let
\(j\) be conjugation and \(d=\operatorname{diag}(1,-1)\): the
commutant on the \(d^2=1\) space is \(O(2)\), but a generic rotation
does not commute with \(d\). Moreover \(O(n)\) contains disconnected
transformations, while \(SO(n)\) is its identity component for
\(n\geq2\). The orientifold comparison therefore requires an explicit
Chan-Paton representation and compatibility with the rest of the
data.

## Proposition 8.2: endpoint channel multiplicities

**Verdict: Correct with clarification.** For \(k\) independent channels
at the same angle, the signed eigenvalue \(\theta/\ell\) has
multiplicity \(k\) in the interior and \(2k\) at either endpoint.

For \(0<\theta<\pi/2\), only \(n=0\) in the positive progression
gives \(+\theta/\ell\). At zero both progressions have \(n=0\), and
at \(\pi/2\) the positive \(n=0\) and negative \(n=1\) branches
coincide. This proves the claimed signed count.

The multiplicity of the corresponding lowest eigenvalue of \(|D|\)
is \(2k\) in the interior, \(2k\) at zero, and \(4k\) at
\(\pi/2\). At zero the two interior signed eigenvalues simply
coalesce; at \(\pi/2\) the next level also meets the window. Thus
the signed count alone does not establish a doubling of independent
physical Chan-Paton labels or an orientifold projection.

## Proposition 6.1: the SO(32) Wilson-line spectrum

**Verdict: Correct with amendments.** The charged momentum progressions
match a channel of Lemma 22 after the stated identification of
parameters. The \(SO(32)\) charged sector has 30 copies of that channel,
and \(a/R\) is the lowest positive mass only on the chosen fundamental
interval \(0\leq a\leq1/2\).

Complexifying the defining representation gives
\(30\oplus1_{+1}\oplus1_{-1}\), hence
\[
 \mathfrak{so}(32)_\mathbb C
 =\mathfrak{so}(30)_\mathbb C\oplus1_0
  \oplus30_{+1}\oplus30_{-1}.
\]
The dimensions are \(435+1+30+30=496\).
The charged holonomies shift the momenta to
\((n\pm a)/R\). With \(\ell=\pi R\) and \(\theta=\pi a\), these
are \((n\pi\pm\theta)/\ell\), with multiplicity 30 for each
progression before spacetime polarizations are counted. The light mass
is \(\operatorname{dist}(a,\mathbb Z)/R\); in the interval
\([0,1/2]\) it is \(a/R\). Lemma 22's nondegenerate window uses the
interior, with the endpoint understood as a limit.

This is a spectral comparison. It does not identify a quark with the
charged gauge-sector fields, their spin or multiplicity. For an
\(SO(32)\) Wilson line, \(a\mapsto a+1\) is literally periodic; the
global form and additional spinor sectors of the heterotic gauge group
must be specified before extending that periodicity to the full string
spectrum.

## Proposition 9.3: real-structure constraint on diquark blocks

**Verdict: Correct with amendment.** The block-symmetry constraint and
the resulting exclusion of an antisymmetric block in the stated KO signs
are correct. The signs alone do not prove that every symmetric block or
the full symmetric representation occurs as an inner fluctuation.

**Independent check.** Choose an antiunitary identification
\(K:V\to\bar V\) and write
\[
 J(v,w)=(\varepsilon K^{-1}w,Kv),\qquad
 X=\begin{pmatrix}A&B\\B^*&D\end{pmatrix}.
\]
The \(V\to V\) component of \(JX=\varepsilon'XJ\) gives
\[
 \varepsilon K^{-1}B^*=\varepsilon'BK,
 \qquad B=\varepsilon\varepsilon' B^T .
\]
Thus \(\varepsilon\varepsilon'=+1\) forces
\(B\in S^2V\), and \(-1\) forces \(B\in\Lambda^2V\). For the
displayed KO-5, KO-6 and KO-7 conventions the products are all \(+1\).
The zero block belongs to both subspaces, so an unqualified
“symmetric iff the sign is \(+1\)” should be read as a statement about
the symmetry *forced by the sign*.

For \(V=\mathbb C^5\otimes\mathbb C^3\), the flip on \(V^{\otimes2}\)
gives
\[
 S^2V=(S^2\mathbb C^5\otimes6)
       \oplus(\Lambda^2\mathbb C^5\otimes\bar3).
\]
With two flavours of charge \(2/3\) and three of charge \(-1/3\),
\(\Lambda^2\mathbb C^5\) has multiplicities \(3,6,1\) at charges
\(-2/3,1/3,4/3\). The corresponding multiplicities in
\(S^2\mathbb C^5\), and hence in the colour-\(\bar3\) part of
\(\Lambda^2V\), are \(6,6,3\).

A \(J\)-compatible finite fluctuation can occupy only a subspace of
\(S^2V\); the algebra, grading and order conditions determine which
blocks actually occur. For example, with \(D=0\) every inner one-form
vanishes, despite the above symmetry condition. The KO signs alone
therefore exclude a nonzero antisymmetric block but do not establish the
full symmetric scalar spectrum.

For a circle operator \(D=-i\partial_x\) with ordinary conjugation
\(J\), \(JD=-DJ\). A Hermitian connection satisfying the same sign is
purely imaginary and antisymmetric in a real basis; the complexified
\(\mathfrak{so}(30)\) representation contains \(\Lambda^2V\) and its
conjugate. Whether these components survive the particular interval
boundary conditions as light scalars requires a separate construction.
For distinct multiplets, an off-diagonal block \(B_{12}\) may be chosen
freely, while the full constraint still relates it to
\(B_{21}=\varepsilon\varepsilon' B_{12}^T\).

**Scope and direction.** The exclusion concerns a Hermitian
\(J\)-compatible operator between one multiplet and its conjugate, with
the stated signs. Distinct multiplets, other real structures or signs,
derivative couplings, and circle or interval connection components remain
possible directions; each requires its own field and boundary data.
