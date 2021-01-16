#!/usr/bin/env bash

# -ethi 8 ; default intensity, lower for OS rendering
# -erate ; submit hashrate
# -r 1 ; restart on failure
# -tt 1 ; only show temp and fan speed; dop not manage; not possible on linux with nvidia gpu
# -tstop 89 ; stop mining on this temp
# -fanmax 70 ;fan max speed; does not work on linux nvidia
# -fanmin 30;  fan min speed; does not work on linux nvidia
# -ttli ; reduce entire mining intensity automatically if GPU temperature is above value ; stop on -tt

POOL="eu-eth.hiveon.net:444"

exec ./claymore/ethdcrminer64 -epool ${POOL} -ewal ${WALLET} -mode 1 -dbg -1 -mport -${PORT} -etha 0 -ethi ${INTENSITY} -erate 1 -r 0 -retrydelay 1 -ftime 55 -tt 1 -tstop 95 -ttli 93 -tstart 55
