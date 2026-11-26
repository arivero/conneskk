"""Issue 30: conventions, chiral and hypercharge responses, and the condensate-transfer scales.

Python 3, standard library only. Inputs are printed with their sources in results/issues/30.md.
Run: python3 -I paper/chiral_scale_responses.py
"""
from math import log, pi, sqrt

# Charged leptons (pole masses, MeV), PDG 2026 as in results/issues/19.md.
me, mmu, mtau, dmtau = 0.51099895069, 105.6583755, 1776.93, 0.09
# Weak bosons, line-shape (running-width) convention, GeV, and Thomson alpha.
MW, dMW, MZ, dMZ = 80.3625, 0.0077, 91.1879, 0.0020
alpha0 = 1/137.035999177
alphaZ = 1/127.951          # MSbar alpha(M_Z), used only for the running factor of the response
# Nucleons (MeV), pion decay constant (MeV, axial-current residue, 92 MeV convention).
mp, mn = 938.27208943, 939.56542194
fpi, dfpi = 92.07, 0.57
f_over_F, d_f_over_F = 1.064, 0.007   # FLAG, N_f = 2+1
Mpi0 = 134.9768
# Quarks: the issue's mixed-scale inputs (MeV) and the DualSM common-scale weights.
md, ms, mb = 4.67, 93.4, 4180.
mu_over_md = 2.16/4.67
w_common = (0.797, 0.179, 0.025)       # DualSM INVERSE-KOIDE-SCALE.md, every common MSbar scale
Sigma13 = 272.                          # FLAG |<qq>|^(1/3) in MSbar at 2 GeV, N_f = 2+1, MeV


def koide_scale(m):
    return sum(sqrt(x) for x in m)**2/9


