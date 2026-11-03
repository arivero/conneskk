#!/usr/bin/env python3
"""Radial Callias system of lemma 28 on the disc bundle of Lambda^2_- over S^4 (Python, numpy and scipy).

G = Sp(2), K = Sp(1)_a x Sp(1)_b, H = Sp(1)_a x U(1)_b. For an irreducible representation V of G,
the sections in the V-isotypic part are x -> F(x) in Hom_H(V, Sigma_6 (x) E), E = S^3(S), and
    T = i Z d/dx + D_6(rho(x)) - s(x) A_E/rho(x) + i sign phi(x) tau,
with D_6(rho) = A0 + A1/rho + A2 rho the slice Dirac operator of the connection metric with S^4 of
radius 1 and fibre radius rho, and A_E the vertical part of the pull-back connection of E (s = 0 for
the pull-back connection, s = 1 for the connection preserving the line summands).

Convention: Clifford generators are Hermitian, c^2 = +1, so nabla = E - (1/4) Gamma_ijk c_j c_k. The
first version of this computation had the opposite sign of the spin connection; test (c) below fails
with that sign. With sign = -1 and the wall condition of Theorem 28.9 (bc = +1 in solve) the right
singular vector is at the zero section, and its partner at the wall is the right singular vector of
the adjoint problem, sign = +1 with bc = -1. Usage: lemma28_radial.py          runs the tests;
                       lemma28_radial.py tables   also prints the tables of Result 28.5.
"""
import sys
import numpy as np
import scipy.sparse as sp
from scipy.linalg import null_space
from scipy.sparse.linalg import eigsh

np.set_printoptions(precision=5, suppress=True, linewidth=160)
s0 = np.eye(2)
sx = np.array([[0, 1], [1, 0]], complex)
sy = np.array([[0, -1j], [1j, 0]])
sz = np.array([[1, 0], [0, -1]], complex)
GAM = [np.kron(sx, sx), np.kron(sx, sy), np.kron(sx, sz), np.kron(sy, s0), np.kron(sz, s0)]
J = lambda a, b: 0.25 * (GAM[a] @ GAM[b] - GAM[b] @ GAM[a])
ta = [0.5 * (J(1, 2) + J(0, 3)), 0.5 * (J(2, 0) + J(1, 3)), 0.5 * (J(0, 1) + J(2, 3))]
tb = [0.5 * (J(1, 2) - J(0, 3)), 0.5 * (J(2, 0) - J(1, 3)), 0.5 * (J(0, 1) - J(2, 3))]
if not np.allclose(tb[0] @ tb[1] - tb[1] @ tb[0], tb[2]):
    tb = [-x for x in tb]
if not np.allclose(ta[0] @ ta[1] - ta[1] @ ta[0], ta[2]):
    ta = [-x for x in ta]
GEN = [J(a, 4) for a in range(4)] + tb + ta   # e0..e3 in m; e4, e5 in p; t3b, ta1..3 in h
N = len(GEN)
_A = np.array([g.flatten() for g in GEN]).T
C = np.zeros((N, N, N))
for i in range(N):
    for j in range(N):
        C[i, j, :] = np.linalg.lstsq(_A, (GEN[i] @ GEN[j] - GEN[j] @ GEN[i]).flatten(), rcond=None)[0].real


def clifford6():
    out = []
    for k in range(3):
        for s in (sx, sy):
            mats = [sz] * k + [s] + [np.eye(2, dtype=complex)] * (2 - k)
            M = mats[0]
            for x in mats[1:]:
                M = np.kron(M, x)
            out.append(M)
    return out


c = clifford6()
Z8 = np.eye(8, dtype=complex)
for x in c:
    Z8 = Z8 @ x
Z8 = -1j * Z8 if not np.allclose(Z8 @ Z8, np.eye(8)) else Z8
assert np.allclose(Z8 @ Z8, np.eye(8)) and all(np.allclose(Z8 @ x, -x @ Z8) for x in c)


