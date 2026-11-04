# Language: Python 3 (mpmath).  Analytic derivative of G_loc(c) with respect to c, evaluated at c = 1 with high precision.
import mpmath as mp
mp.mp.dps = 40
def dGloc(c):
    c = mp.mpf(c)
    def f(x):
        if x == 0: return mp.mpf(0)
        w = mp.sqrt(x*x + c*c)
        r = (w + c)**2/(x*x)                   # (w+c)/(w-c)
        E = mp.e**(-2*w)
        # d/dc of log(1 + r E):  (dr/dc E + r dE/dc)/(1+rE)
        dw = c/w
        dr = 2*(w+c)*(dw+1)/(x*x)
        dE = -2*dw*E
        return x**3*(dr*E + r*dE)/(1 + r*E)
    return -2*mp.quad(f, [0, mp.mpf('1e-8'), mp.mpf('1e-6'), mp.mpf('1e-3'), mp.mpf('0.1'), 1, 5, 30, 150])
for c in ('0.9','0.99','1','1.01','1.1'):
    print(c, mp.nstr(dGloc(c), 15))
