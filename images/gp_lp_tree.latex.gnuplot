set terminal postscript eps enhanced defaultplex leveldefault color colortext dashlength 1.0 linewidth 2 pointscale 1.0 butt noclip nobackground palfuncparam 2000,0.003  size 24cm,18cm  "Helvetica" 12  fontscale 1.0 
set output "collatz_flow.eps" 

unset grid
set yrange[-15:530]
set xrange[0:100]

load 'gp_lp_tree.common.gnuplot'

