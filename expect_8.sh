#!/usr/bin/expect
# Change a login shell to tcsh

set user [lindex $argv 0]

spawn date

expect -re "\:..:"

#send_user "$expect_out(buffer)"
send_user "$expect_out(buffer)" 

set expect_out(buffer) truce

send_user "$expect_out(0,string)\n"
expect eof
exit 0;
