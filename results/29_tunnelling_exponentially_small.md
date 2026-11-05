# The singular value lambda_M that links the two ends of the eight-state window satisfies the exact identity lambda (<u, chi u> - <v, chi v>) = <v, c(d chi) u> and is exponentially small, |lambda_M| <= C exp(-(1 - eta)(M/2) int_e^{l-a} f dr)

**Status.** Proposition (Proposition 29.8). Proved by Claude Opus 5.5; the Agmon argument keeps the partition weights in the transition region, and the statement for a family with l -> infinity is qualified by the uniformity it needs. Ledger row `l29_tunnelling` (depending on `l29_window_b` and `l28_tunnelling`). Proposition 3 of paper/joint_limit_note.tex.

**Setting.** The window of Theorem 29.7 or 29.11. By Proposition 28.19, on one copy of the 4 in each Gamma-hat degree the window operator is d_M = [[0, conj(lambda_M) I_4], [lambda_M I_4, 0]] after equivariant unitary identifications, so the four singular values coincide; T_M u = lambda v and T_M\* v = lambda u is a singular pair with unit vectors. chi is radial, equal to 1 near r = 0 and to 0 near r = l.

**Statement.**

1. lambda (<u, chi u> - <v, chi v>) = <v, c(d chi) u>.
2. For every eta in (0, 1) there are M_eta and C_eta with |lambda_M| <= C_eta exp(-(1 - eta)(M/2) int_e^{l - a} f dr) for M >= M_eta.
3. For a family with l -> infinity, M >= M_eta, and uniform bounds on the end geometry, the cutoffs, the connection and the positive bulk mass, the constants are uniform, so lambda is exponentially small in l at the rate (1 - eta)(M/2) inf f. This is the uniform decay rate required by Conjecture 28.6.

*Scope.* An upper bound: a lower bound on lambda is open. The factor 1/2 holds on every channel, since (n . J)^2 >= 1/4. The summands of E on CP^3 have indices 4, 0, 0, -4, of total zero, as equivariant cobordism invariance requires (Witten 1983, preprint pp. 43-44), and the window has Sp(2)-index 4 - 4 = 0, so index theory allows lambda != 0 (Remark 29.12).

**Proof.** Lemma 29, Proposition 29.8; the proof is there. Since chi u lies in Dom T_M, <T_M\* v, chi u> = <v, T_M chi u> gives the identity. Agmon weights from each end, with the bulk bound of Lemma 29.4 and the wall bound of Lemma 29.6 or Proposition 29.10, bound the weighted norms of u and v, and the identity on a thin bulk shell gives the exponent.

**What it leaves open.** A lower bound on lambda, and the relation between lambda and M_W, which needs the vector sector (lemma 30, Remark 30.8). The joint limit of lemma 30 uses this bound to get m_eps <= C eps (30_joint_limit_disc_bundle.md).
