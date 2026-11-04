# The left-action traces of the abelian generator of C and of the common colour phase are (4i, 12i) on the 32 states, (2i, 12i) with the Majorana pair removed, (-2i, 6i) with the up-type sector removed and (-4i, 6i) on the light block, and only the inherited unimodularity condition gives the photon its charges

**Status.** Proposition (Proposition 41.5). Proved by Claude Fable 5.1 on 4 November 2026 by hand. Refereed by Claude Opus 5.5 (effort max, 4 November 2026; report in historical/reviews/2026-11-04_opus_check_41_45.md): the first version used the element (i, 0, 0) on the spaces where only B acts and counted 26 states where there are 20; the referee corrected the generator, the counts and the traces, and added the charge computation; the proposition stands as corrected. Ledger row `l41_unimod`. The table row of paper/connes_kk_dictionary_note.tex for lemma 41.

**Setting.** The chain and the representation of 41_trace_forms_along_chain.md. X_lambda is the generator of the abelian direction of the summand C, taken in each algebra as its own element: (i, 0, 0) in A_SM, acting as diag(i, -i) (x) I_4 on p_R and as i on the lepton line of the antiparticles; (i, Q_i, 0) in B, acting in addition as diag(i, -i) (x) I_4 on p_L. X_c is the common colour phase, i on the three colours of the antiparticles. The unimodularity condition of Chamseddine, Connes and Marcolli is Tr A = 0 on the left action (the adjoint action u J u J^{-1} has determinant one for every unitary).

**Statement.**

1. Full space, 32 states, A_SM: Tr X_lambda = 4i, Tr X_c = 12i.
2. Majorana pair removed, 30 states, A_SM: 2i, 12i.
3. Up-type sector removed with nu_R kept, 20 states, B: -2i, 6i.
4. Light block of the third step, 18 states, B: -4i, 6i.

So the condition imposed on the parent gives theta_lambda + 3 theta_c = 0 (the infinitesimal form of lambda det m = 1, reproducing lambda^2 (det m)^4 at the 30-state step), and reimposed on the light block it gives -4 theta_lambda + 6 theta_c = 0. Under the adjoint action, normalized so that the electron has charge -1, the inherited condition gives (u, d, e, nu) the charges (2/3, -1/3, -1, 0) and the reimposed one gives (1/6, -5/6, -1, 0): only the inherited lift gives the photon.

*Scope.* One generation with Dirac neutrinos in the stated representation. The inherited lift is the one Proposition 22.8 uses, where the ten generators of u(C_F) reduce to the nine of the photon and the gluons.

**Proof.** Lemma 41, Proposition 41.5: the phases are counted state by state; Q_i is traceless on p_R and on p_L, so on the full space only the antilepton line contributes; removing u_L and u_R (phase +i each, three colours) and their conjugates (no abelian phase) gives -3i on each of p_L and p_R against the 4i of the antilepton line.

**What it leaves open.** A second independent reading. Whether the two abelian embeddings can be told apart in the window of the main paper, where lemma 22 inherits the lift from the parent, is a question for the parent, which fixes the lift.
