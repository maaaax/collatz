set terminal postscript eps enhanced defaultplex leveldefault color colortext dashlength 1.0 linewidth 2 pointscale 1.0 butt noclip nobackground palfuncparam 2000,0.003  size 18cm,18cm  "Helvetica" 12  fontscale 1.0
set output "collatz_S_tree.eps"

unset grid
load 'gp_S_tree.common.gnuplot'

