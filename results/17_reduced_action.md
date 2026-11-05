# The fermion action of M x F on its physical subspace equals (1/2) <jj psi, (D_M + gamma_5 d) psi> on an unconstrained spinor, and a paired Dirac sector gives one Dirac fermion of explicit mass for either sign s

**Status.** Theorem (Theorem 17.1), with Corollary 17.2. Proved by Claude Opus 5.5. Ledger rows `l17_action` (depending on `l08_reconcile`) and `l17_one_dirac`.

**Setting.** M a compact Riemannian spin 4-manifold with (D_M, J_M, gamma_5), J_M^2 = -1, J_M D_M = D_M J_M, J_M gamma_5 = gamma_5 J_M, gamma_5 D_M = -D_M gamma_5; F = (A_F, H_F, D_F, J_F, gamma_F) a finite real triple with the KO-6 signs; D = D_M (x) 1 + gamma_5 (x) D_F, J = J_M (x) J_F, Gamma = gamma_5 (x) gamma_F; the fermion action (1/2) <J xi, D xi> on Grassmann variables xi in H^+ = {Gamma = +1} (Chamseddine-Connes-Marcolli 2007). U an admissible involution of sign s (Theorem D), and on H_0 = {gamma_F = +1}, d = U D_F and j = U J_F, with j^2 = s and jd = s dj.

**Statement.**

1. (Theorem 17.1) R(phi (x) x) = phi_+ (x) x + phi_- (x) Ux is a unitary from L^2(S) (x) H_0 onto H^+, and <J R psi, D R psi'> = <jj psi, DD psi'> with DD = D_M (x) 1 + gamma_5 (x) d, jj = J_M (x) j for s = +1 and jj = gamma_5 J_M (x) j for s = -1, jj^2 = -s and jj DD = s DD jj. So the action is (1/2) <jj psi, DD psi> on an unconstrained Grassmann spinor psi.
2. DD^2 = D_M^2 (x) 1 + 1 (x) d^2, and if f(D^2/Lambda^2) is trace class, Tr f(D^2/Lambda^2) = 2 Tr f(DD^2/Lambda^2).
3. (Corollary 17.2) For H_0 = span(e_L, conj(e_R)), m > 0, and the two reductions (d_+, j_+) = (m I, sigma_1 K) and (d_-, j_-) = (diag(m, -m), [[0, 1], [-1, 0]] K) of lemma 06, the actions are S_+ = <J_M psi_2, (D_M + gamma_5 m) psi_1> and S_- = <gamma_5 J_M psi_2, (D_M + gamma_5 m) psi_1>, with S_-(psi_1, psi_2) = S_+(psi_1, gamma_5 psi_2).
4. With R_5 = exp(i pi gamma_5/4), R_5 (D_M + gamma_5 m) R_5 = D_M + i m, formally. So a paired sector gives the action of one Dirac fermion of explicit mass m for either s, up to an invertible change of Grassmann variables; at the classical level no anomaly or theta shift follows from changing s alone.

*Scope.* An unpaired reduction gives a Majorana-type action (1/2) <J_M psi, (D_M + gamma_5 m) psi>; the neutral sector of the strict light spectrum has this form with m = 0. "D = 9" is the formal KO-label 4 + 5, available only where an s = -1 involution exists, and the metric dimension of M x T is 4. The rotation R_5 is a formal chiral change of both independent variables; in a quantized theory its Jacobian must be included. Everything is at the level of the classical fermion operator.

**Proof.** Lemma 17, Theorem 17.1 and Corollary 17.2; the proofs are there. UU = 1 (x) U commutes with D, (1 + UU) R/sqrt(2) = 1 (x) r with r x = (x + Ux)/sqrt(2), so UU D R = R DD, and UU J R = R jj.

**What it leaves open.** Anomalies, the running of masses and confinement do not appear in these classical data (lemma 17, Caveat 1).
