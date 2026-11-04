# With fluxed charges F (universal), chi (the grading) and B - L, the pairings P^(1) = c_0 chi + c_1 (B - L) and P^(2) = (3F + chi)/2 give one generation with nu^c as the exact index content on CP^2 x CP^1 for (c_0, c_1) = (-9/4, -3/4) or (-3/2, -3), and without chi or without B - L there is no solution

**Status.** Proposition (Proposition 2.6, with the referee amendments), conditional on a global gauge group, charge lattice, spin^c determinant and flux quantization, which are not specified. Proved by Claude Opus 5.5 (branch 11D; ledger agent `claude`); checked by its author in Python (historical/11D/checks_11d.py, section D2), by Terra 6.1 by hand, whose independent proof with the colour convention is written out in the Referee proofs of lemma 32, and by Claude Sonnet 5.5 by hand (reports: historical/reviews/2026-11-04_terra_check_11d.md, historical/reviews/2026-11-04_sonnet_second_check_11d.md). Ledger row `d11_flux_fit` (depending on `d11_flux_nogo`). No paper cites it separately.

**Setting.** The construction of 32_nogo_flux_hypercharge_b_minus_l.md, with fluxed charges F = 1 on every field (a change of the common spin^c twist), chi = +1 on Q and L and -1 on u^c, d^c, e^c, nu^c, and B - L.

**Statement.**

1. For (c_0, c_1) = (-9/4, -3/4) or (-3/2, -3) the bidegrees are Q: (-4, 1); u^c, d^c: (1, 0); L: (-3, 1) or (0, 1); e^c, nu^c: (0, 0) or (-3, 0), all of even total Dolbeault degree, and the index content is one generation with nu^c.
2. Without chi, or without B - L, there is no solution, also for independent source chiralities.
3. With the colour action of the quotient of Theorem 2.1 the base is P(3-bar), and the quark bundles above carry the conjugate colour representations; replacing (c_0, c_1) by (9/4, 3/4) or (3/2, 3), with P^(2) unchanged, gives the labelled representations.

*Scope.* u^c and d^c see the same line bundle O(1, 0), and so do e^c and nu^c, so the flux treats them as SU(2)_R doublets, with hypercharge Y = T_3R + (B - L)/2 entering through T_3R, which carries no flux; chi equals the finite grading gamma_F on the particle basis. The flux examples establish a particular construction, and a general necessity for the grading flux is open (referee note).

**Proof.** Lemma 32, Proposition 2.6: substitution and the span test (Python, section D2). The referee's proof obtains the two failures from absolute values alone: without chi the doublet pairings force abs(P^(2)) = 2 or 0 on u^c, and without B - L the pairings of Q and L coincide while their colour pairings must be 5/2 and 3/2.

**What it leaves open.** The global flux data. The masses of u^c and d^c, which share one zero-mode profile, need data that break SU(2)_R, such as Higgs or wall couplings, and the nine-dimensional reduction of this index is open. The index calculation does not establish the physical interpretation of the grading as a gauge connection.
