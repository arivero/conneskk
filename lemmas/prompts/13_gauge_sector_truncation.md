You are a mathematical expert. Work ALONE: do not spawn subagents, do not delegate, do not run parallel agents or parallel tool calls. You may read files and run small local computations (python/sympy) to check algebra; if you do, name the language and say what was computed. A computation never replaces a proof.

Context (read as needed, all under /home/codexssh/conneskk):
- lemmas/05_deconstruction_interval.md: the chiral interval I_l (psi = (L, R), D_I = E d/dx, R(0) = 0, L(l) = 0) and its minimal grading-preserving spectral truncation, which is the Connes-Lott two-point space with mass m = pi/(2l).
- lemmas/09_massive_chiral_interval.md: the interval with a bulk mass; Lemma 9.11 (gauge fields on the interval: a Dirichlet condition at one end gives lightest mass pi/(2l)).
- lemmas/11_spectral_action_heavy_w.md: the Chamseddine-Connes-Marcolli relation 8 M_W^2 = sum N_f m_f^2 at the matching scale, and its consequences.
- lemmas/08_product_selects_ko.md, Theorem 5: the internal-first product D_F = D_0 (x) 1 + Gamma_0 (x) D_I.
- connes_kk_research_state.md section 6.10 ("What towerless can mean").

Question T4 (gauge sector of the towerless interval). Let M be a compact Riemannian spin 4-manifold and consider the product of the spacetime triple with the chiral interval (gauge group U(1) first, then SU(2) acting on a doublet of interval fields), with algebra C^infinity(M x I_l, M_n(C)) acting on the fermions.

1. Inner fluctuations and compression. Describe the inner fluctuations of the product Dirac operator: show that they are a five-dimensional gauge field (A_mu, A_5) on M x I_l compatible with the boundary conditions, and determine which boundary conditions on A_mu and A_5 are induced by the fermion boundary conditions R(0) = 0, L(l) = 0. Then compress to the lowest fermion pair (the Connes-Lott truncation) and prove an exact formula for the compressed fluctuated operator: identify the two sheet gauge fields A_L, A_R (weighted averages of A_mu) and the Higgs field phi connecting the sheets, as an explicit functional of A_5 and of the mass m = pi/(2l). Decide whether every Connes-Lott fluctuation (A_L, A_R, phi) arises this way.

2. Masses: spectral action against the Kaluza-Klein tower. Suppose a Dirichlet condition at one end breaks G (as in Lemma 9.11), so that the lightest massive vector of the continuum interval has mass pi/(2l). For the truncated triple, the spectral action (heat-kernel expansion, CCM normalization) gives a vector mass from the Higgs vev. Compute that mass for the truncated model, in particular when the lowest fermion pair is a colour triplet (N_f = 3) of mass m = pi/(2l), and compare it with pi/(2l). Prove whether the ratio is a fixed number and give it, or prove that the comparison depends on additional data and state exactly which. A naive estimate gives M_W = sqrt(3/8) pi/(2l) from the CCM relation against pi/(2l) from the tower; confirm or correct it, including any normalization factors from the compression (weights of u_L, u_R, the Wilson-line normalization of A_5).

3. Optional, if 1-2 are settled. For SU(2) x U(1) with the doublet assignment, compute M_W/M_Z for the truncated model and compare with the rho = 1 of a Connes-Lott doublet.

Allow failure: if a statement cannot be proved, say so and state the strongest result you can prove, or a Conjecture with the evidence.

Output format (Markdown, plain ASCII math is fine): start with a title line and a one-paragraph outcome. Then numbered results labelled Theorem, Lemma, Proposition, Corollary, Counterexample, No-go theorem or Conjecture, each with hypotheses (all conventions explicit) and proof. Use the authorial "we" and "Let". No status classes, no motivational phrasing. End with "Consequence for T4 and hypothesis H": two to four sentences.
