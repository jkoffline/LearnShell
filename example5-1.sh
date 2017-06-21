#!/bin/bash
# KarlLv@126.com
# 15 March, 2016
# weirdvars.sh: Echoing weird variables
# Advanced Bash-Script Guide

echo

var="'(]\\$\""

echo $var
echo "$var"

echo

IFS='\'
echo $var
echo "$var"
