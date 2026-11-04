# With a fixed light block M_0 and a heavy block Theta/l, the limit l -> 0 keeps the light masses explicit with couplings vanishing as m l, and sends W and Z to pi/(2l) and the top to Theta/l, with m_t/M_W = 2 Theta/pi < 1 and M_W = M_Z

**Status.** Corollary (Corollary 22.9), with Proposition 22.8; the gauge spectrum is conditional on an assumed five-dimensional Yang-Mills action. Proved by Claude Opus 5.5; checked by Terra 6.1 by hand (historical/reviews/2026-11-03_terra_check_22.md). Ledger row `l22_family` (depending on `l22_window`); the ledger records the corpus claim `rs_F4`, that at fixed g_2 the weak limit v -> infinity keeps m_f != 0 only with y_f ~ 1/v, as covered by this row. Stated as the strict family in the section on the gauge sector of paper/boundary_condition_note.tex; Proposition 22.8 is cited in paper/connes_kk_dictionary_note.tex and paper/real_structure_note.tex.

**Setting.** (Proposition 22.8) M^4 times the parent, with algebra of functions f(y, x) valued in A_F and f(y, l) in C_F; a flat product, a positive five-dimensional Yang-Mills kinetic form, the trivial background, unrestricted endpoint variation in the allowed directions, and no additional boundary kinetic or mass terms. (Corollary 22.9) D_F(l) with M(l) = M_0 (+) Theta/l, the heavy block on an orthogonal channel compatible with J_F and the grading, 0 < Theta < pi/2, for the top and if wanted for the Majorana block; l -> 0.

**Statement.**

1. (Proposition 22.8) The gauge one-forms take values in C_F at x = l. The directions in the Lie algebra of C_F have masses n pi/l, n >= 0, and the orthogonal directions (n - 1/2) pi/l, n >= 1. In the Standard Model data with nonzero Yukawas, M_W = M_Z = pi/(2l), and with the unimodularity condition of Chamseddine-Connes-Marcolli the massless modes are the photon and the gluons.
2. X(l) has the light block tan(l |M_0|) V_0\* = l M_0\* + O(l^3) and a heavy block with singular values tan(Theta): the light couplings vanish as m l at fixed mass m.
3. The heavy channel has mass Theta/l, the broken gauge directions pi/(2l), and the other levels diverge.
4. The massless gauge sector is the physical real gauge representation of C_F, with its kernel and any unimodularity condition. For the projection P_L onto the light block D_L, P_L Q_l(a) P_L = sinc(l ad_{D_L})(P_L pi(a) P_L), within (2/3) l^2 ||D_L||^2 ||pi(a)|| of P_L pi(a) P_L. The limiting light compression need not be a representation, and the full estimate of Theorem 22.4 does not apply, since l ||D_F(l)|| -> Theta.
5. With l = pi/(2 M_W), X_q ~ (pi/2) m_q/M_W, of the form of y_q = sqrt(2) m_q/v -> 0 at fixed mass. Identifying X_q with the four-dimensional Yukawa coupling is a hypothesis.
6. m_t/M_W = 2 Theta/pi < 1, and M_W/M_Z = 1.

*Scope.* Lowest level, no bulk mass, strict wall algebra. Item 6 does not reach m_t/M_W = sqrt(8/3), which belongs to the interior. The gauge boundary conditions are those of Higgsless models (Csaki, Grojean, Murayama, Pilo and Terning, 2004), and tan(m L) = M_D L is equation (5.6) of Csaki, Grojean, Hubisz, Shirman and Terning (2004); as far as the searches of lemma 22 went, what it adds is the combination with the real structure, the exact window, C_F, the compression formula and the fluctuations.

**Proof.** Lemma 22, Proposition 22.8 and Corollary 22.9; the proofs are there. The gauge spectrum is that of the interval in the gauge A_5 = 0, Neumann at 0 and Neumann or Dirichlet at l; the family follows from Theorems 22.1 and 22.4.

**What it leaves open.** Bulk masses for the top and a changed gauge wall condition are the directions beyond this family. In a separate wall-scalar model (lemma 22, numerical comparison in Python) M_W^2/M_Z^2 runs from 5/8 to 1, and in that flat tree-level toy the top and gauge requirements are incompatible. The scaling family in which the tower opens at fixed energy is 30_window_and_tower_on_interval.md.
