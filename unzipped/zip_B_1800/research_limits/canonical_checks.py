"""Independent finite checks for the consolidated KK/NCG investigation.

Checks curvature holonomy, parallel commutants, spin-lift real algebras,
characteristic-class arithmetic and gauge trace normalizations. No PDE or
vacuum solution is inferred from these finite checks.
"""
from fractions import Fraction as F
from pathlib import Path
import json
import numpy as np

ROOT=Path(__file__).resolve().parent
I2=np.eye(2,dtype=complex)
sx=np.array([[0,1],[1,0]],complex)
sy=np.array([[0,-1j],[1j,0]],complex)
sz=np.diag([1.,-1.]).astype(complex)


def comm(a,b):return a@b-b@a


def realvec(a):return np.r_[a.real.ravel(),a.imag.ravel()]


def rank_real(mats):
    return int(np.linalg.matrix_rank(np.array([realvec(a) for a in mats]).T,tol=1e-9))


def complex_commutant_dimension(gens):
    n=len(gens[0]);eye=np.eye(n)
    matrix=np.concatenate([np.kron(eye,t)-np.kron(t.T,eye) for t in gens])
    return n*n-int(np.linalg.matrix_rank(matrix,tol=1e-9))


def block_diag(blocks):
    n=sum(len(b) for b in blocks)
    out=np.zeros((n,n),complex);p=0
    for b in blocks:out[p:p+len(b),p:p+len(b)]=b;p+=len(b)
    return out


def real_compatible_unitary_lie_dimension(gens,uj):
    n=len(uj);basis=[]
    for a in range(n):
        t=np.zeros((n,n),complex);t[a,a]=1j;basis.append(t)
        for b in range(a+1,n):
            t=np.zeros((n,n),complex);t[a,b]=1;t[b,a]=-1;basis.append(t)
            t=np.zeros((n,n),complex);t[a,b]=t[b,a]=1j;basis.append(t)
    columns=[np.concatenate([realvec(comm(t,g)) for g in gens]+[realvec(t@uj-uj@t.conj())]) for t in basis]
    return len(basis)-int(np.linalg.matrix_rank(np.array(columns).T,tol=1e-9))


