#!/bin/bash

sleep 60 &
jobs
fg %1
kill %1
