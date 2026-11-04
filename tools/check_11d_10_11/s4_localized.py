# Language: Python 3 (mpmath, numpy, scipy).  Localized fermion channel (lemma 9, condition (c), M=-mu), file 10.
import mpmath as mp
import numpy as np
from scipy.optimize import brentq, minimize_scalar
mp.mp.dps = 30
z5 = mp.zeta(5)

# (1) secular function vs the spectrum of lemma 9:  Phi(p)/Phi(0) = prod_n (1 + p^2/lam_n^2)
def eigenvalues(c, nmax=4000):
    """positive eigenvalues (units l=1, mu=c) of lemma 9, case M=-mu, condition (c)."""
    lam = []
    if c > 1:
        a_, b_ = mp.mpf('1e-9'), c        # tanh s = s/c, s = kappa l ; g(s)=tanh s - s/c >0 just right of 0 (c>1), <0 at s=c
        for _ in range(120):
            m_ = (a_+b_)/2
            if mp.tanh(m_) - m_/c > 0: a_ = m_
            else: b_ = m_
        s = (a_+b_)/2
        lam.append(mp.sqrt(c*c - s*s))
    # tan k = k/c, roots k_n in (n pi, (n+1/2) pi), n>=1 ; and n=0 root in (0, pi/2) iff c<1
    start = 0 if c < 1 else 1
    for n in range(start, nmax):
        lo = n*mp.pi + (mp.mpf('1e-12') if n > 0 else mp.mpf('1e-12'))
        hi = n*mp.pi + mp.pi/2 - mp.mpf('1e-12')
        f = lambda k: mp.tan(k) - k/c
        k = mp.findroot(f, (lo+hi)/2, solver='anderson', tol=1e-25, verify=False) if False else None
        # bisection (robust)
        a, b = lo, hi
        for _ in range(100):
            m = (a+b)/2
            if f(m) < 0: a = m
            else: b = m
        lam.append(mp.sqrt(c*c + ((a+b)/2)**2))
    return lam
def Phi(w, c): return mp.cosh(w) - (c/w)*mp.sinh(w)
for c in (mp.mpf('0.5'), mp.mpf('2')):
    lam = eigenvalues(c, nmax=3000)
    p = mp.mpf('1.3')
    w = mp.sqrt(p**2 + c**2)
    ratio = Phi(w, c)/Phi(c, c) if False else Phi(w, c)/(mp.e**(-c))
    # product converges slowly (lam_n ~ n pi): use tail correction 1 + p^2/(n pi)^2 -> sinh(p)/p structure
    prod = mp.mpf(1)
    for L_ in lam: prod *= (1 + p**2/L_**2)
    # tail: prod_{n>N}(1+p^2/(n pi)^2) ~ exp(p^2/pi^2 * sum_{n>N} 1/n^2) ~ exp(p^2/(pi^2 N))
    N = len(lam)
    prod *= mp.e**(p**2/(mp.pi**2*N))
    print("c=%s p=%s: Phi(w)/Phi(0) = %s ; prod(1+p^2/lam_n^2) = %s (tail-corrected, N=%d)" % (mp.nstr(c,3), mp.nstr(p,3), mp.nstr(ratio,10), mp.nstr(prod,10), N))

# (2) the l-dependent one-loop term:  8 pi^2 l^4 V_loc = -2 int x^3 log(1 + (w+c)/(w-c) e^{-2w}) dx
def Gloc(c):
    c = mp.mpf(c)
    def f(x):
        if x == 0: return mp.mpf(0)
        w = mp.sqrt(x*x + c*c)
        if c == 0: r = mp.mpf(1)
        else: r = (w + c)**2/(x*x)
        return x**3*mp.log(1 + r*mp.e**(-2*w))
    pts = [0, mp.mpf('1e-6'), mp.mpf('1e-3'), mp.mpf('0.1'), 1, 5, 30, 120]
    return -2*mp.quad(f, pts)
print("G_loc(0) = %s ; -(45/64) zeta5 = %s" % (mp.nstr(Gloc(0),12), mp.nstr(-mp.mpf(45)/64*z5,12)))
grid = [mp.mpf(k)/20 for k in range(0, 161)]
vals = [Gloc(c) for c in grid]
imin = min(range(len(grid)), key=lambda i: vals[i])
print("grid minimum: c=%s G_loc=%s" % (mp.nstr(grid[imin],4), mp.nstr(vals[imin],8)))
res = minimize_scalar(lambda c: float(Gloc(c)), bounds=(float(grid[max(imin-2,0)]), float(grid[min(imin+2,len(grid)-1)])), method='bounded', options={'xatol':1e-6})
print("refined minimum: c*=%.5f  G_loc=%.6f" % (res.x, res.fun))
for c in (0, 0.25, 0.5, 1, 1.5, 2, 3, 4, 6, 8):
    print("c=%-5g G_loc=%-12s  -4c^3e^{-2c}=%-12s  -2e^{-2c}(2c^3+2c^2+5c/4+3/8)=%-12s" % (c, mp.nstr(Gloc(c),8), mp.nstr(-4*c**3*mp.e**(-2*c),8), mp.nstr(-2*mp.e**(-2*c)*(2*c**3+2*c**2+mp.mpf(5)/4*c+mp.mpf(3)/8),8)))
# (3) the bulk-mass dependent terms dropped in G_loc:   w-term (bulk, ~ l mu^5) and log(1-c/w) (wall, ~mu^4):
#     in dimensional regularization these are  -2*[ (1/2)... ]  -- only mention, evaluate closed forms:
#     bulk: -2 * int d^4p/(2pi)^4 l sqrt(p^2+mu^2) -> 8 pi^2 l^4 V_bulk = -2 * int x^3 w dx  (dim reg) = -2 * c^5 * Gamma(-5/2) *... computed below
c = mp.mpf(1)
# dim-reg: int_0^inf x^3 sqrt(x^2+c^2) dx = c^5 * (1/2) B(2,-5/2) = c^5 * Gamma(2)Gamma(-5/2)/(2 Gamma(-1/2))
I_bulk = c**5*mp.gamma(2)*mp.gamma(-mp.mpf(5)/2)/(2*mp.gamma(-mp.mpf(1)/2))
print("dim-reg bulk term at c=1: -2*I = %s  (compare |G_loc min| ~ 1.3): this is the mu^5 l bulk energy dropped in file 10" % mp.nstr(-2*I_bulk,8))
