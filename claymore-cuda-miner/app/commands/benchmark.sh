#!/usr/bin/env bash

# -ethi 8 ; default intensity, lower for OS rendering

exec ./claymore/ethdcrminer64 -bench -mode 1 -ethi ${INTENSITY}
