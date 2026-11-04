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
