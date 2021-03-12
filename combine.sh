read -p "请拖拽视频地址：" video
read -p "请拖入音频地址：" audio
read -p "请输入视频标题：" title
ffmpeg -i $video -i $audio -c:v copy -c:a copy "$title.mp4"