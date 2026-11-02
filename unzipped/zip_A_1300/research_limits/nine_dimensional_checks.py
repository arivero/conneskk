"""Checks for the compensated CP3 circle quotient and its spectral collapse.

The plot uses the exact SCALAR CP3 spectrum, not the twisted fermion spectrum.
"""
from pathlib import Path
from math import comb
import json
import numpy as np
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt

ROOT=Path(__file__).resolve().parent
I2=np.eye(2,dtype=complex)
sx=np.array([[0,1],[1,0]],complex)
sy=np.array([[0,-1j],[1j,0]],complex)
sz=np.diag([1.,-1.]).astype(complex)


def rank_real(mats):
    columns=np.array([np.r_[a.real.ravel(),a.imag.ravel()] for a in mats]).T
    return int(np.linalg.matrix_rank(columns,tol=1e-9))


def main():
    # Quaternionic structure j=Uj K and circle generator L on V=C4.
    uj=np.kron(I2,1j*sy)
    ell=np.kron(I2,sz)
    gamma=[np.kron(sx,I2),np.kron(sz,I2),np.kron(sy,sx),
           np.kron(sy,sy),np.kron(sy,sz)]
    assert np.allclose(uj@uj.conj(),-np.eye(4))
    assert np.allclose(uj@ell.conj(),-ell@uj)
    for a in gamma:
        assert np.allclose(uj@a.conj(),a@uj)
    quaternionic=[np.eye(4)]+gamma+[gamma[a]@gamma[b] for a in range(5) for b in range(a+1,5)]
    assert rank_real(quaternionic)==16
    assert rank_real(quaternionic+[1j*a for a in quaternionic])==32

    # C has opposite charges (-1,+1); W is the neutral subspace of V tensor C.
    lc=-sz
    total=np.kron(ell,I2)+np.kron(np.eye(4),lc)
    embedding=np.zeros((8,4),complex)
    for i in range(4):
        c=0 if ell[i,i].real==1 else 1
        embedding[2*i+c,i]=1
    assert np.allclose(total@embedding,0)
    assert np.linalg.matrix_rank(total)==4
    assert np.allclose(embedding.conj().T@embedding,np.eye(4))
    jw=np.kron(uj,sx)
    assert np.allclose(jw@embedding.conj(),embedding@uj)

    # Exact Q(f_B)=B, with f_B=5<w,Bw>-Tr B, using the CP3 second moment.
    projectors=[(np.eye(4)+ell)/2,(np.eye(4)-ell)/2]
    rng=np.random.default_rng(20261102)
    matrices=quaternionic+[rng.normal(size=(4,4))+1j*rng.normal(size=(4,4))]
    max_compression_error=0.
    max_covariance_error=0.
    theta=.381
    u=np.diag(np.exp(1j*theta*np.diag(ell)))
    uc=np.diag(np.exp(1j*theta*np.diag(lc)))
    w=rng.normal(size=4)+1j*rng.normal(size=4);w/=np.linalg.norm(w)
    for a in matrices:
        quantized=np.zeros((8,8),complex)
        def symbol(w):
            f=np.zeros((2,2),complex)
            for r,pr in enumerate(projectors):
                for s,ps in enumerate(projectors):
                    b=pr@a@ps
                    f[r,s]=5*np.vdot(w,b@w)-np.trace(b)
            return f
        for r,pr in enumerate(projectors):
            for s,ps in enumerate(projectors):
                e=np.zeros((2,2),complex);e[r,s]=1
                b=pr@a@ps
                # Applying the exact second-moment quantization to f_B gives B.
                qb=5*(b+np.trace(b)*np.eye(4))/5-np.trace(b)*np.eye(4)
                quantized+=np.kron(qb,e)
        compressed=embedding.conj().T@quantized@embedding
        max_compression_error=max(max_compression_error,float(np.linalg.norm(compressed-a)))
        max_covariance_error=max(max_covariance_error,float(np.linalg.norm(symbol(u@w)-uc@symbol(w)@uc.conj().T)))
    assert max_compression_error<1e-12 and max_covariance_error<1e-12

    # A genuine order-zero failure for a single left coefficient action.
    e12=np.array([[0,1],[0,0]],complex)
    e11=np.diag([1.,0.]).astype(complex)
    opposite=sx@e11.conj()@sx
    order_zero_failure=float(np.linalg.norm(e12@opposite-opposite@e12))
    assert order_zero_failure>0

    # Exact scalar CP3 harmonic character multiplicities.
    # Sym^k(C2_+ + C2_-) has weight 2a-k with multiplicity (a+1)(k-a+1).
    # Scalar harmonics are H_(k,k) minus H_(k-1,k-1); effective charge is a-b.
    max_k=700
    previous=np.array([],dtype=np.int64)
    evals=[];charges=[];mults=[]
    inv_cumulative=0
    for k in range(max_k+1):
        a=np.arange(k+1,dtype=np.int64)
        m=(a+1)*(k-a+1)
        convolution=np.correlate(m,m,'full')
        d=convolution.copy()
        if k:d-=np.pad(previous,(1,1))
        assert np.all(d>=0)
        assert int(d.sum())==comb(k+3,3)**2-(comb(k+2,3)**2 if k else 0)
        inv_cumulative+=int(d[k])
        assert inv_cumulative==((k+2)**5-(k+2))//30
        evals.extend([4*k*(k+3)]*len(d))
        charges.extend(range(-k,k+1));mults.extend(d.tolist())
        previous=convolution
    ev=np.array(evals,dtype=float);q=np.array(charges,dtype=float);multiplicity=np.array(mults,dtype=float)
    energies=np.geomspace(2.5,160,90)
    fig,ax=plt.subplots(figsize=(8.3,4.8),constrained_layout=True)
    diagnostics={}
    for tau,color in [(0,'#576170'),(10,'#d18122'),(80,'#277ea8'),(1000,'#26714c')]:
        lam=ev+tau*tau*q*q
        dims=[]
        for energy in energies:
            s=1/(energy*energy)
            weights=multiplicity*np.exp(-s*lam)
            dims.append(4+2*s*np.dot(weights,lam)/weights.sum())
        ax.semilogx(energies,dims,color=color,lw=2,label=rf'$\tau={tau}$')
        diagnostics[str(tau)]={str(e):float(dims[np.argmin(abs(energies-e))]) for e in [10,40,160]}
    ax.axhline(9,color='#bbbbbb',lw=1,ls='--');ax.axhline(10,color='#bbbbbb',lw=1,ls='--')
    ax.set(xlabel=r'Resolution $E=1/\sqrt{s}$ (FS curvature units)',
           ylabel='Effective total heat dimension',ylim=(7.5,10.15),
           title='A controlled 10 → 9 spectral limit')
    ax.text(.03,.04,'Scalar CP³ spectrum + four spacetime dimensions; no fermion-fit claim.',
            transform=ax.transAxes,fontsize=9,color='#555555')
    ax.legend(frameon=False,ncol=2,loc='lower right')
    ax.grid(alpha=.15)
    fig.savefig(ROOT/'nine_dimensional_collapse.png',dpi=180)
    plt.close(fig)

    # Clifford de Rham half on the two harmonic forms (1, vol) of S5.
    # Central normalized volume has eigenvalues ±1 and exchanges these lines.
    harmonic_volume=np.array([[0,-1j],[1j,0]],complex)
    harmonic_half_rank=int(np.linalg.matrix_rank((np.eye(2)+harmonic_volume)/2))
    assert harmonic_half_rank==1
    data={'compensated_kernel_dimension':4,'quaternionic_real_dimension':16,
          'complex_matrix_real_dimension':32,'compression_error':max_compression_error,
          'symbol_equivariance_error':max_covariance_error,
          'single_left_coefficient_order_zero_failure':order_zero_failure,
          'scalar_cutoff_k':max_k,'exact_neutral_cumulative_count':'((K+2)^5-(K+2))/30',
          'plot_heat_dimension_samples':diagnostics,'S5_harmonic_Clifford_half_dimension':harmonic_half_rank,
          'scope':'Checks kernel compensation, symbols and exact scalar spectral arithmetic. Does not prove a full real SM triple or derive a 9D gauge vacuum.'}
    (ROOT/'nine_dimensional_verification.json').write_text(json.dumps(data,indent=2)+'\n')
    print(json.dumps(data,indent=2))


if __name__=='__main__':main()
