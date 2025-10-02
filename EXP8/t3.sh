#!/bin/bash

echo "Number of processes for user $USER:"
ps -u $USER | wc -l
