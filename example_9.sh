#!/bin/bash
#
# August 15, 2018
# Karl.Lv@outlook.com
#

A=
echo $A
echo "========"
unset A
echo $A
echo "========"

str=
var=${str=expr}
echo $var
echo "========"

echo $str
echo "========"

unset str
var=${str=expr}
echo $var
echo "========"
echo $str
echo "========"
