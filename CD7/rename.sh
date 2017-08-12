#！/usr/bin/env bash

#title=./content.txt
#readarray arr < /home/pi/Documents/tangshi/CD1/content
#arr=`cat /home/pi/Documents/tangshi/CD1/content.txt|tr "\n" " "`
#array=($arr)
readarray arr < content
music=./*.mp3

index=0
for file in $music
do
    #echo $index ${arr[index]} $file
    #mv $file $newfile
    newname=`echo -e "${arr[index]}" | tr -d '[:space:]'`
    prefix=`printf %02d $((index+1))`
    newfile="./CD7.$prefix.$newname.mp3"
    echo $file $newfile
    mv "$file" "$newfile"
    index=$((index+1))
done
