#!/bin/bash
#复制不同件夹下的件，到一个指定目录
result_dir="zoe_result"
mkdir ${result_dir}

for item in `ls`
do
	echo ${item}
	if [ -d ${item} -a ${item} != ${result_dir} ]
	then
		cd ${item}
		cp 1-1403041I*.jpg -t ../${result_dir}
		cd ..
	fi
done