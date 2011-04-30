#!/bin/bash
vol=$(amixer get Master | awk -F'[]%[]' '/%/ { print $2 }' | head -n 1)
state=$(amixer get Master | awk -F'[]%[]' '/%/ { print $5 }' | head -n 1)

if [ $state == "on" ]; then
    echo "Vol: <fc=green>$vol</fc>%"
else
    echo "Vol: $vol%"
fi

exit 0
