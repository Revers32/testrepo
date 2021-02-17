#!/bin/bash
set -o errexit
set -o nounset

path=/var/log/scriptlog
filename=script.log

mkdir -p $path
[[ -f $filename ]] || touch $path/$filename
[[ -f $filename ]] || chmod a+x $path/$filename

while [ -n "${1:-}" ]
do
case "$1" in
	-s | --sleeptime) sleep="$2"
	shift;;
	-t | --text) text="$2"
	shift;;
	*) echo "( $1 ) Option not found"
	exit;; 
esac
shift
done

while true; do
echo $text >> $path/$filename && sleep $sleep
done
