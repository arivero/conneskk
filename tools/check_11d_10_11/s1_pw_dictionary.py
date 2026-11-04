# Language: Python 3 (mpmath).  Independent check of Prop 10.1, 10.2, 10.5 and the far-wall D0 formula.
# Source equations: PW (wilmap),(mass),(dil) and BGL (windingmass),(D0mass).
import mpmath as mp
mp.mp.dps = 30
L = 2*mp.pi

def make_z(xt, zL):
    """15+1: slope -7 on (0,xt) [N=15], slope -8 on (xt,L) [N=16]; z(L)=zL (>=0)."""
    zt = zL + 8*(L-xt)
    z0 = zt + 7*xt
    def z(x):
        return z0 - 7*x if x < xt else zt - 8*(x-xt)
    return z, z0, zt

def quad_pw(xt, zL):
    z, z0, zt = make_z(xt, zL)
    pts = [0, xt, L]
    Wm = mp.quad(lambda x: z(x)**(-mp.mpf(1)/3), pts)
    Wp = mp.quad(lambda x: z(x)**(mp.mpf(1)/3), pts)
    Wt = mp.quad(lambda x: z(x)**(-mp.mpf(1)/3), [0, xt]) if xt > 0 else mp.mpf(0)
    R2 = mp.mpf(3)/4 * Wp / Wm**2       # PW (dil), alpha'=2
    theta_t = mp.pi/2 * Wt / Wm         # PW (wilmap)/(mass): lambda = W(x)/(2 W(L)), theta = pi*lambda
    return R2, theta_t, z0, zt

print("== Prop 10.2: closed forms vs quadrature at z(L)=0 ==")
for s in (mp.mpf('0.001'), mp.mpf('0.25'), mp.mpf('0.5'), mp.mpf('0.75'), mp.mpf('0.999')):
    xt = s*L
    R2, th, z0, zt = quad_pw(xt, 0)
    rho = (zt/z0)**(mp.mpf(2)/3)
    th_cf = mp.pi/2 * 8*(1-rho)/(8-rho)
    R2_cf = 14*(8-rho**2)/(8-rho)**2
    print("x_t/L=%s rho=%s  theta quad=%s closed=%s | R^2 quad=%s closed=%s | linear dict %s" %
          (mp.nstr(s,4), mp.nstr(rho,8), mp.nstr(th,10), mp.nstr(th_cf,10), mp.nstr(R2,10), mp.nstr(R2_cf,10), mp.nstr(mp.pi/2*s,8)))
print("limits: R^2(rho=1)=",mp.nstr(14*(8-1)/(7**2),8)," (=2);  R^2(rho=0)=",mp.nstr(14*8/64,8)," (=7/4=(sqrt7/2)^2)")

print("== R >= R_* in the chamber, monotone in B at fixed x_t ==")
for s in (mp.mpf('0.1'), mp.mpf('0.5'), mp.mpf('0.9')):
    xt = s*L
    prev = None
    ok = True
    for zL in [0, 1, 5, 20, 100, 1000, 10**4]:
        R2, th, z0, zt = quad_pw(xt, zL)
        if prev is not None and R2 < prev: ok = False
        prev = R2
    print("x_t/L=%s monotone increasing in B: %s ; R^2(B=1e4)=%s  3B/(8pi)=%s (B=zL)" % (mp.nstr(s,3), ok, mp.nstr(R2,8), mp.nstr(3*mp.mpf(10)**4/(8*mp.pi),8)))

print("== Prop 10.5: relative variation of z vs 6/R^2 at large B ==")
for zL in (10**2, 10**3, 10**4, 10**5):
    xt = L/2
    R2, th, z0, zt = quad_pw(xt, zL)
    var = (z0-zL)/zL
    print("B=%g  R^2=%s  3B/(8pi)=%s  max var (z0-B)/B=%s  bound 16pi/B=%s  6/R^2=%s" %
          (zL, mp.nstr(R2,8), mp.nstr(3*zL/(8*mp.pi),8), mp.nstr(var,6), mp.nstr(16*mp.pi/zL,6), mp.nstr(6/R2,6)))

print("== Far wall: BGL formulas, N'=7: M_D0 R = M_D0^{I'}/M_wind^{I'} (D cancels) ==")
Np = mp.mpf(7)
def bgl(B, Np=Np, alphap_h=2):
    A = (B+2*mp.pi*Np)**(mp.mpf(2)/3); b = B**(mp.mpf(2)/3)
    # D*M_wind (windingmass) and D*M_D0(0) (D0mass):
    DMw = mp.sqrt(8/(alphap_h*Np))*mp.sqrt((A-b)/(A+b))
    DMD0 = mp.sqrt(2*Np/alphap_h)*b/mp.sqrt(A**2-b**2)
    R = 1/DMw      # (KK): 1/R = D M_wind
    return A, b, R, DMD0*R, (Np/2)*b/(A-b)
for B in (mp.mpf('1e-6'), mp.mpf('0.1'), 1, 10, 100, 1000, 10**5):
    A,b,R,MR,MRcf = bgl(mp.mpf(B))
    # PW (dil) with n=1 at that wall: Z=B+7x
    Rpw = mp.sqrt(3)/2*mp.sqrt(mp.quad(lambda x:(B+7*x)**(mp.mpf(1)/3),[0,L]))/mp.quad(lambda x:(B+7*x)**(-mp.mpf(1)/3),[0,L])
    print("B=%-8g R(BGL)=%s R(PW dil)=%s  M_D0 R=%s closed=%s  R^2=%s  [3B/8pi=%s]" % (float(B), mp.nstr(R,10), mp.nstr(Rpw,10), mp.nstr(MR,8), mp.nstr(MRcf,8), mp.nstr(R**2,8), mp.nstr(3*B/(8*mp.pi),8)))
print("R_* = sqrt(7)/2 =", mp.nstr(mp.sqrt(7)/2,10))
