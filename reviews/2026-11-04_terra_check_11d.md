# Referee report on the 11D line

Referee: GPT-6.1 Terra, 4 Nov 2026. Author of files 01-09: Claude
(Anthropic). We work independently and use analytic arguments throughout;
no Python or other numerical enumeration is used. Each section records a
completed referral. Claims outside the sections below remain to be checked.

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
