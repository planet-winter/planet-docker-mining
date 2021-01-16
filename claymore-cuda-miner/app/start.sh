#!/usr/bin/env bash

# -ethi 8 ; default intensity, lower for OS rendering
# -erate ; submit hashrate
# -r 1 ; restart on failure
# -tt 1 ; only show temp and fan speed; dop not manage; not possible on linux with nvidia gpu
# -tstop 89 ; stop mining on this temp
# -fanmax 70 ;fan max speed; does not work on linux nvidia
# -fanmin 30;  fan min speed; does not work on linux nvidia
# -ttli ; reduce entire mining intensity automatically if GPU temperature is above value ; stop on -tt



list () {
    cd commands
    ls -1 | sed 's/.sh//g'
}

help () {
    echo "Command ${1} not found. Use one of:"
    list
}


if [ -z $1 ]; then
    help
elif [ "$1" = "list" ]; then
    list
else
    if [ -x commands/$1.sh ]; then
	commands/$1.sh
    else
	help
    fi
fi



