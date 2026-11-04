# Language: Python 3 (mpmath).  Fine scan of G_loc(c) near its minimum, to see whether the minimum at c=1 is a cusp or a smooth minimum.
import mpmath as mp
mp.mp.dps = 30
def Gloc(c):
    c = mp.mpf(c)
    def f(x):
        if x == 0: return mp.mpf(0)
        w = mp.sqrt(x*x + c*c)
        r = (w + c)**2/(x*x)
        return x**3*mp.log(1 + r*mp.e**(-2*w))
    return -2*mp.quad(f, [0, mp.mpf('1e-6'), mp.mpf('1e-3'), mp.mpf('0.1'), 1, 5, 30, 120])
for c in ('0.90','0.95','0.98','0.99','1.00','1.01','1.02','1.05','1.10'):
    print(c, mp.nstr(Gloc(c),12))
h = mp.mpf('1e-3')
d1 = (Gloc(1+h)-Gloc(1-h))/(2*h)
d2 = (Gloc(1+h)-2*Gloc(1)+Gloc(1-h))/h**2
print("G'(1) ~", mp.nstr(d1,6), "  G''(1) ~", mp.nstr(d2,6))
# stationary point from the derivative:
c0 = mp.findroot(lambda c: (Gloc(c+h)-Gloc(c-h))/(2*h), 1.0)
print("stationary c =", mp.nstr(c0,10), " G_loc =", mp.nstr(Gloc(c0),10))
