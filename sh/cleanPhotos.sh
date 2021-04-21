#!/bin/sh
function initializer(){
    #设定工作文件夹
    if [[ -z "$1" ]];then
        while [[ -z "$folder" ]];do
        read -p "请拖入存放照片的文件夹：" folder
        done
    else
        folder=$1
    fi
    #设定要保留的项目
    file_Type=(HEIC JPG MOV AAE)
    for ((i=0; i<=3; i++));do
        read -p "是否保留${file_Type[${i}]}文件？[ny]" save_Tags[${i}]
        if [[ "${save_Tags[${i}]}" == "" ]];then
            save_Tags[${i}]=y
        fi
    done
}
function deleting(){
    cd $folder
    for file in * ;do 
        photo="${file%%.*}"
        for ((i=0; i<=3; i++));do
        if [[ -e $photo.${file_Type[${i}]} ]] && [[ "${save_Tags[${i}]}" == "n" ]];then
            mv $photo.${file_Type[${i}]} ~/.Trash
        fi
        done
    done
}
initializer $1
deleting