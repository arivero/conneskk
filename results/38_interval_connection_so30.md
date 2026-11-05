# With the real algebra M_30(R) on the massless light block and wall algebras containing 1, the self-adjoint one-forms of the interval parent are exactly E a_x with a_x an so(30)-valued function free at the walls, whose block between particles and antiparticles lies in Lambda^2 V

**Status.** Proposition (Proposition 11.2). Proved by Claude Opus 5.5 on 4 November 2026. The representation is nonunital on the doubled space (pi(1) is the projection onto H_+), so Theorem 22.3 does not apply to it as stated; a unital completion, such as f (+) r 1, must be specified where unitality is used. Ledger row `d11_so30_block` (with Proposition 11.1). Proposition 11.2 in the section on the interval parent of paper/real_structure_note.tex ("\supp{38}").

**Setting.** The interval parent of lemma 22, D_X = E d/dx on L^2([0, l]; C^2) (x) (H_+ + H_-), with the light block of 38_so30_commutant_of_j.md, D_F = 0 on it (so X = 0) and the wall conditions Q_R(0) = U_L(0) = 0 and their counterparts at l. C_0 and C_l are subalgebras of A = M_30(R), the real elements of End H_+, both containing 1; A_l = {f in C^infinity([0, l], A) : f(0) in C_0, f(l) in C_l} acts by pi(f) = f on the H_+ components and 0 on the H_- components, a nonunital representation on the doubled space; pi~(f, r) = f (+) r 1 is a unital completion.

**Statement.**

1. pi(f) preserves the domain for every choice of C_0 and C_l, and order zero and order one hold on this block.
2. The self-adjoint one-forms sum pi(f_i) [D_X, pi(g_i)] are exactly E a_x on the H_+ components, with a_x in C^infinity([0, l], so(30)) and no condition at the walls, and the fluctuated operator is D_A = E (d/dx + a_x on H_+ and U a_x U^{-1} on H_-).
3. J-hat A J-hat^{-1} = E U a_x U^{-1} on H_-, with sign +, as KO-dimension six requires. The block of a_x between V-bar and V is antisymmetric, and the block of the Hermitian operator E a on C^2 (x) E is symmetric, as Proposition 9.3 requires, the factor E carrying the other sign: the interval component evades Proposition 9.3 through the escape of its item 3.

*Scope.* For D_F != 0 on this block, order one fails in the finite window unless the mass block M vanishes (a = b = 1 gives the blocks -M^\* and -M); the corner representation keeps order one by the pointwise calculation, its endpoint corner is zero for invertible M, and the unital completion has the endpoint condition f(l) = r(l) 1; so this algebra describes the massless block, and the masses need a treatment without order one, as in lemma 19.

**Proof.** Lemma 38, Proposition 11.2: the wall conditions are preserved by any operator acting on the H_+ index; [D_X, pi(g)] = E g' on the H_+ components; a given skew T is attained with f = 1 and g = int_0^x (T - tau), where tau has support inside (0, l) and the same integral as T, and tau itself is a finite sum of products f_i g_i'.

**What it leaves open.** Which wall algebras make these components massless scalars is 38_interval_scalar_zero_modes.md, and whether a boundary condition derives them is open; at nonzero masses, the quadratic terms of lemma 19 for this algebra.
