# Toeplitz compression of the twistor coordinates on CP^3

Refereed by Terra 6.1 (gpt-6.1-terra, effort max, 3 Nov 2026): the three identities are correct; the displayed fourth moment had an index error (pairing two barred indices), corrected below. This answers Part A of parked job 04 (research_note 4 and canonical 4, which labelled the result "Checked calculation", although no script computes it). Proved by Claude Opus 5.5 without Astra or Fable; Monte Carlo check with 2 x 10^6 samples.

Let Gamma_1, ..., Gamma_5 be Hermitian generators of Cl(5) on C^4, so that Gamma_a Gamma_b + Gamma_b Gamma_a = 2 delta_ab. For [w] in CP^3 put x_a([w]) = w* Gamma_a w / w* w, and define the level-one Berezin-Toeplitz compression

    Q(f) = 4 int_{CP^3} f([w]) P_w dmu([w]),

where P_w is the rank-one projector onto w and mu is the Fubini-Study probability measure, normalized so that Q(1) = I.

**Proposition 10.1.**

    Q(x_a) = Gamma_a / 5,   Q(x_a)^2 = I/25,   Q(x_a^2) = I/5.

In particular Q is not multiplicative.

*Proof.* Lift to w uniform on S^7 in C^4. For n = 4, writing w = g/abs(g) with g a standard complex Gaussian (abs(g) and g/abs(g) are independent), Wick's theorem gives

    E[w_j w_k conj(w_i) conj(w_l)] = (delta_ij delta_kl + delta_jl delta_ki) / (n(n+1)),

and the sixth moment is the sum over the six matchings of unbarred with barred indices, divided by n(n+1)(n+2) = 120.

First, Q(x_a)_kl = 4 sum_ij (Gamma_a)_ij E[conj(w_i) w_j w_k conj(w_l)] = (4/20)(tr(Gamma_a) delta_kl + (Gamma_a)_kl) = Gamma_a/5, because tr Gamma_a = 0.

Second, Q(x_a^2)_kl = (4/120) sum over matchings of {j, q, k} with {i, p, l} of the corresponding contraction of (Gamma_a)_ij (Gamma_a)_pq. Matchings that contain tr Gamma_a vanish. The remaining three give tr(Gamma_a^2) delta_kl = 4 delta_kl, (Gamma_a^2)_kl = delta_kl and (Gamma_a^2)_kl = delta_kl. The total is 6 delta_kl, so Q(x_a^2) = (24/120) I = I/5.

The middle identity follows from Gamma_a^2 = I. ∎

*Numerical check.* With Gamma_a built as Pauli tensor products (Clifford relations verified), the Monte Carlo deviations are max abs(Q(x_a) - Gamma_a/5) <= 0.0009 and max abs(Q(x_a^2) - I/5) <= 0.0006, at a sampling error of about 10^-3.
