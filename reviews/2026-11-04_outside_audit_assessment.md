# Assessment of the outside audit of commit b2ddf98

The user supplied on 4 November 2026 an outside audit of the repository at b2ddf98, titled "conneskk: audit and a route from the massless electroweak limit to eleven dimensions", kept verbatim in [2026-11-03_outside_audit_d11.md](2026-11-03_outside_audit_d11.md). Its authorship model is not stated in the file. This note records what was checked and what was done. Provenance: Claude Sonnet 5.5 recomputed all items, read-only, in Python and with pdftotext, and Claude Opus 5.5 rederived by hand the items marked below, against the source lemmas. The user asked for attention to detail with the reports of smaller models, so the column "by hand" says which verdicts do not rest on such a report alone.

## Verdicts

| Audit section | Claim | Verdict | By hand |
|---|---|---|---|
| 1 | Withdrawal of the alleged normalization error at boundary_condition_note.tex:53 | Correct: both components have the factor | Sonnet only |
| 2.1 | D^2 = 2 lambda^2 on the 64-dimensional product, P_- D P_- = 0, ||[P_-, D]|| = sqrt 2 |lambda| | Correct; it agrees with Proposition 28.20 | Sonnet only |
| 2.2 | The massless limit must specify a path; theta -> 0 at fixed l opens no tower | Correct, and adopted as STRATEGY T14 | Yes |
| 2.3 | ind D_{O(k)} = (k^3 - k)/6, values 4, 0, 0, -4, total zero | Correct | Yes; Witten 1983, pp. 43-44, gives the reason |
| 2.4 | Supplement omits lemma 17 | Correct; lemmas 01, 02, 04 are also omitted, and 17 is added | Yes |
| 2.4 | docs/ last refreshed at 4ae5b43; T13 steers only to D = 9; docs/index.html has no seven-dimensional entry | Correct | Sonnet only |
| 2.4 | PDF overflow, 81 of 478 and 13 of 263 pages | Depends on an unstated tolerance: Sonnet found 113 and 15 at tolerance 0, 83 and 15 at 2 pt, 12 mobile pages above 5 pt, with maximum overhang 8.7 pt, through pdftotext -bbox | Sonnet only |
| 3 | Finite window and opening tower on the interval, equations (1) to (4) | Correct; the statement needs Delta_eps defined, and the references are Theorems 22.1, 22.4. Now Theorem 30.1 | Yes |
| 3.1 | Vector poles and M_W^2 = 2 m^2, M_Z^2 = (16/5) m^2; coefficients 3 and 24/5 | Correct, the latter for the fully massive family of lemma 18, Proposition 14. Moreover M^2 = ((3 - d_eff)/2) ||[D_F, T]||^2/||T||^2 of lemma 25 moves exactly between these pairs. Now Corollary 30.2 | Yes |
| 4 | Localized family, equations (6) to (8), and the table | Correct. Now Proposition 30.3 | Yes; table rows by Sonnet |
| 5.1 | Equation (9), Weyl exponent on the cylinder | Correct. Now Corollary 30.4 | Yes |
| 5.2 | Dilation, conditional scaling of X | Correct; the condition is removed in Theorem 30.5 for the class of lemma 29, pending its referee | Yes |
| 6 | Bound (13) with constant 2, and the telescoping | Correct, once "defect" means ||X - P_H X||. Now Proposition 30.6 | Yes |
| 6, (14) | Target: eta_t <= C (lambda/delta)^2 + errors | Stated as a target there. Proposition 30.7 proves the form exp(-2 G) for the upper bound exp(-G) on lambda; a bound in terms of lambda itself would need a lower bound on lambda, which is open | Yes |
| 6.1 | Table of eta_t at L = 2, 3, 4, 5 | Rows reproduced by Sonnet (Python, same solver, so a reproduction with a new observable) | Sonnet only |
| 7.1 | Toy potential and its minimum | Correct as an elementary statement; underived, as the audit says | Yes |
| Appendix A | M^{111} data: c_1 = 3h + 2u, dim H^0(O(3,2)) = 30; six arXiv identifiers | Correct on the items checked | Sonnet only |

No error in a displayed equation of the audit was found.

## What was done

- Lemma 30 takes the propositions that are proved, with proofs redone, and adds Theorem 30.5 and Proposition 30.7.
- Item 2 of the audit's list (the shape-unit estimate for X, starting from the line-preserving collar) is lemma 29, which was already in progress when the audit arrived, and goes further: case (a) at the Fubini-Study radius as well.
- STRATEGY gains T14, the joint limit, parallel to T13, as the audit asks.
- paper/build_supplement.sh gains lemma 17, and lemmas 28 to 30 once their referees are applied.

## What was not adopted

The note proposed in section 8 is being written at the request of the user, as paper/joint_limit_note.tex. The M^{111} comparison stays a comparison, and no W, Z -> 0 family links it to the finite geometry. The layout repair of the supplement is recorded and has not been done.
