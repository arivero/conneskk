# On the disc bundle with a connection metric, the doubled Callias-type operator built from T_M = D_X^E + i Phi_M, with a local chirality condition at the boundary, is self-adjoint, elliptic and odd with compact resolvent, every smooth scalar function preserves its domain, and no condition enters at the zero section

**Status.** Theorem (Theorem 28.9). Proved by Astra 6, job 28 (Theorem 2), using Bär-Ballmann, Corollary 4.18. Ledger row `l28_operator`. Cited in the section on the local operator of paper/joint_limit_note.tex ("\supp{28}, Theorem 28.9").

**Setting.** X as in 28_prescribed_windows_m2h_m4c.md, with the connection metric g = dr^2 + h(r)^2 pi\* g_{S^4} + rho(r)^2 g_{S^2}, h smooth, even and positive at 0, rho odd and smooth with rho(r) = r + O(r^3), and a product near r = l. E = S^3(S), with S = G x_K (1, 2) and J the spin-3/2 action; Phi_M = M b(|v|^2) v . J with b smooth and positive; T_M = D_X^E + i Phi_M, D-hat_M = [[0, T_M\*], [T_M, 0]] and Gamma-hat = diag(1, -1). At r = l, Z = -i c(dr), chi = Gamma-hat Z, and the condition is chi psi = -psi.

**Statement.**

1. D-hat_M on this H^1 domain is self-adjoint, elliptic and odd for Gamma-hat, with compact resolvent.
2. Every smooth scalar function on X preserves the domain.
3. No boundary condition enters at the zero section: once the outer condition is fixed, removing S^4 creates no further self-adjoint extension.

*Scope.* By Proposition 28.1, O(k) for k != 0 does not extend over X, while E restricts on CP^3 to O(3) (+) O(1) (+) O(-1) (+) O(-3), the summand O(3) giving the Dolbeault operator on O(1) of Example 16.9, and the hedgehog Phi(v) = phi(|v|) (v-hat . T) is smooth and G-equivariant with zero set exactly S^4. The wall condition reads u_even(l) = 0 for T and v_odd(l) = 0 for T\*. Charge conjugation C = C_7 (x) j_E commutes with T_M as a differential expression and exchanges the two local wall conditions, so it does not preserve the chosen domain (Proposition 28.18).

**Proof.** Lemma 28, Theorem 28.9; the proof is there, with the local elliptic boundary condition of Bär-Ballmann, Corollary 4.18.

**What it leaves open.** The spectrum of D-hat_M at large M: the four core states (28_four_core_states.md), the boundary mode (28_boundary_fibre_part.md), and the isolated eight-state window, Conjecture 28.6 (28_conjecture_window.md).
