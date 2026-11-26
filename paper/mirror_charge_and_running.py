"""Issue 31: mirror charge increment, oblique cross-check, SU(5) and colour running coefficients.

Python 3 with SciPy. Run: python3 -I paper/mirror_charge_and_running.py
"""
from fractions import Fraction as Fr
from math import log, pi

from scipy.integrate import quad, solve_ivp
from scipy.optimize import brentq


def charge_trace():
    # One mirror family, Dirac fields: (N_c, q) for up, down, charged lepton, neutrino.
    family = [(3, Fr(2, 3)), (3, Fr(-1, 3)), (1, Fr(-1)), (1, Fr(0))]
    return 3*sum(n*q*q for n, q in family)


def increment(Q, M, trace=8):
    """Change of the on-shell-subtracted inverse charge at spacelike Q from degenerate Dirac mirrors of mass M."""
    integral = quad(lambda x: x*(1-x)*log(1 + x*(1-x)*Q**2/M**2), 0, 1, epsabs=1e-14, epsrel=1e-13)[0]
    return -(2/pi)*trace*integral


def su5_coefficients():
    N = 5
    T_fund = Fr(1, 2)
    T_antisym = Fr(N - 2, 2)                     # Lambda^2 of SU(N)
    A_fund, A_antisym = 1, N - 4                 # cubic anomaly coefficients
    b0 = Fr(11, 3)*N - Fr(2, 3)*3*(T_antisym + T_fund)   # Weyl fermions: 2/3 T each
    C_A = Fr(N)
    C_fund = Fr(N*N - 1, 2*N)
    C_antisym = Fr((N - 2)*(N + 1), N)
    assert C_fund*N == T_fund*(N*N - 1) and C_antisym*10 == T_antisym*(N*N - 1)
    # Two loops, beta(g) = -b0 g^3/(16 pi^2) - b1 g^5/(16 pi^2)^2; a Weyl field counts half a Dirac field.
    weyl = sum(T*(4*C + Fr(20, 3)*C_A) for T, C in ((T_antisym, C_antisym), (T_fund, C_fund)))/2
    b1 = Fr(34, 3)*C_A**2 - 3*weyl
    return T_antisym, T_fund, A_antisym - A_fund, b0, b1


def hypercharge_index():
    # Left-handed Weyl fields of one family: (multiplicity, Y, T3 list).
    fields = [(3, Fr(1, 6), [Fr(1, 2), Fr(-1, 2)]),   # Q
              (3, Fr(-2, 3), [0]), (3, Fr(1, 3), [0]),  # u^c, d^c
              (1, Fr(-1, 2), [Fr(1, 2), Fr(-1, 2)]),   # L
              (1, Fr(1), [0])]                          # e^c
    trY2 = sum(m*len(t)*y*y for m, y, t in fields)
    trT32 = sum(m*sum(x*x for x in t) for m, _, t in fields)
    return trY2, trT32


# alpha_s running, a = alpha_s/pi, MSbar beta coefficients to four loops.
Z3 = 1.2020569031595942


def betas(nf):
    return [(11 - 2*nf/3)/4, (102 - 38*nf/3)/16,
            (2857/2 - 5033*nf/18 + 325*nf**2/54)/64,
            (149753/6 + 3564*Z3 - (1078361/162 + 6508/27*Z3)*nf
             + (50065/162 + 6472/81*Z3)*nf**2 + 1093/729*nf**3)/256]


def run(alpha, mu0, mu1, nf, loops):
    b = betas(nf)[:loops]
    rhs = lambda t, y: [-sum(c*y[0]**(i + 2) for i, c in enumerate(b))]
    s = solve_ivp(rhs, [2*log(mu0), 2*log(mu1)], [alpha/pi], rtol=1e-12, atol=1e-15)
    return pi*s.y[0, -1]


def main():
    trace = charge_trace()
    print(f"Mirror charge trace sum N_c q^2 over three families: {trace}")
    for M in (300., 2100.):
        print(f"  Q = 1 TeV, M = {M:g} GeV: increment of inverse charge = {increment(1000., M, float(trace)):.4f}")
    values = [increment(1000., M, 8.) for M in (100., 300., 1000., 2100., 1e4, 1e5)]
    print(f"  monotone in M on a sample: {all(a < b < 0 for a, b in zip(values, values[1:]))}; values {[round(v, 5) for v in values]}")
    for M in (2100., 1e4):
        bound = (2/pi)*8*(1000./M)**2/30
        print(f"  decoupling bound (2/pi) 8 Q^2/(30 M^2) at M = {M:g}: {bound:.5f} >= |increment| {abs(increment(1000., M)):.5f}")
    S = 3*(3 + 1)/(6*pi)
    print(f"Degenerate mirror doublets: S = 3 x 4/(6 pi) = {S:.6f}, 2/pi = {2/pi:.6f}; T = 0 since F(x, x) = 0")

    T10, T5, anomaly, b0, b1 = su5_coefficients()
    print(f"SU(5): T(10) = {T10}, T(5bar) = {T5}, cubic anomaly A(10) + A(5bar) = {anomaly}, b0 = {b0}, b1 = {b1}")
    print(f"  check of the two-loop formula on QCD: 102 - 38 n_f/3 at n_f = 6 is {102 - Fr(38, 3)*6}")
    print(f"Colour b0 = 11 - 2 n_f/3: n_f = 6 gives {11 - Fr(2, 3)*6}, n_f = 12 gives {11 - Fr(2, 3)*12}")
    trY2, trT32 = hypercharge_index()
    print(f"One family: tr Y^2 = {trY2}, tr T3^2 = {trT32}, hypercharge index tr Y^2/tr T3^2 = {trY2/trT32}")
    s2 = Fr(3, 5)/(1 + Fr(3, 5))
    print(f"  with g_3^2 = g_2^2 = (5/3) g_Y^2: sin^2 theta_W = g_Y^2/(g_2^2 + g_Y^2) = {s2} = e^2/g_3^2")

    a6 = 0.10118
    a12 = brentq(lambda a: a*(1 + 6*11/72*(a/pi)**2) - a6, 0.05, 0.2)
    print(f"Matching at 300 GeV: alpha_s^(12)(300) = {a12:.5f} from alpha_s^(6)(300) = {a6}")
    for loops in (3, 4):
        print(f"  {loops}-loop: twelve flavours to 1 TeV {run(a12, 300., 1000., 12, loops):.5f};"
              f" six flavours {run(a6, 300., 1000., 6, loops):.5f}")


if __name__ == "__main__":
    main()
