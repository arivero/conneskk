# For the mixed interval with gauge-invariant bulk mass, the covariant light link is lambda W_l^dagger, with fixed singular values, so it supplies only the unitary part of the two-sheet fluctuation space

**Status.** Theorem (Theorem 3 of lemma 14), with the image statement holding locally in spacetime. Proved by Astra 6 (job 14). Ledger row `l14_image`. Compared with the finite fluctuations in lemma 19 (19_comparison_with_parent.md).

**Setting.** D_{I,A_5} = [[0, d/dx + i A_5 + M], [-d/dx - i A_5 + M, 0]], M real, with R(0) = 0 and L(l) = 0 on C^n-valued fields; the parent algebra C^infinity(I, M_n(C)) acting identically on both chiralities. Real normalized lowest profiles p_L, p_R with (-d/dx + M) p_L = lambda p_R, (d/dx + M) p_R = lambda p_L; the endpoint-adapted frame U_L = p_L W, U_R = p_R W W_l^dagger; w_L = p_L^2, w_R = p_R^2, B_mu = W^dagger A_mu W - i W^dagger d_mu W.

**Statement.**

1. V_F = [[0, lambda W_l^dagger], [lambda W_l, 0]], A_{L,mu} = int w_L B_mu dx and A_{R,mu} = W_l (int w_R B_mu dx) W_l^dagger - i W_l d_mu W_l^dagger.
2. The range of the compression is A_F = M_n(C) + M_n(C) on H_F = C^n_L + C^n_R, Gamma_F = diag(1, -1). With its matrix product it gives a complex even finite triple with unitary group U(n)_L x U(n)_R, whose unrestricted inner fluctuations have an arbitrary complex total link.
3. The continuum construction produces exactly Phi^dagger Phi = Phi Phi^dagger = lambda^2 I_n for the link and, locally in spacetime, arbitrary pairs of Hermitian sheet connections: the fixed-singular-value restriction of that finite fluctuation space. The inherited local gauge action is h = diag(g(0), g(l)).
4. Compression is a representation on a unital \*-subalgebra exactly when that subalgebra reduces P, since C(a^\\* a) - C(a)^\\* C(a) = P a^\\* (1 - P) a P. Here multiplication by a(x) reduces the light pair exactly when a(x) = W(x) b W(x)^dagger with b constant; its restriction is one diagonal M_n(C), commuting with V_F, with vanishing finite scalar one-forms.

*Scope (correction).* The link image holds locally in spacetime. Globally the unitary link must admit a path from the identity in the chosen trivialization: for M_4 = S^1 x S^3, n = 1 and Phi = lambda e^{i theta}, every globally smooth real A_5 gives zero winding, so this Phi is not attained. No real structure, real gauge-group prescription or Standard Model representation follows from the construction.

**Proof.** Lemma 14, Theorem 3; the proof is there. Gauge removal and the profile equations give V_F; the linear independence of w_L and w_R gives the range and the surjectivity on sheet connections.

**What it leaves open.** The radial direction of the link is absent here: in the commuting-bulk mixed model A_5 supplies only the unitary link, so there is no radial Higgs kinetic term to match, and boundary Yukawa matrices promoted to fields would need their own continuum dynamics (14_normalizations_not_fixed.md).
