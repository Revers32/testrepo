#!/bin/bash

x=1
while [ $x -lt 2 ]
do
echo 'Hellow World' >> 123.log
x=$(($x-1))
done
