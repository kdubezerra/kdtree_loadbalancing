#!/bin/bash

PLAYERS=750
while [ $PLAYERS -le 1500 ]
do
	PROB=0
	while [ $PROB -le 90 ]
	do
		cd ${PLAYERS}players_prob${PROB}
		gnuplot distribution_${PLAYERS}_${PROB}.gp
		epstopdf distribution_${PLAYERS}_${PROB}.eps
		gnuplot usagedeviation_${PLAYERS}_${PROB}.gp
		epstopdf usagedeviation.eps
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
