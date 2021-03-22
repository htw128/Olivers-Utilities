for file in *
do 
    photo="${file%%.*}"
    if [[ -e $photo.HEIC ]] && [[ -e $photo.jpg ]] && [[ -e $photo.MOV ]]
    then
        mv $photo.jpg ~/.Trash
        mv $photo.MOV ~/.Trash
    elif [[ -e $photo.PNG ]] && [[ -e $photo.jpg ]]
    then
        mv $photo.jpg ~/.Trash
    elif [[ -e $photo.HEIC ]] && [[ -e $photo.jpg ]]
    then 
        mv $photo.jpg ~/.Trash
    fi
done