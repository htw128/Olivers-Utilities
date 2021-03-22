#!/bin/sh
cd ~/applications/olivers-utilities/bin/
for file in *;do
    upx $file
done