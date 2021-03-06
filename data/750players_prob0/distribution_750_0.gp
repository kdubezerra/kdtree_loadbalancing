load "../distribution_generic.gp"

set title '750 players, no hotspots' font "Helvetica, 20" 
set output "distribution_750_0.eps"

plot newhistogram "Server 1", 'load_s1_750_0.data' using 2:xtic(1) t "Load" lc rgb '#333333', '' using 3 t "Overhead" lc rgb '#888888', \
     newhistogram "Server 2", 'load_s2_750_0.data' using 2:xtic(1) notitle lc rgb '#333333', '' using 3 notitle lc rgb '#888888', \
     newhistogram "Server 3", 'load_s3_750_0.data' using 2:xtic(1) notitle lc rgb '#333333', '' using 3 notitle lc rgb '#888888', \
     newhistogram "Server 4", 'load_s4_750_0.data' using 2:xtic(1) notitle lc rgb '#333333', '' using 3 notitle lc rgb '#888888', \
     newhistogram "Server 5", 'load_s5_750_0.data' using 2:xtic(1) notitle lc rgb '#333333', '' using 3 notitle lc rgb '#888888', \
     newhistogram "Server 6", 'load_s6_750_0.data' using 2:xtic(1) notitle lc rgb '#333333', '' using 3 notitle lc rgb '#888888', \
     newhistogram "Server 7", 'load_s7_750_0.data' using 2:xtic(1) notitle lc rgb '#333333', '' using 3 notitle lc rgb '#888888', \
     newhistogram "Server 8", 'load_s8_750_0.data' using 2:xtic(1) notitle lc rgb '#333333', '' using 3 notitle lc rgb '#888888'
