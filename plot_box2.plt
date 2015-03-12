#
# Boxplot demo
#
reset

print "*** Boxplot ***"
#print "Before execution, prepare all.dat as follows"
print "cat e* > all.dat  (cat no*/mult.ene > all.dat)"
! cat e* > all.dat 

set term png #cairo #size 400,1000
#set terminal postscript eps color enhanced
set output "boxplot2.png"
#set output "multene_boxplot.eps"

set title "Boxplot of Potential Energy in Each Trajectory"
#set xlabel "Trajectory"
set ylabel "Potential Energy (kcal/mol)"

#set style boxplot nooutliers
set style fill solid 0.25 border -1
#set style boxplot outliers pointtype 7
set style data boxplot
#set boxwidth  0.05
#set pointsize 0.5

unset key
#set border 2  #hide axis line
#set xtics ("A" 1, "B" 2) scale 0.0
set xtics nomirror
set ytics nomirror
set xrange [0:20]
#set yrange [-62920:-41480]

#plot 'silver.dat' using (1):2, '' using (2):(5*$3)
set style data boxplot
#p "e1" every 100
#p 'e1' every 100 using (1.0):2:(0.3):1 with boxplot
#p 'e1' every 100 using :1 # with boxplot
p 'e1' every 10000 using (1):1,'e2' every 10000 using (2):1,'e3' every 10000 using (3):1,'e4' every 10000 using (4):1,'e5' every 10000 using (5):1,'e6' every 10000 using (6):1,'e7' every 10000 using (7):1,'e8' every 10000 using (8):1,'e9' every 10000 using (9):1,'e10' every 10000 using (10):1,'e11' every 10000 using(11):1,'e12' every 10000 using (12):1,'e13' every 10000 using (13):1,'e14' every 10000 using (14):1,'e15' every 10000 using (15):1, 'e16' every 10000 using (16):1, 'all.dat' every 100000 using (19):1

#pause -1
