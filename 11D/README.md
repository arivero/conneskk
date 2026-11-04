# Eleven dimensions from massless W and Z

Branch `11D`, opened 3 Nov 2026. This folder holds one line of research: how the limit M_W, M_Z -> 0 of hypothesis H can give an eleven-dimensional theory, related on one side to Witten's family of seven-manifolds with the isometry group of the Standard Model, and on the other to the M2 and M5 details of [lemma 21](../lemmas/21_top_counting.md) and [STRATEGY T12](../STRATEGY.md). All files are new; the only edits outside the folder are pointer lines in README.md, INDEX.md, STRATEGY.md and one include line in ledger.pl, so the branch can be fast-forwarded into master while master has not moved.

Attempted by Claude (Anthropic) on 3 Nov 2026. The Astra 6 audit of the same day ([reviews/2026-11-03_astra_audit_d11.md](../reviews/2026-11-03_astra_audit_d11.md), of snapshot b2ddf98, before this branch) is used in the second version of the folder: its joint-limit family defines the path along which v -> 0 opens a dimension, and its points corrected Proposition 1.4 and Proposal 1.3; see the section on the audit below. Every proposition of this folder is checked only by its author so far, and the ledger marks it as referee pending; [prompts/terra_check_11d.md](prompts/terra_check_11d.md) is the referee request.

## The picture

H reads the two sheets of the finite geometry as the minimal truncation of an interval with opposite chiral walls, and v -> 0 as the interval growing. The labels 9, 10 and 11 of H are KO labels; the heat dimension at the 11 endpoint is 5. To make 11 a metric count, the finite KO-6 factor is resolved into a six-dimensional base, B_6 = CP^2 x S^2, which has isometry SU(3) x SU(2) and is the base of Witten's spaces:

    11 = 4 (spacetime) + 1 (the interval of H) + 6 (B_6).

There are two ways to complete 4 + 6 by one dimension, and they correspond to the two branes of M-theory:

| | electric (M2) completion | magnetic (M5) completion |
|---|---|---|
| eleven-dimensional vacuum | AdS4 x Y_{3,2}, Y_{3,2} = M^{111}, a circle bundle over B_6 | AdS5 x CP^2 x S^2 |
| the interval of H | the fibre circle, antiperiodic, two walls at the fixed points of a reflection | the radial direction of AdS5, infrared end at z_IR ~ 1/v |
| SU(3) x SU(2) | isometries | isometries |
| hypercharge | the vector of C_3 on the harmonic two-form (b_2 = 1) | one combination of the two C_3 vectors (b_2 = 2) |
| v -> 0 | the M2-brane moves to the apex; AdS4 x Y_{3,2} with the Standard Model group unbroken | the infrared end moves to infinity |

## Results

