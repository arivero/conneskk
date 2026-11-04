# Language: Python 3 (mpmath).  Heat-cutoff trace of the unfolded circle, D = -i d/dx + D_F (lemma 25 / Prop 23.7):
#   Tr exp(-D^2/Lambda^2) = 2 sum_n exp(-(n pi + theta)^2/s^2),  s = l Lambda.
# Poisson summation: = (2 s/sqrt(pi)) sum_w exp(-w^2 s^2) exp(2 i w theta).  The w=0 term does not depend on theta.
import mpmath as mp
mp.mp.dps = 30
def tr(theta, s):
    return 2*mp.nsum(lambda n: mp.e**(-((n*mp.pi+theta)/s)**2), [-mp.inf, mp.inf])
for s in (2, 3, 5):
    s = mp.mpf(s)
    t0, t1 = tr(0, s), tr(mp.pi/2, s)
    w0 = 2*s/mp.sqrt(mp.pi)
    print("s=%s  Tr(theta=0)=%s  Tr(theta=pi/2)=%s  theta-independent term (2s/sqrt(pi))=%s  relative variation=%s ; predicted 2 e^{-s^2}*2/(1)=%s" %
          (mp.nstr(s,3), mp.nstr(t0,12), mp.nstr(t1,12), mp.nstr(w0,12), mp.nstr((t0-t1)/w0,6), mp.nstr(4*mp.e**(-s**2),6)))
# lemma 25: coefficient (3-d_eff)/2 of the quadratic gauge term, d_eff = d log S / d log s,  S(s)=sum exp(-n^2 pi^2/s^2)
def S(s): return mp.nsum(lambda n: mp.e**(-(n*mp.pi/s)**2), [-mp.inf, mp.inf])
for s in (2, 3, 5):
    s = mp.mpf(s)
    deff = s*mp.diff(S, s)/S(s)
    print("s=%s  d_eff=%s  (3-d_eff)/2=%s" % (mp.nstr(s,3), mp.nstr(deff,8), mp.nstr((3-deff)/2,8)))
