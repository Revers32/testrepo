#!/bin/bash
set -o errexit
set -o nounset

systemctl start rsyslog

path=/var/log
filename=script.log

mkdir -p $path
[[ -f $filename ]] || touch $path/$filename && chmod a+x $path/$filename

while [[ -n "${1:-}" ]]
do
case "$1" in
	-s | --sleeptime) sleep="$2"
	shift;;
	-t | --text) text="$2"
	shift;;
	*) echo "( $1 ) Option not found"
	exit 1;; 
esac
shift
done

while true; do
logger  -p local0.notice "$text"
sleep $sleep
done
