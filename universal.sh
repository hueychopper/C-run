#!/bin/sh
DIR="/home/darkmatter/Desktop/cpp/adventofcode2015"
inotifywait -m -r -e create -e modify --format '%w%f' "${DIR}" | while read NEWFILE
do 
    filenamefll=$(basename -- "$NEWFILE")
    extension="${filenamefll##*.}"
    filename="${filenamefll%.*}"
    if [ extension="cpp" ] 
    then
        # echo "${filenamefll}"
        echo "g++ ${filenamefll} -o ${filename}.exe"$'\n'"./${filename}.exe" > r.sh
    fi
    break
done