| # | result | status | file |
|---|---|---|---|
| 1.1 | The chiral interval of length l is unitarily the antiperiodic circle of radius R = l/pi; the grading is the reflection, the walls its fixed points, m = 1/(2R) | Proposition, proved | [01](01_interval_and_eleventh_dimension.md) |
| audit §3, §4 | Joint family: D_F = epsilon D_*, l ~ epsilon^{-alpha}, alpha < 1, gives m_weak << E_epsilon << 1/R -> 0, a finite window at the weak scale and an opening tower at fixed energy; a localized variant with a bulk mass | Proposition (Astra 6), rechecked here in circle language, constant of the Weyl count confirmed, localized table reproduced | [01](01_interval_and_eleventh_dimension.md) |
| 1.3 | The circle of H as the M-theory circle: v -> 0 along the joint family is strong coupling with the Wilson-line angles going to zero, the 9 endpoint has no bulk fermions as in type 0 strings | Proposal | [01](01_interval_and_eleventh_dimension.md) |
| 1.4 | The angle-dependent one-loop term of lemma 24 is -93 zeta(5) n_f/(512 pi^2 l^4) at its minimum, relative to theta = 0, where M_W = M_Z = 0 at fixed l (first version misread it as the whole wall energy; corrected) | Proposition, proved (scope of lemma 24) | [01](01_interval_and_eleventh_dimension.md) |
| 1.5 | A scale-free potential l^{-4} G(theta) runs away in l, or with theta = l m fixes l m: it selects only l ~ 1/M_W (alpha = 1); alpha < 1 needs a second scale | Proposition, proved | [01](01_interval_and_eleventh_dimension.md) |
| 2.1 | M^{111} is the hypercharge quotient of the 5-bar: (S^9 ∩ mu_Y^{-1}(0))/U(1)_Y, Calabi-Yau cone because tr Y = 0, isometries (U(3) x U(2))/U(1)_Y | Theorem, proved | [02](02_witten_spaces_hypercharge_quotient.md) |
| 2.2 | Only the 5 and 5-bar of SU(5) give a seven-dimensional quotient; among the circle quotients of S^5 x S^3 only (3, 2) is Calabi-Yau | Proposition, proved | [02](02_witten_spaces_hypercharge_quotient.md) |
| 2.3 | Y_{a,b}: H^2 = Z (+ torsion), H^4 of order a^2 (Z/9 for M^{111}), spin iff a odd and b even; H^2(B_6) -> H^2(Y) is (x, y) -> 2x - 3y | Proposition, proved | [02](02_witten_spaces_hypercharge_quotient.md) |
| 2.4 | The Z_6 of the Standard Model is the kernel of SU(3) x SU(2) -> Isom(Y_{3,2}); no bosonic Kaluza-Klein mode is a triplet or doublet | Proposition, proved | [02](02_witten_spaces_hypercharge_quotient.md) |
| 2.5 | No generation from abelian fluxes on CP^2 x CP^1 along Y and B - L: u^c and d^c need one line bundle, and 2j + 1 must be linear in the fluxed charges | Negative result in scope, pending check | [02](02_witten_spaces_hypercharge_quotient.md) |
| 2.6 | One generation exactly, from fluxes along a universal charge, the grading chi and B - L; u^c, d^c share O(1, 0), so the flux sees SU(2)_R doublets and leaves T_3R free | Proposition, proved | [02](02_witten_spaces_hypercharge_quotient.md) |
| 3.1 | Hypercharge is the Betti vector of Y_{3,2}; the N = 1 fivebrane baryons are d^c and L | Proposal | [03](03_branes_hypercharge_and_the_84.md) |
| 3.2, 3.3 | One generation is Λ^odd(5-bar), with 6Y the homology class of the wrapped fivebranes; conjecture: a Fock space of wrapped fivebranes | Proposition (standard), Conjecture | [03](03_branes_hypercharge_and_the_84.md) |
| 3.4 | The Higgs is the M2 position on the doublet line of the resolved cone; v -> 0 is the apex and gives AdS4 x Y_{3,2}; at fixed N this is the fixed-tower path, and opening needs N -> infinity, against N = 1 for the matter | Proposal (stabilizer proved), obstruction stated | [03](03_branes_hypercharge_and_the_84.md) |
| 3.5 | AdS5 x CP^2 x S^2 with G_4 = f_1 vol(CP^2) + f_2 J ∧ vol(S^2) solves eleven-dimensional supergravity iff abs(f_1) < 2 abs(f_2) | Proposition, proved | [03](03_branes_hypercharge_and_the_84.md) |
| 3.6, 3.7 | Two completions of one base; the M2/M5 exchange as the electric-magnetic duality of hypercharge, which does not permute the 96 states | Proposals | [03](03_branes_hypercharge_and_the_84.md) |
| 3.8, 3.9 | The 84 of C_3 is not colour-equivariantly either family of 84, neither through the little group nor as Kaluza-Klein modes on Y_{3,2} | Negative result in scope, pending check; Corollary | [03](03_branes_hypercharge_and_the_84.md) |
| 4.1 | The two 12-state blocks of lemma 21 are exactly the ratio-preserving blocks of whole species: one up-type quark, or the three neutrinos | Proposition, proved | [04](04_two_families_m2_m5.md) |
| 4.2, 4.3 | The colour contents of F1 and F2 differ, and for every SU(3) -> SU(9) the space Lambda^3 C^9 is never either family (only 3 + 6 (1) gives triplets only) | Negative results in scope, pending check | [04](04_two_families_m2_m5.md) |
| 4.A, 4.4 | Two commuting order-3 gradings of e8, by SU(9) (brane level mod 3: gravity, C_3, C_6) and by SU(3) x E6 (families); the 10 and H_u lie in the C_3 sector, (d^c, L) and nu^c in the C_6 and gravity sectors according to a sign t | Theorem, proved | [04](04_two_families_m2_m5.md) |
| 4.5 | Up-type Yukawa couplings lie inside the C_3 sector, the others have one field per sector; the top mass is the wedge Lambda^3 -> Lambda^6 | Proposition, proved | [04](04_two_families_m2_m5.md) |
| 4.6 | The M2/M5 exchange is the Chevalley involution, acting as the real structure J; it preserves both families and does not exchange the top with the neutrinos | Negative result in scope, pending check | [04](04_two_families_m2_m5.md) |
| 4 §7, §8 | nu^c as the gravitational state selects t = +1/2; a discrete Z_3 from the M-grading | Proposal; Remark | [04](04_two_families_m2_m5.md) |

The checks are in [checks_11d.py](checks_11d.py) (Python 3, exact fractions; every check asserts; about 20 s).

## How the massless limit gives eleven dimensions here

Vanishing W and Z masses open a dimension only along a specified path (audit §2.2): at fixed l, both theta -> 0 and theta -> pi/2 make them massless with the tower fixed. The criterion used here is the joint family of the audit, m_weak << E_epsilon << 1/R -> 0, with finite gauge couplings.