def spin_rep(j):
    d = int(2 * j + 1)
    ms = [j - k for k in range(d)]
    Jz = np.diag(ms).astype(complex)
    Jp = np.zeros((d, d), complex)
    for k in range(d - 1):
        Jp[k, k + 1] = np.sqrt(j * (j + 1) - ms[k + 1] * (ms[k + 1] + 1))
    Jm = Jp.conj().T
    return [-1j * (Jp + Jm) / 2, -1j * (Jp - Jm) / (2j), -1j * Jz]


Eb = spin_rep(1.5)
ZW = np.kron(Z8, np.eye(4))
cW = [np.kron(x, np.eye(4)) for x in c]
EbW = [np.kron(np.eye(8), E) for E in Eb]
H_IDX = [6, 7, 8, 9]


def rho_spinor(h):
    S = np.zeros((8, 8), complex)
    for j in range(6):
        for k in range(6):
            S += 0.25 * C[h, k, j] * c[j] @ c[k]
    return S


RHO_W = {h: np.kron(rho_spinor(h), np.eye(4)) + np.kron(np.eye(8), Eb[2] if h == 6 else np.zeros((4, 4), complex)) for h in H_IDX}


def hom_basis(V):
    d = V[0].shape[0]
    W = 32
    A = np.vstack([np.kron(V[i].T, np.eye(W)) - np.kron(np.eye(d), RHO_W[i]) for i in H_IDX])
    ns = null_space(A, rcond=1e-10)
    return [ns[:, k].reshape(W, d, order='F') for k in range(ns.shape[1])]


def slice_op(F, V, rho):
    """Slice Dirac operator with the pull-back connection of E, in the orthonormal basis F of Hom_H(V, Sigma_6 (x) E)."""
    scale = np.array([1, 1, 1, 1, rho, rho], float)
    Cs = np.array([[[C[i, j, k] * scale[k] / (scale[i] * scale[j]) for k in range(6)] for j in range(6)] for i in range(6)])
    Gam = 0.5 * (Cs - np.transpose(Cs, (2, 0, 1)) + np.transpose(Cs, (1, 2, 0)))   # <nabla_i e_j, e_k>
    spin = np.zeros_like(cW[0])
    for i in range(6):
        for j in range(6):
            for k in range(6):
                if abs(Gam[i, j, k]) > 1e-14:
                    spin = spin - 0.25 * Gam[i, j, k] * cW[i] @ cW[j] @ cW[k]
    n = len(F)
    M = np.zeros((n, n), complex)
    for b, f in enumerate(F):
        out = 1j * spin @ f
        for i in range(6):
            e = -f @ V[i] / scale[i]
            if i in (4, 5):
                e = e + EbW[i - 4] @ f / scale[i]
            out = out + 1j * cW[i] @ e
        for a, g in enumerate(F):
            M[a, b] = np.sum(g.conj() * out)
        assert np.linalg.norm(out - sum(M[a, b] * F[a] for a in range(n))) < 1e-8
    return M


class System:
    def __init__(self, V):
        self.V, self.F = V, hom_basis(V)
        self.n = n = len(self.F)
        Ds = [slice_op(self.F, V, r) for r in (0.5, 1.0, 2.0)]
        A = np.array([[1, 1 / r, r] for r in (0.5, 1.0, 2.0)])
        co = np.linalg.solve(A, np.array([d.flatten() for d in Ds]))
        self.A0, self.A1, self.A2 = [co[i].reshape(n, n) for i in range(3)]
        ip = lambda op: np.array([[np.sum(g.conj() * op(f)) for f in self.F] for g in self.F])
        self.Z = ip(lambda f: ZW @ f)
        self.T = ip(lambda f: 1j * EbW[2] @ f)
        self.AE = ip(lambda f: sum(1j * cW[i] @ EbW[i - 4] @ f for i in (4, 5)))
        w, U = np.linalg.eigh((self.Z + self.Z.conj().T) / 2 + 0.1234 * (self.T + self.T.conj().T) / 2)
        self.U, self.zv = U, np.real(np.diag(U.conj().T @ self.Z @ U))
        self.tv = np.real(np.diag(U.conj().T @ self.T @ U))

    def D(self, rho, s=0.0):
        return self.A0 + (self.A1 - s * self.AE) / rho + self.A2 * rho

    def wall(self, rho, s=0.0):
        """Compression of D to the stable channels at the wall, with the profile overlap factors of Lemma 28.12."""
        iu = [i for i in range(self.n) if round(self.zv[i]) == 1 and self.tv[i] < 0]
        iv = [i for i in range(self.n) if round(self.zv[i]) == -1 and self.tv[i] < 0]
        ov = lambda a, b: 2 * np.sqrt(abs(self.tv[a] * self.tv[b])) / (abs(self.tv[a]) + abs(self.tv[b]))
        O = np.array([[ov(a, b) for b in iu] for a in iv])
        return (self.U[:, iv].conj().T @ self.D(rho, s) @ self.U[:, iu]) * O, iu, iv


