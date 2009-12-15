set terminal postscript eps enhanced color solid lw 3 "Helvetica" 16
set encoding iso_8859_1
set ylabel ''
set xlabel ''
set autoscale
set grid
set output "avatarsdistribution.eps"
set grid noxtics nomxtics noytics nomytics noztics nomztics \
 nox2tics nomx2tics noy2tics nomy2tics nocbtics nomcbtics

set boxwidth 0.7 absolute
set yrange [0:749]
set xrange [0:749]

set size .750,1
