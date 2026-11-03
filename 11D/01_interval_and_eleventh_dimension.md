# The interval of H as an eleventh dimension

Part of the 11D line of research ([README](README.md)). Proposition 1.1 and Proposition 1.4 are proved here; Proposal 1.3 is a dictionary to be tested. Attempted by Claude (Anthropic), 3 Nov 2026; checks in Python with exact fractions, [checks_11d.py](checks_11d.py), section F. Referee pending.

## Setting

Hypothesis H of [STRATEGY.md](../STRATEGY.md) reads the two sheets of the finite geometry as the minimal truncation of an interval I_l with opposite chiral boundary conditions, with l ~ 1/M_W. Its three regimes carry the labels 9, 10 and 11. These are KO labels. At the 11 endpoint (v -> 0, l -> infinity) the heat dimension is 4 + 1 = 5, since the finite factor F keeps heat dimension 0 for every v (canonical §2.1). To read 11 as a metric dimension, the KO-6 factor must itself be resolved into a six-dimensional space, which gives the count

    11 = 4 (spacetime) + 1 (the interval) + 6 (a space resolving F).

The files of this folder take the six-dimensional space to be B_6 = CP^2 x S^2, the base of Witten's spaces ([02](02_witten_spaces_hypercharge_quotient.md)), and study two ways of completing 4 + 6 to eleven dimensions ([03](03_branes_hypercharge_and_the_84.md)). This file treats the "1".

## Proposition 1.1 (the chiral interval is the antiperiodic circle)

**Statement.** Let D_l act on H_l = L^2([0, l], C^2) as in lemma 05, eq. (8): D_l(L, R) = (R', -L'), with R(0) = 0 and L(l) = 0, grading Gamma = diag(1, -1) and the scalar functions C^infinity([0, l]). Let S_R be the circle of length 2l, that is of radius R = l/pi, with coordinate x in [-l, l] and antiperiodic functions u(x + 2l) = -u(x). The map

    (W(L, R))(x) = (L(|x|) + i sgn(x) R(|x|)) / sqrt 2

is a unitary H_l -> L^2_antiperiodic(S_R) with

1. W D_l W^* = -i d/dx on its antiperiodic domain;
2. W Gamma W^* = P, the reflection (Pu)(x) = u(-x);
3. W f W^* = multiplication by f(|x|), so the algebra goes to the reflection-even functions;
4. the walls x = 0 and x = l go to the two fixed points x = 0 and x = l ~ -l of the reflection.

Hence spec D_l = {(k + 1/2)/R : k in Z}, each eigenvalue simple, which is (9) of lemma 05, and the Connes-Lott mass of the minimal truncation is m = pi/(2l) = 1/(2R).

**Proof.** The inverse map is L(x) = (u(x) + u(-x))/sqrt 2, R(x) = (u(x) - u(-x))/(i sqrt 2) for x in [0, l], so W is a bijection, and |u(x)|^2 + |u(-x)|^2 = |L(x)|^2 + |R(x)|^2 gives unitarity. For H^1 data, u is continuous at 0 exactly when R(0) = 0, and u(l) + u(-l) = sqrt 2 L(l), so the antiperiodic matching u(-l) = -u(l) is the condition L(l) = 0. On x > 0, -i (L + iR)' = R' + i(-L'), the image of (R', -L') = D_l(L, R). On x < 0, u(x) = (L(-x) - i R(-x))/sqrt 2 and -i u'(x) = (R'(-x) - i(-L'(-x)))/sqrt 2, which is again the image of (R', -L'). Gamma(L, R) = (L, -R) maps to L(|x|) - i sgn(x) R(|x|) = u(-x). Items 3 and 4 are immediate. The antiperiodic spectrum of -i d/dx on a circle of length 2l is pi(2k + 1)/(2l) = (k + 1/2)/R. ∎

So the two sheets of H are the two fixed points of a reflection on a circle whose spinors are antiperiodic, and the grading of the finite geometry is that reflection. The tower that comes down as v -> 0 is the half-integer momentum tower (k + 1/2)/R; as v -> infinity it goes up as a whole, with no zero mode. This is the content of lemma 05, Part 4, in circle language.