1. In the circle language of Proposition 1.1, the joint family is R -> infinity for an antiperiodic circle with two fixed points, with the Wilson-line angles of D_F going to zero. Read as the M-theory circle (Proposal 1.3), it is the strong-coupling limit, with the weak scale below the momentum tower of the eleventh dimension.
2. What selects the path: a potential with l and the angles as its only scales selects alpha = 1, the original l ~ 1/M_W of H, on which the finite window does not separate (Proposition 1.5). The joint family needs a second scale; the localized family of the audit (bulk mass mu, mu l ~ (1 - alpha) log(1/epsilon)) is the first candidate, and the four-dimensional couplings must stay finite, which on the circle needs g_5^2 ~ R.
3. In the brane language of Proposal 3.4, v -> 0 moves the M2-brane to the apex of the cone over the Witten space with Killing spinors, and the near-horizon geometry is AdS4 x Y_{3,2}: 4 + 7 = 11 with SU(3) x SU(2) from isometries and U(1)_Y from C_3 (Proposal 3.1). This is the family of manifolds with the Standard Model group, singled out by the 5-bar (Theorem 2.1, Proposition 2.2). At fixed N it is the fixed-tower path; a joint family there needs N -> infinity, in tension with the N = 1 matter content.
4. On the magnetic side, AdS5 x CP^2 x S^2 carries the same base, and v -> 0 sends the infrared end of AdS5 to infinity (Proposal 3.6), which is the interval of H growing.

The angle-dependent one-loop term (Proposition 1.4) is minimized at the massless point at fixed l; the direction in which l moves depends on the angle-independent Casimir coefficient, which is not yet computed.

## Next computations, ranked

0. **A potential with a second scale that selects alpha < 1** (Proposition 1.5 and audit §7.1): the one-loop potential of the localized family, G(l m, l mu), from the exact secular equations of lemma 09, and the angle-independent Casimir coefficient a_0 of the flat family; then the vector kinetic matrix and mass Hessian along the selected path (audit eq. (17)), with g_4 finite.
1. **The referee of this folder** ([prompts/terra_check_11d.md](prompts/terra_check_11d.md)): Propositions 1.1, 1.4, 2.1 to 2.6, 3.2, 3.5, 3.8 and Corollary 3.9, with the negative results 2.5 and 3.8 needing the independent check before they are relied on.
2. **Spinors on Y_{3,2}** ([prompts/astra_11d_01.md](prompts/astra_11d_01.md)): the lift of (U(3) x U(2))/U(1)_Y to the spin bundle, whether fermionic Kaluza-Klein modes can carry triality or isospin 1/2, and which spin structures give the antiperiodic fibre momenta (k + 1/2)/R of Proposition 1.1.
3. **W and Z masses from the resolution**: in the warped resolved cone over Y_{3,2} with the M2-brane on the doublet line, compute the masses of the SU(2) x U(1)_Y vectors broken by the brane position, as functions of zeta and N, and compare M_W/M_Z with the cos^2 theta = 5/8 of the spectral action.
4. **The 9D reduction of Proposition 2.6**: with SU(2)_R broken by wall data, derive the mass basis of u and d against the charge basis, and the vectorlike limit at the 9 label, where the left-handed interactions are off.
5. **Fermionic zero modes of wrapped fivebranes** (Conjecture 3.3) at N = 1, and three generations.
6. **The magnetic completion**: flux quantization, stability and the two C_3 vectors of AdS5 x CP^2 x S^2 against the fluxed pair (chi, B - L) of Proposition 2.6.
7. **The colour-family exchange in E8 ⊃ SU(3)^4** (PLAN, step 4): the remaining candidate for the exchange of the top and the neutrinos, since Proposition 4.6 excludes the M2/M5 exchange.

## The Astra 6 audit of 3 Nov 2026

The audit ([reviews/2026-11-03_astra_audit_d11.md](../reviews/2026-11-03_astra_audit_d11.md)) reviews the master snapshot b2ddf98 and proposes a route from the massless electroweak limit to eleven dimensions with X = D(Λ^2_- T^*S^4) as principal candidate and M^{111} as comparison. Its use here:

