# Inner fluctuations of the two-point data without order one

Step 1 of the next steps in [the background note](../current_framework.md), for STRATEGY T0b. Proved by Claude Opus 5.5 without Astra or Fable; every identity checked with numpy on random data (section "Numerical check"). Refereed by Terra 6.1 (gpt-6.1-terra, effort max, 3 Nov 2026; [report](../reviews/2026-11-03_terra_check_nogo_19.md)): Theorem 19.1 and the comparison with arXiv:1304.7583 are correct; Corollary 19.2 item 3 and the Wilson phase after the table were wrong as first written, and these and the amendments are incorporated below.

**Outcome.** The truncated two-point data satisfy order zero and fail order one, for each natural real structure. So the inner fluctuations of Chamseddine-Connes-van Suijlekom (arXiv:1304.7583), with their quadratic term, are the applicable ones. The result factorizes. With the inherited pointwise real structure, the fluctuated operator is m |Phi|^2 sigma_1: a real gauge-neutral radial field, with trivial gauge group. With the reflection real structure, which has the KO-6 signs, the link is m Phi^2: all of C is reached, and the gauge group U(1) acts with charge 2. Along a gauge orbit the quadratic term keeps the modulus of the link fixed. This parallels the fixed singular value of the covariant projection of lemma 14, which the fixed compression of lemma 13 lacks. So the first-order failure of Counterexample 08.4 points to the framework of arXiv:1304.7583 for these truncated data.

## Setting

Let A = C + C act diagonally on H = C^2, with D = m sigma_1, m > 0, and gamma = sigma_3. For a real structure J = C K put x-hat = J x J^-1. We use two choices.

- **J_0 = K** (or sigma_3 K, the other sign of lemma 08), inherited from pointwise reality on the interval. Then x-hat = conj(x) on A, and J_0 commutes with gamma.
- **J_r = sigma_1 K**, inherited from the reflection real structure sigma_1 R_l K of Counterexample 08.4. Then diag(x_1, x_2)-hat = diag(conj(x_2), conj(x_1)), J_r^2 = 1, J_r D = D J_r and J_r gamma = -gamma J_r: the KO-6 signs.

Both satisfy order zero, since A is commutative and x-hat lies in A. Both fail order one: for e = diag(1, 0), [[D, e], e-hat] = m sigma_1 for J_0 and -m sigma_1 for J_r.

For a universal one-form A = sum_j a_j delta(b_j), the fluctuated operator of arXiv:1304.7583 is

    D' = D + A_(1) + A~_(1) + A_(2),
    A_(1) = sum a_j [D, b_j],   A~_(1) = sum a_j-hat [D, b_j-hat] = eps J A_(1) J^-1,   A_(2) = sum a_j-hat [A_(1), b_j-hat],

with J D J^-1 = eps D. Gauge transformations are U = u J u J^-1 for unitary u in A, and U D(A) U\* = D(gamma_u(A)), where gamma_u(A) = u delta(u\*) + u A u\*.

Put

    phi_1 = sum a_{j,1} (b_{j,2} - b_{j,1}),     phi_2 = sum a_{j,2} (b_{j,1} - b_{j,2}),

so that A_(1) = m [[0, phi_1], [phi_2, 0]], which is self-adjoint exactly when phi_2 = conj(phi_1). The pair (phi_1, phi_2) takes every value in C^2, as a = diag(x, y) and b = diag(0, 1) show.

## The fluctuated operator

**Theorem 19.1.** For every universal one-form,

    J_0:   D' = m [[0, |1 + phi_1|^2], [|1 + phi_2|^2, 0]],
    J_r:   D' = m [[0, (1 + phi_1)(1 + conj(phi_2))], [(1 + phi_2)(1 + conj(phi_1)), 0]].

For a self-adjoint form, with Phi = 1 + phi_1,

    J_0:   D' = m |Phi|^2 sigma_1,          J_r:   D' = m [[0, Phi^2], [conj(Phi)^2, 0]].

*Proof.* For diagonal b, [X, b] for off-diagonal X = [[0, x], [y, 0]] is [[0, x (b_2 - b_1)], [y (b_1 - b_2), 0]].

For J_0: a-hat and b-hat are the conjugates. Then A~_(1) = m [[0, conj(phi_1)], [conj(phi_2), 0]], and the first row of A_(2) is m phi_1 sum conj(a_{j,1}) (conj(b_{j,2}) - conj(b_{j,1})) = m phi_1 conj(phi_1); the second row is m phi_2 conj(phi_2). So the (1,2) entry of D' is m (1 + phi_1 + conj(phi_1) + |phi_1|^2) = m |1 + phi_1|^2, and likewise (2,1).

For J_r: a-hat = diag(conj(a_2), conj(a_1)) and b-hat = diag(conj(b_2), conj(b_1)). Then A~_(1) = sigma_1 conj(A_(1)) sigma_1 = m [[0, conj(phi_2)], [conj(phi_1), 0]], and the first row of A_(2) is m phi_1 sum conj(a_{j,2}) (conj(b_{j,1}) - conj(b_{j,2})) = m phi_1 conj(phi_2), and the second is m phi_2 conj(phi_1). This gives the stated factorization. ∎

**Corollary 19.2 (gauge action and image).** Let u = diag(e^{i alpha}, e^{i beta}) and psi = alpha - beta. Under gamma_u, Phi -> e^{i psi} Phi.

