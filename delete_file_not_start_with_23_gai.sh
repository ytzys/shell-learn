#/bin/bash
#删除当前目录下所有文件名不以23开头的文件，$1代表要进行操作的目录，$2代表要保留的文件的正则表达式
# 13.* # 如果有比如13.txt这样的文件，则会报错13.txt：未找到命令，如果没有则保持13.*，可见shell脚本里遇到*会自动匹配
cd $1
echo $2
#for item in `ls | grep -v '${rge}'` # 这个不行
for item in `ls | grep -v $2` #这个行
#for item in `ls | grep -v '$rge'` #这样也不行
do
	echo ${item}
	rm $item
done

#`echo $2` # 比如$2为haha，则运行时会报无haha命令，怎么破？
#./1.sh '"*"'