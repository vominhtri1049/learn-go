#!/bin/bash

if [ -z $1 ]; then
    file_path=$(whoami)
else
    if [ ! -f "/Users/trivo/Desktop/Go/learn-go/$1" ]; then
        echo "Requested $1 directory doesn't exist."
        exit 1
    fi
    file_path=$1
fi

echo "Current folder ${file_path}"

# for i in $( ls -d */ ); do 
#     folder=${i%%/}
#     counter=$( echo $folder | wc -c )
#     # echo "Folder $folder has $counter"
#     echo "$folder has counter $counter"
# done

# counter=0
# while [ $counter -lt 3 ]; do 
#     let counter+=1
#     echo $counter
# done

counter=6
until [ $counter -lt 3 ]; do
    let counter-=1
    echo $counter
done

let "a=2+2"
let "b=a*($a-1)"
echo $b

echo $(bc -l <<< 'scale=1; 8.5 / 2.3')