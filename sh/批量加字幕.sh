for video in *
do
subs="${video%.*}.ass"
ffmpeg -i "$video" -i "$subs" -map 0:v -map 0:a -map 0:s -map 1 -c:v copy -c:a copy -c:s copy -metadata:s:s:0 language=en -disposition:s:0 0 -metadata:s:s:1 language=zh -disposition:s:1 default "${video%.*}.zh.mkv"
done