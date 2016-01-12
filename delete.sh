#!/bin/bash
#单独的用``调用命令执行的话会报错，最后是再调用一下echo或者将执行结果赋值给一个变量

echo `ls | grep ".jpg." > tmp.txt`
echo `cat tmp.txt | xargs -n 1 rm`
echo `rm tmp.txt`
