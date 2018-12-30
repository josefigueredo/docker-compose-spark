#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

usage() {
    echo "Uso: ./start.sh [slave-num]"
    echo "el parametro [slave-num] es opcional, default 3"
}

run() {
    cd $DIR && docker-compose up -d --scale slave=$1 master slave
    cd $DIR && docker-compose run driver
}

if [ "$#" -eq "0" ]; then
    run 3;
elif [ "$#" -eq "1" ] && [ "$1" -ge "1" ] 2>/dev/null; then
    run $1;
else
    usage;
fi