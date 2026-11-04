# Language: Python 3 (exact integers).  Detail: which configurations violate the second sentence of 05 Prop 5.4.
import itertools
from collections import Counter
exec(open('s5_e8_prop54.py').read().split("# Prop 5.1")[0])    # reuse definitions (roots, block, dot)
slots=[0,1,2,3]
fail=Counter(); ok=0; examples=[]
for su in [c for c in itertools.combinations(slots,3) if 0 in c]:
    for sd in itertools.combinations(slots,3):
        for se in itertools.combinations(slots,3):
            for sn in itertools.combinations(slots,3):
                S = block('u',su)+block('d',sd)+block('e',se)+block('nu',sn)
                T = set(block('u',[0])); A=[v for v in S if v not in T]
                per = {}
                for g in sn:
                    per[g] = tuple(sorted({sum(1 for w in A if dot(v,w)==4) for v in block('nu',[g])}))
                vals = sorted(per.values())
                if vals == [(16,),(22,),(22,)]: ok += 1
                else:
                    key = (su==sd==se==sn)      # fully aligned?
                    fail[tuple(vals)] += 1
                    if len(examples)<4: examples.append(((su,sd,se,sn), per))
print("sentence holds in", ok, "configurations; fails pattern counts:", dict(fail))
print(examples)
# how many have all four slot sets equal (aligned)? and how many have neutrinos' slots equal to the up-type slots?
al = sum(1 for su in [c for c in itertools.combinations(slots,3) if 0 in c] for sd in itertools.combinations(slots,3) for se in itertools.combinations(slots,3) for sn in itertools.combinations(slots,3) if su==sd==se==sn)
print("fully aligned configurations (all slot sets equal):", al)
