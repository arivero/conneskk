# Language: Python 3 (numpy, scipy).  Independent checks of file 11: Prop 11.1, 11.2 (J-hat E = E J-hat, the sign of J-hat A J-hat^-1,
# the order-one defect), Prop 11.4 (shadow formula by direct quadrature of W^*(E a_tot)W, symmetry, representation map and counts).
import numpy as np, itertools
from scipy.linalg import expm
rng = np.random.default_rng(7)
nf, nc = 5, 3; k = nf*nc; n = 2*k            # V = C^5 (x) C^3, H_+ = V + Vbar (dim 30)
s = +1

# ---------- finite triple: H_+ = (v,w), H_- = (v',w') ----------
Kc = np.conj
def c_map(x):                                # c : H_+ -> H_- antiunitary, c(v,w) = (conj w, conj v)
    v, w = x[:k], x[k:]; return np.concatenate([Kc(w), Kc(v)])
def U_mat():                                 # U : H_+ -> H_-, U(v,w) = (v, s w)
    return np.diag(np.concatenate([np.ones(k), s*np.ones(k)])).astype(complex)
U = U_mat()
def j_map(x): return np.linalg.solve(U, c_map(x))          # j = U^-1 c, antiunitary on H_+
# j^2 = s ?
x = rng.normal(size=n)+1j*rng.normal(size=n)
print("Prop 11.1: j^2 x = s x :", np.linalg.norm(j_map(j_map(x)) - s*x) < 1e-12, "; j q_L = s conj(q_R):", np.allclose(j_map(np.concatenate([x[:k],0*x[k:]])), np.concatenate([0*x[:k], s*Kc(x[:k])])) )
# matrix of j as j(x) = Sj conj(x):
Sj = np.zeros((n,n),complex); Sj[:k,k:] = np.eye(k); Sj[k:,:k] = s*np.eye(k)
assert np.allclose(j_map(x), Sj@Kc(x))
def jconj(a): return Sj@Kc(a)@np.linalg.inv(Sj)             # j a j^-1
# so(30): real elements of u(30) (commute with j) ---
alpha = rng.normal(size=(k,k))+1j*rng.normal(size=(k,k)); alpha = alpha - alpha.conj().T
Bm = rng.normal(size=(k,k))+1j*rng.normal(size=(k,k)); Bm = Bm - Bm.T          # antisymmetric
a = np.block([[alpha, Bm],[Kc(Bm), Kc(alpha)]])
print("a skew-Hermitian:", np.linalg.norm(a+a.conj().T) < 1e-12, "; j a j^-1 = a:", np.linalg.norm(jconj(a)-a) < 1e-12, "; B^T=-B:", np.linalg.norm(Bm+Bm.T) < 1e-12)
# dimension count of the commutant of j in u(30): real dimension 435
# (basis dimension of {a skew-Herm, jaj^-1=a}) by solving linear equations
def realdim():
    # parametrize a by real and imaginary parts of all entries, impose constraints
    idx = [(i,jj) for i in range(n) for jj in range(n)]
    cols=[]
    for (i,jj) in idx:
        for ph in (1,1j):
            E = np.zeros((n,n),complex); E[i,jj]=ph
            cols.append(E)
    # constraint matrix on 2n^2 real parameters: a+a^* =0, jaj^-1 - a=0
    rows=[]
    for E in cols:
        c1 = (E+E.conj().T).ravel(); c2 = (jconj(E)-E).ravel()
        v = np.concatenate([c1, c2]); rows.append(np.concatenate([v.real, v.imag]))
    Mx = np.array(rows).T
    return 2*n*n - np.linalg.matrix_rank(Mx, tol=1e-9)
print("dim_R {a skew-Hermitian, jaj^-1=a} =", realdim(), "(so(30): 435)")

# ---------- parent: C^2 (x) (H_+ + H_-) ; psi = (Q_L,Q_R;U_L,U_R) ----------
m = np.array([1.0, 1.7, 2.3, 3.1, 0.6])     # flavour masses (distinct)
Lam = np.diag(np.repeat(m, nc)).astype(complex)     # on V ; same on Vbar
Lam = np.block([[Lam, np.zeros((k,k))],[np.zeros((k,k)), Lam]])
assert np.linalg.norm(jconj(Lam)-Lam) < 1e-12 and np.linalg.norm(Lam-Lam.conj().T) < 1e-12
M = U@Lam
DF = np.block([[np.zeros((n,n)), M.conj().T],[M, np.zeros((n,n))]])
assert np.linalg.norm(DF-DF.conj().T) < 1e-12
GF = np.diag(np.concatenate([np.ones(n), -np.ones(n)]))
# J_F(a,b) = (c^-1 b, c a): matrix form J_F = S_F K
cmat = np.zeros((n,n),complex)            # c(x) = cmat conj(x)
cmat[:k,k:]=np.eye(k); cmat[k:,:k]=np.eye(k)
cinv_mat = np.linalg.inv(cmat.conj())     # c^{-1}(y) = cinv conj(y) with cinv = (cmat^*)^-1 ; c(c^-1 y)=y
# c^-1(y) = (cmat^{-1} y)^* ... simpler: c(x)=cmat conj(x)  => x = conj(cmat^{-1} y)
def c_inv(y): return Kc(np.linalg.solve(cmat, y))
def JF(phi):
    a_, b_ = phi[:n], phi[n:]; return np.concatenate([c_inv(b_), cmat@Kc(a_)])
