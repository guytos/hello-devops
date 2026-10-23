#!/bin/bash

HOSTS="8.8.8.8 1.1.1.1 192.168.10.254"
TS=$(date '+%Y-%m-%d %H:%M:%S')

for HOST in $HOSTS; do
    if ping -c 1 -W 2 "$HOST" > /dev/null 2>&1; then
        echo "$TS OK:   $HOST доступен"
    else
        echo "$TS FAIL: $HOST не отвечает"
    fi
done
