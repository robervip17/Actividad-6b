#!/bin/bash
f="precipitaciones.txt"
tL=$( cat $f | wc -l )
nL=1
dS=0
dSR=0
while [ $nL -le $tL ];
do
	l=$(head -n $nL $f | tail -n 1 )
	f1=$(echo $l | awk '{print $1}')
	nL=$(expr $nL + 1 )
	f2=$(echo $l | awk '{print $2}')
	dS=$(expr $f1 / 7)
	dSR=$(expr $f1 - 7 \* $dS )
	if [ $f2 -eq 0 ]; then
		if [ $dSR -eq 1 ]; then
			echo "$f1 Lunes"
		elif [ $dSR -eq 2 ]; then
			echo "$f1 Martes"
		elif [ $dSR -eq 3 ]; then
			echo "$f1 Miercoles"
		elif [ $dSR -eq 4 ]; then
			echo "$f1 Jueves"
		elif [ $dSR -eq 5 ]; then
			echo "$f1 Viernes"
		elif [ $dSR -eq 6 ]; then
			echo "$f1 Sábado"
		else
			echo "$f1 Domingo"
		fi
	fi
done
