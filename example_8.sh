#/bin/bash
#
# August 15, 2018
# Karl.Lv@outlook.com
#

file=/dir1/dir2/dir3/my.file.txt

echo $file
echo ${file#*/}
echo ${file##*/}
echo ${file#*.}
echo ${file##*.}
echo ${file%/*}
echo ${file%%/*}
echo ${file%.*}
echo ${file%%.*}

echo
echo ${file:0:5}
echo ${file:5:5}
echo
echo ${file/dir/path}
echo ${file//dir/path}
echo
echo ${#file}