phi = rng.normal(size=2*n)+1j*rng.normal(size=2*n)
print("J_F^2=1:", np.allclose(JF(JF(phi)), phi), "; J_F D_F = D_F J_F:", np.allclose(JF(DF@phi), DF@JF(phi)), "; J_F G = -G J_F:", np.allclose(JF(GF@phi), -GF@JF(phi)))
print("c = U j  :", np.allclose(cmat@Kc(x), U@j_map(x)))

# parent operators on C^2 (x) H_F, ordering psi = (L-part (n+n), R-part (n+n))
d = 2*n
Emat = np.block([[np.zeros((d,d)), np.eye(d)],[-np.eye(d), np.zeros((d,d))]])    # (E psi)_L = psi_R, (E psi)_R = -psi_L
def Jhat(psi):                                  # J-hat psi = (c^-1 U_R, -c^-1 U_L; -c Q_R, c Q_L)
    QL,QR,UL,UR = psi[:n], psi[d:d+n], psi[n:d], psi[d+n:]
    outQL = c_inv(UR); outQR = -c_inv(UL); outUL = -(cmat@Kc(QR)); outUR = cmat@Kc(QL)
    return np.concatenate([outQL, outUL, outQR, outUR])    # ordering: L-part (Q,U) then R-part (Q,U)
psi = rng.normal(size=2*d)+1j*rng.normal(size=2*d)
print("J-hat^2 = 1:", np.allclose(Jhat(Jhat(psi)), psi), "; J-hat E = E J-hat:", np.allclose(Jhat(Emat@psi), Emat@Jhat(psi)))
# fluctuation A = E a on Q  (a_x constant real skew element of so(30)), and J-hat A J-hat^-1
def embedQ(T):                                   # T on H_+ -> operator on C^2 (x) H_F acting on Q only, same on both spin comps
    P = np.zeros((2*n,2*n),complex); P[:n,:n] = T
    return np.kron(np.eye(2), P)
A_op = Emat@embedQ(a)
A_conj = lambda psi_: Jhat(A_op@Jhat(psi_))      # J-hat A J-hat^-1 (J-hat is an involution)
def embedU(T):
    P = np.zeros((2*n,2*n),complex); P[n:,n:] = T
    return np.kron(np.eye(2), P)
target = Emat@embedU(U@a@np.linalg.inv(U))
print("Prop 11.2(3): J-hat (E a) J-hat^-1 = + E (U a U^-1 on H_-):", np.allclose(np.array([A_conj(e) for e in np.eye(2*d, dtype=complex)]).T, target))
print("   E T Hermitian iff T skew: ", np.linalg.norm((Emat@embedQ(a)) - (Emat@embedQ(a)).conj().T) < 1e-12, " and for T=symmetric real:", np.linalg.norm((Emat@embedQ(np.diag(rng.normal(size=n)).astype(complex))) - (Emat@embedQ(np.diag(rng.normal(size=n)).astype(complex))).conj().T) )
# order one: [[D_F, pi(a)], J pi(b) J^-1]  with pi(a)=(a,0)
pa = np.zeros((2*n,2*n),complex); pa[:n,:n]=a
b = rng.normal(size=(n,n)); b = b - b.T                     # real antisymmetric element of the algebra (real for j)
b = np.real(b).astype(complex)
# need b real for j : in the basis (v,w) with j(v,w)=(conj w,conj v) real elements are [[al,B],[conj B,conj al]]
alb = rng.normal(size=(k,k))+1j*rng.normal(size=(k,k)); Bb = rng.normal(size=(k,k))+1j*rng.normal(size=(k,k))
bb = np.block([[alb, Bb],[Kc(Bb), Kc(alb)]])                # general element of M_30(R) ~ commutant of j
assert np.linalg.norm(jconj(bb)-bb) < 1e-12
def JFop(Xop):                                  # J_F X J_F^-1 as matrix
    return np.array([JF(Xop@JF(e)) for e in np.eye(2*n,dtype=complex)]).T
