#/bin/sh
#cat build.prop | xargs -n 1 ./test.sh
#查看文件build.prop中的每一行是否在awk.tmp.txt中出现

#for str in $@
#do
	str=$1
	RESULT=`grep $str awk.tmp.txt`
	#echo $RESULT
	if [ -z "$RESULT" ]
	then
		echo "don't have $str"
	fi
#done
