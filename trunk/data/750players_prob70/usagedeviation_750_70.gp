load "../usagedeviation_generic_750.gp"

set title '750 players, 3 hotspots, 70% chance of choosing one as waypoint' font "Helvetica, 20" 
set output "usagedeviation.eps"

plot "KDTREE_avged.data" using (($1)/1000):($4) title 'KDTree' with linespoints lc rgb "#cc0000", "BFBCT_avged.data" using (($1)/1000):($4) title 'BFBCT' with linespoints lc rgb "#000000", "AHMED_avged.data" using (($1)/1000):($4) title 'Ahmed' with linespoints lc rgb "#0000cc", "PROGREGA_avged.data" using (($1)/1000):($4) title 'Progrega' with linespoints lc rgb "#00cc00"
