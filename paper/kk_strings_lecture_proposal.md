# From Kaluza–Klein trajectories to closed strings on a circle

The completed lecture includes the five-, six- and seven-dimensional applications. [Print handout](../docs/kk_strings_lecture.pdf) · [Mobile handout](../docs/kk_strings_lecture_mobile.pdf) · [Lecture source](kk_strings_lecture.tex)

**Lecture proposal.** Graduate readers familiar with a particle on a circle and canonical quantization can begin with one question. What changes physically when a history $f(t)$ of points becomes a history $t\mapsto f(t,\cdot)$ of loops? The lecture follows one compact coordinate throughout. By the end a reader should be able to recover the ordinary momentum tower, exhibit a state missing from point-particle Kaluza–Klein theory, and decide which massless vectors survive in a specified string theory.

## Histories and constraints

A particle history is a map from a worldline to a target $M$. In units $\hbar=c=1$, a particle or a scalar field on a circle of circumference $2\pi R$ has compact momentum $p_y=n/R$. A particle of higher-dimensional rest mass $m_0$ gives lower-dimensional masses $M_n^2=m_0^2+n^2/R^2$. The off-diagonal metric component $G_{\mu y}$ couples to this momentum and gives the familiar Abelian Kaluza–Klein vector.

At each worldsheet time $\tau$ a closed string specifies a loop $\sigma\mapsto X(\tau,\sigma)$, $0\leq\sigma<2\pi$. Before quotienting by reparametrizations, a map from a cylinder to $M$ can equally be written as a path in the free loop space of $M$. A particle path integral can itself sum over worldline windings when its time direction is closed. In the string calculation below, winding is already a label of the configuration **at a fixed time**, around the spatial circle of the string.

