#!/usr/bin/env bash
count=0
echo "$(date)" > count_err.log

while true
do
    if ! ./buggy.sh &>> count_err.log; then
        cat count_err.log
        echo "failed after $count times"
        break
    fi
    ((count++))
done