pb = np.zeros((2*n,2*n),complex); pb[:n,:n]=bb
pbo = JFop(pb)
comm1 = DF@pa - pa@DF
oo = comm1@pbo - pbo@comm1
print("order zero [pi(a), pi(b)^o] = 0:", np.linalg.norm(pa@pbo-pbo@pa) < 1e-12)
Ubu = U@bb@np.linalg.inv(U)
print("pi(b)^o = U b U^-1 on H_-:", np.linalg.norm(pbo[n:,n:]-Ubu) < 1e-12)
print("order-one defect: H_+ -> H_- block = -U b U^-1 M a :", np.linalg.norm(oo[n:,:n] + Ubu@M@a) < 1e-12, "; other block (H_- -> H_+) = - a M^* U b U^-1:", np.linalg.norm(oo[:n,n:] + a@M.conj().T@Ubu) < 1e-12, "; nonzero:", np.linalg.norm(oo) > 1e-6)

# ---------- Prop 11.4 : compression of E a_tot by direct quadrature of W^*(E a_tot)W ----------
l = 0.9                                          # need l ||D_F|| < pi/2 : ||D_F|| = max m = 3.1  -> 2.79 > pi/2 ; use smaller l
l = 0.4
print("l*||D_F|| =", l*np.max(m), "(< pi/2 required)")
a_tot = np.block([[a, np.zeros((n,n))],[np.zeros((n,n)), U@a@np.linalg.inv(U)]])
K_ = GF@DF
from numpy.polynomial.legendre import leggauss
xs, ws = leggauss(60); xs = 0.5*l*(xs+1); ws = 0.5*l*ws
Rt = [expm(x_*K_) for x_ in xs]
# W phi = l^-1/2 R(x) (a,0) in L-part ; l^-1/2 R(x)(0,b) in R-part.   matrices WL(x), WR(x): H_F -> H_F with WL = R P_+, WR = R P_-
Pp = np.diag(np.concatenate([np.ones(n), np.zeros(n)])); Pm = np.eye(2*n)-Pp
Qc = np.zeros((2*n,2*n),complex)
for R_, w_ in zip(Rt, ws):
    WL = R_@Pp/np.sqrt(l); WR = R_@Pm/np.sqrt(l)
    # <psi_L, T psi_R'> - <psi_R, T psi_L'>   (E T)
    Qc += w_*(WL.conj().T@a_tot@WR - WR.conj().T@a_tot@WL)
