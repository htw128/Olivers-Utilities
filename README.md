# Oliver_s_Utility

来自Oliver的sh工具箱，收集了我自己写的各式各样的小工具。

## compare

使用MD5来比较两个文件是否相同。可直接拖入两个文件做为参数，或直接运行`compare`然后再拖入文件。

## fixusbd

解决手机连接到Mac后闪断的问题。

## unpack

一键解压从某网站下载的资源。解压完的资源将放置在桌面上名为“payload"的文件夹内。



下面列出的小工具未进行通用适配，仅适用于我的环境。

与媒体相关的部分需要[ffmpeg](https://github.com/FFmpeg/FFmpeg)。
以下是各个工具的说明：

## combine.sh

用于合并从各个平台(Youtube)下载的音画分离文件，需要ffmpeg。

## clean potos.sh

当你用Mac自带的图像捕捉程序从iPhone导出照片时会自动导出.mov、.HEIC和.jpg三个文件。本脚本将会删除.mov和.jpg，仅保留.HEIC文件。此脚本适用于你不清楚到底你删了哪个照片的哪个文件，脚本会自动判断并删除。

---------- 2021.2.4 Updtae ----------

## 批量添加字幕.sh

视频和字幕在同一文件夹且命名相同时，将字幕文件以软字幕的方式添加到视频并封装在mkv容器中，需要ffmpeg。

## change bitrate.sh

参数1为源音频文件，参数2为目标比特率。默认输出到源音频文件同目录下，需要ffmpeg。

## remove ad.sh

移除片头特定时长的广告
本脚本需要移除开头的`echo`标记才能工作。需要ffmpeg。
