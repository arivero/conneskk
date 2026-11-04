# Language: Python 3 (numpy, scipy).  Re-run of the "flat family with the angle tied" paragraph of file 10,
# with the author's A0 (21 integer generators) and with the lemma-23/24/26 gauge content (16 integer + 9 half-integer).
import numpy as np
from scipy.integrate import quad
from scipy.optimize import brentq
from math import pi, sqrt
Z5 = 1.0369277551433699
u0 = 3*Z5/16

def F(z):
    if z <= 0: return 0.0
    f = lambda x: x**3*np.log1p(z/np.sinh(x)**2)
    return quad(f, 0, 1, limit=300)[0] + quad(f, 1, 50, limit=300)[0]
def J(z):
    f = lambda x: x**3/(np.sinh(x)**2 + z)
    return quad(f, 0, 1, limit=300)[0] + quad(f, 1, 50, limit=300)[0]

# tabulate F and J on a log grid to speed up (interpolate in log z)
zs = np.concatenate(([0.0], np.logspace(-8, 0, 400)))
Ftab = np.array([F(z) for z in zs]); Jtab = np.array([J(z) for z in zs])
def Fi(z): return np.interp(z, zs, Ftab)
def Ji(z): return np.interp(z, zs, Jtab)
# (spot check of interpolation against direct quadrature)
for z in (1e-4, 0.03, 0.5, 1.0):
    assert abs(Fi(z)-F(z)) < 2e-5*max(1,F(z)) and abs(Ji(z)-J(z)) < 2e-4*J(z), (z, Fi(z), F(z), Ji(z), J(z))

def G(th, nf, a0):
    t = np.sin(th)**2; u = t*(1-t)
    return a0 + 3*Fi(2*u) + 1.5*Fi(3.2*u) - nf*Fi(t)
def dGdth(th, nf):
    t = np.sin(th)**2; u = t*(1-t)
    dt = (1-2*t)*(6*Ji(2*u) + 4.8*Ji(3.2*u)) - nf*Ji(t)
    return dt*np.sin(2*th)
def S(th, nf, a0): return th*dGdth(th, nf) - 4*G(th, nf, a0)

def report(label, nf, a0, thmax=pi/2):
    ths = np.linspace(1e-3, thmax, 4001)
    Sv = np.array([S(t, nf, a0) for t in ths])
    roots = []
    for i in range(len(ths)-1):
        if Sv[i]*Sv[i+1] < 0:
            r = brentq(lambda t: S(t, nf, a0), ths[i], ths[i+1])
            kind = 'min' if Sv[i] < 0 else 'max'    # V' ~ l^-5 S ; S<0 -> V decreasing in l; sign change - to + is a minimum of V(l)
            roots.append((round(r, 4), round(float(np.arcsin(np.sin(2*r)/sqrt(2))/r), 4), kind))
    Gs = np.array([G(t, nf, a0) for t in ths])
    print("%-52s A0=%7.3f  G(pi/2)=%8.3f  max(theta G'/G)=%6.3f  stationary (theta*, M_W/m, type): %s" % (label, a0, G(pi/2, nf, a0), np.max(ths*np.array([dGdth(t,nf) for t in ths])/Gs) if np.all(Gs>0) else float('nan'), roots))

A_file_3g = u0*(4*48 - 63)         # author: 129 u0
A_file_1g = u0*(4*16 - 63)         # author: 1 u0
A_corr_3g = u0*(4*48 - 3*(16-15/16*9))   # lemma 23/24/26 content
A_corr_1g = u0*(4*16 - 3*(16-15/16*9))
print("A0 values: file 3g %.3f, file 1g %.3f, corrected 3g %.3f, corrected 1g %.3f" % (A_file_3g, A_file_1g, A_corr_3g, A_corr_1g))
print("--- window theta in (0, pi/2] ---")
report("top only, nf=6, file A0 (3 generations)", 6, A_file_3g)
report("top only, nf=6, corrected A0 (3 generations)", 6, A_corr_3g)
report("top only + graviton (-5u0), file", 6, A_file_3g-5*u0)
report("top only + graviton (-5u0), corrected", 6, A_corr_3g-5*u0)
report("universal 3 gen nf=48, file A0", 48, A_file_3g)
report("universal 3 gen nf=48, corrected A0", 48, A_corr_3g)
report("universal 1 gen nf=16, file A0", 16, A_file_1g)
report("universal 1 gen nf=16, corrected A0", 16, A_corr_1g)
print("--- folded continuation theta in (pi/2, 3pi] (G is pi-periodic): stationary points of V(l)=l^-4 G(lm) beyond the fundamental domain ---")
def report_folded(label, nf, a0):
    ths = np.linspace(pi/2+1e-3, 3*pi, 6000)
    def Gf(t): return G(t % pi if (t % pi) <= pi/2 else pi-(t % pi), nf, a0)
    def dGf(t):
        r = t % pi
        return dGdth(r, nf)      # derivative of the periodic even function: G'(theta) = G'(theta mod pi)
    Sv = np.array([t*dGf(t) - 4*Gf(t) for t in ths])
    roots = [round(float(0.5*(ths[i]+ths[i+1])),3) for i in range(len(ths)-1) if Sv[i]*Sv[i+1] < 0]
    print("%-45s sign changes of theta G' - 4G at theta ~ %s" % (label, roots[:8]))
report_folded("top only nf=6, corrected A0", 6, A_corr_3g)
report_folded("top only nf=6, file A0", 6, A_file_3g)
