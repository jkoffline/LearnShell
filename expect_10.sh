#!/bin/bash

# 21 June, 2017
# Karl.Lv@outlook.com

echo "karl.lv@outlook.com"

echo "A example for expect"

mypassword="ChangeMe"
echo $mypassword

expect -c "
    spawn ssh root@localhost
    expect {
        \"yes/no\" {
            send \"yes\n\"
            expect \"assword:\"
            send \"$mypassword\n\"
        }
        \"password:\" {
            send \"$mypassword\r\"
            #send "whoami\\n"
        }
        \"Password: \" {
            send \"$mypassword\n\"
        }
        default {
            puts \"Response not expected\"
            exit 2
        }
        
    }

    expect eof
    #send "whoami\\n"
    
    #set timeout 80
    #exit 0
"



exit 0;
