#!/bin/bash
set -o errexit
set -o nounset

path=/var/log/scriptlog
filename=script.log
x=1


mkdir -p $path
[[ -f $filename ]] || touch $path/$filename
[[ -d $filename ]] || chmod a+x $path/$filename

while true; do
case $x in
	1)sleepTime=$1;;
	2)text=$2;;
	*)echo $text >> $path/$filename && sleep $sleepTime;;
esac
x=$(($x+1))
done
