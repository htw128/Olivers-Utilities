#!/bin/bash

# 指定文件夹路径
folder="/Users/oliver/Documents/Work/WorkingFolder/screenrecording_dupulicate"

# 切换到文件夹路径
cd "$folder" || exit

# 遍历文件
for file in *; do
    # 提取文件名中的日期和时间
    datetime=$(echo "$file" | grep -oE '[0-9]{2}-[0-9]{2}-[0-9]{4} [0-9]{2}-[0-9]{2}-[0-9]{2}')

    # 如果提取到了日期和时间
    if [ -n "$datetime" ]; then
        # 格式化日期和时间为UNIX时间戳
        formatted_datetime=$(echo $datetime | sed 's/-\([0-9]\{2\}\)-\([0-9]\{4\}\) \([0-9]\{2\}\)-\([0-9]\{2\}\)-\([0-9]\{2\}\)/\/\1\/\2 \3:\4:\5/')

        # 如果日期时间格式无效
        if [ $? -ne 0 ]; then
            echo "无效的日期/时间格式: $datetime"
            continue
        fi

        # 使用setfile工具将文件设定为提取出的时间
        setfile -d "$formatted_datetime" "$file"
        
        # 输出处理的文件名和设定的时间
        echo "设置文件 $file 的创建日期和时间为 $formatted_datetime"
    else
        echo "未能从文件名中提取到日期和时间：$file"
    fi
done
