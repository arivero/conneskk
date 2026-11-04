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
