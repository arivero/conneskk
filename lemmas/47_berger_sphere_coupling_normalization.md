# The Killing-form normalization on the Berger five-sphere and Connes' matching value

For STRATEGY T18 (the normalization test of the object at 9) and the parked job 04 (lemmas/README, the two Berger formulas), following [lemma 03](03_mass_weighted_kinetic_terms.md) (cos^2 theta_W = 5/8 in the heavy-up limit of the finite triple) and the lead recorded from GitHub issue 1 of the repository (the round S^5 gives e^2/g_s^2 = 3/8, computed there by Schur's lemma; read by Claude Fable 5.1 on 5 November 2026). Written by Claude Fable 5.1 on 5 November 2026, by hand; the two sphere moments, the formula at eta = 1, 2, 1/2 and the charges of the coordinates in the exterior square of the spinor were checked with numpy (Monte Carlo with 2 x 10^6 points for the moments; script not kept). Referee pending.

**Outcome.** On the Berger five-sphere, the round S^5 in C^3 with the Hopf fibre scaled by eta, the Kaluza-Klein kinetic form of the Killing vectors gives, for the SU(3) acting on C^3 and the central U(1) with charge c on the coordinates,

    e^2 / g_s^2 = (3 + eta^2) / (24 eta^2 c^2)    (Corollary 47.2).

The two formulas of the parked job 04, 3(eta^2 + 3)/(8 eta^2) and 3(eta^2 + 3)/(32 eta^2), are the two charge units c = 1/3 and c = 2/3 on the coordinates; the second is the unit fixed by the spinor of SO(6) = SU(4) at the round point, where the SU(3)-singlet Killing spinor has charge 1 and the triplet -1/3, so that the coordinates, in the exterior square of the spinor, carry 2/3. With that unit the round point eta = 1 gives e^2/g_s^2 = 3/8, the value of Connes' finite triple at matching (sin^2 theta_W = 3/8 with g_2 = g_3, the 5/8 of lemma 03 being cos^2 theta_W). So the normalization test of T18 separates the finite triple from a squashed sphere and not from the round one, which is the point of the Berger family where the isometry enlarges from U(3) to SO(6). The ratio decreases from infinity at eta -> 0 through 3/8 at eta = 1 to 3/32 at eta -> infinity, taking each value once.

## Setting

Let S^5 be the unit sphere in C^3, with the Hopf fibration S^5 -> CP^2 whose fibre at z is the circle e^{i alpha} z, with unit vertical vector i z. The Berger metric g_eta is the round metric on the horizontal space and eta^2 times the round metric on the vertical direction; its volume is V_eta = eta V_1. The group U(3) acts isometrically on (S^5, g_eta) for every eta > 0, through SU(3) and the central circle z -> e^{i alpha} z; at eta = 1 the isometry group is SO(6), whose Lie algebra so(6) = su(4) contains u(3). For a Hermitian traceless T on C^3 the Killing vector of the one-parameter group e^{i t T} is K_T(z) = i T z, and for the central circle with charge c on the coordinates, z -> e^{i c alpha} z, it is K_c(z) = i c z.

The tree-level Kaluza-Klein couplings: the reduction of the Einstein-Hilbert term on a compact internal space K with Killing vectors K_a gives the gauge kinetic term with the matrix

    <K_a, K_b> = int_K g(K_a, K_b) dvol,

so that for an orthogonal basis g_a^{-2} is proportional to <K_a, K_a>, with one overall constant for all generators (Witten, Nucl. Phys. B 186 (1981) 412, equation (3) and the discussion of the couplings; the normalization of each generator on the fields is the charge unit, an input). The colour generators are normalized by tr T^2 = 1/2 on C^3.

## Statements

**Proposition 47.1 (the form on the Berger sphere).** For Hermitian traceless T, T' on C^3 and the central generator with charge c,

    <K_T, K_T'>_eta = V_eta (3 + eta^2) tr(T T') / 12,    <K_c, K_c>_eta = V_eta eta^2 c^2,    <K_T, K_c>_eta = 0.

In particular, for tr T^2 = 1/2, <K_T, K_T>_eta = V_eta (3 + eta^2)/24.

*Proof.* At z, the vertical component of K_T is the real inner product of i T z with the unit vertical vector i z, which is <z, T z> (real, since T is Hermitian), and the horizontal part has squared norm |T z|^2 - <z, T z>^2; so g_eta(K_T, K_T) = |T z|^2 + (eta^2 - 1) <z, T z>^2, and g_eta(K_T, K_T') = Re <T z, T' z> + (eta^2 - 1) <z, T z> <z, T' z>. The moments of the uniform measure on the unit sphere of C^n are int |z_i|^2 = 1/n and int z_i conj(z_j) z_k conj(z_l) = (delta_ij delta_kl + delta_il delta_kj)/(n(n + 1)), so for n = 3

    int <T z, T' z> = tr(T T')/3,    int <z, T z> <z, T' z> = (tr T tr T' + tr(T T'))/12 = tr(T T')/12,

