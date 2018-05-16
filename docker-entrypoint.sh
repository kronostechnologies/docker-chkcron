#!/bin/sh
set -e

OUT=0
if [ -d "$1" ]; then
    for file in $1**/*; do
        chkcrontab "$file"
        FOUT=$?
        OUT=$(($OUT + $FOUT))
    done
else
    chkcrontab "$1"
    OUT=$?
fi

exit $OUT
