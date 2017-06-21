#!/bin/bash

echo "Karl.Lv@emc.com"

echo "A example for expect"

expect -c "
    set timeout 60;
    spawn scp -r expect_9.sh root@localhost:/root
    expect {
        \"yes/no\" {
            send \"yes\n\"
            expect \"assword:\"
            send \"password\n\"
        }
        \"password:\" {
            send \"ChangeMe\r\"
            interact
        }
    }

    exit 0
"



exit 0;

