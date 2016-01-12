#!/bin/bash
echo `ls | grep ".jpg." > tmp.txt`
echo `cat tmp.txt | xargs -n 1 rm`
echo `rm tmp.txt`
