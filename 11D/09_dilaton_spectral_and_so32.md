# The type I' dilaton as a spectral function, the SO(32) of the EPJC paper, and two more dualities

Part of the 11D line of research ([README](README.md), [PLAN](PLAN.md), task C). Attempted by Claude (Anthropic), 4 Nov 2026, after the steer of the same day (the coincident-brane route is overused; the type I' dilaton and the colour-flavour idea are worth pursuing; compare with the SO(32) of the EPJC paper). Proposition 9.1 is proved from the recalled type I' slope rule; the comparison of section 1 is read from the arXiv text of the paper through a summarizing fetch; the rest are proposals. Referee pending.

## 1. The SO(32) of A. Rivero, Eur. Phys. J. C 84 (2024) 1058 (arXiv:2407.05397)

That paper uses the adjoint of SO(32) to classify the scalars of a supersymmetric Standard Model with three generations, as composites: pairs of quarks as colour triplets and quark-antiquark pairs as singlets and octets, with three extra scalars of charge +4/3. Its pattern is SO(2n) ⊃ SO(n_1) x SU(n_2) x SU(3) x U(1) with 2n = n_1 + 6 n_2, which for SO(32) and n_2 = 5 gives SO(2) x SU(5) x SU(3) x U(1): the 30 = 6 n_2 are the five light quarks u, c, d, s, b ("turtles") in three colours with conjugates, and the top is the non-participating "elephant". Its explicit route also passes through SO(32) ⊃ SU(16) x U(1), with 496 = 1 + 120 + 120bar + 255 (quarks from the 120s, leptons from the 255), and it mentions open strings, orientifolds and an SU(9) for M2 and M5.

**Coincidence.** The chain SO(32) ⊃ SO(2) x SO(30) ⊃ SO(2) x SU(15) x U(1) ⊃ SO(2) x SU(5) x SU(3) x U(1), the 30 as five light quarks in three colours, and the top as the factor SO(2), are the same as lemma 21 and the dictionary of [06](06_main_point_heterotic_route.md). What the 11D files add to it: the type I' realization of the SO(2) as the top's D8-brane and of the 30 as the Chan-Paton labels of fifteen D8-branes on an O8^- wall (06); the top angle as the brane's position and the one-loop vacuum on the far wall (Propositions 7.1, 7.2); the orientifold type O^- matched by the seesaw sign (Proposition 8.1); the far wall's enhancement to SU(2) x U(1) at infinite coupling (Remark 8.3); and the dilaton below. In type I' language the paper's other chain, SU(16) x U(1), is the configuration with all sixteen D8-branes coincident in the bulk, and the chain with SO(2) x SO(30) is the configuration with fifteen on a wall and one apart; the second is the one the corpus selects. The SU(9) of M2 and M5 in the paper is the grading of e8 used in [04](04_two_families_m2_m5.md).

## 2. Proposition 9.1 (the dilaton is a trace of a function of the finite Dirac operator)

**Setting.** Type I' on an interval [0, L] with sixteen D8-branes at x_1, ..., x_16 and O8^- planes at the ends. Recalled rule: e^{−phi} is continuous and piecewise linear, with slope c (8 − N(x)) where N(x) is the number of D8-branes to the left of x, c > 0. Dictionary (06, 07): x_k = (2L/pi) θ_k with θ_k = l m_k the angles of sixteen channels of the finite Dirac operator (fifteen light-quark channels with colour, and the top).

**Statement.**

1. e^{−phi(x)} = e^{−phi(0)} + c Σ_k min(x/2, x_k − x/2) for x in [0, L], so the dilaton profile is e^{−phi(0)} plus c Tr g_x(l |D_F|) over the sixteen channels, with g_x(θ) = min(x/2, (2L/pi) θ − x/2), a trace of a function of the finite Dirac operator, as the spectral action is.
2. At the far wall, e^{−phi(L)} = e^{−phi(0)} − c (8L − Σ_k x_k).
3. Infinite coupling at the far wall holds exactly when e^{−phi(0)} = (2cL/pi)(4 pi − l Σ_k m_k): the coupling at the light-quark wall is fixed by the sum of the sixteen channel masses, the trace of |D_F| on these channels.

**Proof.** ∫_0^x N(y) dy = Σ_k (x − x_k)_+, so e^{−phi(x)} = e^{−phi(0)} + c (8x − Σ_k (x − x_k)_+) = e^{−phi(0)} + c Σ_k (x/2 − (x − x_k)_+), and x/2 − (x − x_k)_+ = min(x/2, x_k − x/2). Item 2 is x = L with Σ_k (L − x_k) = 16L − Σ x_k. Item 3 sets e^{−phi(L)} = 0 and substitutes x_k = (2L/pi) l m_k. ∎

**Reading (proposal).** With the light quarks near θ = 0, Σ_k m_k ≈ m_t and the condition is e^{−phi(0)} ≈ (2cL/pi)(4 pi − θ_t): 7cL at label 9 (θ_t = pi/2) and 8cL at label 11 (θ_t -> 0). The dilaton therefore varies along the interval on a scale set by the spectrum of D_F, which is the kind of second scale that Proposition 1.5 requires to select a joint family; whether the type I' coupling can play that role in the corpus's flat family is the next question. The positivity of e^{−phi(0)} gives l Σ_k m_k < 4 pi, a bound on the trace of |D_F| in units of the tower scale, always met when only the top is heavy (θ_t <= pi/2).

## 3. Two more dualities between 9 and 11 (recalled; proposals)

1. **E-type walls and del Pezzo surfaces.** The E_{n+1} symmetry of an O8^- plane with n D8-branes at infinite coupling is the symmetry of the five-dimensional theory on a D4-brane probe, which M-theory realizes on a Calabi-Yau threefold with a shrinking del Pezzo surface dP_{n+1} (Seiberg, hep-th/9608111; Morrison and Seiberg, hep-th/9609070; Intriligator, Morrison and Seiberg, hep-th/9702198). So the far wall with the top's brane (n = 1, E_2 = SU(2) x U(1)) has an eleven-dimensional description by a local dP_2, and the empty far wall (E_1 = SU(2)) by dP_1 or P^1 x P^1; the light-quark wall (n = 15) has none. The Witten base CP^2 x CP^1 of 02 is built from the same pieces (CP^2 = dP_0, and P^1 factors).
2. **Colour-flavour exchange as a T-duality.** In the heterotic string on S^1, the Weyl group of the gauge group acts on the Wilson lines as part of the T-duality group O(17, 1; Z). The colour-family transposition M of [05](05_colour_family_exchange.md) is an element of the Weyl group of E8, so it is a T-duality of the nine-dimensional E8 x E8 string, and through Hořava-Witten a symmetry of the E8 holonomy on a wall in eleven dimensions. The four-family requirement of Propositions 5.1 and 5.4 remains.

## 4. Open

- Whether the type I' coupling, as a spectral function of D_F (Proposition 9.1), supplies the second scale of Proposition 1.5 in the flat family of lemmas 23 and 24.
- The local dP_2 of the top's wall and its relation to the Witten base CP^2 x CP^1.
- The +4/3 scalars of the EPJC paper in the type I' picture: strings between the light-quark stack and its image carry charges that add, and their reading as the (15, 3bar) of lemma 21 is to be checked.
