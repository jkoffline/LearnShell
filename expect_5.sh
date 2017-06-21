#!/usr/bin/expect

set timeout 30

spawn ssh -l root localhost
expect "password:"
send "ChangeMe\n"
send "exit\n"
#interact

expect eof
exit 0;
