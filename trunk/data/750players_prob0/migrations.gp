load "../migrations_generic_750.gp"

set title '750 players, no hotspots' font "Helvetica, 20"
plot 'all_resumed.data' using ($2+$3):xtic(1) t "Migrations" lc rgb '#AAAAAA'

#pause -1 "Hit any key to continue"
