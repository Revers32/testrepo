#!/bin/bash
set -o errexit
set -o nounset

path=/var/log/scriptlog
filename=script.log

mkdir -p $path
[[ -f $filename ]] || touch $path/$filename
[[ -d $filename ]] || chmod a+x $path/$filename

while true;do
case $1 in
	-s | --sleeptime)
	sleep="$2"
	shift
	shift;;
	-t | --text)
	text="$2"
	shift
	shift;;
	-r | --run )echo $text >> $path/$filename && sleep $sleep;;
esac
done
