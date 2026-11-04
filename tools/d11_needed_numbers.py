"""Numbers needed by 11D/10 and 11D/11 (Python, numpy, scipy, exact integers). Usage: python3 tools/d11_needed_numbers.py"""
import itertools, numpy as np
from math import pi, sqrt
from scipy.integrate import quad
from scipy.optimize import brentq
Z5=1.0369277551433699; Z3=1.2020569031595942
def F(z):
    if z==0: return 0.0
    f=lambda x: x**3*np.log1p(z/np.sinh(x)**2)
    return quad(f,0,1,limit=200)[0]+quad(f,1,40,limit=200)[0]
print('(a) F(1) vs 93 zeta5/64',F(1.0),93*Z5/64)
def A0(ND,nv,ns=0,grav=0): return Z5*(3/16)*(4*2*ND-3*nv-ns-5*grav)
def G(th,nf,a0):
    t=np.sin(th)**2;u=t*(1-t)
    return a0+3*F(2*u)+1.5*F(16*u/5)-nf*F(t)
for label,nf,ND,nv,grav in (('top only, 24 Dirac, 21 gauge',6,24,21,0),('top only, with 5d graviton',6,24,21,1),('universal, 24 Dirac, 21 gauge',48,24,21,0),('universal, with 5d graviton',48,24,21,1),('one generation universal, 8 Dirac',16,8,21,0)):
    a0=A0(ND,nv,0,grav)
    ths=np.linspace(0.001,pi/2,160); Gs=np.array([G(t,nf,a0) for t in ths]); dG=np.gradient(Gs,ths)
    S=ths*dG-4*Gs
    roots=[brentq(lambda th:(th*(G(th+1e-4,nf,a0)-G(th-1e-4,nf,a0))/2e-4-4*G(th,nf,a0)),ths[i],ths[i+1]) for i in range(len(ths)-2) if S[i]*S[i+1]<0]
    out=[(round(r,4),round(np.arcsin(np.sin(2*r)/sqrt(2))/r,4)) for r in roots]
    print(' ',label,'A0=%.3f G(pi/2)=%.3f minG=%.3f stationary (theta*, M_W/m):'%(a0,G(pi/2,nf,a0),Gs.min()),out)
print('(b) localized channel in units 8 pi^2 l^4: G_loc(c)')
def Gloc(c):
    def f(x):
        w=sqrt(x*x+c*c)
        if x==0: return 0.0
        r=(w+c)**2/(x*x)  # (w+c)/(w-c)
        return x**3*np.log1p(r*np.exp(-2*w))
    return -2*(quad(f,0,1,limit=300)[0]+quad(f,1,60,limit=300)[0])
vals=[(c,Gloc(c)) for c in (0,0.25,0.5,1,1.5,2,3,4,6,8)]
print('  ',[(c,round(v,5)) for c,v in vals]); print('  G_loc(0) vs -(45/64) zeta5:',-(45/64)*Z5, ' large c vs -4 c^3 e^-2c at 8:',-4*512*np.exp(-16))
print('(c) SO(30) block on a small model V=C^3, H_+=C^6')
k=3; rng=np.random.default_rng(1)
Kc=np.conj
I6=np.eye(2*k,dtype=complex)
# basis (v,w) of V+Vbar. j(v,w)=(conj w, conj v). real elements: j a j^-1=a
def j_conj(a):  # j a j^-1 for matrix a in the (V,Vbar) basis
    S=np.block([[np.zeros((k,k)),np.eye(k)],[np.eye(k),np.zeros((k,k))]])
    return S@np.conj(a)@S
