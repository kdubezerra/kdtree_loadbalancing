load "../avatarsdistribution_generic.gp"

set title "1500 players, no hotspots"

plot "avatarsdistribution.data" using 1:(750-($2)) notitle with points 7

