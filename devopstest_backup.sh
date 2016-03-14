#!/bin/bash
echo "Running devopstest backup script"

FILE_PATH=$1

if [ -z "${FILE_PATH}" ]
then
    echo "No argument supplied. Expected file path to devopsshared directory"
    exit 1
fi

echo "Currently in " ${FILE_PATH}

echo "Zipping devopsshared_0*_file1.txt, file3.txt and file5.txt"

for i in {1..30}
do
    zip devopsshared_$i.zip ${FILE_PATH}/devopsshared_$i/devopsshared_[135].txt
    mv devopsshared_$i.zip ${FILE_PATH}/devopsshared_backup
done

echo "Zipping devopsshared_backup"
CURRENT_DATE=$(date "+%Y-%m-%d")
zip ${FILE_PATH}/devopsshared_backup_$CURRENT_DATE  ${FILE_PATH}/devopsshared_backup
