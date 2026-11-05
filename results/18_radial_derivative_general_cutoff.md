# On flat R^4 the radial derivative of the spectral action is U'(c) = -(c Lambda^2/(2 pi^2)) sum_j lambda_j^2 int_{c^2 lambda_j^2/Lambda^2}^infinity f(z) dz, so nonnegative cutoffs of unbounded support have no finite stationary point and compactly supported ones have a plateau

**Status.** Proposition (Proposition 11 of lemma 18). Proved by Terra 6.1. Ledger row `l18_radial_general`.

**Setting.** A sufficiently integrable real cutoff f; flat R^4; radial configurations V = c V_\*, c > 0, with lambda_j^2 the eigenvalues of V_\*^2.

**Statement.**

1. U'(c) = -(c Lambda^2/(2 pi^2)) sum_j lambda_j^2 int_{c^2 lambda_j^2/Lambda^2}^infinity f(z) dz.
2. For nonnegative f, a finite c > 0 is stationary exactly when every tail associated with a nonzero lambda_j vanishes.
3. If f has nonzero support arbitrarily far out, there is no finite stationary point on the ray.
4. If f has compact support ending at R, there is a stationary plateau once every nonzero c^2 lambda_j^2/Lambda^2 >= R.
5. Sign-changing cutoffs can have cancellations.
6. A nonconstant cutoff flat near zero lies outside class (4), since a nonzero positive measure gives f'(0) < 0; formula (1) covers the nonnegative ones.

*Scope.* Radial paths of the form c V_\*; a radial path with an additional fixed noncommuting mass matrix need not have that form.

**Proof.** Lemma 18, Proposition 11; the statement and its proof are there.

**What it leaves open.** The cases with cancellations (sign-changing f) and radial paths with a fixed noncommuting mass matrix are not computed; this proposition supplies the escapes listed in 18_nogo_radial_vacuum.md.
