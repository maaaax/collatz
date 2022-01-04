set terminal pngcairo size 1800,1200 enhanced font 'Helvetica,12' dashed
set output "collatz_S_tree.png"

unset grid
load 'gp_S_tree.common.gnuplot'
