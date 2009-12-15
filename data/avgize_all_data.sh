#!/bin/bash

PLAYERS=750
while [ $PLAYERS -le 1500 ]
do
	PROB=0
	while [ $PROB -le 90 ]
	do
		cd ${PLAYERS}players_prob${PROB}
		echo "Avgizing ${PLAYERS}_${PROB}_KDTREE"
		../avgizer ${PLAYERS}players_${PROB}hotprobability_KDTREE.data KDTREE_avged.data
		echo "Avgizing ${PLAYERS}_${PROB}_BFBCT"		
		../avgizer ${PLAYERS}players_${PROB}hotprobability_BFBCT.data BFBCT_avged.data
		echo "Avgizing ${PLAYERS}_${PROB}_PROGREGA"
		../avgizer ${PLAYERS}players_${PROB}hotprobability_PROGREGA.data PROGREGA_avged.data
		echo "Avgizing ${PLAYERS}_${PROB}_AHMED"
		../avgizer ${PLAYERS}players_${PROB}hotprobability_AHMED.data AHMED_avged.data
		cd ..
		if [ $PROB -eq 0 ]
		then PROB=70
		else 	if [ $PROB -eq 70 ]
			then PROB=90
			else PROB=100
			fi
		fi
	done
	PLAYERS=$((PLAYERS+750))
done

echo "ALL DONE."
