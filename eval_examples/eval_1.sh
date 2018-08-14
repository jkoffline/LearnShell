#!/bin/bash
#
# August 14, 2018
# Karl.Lv@outlook.com
#

myfile="cat test.txt"

echo $myfile
eval echo $myfile
eval $myfile
echo

echo "Last argument is $(eval echo \$$#)"
echo "Last argument is $(eval echo $#)"
