#!/usr/bin/expect -f
# Change a login shell to tcsh

set user [lindex $argv 0]

spawn chsh $user

expect "Password"
send "password\n"

expect -re "\[.*]:"

#send_user "$expect_out(buffer)"
send_user "$expect_out(buffer)"
exit 0;

if {$expect_out(0, string) != "/bin/tcsh"} {
send "/bin/tcsh" }

send ""

expect eof
exit 0;
