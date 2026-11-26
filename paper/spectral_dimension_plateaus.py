#!/usr/bin/env python3
"""Numerical check (Python 3, mpmath and NumPy) of the spectral-dimension theorem
of results/issues/01.md, section 1.

For a compact factor with scalar heat trace K(t) put d(t) = -2 dlog K/dlog t.
The script checks, with exact series evaluated in two representations (the
direct eigenvalue sum and its Poisson dual) that agree where both converge:

  (a) Neumann interval, s = pi^2 t/l^2:
      d_I(s) < 1/(1+sqrt(s/pi)) for s > 0;
      |d_I(s) - 1/(1+sqrt(s/pi))| <= (40/s) exp(-pi^2/s) for s <= 1;
      d_I(s) <= 2 s exp(-s) for s >= log 2.
  (b) Round S^5_R, tau = t/R^2 <= 1/5:
      d_5 = 5 - 8 tau + 4 tau/(3 - 2 tau) + rho, |rho| <= 7 (pi^2/tau)^3 exp(-pi^2/tau),
      0 < 5 - d_5 <= 20 tau/3.
  (c) The three plateau inequalities on M^4 x S^5_R x I_l x I_d, tested on
      200000 random samples, and the plateau table for l = R t0, d = R t0^2.
  (d) Football: |d_fb - 1| <= tau/2 + 25 exp(-tau q^2/2) + 4.01 (pi^2/tau) exp(-pi^2/tau)
      on 1/q^2 <= tau <= 1, on grids for q = 1, 3, 10, 30, 100, 300, and the four
      sums of the second comment of issue 1.
  (e) Crossings at fixed length ratios: the round S^2 and the matched
      projective product CP^2_b x S^2_r with b^2 = 16 r^2/3, with monotonicity
      tested on a logarithmic grid.

Run from the repository root:  python3 -I paper/spectral_dimension_plateaus.py
Exit status 0 when every check passes.
"""

import math
import sys

import mpmath as mp
import numpy as np

mp.mp.dps = 40
PI = math.pi
passed = 0
failed = 0


def check(name, ok, detail=""):
    global passed, failed
    if ok:
        passed += 1
    else:
        failed += 1
    print(f"  [{'PASS' if ok else 'FAIL'}] {name}" + (f"  [{detail}]" if detail else ""))
    return ok


# ---------------------------------------------------------------- interval
def dI_direct(s):
    """2 s sum n^2 e^{-s n^2} / sum e^{-s n^2}, n >= 0 (float, s not too small)."""
    N = int(math.sqrt(80.0 / s)) + 3
    n = np.arange(N, dtype=float)
    w = np.exp(-s * n * n)
    return 2.0 * s * float((n * n * w).sum() / w.sum())


def dI_dual(s):
    """Jacobi form: A (Theta - 2 u P)/(1 + A Theta), u = pi^2/s, A = sqrt(pi/s)."""
    u = PI * PI / s
    A = math.sqrt(PI / s)
    n = np.arange(1, 12, dtype=float)
    e = np.exp(-u * n * n)
    Theta = 1.0 + 2.0 * float(e.sum())
    P = 2.0 * float((n * n * e).sum())
    return A * (Theta - 2.0 * u * P) / (1.0 + A * Theta)


def dI(s):
    return dI_dual(s) if s < 1.0 else dI_direct(s)


def delta_I(s):
    """d_I(s) - 1/(1+sqrt(s/pi)) for s < 1 in the cancellation-free form
    A[(Theta - 1) - 2 u P (1 + A)] / ((1 + A Theta)(1 + A)), with Theta - 1 and P
    summed directly (mpmath); the difference lies far below double precision."""
    s = mp.mpf(s)
    u = mp.pi ** 2 / s
    A = mp.sqrt(mp.pi / s)
    Tm1 = 2 * mp.nsum(lambda n: mp.e ** (-u * n * n), [1, mp.inf])
    P = 2 * mp.nsum(lambda n: n * n * mp.e ** (-u * n * n), [1, mp.inf])
    return A * (Tm1 - 2 * u * P * (1 + A)) / ((1 + A * (1 + Tm1)) * (1 + A))


