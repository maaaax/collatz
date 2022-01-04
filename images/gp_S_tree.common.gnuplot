# set terminal postscript eps size 3.5,2.62 enhanced color font 'Helvetica,20' linewidth 2
# set terminal postscript eps size 3.5,2.62 enhanced color
# set terminal postscript eps enhanced defaultplex leveldefault color colortext dashlength 1.0 linewidth 2 pointscale 1.0 butt noclip nobackground palfuncparam 2000,0.003  size 24cm,18cm  "Helvetica" 12  fontscale 1.0 
# set output "collatz_S_tree.eps" 


set style line 70 linecolor rgb 'dark-red'  linetype 1  linewidth 2 pointtype 7 pointsize 0.5
set style line 71 linecolor rgb 'gray'  linetype 1      linewidth 2 pointtype 7 pointsize 0.5
set style line 72 linecolor rgb 'dark-blue'  linetype 1 linewidth 2 pointtype 7 pointsize 0.5

set style line 31 linecolor rgb 'dark-green'  linetype 1 linewidth 3 pointtype 7 pointsize 1.5
set style line 32 linecolor rgb 'coral'  linetype 1 linewidth 3 pointtype 7 pointsize 1.5
set style line 33 linecolor rgb 'dark-plum'  linetype 1 linewidth 3 pointtype 7 pointsize 1.5

set style line 40 pt 6 ps 2.5 lc rgb "gray" lw 3
set style line 45 pt 2 ps 1.5 lc rgb "magenta" lw 3

set style line 50 linecolor rgb 'gray80'  linetype 1 dt 2 linewidth 1.5

set key top left

set xtics 2,3
set ytics 2,4
set yrange[0:60]
set xrange[0:60]
plot \
  'S_tree_ygridlines.dat' with lines ls 50 notitle, \
  'S_tree_xgridlines.dat' with lines ls 50 notitle, \
  'S_tree_vlines_0.dat' with linespoints ls 70 title "g=0 (mod 3)", \
  'S_tree_graydots.dat' with points ls 40 title "Endpoints g=1 (mod 3)", \
  'S_tree_vlines_2.dat' with linespoints ls 72 title "g=2 (mod 3)", \
  'S_tree_n1_conn.dat'  with linespoints ls 31 title "S^{(1)} connections n=1", \
  'S_tree_n2_conn.dat'  with linespoints ls 32 title "S^{(3)} Connections n=2", \
  'S_tree_n3_conn.dat'  with linespoints ls 33 title "S^{(3)} Connections n=3", \
  'S_tree_n4plusdots.dat' with points ls 45 title "S^{(h)} connections n>4"
