# The rank-one Yukawa block with the eigenline condition is the Clifford action of a Higgs vector times the projector on the connector's line: one point of the twistor fibre carries the Majorana block and the top's right-handed states

**Status.** Proposition 50.1. Proved by Claude Fable 5.1 on 5 November 2026 by hand, from lemmas 20, 42 and 46; the isometry n -> c(n) w, the spectrum and the two halves of the block, the complex structure J_w and the action of the circle were checked with numpy (script not kept). Referee pending (Claude Opus 5.5). Ledger row `l50_top_block`. Not yet in a paper.

**Setting.** The quaternionic sheet W = H^2 with axis p, the lines L_p and L_p^perp, K_p = Sp(1)_a x Sp(1)_b, the Clifford action c(n) = n^a Gamma_a for n in T_p S^4; the connector of Theorem 20.2 on the lines Cw in L_p and Cv in V, with centralizer A_SM = {(lambda, q, m)}, lambda acting on w and conj(lambda) on jw; the dictionary of Chamseddine, Connes and Marcolli, lambda on nu_R and u_R.

**Statement.** Let X be a Yukawa block of a doublet with masses m_- = 0 < m_+ = m, X = m lambda mu^* (Proposition 46.2 (2)).

1. n -> c(n) w is a real isometry of T_p S^4 onto L_p^perp; so X = c(h) P_mu for a unique h in T_p S^4 with |h| = m, the Hermitian block is Y = {c(h), P_mu}, with j-linear half c(h)/2 and j-antilinear half {c(h), P_mu - P_{j mu}}/2, both of operator norm m/2.
2. The eigenline condition of Corollary 46.4 (Cw an eigenline of X^* X) holds exactly when C mu = Cw or C mu = C jw, exactly when the block and the connector leave a common circle unbroken.
3. C mu = Cw gives the mass to the up-type right-handed states nu_R and u_R and C mu = C jw to e_R and d_R; Proposition 21.1 (in the scope of lemma 18) keeps 5/8 and 8/3 in the first case only. Then X = c(h) P_w: the point [w] of the twistor fibre over p carries the Majorana block (on P_w Hom(V, W) P_v) and the massive right-handed states (on P_w Hom(V, W)), and the massive left-handed line is C c(h) w.
4. The joint stabilizer is the circle U(1)_h with b_theta = e^{i theta} on w and a_theta = e^{i theta} on c(h) w; c(n) commutes with it; the complex structure J_w on T_p S^4, c(J_w n') w = i c(n') w, is orthogonal, and U(1)_b acts on (T_p S^4, J_w) by scalars: it is the complex Higgs doublet (2)_{+-1} of Proposition 42.2, with h a vector of it. The blocks commuting with U(1)_h on both chiralities are c(n)(y_1 P_w + y_2 P_{jw}), the diagonal blocks of Proposition 49.3; with three generations, c(n)(Y_u (x) P_w + Y_d (x) P_{jw}), and the top-only family is Y_u = m_t P_g, Y_d = 0.

*Scope.* Finite linear algebra; the axis, the connector and the block are inputs; one generation except in item 4; the up-type assignment rests on Proposition 21.1.

**Proof.** Lemma 50, Proposition 50.1: the anticommutator of c(n) and c(n') is 2 n . n' and their commutator is anti-Hermitian, which gives the isometry; X^* X = m^2 P_mu has eigenlines C mu and C j mu; the stabilizer computation of Corollary 46.4 for a rank-one block; the action t -> t b^{-1} of Proposition 42.2 on Hom_H(L_p, L_p^perp).

**What it leaves open.** A parent in which h, [w] and v are fields; the three-generation order-one defect of the split block is the same computation and is stated in lemma 50 without a separate proof.
