#!/bin/bash

# 21 June, 2017


echo "A example for expect"

mypassword="ChangeMe"

echo $mypassword

expect<<-END
    spawn ssh root@localhost
    expect "password:"
    send "$mypassword\n"
    expect "#"
    send "ls -la\n"
    expect eof
END

