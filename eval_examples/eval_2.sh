#!/bin/bash
#
# August 14, 2018
# Karl.Lv@outlook.com
#


evalit() {
    if [ $cnt = 1 ] ; then
        eval $@
        return
    else
        let cnt="cnt - 1"
        evalit $@
    fi
    eval $@
}

cnt=$1

echo $cnt | egrep "^[1-9][0-9]*$" > /dev/null

if [ $? -eq 0 ]; then
    echo "========"
    shift
    evalit $@
else
    echo "ERROR! Check your input"
fi