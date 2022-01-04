#!/bin/bash

rm -f *eps-converted-to.pdf

gnuplot gp_lp_tree.latex.gnuplot
gnuplot gp_S_tree.latex.gnuplot
gnuplot gp_lp_tree.png.gnuplot
gnuplot gp_S_tree.png.gnuplot

