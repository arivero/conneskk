"""Reproducible finite checks for the dimension/chirality research note.

Requires numpy and matplotlib. No network access. Run from any directory.
The numerical checks supplement, and do not replace, the proofs in the note.
"""
from pathlib import Path
from fractions import Fraction as F
from collections import Counter
import json
import numpy as np

ROOT = Path(__file__).resolve().parent
I2 = np.eye(2, dtype=complex)
sx = np.array([[0, 1], [1, 0]], complex)
sy = np.array([[0, -1j], [1j, 0]], complex)
sz = np.diag([1, -1]).astype(complex)
pauli = [sx, sy, sz]


def angular_momentum(n):
    j = (n - 1) / 2
    m = np.arange(-j, j + 1)
    plus = np.zeros((n, n), complex)
    for k in range(n - 1):
        plus[k + 1, k] = np.sqrt((j - m[k]) * (j + m[k] + 1))
    minus = plus.conj().T
    return [(plus + minus) / 2, (plus - minus) / (2j), np.diag(m)]


def fuzzy(n, shift):
    # Column vectorization: vec(aX)=(I tensor a)vec(X).
    ln = angular_momentum(n)
    delta = [np.kron(np.eye(n), a) - np.kron(a.T, np.eye(n)) for a in ln]
    d0 = sum(np.kron(s, x) for s, x in zip(pauli, delta))
    d0 += shift * np.eye(2 * n * n)
    d = np.kron(sx, d0)
    gamma = np.kron(sz, np.eye(2 * n * n))
    transpose = np.zeros((n*n, n*n))
    for i in range(n):
        for k in range(n):
            transpose[k+n*i, i+n*k] = 1
    # J=U K, where K conjugates all coefficients ONCE.
    u = np.kron(sx, np.kron(1j * sy, transpose))
    rng = np.random.default_rng(713 + n)
    a = rng.normal(size=(n, n)) + 1j * rng.normal(size=(n, n))
    b = rng.normal(size=(n, n)) + 1j * rng.normal(size=(n, n))
    left = np.kron(np.eye(4), np.kron(np.eye(n), a))
    right = np.kron(np.eye(4), np.kron(b.T, np.eye(n)))
    left_b_star = np.kron(np.eye(4), np.kron(np.eye(n), b.conj().T))
    comm = d @ left - left @ d
    norm = lambda z: float(np.linalg.norm(z, 'fro'))
    errors = {
        'hermitian_D': norm(d - d.conj().T),
        'grading': norm(d @ gamma + gamma @ d),
        'J_squared_minus_one': norm(u @ u.conj() + np.eye(len(d))),
        'JD_equals_DJ': norm(u @ d.conj() - d @ u),
        'Jgamma_equals_minus_gammaJ': norm(u @ gamma.conj() + gamma @ u),
        'opposite_action': norm(u @ left_b_star.conj() @ u.conj().T - right),
        'order_zero': norm(left @ right - right @ left),
        'order_one': norm(comm @ right - right @ comm),
    }
    assert max(errors.values()) < 1e-9, errors
    eigenvalues = np.linalg.eigvalsh(d)
    actual = Counter(np.rint(eigenvalues).astype(int).tolist())
    expected = Counter()
    for ell in range(n):
        for value, mult in [(ell + shift, 2*ell+2), (shift-ell-1, 2*ell)]:
            expected[int(value)] += mult
            expected[int(-value)] += mult
    assert actual == +expected, (actual, expected)
    assert np.max(np.abs(eigenvalues - np.rint(eigenvalues))) < 1e-9
    return {'N': n, 'shift': shift, 'dimension': len(d), 'errors': errors,
            'spectrum': dict(sorted(actual.items()))}


