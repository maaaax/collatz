# set terminal postscript eps size 3.5,2.62 enhanced color font 'Helvetica,20' linewidth 2
# set terminal postscript eps size 3.5,2.62 enhanced color
# set terminal postscript eps enhanced defaultplex leveldefault color colortext dashlength 1.0 linewidth 2 pointscale 1.0 butt noclip nobackground palfuncparam 2000,0.003  size 24cm,18cm  "Helvetica" 12  fontscale 1.0 
# set output "collatz_flow.eps" 


# set object 1 rect from 0,-10 to 6,0 fc rgb "grey" fillstyle solid 0.4
# set label 1 '5' at 3,-7 nopoint offset 0,0 rotate by 90

set style line 1 linecolor rgb 'dark-red'  linetype 1 linewidth 2  pointtype 7 pointsize 1.5
set style line 2 linecolor rgb 'dark-green'  linetype 1 linewidth 2  pointtype 7 pointsize 1.5
set style line 3 linecolor rgb 'gray'  linetype 1 linewidth 2  pointtype 7 pointsize 1.5

set style line 10 linecolor rgb 'dark-green'  linetype 1 linewidth 2  pointtype 7 pointsize 1.5 dt 3
set style line 11 linecolor rgb 'dark-green'  linetype 1 linewidth 2  pointtype 7 pointsize 1.5
set style line 12 linecolor rgb 'dark-green'  linetype 1 linewidth 2  pointtype 7 pointsize 1.5
set style line 20 linecolor rgb 'dark-green'  linetype 1 linewidth 2  pointtype 7 pointsize 1.5 dt 3
set style line 21 linecolor rgb 'dark-green'  linetype 1 linewidth 2  pointtype 7 pointsize 1.5
set style line 22 linecolor rgb 'dark-green'  linetype 1 linewidth 2  pointtype 7 pointsize 1.5

set style line 70 linecolor rgb 'gray'  linetype 1 linewidth 2  pointtype 7 pointsize 1.5
set style line 71 linecolor rgb 'dark-red'  linetype 1 linewidth 2  pointtype 7 pointsize 1.5
set style line 72 linecolor rgb 'dark-blue'  linetype 1 linewidth 2  pointtype 7 pointsize 1.5

set style line 80 linecolor rgb 'grey'  linetype 1 linewidth 2  pointtype 2 pointsize 1 dt 3

#set key right bottom rotate by 90
unset key
#set grid

set ytics 20 rotate by 90
set xtics 1,2 offset 0,-1,0 rotate by 90
set link x2 via (x-1)/2 inverse (x*2)+1
set x2tics 0,1 offset 0 rotate by 90
set xlabel  "N_g, N_k" rotate by 90 offset 0,5,0
set x2label  "g, k" rotate by 90 offset 0,-3,0
plot \
 'lp_tree_E_all.dat' with linespoints linestyle 80 notitle, \
 'lp_tree_M0.dat' with linespoints linestyle 70 title "N_k mod 3 == 0", \
 'lp_tree_M1.dat' with linespoints linestyle 71 title "N_k mod 3 == 1", \
 'lp_tree_M2.dat' with linespoints linestyle 72 title "N_k mod 3 == 2", \
 'lp_tree_D_all_M1_to_M0.dat' with linespoints linestyle 10  title "D(A_k) to G", \
 'lp_tree_D_all_M1_to_M1.dat' with linespoints linestyle 11  title "D(A_k) to R", \
 'lp_tree_D_all_M1_to_M2.dat' with linespoints linestyle 12  title "D(A_k) to B", \
 'lp_tree_D_all_M2_to_M0.dat' with linespoints linestyle 20  notitle, \
 'lp_tree_D_all_M2_to_M1.dat' with linespoints linestyle 21  notitle, \
 'lp_tree_D_all_M2_to_M2.dat' with linespoints linestyle 22  notitle
