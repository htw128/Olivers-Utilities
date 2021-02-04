for f in *.mp4
do
    trim_start=16
    echo ${f%.mp4}
    echo ffmpeg -ss "$trim_start" -i "$f" -c copy -map 0 "${f%.mp4}-trimmed.mp4"
done