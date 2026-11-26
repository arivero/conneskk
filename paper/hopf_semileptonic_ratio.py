"""Semileptonic-to-leptonic charged contact and strong-matching sensitivity on the spin Hopf family.

Issue 29. The weak fits, pencils and trajectory are those of hopf_transverse_currents.py (result 97).
For the left lepton and left quark doublet sources j_l, j_q of the charged raising pencil we print
    R(q) = C_lq(q)/C_ll(q),   C_ij(q) = j_i^T (H + a^2 q^2 K)^{-1} j_j   (Euclidean q in GeV),
and the positive combination (C_ll + C_qq - 2 C_lq)/C_ll = Delta^T G Delta / C_ll, Delta = j_q - j_l.
With --strong the script prints the sensitivity of Lambda_3 to a shift of I = 1/(4 pi alpha_s) at 250 GeV.

Use OPENBLAS_NUM_THREADS=1 python3 paper/hopf_semileptonic_ratio.py [--hold-out-fermi] [--lock-scale F]
    [--trajectory] [--strong].
"""
import argparse
from math import log, pi

import numpy as np
from scipy.integrate import quad, solve_ivp
from scipy.linalg import eigh, solve

from dual_tensor_currents import WeakFit
import hopf_transverse_currents as hopf
from finite_flux_currents import radial_basis
from tensor_trajectory import tensors
from weak_current_spectrum import charged_pencil, spline_grid_basis


def contacts(pencil, a, momenta=(0.,)):
    mass, kinetic, sources = pencil[:3]
    out = []
    for q in momenta:
        c = sources.T @ solve(mass + (a*q)**2*kinetic, sources)
        out.append(c)
    return out


def report(label, pencil, a, hadron=None):
    momenta = (0.,) if hadron is None else (0., hadron)
    cs = contacts(pencil, a, momenta)
    c = cs[0]
    delta = pencil[2][:, 1] - pencil[2][:, 0]
    print(f"{label}")
    print(f"  R(0) - 1                      {c[0, 1]/c[0, 0] - 1:.6e}")
    print(f"  (C_ll+C_qq-2C_lq)/C_ll        {(c[0, 0] + c[1, 1] - 2*c[0, 1])/c[0, 0]:.6e}")
    size = len(delta)
    support = np.flatnonzero(abs(delta) > 1e-14)
    print(f"  entries of j_q - j_l          {support.size} nonzero of {size}"
          + (f", indices {support.min()}..{support.max()}" if support.size else ""))
    if hadron is not None:
        ch = cs[1]
        print(f"  R(H_N) - 1                    {ch[0, 1]/ch[0, 0] - 1:.6e}")
        print(f"  C_ll(H_N)/C_ll(0)             {ch[0, 0]/c[0, 0]:.10f}")
    values, vectors = eigh(pencil[0], pencil[1])
    vertices = pencil[2].T @ vectors
    print(f"  first pole (GeV)              {np.sqrt(values[0])/a:.6g}")
    print(f"  first-pole vertex ratio q/l   {vertices[1, 0]/vertices[0, 0]:.12f}")
    parts = (vertices[0]*vertices[1] - vertices[0]**2)/values/c[0, 0]
    for i in np.argsort(-abs(parts))[:3]:
        print(f"  mode at {np.sqrt(values[i])/a:10.5g} GeV contributes {parts[i]:+.4e} to R(0) - 1")


def compact(args):
    model = hopf.HopfModel(lock_scale=args.lock_scale)
    point = hopf.fit(WeakFit(degree=args.degree, hold_out_fermi=args.hold_out_fermi), model)
    eps, roots, a, cv, aux = (point[k] for k in ("epsilon", "stiffness", "a", "cv", "auxiliary_inverse_norm"))
    grid, basis, *_ = radial_basis(-log(eps), args.degree)
    ratio, electric, magnetic, profiles = model.inputs(grid, a, cv, aux)
    pencil = charged_pencil(grid, basis, stiffness=roots, circle_ratio=ratio, period=model.period,
                            flux=electric, magnetic_flux=magnetic, hopf=profiles)
    print(f"Compact point: f_S = {args.lock_scale:g} GeV, hold_out_fermi = {args.hold_out_fermi}")
    print(f"  G_F                           {point['fermi']:.8e}")
    print(f"  Xi at H_N = 0.312 GeV         {point['fermi']*.312**2:.6e}")
    print(f"  e_*^2                         {point['e_star_squared']:.7f}")
    print(f"  1/B (GeV)                     {point['hopf_inverse_radius']:.2f}")
    report("  charged sources", pencil, a, hadron=.312)
    return point, model


