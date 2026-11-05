# A sheet-diagonal Yukawa block split along projections of the second sheet keeps order one exactly when the projections commute with the second-sheet algebra: universal on the Pati-Salam M_4(C), with the lepton Yukawas equal to the quark ones, and separable exactly on the connector's algebra C + M_3(C), with the lepton line the connector's line

**Status.** Proposition 50.3. Proved by Claude Fable 5.1 on 5 November 2026 by hand; the order-one defects of the split block on M_4(C) (nonzero) and on C + M_3(C) (zero to 10^-14), and of the universal block on M_4(C) (zero), were checked with numpy on random data (script not kept). Referee pending (Claude Opus 5.5). Ledger row `l50_split_after_connector`. Not yet in a paper.

**Setting.** The data of Corollary 16.8 with V_X = W, A_X an even algebra containing the grading Gamma_p, V_Y = V = C^4 with A_Y in M_4(C); projections P_1, ..., P_r on V summing to 1 and odd Hermitian blocks Y_i on W; D x = sum Y_i x P_i, D y = sum P_i y Y_i.

**Statement.** D is self-adjoint, odd, J_F-invariant and of order zero, with order-one defect sum_i [Y_i, a_X] x [b_Y, P_i]. (1) Equal Y_i: order one for every A_Y. (2) P_i commuting with A_Y: order one for every Y_i. (3) Linearly independent Y_i: order one exactly when every P_i commutes with A_Y; for Y_l (x) P_v + Y_q (x) (1 - P_v), exactly when Y_l = Y_q or [A_Y, P_v] = 0. (4) On A_Y = M_4(C) the block is universal: the Dirac neutrino and the up quark, the charged lepton and the down quark, share their masses in each generation (the unified Yukawas k^nu = k^u, k^e = k^d of the spectral Pati-Salam model); the commutant of P_v in M_4(C) is C + M_3(C), the second-sheet algebra of a connector on v (Theorem 20.2), on which the split block keeps order one. (5) If a split block on a line v' and a connector on v both keep order one with colour End(v^perp) retained, then Cv' = Cv. So the top-only family of lemma 21 (Y_l = 0, Y_q = {c(h), P_w} (x) P_g) is finite data of Corollary 16.8 exactly on the connector's algebra.

*Scope.* Sheet-diagonal operators with projections on the second sheet; the three-generation form is the same computation.

**Proof.** Lemma 50, Proposition 50.3: block computation of [[D, a], b°]; with a_X = Gamma_p the first factors -2 Gamma_p Y_i are independent; the commutant of a rank-one projection in M_4(C); a rank-one projection commuting with End(v^perp) vanishes on v^perp.

**Prior work.** Chamseddine and Connes (arXiv:0706.3688, section 4) and Chamseddine, Connes and van Suijlekom (arXiv:1304.8050): the Standard Model Dirac operator satisfies the first-order condition for C + H + M_3(C) and the unified case k^nu = k^u, k^e = k^d decouples the projector on the lepton line; the projection criterion and the shared line were not found (paper/LITERATURE.md, section P).

**What it leaves open.** A parent whose wall data produce the projections, that is a lepton line as a field.
