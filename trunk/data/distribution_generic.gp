set terminal postscript eps enhanced color solid lw 1 "Helvetica" 16
set encoding iso_8859_1
set format y ""
set ylabel 'Load'
set autoscale
set yrange [0:2200000]
set grid

set grid noxtics nomxtics ytics nomytics noztics nomztics \
 nox2tics nomx2tics noy2tics nomy2tics nocbtics nomcbtics

set boxwidth 0.7 absolute
set style fill solid 1.0 border -1
set style histogram rowstacked title offset 0, -1
set style data histograms
set key height 2 noautotitles #spacing 5 nobox outside below horizontal

set xlabel  offset character 0, 5, 0 #font "" textcolor lt -1 norotate
set xtic rotate #by 90 border 100

set bmargin 10
