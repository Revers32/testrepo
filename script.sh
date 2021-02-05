#!/bin/bash
path=/var/log/scriptlog
filepath=/var/log/scriptlog/script.log
sudo mkdir $path
sudo touch $filepath
sudo chmod 777 $filepath
x=1
while [ $x -lt 2 ]
do
echo 'Hello World' >> $path/script.log
x=$(($x-1))
sleep 30
done
