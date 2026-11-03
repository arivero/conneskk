# The separate role of the top: removal identities and counting

Prompted by the observation that the top has a separate role, which matters more than the loss of an electroweak partner for b_L. Proposition 21.1 and the counts below are exact calculations by Claude Opus 5.5, in Python with exact fractions. The readings in the last section are proposals, and nothing there is derived. Referee pending.

**Outcome.** The spectral action detects the top: in the exact quadratic action of [lemma 18](18_heavy_limit_near_cutoff.md), among single charged species only an up-type quark can be removed while keeping both the neutral-current value cos^2 theta_NC = 5/8 and the ratio 8/3 of the photon and gluon coefficients. Removing it leaves 84 of the 96 states of the finite Hilbert space. Those 84 are the seed of an SO(30) whose adjoint contains the scalars counted in hadronic supersymmetry (hep-ph/0512065), and 84 is also the number of on-shell components of the three-form of eleven-dimensional supergravity.

## Removal identities

For a Dirac species with charges q_L, q_R in the coordinates (T_3, Y), equation (33) of lemma 18 gives a contribution to the neutral kinetic matrix K with weight e^{-x}. The off-diagonal charge is (q_L - q_R)/2 = (T_3/2)(1, -1), which is orthogonal to the photon direction (1, 1). So the combinations K_33 + K_3Y and K_YY + K_3Y depend on x only through the factor e^{-x} of each massive species, and cos^2 theta_NC = (K_YY + K_3Y)/(K_33 + 2 K_3Y + K_YY) is determined by the sums of T_3 Q and Y Q.

**Proposition 21.1.** Per species, with colour multiplicity, on the particle trace for the first two columns and with charge conjugates and both chiralities for the last two:

| species | sum T_3 Q | sum Y Q | Q^2 coefficient | colour coefficient |
|---|---|---|---|---|
| up-type quark | 1 | 5/3 | 16/3 | 2 |
| down-type quark | 1/2 | 1/6 | 4/3 | 2 |
| charged lepton | 1/2 | 3/2 | 4 | 0 |
| neutrino | 0 | 0 | 0 | 0 |
| three generations | 6 | 10 | 32 | 12 |

Hence the ratios of the whole, 5/3 and 8/3, are those of an up-type quark alone. As one species is removed, that is, as its mass tends to infinity at fixed cutoff in the setting of lemma 18:

| removed | cos^2 theta_NC | photon/gluon coefficient |
|---|---|---|
| up-type quark | 5/8 | 8/3 |
| down-type quark | 59/92 | 46/15 |
| charged lepton | 17/28 | 7/3 |

So among single charged species only an up-type quark preserves both values. For an up-type quark they hold at every x, as in Proposition 6 of lemma 18. Within one generation, the down-type quark and charged lepton together contribute exactly what the up-type quark contributes: (1, 5/3; 16/3, 2).

*Proof.* Arithmetic with the Standard Model charges, Y = Q - T_3. The last statement is direct addition. ∎

The scope is that of lemma 18: classical bosonic trace, with these definitions of the coefficients and of the angle. Other definitions of the weak angle do not stay at 5/8 (Proposition 6 there).

## The state count in the action

**Proposition 21.2.** With three generations and nu_R, dim H_F = 96 (Chamseddine-Connes-Marcolli). With only an up-type Dirac mass m and no Majorana mass, the constant-background density of lemma 18 has finite trace Tr exp(-V_0^2/Lambda^2) = 84 + 12 e^{-x} for the heat cutoff. So the coefficient of the vacuum density moves from 96 to 84 along the radial direction, with no finite stationary point (No-go theorem 9 and Proposition 11 of lemma 18, whose escapes apply).

*Proof.* The top block has 3 colours, 2 chiralities and charge conjugates, so 12 states, each with V_0^2 = m^2. ∎

This also gives the top-only family a place in the radial problem, as the endpoint of a descending direction. A radial direction giving other species masses descends further, so this is the endpoint for that direction only.

## SO(30)

Let the five quarks other than the top, in three colours, with their conjugates, form the vector 30 = (5, 3) + (5-bar, 3-bar) of SU(5) x SU(3) inside SO(30). The adjoint, of dimension 435, is

    Lambda^2(30) = (24, 8) + (24, 1) + (1, 8) + (1, 1) + (10, 6) + (15, 3-bar) + conjugates of the last two.

With Q = 2/3 for u, c and Q = -1/3 for d, s, b, the charges are:

| representation | charge: number |
|---|---|
| (15, 3-bar) | -2/3: 6;   +1/3: 6;   +4/3: 3 |
| (10, 6) | -2/3: 3;   +1/3: 6;   +4/3: 1 |
| (24, 1) + (1, 1) | +1: 6;   -1: 6;   0: 13 |

Three generations of scalar partners in a supersymmetric Standard Model with nu_R need, for antisquarks in the 3-bar, 6 of charge -2/3 and 6 of charge +1/3, and for sleptons 6 of charge +1, 6 of charge -1 and 12 neutral real states. So (15, 3-bar) and (24, 1) + (1, 1) contain exactly the charged counts. What is left over in them is three triplets of charge +4/3 and one neutral state. These counts are those of hep-ph/0512065, which also notes that the top is unable to form mesons or diquarks; what SO(30) adds is one group whose adjoint contains both families.

## The two families of 84

**Proposition 21.3.** Count four states per Dirac fermion and colour, and take Dirac neutrinos. Then

    96 = 84 + 12:   five quarks and all leptons (60 + 12 + 12), and the top (12);
    96 = 84 + 12:   all electrically charged fermions (72 + 12), and the neutrinos (12).

The two families of 84 overlap in 72 states, and each is the other with the top and the neutrinos exchanged. Without nu_R, the first family has 78 states and the second stays at 84. In eleven dimensions, the three-form C_3 has C(9, 3) = 84 on-shell components, and its dual C_6 has C(9, 6) = 84.

## Readings, as proposals

These are proposals to test, with no derivation behind them.

1. **Seiberg duality.** For SU(3) with five flavours, N_f = 5 lies in the conformal window 3 N_c/2 < N_f < 3 N_c, and the magnetic dual is SU(N_f - N_c) = SU(2) with five flavours and a meson of 25 components (standard facts about supersymmetric QCD, quoted from memory). The removal of the top is what gives N_f = 5, and SU(2) is the magnetic group there. Using this requires supersymmetry, for example an emergent one, which is not established here.
2. **Branes.** The first family of 84 could relate to C_3 or to an M2 or M5 brane, and the second family to the dual object. The exchange of the top and the neutrinos would then be the content of the duality on the Standard Model side. The counts match, while a fermionic 84 against a bosonic 84 needs an explanation: the pairing of item 1 is one candidate. The first family also needs Dirac neutrinos for its 84, and the second does not.
3. **Relation to the odd labels.** The removal of the top leaves the five quarks and the leptons, on which SU(3) x U(1)_em acts with b_L paired with b_R. So the loss of the electroweak partner of b_L has no role at the label 9, where SU(2) is absent.

## Numerical check

Python with exact fractions, run on 3 Nov 2026 in a temporary directory, not kept: all tables above, and the dimension 435 = 224 + 1 + 105 + 105 with 105 = 60 + 45 and 224 = 192 + 24 + 8.
