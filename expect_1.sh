#!/bin/bash

# Karl.Lv@outlook.com

echo "Karl.Lv@outlook.com"

echo "A example for expect"

mypassword="ChangeMe"
mylog=mylog
echo $mypassword

expect<<-END
    spawn ssh root@localhost
    expect "assword:"
    send "$mypassword\n"
    expect "#"
    send "ls -la\n"
    send "date\n"
    send "date > $mylog\n"
    expect eof
END

