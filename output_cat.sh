#!/usr/bin/sh
# March 10, 2016
# Karl.Lv@dextrys.com
# Karl.Lv@emc.com
# KarlLv@126.com
# Suzhou, Jiangsu

path="$1"

if [ ! -d "$path" ]; then
cat<<EOF
*************************************************
ERROR
The destination directory not exists,
make sure below directory you specified is correct:
${path}
Then re-run this scipt.
*************************************************
EOF
fi