# formula:  -(1/l) int_0^l sin(x ad_DF)(a_tot) dx
def adm(X): return DF@X - X@DF
def sin_ad(X, x_, order=40):
    out = np.zeros_like(X); term = X.copy(); 
    # sin(x ad)X = sum_{p odd} (-1)^((p-1)/2) x^p ad^p X / p!
    cur = X.copy(); fact = 1.0
    for p in range(1, order+1):
        cur = adm(cur); fact *= p
        if p % 2 == 1: out = out + ((-1)**((p-1)//2))*(x_**p)*cur/fact
    return out
Qf = np.zeros((2*n,2*n),complex)
for x_, w_ in zip(xs, ws): Qf += -w_/l*sin_ad(a_tot, x_)
print("Theorem 22.4 formula vs direct quadrature of W^*(E a_tot)W : max diff =", np.max(np.abs(Qc-Qf)))
# block structure and the factor -(1-cos(l delta))/(l delta) :
S = Lam@a - a@Lam
print("S=[Lam,a] real(j) and symmetric (S^T=S as real matrix) and Hermitian:", np.linalg.norm(jconj(S)-S)<1e-12, np.linalg.norm(S-S.conj().T)<1e-12)
# the compression equals [[0, X U^-1],[U X, 0]] with X_ij = -(1-cos(l d_ij))/(l d_ij) a_ij  (flavour-diagonal: 0)
dflav = np.repeat(m, nc); dd = np.block([[dflav[:,None]-dflav[None,:], dflav[:,None]-dflav[None,:]],[dflav[:,None]-dflav[None,:], dflav[:,None]-dflav[None,:]]])
fac = np.where(np.abs(dd)>1e-14, -(1-np.cos(l*dd))/(l*np.where(np.abs(dd)>1e-14,dd,1.0)), -l/2*0.0)
X = fac*a
Qpred = np.block([[np.zeros((n,n)), X@np.linalg.inv(U)],[U@X, np.zeros((n,n))]])
print("compression = off-diagonal block (U X): max diff =", np.max(np.abs(Qc-Qpred)))
print("X real-symmetric (j-real, X^T = X):", np.linalg.norm(jconj(X)-X)<1e-12, np.linalg.norm(X-X.T)<1e-12)
print("leading order -(l/2)(m_i-m_j)B_ij: relative error of the exact factor at this l:", np.max(np.abs(fac - (-(l/2)*dd))) )

# ---------- representation content of the shadow map B -> (m_i-m_j) B_ij ----------
# basis of Lambda^2 V in colour antitriplet : B = (E_ff' + E_f'f) (x) eps_k  with f<=f' ; sextet: (E_ff' - E_f'f) (x) sym colour
Q = np.array([2/3,2/3,-1/3,-1/3,-1/3])
def charge_counts(vecs_flavour_pairs):
    cnt = {}
    for (f,g) in vecs_flavour_pairs:
        q = round(Q[f]+Q[g],4); cnt[q] = cnt.get(q,0)+1
    return dict(sorted(cnt.items()))
S25 = [(f,g) for f in range(5) for g in range(f,5)]          # symmetric flavour (15) : in Lambda^2 V with colour 3bar
L25 = [(f,g) for f in range(5) for g in range(f+1,5)]        # antisymmetric flavour (10)
print("(S^2 5, 3bar) charge counts (-2/3,1/3,4/3) :", charge_counts(S25))
ker = [(f,f) for f in range(5)]
img = [(f,g) for (f,g) in S25 if abs(m[f]-m[g])>1e-12]
print("kernel of B -> (m_i-m_j)B_ij (same-flavour diquarks):", charge_counts(ker), "; image = (Lambda^2 5, 3bar):", charge_counts(img), "; target (3,6,1):", charge_counts(L25))
# explicit check that the image of a symmetric-flavour antisymmetric-colour B is symmetric in the total index
eps = np.zeros((3,3,3)); 
for (i,j_,kk),sg in {(0,1,2):1,(1,2,0):1,(2,0,1):1,(0,2,1):-1,(2,1,0):-1,(1,0,2):-1}.items(): eps[i,j_,kk]=sg
beta = rng.normal(size=(5,5)); beta = beta+beta.T            # symmetric flavour
chi = rng.normal(size=3)
Bfull = np.einsum('fg,ijk,k->figj', beta, eps, chi).reshape(15,15)     # index (f,c),(g,c')
assert np.linalg.norm(Bfull+Bfull.T) < 1e-12                  # antisymmetric overall  => in Lambda^2 V
shadow = (np.repeat(m,3)[:,None]-np.repeat(m,3)[None,:])*Bfull
print("shadow of (S^2 5,3bar) element is symmetric in the total index:", np.linalg.norm(shadow-shadow.T) < 1e-12, "; and zero iff beta diagonal")
# universal mass: shadow vanishes and M = m U is O(30) invariant
Lam0 = 1.7*np.eye(n); S0 = Lam0@a-a@Lam0
print("universal mass: [Lam,a]=0:", np.linalg.norm(S0)==0)
from scipy.stats import ortho_group
g = ortho_group.rvs(n, random_state=3)       # real orthogonal 30x30 in the REAL basis; need element of the group commuting with j: build via expm of a
gg = expm(a)                                  # element of SO(30) (unitary, commutes with j)
M0 = U*1.7
print("M=mU invariant: (U g U^-1) M g^-1 = M :", np.linalg.norm(U@gg@np.linalg.inv(U)@M0@np.linalg.inv(gg) - M0) < 1e-10)

# ---- corrected symmetry test: X must be Hermitian and j-real (= real symmetric in the real basis where j = complex conjugation) ----
print("X Hermitian:", np.linalg.norm(X-X.conj().T) < 1e-12, " X j-real:", np.linalg.norm(jconj(X)-X) < 1e-12)
# real basis: j = Sj K with Sj = [[0,1],[1,0]] (s=+1); T = (1+Sj)/sqrt2 ... unitary with T^T T = Sj^{-1}?  use eigen-decomposition of Sj
w_, V_ = np.linalg.eigh(Sj.real)            # Sj symmetric real, eigenvalues +-1
T_ = V_@np.diag(np.where(w_>0, 1.0, 1j))     # x = T y  with y real  <=>  Sj conj(x) = x
print("real-basis map: j(T y)=T y for real y:", np.allclose(Sj@np.conj(T_@np.ones(n)), T_@np.ones(n)))
Xr = np.linalg.inv(T_)@X@T_; Sr = np.linalg.inv(T_)@S@T_; ar = np.linalg.inv(T_)@a@T_
print("in the real basis: X real:", np.linalg.norm(Xr.imag) < 1e-10, " X symmetric:", np.linalg.norm(Xr-Xr.T) < 1e-10,
      "| S real, symmetric:", np.linalg.norm(Sr.imag)<1e-10, np.linalg.norm(Sr-Sr.T)<1e-10, "| a real antisymmetric:", np.linalg.norm(ar.imag)<1e-10, np.linalg.norm(ar+ar.T)<1e-10)