1. For J_0: U = 1. The image of the self-adjoint forms is {t sigma_1 : t >= 0}, so the link is real, and t is a gauge-neutral field. The value t = 0 is reached at Phi = 0.
2. For J_r: U = diag(e^{i psi}, e^{-i psi}), and the link m Phi^2 goes to e^{2 i psi} m Phi^2. So U(1) acts with charge 2 in the variable of the link, and the image is all of C, with Phi -> Phi^2 two-to-one away from 0. The image statement is pointwise: a globally prescribed smooth link need not have a global smooth square root.
3. The gauge orbit of the zero form has Phi = e^{i psi}. It gives D' = D for J_0, whose operator orbit is the single point D, and link m e^{2 i psi} for J_r. Without A_(2), the link is m (2 cos psi - 1) for J_0, of modulus m (1 - psi^2 + O(psi^4)), although U = 1; and m (2 e^{i psi} - 1) for J_r, of modulus m (5 - 4 cos psi)^{1/2} = m (1 + psi^2 + O(psi^4)), off the orbit of D.

*Proof.* gamma_u(0) has phi_1 = u_1 conj(u_2) - 1 = e^{i psi} - 1. The rest is direct. ∎

Item 3 shows, in the smallest example, why the quadratic term is needed: it restores gauge covariance.

## Comparison with the parent

**Proposition 19.3.** Consider the chiral interval at M = 0, with m = pi/(2l), and the links of lemmas 13 and 14.

1. *With no real structure*, the finite fluctuation is m (1 + phi_1), all of C, while the fixed compression of a gauge field gives only the line m + i B (Proposition 13.2).
2. *With pointwise reality*, the parent has no scalar fluctuation at all: the algebra C(I) is commutative with J f J^-1 = conj(f), it satisfies order one, and A + J A J^-1 = 0 for a scalar one-form. The truncated data do have a fluctuation, the neutral radial field t. So the finite fluctuation has a gauge-neutral radial parameter, while the specified pointwise-real parent has no surviving self-adjoint scalar inner fluctuation. This does not establish a dynamical scalar field or its action, and it says nothing about parent fields in other models. Compression is not multiplicative, so there is no canonical identification of finite potentials with parent potentials.
3. *With the reflection real structure*, the parent satisfies order one, since J_r f J_r^-1 = conj(f) composed with the reflection commutes with [D, g]. One finds J_r D_{A_5} J_r^-1 = D_{A_5 o R}, with R the reflection, so that the symmetrized field A_5 + A_5 o R survives, and the fixed compression gives m + i B^s with B^s = 2 B, because the weight sin(pi x/l) is even about l/2. The modulus along a pure-gauge field behaves as follows.

| object | modulus of the link along a gauge orbit |
|---|---|
| covariant projection (lemma 14, Theorem 3) | constant: lambda W_l^\* has fixed singular value |
| finite data with A_(2) (Corollary 19.2) | constant: m |
| fixed compression (Proposition 13.2), with B the integral of the symmetrized coefficient for J_r | (m^2 + B^2)^{1/2}, growing at second order along paths where B has a linear term |
| finite data with J_r, linear terms only | m (5 - 4 cos psi)^{1/2}, growing at second order |

*Proof.* Item 1 is lemma 13. For item 2, a represented self-adjoint parent one-form is E h(x) with h = i a and a real, and K (i E a) K^-1 = -i E a, so the real fluctuation cancels. An individual commutator need not change sign, since K [D, x] K^-1 = [D, x] = E: self-adjointness is the step that matters. For item 3, K changes the sign of i A_5, the reflection changes the sign of the derivative and composes A_5 with R, and sigma_1 E sigma_1 = -E for E = [[0, 1], [-1, 0]]. The table collects Theorem 3 of lemma 14, Corollary 19.2 and Proposition 13.2. ∎

The table states a parallel and no identification. The variables differ: for constant unsymmetrized A_5 = a, the transported link is m e^{i a l} = m + i (pi a/2) + O(a^2), with Wilson phase a l, against m + i (2 a/pi) in the compression. For the reflection-real fluctuation from the same a, these become m e^{2 i a l} and m + i (4 a/pi). The phase of a link depends on the frame, while its modulus does not. In the parent, the covariance defect is repaired by moving the projection, and in the finite data by the quadratic term.

## Reading

Spectral compression can break order one, and it can also break order zero: on the circle with J = K, compression to the zero mode preserves both, while compression to the modes -1, 0, 1 sends e^{ix} to a truncated shift S, with [S, S\*] != 0, so that order zero fails. Where a represented algebra, a preserved real structure and order zero hold, as here, the framework of arXiv:1304.7583 applies to the truncated data as they stand. So the first-order failure of Counterexample 08.4 has an escape, and this calculation is a first use of it. Two points remain open. Whether the parallel in the table extends to an exact statement for a fluctuated parent and its truncation. And whether the neutral radial parameter t is related to the singlet of the grand-symmetry model (Devastato-Lizzi-Martinetti, where sigma comes from a Majorana-operator fluctuation in a larger algebra). This is an analogy only: in arXiv:1304.7583 the quadratic term does not generate new scalar fields, and here too it depends on the same two parameters. An identification would need a map of algebras, representations, fields and gauge actions.

## Numerical check

Python (numpy), run on 3 Nov 2026 in a temporary directory, not kept. On random complex a_j, b_j, with m = 1.3: the three real structures have the stated signs; the formulas of Theorem 19.1 hold to about 10^-15, without assuming self-adjointness; D(gamma_u(0)) = U D U\* holds to 10^-16 for both real structures, and fails by 4.5 for the sample when A_(2) is dropped; U D(A) U\* = D(gamma_u(A)) holds for a general form; the values of [[D, e], e-hat] are as stated.
