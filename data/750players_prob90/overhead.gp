load "../overhead_generic_750.gp"

set title '750 players, 3 hotspots, 90% chance of choosing one as waypoint'

plot "KDTREE_avged.data" using ($1 / 1000):($14 + $15 + $16 + $17 + $18 + $19 + $20 + $21) title 'KDTree' with linespoints lc rgb "#cc0000", "BFBCT_avged.data" using ($1 / 1000):($14 + $15 + $16 + $17 + $18 + $19 + $20 + $21) title 'BFBCT' with linespoints lc rgb "#000000", "AHMED_avged.data" using ($1 / 1000):($14 + $15 + $16 + $17 + $18 + $19 + $20 + $21) title 'Ahmed' with linespoints lc rgb "#0000cc", "PROGREGA_avged.data" using ($1 / 1000):($14 + $15 + $16 + $17 + $18 + $19 + $20 + $21) with linespoints title 'Progrega' lc rgb "#00cc00"
