#!/bin/bash

folder1="/Users/oliver/Documents/Work/WorkingFolder/Need to sort"
folder2="/Users/oliver/Documents/Work/WorkingFolder/haveCreateDate"


# 读取output.csv中的文件名
while IFS=, read -r file_name _; do
    # 检查文件是否存在于folder1中
    if [ -f "$folder1/$file_name" ]; then
        # 移动文件到folder2
        mv "$folder1/$file_name" "$folder2/"
        echo "Moved $file_name to$folder2"
    fi
done < /Users/oliver/Documents/Work/WorkingFolder/output.csv
