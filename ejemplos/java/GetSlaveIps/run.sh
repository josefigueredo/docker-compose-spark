#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

spark-submit \
    --class GetSlaveIpsApp \
    --master spark://172.17.0.1:7077 \
    $DIR/GetSlaveIpsApp.jar