def tensor(A, B):
    return {i: np.kron(A[i], np.eye(B[i].shape[0])) + np.kron(np.eye(A[i].shape[0]), B[i]) for i in A}


def split(R):
    Cas = sum(-R[i] @ R[i] for i in range(4)) + sum(-2 * R[i] @ R[i] for i in range(4, 10))
    w, U = np.linalg.eigh((Cas + Cas.conj().T) / 2)
    out = {}
    for val in sorted(set(np.round(w, 6))):
        P = U[:, np.abs(w - val) < 1e-5]
        out[str(P.shape[1])] = {i: P.conj().T @ R[i] @ P for i in R}
    return out


def representations():
    V4 = {i: GEN[i] for i in range(N)}
    R = {'4': V4}
    R.update(split(tensor(V4, V4)))
    R.update({k: v for k, v in split(tensor(R['10'], V4)).items() if k in ('16', '20')})
    R.update({k: v for k, v in split(tensor(R['16'], R['5'])).items() if k in ('40',)})
    return R


GP, GW = np.array([-np.sqrt(3 / 5), 0, np.sqrt(3 / 5)]), np.array([5 / 9, 8 / 9, 5 / 9])


def solve(S, l, rfun, phifun, sign, bc, sfun=lambda x: 0.0, k=2, Nx=4000):
    """P1 quadratic form of T^* T with u(0) = 0, and u(l) in Z < 0 (bc > 0) or Z > 0 (bc < 0). Rayleigh quotients of the exact form bound the singular values from above; with three-point quadrature they approximate those bounds."""
    n = S.n
    xs = l * 0.5 * (1 - np.cos(np.pi * np.linspace(0, 1, Nx + 1)))
    iZ = 1j * S.Z
    ii, jj = np.meshgrid(np.arange(n), np.arange(n), indexing='ij')
    rows, cols, vals, mr, mc, mv = [], [], [], [], [], []
    for e in range(Nx):
        a, b = xs[e], xs[e + 1]
        h = b - a
        KB = np.zeros((2, 2, n, n), complex)
        MB = np.zeros((2, 2))
        for g, w in zip(GP, GW):
            x = (a + b) / 2 + h / 2 * g
            B = S.D(rfun(x), sfun(x)) + sign * 1j * phifun(x) * S.T
            Nf, dN = [(b - x) / h, (x - a) / h], [-1 / h, 1 / h]
            for p in range(2):
                Tp = dN[p] * iZ + Nf[p] * B
                for q in range(2):
                    KB[p, q] += w * h / 2 * (Tp.conj().T @ (dN[q] * iZ + Nf[q] * B))
                    MB[p, q] += w * h / 2 * Nf[p] * Nf[q]
        for p in range(2):
            for q in range(2):
                rows.append(((e + p) * n + ii).ravel())
                cols.append(((e + q) * n + jj).ravel())
                vals.append(KB[p, q].ravel())
                mr.append((e + p) * n + np.arange(n))
                mc.append((e + q) * n + np.arange(n))
                mv.append(np.full(n, MB[p, q]))
    size = (Nx + 1) * n
    K = sp.csc_matrix((np.concatenate(vals), (np.concatenate(rows), np.concatenate(cols))), shape=(size, size))
    M = sp.csc_matrix((np.concatenate(mv), (np.concatenate(mr), np.concatenate(mc))), shape=(size, size))
    wz, Uz = np.linalg.eigh(S.Z)
    keep = Uz[:, wz < 0] if bc > 0 else Uz[:, wz > 0]
    r, cc, v, col = [], [], [], 0
    for p in range(1, Nx):
        for i in range(n):
            r.append(p * n + i)
            cc.append(col)
            v.append(1.0)
            col += 1
    for m in range(keep.shape[1]):
        for i in range(n):
            r.append(Nx * n + i)
            cc.append(col)
            v.append(keep[i, m])
        col += 1
    P = sp.csc_matrix((v, (r, cc)), shape=(size, col))
    Kp, Mp = (P.conj().T @ K @ P).tocsc(), (P.conj().T @ M @ P).tocsc()
    w, U = eigsh((Kp + Kp.conj().T) / 2, k=k, M=Mp, sigma=-1e-3, which='LM')
    o = np.argsort(w)
    return np.sqrt(np.maximum(w[o], 0)), (P @ U)[:, o], xs


