"""Exact checks for the 11D branch (Python 3, fractions and integers only).

Run:  python3 11D/checks_11d.py        Every check asserts; the script prints a short record (about 20 s).
Sections: A, B, C, D, D2 for 02_witten_spaces_hypercharge_quotient.md (quotient, Z_6, topology, flux index);
B, B2, E, G for 03_branes_hypercharge_and_the_84.md (exterior algebra, Higgs stabilizer, colour test of the 84,
AdS5 x CP^2 x S^2); F for 01_interval_and_eleventh_dimension.md (the one-loop energy at the vacuum angle).
"""
from fractions import Fraction as Fr
from itertools import product, combinations
from math import gcd
import math
import itertools

# ---------------------------------------------------------------- A. the 5-bar and hypercharge
# Left-handed 5-bar = d^c + L.  U: colour index, V: weak index.  Charges q = 6Y.
U_CH, V_CH = 2, -3
FIVEBAR = [("U", a) for a in range(3)] + [("V", b) for b in range(2)]
def q6(state):
    return sum(U_CH if s == "U" else V_CH for s, _ in state)

# Calabi-Yau condition of the cone C^5 // U(1)_q : sum of charges = 0  <=>  tr Y = 0 on the 5-bar
assert 3 * U_CH + 2 * V_CH == 0
# for the family C^3 + C^2 // U(1)_(b,b,b,-a,-a), coprime a,b > 0: CY iff (a,b) = (3,2)
cy = [(a, b) for a in range(1, 40) for b in range(1, 40) if gcd(a, b) == 1 and 3 * b - 2 * a == 0]
assert cy == [(3, 2)]

# dimension of (unit sphere in C^n, intersected with a moment level) / U(1): (2n - 1) - 1 - 1 = 2n - 3
def link_dim(n):
    return 2 * n - 3
assert link_dim(5) == 7 and [n for n in range(1, 30) if link_dim(n) == 7] == [5]

# ---------------------------------------------------------------- B. Lambda^*(5-bar) is one generation plus conjugates
# Build Lambda^k(5bar) with SU(3) x SU(2) content and 6Y; compare with the SM list.
def content(k):
    out = {}
    for st in combinations(FIVEBAR, k):
        nu = sum(1 for s, _ in st if s == "U")
        nv = k - nu
        key = (nu, nv, q6(st))
        out[key] = out.get(key, 0) + 1
    return out
# (nU, nV, 6Y) -> number of states; Lambda^nU(3bar) x Lambda^nV(2)
lam = {k: content(k) for k in range(6)}
dims3 = {0: 1, 1: 3, 2: 3, 3: 1}   # Lambda^n of a triplet: 1, 3(bar), 3, 1
dims2 = {0: 1, 1: 2, 2: 1}
for k in range(6):
    for (nu, nv, y), m in lam[k].items():
        assert m == dims3[nu] * dims2[nv]
# SM, left-handed Weyl fields of one generation with nu^c, and their conjugates (right-handed as left of conj):
SM = {  # name: (SU3 label, SU2 dim, 6Y)
    "Q": ("3", 2, 1), "u^c": ("3b", 1, -4), "d^c": ("3b", 1, 2),
    "L": ("1", 2, -3), "e^c": ("1", 1, 6), "nu^c": ("1", 1, 0)}
# Lambda^nU(3bar) labels: 0 -> 1, 1 -> 3b, 2 -> 3, 3 -> 1
lab3 = {0: "1", 1: "3b", 2: "3", 3: "1"}
fock = []
for k in range(6):
    for (nu, nv, y) in lam[k]:
        fock.append((k, lab3[nu], dims2[nv], y))
conj = {"1": "1", "3": "3b", "3b": "3"}
target = [(r3, r2, y) for (r3, r2, y) in SM.values()] + [(conj[r3], r2, -y) for (r3, r2, y) in SM.values()]
assert sorted((r3, r2, y) for (_, r3, r2, y) in fock) == sorted(target)
assert sum(dims3[nu] * dims2[nv] for k in range(6) for (nu, nv, y) in lam[k]) == 32
# odd degree = 5bar + 10 + 1 conj..., record which degree carries which SM field
deg_of = {}
for (k, r3, r2, y) in fock:
    for name, (s3, s2, sy) in SM.items():
        if (s3, s2, sy) == (r3, r2, y):
            deg_of[name] = k
        if (conj[s3], s2, -sy) == (r3, r2, y):
            deg_of[name + "-bar"] = k
