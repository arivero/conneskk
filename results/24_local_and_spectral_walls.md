# Local wall gradings satisfying a principal-symbol condition give a self-adjoint elliptic realization preserved by every smooth scalar function, while the spectral walls are preserved only by scalar functions constant on CP^3 at each wall

**Status.** Proposition (Result 2 of lemma 24). Proved by Astra 6 (gpt-6-astra, effort xhigh); checked by Terra 6.1 by hand, with an amendment on the ellipticity criterion (historical/reviews/2026-11-03_terra_check_24.md). Ledger row `l24_walls`, shared with Result 3. Stated in the Status section of paper/boundary_condition_note.tex ("\supp{24}").

**Setting.** The product differential expression D_r = E d_x + Z A/r of 24_spectral_walls_exact_window.md. For the local option, smooth self-adjoint bundle involutions G_0 at x = 0 and G_l at x = l, with G_i psi_L = psi_L and G_i psi_R = -psi_R at the wall, and [G_i, gamma_K] = 0, [G_i, sigma_A(y, xi)] = 0 for the tangential principal symbol sigma_A. For the spectral option, the conditions of Result 1.

**Statement.**

1. The local conditions give a self-adjoint elliptic realization with compact resolvent, and every smooth scalar function on K x I_l preserves its domain, with [D_r, f] = E d_x f + Z [A, f]/r bounded for each r > 0.
2. For the spectral option, the maximal smooth scalar \*-algebra preserving the domain is A_APS = {f in C^infinity(K x I_l) : f(., 0) and f(., l) are constant on K}. The same holds for the subalgebra pulled back from S^4 x I_l.

*Scope.* The symbol condition is the sufficient criterion of Bär-Ballmann, Corollary 4.18 and Theorem 4.11 (referee). On the unaugmented Dolbeault bundle the Clifford representation is irreducible, so a fibre endomorphism commuting with every sigma_A is scalar, and a smooth involution of this form is +1 or -1; additional fibres and other local elliptic projectors lie outside this criterion (referee). An arbitrary bundle grading gives a pointwise isotropic condition, and self-adjointness on an H^1 domain with compact resolvent still needs an ellipticity check. A grading prescribed only on V leaves the boundary problem incomplete until a condition on V^perp is supplied.

**Proof.** Lemma 24, Result 2; the proof is there. For spectral walls, preservation means [M_f, chi_i] = 0, so [M_f, C_i] = 0 and [M_f, sgn A] = 0, hence [M_f, Pi] = 0. Then multiplication by f_i preserves H^0(K, O(1)); its sections have no common zero, so dbar f_i = 0, and f_i is constant on compact connected CP^3.

**What it leaves open.** The local option keeps all scalar functions, and by Result 3 its grading cannot compress to a nontrivial grading on the unchanged level-one window (24_local_grading_trivial_on_window.md). For a fixed smooth function with constant wall value, localization just inside a spectral wall compresses to that constant (lemma 28, Theorem 28.15), so recovering boundary functions needs a local wall.
