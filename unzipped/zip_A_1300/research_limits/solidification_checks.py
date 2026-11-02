"""Finite centralizer/gauge checks and exact CP3 topological checks.

Run with Python + numpy. No network. Results do not supply continuum SM ancestry.
"""
from pathlib import Path
from fractions import Fraction as F
import json
import numpy as np
from checks import I2, sx, sy, sz

ROOT=Path(__file__).resolve().parent
I4=np.eye(4,dtype=complex)
Z4=np.zeros((4,4),complex)
Z16=np.zeros((16,16),complex)


def rep(a,b):
    return np.block([[np.kron(I4,b),Z16],[Z16,np.kron(I4,a)]])


def realvec(a):
    return np.r_[a.real.ravel(),a.imag.ravel()]


def comm(a,b): return a@b-b@a


def nullspace(m):
    _,s,vh=np.linalg.svd(m,full_matrices=False)
    rank=int(np.sum(s>1e-10))
    return vh[rank:].T,rank


def centralizer(operators,basis):
    columns=[np.concatenate([realvec(comm(t,a)) for t in operators]) for a in basis]
    ker,rank=nullspace(np.array(columns).T)
    return [sum(c*b for c,b in zip(ker[:,k],basis)) for k in range(ker.shape[1])],rank


def main():
    h=[I2,1j*sx,1j*sy,1j*sz]
    algebra=[]
    for side in [0,2]:
        for q in h:
            a=Z4.copy();a[side:side+2,side:side+2]=q
            algebra.append(rep(a,Z4))
    for row in range(4):
        for col in range(4):
            b=Z4.copy();b[row,col]=1
            algebra.extend([rep(Z4,b),rep(Z4,1j*b)])
    assert len(algebra)==40
    tr=np.zeros((16,16))
    for a in range(4):
        for b in range(4):tr[b+4*a,a+4*b]=1
    uj=np.block([[Z16,tr],[tr,Z16]])
    grade=np.diag([1,1,-1,-1])
    gamma=np.block([[-np.kron(grade.T,I4),Z16],[Z16,np.kron(I4,grade)]])
    majorana=np.zeros((32,32),complex)
    majorana[0,16]=majorana[16,0]=1
    top=np.zeros((32,32),complex)
    for color in [1,2,3]:
        p,q=color,color+8
        top[p,q]=top[q,p]=1
        p,q=16+4*color,16+4*color+2
        top[p,q]=top[q,p]=1
    for t in [majorana,top]:
        assert np.linalg.norm(t-t.conj().T)<1e-12
        assert np.linalg.norm(uj@t.conj()-t@uj)<1e-12
        assert np.linalg.norm(gamma@t+t@gamma)<1e-12
    assert np.linalg.norm(majorana@top)<1e-12
    sm,rank1=centralizer([majorana],algebra)
    em,rank2=centralizer([majorana,top],algebra)
    assert len(sm)==24 and len(em)==20
    pF=rep(Z4,I4); pFop=uj@pF.conj()@uj.conj().T
    first_order_failure=np.linalg.norm(comm(comm(majorana,pF),pFop))
    assert first_order_failure>1
    assert max(np.linalg.norm(comm(majorana,a)) for a in sm)<1e-10

    # Gauge Lie algebra: su2_R + su2_L + su4, inherited before compression.
    gauge=[]
    for side in [0,2]:
        for s in [sx,sy,sz]:
            a=Z4.copy();a[side:side+2,side:side+2]=1j*s
            gauge.append(rep(a,Z4))
    for row in range(4):
        for col in range(row+1,4):
            b=Z4.copy();b[row,col]=1;b[col,row]=-1
            gauge.append(rep(Z4,b))
            b=Z4.copy();b[row,col]=1j;b[col,row]=1j
            gauge.append(rep(Z4,b))
    for row in range(3):
        b=Z4.copy();b[row,row]=1j;b[3,3]=-1j
        gauge.append(rep(Z4,b))
    gauge_lift=[a+uj@a.conj()@uj.conj().T for a in gauge]
    assert len(gauge_lift)==21
    gsm,_=centralizer([majorana],gauge_lift)
    gem,_=centralizer([majorana,top],gauge_lift)
    assert len(gsm)==12 and len(gem)==9

    # On the parent representation trace rho(x)=4 tr b, not a trace redefined after projection.
    keep=np.array([k for k in range(32) if k not in [0,16]])
    pure_lambda_a=np.diag([1j,-1j,0,0])
    pure_lambda_b=np.diag([1j,0,0,0])
    pure_color_a=Z4.copy();pure_color_b=np.diag([0,1j,1j,1j])
    lrep=rep(pure_lambda_a,pure_lambda_b)
    crep=rep(pure_color_a,pure_color_b)
    full_trace=[float(np.trace(x).imag) for x in [lrep,crep]]
    reduced_trace=[float(np.trace(x[np.ix_(keep,keep)]).imag) for x in [lrep,crep]]
    assert full_trace==[4.0,12.0] and reduced_trace==[2.0,12.0]

    # Exact rational index for spin Dirac twisted by O(k) on CP3.
    indices={k:F(k**3-k,6) for k in range(-5,6)}
    assert indices[3]==4 and indices[1]==0
    anomaly={'cubic':F(1),'mixed':F(1,4)*F(4)}
    # One generation, all-left-handed convention, integral normalization q=6Y.
    charges=[1]*6+[-4]*3+[2]*3+[-3]*2+[6,0]
    sm_anomaly={'linear':sum(charges),'cubic':sum(q**3 for q in charges)}
    assert sm_anomaly=={'linear':0,'cubic':0}
    # Eigenvalue toy: use cancellation-free formula for the light seesaw eigenvalue.
    scaling={}
    for alpha in [0,.25,.5,.75]:
        scaling[str(alpha)]={}
        for t in [10,100,10000]:
            m=t**alpha
            light=-2*m*m/(t+np.sqrt(t*t+4*m*m))
            scaling[str(alpha)][str(t)]=float(light)
    data={
      'real_algebra_dimensions':[40,len(sm),len(em)],
      'connected_gauge_lie_dimensions':[21,len(gsm),len(gem)],
      'Majorana_rank':int(np.linalg.matrix_rank(majorana)),
      'top_rank':int(np.linalg.matrix_rank(top)),
      'strict_light_H_dimensions':[32,30,18],
      'parent_first_order_failure_Frobenius_norm':float(first_order_failure),
      'trace_coefficients_lambda_color_common_phase_full':full_trace,
      'trace_coefficients_lambda_color_common_phase_after_neutrino_removal':reduced_trace,
      'CP3_spin_twist_indices':{str(k):str(v) for k,v in indices.items()},
      'CP3_local_anomaly_moments':{k:str(v) for k,v in anomaly.items()},
      'SM_hypercharge_anomaly_moments_q_equals_6Y':sm_anomaly,
      'seesaw_light_eigenvalues':scaling,
      'scope':'Exact finite linear algebra plus exact topological arithmetic; no continuum SM vacuum or anomaly spectrum derivation.'
    }
    (ROOT/'solidification_verification.json').write_text(json.dumps(data,indent=2)+'\n')
    print(json.dumps(data,indent=2))


if __name__=='__main__': main()
