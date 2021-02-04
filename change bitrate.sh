if [ "$1" = "" ]
then
echo "参数1为源文件，参数2为目标比特率，输出至源文件同目录下"
else
ffmpeg -i "$1" -ar "$2" "${1%.*}_bitrate-changed.wav"
fi