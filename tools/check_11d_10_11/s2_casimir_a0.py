# Language: Python 3 (mpmath, numpy, scipy).  Independent mode-sum check of the Casimir coefficient a_0 (file 10, item 7),
# of the check against F(1), and of the effect of the (N,D) generators of lemmas 23/24/26.
import mpmath as mp
mp.mp.dps = 25
z5 = mp.zeta(5)
u0 = 3*z5/16                      # claimed: -u0 per real d.o.f. with integer tower (units 8 pi^2 l^4 V)

# (1) real d.o.f., tower n pi/l, n>=1 (NN or DD): 8 pi^2 l^4 V = (1/2) int x^3 log(1-e^{-2x}) dx
int_NN = mp.quad(lambda x: x**3*mp.log(1-mp.e**(-2*x)), [0, 1, 10, 60])/2
# (2) real d.o.f., tower (n-1/2) pi/l, n>=1 (ND or DN): 8 pi^2 l^4 V = (1/2) int x^3 log(1+e^{-2x}) dx
int_ND = mp.quad(lambda x: x**3*mp.log(1+mp.e**(-2*x)), [0, 1, 10, 60])/2
print("integer tower  : %s  vs -u0 = %s" % (mp.nstr(int_NN,12), mp.nstr(-u0,12)))
print("half-int tower : %s  vs +15/16 u0 = %s   ratio half/int = %s (claim -15/16)" % (mp.nstr(int_ND,12), mp.nstr(15*u0/16,12), mp.nstr(int_ND/int_NN,12)))

# (3) F(1) from the one-loop integrand, vs 93 zeta(5)/64, vs difference of the two Casimir energies of a
#     complex circle tower (n in Z, twist 0 -> pi/2): V(0) = 2 * 2 * int_NN-type ; V(pi/2) = ...
F1 = mp.quad(lambda x: x**3*mp.log(1+1/mp.sinh(x)**2), [0, 1, 10, 60])
print("F(1) quadrature %s ; 93 z5/64 = %s" % (mp.nstr(F1,12), mp.nstr(93*z5/64,12)))
# complex field on circle of length 2l: tower |n pi + theta|/l, n in Z (one 4D mode per n). 8pi^2 l^4 V = 2*(1/2)*sum
V0 = 2*(2*int_NN)       # twist 0: each |n| twice (n>=1); complex = 2 real; each real interval-tower = int_NN  -> 4 int_NN
Vh = 2*(2*int_ND)       # twist pi/2: each (n+1/2) twice
print("complex circle tower: V(0)=%s V(pi/2)=%s  difference=%s  F(1)=%s" % (mp.nstr(V0,10), mp.nstr(Vh,10), mp.nstr(Vh-V0,10), mp.nstr(F1,10)))
# Dirac species (two 4D Dirac per |n|>=1 at theta=0; 4 dof each; fermion sign): 8 * u0 ; n_f = 2 per species
print("Dirac species at theta=0: +8 u0 = %s ; = 4 u0 n_f with n_f=2: %s" % (mp.nstr(8*u0,10), mp.nstr(4*u0*2,10)))
print("check vs F(1): fermion unit n_f=1 -> shift to theta=pi/2 multiplies by -15/16, difference = -(31/16)(4u0) = %s ; -F(1) = %s" % (mp.nstr(-(mp.mpf(31)/16)*4*u0,10), mp.nstr(-F1,10)))

# (4) the gauge content of lemmas 23/24/26 at theta=0 (lemma 26 table): 16 integer-tower, 9 half-integer-tower generators
n_int, n_half = 16, 9
gauge_corrected = -3*(n_int - mp.mpf(15)/16*n_half)      # in units u0
print("gauge sector at theta=0, lemmas 23/24/26: -3*(16 - 15/16*9) = %s u0   (file 10 uses -3*21 = -63 u0)" % mp.nstr(gauge_corrected,8))
for label, ND in (("three generations (24 Dirac)",24),("one generation (8 Dirac)",8)):
    nD = 2*ND
    br_file = 4*nD - 63
    br_corr = 4*nD + gauge_corrected
    print("%-28s bracket: file %g (A0=%s) ; lemma-24 content %s (A0=%s)" % (label, br_file, mp.nstr(br_file*u0,6), mp.nstr(br_corr,8), mp.nstr(br_corr*u0,6)))
print("graviton 5 d.o.f. integer tower: -5 u0 ; real scalar -1 u0.  n_s needed for a_0=0 (3 gen): file %g ; lemma-24 content %s" % (192-63, mp.nstr(192+gauge_corrected,8)))
