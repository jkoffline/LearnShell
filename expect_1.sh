#!/bin/bash

echo "Karl.Lv@emc.com"

echo "A example for expect"

mypassword="v3r0n@"
mylog=mylog
echo $mypassword

expect<<-END
    spawn ssh root@10.0.104.21
    expect "assword:"
    send "$mypassword\n"
    expect "#"
    send "ls -la\n"
    send "date\n"
    send "date > $mylog\n"
    expect eof
END

