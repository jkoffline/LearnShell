#!/bin/bash
# Karl.Lv@dextrys.com
# Karl.Lv@126.com
# 24 March, 2016
# The usage of declare

foo ()
{
    declare F00="bar"
}


bar ()
{
    foo
    echo $F00
}

bar