# In the flat massless family with this gauge content and frequency-one fermions, the one-loop potential has its unique global minimum at theta = pi/2 for every n_f > 0 and decreases strictly for n_f >= 10.8, with no interior minimum on the grids computed below that

**Status.** No-go theorem in its scope (Proposition 23.8; the ledger records it as kind no_go). The analytic statements are by Terra 6.1, the referee of lemma 23 (historical/reviews/2026-11-03_terra_check_23.md); the potential and the scans are by Claude Opus 5.5. Checked by Claude Opus 5.5 in Python (grids and adaptive quadrature, with I = (3/2) zeta(3) also checked by the referee) and by Astra 6 by hand, whose Theorem 9 of lemma 24 proves the range left to numerics here. Ledger row `l23_potential`. Cited, with lemma 24, in the section on the gauge sector of paper/boundary_condition_note.tex ("\supp{23} and \supp{24}").

**Setting.** From the exact spectra, the products over the towers relative to theta = 0, in Euclidean momentum x = p l, are 1 + sin^2(theta)/sinh^2(x) for a fermion channel, 1 + sin^2(2 theta)/(2 sinh^2 x) for the charged vectors and 1 + (4/5) sin^2(2 theta)/sinh^2 x for the neutral vector. With the usual one-loop formula, three polarizations per vector, n_f twice the number of physical Dirac species and s = sin(2 theta),

    8 pi^2 l^4 V(theta) = int_0^infinity x^3 dx [3 log(1 + s^2/(2 sinh^2 x)) + (3/2) log(1 + (4/5) s^2/sinh^2 x) - n_f log(1 + sin^2(theta)/sinh^2 x)].

**Statement.**

1. For every n_f > 0, theta = pi/2 is the unique global minimum on [0, pi/2]: the gauge logarithms are nonnegative and vanish there, and the fermion term is minimized at sin^2(theta) = 1.
2. For n_f >= 10.8, V is strictly decreasing on the interior. With t = sin^2(theta) and J(z) = int_0^infinity x^3 dx/(sinh^2 x + z), dV/dt is, up to a positive factor, (1 - 2t)[6 J(2t(1 - t)) + (24/5) J((16/5) t(1 - t))] - n_f J(t).
3. For n_f in {1, 2, 3, 4, 6, 8, 10}, on grids of theta (Python), V has one interior maximum, at about 0.33 for n_f = 8, and no interior minimum.

*Hypotheses.* One interval, no bulk masses, fermions of frequency 1 under F, this gauge content, one loop, this condition at the connector wall. For bulk masses with c_Q + c_U != 0 the potential has angle-dependent ultraviolet divergences, and an earlier scan of general pairs is withdrawn; for c_U = -c_Q = c, with the flat gauge products kept as a separate tree-level assumption, a scan (Python) over c in {0, 1/2, 1, 3/2, 2, 3, 5} and n_f in {1, 3, 6, 8, 10, 16, 48} on 721 angles finds no interior minimum.

*Escapes, as the lemma states them.* A negative coefficient of sin^2(2 theta), as from fermions of frequency 2 under F, which the bimodule E = Hom(V, W) does not contain; general bulk masses with a gauge-invariant completion, or other gauge form factors, as with warping; a wall scalar with its own potential; tree-level terms at the walls. The leading flat form has the angular form alpha cos(h/f_pi) - beta sin^2(h/f_pi) of Agashe, Contino and Pomarol with spinorial SO(5) fermions, whose form factors can give an interior minimum, so these flat results do not exclude that construction.

**Proof.** Lemma 23, Proposition 23.8; the proof is there: for t <= 1/2 both arguments in the bracket are at least t and J decreases, and for t > 1/2 both contributions have the required sign.

**What it leaves open.** The result points away from a pure flat Wilson line, toward changed form factors or a wall scalar with its own potential. The range 0 < n_f < 10.8 is proved in 24_nogo_massless_one_loop_minimum.md, and frequency-2 channels give an interior minimum in 26_interior_minimum_frequency_two.md.