| audit item | use in this folder |
|---|---|
| §2.2, the massless limit must specify a path | adopted as the criterion; Proposal 1.3 revised; Proposition 1.5 shows what a scale-free action selects |
| §3, joint family | restated in circle language in 01, checked against Theorems 22.1 and 22.4; the constant 2 r l E/pi of its Weyl count confirmed (Python, section H) |
| §3.1, vector poles of the lemma-23 toy | quoted in 01: M_W^2/M_Z^2 -> 5/8 along the family |
| §4, localized family and tail identity | table of roots and the identity (8) reproduced (Python, section H, bisection), independently of the audit's script |
| §7.1, modulus target | Proposition 1.5: in the flat family the electroweak term is m^2/l^2 (q = -2), so the ansatz with q > 0 needs a second scale |
| §7.2, gauge normalization | test 2 of Proposal 1.3, and the large-N couplings in 03 |
| Appendix A, M^{111} | agrees with Theorem 2.1 and Proposition 2.3 for (3, 2), and with the placement of hypercharge in the charged module (03) |
| §2.1, §5, §6, X and lemma 28 | outside this folder; the 7-dimensional parent X is a third possible completion, M-theory on R^4 x X with the Bryant-Salamon comparison and the circle of solidification §7 as a candidate M-circle, listed as a direction only |
| §2.4, docs and distribution | outside this branch: refreshing the PDFs, adding lemmas 17 and 28 to paper/build_supplement.sh and repairing the supplement layout belong to master's build, and LaTeX is not available in this session |

## References used here

Read in this session (3 Nov 2026), from the arXiv abstract pages or the ar5iv text through a summarizing fetch: D. Fabbri, P. Fré, L. Gualtieri and P. Termonia, *M-theory on AdS4 x M^{111}: the complete Osp(2|4) x SU(3) x SU(2) spectrum from harmonic analysis*, Nucl. Phys. B 560 (1999) 617, [hep-th/9903036](https://arxiv.org/abs/hep-th/9903036) (coset, Killing spinors only for p = q, R-symmetry, Betti multiplet, Kaluza-Klein states neutral under it); D. Fabbri, P. Fré, L. Gualtieri, C. Reina, A. Tomasiello, A. Zaffaroni and A. Zampa, *3D superconformal theories from Sasakian seven-manifolds*, [hep-th/9907219](https://arxiv.org/abs/hep-th/9907219) (D-term 2|U|^2 = 3|V|^2, U(1) fibration over P^1 x P^2, baryons det U and det V as wrapped M5-branes, E_0 = 4N/9 and N/3, b_2 = b_5 = 1). M. Kreck and S. Stolz, *A diffeomorphism classification of 7-dimensional homogeneous Einstein manifolds with SU(3) x SU(2) x U(1)-symmetry*, Ann. of Math. 127 (1988) 373 (title and scope only).

Recalled and not reread, to be checked before any of them carries an argument: E. Witten, *String theory dynamics in various dimensions*, hep-th/9503124 (D0 states as momentum modes); O. Bergman and M. Gaberdiel, *Dualities of type 0 strings*, hep-th/9906055; M. Fabinger and P. Hořava, *Casimir forces between end-of-the-world branes*, hep-th/0002073; E. Witten, *SL(2, Z) action on three-dimensional conformal field theories with Abelian symmetry*, hep-th/0307041; C. N. Pope and P. van Nieuwenhuizen, *Compactifications of d = 11 supergravity on Kähler manifolds*, Commun. Math. Phys. 122 (1989) 281; J. Gauntlett, D. Martelli, J. Sparks and D. Waldram, *Supersymmetric AdS5 solutions of M-theory*, hep-th/0402153.

Already in the corpus: Witten 1981 and Castellani-D'Auria-Fré ([LITERATURE.md §F](../LITERATURE.md#f-weinberg-angle-from-a-squashed-s3--lens-space-and-from-mpqr)); Hořava-Witten, Atiyah-Witten and Acharya-Witten-type cones ([solidification §6](../research_limits/solidification.md#6-what-m-theory-supplies-and-what-it-does-not)).

Prior work for the observation of Theorem 2.1, that the weights of M^{111} are the hypercharges of the 5-bar, was not searched; this is an open item for LITERATURE.md.

## Files

- [01_interval_and_eleventh_dimension.md](01_interval_and_eleventh_dimension.md): the "1".
- [02_witten_spaces_hypercharge_quotient.md](02_witten_spaces_hypercharge_quotient.md): the "6 + 1" of Witten's spaces, the Z_6, chirality from fluxes.
- [03_branes_hypercharge_and_the_84.md](03_branes_hypercharge_and_the_84.md): C_3, M2, M5 and the 84.
- [04_two_families_m2_m5.md](04_two_families_m2_m5.md): the two 12-state blocks, the two gradings of E8, Yukawa couplings as brackets, the M2/M5 exchange as J.
- [PLAN.md](PLAN.md): the handover plan of the line.
- [checks_11d.py](checks_11d.py): exact checks.
- [ledger_11d.pl](ledger_11d.pl): ledger facts, included by [../ledger.pl](../ledger.pl).
- [prompts/](prompts/): the referee request and the first Astra job.
- [../reviews/2026-11-03_astra_audit_d11.md](../reviews/2026-11-03_astra_audit_d11.md): the Astra 6 audit used in the second version.
