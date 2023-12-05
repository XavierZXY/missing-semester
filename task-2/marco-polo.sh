#!/bin/bash
logDir="/home/zxy/codes/missing-semester/task-2/history.log"
marco() {
    echo "$(pwd)" > $logDir
    echo "save pwd $(pwd)"
}

polo() {
    cd $(cat $logDir)
    echo "change path to $(cat $logDir)"
}