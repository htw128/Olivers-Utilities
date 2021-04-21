# Oliver的sh工具箱

## 欢迎你使用本工具箱！

本工具箱是我平时根据自己的需求所写的一些脚本，在此打包成一个工具箱。安装后你的终端会增加许多实用功能。

Ubuntu 用户需要禁用dash来运行脚本。

## 安装

本工具箱的安装位置是`/usr/local/bin`。如果你没有这个目录，安装脚本在安装时会自动创建该目录。

_暂未上线_

- 通过`brew install olivers-util`来安装本工具箱。

**已上线**

- clone本git到本地后，运行install.sh（需要手动`chmod +x`）。

手动安装：

- clone git到本地后将`bin`文件夹内的几个文件拷贝至`/usr/local/bin`中。

或：

- clone git到本地后将`bin`文件夹添加至你所使用的shell配置文件中的`$PATH`中.

## 卸载

_暂未上线_

如果你安装时使用了[Homebrew](https://github.com/Homebrew/brew)，那么你自然可以通过`brew uninstall olivers-util`来进行卸载。

**已上线**

如果你使用的install.sh脚本进行的安装，那么可以再次运行该脚本来进行卸载。

如果以上方法都不适用，或你想确认是否卸载干净，你可以去下面目录看看有没有本工具集提供的几个命令：

`/usr/local/bin`

## 目前提供的功能

#### compare

使用MD5来比较两个文件是否相同。

用法：

`compare [file1] [file2]` 或直接运行 `compare`。

#### fixusb

解决手机连接到Mac后闪断的问题。

用法：`fixusb`

#### unpack

一键解压从某网站下载的资源。解压完的资源将放置在桌面上名为“payload"的文件夹内。

用法：`unpack [resource]`或`unpack`

#### removeAd

移除片头特定时长的广告。需要[ffmpeg](https://github.com/FFmpeg/FFmpeg)。

时长默认为秒数，可以在其后增加时间指示更改单位。如：`120mm` 表示丢弃前部120毫秒的内容。

用法：`removeAd`

#### pause

为shell补充缺失的pause命令。调用本功能后会提示“请按任意键继续……"

#### combine

用于合并从各个平台(Youtube)下载的音画分离文件，需要ffmpeg。

用法:

`combine [视频源] [音频源] [标题]`

或

`combine`并根据提示进行操作。

#### cleanPhotos

当你用Mac自带的图像捕捉程序从iPhone导出照片时会自动导出.mov、.HEIC、jpg和.aae四个文件。本脚本将会根据你制定的保留项，自动筛选并删除你不需要的内容。

用法：

`cleanPhotos [ your photo folder]`

或

`cleanPhotos`并根据提示进行操作。

### 不知道有啥用途不打算做适配的

#### 批量添加字幕.sh

视频和字幕在同一文件夹且命名相同时，将字幕文件以软字幕的方式添加到视频并封装在mkv容器中，需要ffmpeg。

#### change bitrate.sh

参数1为源音频文件，参数2为目标比特率。默认输出到源音频文件同目录下，需要ffmpeg。

## 本工具箱目前仍需要完成的部分

* [ ] 自动更新脚本

## 已知的问题与解决方法

- Ubuntu会将`#!/bin/sh`解析为dash，会导致包括install.sh在内的所有功能无法使用。需要运行`sudo dpkg-reconfigure dash`并在出现的界面中选no，即可关闭dash（但会影响Ubuntu的启动速度）。
- 如md5等命令在openBSD系统中不提供。且Linux系统中有更加好用的`diff`，因此不再考虑进行适配。