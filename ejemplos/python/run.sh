#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

rm -r ./output

spark-submit \
    --class GetSlaveIpsApp \
    --master spark://master:7077 \
    --files $DIR/input.txt \
    --py-files="$DIR/wordcount.py" \
    $DIR/wordcount.py \
    $DIR/input.txt \
    --verbose

#spark-submit --master spark://master:7077 --verbose --files input.txt --py-files="wordcount.py" wordcount.py input.txt
