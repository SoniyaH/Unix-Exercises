#!/bin/bash
l=`grep -o "RuntimeError:.*" sidekiq.log | cut -d " " -f 2,3 | sort -u -t " " -n -k 2  > sidekiqError.txt`
m=`cat sidekiqError.txt`
echo "$m"
