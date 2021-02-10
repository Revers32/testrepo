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
	1)echo -n "Enter number of iterration " && read numberOfIterration;;
	2)echo -n "Enter sleep time " && read sleepTime;;
	3)echo -n "Enter text " && read text;;
	*)echo $text >> $path/$filename && sleep $sleepTime && if (($x >$numberOfIterration+2));then echo "done" && break; fi ;;
esac
x=$(($x+1))
done
