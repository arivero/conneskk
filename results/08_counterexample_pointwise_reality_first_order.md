# Chiral boundary conditions alone do not force KO-dimension 0, and the two-point compression with its full diagonal algebra and inherited real structure fails first order

**Status.** Counterexample (Result 4 of lemma 08). Proved by Astra 6 (job 08); checked by Claude Opus 5.5 by hand and by Terra 6.1 by hand (historical/reviews/2026-11-03_terra_check_08_13_14.md). Ledger row `l08_ce_reality`; it amends `l07_real`. Cited after Theorem A of paper/towerless_intervals.tex ("\supp{08}") and in item 4 of Theorem D.

**Setting.** The chiral interval of lemma 07: D_I = E d/dx, R(0) = 0, L(l) = 0, Gamma_I = diag(1, -1), R_l psi(x) = psi(l - x). Its minimal truncation D_2 = m sigma_1, m = pi/(2l) > 0, Gamma_2 = sigma_3, with the compressed algebra A_2 = {diag(a, b)} (compression sends 1 to 1 and cos(pi x/l) to sigma_3/2).

**Statement.**

1. Without pointwise reality, the antiunitary J_ref = sigma K with sigma = sigma_1 R_l preserves the domain and has the standard KO-6 signs: J_ref^2 = 1, J_ref D_I = D_I J_ref, J_ref Gamma_I = -Gamma_I J_ref. It implements f -> conj(f)(l - .), the opposite action is still scalar multiplication, and order zero and first order hold.
2. With the inherited J_2 = diag(alpha, beta) K and e = diag(1, 0), one has e° = e and [[D_2, e], e°] = D_2 != 0, so the two-point data with the full diagonal algebra are not a real spectral triple satisfying first order when m > 0.
3. sigma_1 e sigma_1 = 1 - e, so the reflection is not an A_2-module map.

*Scope.* Item 1 violates exactly the pointwise reality hypothesis of Lemma 07.1. Items 2 and 3 concern the full compressed diagonal algebra. Restricting the interval algebra to scalar constants makes the compressed interval a real triple and its reflection algebra-linear; lemma 08 adopts that restriction for its products as an additional assumption about the collapsed model.

**Proof.** Lemma 08, Result 4; the proof is there, by direct computation.

**What it leaves open.** The first-order failure has two escapes developed later: the inner fluctuations without order one of arXiv:1304.7583, which apply to these data as they stand (lemma 19; 19_fluctuations_two_point_data.md), and the doubled parent, where [[D_F, e], e°] = 0 at the price of doubling (lemma 16; 16_coarse_correspondence_order_one.md).
