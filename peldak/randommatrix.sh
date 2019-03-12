#! /bin/bash

for ((i=0;i<$1;i++)); do
	for ((j=0;j<$2-1;j++)); do
		echo -n $RANDOM";"
	done
	echo $RANDOM
done
