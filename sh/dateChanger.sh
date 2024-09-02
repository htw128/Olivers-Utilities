#!/bin/bash

# 检查输入参数是否正确
if [ $# -ne 2 ]; then
    echo "Usage: $0 <file>"
    exit 1
fi

folder=$1
file=$2

# 检查文件是否存在
if [ ! -f "$file" ]; then
    echo "File $file not found."
    exit 1
fi

# 循环读取文件中的每一行，执行setfile命令来修改文件的创建时间
while IFS=',' read -r filename date_time; do
    # 检查是否读取到了文件名和日期时间信息
    if [ -n "$filename" ] && [ -n "$date_time" ]; then
        # 使用setfile命令来修改文件的创建时间
        realFileName="${folder}/${filename}"
        setfile -d "$date_time" "$realFileName"
        if [ $? -eq 0 ]; then
            echo "Modified creation time of $filename to $date_time"
        else
            echo "Failed to modify creation time of $filename"
        fi
    fi
done < "$file"
