#/bin/sh

#ls | xargs -n 1 ./changename.sh

NAME=$1
TARGET_NAME=${NAME/4/7}
cp $NAME $TARGET_NAME
