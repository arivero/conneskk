# The Berger radius at fixed gauge matching

**Proposition.** Let the internal metric on $M^4\times S^5$ be $R^2g_\eta$, where $R>0$ is the horizontal radius and $\eta>0$ is the Hopf-fibre radius divided by $R$. Use the tree-level Einstein kinetic term of Lemma 47, with its common coefficient $C_9>0$ fixed in nine-dimensional units. Fix $\operatorname{tr}_3 T^2=1/2$ for colour and the spinor charge unit $c=2/3$ on the coordinates. The full-module weak-angle and relative gauge normalization select precisely the subgroup matching locus

$$
\mathcal{C}=\{(R,1)\mid R>0\}.
$$

Write $A(R)=C_9\pi^3R^7$ and $\alpha_i=g_i^2/(4\pi)$. Along $\mathcal{C}$ the matching values are $\alpha_3=3/(2\pi A(R))$ and $\alpha_{\mathrm{em}}=9/(16\pi A(R))$. Thus even with the same microscopic Einstein coefficient the matching inputs admit different dimensionless couplings.

**Proof.** Define $C_9$ by $g_a^{-2}=C_9\int_{S^5} g(K_a,K_a)\,dV_g$ in charge-connection coordinates. The Killing generators are fixed by their action on the coordinates. Rescaling the metric multiplies their squared lengths by $R^2$ and the volume by $R^5$. The round unit sphere has volume $\pi^3$. Proposition 47.1 therefore gives

$$
g_3^{-2}=A(R)\frac{\eta(3+\eta^2)}{24},
\qquad e^{-2}=A(R)\frac49\eta^3 .
$$

At a common matching scale take $Q=T_3+Y$, $g_2^2=g_3^2=(5/3)g_Y^2$ and $e^{-2}=g_2^{-2}+g_Y^{-2}$. These give $\cos^2\theta_W=5/8$ and $e^2/g_3^2=3/8$. Of these inputs, only the last ratio compares two Killing-vector coefficients on this five-sphere. The weak angle is inherited from the matching theory. In the heavy-up trace of Lemma 18 the surviving $5/8$ is a neutral-current angle. A pole-mass angle requires separate $W,Z$ data. [Lemma 47, Remark 47.3](../lemmas/47_berger_sphere_coupling_normalization.md#statements) · [Lemma 18, Proposition 6](18_unbroken_coefficients_and_angles.md) · [Chamseddine–Connes–Marcolli, eq. (4.10)](https://arxiv.org/html/hep-th/0610241#S4.E10)

The geometric ratio is $(3/32)(1+3/\eta^2)$. Its shape derivative at $\eta=1$ is $-9/16$ and its radius derivative vanishes identically. Setting the ratio to $3/8$ gives $\eta^2=1$. There are two continuous metric parameters, one independent constraint, and one remaining parameter. Substitution at $\eta=1$ gives the stated couplings. Replacing $R$ by $\lambda R$ multiplies both fine-structure constants by $\lambda^{-7}$ for every $\lambda>0$. $\square$

**Absolute normalization and the weak scale.** If the spectral action is also matched in absolute units, $f_0g_3^2=\pi^2/2$ gives

$$
f_0=\frac{\pi^2 A(R)}{12}.
$$

A free cutoff moment $f_0$ takes this value along the curve. An independently specified $f_0$ and $C_9$ select the single radius $R=(12f_0/(C_9\pi^5))^{1/7}$. Allowing $C_9$ to vary adds one parameter to the relative-matching calculation. On the round product $\kappa_4^{-2}=\kappa_9^{-2}\pi^3 R^5$, with $C_9$ proportional to $\kappa_9^{-2}$. Holding the four-dimensional Newton constant alone fixed gives $A(R)\propto R^2$ and the same round locus. Independently fixing both Newton constants fixes the volume.

Determining $G_F$ requires a charged-current sector with specified couplings and masses. In a single-doublet extension the vacuum expectation value $v=(\sqrt{2}G_F)^{-1/2}$ requires its own input or field equation. Taking $v$ as free adds it to the surviving geometric parameter $R$. A top mass supplied as a running threshold enters a determination of $v$ only with additional Yukawa data.

**Threshold and running conventions.** The proposition uses tree-level matching with zero threshold corrections. The round metric has connected isometry group $SO(6)$. Keeping all its Killing fields gives six additional gauge vectors beyond $\mathfrak{u}(3)$. Requiring precisely the colour and photon algebra as the full massless gauge algebra would exclude the entire locus for the unmodified metric. A projection or symmetry breaking can remove the extra vectors. Realising a vacuum also requires the background field equations.

For a conditional comparison with the strong scale, choose $\mu_*=\xi/R$ with fixed dimensionless $\xi>0$ in the unwarped product frame. Assume a four-dimensional colour theory below $\mu_*$ with six active quarks above a fixed top threshold $\bar m_t=m_t^{\overline{\mathrm{MS}}}(\bar m_t)$ and five immediately below. Restrict to $R<\xi/\bar m_t$ and to perturbative matching. Take all additional coloured fields and the massive Kaluza–Klein tower outside the running interval, with zero finite threshold corrections. This spectrum is additional input. With $b_n=11-2n/3$, use $d\alpha_3^{-1}/d\log\mu=b_n/(2\pi)$ and continuous one-loop matching at $\bar m_t$. Then

$$
\begin{aligned}
2\pi\alpha_3^{-1}(\mu_*)&=b_5\log(\bar m_t/\Lambda_5)+b_6\log(\mu_*/\bar m_t),\\
\Lambda_5(R)&=\bar m_t^{\,2/23}(\xi/R)^{21/23}
                 \exp[-4\pi^2 A(R)/23].
\end{aligned}
$$

Here $\Lambda_5$ is the one-loop five-flavour $\overline{\mathrm{MS}}$ parameter. Its logarithmic slope in $R$ is $-(21+28\pi^2 A(R))/23$ at fixed $C_9,\xi,\bar m_t$. A supplied $\Lambda_5$ in the image would fit one radius on this interval. The electromagnetic coupling above is evaluated at matching. A comparison to the Thomson coupling $\alpha(0)$ requires the charged spectrum, electroweak threshold matching and the hadronic vacuum polarization. [QCD running, §9.1.1](https://pdg.lbl.gov/2025/reviews/rpp2025-rev-qcd.pdf) · [Threshold convention used in issue 18](https://github.com/arivero/conneskk/issues/18)

**Provenance.** Derived by Codex (GPT-6) and independently checked by GPT-6.1 Terra on 18 November 2026.