def sm_checks():
    # Physical particle sector, Q=T3+Y. L ordering: (u,d) per color, then (nu,e).
    yl = np.diag([1/6]*6 + [-1/2]*2)
    yr = np.diag([2/3]*3 + [-1/3]*3 + [0, -1])
    tl = [np.kron(np.eye(4), s/2) for s in pauli]
    tr = [np.zeros((8, 8)) for _ in range(3)]
    yuk = [0.9, 0.4, 0.2, 0.1]

    def mass(h):
        ht = 1j * sy @ h.conj()
        m = np.zeros((8, 8), complex)
        for c in range(3):
            m[2*c:2*c+2, c] = yuk[0] * ht
            m[2*c:2*c+2, c+3] = yuk[1] * h
        m[6:8, 6] = yuk[2] * ht
        m[6:8, 7] = yuk[3] * h
        return m

    h = np.array([0, 1/np.sqrt(2)], complex)
    m = mass(h)
    ql, qr = tl[2] + yl, yr
    assert np.linalg.norm(ql @ m - m @ qr) < 1e-12
    assert np.linalg.matrix_rank(m) == 8
    qleft = Counter([('3', str(F(2,3))), ('3', str(F(-1,3))),
                     ('1', '0'), ('1', '-1')])
    qright = qleft.copy()
    # Finite SU2 covariance; hypercharge covariance uses opposite sign on tilde h.
    angle = 0.37
    u = np.cos(angle/2)*I2 + 1j*np.sin(angle/2)*sx
    ul = np.kron(np.eye(4), u)
    assert np.linalg.norm(mass(u@h) - ul @ m) < 1e-12
    uh = np.exp(1j*angle/2)*h
    ul = np.diag(np.exp(1j*angle*np.diag(yl)))
    ur = np.diag(np.exp(1j*angle*np.diag(yr)))
    assert np.linalg.norm(mass(uh) - ul @ m @ ur.conj().T) < 1e-12
    generators = list(zip(tl, tr)) + [(yl, yr)]
    links = [a@m - m@b for a,b in generators]
    gram = np.array([[np.trace(a.conj().T@b).real for b in links] for a in links])
    assert np.linalg.matrix_rank(gram, tol=1e-12) == 3
    assert np.linalg.norm(gram@np.array([0,0,1,1])) < 1e-12
    expected = gram[0,0]*np.array([[1,0,0,0],[0,1,0,0],[0,0,1,-1],[0,0,-1,1]])
    assert np.linalg.norm(gram-expected) < 1e-12
    anomalies = {
        'leptons_SU2_squared_Y': str(F(-1,2)*F(1,2)),
        'quarks_SU2_squared_Y': str(3*F(1,6)*F(1,2)),
        'leptons_Y_cubed': str(2*F(-1,2)**3 + 1),
        'quarks_Y_cubed': str(3*(2*F(1,6)**3+F(-2,3)**3+F(1,3)**3)),
    }
    return {'charge_multiplets_left': list(qleft), 'charge_multiplets_right': list(qright),
            'electromagnetic_intertwining_error': float(np.linalg.norm(ql@m-m@qr)),
            'mass_map_rank': int(np.linalg.matrix_rank(m)),
            'gauge_mass_gram': gram.tolist(), 'gauge_mass_rank': 3,
            'anomaly_coefficients': anomalies}


