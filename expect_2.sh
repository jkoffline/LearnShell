#!/usr/bin/expect -f

# 21 June, 2017
# Karl.Lv@outlook.coom

set ipaddress [lindex $argv 0]
set username [lindex $argv 1]
set password [lindex $argv 2]

spawn sftp $ipaddress
#expect "*Name*" 
#send "$username\n" 
expect "assword:" 
send "$password\n"
expect "*ok*ftp>*"
send "get teste\n"
expect "*ftp>"
send "quit\n"
expect eof
