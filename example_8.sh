#!/bin/bash
#
# August 15, 2018
# Karl.Lv@outlook.com
#

file=/dir1/dir2/dir3/my.file.txt

echo $file
echo ${file#*/}         # dir1/dir2/dir3/my.file.txt
echo ${file##*/}        # my.file.txt
echo ${file#*.}         # file.txt
echo ${file##*.}        # txt
echo ${file%/*}         # /dir1/dir2/dir3
echo ${file%%/*}        # null output
echo ${file%.*}         # /dir1/dir2/dir3/my.file
echo ${file%%.*}        # /dir1/dir2/dir3/my

echo
echo ${file:0:5}        # /dir1
echo ${file:5:5}        # /dir2
echo
echo ${file/dir/path}   # /path1/dir2/dir3/my.file.txt
echo ${file//dir/path}  # /path1/path2/path3/my.file.txt
echo
echo ${#file}           # 27