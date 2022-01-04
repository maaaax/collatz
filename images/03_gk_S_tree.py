#!/usr/bin/python3

def S(n,u):
    if n==1:
        g=3*u+2
        k=2*u+1
    elif n==2:
        g=3*u
        k=4*u
    elif n==3:
        g=3*u+2
        k=8*u+6
    else:
        return None
    return (g,k)

vlines={}
for m in (0,2):
    vlines[m]=open("S_tree_vlines_%d.dat" % m, 'w')

graydots=open("S_tree_graydots.dat", 'w')
n4plusdots=open("S_tree_n4plusdots.dat", 'w')
ygridlines=open("S_tree_ygridlines.dat", 'w')
xgridlines=open("S_tree_xgridlines.dat", 'w')

vlines={}
for m in range(0,2+1):
    vlines[m]=open("S_tree_vlines_%d.dat" % m, 'w')

Sn={}
for n in range(1,3+1):
    Sn[n]=open("S_tree_n%d_conn.dat" % n, 'w')

xmax=0
ymin={}
ymax={}

depth=100
for u in range(0,depth+1):
    for n in range(1,3+1):
        (g,k)=S(n,u)
        Sn[n].write("%d %d\n" % (g,k))
        Sn[n].write("%d %d\n" % (k,k))
        Sn[n].write("\n")
        xmax=max(xmax,g,k)
        if not g in ymax:
            ymax[g]=g
        if not g in ymin:
            ymin[g]=g
        ymax[g]=max(ymax[g],g,k)
        ymin[g]=min(ymin[g],g,k)
for f in Sn.values():
    f.close()

for g in range(0,xmax+1):
    if not g in ymin or not g in ymax:
        continue
    mod=g%3
    vlines[mod].write("%d %d\n" % (g,ymax[g]))
    vlines[mod].write("%d %d\n" % (g,ymin[g]))
    vlines[mod].write("\n")

for f in vlines.values():
    f.close()

for g in range(0,xmax+1):
    if g%8==2:
        n4plusdots.write("%d %d\n\n" % (g,g))
    if g%3==1:
        graydots.write("%d %d\n\n" % (g,g))
    if g%3==2 and g in ymin:
        ygridlines.write("%d %d\n" % (g,0))
        ygridlines.write("%d %d\n" % (g,max(0,ymin[g])))
        ygridlines.write("\n")
    if g%3==2 and g in ymax:
        xgridlines.write("%d %d\n" % (0,ymax[g]))
        xgridlines.write("%d %d\n" % (g,ymax[g]))
        xgridlines.write("\n")

graydots.close()
n4plusdots.close()
ygridlines.close()
xgridlines.close()