## Proposal 1.3 (the circle of H as the M-theory circle)

Take the circle of Proposition 1.1 to be the eleventh direction of M-theory over a ten-dimensional type IIA background, so R = g_s l_s. Then:

| H | circle of Proposition 1.1 | M-theory / string side (recalled, to check) |
|---|---|---|
| v -> 0, label 11, tower comes down | R -> infinity | strong coupling: D0-brane bound states of mass n/(g_s l_s) become light and are the momentum modes of the eleventh dimension (Witten 1995) |
| v finite, label 10, two sheets | R finite, fixed points of a reflection | M-theory on an interval with two walls (Hořava-Witten); here with walls of opposite chirality |
| v -> infinity, label 9, sheets merge | R -> 0, antiperiodic spinors | a circle with antiperiodic fermions shrinking: bulk fermions get masses >= 1/(2R); compare type 0 strings, which have no bulk spacetime fermions (Bergman-Gaberdiel 1999), and the walls of opposite chirality of Fabinger-Hořava 2000 |

Each row matches a statement already in the corpus: the 11 endpoint needs the tower (canonical §2.1, lemma 05 Part 4), and at the 9 endpoint the bare interval keeps no light fermion, so light fermions must come from another sector (STRATEGY, T1 and T3). On the string side the same happens: the light fermions of a type 0 theory come from open strings on branes. The proposal therefore places the light fermions of the 9 endpoint on branes or walls, and [03](03_branes_hypercharge_and_the_84.md) develops a brane origin for them.

What would test it: the half-integer tower must be the momentum tower of the eleventh dimension, so the W, Z and top, which H places at the tower scale (lemmas 22 and 25), should be the first momentum states; and M_W ~ 1/(2R) = 1/(2 g_s l_s) relates the Fermi scale to the string coupling.

## Proposition 1.4 (the one-loop energy at the vacuum angle attracts the walls)

**Statement.** Under the hypotheses of Theorem 9 of [lemma 24](../lemmas/24_commutative_parent.md) (flat interval, zero bulk masses, frequency-one fermions, the stated gauge towers and multiplicities, no wall potential), the minimum of the one-loop potential over the angle is at theta = pi/2, with value

    V_min(l) = - 93 zeta(5) n_f / (512 pi^2 l^4),

so dV_min/dl = 4 |V_min| / l > 0 at fixed couplings and n_f > 0.

**Proof.** In the notation of lemma 24, V = 𝒱/(8 pi^2 l^4) and 𝒱(1) = -n_f F(1), since the gauge terms vanish at t = 1. With 1 + 1/sinh^2 x = coth^2 x and log coth x = 2 sum over odd k of e^{-2kx}/k,

    F(1) = 2 int_0^infinity x^3 log coth x dx = 4 sum_{k odd} (1/k) 3!/(2k)^4 = (3/2) sum_{k odd} k^{-5} = (3/2)(31/32) zeta(5) = 93 zeta(5)/64.

Python (series and quadrature agree to 10^-6): F(1) = 1.506786. ∎

**Reading.** The energy is lowest at small l: the two walls attract, which pushes the family toward the 9 label (heavy W, Z) and away from 11. This is the sign found for a Casimir force between walls of opposite chirality (Fabinger and Hořava, recalled). The scope is the one-loop flat-interval action of lemma 24: gravity, a radion potential, wall tensions, fluxes and the bulk masses of lemma 26 are absent. Reaching or holding the 11 endpoint needs a repulsive contribution of at least the size of this term; Proposition 1.4 gives its target, 93 zeta(5) n_f / (512 pi^2 l^4).

## What remains open here

- Whether the identification of Proposal 1.3 survives the gauge sector: lemmas 13, 14 and 25 tie M_W to the tower with model-dependent coefficients, which here become a relation between M_W, g_s and l_s.
- A fermion with both a fibre momentum and a base twist: on a nontrivial circle bundle (Witten spaces, file 02) the antiperiodic shift corresponds to a spin structure whose fibre circle does not lift the circle action. Which Witten spaces carry such a structure is an open item for the next job.
