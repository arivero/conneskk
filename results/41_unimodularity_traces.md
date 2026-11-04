# The left-action traces of the abelian generator of C and of the common colour phase are (4i, 12i) on the 32 states, (i, 6i) after the removal of the up-type pair with nu_R kept, and (-i, 6i) on the light block, so the inherited and the reimposed unimodularity conditions embed the surviving abelian generator differently

**Status.** Proposition (Proposition 41.5). Proved by Claude Fable 5.1 on 4 November 2026 by hand; confirmed by its author with numpy (the six traces, script not kept). No independent check yet: the ledger marks the row referee_pending. Ledger row `l41_unimod`. No paper states it separately; the table row of paper/connes_kk_dictionary_note.tex for lemma 41 lists its propositions as unrefereed.

**Setting.** The chain and the representation of 41_trace_forms_along_chain.md. X_lambda generates the abelian direction of C, acting as i on lambda, so as diag(i, -i) (x) I_4 on p_R and as i on the lepton line of the antiparticles; X_c is the common colour phase, i on the three colours of the antiparticles.

**Statement.**

1. On the full space (32 states), Tr X_lambda = 4i and Tr X_c = 12i.
2. After the removal of the up-type pair, with nu_R kept (26 states), the traces are i and 6i.
3. On the light block of the third step (18 states), they are -i and 6i.

So the unimodularity condition Tr A = 0 of Chamseddine, Connes and Marcolli, imposed on the parent, gives 4 theta_lambda + 12 theta_c = 0 between the two abelian phases, while the same condition reimposed on the light block gives -theta_lambda + 6 theta_c = 0.

*Scope.* One generation with Dirac neutrinos in the stated representation. The inherited lift is the one consistent with Proposition 22.8, where the ten generators of u(C_F) reduce to the nine of the photon and the gluons by the condition inherited from the parent.

**Proof.** Lemma 41, Proposition 41.5: the phases are counted state by state; removing u_R (three colours, phase -i) leaves -3i on p_R and i on the antilepton line, and removing also nu_R and its conjugate takes i from each.

**What it leaves open.** An independent check by a model other than its author.
