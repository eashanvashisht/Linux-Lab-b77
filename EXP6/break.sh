#!/bin/bash

for i in {1..400}
do
	echo $i
	if  [ $i -eq 10 ]
	then
		break
	fi
done
 

