#!/usr/bin/env sh

# missing-libs-i386.sh 

needed=$(readelf -d $1 | awk -F'[][]' '/NEEDED/{print $2}')
installed=$(sudo ldconfig -p | awk '/i386/ {print $1}' | sort -u)

for i in $needed
do
    print=1
    for j in $installed
    do
        if [ "$i" = "$j" ]; then
            print=0
            break
        fi
    done
    if [ $print -eq 1 ]; then
        echo "$i"
    fi
done
