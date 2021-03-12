#!/bin/sh
if [[ $1 == "" ]]
then
    read -p "请拖入文件:" file
else
    file=$1
fi
#设置密码字典并初始化参数
password=(
    xb20
    xb20.cc
    xb5.cc
    kan84.tv
    kan84.net
    )
index=0
returncode=2
#尝试密码并解压至temp
while [[ $returncode == 2 && $index < 4 ]]
do
    7z e -o/tmp/temp -p${password[$index]} $file
    returncode=$?
    index=$(expr $index + 1)
done
#进一步解压
target=/tmp/temp/VV.删除我7z
payload=~/desktop/payload
7z x -o$payload $target
#Clean up
rm -r /tmp/temp
rm ~/desktop/payload/更多小白精彩.url
rm ~/desktop/payload/关注公众号，不迷路.jpg
rm ~/desktop/payload/小白新地址.url
rm ~/desktop/payload/VX赞赏.01.png
rm ~/desktop/payload/VX赞赏.02.JPG

read -p "是否删除源文件？(y/n)" delet
if [[ $delet = 'y' ]]
then
    rm $file
fi
