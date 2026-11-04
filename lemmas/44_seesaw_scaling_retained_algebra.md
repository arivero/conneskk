# The retained algebra along the seesaw scaling

For STRATEGY T2c (CORPUS_SALVAGE items 3 and 7), following [lemma 20](20_connecting_operator.md) (Theorem 20.2: the centralizer of the Majorana block is C + H + M_3(C)), [lemma 06](06_vectorlike_odd_factorization.md) (the representation of Result 5 and the criterion of Lemma 4) and the multiscale collapse of the corpus (historical/corpus/solidification.md, section 2: for F_t = tT + t^alpha V + S the bounded-commutator algebra is the commutant of T and of V). Written by Claude Fable 5.1 on 4 November 2026, by hand. Referee pending.

**Outcome.** The heavy Majorana block T_R selects the Standard Model algebra out of Pati-Salam (Theorem 20.2). A neutrino Dirac block V_nu that grows with the Majorana scale, as it must for a seesaw mass that stays finite (V_nu ~ t^{1/2}), is a second heavy operator, and the algebra retained by bounded commutators is its commutant inside C + H + M_3(C), which is C + M_3(C): the algebra of colour and electromagnetism, the same as after the heavy top. So the finite seesaw at fixed light mass is a limit in the broken algebra; the Standard Model algebra survives the heavy Majorana limit only with a bounded Dirac coupling, along which the light neutrino mass vanishes as 1/t. In nine dimensions the Majorana block cannot be a bulk mass (a single Majorana field in dimension 8k + 1 has no scalar mass term), so in the interval parent it is wall data, and the statement above is about the wall operator.

## Setting

One generation in the representation of lemma 06, Result 5, with H_p = (C^2 (x) F)_L + (C^2 (x) F)_R, F = C + C^3, the left action q (x) I_4 on p_L, Q_lambda (x) I_4 = diag(lambda, conj lambda) (x) I_4 on p_R, I_2 (x) diag(lambda, m) on the antiparticles, and J(p, pbar) = (K pbar, K p). The neutrino states are nu_L (p_L, upper weak component, lepton line), nu_R (p_R, upper component, lepton line) and their conjugates. Let

    T_R = |nu_R><J nu_R| + |J nu_R><nu_R|   (the Majorana block, rank two, J-real, odd),
    V_nu = y (|nu_L><nu_R| + |nu_R><nu_L|) + conjugate   (the neutrino Dirac block),

and S the remaining Yukawa blocks. The family of finite operators is D_t = t T_R + t^alpha V_nu + S with t -> infinity and 0 <= alpha < 1.

## Statements

**Proposition 44.1 (the retained algebra).** The algebra of a in A_PS = H_R + H_L + M_4(C) with sup_t ||[D_t, rho(a)]|| < infinity is

    A_PS cap {T_R}' cap {V_nu}'   for alpha > 0,   and   A_PS cap {T_R}' = C + H + M_3(C)   for alpha = 0.

For alpha > 0 it equals {(lambda, Q_lambda, m)} = C + M_3(C): the centralizer of the top block of lemma 06 and the commutant C_F of lemma 22 for the Standard Model data.

*Proof.* Boundedness of [t T_R + t^alpha V_nu + S, rho(a)] for all t forces [T_R, rho(a)] = 0 and, when alpha > 0, [V_nu, rho(a)] = 0 (compare the coefficients of t and t^alpha). The first commutant is C + H + M_3(C) by Theorem 20.2 (rank-one block, kappa != 0), realized as a = (lambda, q, m) acting by lambda on nu_R. For the second, rho(a) V_nu nu_R = y rho(a) nu_L = y (q_11 nu_L + q_21 e_L) and V_nu rho(a) nu_R = lambda y nu_L, so q_11 = lambda and q_21 = 0; for q in H, q = [[alpha', beta], [-conj beta, conj alpha']] gives q = diag(lambda, conj lambda) = Q_lambda. The conjugate states give the same condition. So a = (lambda, Q_lambda, m). ∎

**Proposition 44.2 (the light mass along the scaling).** On the neutral block spanned by nu_L and nu_R with their conjugates, the eigenvalues of t T_R + t^alpha V_nu are, per conjugation pair, the roots of lambda^2 - t lambda - t^{2 alpha} y^2 = 0 up to the sign convention of the block, so the light one is

    lambda_-(t) = - 2 t^{2 alpha} y^2 / (t + sqrt(t^2 + 4 t^{2 alpha} y^2)) ~ - y^2 t^{2 alpha - 1}.

It tends to zero for alpha < 1/2, to the finite value -y^2 for alpha = 1/2 (the seesaw mass, the Schur complement -V_nu T_R^{-1} V_nu of the corpus), and diverges for alpha > 1/2. The other Yukawa blocks S are bounded and move these values by O(1) relative corrections at fixed t.

*Proof.* The 2 x 2 block [[0, t^alpha y], [t^alpha y, t]] has the displayed characteristic polynomial; the cancellation-free form of the small root is the corpus formula with m = t^alpha y (research_checks, section 2.6), and the three regimes are read off. ∎

**Corollary 44.3 (the seesaw and the algebra).** A finite light neutrino mass at the heavy Majorana limit (alpha = 1/2) and the Standard Model algebra are obtained in two different limits of the same family: the algebra C + H + M_3(C) needs alpha = 0, along which the light mass is -y^2/t -> 0, and the finite mass needs alpha = 1/2, along which the retained algebra is C + M_3(C). The two coincide only at finite t, where no limit has been taken and all commutators are bounded by t^{1/2} y; physically that bound is the Dirac neutrino mass, of the order of the electroweak scale, so the statement concerns the strict limit and says that the seesaw limit at fixed light mass is a limit of the broken theory, in the sense of lemma 06's Proposition 5.

**Remark 44.4 (nine dimensions).** In dimension 8k + 1, hence in nine, a single Majorana field has a symmetric charge-conjugation bilinear and no Lorentz-invariant scalar mass; a Majorana mass needs an even number of real spinors or a background that breaks the nine-dimensional symmetry (Alvarez-Gaumé and Witten, Nucl. Phys. B 234 (1984) 269, section 4, as recorded in the corpus, connes_kk_research_state section 5.2). In the interval parent of lemma 22 the Majorana block is therefore not a bulk mass: it is part of the wall data X = tan(l D_F), as lemma 20, item 1, already reads it (the connector is the Majorana block). The scaling of Proposition 44.1 is then a scaling of the wall coupling, and Theorem 22.1 keeps the light pair in the window as long as l |D_F| < pi/2, which the growing Majorana entry violates first: the seesaw scale is the first datum that leaves the window.

## Scope

One generation; the representation of lemma 06; the bounded-commutator criterion of the corpus for the retained algebra, which is the criterion behind Theorem 20.2 and lemma 06; the strict limit t -> infinity. Three generations replace y by the Dirac matrix Y_nu and the commutant condition by q_11 = lambda, q_21 = 0 on each generation, with the same conclusion as long as Y_nu has no zero column. The lemma does not decide the sign s (lemma 06, Lemma 4, does: a generic Majorana block selects s = +1); it says which algebra the seesaw leaves. Direction: a seesaw that keeps the Standard Model algebra needs the Dirac coupling bounded and the light mass generated at a lower scale, or a second heavy neutral state pairing with nu_L, which lemma 06 lists as the escape from the KO-7-only conclusion.
