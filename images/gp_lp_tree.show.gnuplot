# set terminal postscript eps size 3.5,2.62 enhanced color font 'Helvetica,20' linewidth 2
# set terminal postscript eps size 3.5,2.62 enhanced color
# set terminal postscript eps enhanced defaultplex leveldefault color colortext dashlength 1.0 linewidth 2 pointscale 1.0 butt noclip nobackground palfuncparam 2000,0.003  size 24cm,18cm  "Helvetica" 12  fontscale 1.0 
# set output "collatz_flow.eps" 

set terminal qt 0 font "Sans,9" raise ctrl persist

set yrange[-15:320]
set xrange[0:100]

set grid

load 'gp_lp_tree.common.gnuplot'