def main():
    # Canonical SU2 curvature on SU3/SU2.
    def e(a,b):
        x=np.zeros((3,3),complex);x[a,b]=1;return x
    horizontal=[e(0,2)-e(2,0),1j*(e(0,2)+e(2,0)),
                e(1,2)-e(2,1),1j*(e(1,2)+e(2,1)),1j*np.diag([1,1,-2])]
    def project_su2(a):
        b=a[:2,:2].copy();return b-np.trace(b)*I2/2
    curvature=[-project_su2(comm(a,b)) for i,a in enumerate(horizontal) for b in horizontal[i+1:]]
    curvature_rank=rank_real(curvature)
    assert curvature_rank==3

    # The monopole kernel representations are spin (n-1)/2.
    rep1=[np.zeros((1,1),complex)]*3
    rep2=[sx/2,sy/2,sz/2]
    raising=np.array([[0,np.sqrt(2),0],[0,0,np.sqrt(2)],[0,0,0]],complex)
    rep3=[(raising+raising.conj().T)/2,(raising-raising.conj().T)/(2j),np.diag([1,0,-1])]
    reps=[rep1,rep2,rep3]
    irreducible_commutants=[complex_commutant_dimension(r) for r in reps]
    assert irreducible_commutants==[1,1,1]
    flux123=[block_diag([rep1[k],rep2[k],rep3[k]]) for k in range(3)]
    flux112=[block_diag([rep1[k],rep1[k],rep2[k]]) for k in range(3)]
    assert complex_commutant_dimension(flux123)==3
    assert complex_commutant_dimension(flux112)==5

    # Charge-reversal real structures differ from a naive pseudoreality map.
    doubled2=[block_diag([t,-t.conj()]) for t in rep2]
    reality_dimensions={}
    for sign in [1,-1]:
        uj=np.block([[np.zeros((2,2)),I2],[sign*I2,np.zeros((2,2))]])
        assert np.allclose(uj@uj.conj(),sign*np.eye(4))
        reality_dimensions[str(sign)]=real_compatible_unitary_lie_dimension(doubled2,uj)
    assert reality_dimensions=={'1':3,'-1':1}

    # Six-dimensional Clifford lifts of the actual linear Weyl action.
    gamma=[np.kron(np.kron(sx,I2),I2),np.kron(np.kron(sy,I2),I2),
           np.kron(np.kron(sz,sx),I2),np.kron(np.kron(sz,sy),I2),
           np.kron(np.kron(sz,sz),sx),np.kron(np.kron(sz,sz),sy)]
    i8=np.eye(8,dtype=complex)
    s=gamma[0]@gamma[2]
    t=gamma[4]@gamma[5]
    r=(.5*i8+np.sqrt(3)/2*(gamma[0]@gamma[1]))@(.5*i8+np.sqrt(3)/2*(gamma[2]@gamma[3]))
    assert np.allclose(s@s,-i8) and np.allclose(t@t,-i8)
    assert np.allclose(np.linalg.matrix_power(r,3),i8)
    assert np.allclose(s@r@s.conj().T,r.conj().T)
    assert np.allclose(comm(t,s),0) and np.allclose(comm(t,r),0)
    grade=-1j*gamma[0]@gamma[1]@gamma[2]@gamma[3]@gamma[4]@gamma[5]
    eig,u=np.linalg.eigh(grade);positive=u[:,eig>.5]
    small=lambda a:positive.conj().T@a@positive
    dic=[np.linalg.matrix_power(r,a)@np.linalg.matrix_power(s,b) for a in range(3) for b in range(4)]
    full=[a@np.linalg.matrix_power(t,c) for a in dic for c in range(2)]
    dic_rank=rank_real([small(a) for a in dic]);full_rank=rank_real([small(a) for a in full])
    assert dic_rank==6 and full_rank==12
    klein=[i8,s,t,s@t]
    klein_rank=rank_real([small(a) for a in klein]);assert klein_rank==4
    projector=(i8+s@t)/2
    corner_rank=rank_real([small(projector@a@projector) for a in klein])
    assert corner_rank==2
    j6=gamma[1]@gamma[3]@gamma[5]
    assert np.allclose(j6@j6.conj(),i8)
    assert all(np.allclose(j6@a.conj(),a@j6) for a in [r,s,t])
    opposite_r=j6@r.T@j6.conj().T
    order_zero_failure=float(np.linalg.norm(comm(s,opposite_r)))
    assert order_zero_failure>1

    # Frobenius--Schur indicators distinguish C and H, not just dimensions.
    r2=np.diag([np.exp(2j*np.pi/3),np.exp(-2j*np.pi/3)])
    s2=np.array([[0,1],[-1,0]],complex)
    group2=[np.linalg.matrix_power(r2,a)@np.linalg.matrix_power(s2,b) for a in range(3) for b in range(4)]
    fs_doublet=float(np.real(sum(np.trace(g@g) for g in group2)/12))
    fs_character=sum((1j**b)**2 for a in range(3) for b in range(4))/12
    assert abs(fs_doublet+1)<1e-12 and abs(fs_character)<1e-12

    # Chern classes of Sym^(n-1) Q* on CP2.
    chern={}
    for n in [1,2,3]:
        z=n*(n-1)
        chern[str(n)]={'rank':n,'c1_h':-z//2,'c2_h_squared':str(F(z*(z+2),8))}
    assert chern['2']['c2_h_squared']=='1' and chern['3']['c2_h_squared']=='6'
    square_zero_solutions=[]
    for a in range(-10,11):
        for b in range(-10,11):
            if a*a-b*b==0 and 2*a*b-b*b==0:square_zero_solutions.append([a,b])
    assert square_zero_solutions==[[0,0]]

    # Phase arithmetic for the invariant engineered Berger connection.
    # The analytic spin-connection generator, endpoint signs and parent
    # holonomy formula are inputs here, not independently derived by this test.
    # The spin end-frame contributes -1 around the full Hopf loop.
    horizontal_spin_generator=small(gamma[0]@gamma[1]+gamma[2]@gamma[3])
    h=1j*horizontal_spin_generator
    hv,hu=np.linalg.eigh(h)
    assert np.allclose(np.sort(hv),[-2,0,0,2])
    singlet=-horizontal_spin_generator@horizontal_spin_generator/4
    natural_holonomy=2*singlet-np.eye(4)
    wilson={}
    for eta_squared in [0.5,1,2,3]:
        spin_holonomy=-(hu*np.exp(1j*np.pi*eta_squared*hv))@hu.conj().T
        if float(eta_squared).is_integer():assert np.allclose(spin_holonomy,-np.eye(4))
        else:assert np.allclose(spin_holonomy,natural_holonomy)
        parent=np.array([np.exp(2j*np.pi*eta_squared),np.exp(-2j*np.pi*eta_squared),1])
        wilson[str(eta_squared)]={'parent_circle_zero_mode_rank':int(np.sum(abs(parent-1)<1e-10)),
            'parent_holonomy_phases_real_imag':[[float(x.real),float(x.imag)] for x in parent]}
    assert wilson['2']['parent_circle_zero_mode_rank']==3
    assert wilson['0.5']['parent_circle_zero_mode_rank']==1

    # The SM one-generation trace ratio and the independent Berger ratio.
    kw=F(3,2)+F(1,2)
    ky=6*F(1,6)**2+2*F(-1,2)**2+3*F(2,3)**2+3*F(-1,3)**2+1
    angle_trace=ky/(kw+ky)
    x=F(5,2);angle_metric=3*x/(4*x+2)
    assert kw==2 and ky==F(10,3) and ky/kw==F(5,3)
    assert angle_trace==F(5,8) and angle_metric==F(5,8)
    data={
      'Berry_curvature_su2_span_dimension':curvature_rank,
      'complex_parallel_endomorphism_dimensions_n_1_2_3':irreducible_commutants,
      'complex_commutant_dimension_flux_123':3,
      'complex_commutant_dimension_flux_112':5,
      'unitary_real_commutant_Lie_dimensions_for_J_squared':reality_dimensions,
      'spin_lift_real_algebra_dimensions_on_chiral_spinors':{'S3':dic_rank,'S3_times_Z2':full_rank,'Z2_times_Z2':klein_rank,'selected_Klein_component':corner_rank},
      'binary_dihedral_doublet_FS_indicator':fs_doublet,
      'binary_dihedral_complex_character_FS_indicator_real_part':float(fs_character.real),
      'geometric_J_order_zero_failure_Frobenius_norm':order_zero_failure,
      'finite_corner_SM_algebra_real_dimension':6+3*3*2,
      'flag_vertical_kernel_Chern_classes':chern,
      'flag_square_zero_H2_small_integer_solutions':square_zero_solutions,
      'engineered_Berger_Wilson_check':wilson,
      'SM_trace_KW':str(kw),'SM_trace_KY':str(ky),'SM_trace_ratio':str(ky/kw),
      'cos_squared_from_SM_trace':str(angle_trace),'Berger_xi_squared_required':str(x),
      'cos_squared_at_required_Berger_parameter':str(angle_metric),
      'scope':'Finite curvature, representation and characteristic-class checks. No full SM spectral triple, adiabatic PDE spectrum, or vacuum dynamics is inferred.'
    }
    (ROOT/'canonical_verification.json').write_text(json.dumps(data,indent=2)+'\n')
    print(json.dumps(data,indent=2))


if __name__=='__main__':main()