Changing the space of configurations leaves the dynamics to be chosen. In a flat target, the conformal-gauge string action has density $(\dot X^2-X'^2)/(4\pi\alpha')$. The spatial derivative costs tension $T=1/(2\pi\alpha')$. The worldsheet metric equations also impose $(\dot X+X')^2=(\dot X-X')^2=0$, including the noncompact target coordinates. Their quantum versions give the two mass-shell conditions and level matching. A general quantum mechanics on loop space need satisfy none of these constraints. Worldsheet time is a parameter until a target-space time gauge has been chosen.

## Worked example

Take one target coordinate $Y\sim Y+2\pi R$, a closed oriented string, and zero background Wilson line and two-form. The lifted compact coordinate satisfies

$$
Y(\tau,\sigma+2\pi)=Y(\tau,\sigma)+2\pi wR,\qquad w\in\mathbb Z.
$$

Its zero-mode solution in the stated worldsheet convention is $Y=y+\alpha'(n/R)\tau+wR\,\sigma$. Quantizing $y$ supplies $n\in\mathbb Z$. The length of a static loop wrapped $|w|$ times is $2\pi R|w|$, so its tension energy is $|w|R/\alpha'$. Oscillators of the two chiralities see the combinations

$$
p_L=\frac nR+\frac{wR}{\alpha'},\qquad
p_R=\frac nR-\frac{wR}{\alpha'}.
$$

With left and right occupation numbers $N_L,N_R$ and intercepts $a_L,a_R$, the physical mass in the remaining spacetime obeys

$$
\begin{aligned}
M^2&=p_L^2+\frac4{\alpha'}(N_L-a_L)
   =p_R^2+\frac4{\alpha'}(N_R-a_R),\\
(N_L-a_L)-(N_R-a_R)&=-nw .
\end{aligned}
$$

The sign of the last equation follows from the definitions of $p_L,p_R$. Adding the two mass formulas and dividing by two gives a momentum energy squared $n^2/R^2$, a winding energy squared $w^2R^2/\alpha'^2$, and the mean oscillator contribution. When $w=0$, exciting compact momentum on a physical massless state satisfying both oscillator conditions recovers $M=|n|/R$. At fixed $R$ and fixed low observation energy, sending $\alpha'$ to zero takes winding excitations out of this spectrum. At fixed $\alpha'$, decreasing the radius eventually brings winding states down. The two limiting experiments have different outcomes.

Under $R\mapsto\alpha'/R,\ (n,w)\mapsto(w,n)$, $p_L$ stays fixed and $p_R$ reverses. The masses and level matching are invariant. In the circle reduction the metric vector measures momentum, while the antisymmetric-tensor vector $B_{\mu y}$ measures winding through the worldsheet coupling to $B$. Circle duality exchanges the two charges and their sources. A quantum comparison beyond this spectrum must also transform the dilaton and any gauge or boundary data.

For an explicit gauge enhancement use the closed bosonic string, $a_L=a_R=1$. Take $n=w=1$, $N_L=0,\ N_R=1$, with an allowed noncompact vector polarization on the right. Its exact mass is

$$
M^2=\left(\frac1R-\frac R{\alpha'}\right)^2 .
$$

At $R=\sqrt{\alpha'}$ this vector and the opposite charge $n=w=-1$ become massless. Together with the left Abelian current they give the roots and Cartan generator of $SU(2)_L$. The $n=-w=\pm1$ states with the oscillator on the left give the analogous right algebra. On the worldsheet the additional left currents are $e^{\pm2iY_L/\sqrt{\alpha'}}$, of conformal weight one. Their operator products close with $i\partial Y_L$, which supplies the Lie algebra behind the degeneracy. The smooth target circle still has only one connected metric isometry. The bosonic model here is a spectrum exercise and has a bulk tachyon.

The superstring projection matters. With a bosonic left sector and a supersymmetric right Neveu–Schwarz sector in the heterotic string, use $a_L=1,\ a_R=1/2$. For $n=w=\pm1$, $N_L=0,\ N_R=1/2$, a single right spacetime fermion oscillator gives the vector. For the opposite root direction $n=-w$, a massless state with $|p_R|=2/\sqrt{\alpha'}$ would require $N_R=-1/2$, which is impossible. Thus at zero Wilson line the heterotic circle can give the extra left $SU(2)$. An unorbifolded type-II circle has supersymmetric projections on both sides and the zero-oscillator state used in the bosonic derivation is removed. A radius and a loop space alone do not specify the enhanced spectrum.

## Documents proposed for the lecture

1. **Trajectories and loop space.** A short derivation of the particle and Polyakov actions alongside each other, with an exercise identifying spatial winding on a cylinder and Euclidean time winding in a trace.
2. **The circle calculation.** Use the example above as a worked handout. Have readers vary the intercept and the projection before counting massless states. A second exercise reconstructs the coupling to $G_{\mu y}$ and $B_{\mu y}$ by varying the worldsheet action.
3. **Boundaries and finite operators.** Replace loops by paths with endpoints on specified branes or walls. Compare an endpoint charge, a Chan–Paton multiplicity and a standing-wave zero mode. In the finite Connes geometry, the closest explicit operation in this repository is imposing relative Dirac boundary subspaces and computing their isolated light window. The worldsheet operator product and the spacetime finite Dirac algebra would still need a map of operators to connect them. [Interval construction](boundary_condition_note.tex) · [Heterotic walls and the seven-dimensional candidates](seven_m_theory.tex)

The classical circle example establishes a distinction relevant to the research papers. Gauge vectors can appear through consistent string states even when the smooth metric has no additional Killing fields. A research extension would identify the physical states, their charges and their current matrix elements in one specific proposed weak endpoint. Establishing the circle enhancement alone leaves that identification open.

One comparison can already be made within the repository. Unfolding the chiral Dirac interval gives a point spinor on an antiperiodic circle of circumference $2\ell$, with momenta $(n+1/2)\pi/\ell$. The half-integer shift is the spin boundary condition. There is a single momentum index in this one-particle problem. The independent winding label $w$ of the worked string example arises only after specifying a spatially extended field $Y(\tau,\sigma)$. In the type-I′ comparison the interval tower can be dual to winding in another description. At constant dilaton the length convention there gives $\ell L_p=\pi^2\alpha'$. Applying that relation needs a specified duality frame and dilaton. [Finite geometry and Kaluza–Klein dictionary](connes_kk_dictionary_note.tex)

For preparation, Joseph Polchinski’s *String Theory*, volume 1, chapter 8, develops compactification and T-duality. The string gauge and M-theory boundary comparisons used here also have local bibliographic entries for Polchinski–Witten and Hořava–Witten. [Project bibliography](towerless_intervals.bib)
