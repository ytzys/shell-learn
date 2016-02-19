#!/bin/bash
for number in `seq 1 141`
do
	echo ${number}
	if [ ${number} -lt 10 ] 
	then 
		wget "http://www.mmylr.com/wp-content/uploads/2016/01/1500${number}.jpg"
	elif [ ${number} -lt 100 ]
	then
		wget "http://www.mmylr.com/wp-content/uploads/2016/01/150${number}.jpg"
	else
		wget "http://www.mmylr.com/wp-content/uploads/2016/01/150${number}.jpg"
	fi
done