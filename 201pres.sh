#!/bin/bash

echo "Are you sure you want to backup Repos1 (Y/N)"

read input

val="Y"

if [ $input = $val ]
then
    backfiles="/home/andrew/repos1"

    dest="/backupfolder"

    day=$(date +%F)
    archive="Repos-$day.tar"

    tar -cvf $dest/$archive $backfiles

    echo

    echo "Backup was created."
else
    echo "Backup has been canceled"
fi
