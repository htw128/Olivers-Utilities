#!/bin/sh
#设置变量
commands=(
    compare
    fixusb
    pause
    removeAd
    unpack
    combine
    )
scriptDir=$(dirname $0)
cd $scriptDir/bin
installDir="/usr/local/bin/"

function install(){
    #检查是否有安装目录
    if [[ ! -d $installDir ]];then
        mkdir $installDir
    fi
    #拷贝文件至安装目的地
    for file in * ; do
        cp $file $installDir
        chmod +x $file
    done
    echo "已完成安装！感谢你选择Oliver的sh工具箱！"
}
function uninstall(){
    read -p "很抱歉你选择了离开……请按y并按下回车确认" confirm
    if [[ $confirm == "y" ]];then
        cd $installDir
        index=0
        commandsConunt=$(expr ${#commands[@]} - 1 )
        while [[ $index -le $commandsConunt ]]
        do
            rm -f ${commands[$index]}
            index=$(expr $index + 1)
        done
        echo "已删除，我们相忘于江湖！"
    elif [[ $confirm != "y" ]];then
        echo "很高兴你改了主意！希望接下来的日子也能帮到你:)"
        exit
    fi
}
if [[ -e "$installDir/pause" ]];then
    uninstall
elif [[ ! -e "installDir/pause" ]];then
    install
fi