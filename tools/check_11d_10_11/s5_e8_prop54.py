# Language: Python 3 (exact integers).  Independent re-run of 11D/05 Proposition 5.4 (192 configurations) and Prop 5.1.
# Roots are written with doubled coordinates (+-1)^8; inner product of two such roots times 4 is the integer dot product;
# d_S(v) = number of roots of S at inner product +1 with v  <=>  dot product = +4.
import itertools
from collections import Counter

cols = [(-1,1,1),(1,-1,1),(1,1,-1)]          # colour patterns with one minus sign (quarks)
neg  = lambda v: tuple(-x for x in v)
lep  = (-1,-1,-1); one = (1,1,1)
fams = [(1,1,1),(1,-1,-1),(-1,1,-1),(-1,-1,1)]    # family 0 = (+++), families 1,2,3 = two minus signs

def states(ty, f):
    """particles of one type in family pattern f (table of 05)."""
    if ty == 'u': return [c+(-1,1)+f for c in cols] + [neg(c)+(1,1)+f for c in cols]    # u_L, u^c
    if ty == 'd': return [c+(1,-1)+f for c in cols] + [neg(c)+(-1,-1)+f for c in cols]  # d_L, d^c
    if ty == 'nu': return [lep+(-1,1)+f, one+(1,1)+f]                                    # nu_L, nu^c
    if ty == 'e': return [lep+(1,-1)+f, one+(-1,-1)+f]                                   # e_L, e^c
def block(ty, slots):
    s = []
    for g in slots: s += states(ty, fams[g])
    return s + [neg(v) for v in s]

# sanity: all are roots of E8 (half-integer type: even number of minus signs)
for ty in ('u','d','nu','e'):
    for g in range(4):
        for v in block(ty,[g]):
            assert len(v)==8 and sum(1 for x in v if x==-1)%2==0
dot = lambda a,b: sum(x*y for x,y in zip(a,b))

def dvals(S):
    return Counter(sum(1 for w in S if dot(v,w)==4) for v in S)

def analyse(su, sd, se, sn):
    S = block('u',su)+block('d',sd)+block('e',se)+block('nu',sn)
    assert len(set(S)) == len(S)
    T = set(block('u',[0])); N = set(block('nu',sn))
    A = [v for v in S if v not in T]       # S - T
    B = [v for v in S if v not in N]       # S - N
    return dvals(A), dvals(B), len(S)

# Prop 5.1: aligned three families (slots 0,1,2 for everything)
dA, dB, n = analyse([0,1,2],[0,1,2],[0,1,2],[0,1,2])
print("aligned: |S|=%d  S-T d-values %s ; S-N d-values %s" % (n, dict(sorted(dA.items())), dict(sorted(dB.items()))))

# Prop 5.4: all 192 configurations
slots = [0,1,2,3]
cnt = 0; equal = 0; SN_only_19_20 = 0; SN_vals_seen = Counter(); ST_pattern = Counter()
mis_examples = []
for su in [c for c in itertools.combinations(slots,3) if 0 in c]:
    for sd in itertools.combinations(slots,3):
        for se in itertools.combinations(slots,3):
            for sn in itertools.combinations(slots,3):
                cnt += 1
                dA, dB, n = analyse(su,sd,se,sn)
                if dA == dB: equal += 1
                keysB = tuple(sorted(dB))
                SN_vals_seen[keysB] += 1
                if set(dB) <= {19,20}: SN_only_19_20 += 1
                else:
                    if len(mis_examples) < 3: mis_examples.append(((su,sd,se,sn), dict(sorted(dB.items())), dict(sorted(dA.items()))))
                ST_pattern[tuple(sorted(dA))] += 1
print("configurations:", cnt)
print("configurations with identical d-multisets for S-T and S-N (would NOT be excluded by the invariant):", equal)
print("configurations where S-N has only d in {19,20}:", SN_only_19_20, " (others: %d)" % (cnt-SN_only_19_20))
print("sets of d-values of S-N over the 192 configurations:", dict(SN_vals_seen))
print("sets of d-values of S-T:", dict(ST_pattern))
print("examples of configurations whose S-N has other d-values:", mis_examples)
# Check the second sentence of 5.4: 'S-T has d=16 on the neutrino roots of one slot and d=22 on those of the two others'
bad = 0
for su in [c for c in itertools.combinations(slots,3) if 0 in c]:
    for sd in itertools.combinations(slots,3):
        for se in itertools.combinations(slots,3):
            for sn in itertools.combinations(slots,3):
                S = block('u',su)+block('d',sd)+block('e',se)+block('nu',sn)
                T = set(block('u',[0]))
                A = [v for v in S if v not in T]
                per_slot = {}
                for g in sn:
                    nu_roots = set(block('nu',[g]))
                    dv = {sum(1 for w in A if dot(v,w)==4) for v in nu_roots}
                    per_slot[g] = dv
                ok = (sorted(tuple(sorted(per_slot[g])) for g in sn) == [(16,),(22,),(22,)])
                if not ok: bad += 1
print("configurations where the sentence 'S-T has d=16 on the neutrinos of one slot and d=22 on the two others' fails:", bad)
