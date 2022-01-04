set terminal pngcairo size 1800,1200 enhanced font 'Helvetica,12' dashed
set output "collatz_flow.png"

unset grid
set yrange[-15:530]
set xrange[0:100]

load 'gp_lp_tree.common.gnuplot'
