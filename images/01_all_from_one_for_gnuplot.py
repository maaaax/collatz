#!/usr/bin/python3

maxy=300000
showexp=1

revax_y_mult=-1  # 1 for pos y, -1 for neg y

fM={}
fM_revax={}
fM_zeroy={}
fM_zeroy_neg={}
for M in range(0,3):
    fM[M]=open("lp_tree_M%d.dat" % M, 'w')
    fM_revax[M]=open("lp_tree_M%d_revax.dat" % M, 'w')
    fM_zeroy[M]=open("lp_tree_M%d_zeroy.dat" % M, 'w')
    fM_zeroy_neg[M]=open("lp_tree_M%d_zeroy_neg.dat" % M, 'w')
fD={}
fD_revax={}
fD_zeroy={}
fD_zeroy_neg={}
fExp={}
fExp_revax={}
maxfD=10
fD_M_to_M={}
fD_M_to_M_revax={}
for E in range(0,maxfD+1):
    fD_M_to_M[E]={}
    fD_M_to_M_revax[E]={}
    for Msrc in range(0,3):
        fD_M_to_M[E][Msrc]={}
        fD_M_to_M_revax[E][Msrc]={}
        for Mdst in range(0,3):
            fD_M_to_M[E][Msrc][Mdst]=open("lp_tree_D%d_M%d_to_M%d.dat" % (E,Msrc,Mdst), 'w')
            fD_M_to_M_revax[E][Msrc][Mdst]=open("lp_tree_D%d_M%d_to_M%d_revax.dat" % (E,Msrc,Mdst), 'w')
    fD[E]=open("lp_tree_D%d.dat" % E, 'w')
    fD_revax[E]=open("lp_tree_D%d_revax.dat" % E, 'w')
    fD_zeroy[E]=open("lp_tree_D%d_zeroy.dat" % E, 'w')
    fD_zeroy_neg[E]=open("lp_tree_D%d_zeroy_neg.dat" % E, 'w')
    fExp[E]=open("lp_tree_E%d.dat" % E, 'w')
    fExp_revax[E]=open("lp_tree_E%d_revax.dat" % E, 'w')
for k in range(0,1000):
    i=2*k+1
    Msrc = i % 3
    for exp in range(0,100):
        g0=i*(2**exp)
        g1=i*(2**(exp+1))
        D=(g0-1)/3
        if exp <= maxfD:
            fExp[exp].write("%d %d\n" % (i,g0))
            fExp_revax[exp].write("%d %d\n" % (g0,i*revax_y_mult))
        if D.is_integer() and exp <= maxfD:
            Dk=D
            while Dk % 2 == 0 and Dk>0:
                Dk=Dk//2
            Mdst = Dk % 3
            fD[exp].write("%d %d\n" % (i,g0))
            fD[exp].write("%d %d\n" % (Dk,D))
            fD[exp].write("\n")
            fD_M_to_M[exp][Msrc][Mdst].write("%d %d\n" % (i,g0))
            fD_M_to_M[exp][Msrc][Mdst].write("%d %d\n" % (Dk,D))
            fD_M_to_M[exp][Msrc][Mdst].write("\n")
            fD_revax[exp].write("%d %d\n" % (g0,i*revax_y_mult))
            fD_revax[exp].write("%d %d\n" % (D,Dk*revax_y_mult))
            fD_revax[exp].write("\n")
            fD_M_to_M_revax[exp][Msrc][Mdst].write("%d %d\n" % (g0,i*revax_y_mult))
            fD_M_to_M_revax[exp][Msrc][Mdst].write("%d %d\n" % (D,Dk*revax_y_mult))
            fD_M_to_M_revax[exp][Msrc][Mdst].write("\n")
            fD_zeroy[exp].write("%d %d\n" % (i,g0-i))
            fD_zeroy[exp].write("%d %d\n" % (Dk,D-Dk))
            fD_zeroy[exp].write("\n")
            fD_zeroy_neg[exp].write("%d %d\n" % (i,-(g0-i)))
            fD_zeroy_neg[exp].write("%d %d\n" % (Dk,-(D-Dk)))
            fD_zeroy_neg[exp].write("\n")
        if g1>=maxy:
            break
        fM[Msrc].write("%5d %5d\n" % (i,g0))
        fM_revax[Msrc].write("%5d %5d\n" % (g0,i*revax_y_mult))
        fM_zeroy[Msrc].write("%5d %5d\n" % (i,g0-i))
        fM_zeroy_neg[Msrc].write("%5d %5d\n" % (i,-(g0-i)))
    fM[Msrc].write("\n")
    fM_revax[Msrc].write("\n")
    fM_zeroy[Msrc].write("\n")
    fM_zeroy_neg[Msrc].write("\n")
for f in fD.values():
    f.close()
for f in fD_revax.values():
    f.close()
for f in fD_zeroy.values():
    f.close()
for f in fM.values():
    f.close()
for f in fM_revax.values():
    f.close()
for f in fM_zeroy.values():
    f.close()
for f in fExp.values():
    f.close()
for f in fExp_revax.values():
    f.close()
for E in fD_M_to_M.keys():
    for Msrc in fD_M_to_M[E].keys():
        for Mdst in fD_M_to_M[E][Msrc].values():
            Mdst.close()
for E in fD_M_to_M_revax.keys():
    for Msrc in fD_M_to_M_revax[E].keys():
        for Mdst in fD_M_to_M_revax[E][Msrc].values():
            Mdst.close()

