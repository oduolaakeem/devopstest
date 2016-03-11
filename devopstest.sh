#!/bin/bash
echo "This is my first devops script"

FILE_PATH=/Users/kosyanyanwu/devopsshared

echo "Currently in " $FILE_PATH
echo "Creating 30 subdirectories with 5 files in devopsshared"
for i in {1..30}
do
    mkdir $FILE_PATH/devopsshared_$i
    for j in {1..5}
        do
            touch $FILE_PATH/devopsshared_$i/devopsshared_$i_file$j.txt
        done
done

echo "Creating devopsshared_backup folder in devopsshared"
mkdir $FILE_PATH/devopsshared_backup
