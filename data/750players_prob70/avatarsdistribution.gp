load "../avatarsdistribution_generic.gp"

set title "750 players, 3 hotspots, 70% chance of choosing one as waypoint"

plot "avatarsdistribution.data" using 1:(750-($2)) notitle with points 7

