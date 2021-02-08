#!/bin/bash
set -e
set -u

path=/var/log/scriptlog
filename=script.log
x=1

mkdir -p $path
[[ -f $filename ]] || touch $path/$filename
[[ -d $filename ]] || chmod a+x $path/$filename

while [ $x -lt $1 ]
do
echo 'Hello World' >> $path/$filename
x=$(($x-1))
sleep $2
done
