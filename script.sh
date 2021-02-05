#!/bin/bash

x=1
while [ $x -lt 2 ]
do
echo 'Hellow World' >> 123.txt
x=$(($x-1))
done
