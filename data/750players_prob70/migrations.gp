load "../migrations_generic_750.gp"

set title '750 players, 3 hotspots, 70% chance of choosing one as waypoint' font "Helvetica, 20"
plot 'all_resumed.data' using ($2+$3):xtic(1) t "Migrations" lc rgb '#AAAAAA'

#pause -1 "Hit any key to continue"
