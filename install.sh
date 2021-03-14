#!/bin/sh
scriptAbsDir=$(readlink -f "$0")
scriptDir=$(dirname $scriptAbsDir)
cd $scriptDir/bin
installDir="/usr/local/bin"
function install(){
    #检查是否有/usr/local/bin
    if [[ ! -d $installDir ]];then
        mkdir $installDir
    fi
    #拷贝文件至安装目的地
    for file in * ;do
        cp $file $installDir
    done
    echo "已完成安装！感谢你选择Oliver的sh工具箱！"
}
function uninstall(){
    read -p "很抱歉你选择了离开……请按y并按下回车确认" confirm
    if [[ $confirm == "y" ]];then
        echo "正在删除文件……"
        cd $installDir
        for file in *
        do
            rm -f $file
        done
        echo "已删除，我们相忘于江湖！"
    elif [[ $confirm != "y" ]];then
        echo "很高兴你改了主意！希望接下来的日子也能帮到你:)"
        pause
        exit
    fi

}
if [[ -e "$installDir/pause" ]];then
do
    uninstall
elif [[ ! -e "installDir/pause" ]];then
do
    install
done