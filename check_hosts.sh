#!/bin/bash

HOSTS="8.8.8.8 1.1.1.1 192.168.10.254"

for HOST in $HOSTS; do
    if ping -c 1 -W 2 "$HOST" > /dev/null 2>&1; then
        echo "OK:   $HOST доступен"
    else
        echo "FAIL: $HOST не отвечает"
    fi
done
