#!/usr/bin/expect

set timeout 30

spawn ssh -l root 10.0.105.111
expect "password:"
send "ChangeMe\n"
send "exit\n"
#interact

expect eof
exit 0;
