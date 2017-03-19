#!/bin/sh


for f in *.pdf
do 
	for j in *.pdf
	do
		if [ $(stat -c%s "$f") -eq  $(stat -c%s "$j") ]
		then
			if [ "$f" != "$j" ]
			then
				echo $f, $j
			fi
		fi
	done
done