def twistor_checks():
    from itertools import combinations
    gam = [np.kron(sx,s) for s in pauli]+[np.kron(sy,I2),np.kron(sz,I2)]
    id4=np.eye(4)
    jmat=gam[1]@gam[3]
    basis=[id4]+gam+[gam[a]@gam[b] for a,b in combinations(range(5),2)]
    realcolumns=np.array([np.r_[x.real.ravel(),x.imag.ravel()] for x in basis]).T
    assert np.linalg.matrix_rank(realcolumns)==16
    assert np.linalg.norm(jmat@jmat.conj()+id4)<1e-12
    assert max(np.linalg.norm(jmat@g.conj()-g@jmat) for g in gam)<1e-12
    assert max(np.linalg.norm(g@h+h@g-2*(a==b)*id4)
               for a,g in enumerate(gam) for b,h in enumerate(gam))<1e-12
    rng=np.random.default_rng(4096)
    hopf_error=0.0
    fiber_error=0.0
    for _ in range(30):
        w=rng.normal(size=4)+1j*rng.normal(size=4)
        w/=np.linalg.norm(w)
        w2=np.cos(.43)*w+np.exp(.2j)*np.sin(.43)*(jmat@w.conj())
        x=np.array([(w.conj()@g@w).real for g in gam])
        x2=np.array([(w2.conj()@g@w2).real for g in gam])
        hopf_error=max(hopf_error,abs(x@x-1))
        fiber_error=max(fiber_error,float(np.linalg.norm(x-x2)))
    assert hopf_error<1e-12 and fiber_error<1e-12
    # Finite real triple from TWO independent module roles, with matched scalar.
    grade=np.diag([1,1,-1,-1])
    pl=np.diag([1,0,0,0]); pc=id4-pl
    trans=np.zeros((16,16))
    for a in range(4):
        for b in range(4): trans[b+4*a,a+4*b]=1
    z16=np.zeros((16,16))
    uj=np.block([[z16,trans],[trans,z16]])
    gamma=np.block([[-np.kron(grade.T,id4),z16],[z16,np.kron(id4,grade)]])

    def representation():
        lam=rng.normal()+1j*rng.normal()
        z,w=rng.normal(size=2)+1j*rng.normal(size=2)
        q=np.array([[z,w],[-w.conjugate(),z.conjugate()]])
        a=np.zeros((4,4),complex); a[:2,:2]=np.diag([lam,lam.conjugate()]);a[2:,2:]=q
        b=np.zeros((4,4),complex);b[0,0]=lam
        b[1:,1:]=rng.normal(size=(3,3))+1j*rng.normal(size=(3,3))
        return np.block([[np.kron(id4,b),z16],[z16,np.kron(id4,a)]])

    # Insert ordinary Yukawa blocks as additional input; not derived from quantization.
    def ymass(up,down):
        m=np.diag([up,down]); zz=np.zeros((2,2))
        return np.block([[zz,m],[m,zz]])
    yl=ymass(.03,.2);yq=ymass(.9,.4)
    dp=np.kron(yl.T,pl)+np.kron(yq.T,pc)
    da=np.kron(pl.T,yl)+np.kron(pc.T,yq)
    d=np.block([[dp,z16],[z16,da]])
    a,b=representation(),representation()
    opposite=uj@b.T@uj.conj().T
    comm=d@a-a@d
    errs={
       'J_squared_plus_one':float(np.linalg.norm(uj@uj.conj()-np.eye(32))),
       'J_gamma_anticommutes':float(np.linalg.norm(uj@gamma.conj()+gamma@uj)),
       'D_hermitian':float(np.linalg.norm(d-d.conj().T)),
       'JD_equals_DJ':float(np.linalg.norm(uj@d.conj()-d@uj)),
       'D_gamma_anticommutes':float(np.linalg.norm(d@gamma+gamma@d)),
       'grading_commutes_with_algebra':float(np.linalg.norm(gamma@a-a@gamma)),
       'order_zero':float(np.linalg.norm(a@opposite-opposite@a)),
       'order_one':float(np.linalg.norm(comm@opposite-opposite@comm)),
    }
    assert max(errs.values())<1e-11,errs
    return {'quaternionic_real_algebra_dimension':16,'base_linear_image_dimension':6,
            'full_twistor_real_algebra_dimension':32,
            'matched_SM_algebra_real_dimension':6+20-2,
            'Hopf_coordinate_error':hopf_error,'twistor_fiber_invariance_error':fiber_error,
            'finite_Hilbert_dimension':32,'finite_triple_errors':errs,
            'caveat':'Two module actions, scalar matching, unimodularity and Yukawas are inputs; orientability fails on the neutral R sector.'}


def spectrum(n, shift):
    ell = np.arange(n)
    lam2 = np.concatenate([(ell+shift)**2, (shift-ell-1)**2])
    mult = np.concatenate([4*ell+4, 4*ell])
    return lam2, mult


