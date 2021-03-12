#!/bin/sh
read -p "新系统（1）还是旧系统（2）？新系统指macOS Catalina及之后的系统。" method

if [ $method == "1" ]
then
    sudo pkill -9 usbd
elif [ $method == "2" ]
then
    sudo killall -STOP -c usbd
fi