def mode(S, vec, xs):
    """Position, the ratio in Q(x_a) = ratio Gamma_a/5, the integrated fibre part tr(B t-hat)/tr B, the ratio of the maxima of |tr(B t-hat)| and tr B, and the supremum of the pointwise ratio (representation 4 only)."""
    u = vec.reshape(xs.size, S.n)
    dx = np.gradient(xs)
    that = 2j * GEN[6]
    bn, b5, bt = np.zeros(xs.size), np.zeros(xs.size), np.zeros(xs.size)
    for j in range(xs.size):
        F = sum(u[j, i] * S.F[i] for i in range(S.n))
        B = F.conj().T @ F
        bn[j], b5[j], bt[j] = np.trace(B).real, np.trace(B @ GAM[4]).real, np.trace(B @ that).real
    I = lambda f: np.sum(f * dx)
    d = np.sum(np.abs(u) ** 2, axis=1)
    keep = bn > 1e-30 * np.max(bn)
    return dict(pos=I(xs * d) / I(d), q5=I(b5) / I(bn), t=I(bt) / I(bn), ratio_of_maxima=np.max(np.abs(bt)) / np.max(bn),
                sup_pointwise=np.max(np.abs(bt[keep]) / bn[keep]))


CASIMIR = {'4': [0.0, 4.0], '16': [5.0, 9.0], '20': [0.0, 8.0], '40': [12.0, 16.0]}
KODAIRA = {'4': 0.0, '16': 5.0, '20': 5.0, '40': 12.0}   # j(j+4) at j = 0, 1, 1, 2


