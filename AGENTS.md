# Instructions for agents

These rules apply to every agent working here, in general conversation, in prompts and in files.

## Neutral wording

Keep wording neutral throughout, with "we" or an impersonal form in place of the first person singular and of possessives.

- Write "the 10->9 proposal", not "your proposal".
- Write "we had two errors" or "there was an error in Corollary 16.8", not "I had two errors" or "my error".
- Write "we will check this next" or "this is checked next", not "I will check this".

Provenance fields (attempted by, checked by) still name the specific model or agent. Past outputs of agents stay verbatim as records.

## Direct statements

Avoid the "X is not Y; it is Z" pattern and its relatives ("This is not merely...", "not because A but because B", "It is not X. It is Y.", "...is no accident", openers like "This is not idle speculation"). Write the direct statement instead: say what the thing is, with the evidence. A contrast is allowed only when the negated alternative is itself load-bearing and the sentence is short (for example, "bounds, not discovery"), at most once per page.

Use plain descriptive headings. Avoid motivational or slogan-like headings and asides, and cute section titles.

## Negative results

A no-go result is a guide to where to go next, and it leaves the question open. These results are tempting because they come cheaply, and treating them as closing an issue has misled physics before.

- State each negative result in its exact scope: the family, the order, the definition and the action.
- State it together with its hypotheses and known escapes, as Coleman-Mandula is stated together with supersymmetry.
- Require consensus among multiple models before relying on one in general, with an independent check by a model other than its author as the minimum.
- Say which direction the result points to. Close an item only with a positive theorem.

An item here is a ranked item of STRATEGY.md (T1, T2 and so on). GitHub issues are working tickets, and they live outside the git repository. A ticket closes when its finite work is recorded, including a negative result in its exact scope. The closing comment and the repository text then state what research stays open, and the STRATEGY item carries that question. Closing a ticket closes no idea: the escape from a no-go result has often been found afterwards.

Judge the purpose of each ticket and each closure plan. A negative result from a test that could have succeeded is research output. A ticket or plan written so that a cheap negative result completes it earns no progress on its STRATEGY item: record the result and state the positive target that remains.

## What counts as progress

The rules above guard against false claims. This section says what the work aims at. On 26 November 2026 the ledger held 469 proved claims, 14 no-go results and two conjectures, it had no kind for a prediction, and most tickets of that week closed on a check, a scoped negative result or a free coefficient. Careful work drifts towards what a strict referee accepts cheaply. The aim is discovery, and the following rules point the work at it.

**Three outcomes move a STRATEGY item**, in this order of value.

1. **An input is derived.** A quantity that the corpus puts in by hand (a coefficient, a scale, a charge assignment, a boundary condition, a matching constant) is computed from the parent structure, and one free choice disappears.
2. **A prediction is made and tested.** A number or a structural statement with no adjusted input is written down with its precision before the comparison, and is then compared with a held-out observable. Agreement and disagreement both count.
3. **A candidate is eliminated by a test it could have passed**, and the next candidate is named.

Everything else is support: checks of earlier results, restatements, lemmas in a simplified setting, comparisons with the literature, and findings that a coefficient is free. Support work is needed and is recorded with the same care. It leaves the item where it was, and the text says so.

**Inputs put in by hand.** STRATEGY.md lists, for each item, the inputs that the corpus supplies by hand. A finding that a quantity is free in a given action adds that quantity to the list, as a target. A research step starts by naming the input it tries to derive or the prediction it tries to make. In the ledger such inputs are `hypothesis/2` facts, and a result that uses one depends on it.

**Work in the object of the proposal.** The questions are about the parent structure of the corpus: the 10 → 9 reduction, the Hopf family, the wall action. A lemma in an abstract setting, or a model whose inputs are chosen so that the answer comes out, is a scout. Its first sentence says that it is a scout, the text states what transfers to the parent, and the computation in the parent stays as the open step. One long computation in the parent, with checkpoints that have value on their own, is preferred to several short results around it.

**Conjectures and predictions.** State a conjecture when the evidence suggests one: labelled Conjecture, with its evidence, the simplest test that would refute it and the consequence if it holds. The ledger kind is `conjecture` with status `open`. A conjecture sharp enough to be refuted is worth more to the project than a safe lemma, and a refuted one is recorded as a result. The wording rules apply unchanged, since the label says what the statement is. A prediction is registered in STRATEGY.md with its date, its inputs, its value, its precision and the held-out observable before the comparison is made.

**After a negative result, build the escape.** The list of escapes of a no-go result is a work queue. The next step on that item constructs the most promising escape in the parent structure and tests it, or records which escape was tried and where it failed.

**Existing machinery first.** Before deriving an input from first principles, search the literature for the theorem or computation that would supply it (index theorems, anomaly inflow, localization, published matching computations), and import it with its hypotheses.

**Tickets and closure plans.** A plan names the input it aims to derive or the prediction it aims to test. When the ticket closes, the closing comment classifies the exit: *reached* (the input is derived or the prediction is tested), *narrowed* (a candidate is eliminated and the next one is named) or *blocked* (the decisive computation remains, and it is stated as the next target). A plan may allow a negative or inconclusive outcome, and that exit is narrowed or blocked. After three tickets in a row on one item without a reached exit, the next step is a review of the approach to that item in STRATEGY.md: whether the item asks the right question, and which single computation would decide it.

## Mathematical writing

Use the standard mathematical "we" and "Let ...", in research documents and in prompts asking for proofs.

Use the established vocabulary for outcomes: Theorem, Lemma, Proposition (proved); Counterexample (for a refuted claim); No-go theorem; Conjecture (open); "conditional on X" or "assuming X" for a proof that depends on a hypothesis; "gap" or "error in the proof" for a flawed argument. Avoid status classes such as "DISPROVED lemma".

Label each result by how it stands: if it is proved, it is a theorem with proof; if it is proved elsewhere, it is a reference; if it is a numerical check, name the language used.

## What is read

At the start of a research step, state what varies, what stays fixed and which observable is at issue. Use the [reading routes](results/README.md#reading-routes) for the relevant strategy item. Read the construction and its countertest and follow the claim used to its proof. When a new result changes that choice, update the relevant route.

The live set is `README.md`, `AGENTS.md`, `STRATEGY.md`, `INDEX.md`, `ledger.pl` (with `ledger_11d.pl`), `lemmas/`, `results/`, `paper/` (the papers, the supplement build and the two literature records `paper/LITERATURE.md` and `paper/NCG_HISTORY.md`), `current_framework.md` and the steer note. Every PDF in `docs/` is built from `lemmas/`, `results/` and `paper/` alone.

`historical/` is never read into context: it holds the corpus the project started from, the referee reports, the prompts, the transcripts and the unfinished eleven-dimensional plan. It is provenance, cited through the rows of the ledger and the headers of the lemmas. A statement needed from a report is written into a lemma or a results file; a report is not consulted for it. A referee report is historical as soon as it has been inspected and applied: its corrections and proofs go into the lemma, its new insights that are not yet results go into the lemma's direction paragraph or into the STRATEGY row they bear on, as leads with the referee named, and the report itself stays as provenance only.

## Integration without pull requests

Check GitHub's default branch with `gh repo view --json defaultBranchRef`.
Integrate finished work directly on that branch, usually `main` or
`master`. Fast-forward when the history allows it, otherwise merge
locally, then push the default branch. Do not open pull requests.
Use a side branch for work in progress only. Merge it back when the work
is complete and delete it afterwards. User instruction of 20 November 2026.