def main():
    C_l = koide_scale((me, mmu, mtau))
    M0 = (me + mmu + mtau)/6
    HN = (mp + mn)/6
    B = sqrt(MZ**2 - MW**2)*1000
    aB = alpha0*B
    dB = sqrt((MW*1000*dMW*1000)**2 + (MZ*1000*dMZ*1000)**2)/B
    # Correlated tau error: dC_l/dm_tau and dM0/dm_tau.
    dC = sum(sqrt(x) for x in (me, mmu, mtau))/9/sqrt(mtau)*dmtau
    dM0 = dmtau/6
    print("Reference scales (MeV)")
    print(f"  C_l (Koide)            {C_l:.5f} +- {dC:.5f}")
    print(f"  M_0 = sum m/6          {M0:.5f} +- {dM0:.5f}   (correlation with C_l: 1, both from m_tau)")
    print(f"  m_N/3                  {HN:.5f}")
    print(f"  alpha(0) B             {aB:.4f} +- {alpha0*dB:.4f}")
    for name, x, dx in (("C_l", C_l, dC), ("M_0", M0, dM0)):
        r = x/aB
        dr = r*sqrt((dx/x)**2 + (dB/B)**2)
        print(f"  {name}/(alpha(0) B)       {r:.6f} +- {dr:.6f}")
    print(f"  C_l/(m_N/3) - 1        {C_l/HN - 1:.5%}")

    w_mixed = [x**-0.5/sum(y**-0.5 for y in (md, ms, mb)) for x in (md, ms, mb)]
    C_d = 9/sum(x**-0.5 for x in (md, ms, mb))**2
    print("\nInverse down triple, mixed-scale inputs (4.67, 93.4, 4180) MeV")
    print(f"  C_d = {C_d:.5f} MeV, sqrt(C_l C_d) = {sqrt(C_l*C_d):.5f} MeV, weights {[round(w, 4) for w in w_mixed]}")

    # Chiral response of log(C_l C_d / f_pi^2) to log m_d at fixed m_u, m_s, m_b and strong input.
    xi = Mpi0**2/(16*pi**2*(fpi/f_over_F)**2)
    kf = (f_over_F - 1) - xi                    # NLO SU(2): d ln f_pi / d ln mhat = xi (lbar4 - 1)
    dkf = sqrt(d_f_over_F**2 + xi**2)           # input error plus an NNLO allowance of size xi^2/xi = xi
    share = 1/(1 + mu_over_md)
    print("\nChiral response R_d = d ln(C_l C_d/f_pi^2)/d ln m_d")
    print(f"  xi = M_pi^2/(4 pi F)^2 = {xi:.5f}, kappa_f = d ln f_pi/d ln mhat = {kf:.4f} +- {dkf:.4f}")
    print(f"  m_d/(m_u+m_d) = {share:.4f}")
    for label, wd in (("common-scale w_d", w_common[0]), ("mixed-scale w_d", w_mixed[0])):
        for kS in (-0.07, 0., 0.07):
            print(f"  {label} {wd:.4f}, kappa_Sigma {kS:+.2f}:  R_d = {wd - 2*share*kf + kS:.4f}")
    # Error budget at kappa_Sigma = 0, common weights; m_u/m_d varied over 0.38..0.53.
    lo = w_common[0] - 2*(1/(1 + 0.53))*(kf + dkf) - 0.07
    hi = w_common[0] - 2*(1/(1 + 0.38))*(kf - dkf) + 0.07
    print(f"  range with m_u/m_d in [0.38, 0.53], kappa_f +- error, |kappa_Sigma| <= 0.07: [{lo:.3f}, {hi:.3f}]")

    # Hypercharge response of log(alpha(0) B) at fixed g, v and fixed hadronic and lepton inputs.
    c2 = (MW/MZ)**2
    tree = 2*c2 + 1
    run = 2*c2*(alpha0/alphaZ) + 1
    print("\nHypercharge response d ln(alpha(0) B)/d ln g'")
    print(f"  on-shell cos^2 = {c2:.5f}; tree {tree:.4f}; with alpha(0)/alpha(M_Z) factor {run:.4f}")
    for lam in (1e3, 1e6):
        for m in (me, mtau):
            q = 3*alpha0/(2*pi)*log(lam/m)*2*c2
            print(f"  QED response of a lepton mass, Lambda = {lam/1000:g} GeV, m = {m:.4g} MeV: {q:.4f}")

    # Condensate transfer by a dimension-six operator: m = c |<dd>| / (2 Lambda^2).
    Sigma = Sigma13**3
    print("\nTransfer scale Lambda/sqrt(c) needed by m = c|<qq>|/(2 Lambda^2), |<qq>|^(1/3) = 272 MeV")
    for name, m in (("tau", mtau), ("mu", mmu), ("e", me)):
        print(f"  {name:4s} {sqrt(Sigma/(2*m)):9.2f} MeV")
    # C_l C_d = f_pi^2 rewritten with GMOR: Lambda/(sum sqrt c) = w_d sqrt(share/2) (F/f_pi) M_pi.
    eff = w_common[0]*sqrt(share/2)/f_over_F*Mpi0
    print(f"  C_l C_d = f_pi^2 with GMOR: Lambda/(sum_i sqrt c_i) = {eff:.2f} MeV = {eff/Mpi0:.4f} M_pi0")
    # Held-out pion decay: the charged-current partner of the same gauge-invariant operator.
    GF, Vud = 1.1663785e-5, 0.97373
    v2 = 1/(sqrt(2)*GF)                     # GeV^2
    for label, f in (("F (chiral limit)", fpi/f_over_F), ("f_pi (physical)", fpi)):
        r = v2/(Vud*(f/1000)**2)
        print(f"  pion pseudoscalar/SM amplitude per unit mass fraction, GMOR with {label}: {r:.4g};"
              f" |ratio| < 0.01 needs fraction < {0.01/r:.2g}")
    for name, m in (("tau", mtau), ("mu", mmu), ("e", me)):
        # Dimension eight: (c/Lambda^4)(L H e)(d H^dag Q) at <H> = v/sqrt2 gives c v^2/(2 Lambda^4) in place of c/Lambda^2.
        L6 = sqrt(Sigma/(2*m))/1000         # GeV, dimension-six transfer scale for c = 1
        print(f"  dimension-eight variant, {name}: Lambda = c^(1/4) * {sqrt(sqrt(v2/2)*L6):.2f} GeV;"
              f" at c = 16 pi^2: {sqrt(sqrt(v2/2)*L6)*(16*pi**2)**0.25:.1f} GeV against v = {sqrt(v2):.1f} GeV")
    F = fpi/f_over_F
    dF = F*sqrt((dfpi/fpi)**2 + (d_f_over_F/f_over_F)**2)
    print(f"  Delbourgo-Scadron M_q = 2 pi F/sqrt3 with F = {F:.2f}({dF:.2f}) MeV: {2*pi*F/sqrt(3):.2f} +- {2*pi*dF/sqrt(3):.2f} MeV;"
          f" with physical f_pi: {2*pi*fpi/sqrt(3):.2f} MeV")


if __name__ == "__main__":
    main()
