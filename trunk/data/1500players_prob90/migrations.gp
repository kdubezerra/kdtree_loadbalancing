load "../migrations_generic_1500.gp"

set title '1500 players, 3 hotspots, 90% chance of choosing one as waypoing' font "Helvetica, 20"
plot 'all_resumed.data' using ($2+$3):xtic(1) t "Migrations" lc rgb '#AAAAAA'

#pause -1 "Hit any key to continue"
