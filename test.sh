#!/bin/bash
#1.注意[]符号与语句之间要有空格隔开
#2.then 单独起一行
#3.小于要用-lt
 
for number in `seq 9 11` 
do
	echo ${number}
	if [ ${number} -lt 10 ] 
	then 
		wget "http://www.baidu.com/0${number}.jpg"
	else
		wget "http://www.baidu.com/${number}.jpg"
	fi
done
