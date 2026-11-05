# Finite spectral triples and Kaluza-Klein limits

The papers study whether the finite part of an almost-commutative spectral triple can be read as a low-energy window of an internal geometry. An interval supplies an exact setting in which a finite spectrum, wall data and a Kaluza-Klein tower can be compared. The seven-dimensional construction, the gauge sector and the proposed connections to string theory ask how much of that picture can extend beyond the interval.

This discussion brings the common ideas together. Each link leads to the full paper, including its hypotheses, proofs or proof sketches, citations, status and provenance. The papers are drafts with no listed authors; they have not been submitted or peer reviewed. Their independent model checks and remaining qualifications are recorded in the papers and supplements.

## What the dimensions mean {#dimensions}

The finite Standard Model triple has metric dimension zero and KO-dimension six. The labels 9 and 11 arise from odd factorizations of a KO-6 triple after including four-dimensional spacetime; they are KO-degrees rather than measurements of a geometric dimension. A geometric dimension is tested separately, for example by the growth of a tower or a heat trace.

In the reduced representation, charged paired sectors can admit both factorizations. A sector with one or three unpaired neutrinos admits only the KO-7 factorization under the stated criterion, while the full chiral representation admits neither. Reading the two labels as limits of an even interior is a proposal; identifying those limits with physical parameters remains open. See [the real-structure analysis in the main paper](towerless_intervals.html#sec:real) and [the reduced fermion action](chiral_limit_note.html#setting).

## The two-point space and the interval {#interval}

For a massless Dirac operator on an interval of length $l$, with opposite chiral boundary conditions at its two ends, the lowest pair of modes compresses exactly to the Connes-Lott two-point operator $D=m\sigma_1$, with $m=\pi/(2l)$. The compressed algebra of functions is $\mathbb C\oplus\mathbb C$; the two states correspond to smeared measures on the interval. Higher modes form a tower, so the two-point model is a spectral window. The inherited real structure and first-order condition require separate attention.

Adding a negative bulk mass $M=-\mu$ produces a light pair when $\mu l>1$. In the long-interval limit at fixed $\mu$, the modes localize at opposite walls and the tower develops one-dimensional Weyl growth above the gap. A collapse with a fixed light mass instead needs a tuned bulk mass or a scaled boundary coupling; the massless interval alone leaves no light modes at a fixed cutoff. These are statements about the specified boundary families. The [main paper's interval construction](towerless_intervals.html#the-two-point-space-is-a-truncated-interval), [bulk-mass limits](towerless_intervals.html#bulk-mass-the-light-pair-and-both-limits), and [boundary Yukawa discussion](towerless_intervals.html#boundary-yukawa-matrices-and-towerless-textures) give the formulas and scopes.

## Finite data as wall data {#wall-data}

For a finite Dirac operator $D_F$ with KO-6 signs, the boundary-condition paper constructs a matrix-valued interval parent with an exact lowest window whenever $l\lVert D_F\rVert<\pi/2$. Its masses are principal angles divided by $l$, and the signed tower has levels $(n\pi\pm\theta_k)/l$. A pair of wall gradings determines the finite operator through $D_F=(2l)^{-1}\Gamma_0\log(\Gamma_1\Gamma_0)$ when the principal logarithm is defined.

The construction also preserves the real structure and grading on the window. Wall observables are restricted by the commutant of the grading, and constant observables compress to an average under the finite Dirac evolution, approaching the finite representation at order $l^2$. The finite data and the matrix-valued parent are inputs: the construction does not select the Standard Model algebra. See [the exact window](boundary_condition_note.html#the-window), [algebra and compression](boundary_condition_note.html#algebra-order-one-compression), and [the dictionary](connes_kk_dictionary_note.html#the-finite-dirac-operator-is-a-boundary-condition-and-a-holonomy).

The interval component of a connection relates finite fluctuations to wall transport. With one interval, fixed boundary data, no bulk masses, even scalar inner fluctuations and a moving window, the singular values stay fixed. The paper describes possible directions outside those hypotheses, including varying wall data, odd terms and further internal dimensions. The odd quaternionic directions give an $S^4$ field space in the specified construction. See [fluctuations](boundary_condition_note.html#fluctuations) and [the Higgs entry in the dictionary](connes_kk_dictionary_note.html#the-higgs-field-is-the-gauge-field-along-the-interval).

## Opening a tower {#opening}

Massless weak vectors alone do not determine whether a tower opens. In the interval gauge toy, the vector masses can vanish at fixed $l$ while the tower spacing stays fixed. The opening-tower paper specifies a family with a light scale $m_\varepsilon$, a moving observation scale $E_\varepsilon$, and a first discarded scale $\Delta_\varepsilon$ satisfying

$$m_\varepsilon\ll E_\varepsilon\ll\Delta_\varepsilon\to0.$$

It also requires and proves a divergent state count at each fixed positive energy for its examples. For the interval family $l_\varepsilon=l_*\varepsilon^{-\alpha}$, with $0<\alpha<1$ and $D_F=\varepsilon D_*$, a choice $\alpha<\beta<1$ and $E_\varepsilon\propto\varepsilon^\beta$ retains a fixed finite window while the fixed-energy count grows like $\varepsilon^{-\alpha}$.

### Opening-window hierarchy {#plot-opening}

<figure class="plot">
<div class="plot-scroll" tabindex="0" role="region" aria-label="Opening-window plot; scroll horizontally if needed">
<img src="plots/opening-hierarchy.svg" alt="Logarithmic plot of epsilon from one millionth to one tenth. The light mass and the moving window fall faster than the first discarded level as epsilon approaches zero.">
</div>
<figcaption><strong>Figure 1. Python plot.</strong> The interval example takes α = 1/3, β = 2/3 and l<sub>∗</sub> = E<sub>∗</sub> = ‖D<sub>∗</sub>‖ = 1. The curves are m = ε, E = ε<sup>2/3</sup> and Δ = π ε<sup>1/3</sup> − ε, in common units. The family and its inputs are prescribed; no dynamics selects them. <a href="joint_limit_note.html#thm:interval">Source: interval theorem.</a></figcaption>
</figure>

On a disc bundle over $S^4$, a local Dirac operator with a Callias potential yields an eight-state fermion window for the stated metrics, and an expanding family has seven-dimensional Weyl growth. On that parent, the relation between the tunnelling scale and the $W$ and $Z$ masses, the vector sector, couplings, physical chirality and dynamics selecting the family remain open. See [the interval family](joint_limit_note.html#sec:interval), [the local window](joint_limit_note.html#sec:window), [the joint limit](joint_limit_note.html#sec:joint) and [what is missing](joint_limit_note.html#what-is-missing).

## Masses, chirality and the fermion action {#fermions}

Where an appropriate grading-reversing involution exists, the physical fermion action of an even product can be written as the action of an odd triple on an unconstrained spinor, with the finite Yukawa block appearing as an explicit mass matrix. A paired sector gives one Dirac action for either allowed sign, up to the displayed change of Grassmann variables. This concerns the reduced action and the specified involution.

For massless quarks in the colour-only sector, the note obtains the kinematic $U(N_f)_L\times U(N_f)_R$ symmetry and describes the admissible involutions. A spacetime-dependent reduction of a fixed operator leaves its spectral action unchanged. A pion kinetic term therefore needs an additional operator or a quantum effective action; a condensate needs a gauge-field measure, an infinite-volume limit and an order of limits. See [the reduced action](chiral_limit_note.html#the-reduced-action), [the chiral limit](chiral_limit_note.html#the-chiral-limit) and [the condensate](chiral_limit_note.html#the-condensate).

## Gauge fields and the spectral action {#gauge}

In the flat interval Yang-Mills model with the specified wall connector and kinetic form, the light vector poles obey

$$\sin^2(M_Wl)=\tfrac12\sin^2(2\theta),\qquad \sin^2(M_Zl)=\tfrac45\sin^2(2\theta).$$

The small-angle limits are $M_W^2\to2(\theta/l)^2$ and $M_Z^2\to(16/5)(\theta/l)^2$. The same model also has massless vectors as $\theta\to\pi/2$ at fixed $l$. These are properties of the prescribed flat family, rather than a determination of the observed electroweak vacuum. The paper gives the [exact vector result and its hypotheses](boundary_condition_note.html#gauge-sector-and-the-two-limits), together with directions beyond the flat comparison.

### Interval vector poles {#plot-poles}

<figure class="plot">
<div class="plot-scroll" tabindex="0" role="region" aria-label="Interval vector-pole plot; scroll horizontally if needed">
<img src="plots/interval-poles.svg" alt="Dimensionless vector poles start at zero, peak halfway across the angle range, and return to zero. The universal fermion mass rises linearly to one.">
</div>
<figcaption><strong>Figure 2. Python plot.</strong> W and Z use the lowest nonnegative branches; m = θ/l is the universal fermion parameter. The curves use the flat five-dimensional Yang–Mills model with the stated wall connector and positive kinetic form without boundary terms. Endpoint values are limits. <a href="boundary_condition_note.html#thm:wz">Source: vector-pole theorem.</a></figcaption>
</figure>

For a heat cutoff, a constant-profile vector in the transported frame and small finite masses, the leading spectral-action sum rule is

$$M_W^2=\frac{3-d}{24}\sum_f N_fm_f^2,\qquad d=\frac{d\log S}{d\log s},\qquad S(s)=\sum_{n\in\mathbb Z}e^{-n^2\pi^2/s^2},\quad s=l\Lambda.$$

Here $d$ tends to zero for a towerless cutoff and to one in the opposite heat-trace limit. For a top-only sum, the corresponding leading ratio $m_t/M_W$ runs from $\sqrt{8/3}$ to $2$. The calculation assumes the stated profile and matching scale, with no running; comparison with measurements needs an effective theory and thresholds. See [the effective-dimension theorem](boundary_condition_note.html#the-sum-rule-and-the-effective-dimension) and [the main paper's spectral-action analysis](towerless_intervals.html#spectral-action-heavy-fermions-and-the-gauge-sector).

### Heat-trace effective dimension {#plot-heat}

<figure class="plot">
<div class="plot-scroll" tabindex="0" role="region" aria-label="Heat-trace plot; scroll horizontally if needed">
<img src="plots/heat-dimension.svg" alt="The effective dimension rises from zero to about 0.72 at l times Lambda equal to two, and approaches one by five.">
</div>
<figcaption><strong>Figure 3. Python plot.</strong> The curve evaluates the unshifted circle heat trace and its logarithmic derivative. Its use in the mass sum rule is at leading order in small masses, with a heat cutoff, a constant transported profile and no running. Figure 2 shows vector poles in a separate Yang–Mills calculation. <a href="boundary_condition_note.html#thm:deff">Source: effective-dimension theorem.</a></figcaption>
</figure>

## Generations and the real structure {#generations}

With three generations and Dirac neutrinos, the finite Hilbert space has 96 states and two different decompositions as $84+12$: one removes the top block and the other the neutrino block. Within the single-slot root assignments and symmetry classes examined in the generations note, the sought exchange is obstructed for three families; a colour-family transposition exists for four. The $44=32+12$ comparison is a numerical fit, with the colour-covariance limitation stated in the paper. These results leave room for other embeddings, nonlinear maps, brane states and zero modes spread over several roots. They do not determine the number of generations. See [the colour analysis](generations_note.html#sec:colour), [root configurations](generations_note.html#sec:roots) and [the open directions](generations_note.html#sec:open).

For the five light quarks in three colours and their conjugates, the real-structure note places $SO(30)$ as the commutant of the real structure on a massless block when the relevant odd factorization has sign $s=+1$. The antisymmetric block of the parent interval connection and its symmetric compression to the finite window carry different representation counts. The proposed composite interpretation requires additional physical assumptions, and the note lists the unresolved wall, mass and exotic-state questions. See [the sign and massless block](real_structure_note.html#sec:sign), [the interval parent](real_structure_note.html#sec:interval), and [the compression](real_structure_note.html#sec:window).

## Completions, sources and status {#sources}

The [dictionary](connes_kk_dictionary_note.html) gathers the correspondence between finite data and interval or Kaluza-Klein data, with a status for each entry. Its [string-duality comparison](connes_kk_dictionary_note.html#what-the-string-dualities-give) identifies specific limitations of the proposed 15+1 configuration, including its angle-position map, T-dual length and Romans mass; it points toward other chambers and completions. These statements concern that dictionary and do not settle the broader completion question.

The [full Supplemental Material](supplemental.pdf) and its [mobile edition](supplemental_mobile.pdf) collect the lemmas, results, history and literature record. Each paper's page also links to its own supplement and both PDF layouts. The [research repository](https://github.com/arivero/conneskk) contains the LaTeX sources and the ledger of claims, dependencies and checks. Text marked “to check” in a paper retains that status in this edition.
