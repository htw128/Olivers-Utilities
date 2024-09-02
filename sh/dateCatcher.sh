#!/bin/bash

# 指定要处理的文件夹路径
input_folder="/Users/oliver/Documents/Work/WorkingFolder/haveCreateDate"

# 指定输出文本文件的完整路径
output_file="/Users/oliver/Documents/Work/WorkingFolder/haveCreateDate/output.txt"

# 检查输出文件是否存在，不存在则创建
touch "$output_file"

# 遍历文件夹中的每个文件
for file in "$input_folder"/*; do
    # 使用exiftool获取Content Create Date
    create_date=$(exiftool -time:all "$file" | grep "Content Create Date")

    # 提取文件名（不含路径）
    filename=$(basename "$file")

    # 将文件名和Content Create Date追加到输出文件
    echo "Filename: $filename" >> "$output_file"
    echo $create_date >> "$output_file"

    echo "Processed: $filename"
done

echo "操作完成！"
