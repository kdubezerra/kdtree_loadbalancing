set terminal postscript eps enhanced color solid lw 1 "Helvetica" 14
set encoding iso_8859_1
set title '1500 players, no hotspots'
set format y ""
set ylabel 'Load'
set autoscale
set grid
set output "distribution_1500_0.eps"
set grid noxtics nomxtics ytics nomytics noztics nomztics \
 nox2tics nomx2tics noy2tics nomy2tics nocbtics nomcbtics

set boxwidth 0.7 absolute
set style fill solid 1.0 border -1
set style histogram rowstacked title offset 0, -6
set style data histograms
set key height 2 noautotitles #spacing 5 nobox outside below horizontal

set xlabel  offset character 0, 5, 0 #font "" textcolor lt -1 norotate
set xtic rotate #by 90 border 100

set yrange [0:2200000]

set bmargin 10

plot newhistogram "Server 1", 'load_s1_1500_0.data' using 2:xtic(1) t "Load" lc rgb '#333333', '' using 3 t "Overhead" lc rgb '#888888', \
     newhistogram "Server 2", 'load_s2_1500_0.data' using 2:xtic(1) notitle lc rgb '#333333', '' using 3 notitle lc rgb '#888888', \
     newhistogram "Server 3", 'load_s3_1500_0.data' using 2:xtic(1) notitle lc rgb '#333333', '' using 3 notitle lc rgb '#888888', \
     newhistogram "Server 4", 'load_s4_1500_0.data' using 2:xtic(1) notitle lc rgb '#333333', '' using 3 notitle lc rgb '#888888', \
     newhistogram "Server 5", 'load_s5_1500_0.data' using 2:xtic(1) notitle lc rgb '#333333', '' using 3 notitle lc rgb '#888888', \
     newhistogram "Server 6", 'load_s6_1500_0.data' using 2:xtic(1) notitle lc rgb '#333333', '' using 3 notitle lc rgb '#888888', \
     newhistogram "Server 7", 'load_s7_1500_0.data' using 2:xtic(1) notitle lc rgb '#333333', '' using 3 notitle lc rgb '#888888', \
     newhistogram "Server 8", 'load_s8_1500_0.data' using 2:xtic(1) notitle lc rgb '#333333', '' using 3 notitle lc rgb '#888888'
