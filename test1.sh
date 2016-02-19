#!/bin/bash
array=(a b c d e f)
for number in `seq 0 5`
do
	wget "http://baidu.com/${array[number]}.jpg"
done