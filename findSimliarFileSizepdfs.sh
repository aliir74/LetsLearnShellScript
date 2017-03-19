#!/bin/sh

#VAR1 = "test"
#VAR2 = "TETS"
for f in *.pdf
do 
	for j in *.pdf
	do
		#echo "$j"
		#VAR1 = $(stat -c%s "$f")
		#VAR2 = $(stat -c%s "$j")
		if [ $(stat -c%s "$f") -eq  $(stat -c%s "$j") ]
		then
		#if [ "$VAR1" -eq "$VAR2" ]; then
			if [ "$f" != "$j" ]
			then
				echo $f, $j
			fi
		fi
	done
done