Ar=rng.normal(size=(k,k))+1j*rng.normal(size=(k,k)); Br=rng.normal(size=(k,k))+1j*rng.normal(size=(k,k))
al=Ar-Ar.conj().T; B=Br-Br.T
a=np.block([[al,B],[np.conj(B),np.conj(al)]])
print('  a real under j:',np.linalg.norm(j_conj(a)-a),' a skew:',np.linalg.norm(a+a.conj().T),' block antisym:',np.linalg.norm(B+B.T))
H=1j*a
print('  H=ia: j H j^-1 + H =',np.linalg.norm(j_conj(H)+H),' (Hermitian generator anticommutes with j)')
L=np.diag([1.0,2.0,3.5,1.0,2.0,3.5]).astype(complex)  # flavour masses on V and Vbar
S=L@a-a@L
print('  [L,a] real under j:',np.linalg.norm(j_conj(S)-S),' Hermitian:',np.linalg.norm(S-S.conj().T))
SB=S[:k,k:]
print('  block of [L,a] symmetric:',np.linalg.norm(SB-SB.T),' entries (m_i-m_j)B_ij:',np.linalg.norm(SB-np.array([[(L[i,i]-L[j,j])*B[i,j] for j in range(k)] for i in range(k)])))
# full doubled statement
U=np.eye(2*k,dtype=complex)
Z=np.zeros((2*k,2*k),dtype=complex)
DF=np.block([[Z,L@U.conj().T],[U@L,Z]])
atot=np.block([[a,Z],[Z,U@a@U.conj().T]])
ad=DF@atot-atot@DF
target=np.block([[Z,S@U.conj().T],[U@S,Z]])
print('  ad_DF(a_tot) has block U[L,a]:',np.linalg.norm(ad-target))
print('  ad^2 is [L,[L,a]] on both sides:',np.linalg.norm(DF@ad-ad@DF-np.block([[L@S-S@L,Z],[Z,U@(L@S-S@L)@U.conj().T]])))
print('(d) E8 root configurations of 11D/05')
f0=(1,1,1); fams=[(1,1,1),(1,-1,-1),(-1,1,-1),(-1,-1,1)]
cols=[(-1,1,1),(1,-1,1),(1,1,-1)]; neg=lambda v:tuple(-x for x in v); lep=(-1,-1,-1); one=(1,1,1)
def st(ty,f):
    if ty=='u': return [c+(-1,1)+f for c in cols]+[neg(c)+(1,1)+f for c in cols]
    if ty=='d': return [c+(1,-1)+f for c in cols]+[neg(c)+(-1,-1)+f for c in cols]
    if ty=='nu': return [lep+(-1,1)+f, one+(1,1)+f]
    if ty=='e': return [lep+(1,-1)+f, one+(-1,-1)+f]
def block(ty,slots):
    s=[]
    for g in slots: s+=st(ty,fams[g])
    return s+[neg(v) for v in s]
ip=lambda a,b:sum(x*y for x,y in zip(a,b))  # 4 x inner product
def dcount(S):
    A=np.array(S); M=A@A.T
    return sorted(set((M==4).sum(axis=1).tolist())), M
aligned=block('u',[0,1,2])+block('d',[0,1,2])+block('e',[0,1,2])+block('nu',[0,1,2])
print('  96 roots:',len(set(aligned)))
T=set(block('u',[0])); N=set(block('nu',[0,1,2]))
F1=[v for v in aligned if v not in T]; F2=[v for v in aligned if v not in N]
d1,M1=dcount(F1); d2,M2=dcount(F2)
print('  F1 d values',d1,' F2 d values',d2,' pair counts F1:',{k:int((M1[np.triu_indices(84,1)]==k).sum()) for k in (-8,-4,0,4)},' F2:',{k:int((M2[np.triu_indices(84,1)]==k).sum()) for k in (-8,-4,0,4)})
slots=[0,1,2,3]; cnt=0; bad=0; patt=set()
for su in itertools.combinations(slots,3):
    if 0 not in su: continue
    for sd in itertools.combinations(slots,3):
        for se in itertools.combinations(slots,3):
            for sn in itertools.combinations(slots,3):
                cnt+=1
                S=block('u',su)+block('d',sd)+block('e',se)+block('nu',sn)
                T_=set(block('u',[0])); N_=set(block('nu',sn))
                A=[v for v in S if v not in T_]; Bb=[v for v in S if v not in N_]
                da,_=dcount(A); db,_=dcount(Bb)
                patt.add((tuple(da),tuple(db)))
                if da==db: bad+=1
print('  configurations',cnt,'with equal d-value sets:',bad,' patterns (S-T, S-N) seen:',len(patt)); print('   ',sorted(patt)[:6])
print('(e) 15+1 closed forms against quadrature, z_L=0, L=2 pi, slope units')
def check(s):
    L_=2*pi; xt=s*L_; zt=8*(L_-xt); z0=zt+7*xt
    z=lambda x: z0-7*x if x<xt else zt-8*(x-xt)
    W=lambda a,b,p: quad(lambda x: z(x)**p,a,b,limit=200,points=[xt] if a<xt<b else None)[0]
    Wt=W(0,xt,-1/3); WL=W(0,L_,-1/3); Wp=W(0,L_,1/3)
    R2=(3/4)*Wp/WL**2; th=(pi/2)*Wt/WL
    rho=(zt/z0)**(2/3)
    return R2,14*(8-rho*rho)/(8-rho)**2,th,(pi/2)*8*(1-rho)/(8-rho),(pi/2)*s
for s in (0.0001,0.5,0.9999): print('  s=%.4f R^2=%.5f closed=%.5f theta=%.5f closed=%.5f linear dictionary=%.5f'%((s,)+check(s)))
