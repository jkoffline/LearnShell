#!/bin/bash

function c1() {
    cmd="rhc app create -p reahat"

    echo $OPTIND;
    while getopts :a:t:snb opt; do
        case $opt in
            a) cmd=$cmd" -a $OPTARG"
                echo $OPTIND;;
            t) cmd=$cmd" -t $OPTARG"
                echo $OPTIND;;
            s) cmd=$cmd" -s"
                echo $OPTIND;;
            n) cmd=$cmd" -n --no-dns"
                echo $OPTIND;;
            b) echo "This is b" ;;
            \?) echo "Invalid param"
                echo $OPTIND;;
        esac
    done
    echo $cmd

}


echo $OPTIND;

echo "Hello World"

c1 -b -a app1 -t perl-5.10 -s -n

echo $OPTIND
