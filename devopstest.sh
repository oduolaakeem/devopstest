#!/bin/bash
echo "This is my first devops script"

FILE_PATH=$1

if [ -z "${FILE_PATH}" ]
then
    echo "No argument supplied. Expected a file path"
    echo "Creating directory in current path"
    mkdir ~/devopsshared && cd ~/devopsshared
    FILE_PATH=~/devopsshared
fi

echo "Currently in " ${FILE_PATH}

echo "Creating 30 subdirectories with 5 files in devopsshared"
for i in {1..30}
do
    mkdir ${FILE_PATH}/devopsshared_$i
    for j in {1..5}
    do
        touch ${FILE_PATH}/devopsshared_$i/devopsshared_$i_file$j.txt
    done
done

echo "Creating devopsshared_backup folder in devopsshared"
mkdir ${FILE_PATH}/devopsshared_backup
