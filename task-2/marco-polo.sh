#!/bin/bash
logDir="/home/zxy/codes/missing-semester/task-2/history.log"
marco() {
    pwd > $logDir
    echo "save pwd $(pwd)"
}

polo() {
    cd "$(cat "$logDir")" || exit
    echo "change path to $(cat $logDir)"
}