def neck(point, model, shape=.001, step=.125):
    """Rebuild the finite-neck charged pencil of hopf_transverse_currents.trajectory."""
    end = max(25., 10.-log(shape))
    grid, basis, _, _ = spline_grid_basis(shape, step, end)
    a = point["meridian"]/(grid.weights @ np.sqrt(grid.f2))
    area = 2*pi*a**2*(grid.weights @ grid.f2)
    relative_b = (point["weak_area"]/area)**(1/7)
    cv = point["cv"]/relative_b**2
    roots = point["stiffness"]/relative_b**2
    cost, _ = tensors(grid, model.tensor_coefficient)
    weak_norm = cv*a**2*(grid.average @ (grid.f2*(grid.f2 + grid.ut**2)))
    aux = (point["photon_norm"] - cost - weak_norm - 6*model.i3/model.period**2)*4*model.period**2/9
    ratio, electric, magnetic, profiles = model.inputs(grid, a, cv, aux)
    middle = charged_pencil(grid, basis, stiffness=roots, circle_ratio=ratio, period=model.period,
                            flux=electric, magnetic_flux=magnetic, hopf=profiles)
    lower = charged_pencil(grid, basis, stiffness=0., circle_ratio=0., period=model.period,
                           collapsed_tensor=model.tensor_coefficient)
    report(f"Finite neck b = {shape}, step {step}", middle, a)
    report("Uniform shrink (collapsed pencil, unit length)", lower, 1.)


# Strong running: a = alpha_s/pi, da/dln mu^2 = -sum beta_i a^(i+2), MSbar, decoupling at m(m).
ZETA3 = 1.2020569031595942


def betas(nf, loops):
    b = [(11 - 2*nf/3)/4, (102 - 38*nf/3)/16,
         (2857/2 - 5033*nf/18 + 325*nf**2/54)/64,
         (149753/6 + 3564*ZETA3 - (1078361/162 + 6508/27*ZETA3)*nf
          + (50065/162 + 6472/81*ZETA3)*nf**2 + 1093/729*nf**3)/256]
    return b[:loops]


def beta(a, nf, loops):
    return -sum(c*a**(i + 2) for i, c in enumerate(betas(nf, loops)))


def run(a, mu0, mu1, nf, loops):
    s = solve_ivp(lambda t, y: [beta(y[0], nf, loops)], [2*log(mu0), 2*log(mu1)], [a],
                  rtol=1e-12, atol=1e-15)
    return s.y[0, -1]


def lambda_parameter(a, mu, nf, loops):
    b = betas(nf, loops)
    if loops == 1:
        return mu*np.exp(-1/(2*b[0]*a))
    tail = quad(lambda x: -1/beta(x, nf, loops) - 1/(b[0]*x**2) + b[1]/(b[0]**2*x), 1e-12, a, limit=200)[0]
    return mu*np.exp(-(1/(b[0]*a) + b[1]/b[0]**2*log(b[0]*a) - tail)/2)


def lambda3(i250, loops, masses=(162.5, 4.18, 1.27)):
    a, mu = 1/(4*pi**2*i250), 250.
    for nf, m in zip((6, 5, 4), masses):
        a = run(a, mu, m, nf, loops)
        if loops >= 3:
            a *= 1 + 11/72*a**2
        mu = m
    return lambda_parameter(a, mu, 3, loops)


def strong():
    i0 = 1/(4*pi*.10337)
    print(f"Strong sensitivity from I(250 GeV) = {i0:.5f} (alpha_s^(6) = 0.10337)")
    for loops in (1, 2, 3, 4):
        lam = lambda3(i0, loops)
        h = 1e-4
        slope = (log(lambda3(i0 + h, loops)) - log(lambda3(i0 - h, loops)))/(2*h)
        shifts = ", ".join(f"{d:g}: {(lambda3(i0 + d, loops)/lam)**2:.4f}" for d in (.00415, .12315, .15081, .27395))
        print(f"  {loops} loops: Lambda_3 = {lam:.4f} GeV, dlnLambda_3/dI = {slope:.4f}, Xi factors {shifts}")
    print(f"  one-loop slope -8 pi^2/9 = {-8*pi**2/9:.4f}")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--degree", type=int, default=8)
    parser.add_argument("--lock-scale", type=float, default=5000.)
    parser.add_argument("--hold-out-fermi", action="store_true")
    parser.add_argument("--trajectory", action="store_true")
    parser.add_argument("--strong", action="store_true")
    args = parser.parse_args()
    point, model = compact(args)
    if args.trajectory:
        neck(point, model)
    if args.strong:
        strong()


if __name__ == "__main__":
    main()
