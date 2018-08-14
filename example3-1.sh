#!/bin/bash
#
# KarlLv@126.com
# 14 March, 2016
# Reaing lines in /etc/fstab
# Advanced Bash-Scripting Guide

File=/etc/fstab

{
read line1
read line2
read line3
read line4
} < $File

echo "Third line in $File is:"
echo "$line3"
echo
echo "Fourth line in $File is:"
echo "$line4"

exit 0
