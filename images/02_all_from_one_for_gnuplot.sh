#!/bin/bash

echo > lp_tree_E_all.dat
for F in lp_tree_E[0-9]\.dat
do
  cat $F >> lp_tree_E_all.dat
  echo >> lp_tree_E_all.dat
done

echo > lp_tree_E_all_revax.dat
for F in lp_tree_E[0-9]_revax\.dat
do
  cat $F >> lp_tree_E_all_revax.dat
  echo >> lp_tree_E_all_revax.dat
done


for Msrc in `seq 0 2`
do
  for Mdst in `seq 0 2`
  do
    echo > lp_tree_D_all_M${Msrc}_to_M${Mdst}.dat
    echo > lp_tree_D_all_M${Msrc}_to_M${Mdst}_revax.dat
    for D in `seq 1 10`
    do
      cat lp_tree_D${D}_M${Msrc}_to_M${Mdst}.dat >> lp_tree_D_all_M${Msrc}_to_M${Mdst}.dat
      echo >> lp_tree_D_all_M${Msrc}_to_M${Mdst}.dat
      cat lp_tree_D${D}_M${Msrc}_to_M${Mdst}_revax.dat >> lp_tree_D_all_M${Msrc}_to_M${Mdst}_revax.dat
      echo >> lp_tree_D_all_M${Msrc}_to_M${Mdst}_revax.dat
    done
  done
done