assert deg_of["d^c"] == 1 and deg_of["L"] == 1 and deg_of["nu^c"] in (0, 5)

# Z_6: generator (omega I3, -I2, exp(2 pi i 6Y/6)) acts trivially on every Fock state:
# triality t (3 -> 1, 3bar -> -1), d = 2j mod 2, condition 2t + 3d + 6Y = 0 mod 6
tri = {"1": 0, "3": 1, "3b": -1}
for (k, r3, r2, y) in fock:
    d = 1 if r2 == 2 else 0
    assert (2 * tri[r3] + 3 * d + y) % 6 == 0
# Y-neutral monomials U^alpha V^beta (functions on the link): alpha = 3n, beta = 2n -> triality 0, integer spin
for al in range(0, 30):
    for be in range(0, 30):
        if U_CH * al + V_CH * be == 0:
            assert al % 3 == 0 and be % 2 == 0

# ---------------------------------------------------------------- B2. Higgs direction: stabilizer of V = (v, 0)
# torus coordinates: SU(3) Cartan acts trivially on U = 0; SU(2) Cartan T3 = diag(1/2,-1/2); Y (Betti) with 6Y = -3 on V;
# the overall phase R acts on U, V with weight 1 (the Reeb direction up to normalization).
# A generator a*T3 + b*Y + c*R (mod the gauge direction Y of the quotient? no: here Y is the Betti symmetry acting on V)
# fixes V=(v,0) iff a*(1/2) + b*(-1/2) + c = 0 on the first component.
# Unbroken: T3 + Y (b = 1, a = 1, c = 0) i.e. Q = T3 + Y, and R - T3/2 ... ; broken: T3 - Y.
def acts_on_v1(a, b, c):
    return Fr(a, 2) + b * Fr(-1, 2) + c
assert acts_on_v1(1, 1, 0) == 0                 # Q_em = T3 + Y unbroken
assert acts_on_v1(1, -1, 0) != 0                # Z direction broken
# electric charges Q = T3 + Y of the Fock generators
assert Fr(0) + Fr(U_CH, 6) == Fr(1, 3)          # U: d^c has Q = +1/3
assert Fr(1, 2) + Fr(V_CH, 6) == 0 and Fr(-1, 2) + Fr(V_CH, 6) == -1   # L = (nu, e)

