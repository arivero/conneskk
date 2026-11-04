You are a mathematical expert. Work ALONE: do not spawn subagents, do not delegate, do not run parallel agents or parallel tool calls. You may read files and run small local computations (python/numpy/sympy) to check algebra, but the deliverable is a rigorous proof.

Context (read-only): /home/codexssh/conneskk/canonical_research.md, section 8 "The decisive monopole collapse" (lines 327-391) and section 9 (lines 392-472, especially "off-diagonal connection components between the flux summands").

Setting. S^5 = SU(3)/SU(2), isotropy SU(2) embedded in the upper-left 2x2 block (stabilizer of e_3). Reductive split su(3) = su(2) + m, m = R*Z + C^2 with Z = i diag(1,1,-2) (up to normalization) and C^2 the off-diagonal block; as an SU(2)-module m = (trivial real line) + (fundamental C^2 viewed as real 4-dim). W -> S^5 is the rank-2 bundle W_u = u^perp, i.e. SU(3) x_{SU(2)} C^2. The vertical monopole Dirac kernels are K_n = Sym^{n-1}(W^*) = SU(3) x_{SU(2)} Sym^{n-1}(C^2)^*, n = 1, 2, 3.

Questions (prove each answer):

Part A (canonical connection, short). With the canonical connection of SU(3) -> S^5 (horizontal space m), curvature at the base point is F(X,Y) = -pr_su(2)[X,Y] for X,Y in m. Show that the holonomy group is all of SU(2) (compute the span of pr_su(2)[m,m]; note which part of m contributes), and deduce End_parallel(K_1 + K_2 + K_3) = C + C + C. Also: with multiplicities r_n, the parallel algebra is the direct sum of M_{r_n}(C).

Part B (all invariant connections). By Wang's theorem, SU(3)-invariant connections on E = K_1 + K_2 + K_3 (homogeneous bundle with isotropy representation rho = Sym^0 + Sym^1 + Sym^2 duals) correspond to SU(2)-equivariant linear maps Lambda: m -> u(E_o) (unitary ones; say whether you also allow non-unitary). 
 (B1) Determine the space of such Lambda explicitly (dimension, parametrization): the diagonal parts (only the Z-direction can contribute scalars on each K_n?) and off-diagonal parts Hom(K_i,K_j) that contain the fundamental (which pairs i,j? K_1-K_2 and K_2-K_3 contain spin 1/2; K_1-K_3 does not).
 (B2) Give the curvature formula F_Lambda(X,Y) = [Lambda X, Lambda Y] - Lambda([X,Y]_m) - rho([X,Y]_su(2)) and determine the holonomy Lie algebra (Ambrose-Singer / for invariant connections: the smallest subalgebra containing the curvature values and closed under [Lambda(X), .] for X in m; state the precise theorem you use, e.g. Kobayashi-Nomizu II, Ch. X, Thm 2.1 / Wang).
 (B3) Determine, for every invariant connection, the algebra of parallel endomorphisms of E. Main question: is it always abelian (contained in C+C+C), or is there an invariant connection whose parallel endomorphism algebra contains M_2(C) or M_3(C) (or any non-abelian algebra)? Also answer the same question for E' = K_1 + K_1 + K_2 (flux choice (1,1,2) used in section 9) and say what algebra of parallel endomorphisms arises there for invariant connections.
 
If the general case is too large, solve it completely for E' and for K_1 + K_2, and give the strongest rigorous statement you can for K_1+K_2+K_3, clearly marking what is proved.

Output format (Markdown, plain ASCII math is fine): Statement, Hypotheses, Proof for each part, then "Verdict on corpus claim": is the section-8 obstruction specific to the canonical connection, robust for all SU(3)-invariant connections, or evadable (and how)? Be concise but complete; no padding.
