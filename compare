#!/bin/sh
#传入文件
if [[ $1 == "" ]]
then
    while [[ $file1 == "" ]]
    do
    read -p "请拖入第一个文件并按回车：" file1
    done
    while [[ $file2 == "" ]]
    do
    read -p "请拖入第二个文件并按回车：" file2
    done
else
    file1=$1
    file2=$2
fi
#计算MD5值并比对
file1Md5=$(md5 -q "$file1")
file2Md5=$(md5 -q "$file2")
:<<!
echo $file1
echo $file2
!
if [[ "$file1Md5" == "$file2Md5" ]]
then
    echo "\n文件一致"
else
    echo "\n文件不一致"
fi