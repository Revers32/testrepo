#!/bin/bash

path=/var/log/scriptlog
filname=script.log
x=1

mkdir -p $path
[[ -f $filename ]] || touch $path/$filename
[[ -d $filename ]] || chmod a+x $path/$filename

while [ $x -lt 2 ]
do
echo 'Hello World' >> $path/$filename
x=$(($x-1))
sleep 30
done
