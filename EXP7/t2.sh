#!/bin/bash

read -p "Enter the PID of the process: " pid

echo "Details for PID $pid:"
ps -p "$pid" -o pid,ppid,state,comm,%mem,%cpu