def heat_and_dimension(n, s, shift=0):
    lam2, mult = spectrum(n, shift)
    weights = np.exp(-np.outer(np.asarray(s), lam2))*mult
    heat = weights.sum(axis=1)
    dim = 2*np.asarray(s)*(weights@lam2)/heat
    return heat, dim


def make_plot():
    import matplotlib
    matplotlib.use('Agg')
    import matplotlib.pyplot as plt
    plt.rcParams.update({'font.size': 10, 'axes.spines.top': False,
                         'axes.spines.right': False, 'figure.dpi': 150})
    s = np.logspace(-8, 2, 600)
    fig, ax = plt.subplots(figsize=(8.4, 4.6), constrained_layout=True)
    values = {}
    for n, color in [(12,'#9b6c32'), (48,'#237a75'), (192,'#394c99')]:
        _, d = heat_and_dimension(n, s)
        ax.semilogx(s, 4+3*d, label=f'N = {n}', lw=2, color=color)
        values[n] = {str(t): float(4+3*heat_and_dimension(n,[t])[1][0])
                     for t in [1e-8,1e-4,1e-2,1,100]}
    ax.axhline(4, color='#999999', lw=.8, ls='--')
    ax.axhline(10, color='#999999', lw=.8, ls='--')
    ax.set(xlabel='Dimensionless heat scale s / R²  (smaller = higher resolution)',
           ylabel='Effective total spectral dimension',
           ylim=(3.7,10.5), title='Three finite real fuzzy factors: an emergent six-dimensional window')
    ax.legend(frameon=False, loc='upper right')
    fig.savefig(ROOT/'dimension_window.png')
    plt.close(fig)
    # At each finite N the UV exponent is 4; the middle plateau tends to 10.
    # At the IR end the deliberately shifted vertical Dirac has a four-dimensional kernel.
    return values


def circle_dimension(x):
    # Poisson summation avoids truncating a broad Gaussian at small x.
    n = np.arange(1, 30, dtype=float)
    if x <= 1:
        w = np.exp(-np.pi**2*n*n/x)
        return 1-4*np.pi**2/x*np.dot(n*n,w)/(1+2*w.sum())
    w = np.exp(-x*n*n)
    return 4*x*np.dot(n*n,w)/(1+2*w.sum())


def make_circle_plot():
    import matplotlib.pyplot as plt
    s = np.logspace(-7,2,700)
    a,b = 1.0,0.02
    dim = 9+np.array([circle_dimension(t/a**2)+circle_dimension(t/b**2) for t in s])
    fig,ax=plt.subplots(figsize=(8.4,4.1),constrained_layout=True)
    ax.semilogx(s,dim,color='#237a75',lw=2.3)
    for d in [9,10,11]:
        ax.axhline(d,color='#aaaaaa',lw=.8,ls='--')
    ax.set(xlabel='Heat scale s / a²  (b / a = 0.02)',ylabel='Effective total spectral dimension',
           title='Two circle scales give 9, 10 and 11 dimensional windows',ylim=(8.8,11.2))
    ax.text(.02,.05,'Heat dimension alone does not supply a chiral projection.',transform=ax.transAxes)
    fig.savefig(ROOT/'dimension_staircase.png')
    plt.close(fig)


if __name__ == '__main__':
    result = {'fuzzy': [fuzzy(n,shift) for n in (2,3,5,8) for shift in (0,1)],
              'standard_model': sm_checks(), 'twistor':twistor_checks(),
              'heat_sample_total_dimensions': make_plot()}
    make_circle_plot()
    (ROOT/'verification.json').write_text(json.dumps(result, indent=2)+'\n')
    print(json.dumps({'fuzzy_cases_passed':len(result['fuzzy']),
                      'max_axiom_residual':max(max(x['errors'].values()) for x in result['fuzzy']),
                      'SM_mass_rank':result['standard_model']['mass_map_rank'],
                      'SM_gauge_mass_rank':result['standard_model']['gauge_mass_rank'],
                      'twistor_triple_max_error':max(result['twistor']['finite_triple_errors'].values()),
                      'heat_samples_N192':result['heat_sample_total_dimensions'][192]}, indent=2))