the last for traceless T, T'. Hence <K_T, K_T'>_eta = V_eta [tr(T T')/3 + (eta^2 - 1) tr(T T')/12] = V_eta (3 + eta^2) tr(T T')/12. The central Killing vector is vertical with g_eta(K_c, K_c) = eta^2 c^2 |z|^2 = eta^2 c^2, and <K_T, K_c>_eta = c eta^2 int <z, T z> = c eta^2 tr(T)/3 = 0. ∎

**Corollary 47.2 (the coupling ratio).** With g_s the coupling of the SU(3) generators normalized by tr T^2 = 1/2 and e the coupling of the central circle with charge c on the coordinates,

    e^2 / g_s^2 = <K_T, K_T>_eta / <K_c, K_c>_eta = (3 + eta^2) / (24 eta^2 c^2).

1. c = 1/3, the charge unit on the coordinates themselves, gives 3(eta^2 + 3)/(8 eta^2); c = 2/3 gives 3(eta^2 + 3)/(32 eta^2): the two formulas of the parked job 04, which belong to two charge units and not to two computations.
2. At the round point the Killing spinors form the 4 of SU(4) = Spin(6), which restricts to U(3) as 3_q + 1_{-3q}; with the singlet at charge 1 the triplet has charge -1/3 (the charges of the down quark and the positron, up to the overall sign), Q = diag(-1/3, -1/3, -1/3, 1), and the coordinates of C^3, which span the 3 inside the vector 6 = Lambda^2(4) = 3_{2/3} + conj(3)_{-2/3}, carry c = 2/3. With this unit, e^2/g_s^2 = 3(eta^2 + 3)/(32 eta^2), equal to 3/8 at eta = 1.
3. At eta = 1 the same value follows from Schur's lemma alone: the form is ad-invariant under so(6) = su(4), which is simple, so it is proportional to the trace form in the 4, and tr Q^2 = 3/9 + 1 = 4/3 against tr T^2 = 1/2 gives e^2/g_s^2 = (1/2)/(4/3) = 3/8.
4. The function 3(eta^2 + 3)/(32 eta^2) decreases from infinity at eta -> 0 to 3/32 at eta -> infinity, so each value above 3/32 is taken at exactly one shape, and 3/8 at the round point only.

*Proof.* Items 1 and 2 are substitutions in Proposition 47.1 and the branching of the 4 and of Lambda^2(4) under U(3) in SU(4). Item 3: a U(3)-invariant symmetric form on so(6) that is also invariant under the rest of SO(6), which holds at eta = 1 since SO(6) acts isometrically, is ad(so(6))-invariant, and so(6) is simple. Item 4: the derivative of (eta^2 + 3)/eta^2 = 1 + 3/eta^2 is negative. ∎

**Remark 47.3 (the dictionary).** Connes' finite triple fixes at matching g_3 = g_2 and sin^2 theta_W = 3/8 (lemma 03 reads the same 5/8 as cos^2 theta_W in the heavy-up limit), so e^2 = (3/8) g_3^2 there. The round S^5 gives the same ratio of the colour and electromagnetic couplings, at tree level, with the charge unit of its own Killing spinors. So the test proposed in T18, whether the object at 9 fixes the gauge normalization, separates the finite triple from the squashed spheres and not from the round one; the round point is the point of the Berger family where the isometry algebra enlarges from su(3) + u(1) to su(4), an enhanced-symmetry point in the language of candidate 5 of T18, and the matching value sits there. The values of the ratio along the family lie in (3/32, infinity), and the direction of squashing that lowers the ratio is eta > 1, the fibre stretched.

## Scope

Tree-level Kaluza-Klein reduction of the Einstein-Hilbert term, with no other contribution to the gauge kinetic terms and no threshold corrections; the Berger family of U(3)-invariant metrics on S^5; the charge unit as an input, fixed here by the SU(4) spinor at the round point and continued along the family. The identification of the SU(3) acting on C^3 with colour and of the central circle with electromagnetism is the reading of the 9 end of T18 (a five-dimensional internal space with isometry su(3) + u(1)); the matter content, the running from the matching scale and the physical value of e^2/g_s^2 are outside the statement. The direction the result points to: the round point as the matching point of the dictionary, where both sides agree, and the squashing eta as the parameter that the finite triple does not have.
