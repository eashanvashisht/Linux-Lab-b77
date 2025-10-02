#!/bin/bash

while true; do
    echo "Mem use  $(date)" >> memory_log.txt
    free -m >> memory_log.txt
    echo "--------------------------" >> memory_log.txt
    sleep 5
done