# ---------------------------------------------------------------- C. circle bundles Y_{a,b} over CP^2 x CP^1 (Gysin)
def snf_2x2(m):
    """Smith normal form invariants of an integer 2x2 matrix."""
    (p, q), (r, s) = m
    d1 = gcd(gcd(abs(p), abs(q)), gcd(abs(r), abs(s)))
    det = abs(p * s - q * r)
    if d1 == 0:
        return (0, 0)
    return (d1, det // d1)
def cohomology(a, b):
    # H^2(Y) = Z^2/(a,b) ;  H^4(Y) = coker of cup with c: H^2(B) -> H^4(B), basis (h1^2, h1 h2): h1 -> (a, b), h2 -> (0, a)
    g = gcd(abs(a), abs(b))
    h2_free = 1
    h2_tors = g
    inv = snf_2x2(((a, 0), (b, a)))
    h4_order = abs(a * a)
    h3_rank = 0 if a != 0 else None
    spin = (a % 2 == 1) and (b % 2 == 0)
    return dict(H2=("Z", h2_tors), H4_invariants=inv, H4_order=h4_order, b3=h3_rank, spin=spin)
c32 = cohomology(3, 2)
assert c32["H4_order"] == 9 and c32["H4_invariants"] == (1, 9) and c32["spin"] and c32["H2"] == ("Z", 1)
assert not cohomology(0, 1)["spin"] and not cohomology(2, 1)["spin"] and cohomology(1, 0)["spin"]

# ---------------------------------------------------------------- D. chiral index of line bundles on CP^2 x CP^1
# H^*(CP^2, O(al)): al >= 0 -> Sym^al(3bar) in degree 0 ; al <= -3 -> Sym^(-al-3)(3) in degree 2; else 0.
# H^*(CP^1, O(be)): be >= 0 -> Sym^be(2) degree 0 ; be <= -2 -> Sym^(-be-2)(2) degree 1; else 0.
def coh3(al):
    if al == 1: return ("3b", 0)
    if al == -4: return ("3", 2)
    if al == 0: return ("1", 0)
    if al == -3: return ("1", 2)
    return None   # other degrees: zero, or larger SU(3) representations
def coh2(be):
    if be == 1: return (2, 0)
    if be == -3: return (2, 1)
    if be == 0: return (1, 0)
    if be == -2: return (1, 1)
    return None
def chi(al, be):  # Hirzebruch-Riemann-Roch
    return Fr((al + 1) * (al + 2), 2) * (be + 1)
for al in range(-8, 8):
    for be in range(-6, 6):
        c3, c2 = coh3(al), coh2(be)
        if c3 and c2:
            d3 = 1 if c3[0] == "1" else 3
            sign = (-1) ** (c3[1] + c2[1])
            assert chi(al, be) == sign * d3 * c2[0]
# a Weyl field of the 10D theory with charges (y, x) under two U(1) fluxes sees
# O(al, be) with (al, be) = (-3/2, -1) + y*(A1, B1) + x*(A2, B2)  (canonical spin^c root K^{1/2}).
def options(r3, r2, y, x):
    """(al, be, charge sign) choices realizing the left-handed field (r3, r2) with charges (y, x)."""
    out = []
    for al in (1, -4, 0, -3):
        for be in (1, -3, 0, -2):
            c3, c2 = coh3(al), coh2(be)
            sign = (-1) ** (c3[1] + c2[1])
            if c2[0] != r2: continue
            if sign == 1 and c3[0] == r3:
                out.append((al, be, 1))
            if sign == -1 and c3[0] == conj[r3]:
                out.append((al, be, -1))   # right-handed conj field from the 10D field of charge -(y, x)
    return out
def solve_fluxes(species, xs):
    """Look for rational (A1,B1,A2,B2) such that every species is realized. xs: second charge per species (or None)."""
    sols = set()
    opts = [options(r3, r2, y, x) for (r3, r2, y), x in zip(species, xs)]
    for choice in product(*opts):
        rowsA, rowsB = [], []
        for ((r3, r2, y), x), (al, be, s) in zip(zip(species, xs), choice):
            yy, xx = s * y, s * (x or 0)
            rowsA.append((yy, xx, Fr(al) + Fr(3, 2)))
            rowsB.append((yy, xx, Fr(be) + 1))
        sol = []
        for rows in (rowsA, rowsB):
            s_ = lstsq_exact(rows, two=xs[0] is not None)
            if s_ is None: break
            sol.append(s_)
        else:
            sols.add((tuple(sol[0]), tuple(sol[1]), choice))
    return sols
def lstsq_exact(rows, two):
    """Exact solve of y*A1 + x*A2 = r for all rows (two unknowns, or one if two=False)."""
    if not two:
        cand = None
        for y, x, r in rows:
            if y == 0:
                if r != 0: return None
                continue
            v = Fr(r, 1) / y
            if cand is None: cand = v
            elif cand != v: return None
        return (cand if cand is not None else Fr(0), Fr(0))
    # two unknowns: find two independent rows
    for (y1, x1, r1), (y2, x2, r2) in combinations(rows, 2):
        det = y1 * x2 - y2 * x1
        if det != 0:
            A1 = Fr(r1 * x2 - r2 * x1) / det
            A2 = Fr(y1 * r2 - y2 * r1) / det
            if all(y * A1 + x * A2 == r for y, x, r in rows):
                return (A1, A2)
            return None
    return None
gen = [SM[n] for n in ("Q", "u^c", "d^c", "L", "e^c")]
gen_nu = [SM[n] for n in ("Q", "u^c", "d^c", "L", "e^c", "nu^c")]
# Each species fixes the image P_s = (al + 3/2, be + 1) of its charge vector under the flux map M, up to the
# common sign of (charge, chirality): collect the set of required images for each species.
def images(r3, r2):
    out = set()
    for (al, be, s) in options(r3, r2, 0, 0):
        out.add((s * (Fr(al) + Fr(3, 2)), s * (Fr(be) + 1)))
    return out
P = {n: images(SM[n][0], SM[n][1]) for n in SM}
assert P["Q"] == {(Fr(-5, 2), 2)}
assert P["u^c"] == P["d^c"] == {(Fr(5, 2), 1)}
assert P["L"] == {(Fr(3, 2), 2), (Fr(-3, 2), 2)}
assert P["e^c"] == P["nu^c"] == {(Fr(3, 2), 1), (Fr(-3, 2), 1)}
# second component = dimension of the SU(2) representation (beta + 1 = 2j + 1), first = +-5/2 coloured, +-3/2 not.
# No-go D.1: M c_u = M c_d forces c_u - c_d in ker M; with k <= 2 abelian fluxes and Y among the charges
# (so c_u != c_d), M has rank <= 1, so all images are proportional; (5/2, 1) and (-5/2, 2) are not.
a1, a2 = (Fr(5, 2), Fr(1)), (Fr(-5, 2), Fr(2))
assert a1[0] * a2[1] - a1[1] * a2[0] != 0
# illustration by direct search: one flux with q ~ 6Y, and two fluxes with (6Y, 3(B-L)) or (6Y, X)
one_u1 = solve_fluxes(gen, [None] * 5)
assert one_u1 == set()
bl = {"Q": 1, "u^c": -1, "d^c": -1, "L": -3, "e^c": 3, "nu^c": 3}
X = {"Q": -1, "u^c": -1, "e^c": -1, "d^c": 3, "L": 3, "nu^c": -5}     # 16 = 10_{-1} + 5bar_{3} + 1_{-5}
two_bl = solve_fluxes(gen_nu, [bl[n] for n in ("Q", "u^c", "d^c", "L", "e^c", "nu^c")])
two_X = solve_fluxes(gen_nu, [X[n] for n in ("Q", "u^c", "d^c", "L", "e^c", "nu^c")])
assert two_bl == set() and two_X == set()
# Necessary condition: s -> P_s must be linear in the charge vectors. The second component is 2j+1 = (2,1,1,2,1,1)
# on (Q, u^c, d^c, L, e^c, nu^c); it is not in the span of 6Y and 3(B-L), the family-universal anomaly-free charges.
names6 = ("Q", "u^c", "d^c", "L", "e^c", "nu^c")
def in_span(target, vecs):
    # exact rank test over Q
    def rank(rows):
        rows = [list(map(Fr, r)) for r in rows]; rk = 0; ncol = len(rows[0])
        for c in range(ncol):
            pr = next((i for i in range(rk, len(rows)) if rows[i][c] != 0), None)
            if pr is None: continue
            rows[rk], rows[pr] = rows[pr], rows[rk]
            for i in range(len(rows)):
                if i != rk and rows[i][c] != 0:
                    f = rows[i][c] / rows[rk][c]; rows[i] = [x - f * y for x, y in zip(rows[i], rows[rk])]
            rk += 1
        return rk
    return rank(vecs) == rank(vecs + [target])
two_j_plus_1 = [2, 1, 1, 2, 1, 1]
assert not in_span(two_j_plus_1, [[SM[n][2] for n in names6], [bl[n] for n in names6]])
# and a third integer charge z in [-3, 3]^6 added to (6Y, 3(B-L)) never suffices (exhaustive search)
def feasible(cols):
    vecs = [list(c) for c in cols]
    if not in_span(two_j_plus_1, vecs): return False
    for t1 in product(*[sorted(x for (x, _) in P[n]) for n in names6]):
        if in_span(list(t1), vecs): return True
    return False
cols_YBL = [[SM[n][2] for n in names6], [bl[n] for n in names6]]
hits = [zz for zz in product(range(-3, 4), repeat=6) if in_span(two_j_plus_1, cols_YBL + [list(zz)]) and feasible(cols_YBL + [list(zz)])]
assert hits == []
# sanity: with the required images themselves as charges the system is solvable
assert feasible(cols_YBL + [[-5, 5, 5, 3, 3, 3], two_j_plus_1])

# Positive version (D.2). Add a universal charge F (= a change of the common spin^c twist) and the chirality-correlated
# charge chi (+1 on Q, L; -1 on u^c, d^c, e^c, nu^c), i.e. the finite grading on the particle basis.
F_ = {n: 1 for n in names6}
chi = {"Q": 1, "L": 1, "u^c": -1, "d^c": -1, "e^c": -1, "nu^c": -1}
cols_FchiBL = [[F_[n] for n in names6], [chi[n] for n in names6], [bl[n] for n in names6]]
assert in_span(two_j_plus_1, cols_FchiBL) and feasible(cols_FchiBL)
# without chi, or without B-L, it fails; Y in place of B-L also works only through chi (record both)
assert not feasible([[F_[n] for n in names6], [SM[n][2] for n in names6], [bl[n] for n in names6]])
assert not feasible([[F_[n] for n in names6], [chi[n] for n in names6]])
# explicit pairing: P1 = c0 chi + c1 (B-L) with (B-L) = bl/3 ; P2 = (3F + chi)/2
def explicit():
    out = []
    for c0, c1 in ((Fr(-9, 4), Fr(-3, 4)), (Fr(-3, 2), Fr(-3))):
        ok = True; rows = {}
        for n in names6:
            p1 = c0 * chi[n] + c1 * Fr(bl[n], 3); p2 = Fr(3 * F_[n] + chi[n], 2)
            if (p1, p2) not in P[n]: ok = False
            rows[n] = (p1 - Fr(3, 2), p2 - 1)          # (alpha, beta): Dolbeault bidegree of the line bundle
        out.append((ok, (c0, c1), rows))
    return out
expl = explicit()
assert all(ok for ok, _, _ in expl)
# u^c and d^c (and e^c, nu^c) see the same line bundle: equal (alpha, beta)
for ok, _, rows in expl:
    assert rows["u^c"] == rows["d^c"] and rows["e^c"] == rows["nu^c"]

# ---------------------------------------------------------------- E. colour test: Lambda^3 of a real 9-dim SU(3) representation
# weights of SU(3) reps in the basis of T^2 (e1, e2, e3 with sum 0), as integer triples
def w3(): return [(1, 0, 0), (0, 1, 0), (0, 0, 1)]
def w3b(): return [(-1, 0, 0), (0, -1, 0), (0, 0, -1)]
def w8():
    roots = [tuple((1 if k == i else 0) - (1 if k == j else 0) for k in range(3)) for i in range(3) for j in range(3) if i != j]
    return roots + [(0, 0, 0), (0, 0, 0)]
def norm(w):  # reduce modulo (1,1,1)
    m = min(w); return tuple(x - m for x in w)
def lam3(ws):
    out = {}
    for c in combinations(range(len(ws)), 3):
        s = tuple(sum(ws[i][k] for i in c) for k in range(3))
        s = norm(s); out[s] = out.get(s, 0) + 1
    return out
def multiset(blocks):
    out = {}
    for ws in blocks:
        for w in ws:
            w = norm(w); out[w] = out.get(w, 0) + 1
    return out
real9 = {"9 singlets": [(0, 0, 0)] * 9,
         "3+3bar+3": w3() + w3b() + [(0, 0, 0)] * 3,
         "8+1": w8() + [(0, 0, 0)]}
fam1 = multiset([w3()] * 10 + [w3b()] * 10 + [[(0, 0, 0)]] * 24)   # five quarks + leptons (nu Dirac)
fam2 = multiset([w3()] * 12 + [w3b()] * 12 + [[(0, 0, 0)]] * 12)   # all charged fermions
assert sum(fam1.values()) == 84 and sum(fam2.values()) == 84
for name, ws in real9.items():
    L3 = lam3(ws)
    assert sum(L3.values()) == 84
    assert L3 != fam1 and L3 != fam2

# ---------------------------------------------------------------- F. sign of the vacuum energy at the minimum of lemma 24, Theorem 9
def F1(N=200000, X=40.0):
    h = X / N; s = 0.0
    for i in range(1, N + 1):
        x = (i - 0.5) * h
        s += x ** 3 * math.log1p(1.0 / math.sinh(x) ** 2)
    return s * h
F_at_1 = F1()
zeta5 = sum(1.0 / k ** 5 for k in range(1, 200000))
assert abs(F_at_1 - 93 * zeta5 / 64) < 1e-6           # F(1) = 93 zeta(5)/64

# ---------------------------------------------------------------- G. AdS5 x CP^2 x S^2 with magnetic G_4 (eleven-dimensional supergravity)
# orthonormal frame: 0..4 AdS5 (0 timelike), 5..8 CP^2 with J = e56 + e78, 9..10 S^2.
# G = f1 e5678 + f2 (e56 + e78) e9,10.   R_MN = (1/12)(G_MPQR G_N^PQR - (1/12) eta_MN G^2).
from itertools import permutations
def ricci_from_flux(f1, f2):
    comps = {(5, 6, 7, 8): f1, (5, 6, 9, 10): f2, (7, 8, 9, 10): f2}
    eta = [-1] + [1] * 10
    def G(idx):
        srt = tuple(sorted(idx))
        if srt not in comps or len(set(idx)) < 4: return Fr(0)
        perm = [srt.index(i) for i in idx]
        sign = 1
        for i in range(4):
            for j in range(i + 1, 4):
                if perm[i] > perm[j]: sign = -sign
        return sign * comps[srt]
    G2 = sum(G(t) ** 2 for t in itertools.product(range(11), repeat=4) if len(set(t)) == 4)  # all internal: eta = +1
    R = {}
    for M_ in range(11):
        for N_ in range(11):
            val = Fr(0)
            for t in itertools.combinations(range(11), 3):
                for pt in permutations(t):
                    val += G((M_,) + pt) * G((N_,) + pt)
            val = val - (Fr(1, 12) * eta[M_] * G2 if M_ == N_ else 0)
            R[(M_, N_)] = val / 12
    return R, G2
for f1, f2 in ((Fr(1), Fr(1)), (Fr(0), Fr(1)), (Fr(3, 2), Fr(1))):
    R, G2 = ricci_from_flux(f1, f2)
    assert G2 == 24 * (f1 ** 2 + 2 * f2 ** 2)
    assert all(R[(m, n)] == 0 for m in range(11) for n in range(11) if m != n)
    assert R[(0, 0)] == (f1 ** 2 + 2 * f2 ** 2) / 6 * 1      # R_00 = -eta_00 (f1^2+2f2^2)/6 : AdS (negative curvature)
    assert all(R[(i, i)] == -(f1 ** 2 + 2 * f2 ** 2) / 6 for i in range(1, 5))
    assert all(R[(i, i)] == f1 ** 2 / 3 + f2 ** 2 / 6 for i in range(5, 9))
    assert all(R[(i, i)] == Fr(2, 3) * f2 ** 2 - f1 ** 2 / 6 for i in (9, 10))
# S^2 has positive curvature iff |f1| < 2 |f2|; at f1 = 2 f2 it is flat, beyond it negative
assert ricci_from_flux(Fr(2), Fr(1))[0][(9, 9)] == 0

if __name__ == "__main__":
    print("A  CY cone among C^3+C^2//U(1)_(b,b,b,-a,-a):", cy, "; 7-dim link only for n =", 5)
    print("B  Lambda^*(5bar): 32 states = one generation with nu^c and conjugates; Z_6 condition holds on all of them")
    print("C  Y_{3,2}:", c32)
    print("D  images P_s: Q", P["Q"], " u^c = d^c", P["u^c"], " L", P["L"], " e^c = nu^c", P["e^c"])
    print("D  one flux ~ Y, two fluxes (Y, B-L), (Y, X): no solution; 2j+1 not in span(Y, B-L); (Y, B-L, z), z in [-3,3]^6: none")
    for ok, cc, rows in expl: print("D2 (F, chi, B-L) pairing c0, c1 =", cc, "bidegrees:", {k: (str(a), str(b)) for k, (a, b) in rows.items()})
    print("E  Lambda^3 of every real 9-dim SU(3) rep differs from both families of 84 (weights)")
    print("F  F(1) = int x^3 log(1 + 1/sinh^2 x) dx =", round(F_at_1, 6), "= 93 zeta(5)/64")
    print("G  AdS5 x CP^2 x S^2: R_AdS = -(f1^2+2f2^2)/6, R_CP2 = f1^2/3 + f2^2/6, R_S2 = 2f2^2/3 - f1^2/6")