def tests(R):
    print('(a) {A0,Z} = 0, [A0,tau] = 0; (b) A0^2 is the Casimir formula on S^4: Cas_G + 3/2 - Cas_K(twist); (c) {A0,A1} = 0; A2 is its curvature contraction')
    for name in ('4', '16', '20', '40'):
        S = System(R[name])
        assert np.linalg.norm(S.A0 @ S.Z + S.Z @ S.A0) < 1e-9 and np.linalg.norm(S.A0 @ S.T - S.T @ S.A0) < 1e-9
        print('  rep %s n=%d: A0^2 eigenvalues %s; (c) |{A0,A1}| = %.1e' % (name, S.n, sorted(set(np.round(np.linalg.eigvalsh(S.A0 @ S.A0), 4))), np.linalg.norm(S.A0 @ S.A1 + S.A1 @ S.A0)))
        assert np.linalg.norm(S.A0 @ S.A1 + S.A1 @ S.A0) < 1e-9
        assert sorted(set(np.round(np.linalg.eigvalsh(S.A0 @ S.A0) + 0.0, 6))) == CASIMIR[name]
        # A2 from the curvature contraction: A2 = -(i/8) sum_{a,b in m, alpha in p} C[a,b,alpha] c_a c_b c_alpha
        L = sum(-1j / 8 * C[a, b, al] * cW[a] @ cW[b] @ cW[al] for a in range(4) for b in range(4) for al in (4, 5))
        A2c = np.array([[np.sum(g.conj() * (L @ f)) for f in S.F] for g in S.F])
        assert np.linalg.norm(A2c - S.A2) < 1e-9
    print('(d) rho = 1, s = 1 (Fubini-Study, line summands): D^2 on tau = -3/2, against j(j+4) = 0, 5, 12 on (0,0)-forms in O(1)')
    for name in ('4', '16', '20', '40'):
        S = System(R[name])
        idx = [i for i in range(S.n) if abs(S.tv[i] + 1.5) < 1e-6]
        B = S.U[:, idx].conj().T @ S.D(1.0, 1.0) @ S.U[:, idx]
        vals = sorted(set(np.round(np.linalg.eigvalsh(B) ** 2, 5)))
        print('  rep %s: %s' % (name, vals))
        assert KODAIRA[name] in vals
    print('(e) wall operator on 4: fibre part against -2(rho^2+2)^2/(9+2(rho^2+2)^2)')
    S = System(R['4'])
    for r in (0.5, 1.0, 2.0):
        A, iu, iv = S.wall(r)
        cv = null_space(A)[:, 0]
        i32 = [k for k, i in enumerate(iu) if abs(abs(S.tv[i]) - 1.5) < 1e-6][0]
        w = abs(cv[i32]) ** 2
        print('  rho=%.1f weight %.10f formula %.10f singular values %s' % (r, w, 2 * (r * r + 2) ** 2 / (9 + 2 * (r * r + 2) ** 2), np.linalg.svd(A, compute_uv=False)))
        assert abs(w - 2 * (r * r + 2) ** 2 / (9 + 2 * (r * r + 2) ** 2)) < 1e-9


def tables(R):
    S = System(R['4'])
    tr = lambda rinf: (lambda x: rinf * np.tanh(x / rinf))
    pf = lambda p, w=0.3: (lambda x: p * np.tanh(x / w))
    print('lowest two singular values, rep 4, rho_inf = 1, w = 0.3, core problem (sign -1, bc +1)')
    for phi0 in (3., 4., 5., 6., 8.):
        print('  phi0=%.0f' % phi0, [np.array2string(solve(S, l, tr(1.), pf(phi0), -1., 1, Nx=5000)[0], precision=4) for l in (2., 3., 4.)], flush=True)
    print('the two modes, rho_inf = 1, l = 3')
    for phi0 in (10., 16., 40.):
        a = solve(S, 3., tr(1.), pf(phi0), -1., 1, Nx=6000)
        b = solve(S, 3., tr(1.), pf(phi0), 1., -1, Nx=6000)
        print('  phi0=%.0f core %s wall %s' % (phi0, mode(S, a[1][:, 0], a[2]), mode(S, b[1][:, 0], b[2])), flush=True)
    print('wall fibre part against rho_inf')
    for rinf in (0.5, 0.7, 1.0, 1.5, 2.0, 3.0):
        b = solve(S, 3., tr(rinf), pf(16.), 1., -1, Nx=5000)
        print('  rho_inf=%.1f %s, next %.4f' % (rinf, mode(S, b[1][:, 0], b[2]), b[0][1]), flush=True)
    print('core density at finite mass: convergence in the mesh')
    for phi0, l in ((4., 3.), (5., 3.), (6., 3.)):
        for Nx in (2500, 5000, 10000):
            a = solve(S, l, tr(1.), pf(phi0), -1., 1, Nx=Nx)
            m = mode(S, a[1][:, 0], a[2])
            print('  phi0=%.0f l=%.0f Nx=%d lambda=%.5f t=%.4e ratio of maxima=%.4e sup pointwise=%.4f t/lambda^2=%.3f' % (phi0, l, Nx, a[0][0], m['t'], m['ratio_of_maxima'], m['sup_pointwise'], m['t'] / a[0][0] ** 2), flush=True)


if __name__ == '__main__':
    R = representations()
    tests(R)
    if len(sys.argv) > 1 and sys.argv[1] == 'tables':
        tables(R)
