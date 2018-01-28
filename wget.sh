#/bin/bash
# how to print the web cotent to the console without donwload it.
wget -q -O - http://www.baidu.com/

# with post data
wget -q -O - http://www.baidu.com/ --post-data=imgContinue=Continue+to+image+...+

# or you can use curl
curl http://www.baidu.com/ -d imgContinue=Continue+to+image+...+

# grep something, sometimes you have to grep two times
grep -o "http://www.baidu.com/.*.jpg' title" | grep -o http.*jpg




