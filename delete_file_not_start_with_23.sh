#/bin/bash
#删除当前目录下所有文件名不以23开头的文件，$1代表要进行操作的目录，$2代表要保留的文件以什么开头
# for item in `ls | grep -v '23.*' | xargs -n 1`
cd $1
rge=$2".*" # 奇怪，为什么不用字符串连接符..呢？#不对，如果该目录又13.txt或者13.jpg，那么rge就是13.txt或者13.jpg，否则才是13.*
# 看来这样并非最好的方式？不如直接把正则作为参数传进了？ 参见delete_file_not_start_with_23_gai.sh
echo $rge
#for item in `ls | grep -v '${rge}'` # 这个不行
for item in `ls | grep -v ${rge}` #这个行
#for item in `ls | grep -v '$rge'` #这样也不行
# do
	# echo ${item}
	# rm $item
# done

#`echo $2` # 比如$2为haha，则运行时会报无haha命令，怎么破？