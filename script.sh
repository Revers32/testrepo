#!/bin/bash

path=/var/log/scriptlog
filname=script.log
x=1

mkdir $path
touch $path/$filename
chmod a+x $path/$filename

while [ $x -lt 2 ]
do
echo 'Hello World' >> $path/script.log
x=$(($x-1))
sleep 30
done