def dI_mp(s):
    s = mp.mpf(s)
    if s < 1:
        u = mp.pi ** 2 / s
        A = mp.sqrt(mp.pi / s)
        Theta = 1 + 2 * mp.nsum(lambda n: mp.e ** (-u * n * n), [1, mp.inf])
        P = 2 * mp.nsum(lambda n: n * n * mp.e ** (-u * n * n), [1, mp.inf])
        return A * (Theta - 2 * u * P) / (1 + A * Theta)
    num = mp.nsum(lambda n: n * n * mp.e ** (-s * n * n), [1, mp.inf])
    den = 1 + mp.nsum(lambda n: mp.e ** (-s * n * n), [1, mp.inf])
    return 2 * s * num / den


# ---------------------------------------------------------------- round S^5
def d5_direct(tau):
    N = int(math.sqrt(80.0 / tau)) + 6
    k = np.arange(N, dtype=float)
    lam = k * (k + 4)
    m = (k + 1) * (k + 2) ** 2 * (k + 3) / 12.0
    w = m * np.exp(-tau * lam)
    return 2.0 * tau * float((lam * w).sum() / w.sum())


def d5_dual(tau):
    """d_5 = -2 tau (4 + F'/F), F = theta'' + theta', theta = sqrt(pi) sum_n h_n,
    h_n = tau^{-1/2} exp(-a_n/tau); the derivatives are exact term by term."""
    F = 0.0
    Fp = 0.0
    for n in range(-6, 7):
        y = PI * PI * n * n / tau
        h = tau ** -0.5 * math.exp(-y)
        h1 = h / tau * (y - 0.5)
        h2 = h / tau ** 2 * (y * y - 3 * y + 0.75)
        h3 = h / tau ** 3 * (y ** 3 - 7.5 * y * y + 11.25 * y - 1.875)
        F += h2 + h1
        Fp += h3 + h2
    return -2.0 * tau * (4.0 + Fp / F)


def d5(tau):
    return d5_dual(tau) if tau < 0.5 else d5_direct(tau)


def d5_main(tau):
    return 5 - 8 * tau + 4 * tau / (3 - 2 * tau)


# ---------------------------------------------------------------- football
def dfb(tau, q):
    """Scalar spectrum l(l+1)/R^2 with multiplicity 1 + 2 floor(l/q)."""
    L = int(math.sqrt(80.0 / tau)) + 10
    l = np.arange(L, dtype=np.longdouble)
    lam = l * (l + 1)
    w = (1 + 2 * np.floor(l / q)) * np.exp(-np.longdouble(tau) * lam)
    return float(2 * np.longdouble(tau) * (w * lam).sum() / w.sum())


def r_fun(s):
    return 41.0 * math.exp(-PI * PI / s) / s


def check_transition_times():
    sigma = mp.findroot(lambda s: dI_mp(s) - mp.mpf("0.5"), (1.8, 2.0))
    slope = mp.diff(dI_mp, sigma)
    kappa = float(3 * mp.pi ** mp.mpf("1.5") / (20 * mp.sqrt(sigma)))
    eta = float(3 * mp.pi / 20 * (-mp.mpf(49) / 50 - 1 / (2 * sigma * slope)))
    check("fixed-tolerance upper edge at half height", abs(float(sigma / mp.pi**2) - 0.19294073175) < 1e-10)
    check("elementary edge falls outside the half-height band", abs(9 + dI(PI) - 9.26035675914) < 1e-10)

    def crossing(function):
        lo, hi = 0.8, 2.6
        assert function(lo) > 0 > function(hi)
        for _ in range(60):
            middle = (lo + hi) / 2
            if function(middle) > 0:
                lo = middle
            else:
                hi = middle
        return (lo + hi) / 2

    errors = []
    for u in (0.02, 0.01, 0.005):
        w = kappa * u + eta * u**2
        early = crossing(lambda s: 4 + dI(s) + dI(u*u*s) + d5(u*u*w*s/PI**2) - 10.5)
        late = crossing(lambda s: 4 + dI(s) + dI(s/(u*u)) + d5(w*s/PI**2) - 9.5)
        errors.append(abs(late / early - 1))
    check("quadratic tuning leaves a cubic error", all(7.8 < a/b < 8.2 for a, b in zip(errors, errors[1:])))
    check("finite hierarchy at u=0.01", abs(errors[1] - 4.47308e-6) < 1e-10)

