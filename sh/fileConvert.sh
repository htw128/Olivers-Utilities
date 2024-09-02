#!/bin/bash

# 源文件夹
source="/Users/oliver/Downloads/museum_music"
# 目标文件夹
target="/Users/oliver/Music/ACNH"

# 确保目标文件夹存在，如果不存在则创建
mkdir -p "$target"

# 循环处理源文件夹中的所有m4a文件
for file in "$source"/*.flac; do
    if [ -e "$file" ]; then
        # 提取文件名（不带路径和扩展名）
        filename=$(basename -- "$file")
        filename_no_ext="${filename%.*}"
        # 转换m4a到wav
        ffmpeg -i "$file" "$target/$filename_no_ext.wav"
    fi
done

echo "转换完成！"
