#!/bin/bash

echo "Karl.Lv@emc.com"

echo "A example for expect"

mypassword="v3r0n@"
echo $mypassword

expect -c "
    spawn ssh root@10.0.104.21
    expect {
        \"yes/no\" {
            send \"yes\n\"
            expect \"assword:\"
            send \"$mypassword\n\"
        }
        \"password:\" {
            send \"$mypassword\r\"
        }
        \"Password: \" {send \"$mypassword\n\"}
        default {
            puts \"Response not expected\"
            exit 2
        }
    }
     
    send "date\\n"
    send "ifconfig\\n"
    expect eof
    send "date\\n"
"
exit 0;
