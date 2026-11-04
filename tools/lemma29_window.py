#!/usr/bin/env python3
"""Exact inputs and the prediction test of lemma 29 (Python, numpy and scipy).

Usage: lemma29_window.py          asserts the exact inputs;
       lemma29_window.py table    also solves the radial system under Setting 29.0.
"""
import itertools
import os
import sys
import numpy as np

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import lemma28_radial as L


def c2(a, b, c):
    """Casimir of the SU(4) type with Dynkin labels [a, b, c], with C_2(4) = 15/8."""
    l = (a + b + c, b + c, c, 0)
    n = sum(l)
    return 0.5 * (sum(x * x for x in l) - n * n / 4 + sum((3 - 2 * i) * x for i, x in enumerate(l)))


def beta(k):
    return 1.5 - 3 * k * k / 8


# Values of D^2 on the lines at rho = 1, for each V, from the formula of Lemma 29.5.
# O(3): 4 -> kernel only; 16, 20 -> types 36 (55/8), 20'' (63/8); O(1): see the table in the lemma.
EXPECTED = {'4': {1.5: [0.0], 0.5: [3.0, 6.0]},
            '16': {1.5: [5.0], 0.5: [6.0, 8.0, 12.0]},
            '20': {1.5: [5.0, 10.0], 0.5: [8.0, 9.0, 12.0]},
            '40': {1.5: [12.0], 0.5: [12.0, 15.0, 20.0]}}


def exact(R):
    AE = sum(1j * L.cW[i] @ L.EbW[i - 4] for i in (4, 5))
    Tau = 1j * L.EbW[2]
    w, U = np.linalg.eigh((Tau + Tau.conj().T) / 2)
    idx = lambda t: U[:, np.abs(w - t) < 1e-9]
    assert abs(np.linalg.norm(idx(-1.5).conj().T @ AE @ idx(-0.5), 2) - np.sqrt(3)) < 1e-9
    assert abs(np.linalg.norm(AE, 2) - 2) < 1e-9
    A2 = sum(-1j / 8 * L.C[p, q, al] * L.cW[p] @ L.cW[q] @ L.cW[al] for p in range(4) for q in range(4) for al in (4, 5))
    assert abs(np.linalg.norm(A2, 2) - 1) < 1e-9
    print('block of A_E on the stable channels: sqrt 3; ||A_E|| = 2; ||A_2|| = 1')
    for name, want in EXPECTED.items():
        S = L.System(R[name])
        D = S.D(1.0, 1.0)
        assert np.linalg.norm(D @ S.T - S.T @ D) < 1e-9 and np.linalg.norm(D @ S.Z + S.Z @ D) < 1e-9
        for q, vals in want.items():
            idx_q = [i for i in range(S.n) if abs(S.tv[i] + q) < 1e-6]   # q = -tau
            B = S.U[:, idx_q].conj().T @ D @ S.U[:, idx_q]
            Zb = S.U[:, idx_q].conj().T @ S.Z @ S.U[:, idx_q]
            e, V = np.linalg.eigh((B + B.conj().T) / 2)
            assert sorted(set(np.round(e ** 2, 6))) == vals, (name, q)
            kern = [np.real(V[:, i].conj() @ Zb @ V[:, i]) for i in range(len(e)) if abs(e[i]) < 1e-9]
            if name == '4' and q == 1.5:
                assert len(kern) == 1 and abs(kern[0] - 1) < 1e-9
            else:
                assert not kern
        print('  V = %s: values of D^2 on q = 3/2, 1/2: %s' % (name, want))
    odd = sorted((c2(a, b, c), (a, b, c)) for a, b, c in itertools.product(range(8), repeat=3) if (a + 2 * b + 3 * c) % 2 == 1 and c2(a, b, c) < 55 / 8 - 1e-9)
    assert [t for _, t in odd] == [(0, 0, 1), (1, 0, 0), (0, 1, 1), (1, 1, 0)]
    for k, lam, val in ((3, (1, 0, 0), 0.0), (3, (2, 0, 1), 5.0), (3, (3, 0, 2), 12.0), (1, (0, 0, 1), 3.0), (1, (1, 1, 0), 6.0), (1, (1, 0, 2), 8.0), (1, (3, 0, 0), 9.0), (0, (0, 1, 0), 4.0)):
        assert abs(c2(*lam) + beta(k) - val) < 1e-9
    print('types of odd 4-ality with C_2 < 55/8: %s; the formula of Lemma 29.5 reproduces the values' % [t for _, t in odd])


def table(R):
    def ss(x, a, b):
        t = np.clip((x - a) / (b - a), 0, 1)
        return t * t * t * (10 - 15 * t + 6 * t * t)
    rho = lambda x: x * (1 - ss(x, 0.4, 1.2)) + ss(x, 0.4, 1.2)
    sw = lambda x: ss(x, 0.6, 1.2)
    for name in ('4', '16', '20', '40'):
        S = L.System(R[name])
        for M in (8., 16., 32.):
            a = L.solve(S, 3., rho, lambda x: M * rho(x), -1., 1, sfun=sw, k=4, Nx=2500)
            print('  V = %s, M = %.0f: %s' % (name, M, np.array2string(a[0], precision=4)), flush=True)
    S = L.System(R['4'])
    for M in (8., 16., 32.):
        b = L.solve(S, 3., rho, lambda x: M * rho(x), 1., -1, sfun=sw, k=2, Nx=4000)
        m = L.mode(S, b[1][:, 0], b[2])
        print('  adjoint problem, V = 4, M = %.0f: pos %.4f, fibre part %.5f, Gamma_5 part %.5f' % (M, m['pos'], m['t'], m['q5']), flush=True)


if __name__ == '__main__':
    R = L.representations()
    exact(R)
    if len(sys.argv) > 1 and sys.argv[1] == 'table':
        table(R)