def main():
    print("=" * 72)
    print("Spectral-dimension plateaus and crossings (Python 3, mpmath, NumPy)")
    print("=" * 72)

    print("\n(a) Neumann interval")
    agree = max(abs(dI_direct(s) - dI_dual(s)) for s in (0.3, 0.7, 1.0, 1.5, 3.0))
    check("direct and Jacobi forms agree on 0.3 <= s <= 3", agree < 1e-13, f"{agree:.1e}")
    small = np.exp(np.linspace(math.log(1e-8), 0.0, 600))
    ok1 = all(delta_I(s) < 0 for s in small[:-1])
    ok1 &= all(dI_mp(s) < 1 / (1 + mp.sqrt(mp.mpf(s) / mp.pi))
               for s in np.exp(np.linspace(0.0, math.log(200.0), 600)))
    check("d_I(s) < 1/(1+sqrt(s/pi)) on 1200 points, 1e-8 <= s <= 200 (mpmath)", ok1)
    agree = abs(delta_I(0.5) - (dI_mp(0.5) - 1 / (1 + mp.sqrt(mp.mpf(0.5) / mp.pi))))
    check("cancellation-free difference agrees with the direct difference at s = 1/2", agree < 1e-35,
          mp.nstr(agree, 3))
    ok2 = True
    worst = 0.0
    for s in small:
        dev = abs(delta_I(s))
        bound = 40 * mp.e ** (-mp.pi ** 2 / s) / s
        ok2 &= dev <= bound
        worst = max(worst, float(dev / bound))
    check("|d_I - 1/(1+sqrt(s/pi))| <= (40/s) e^{-pi^2/s} on 600 points, 1e-8 <= s <= 1 (mpmath)", ok2,
          f"max ratio {worst:.3f}")
    ok3 = all(dI(s) <= 2 * s * math.exp(-s) * (1 + 1e-13) for s in np.linspace(math.log(2), 60, 3000))
    check("d_I(s) <= 2 s e^{-s} on log 2 <= s <= 60", ok3)

    print("\n(b) Round S^5")
    agree = max(abs(d5_direct(t) - d5_dual(t)) for t in (0.05, 0.1, 0.2, 0.4))
    check("direct and Jacobi forms agree on 0.05 <= tau <= 0.4", agree < 1e-12, f"{agree:.1e}")
    okb = True
    worst = 0.0
    for tau in np.exp(np.linspace(math.log(1e-6), math.log(0.2), 2000)):
        dd = d5(tau)
        rho = dd - d5_main(tau)
        rb = 7 * (PI * PI / tau) ** 3 * math.exp(-PI * PI / tau)
        okb &= 0 < 5 - dd <= 20 * tau / 3 and abs(rho) <= rb + 1e-13
        worst = max(worst, abs(rho))
    check("0 < 5 - d_5 <= 20 tau/3 and |rho| <= bound (to rounding) on 1e-6 <= tau <= 1/5", okb,
          f"max |rho| {worst:.1e}")
    rb = 7 * (PI * PI / 0.2) ** 3 * math.exp(-PI * PI / 0.2)
    check("rho bound at tau = 1/5 is below 1e-15", rb < 1e-15, f"{rb:.2e}")

    print("\n(c) Three plateaus on M^4 x S^5_R x I_l x I_d (R = 1)")
    rng = np.random.default_rng(1)
    n_ok = 0
    n_tested = 0
    for _ in range(200000):
        l = 10 ** rng.uniform(-5, 0)
        dd = l * 10 ** rng.uniform(-5, 0)
        t = 10 ** rng.uniform(-14, math.log10(0.2))
        sl = PI * PI * t / l ** 2
        sd = PI * PI * t / dd ** 2
        ds = 4 + d5(t) + dI(sl) + dI(sd)
        x = math.sqrt(PI * t)
        good = True
        tested = False
        if sd <= 1:
            tested = True
            lo = 11 - 20 * t / 3 - x / l - x / dd - r_fun(sl) - r_fun(sd)
            good &= lo - 1e-12 <= ds <= 11
        if sd >= math.log(2) and sl <= 1:
            tested = True
            lo = 10 - 20 * t / 3 - x / l - r_fun(sl)
            good &= lo - 1e-12 <= ds <= 10 + 2 * sd * math.exp(-sd) + 1e-12
        if sl >= math.log(2):
            tested = True
            good &= 9 - 20 * t / 3 - 1e-12 <= ds <= 9 + 2 * sl * math.exp(-sl) + 2 * sd * math.exp(-sd) + 1e-12
        n_tested += tested
        n_ok += good
    check("all applicable inequalities hold on 200000 random samples", n_ok == 200000,
          f"{n_tested} samples in at least one regime")

    def dsum(t, l, dd):
        return 4 + d5(t) + dI(PI * PI * t / l ** 2) + dI(PI * PI * t / dd ** 2)

    table = {1e-2: ((9.98338, 9.94659, 9.00023, 8.99325), (0.43983, 39.295)),
             1e-3: ((9.99913, 9.98247, 9.00090, 8.99932), (0.45289, 3929.7))}
    for t0, (vals, band) in table.items():
        l, dd = t0, t0 * t0
        pts = (10 * dd * dd / PI ** 2, dd * l / PI ** 2, 10 * l * l / PI ** 2, l / PI ** 2)
        got = [dsum(t, l, dd) for t in pts]
        check(f"t0 = {t0:g}: d_s at 10d^2/pi^2, dl/pi^2, 10l^2/pi^2, lR/pi^2",
              all(round(g, 5) == v for g, v in zip(got, vals)), ", ".join(f"{g:.5f}" for g in got))
        f = lambda y, c: dsum(math.exp(y) * dd * dd, l, dd) - c
        lo = math.exp(mp.findroot(lambda y: f(float(y), 10.1), (math.log(0.2), math.log(1.0)), solver="bisect"))
        hi = math.exp(mp.findroot(lambda y: f(float(y), 9.9), (math.log(band[1] / 2), math.log(band[1] * 2)),
                                  solver="bisect"))
        check(f"t0 = {t0:g}: band within 0.1 of 10 is {band[0]} to {band[1]} in t/d^2",
              f"{lo:.5g}" == f"{band[0]:.5g}" and f"{hi:.5g}" == f"{band[1]:.5g}", f"{lo:.5g} to {hi:.5g}")

    check_transition_times()

    print("\n(d) Football")
    vals = [5 + dfb(x, 100) for x in (1e-7, 1e-3, 1e-2, 5.0)]
    check("5 + d_fb at q = 100, tau = 1e-7, 1e-3, 1e-2, 5: 6.999667, 5.999824, 5.995000, 5.000908",
          [round(v, 6) for v in vals] == [6.999667, 5.999824, 5.995000, 5.000908],
          ", ".join(f"{v:.6f}" for v in vals))
    okd = True
    worst = 0.0
    for q in (1, 3, 10, 30, 100, 300):
        for tau in np.exp(np.linspace(math.log(1.0 / q ** 2), 0.0, 400)):
            dev = abs(dfb(tau, q) - 1)
            bnd = tau / 2 + 25 * math.exp(-tau * q * q / 2) + 4.01 * (PI * PI / tau) * math.exp(-PI * PI / tau)
            okd &= dev <= bnd * (1 + 1e-12) + 1e-15
            worst = max(worst, dev / bnd)
    check("|d_fb - 1| <= tau/2 + 25 e^{-tau q^2/2} + rho_0 bound on 1/q^2 <= tau <= 1", okd,
          f"max ratio {worst:.3f}")

    print("\n(e) Crossings at fixed length ratios (mpmath)")

    def K_S2(x):
        return mp.nsum(lambda l: (2 * l + 1) * mp.e ** (-x * l * (l + 1)), [0, mp.inf])

    def d_S2(x):
        x = mp.mpf(x)
        return -2 * x * mp.diff(lambda y: mp.log(K_S2(y)), x)

    x1 = mp.findroot(lambda x: d_S2(x) - 1, 1.27)
    slope = mp.diff(lambda y: d_S2(mp.e ** y), mp.log(x1))
    check("round S^2: d = 1 at t/r^2 = 1.270258388262398", mp.nstr(x1, 16) == "1.270258388262398",
          mp.nstr(x1, 16))
    check("log-slope -1.194134; first-order band width 1.6749 eps",
          mp.nstr(slope, 7) == "-1.194134" and mp.nstr(2 / abs(slope), 5) == "1.6749",
          f"{mp.nstr(slope, 7)}, {mp.nstr(2 / abs(slope), 5)}")
    grid = [mp.e ** y for y in mp.linspace(mp.log(mp.mpf("1e-3")), mp.log(30), 200)]
    vals = [d_S2(x) for x in grid]
    check("d_S2 strictly decreasing on 200 log-spaced points, 1e-3 <= t/r^2 <= 30",
          all(a > b for a, b in zip(vals, vals[1:])))

    def d_CP2(x, b2):
        x = mp.mpf(x)
        K = lambda y: mp.nsum(lambda k: (k + 1) ** 3 * mp.e ** (-y * 4 * k * (k + 2) / b2), [0, mp.inf])
        return -2 * x * mp.diff(lambda y: mp.log(K(y)), x)

    b2 = mp.mpf(16) / 3
    xc = mp.findroot(lambda x: d_CP2(x, b2) + d_S2(x) - 4, 0.87)
    a, c = d_CP2(xc, b2), d_S2(xc)
    sl2 = mp.diff(lambda y: d_CP2(mp.e ** y, b2) + d_S2(mp.e ** y), mp.log(xc))
    check("CP^2 x S^2, b^2 = 16 r^2/3: sum = 4 at t/r^2 = 0.871571, terms 2.6376, 1.3624, slope -2.2104",
          mp.nstr(xc, 6) == "0.871571" and mp.nstr(a, 5) == "2.6376" and mp.nstr(c, 5) == "1.3624"
          and mp.nstr(sl2, 5) == "-2.2104",
          f"{mp.nstr(xc, 6)}, {mp.nstr(a, 5)}, {mp.nstr(c, 5)}, {mp.nstr(sl2, 5)}")
    grid = [mp.e ** y for y in mp.linspace(mp.log(mp.mpf("1e-3")), mp.log(30), 120)]
    vc = [d_CP2(x, b2) for x in grid]
    vs = [d_S2(x) for x in grid]
    check("d_CP2 and d_S2 strictly decreasing on 120 log-spaced points, 1e-3 <= t/r^2 <= 30",
          all(p > q for p, q in zip(vc, vc[1:])) and all(p > q for p, q in zip(vs, vs[1:])))
    m16 = min(max(4 - p, q) for p, q in zip(vc, vs))
    check("max(4 - d_CP2, d_S2) >= 1.36 on the grid (minimum at the crossing)", m16 >= 1.36 and c > 1.36,
          mp.nstr(m16, 5))
    b2 = mp.mpf(100)
    xc = mp.findroot(lambda x: d_CP2(x, b2) + d_S2(x) - 4, 0.1)
    v = 4 - d_CP2(xc, b2)
    check("b^2/r^2 = 100: the same minimum falls to 0.20", mp.nstr(v, 2) == "0.2", mp.nstr(v, 5))

    print()
    print("=" * 72)
    print(f"RESULTS: {passed} passed, {failed} failed")
    print("=" * 72)
    return 1 if failed else 0


if __name__ == "__main__":
    sys.exit(main())
