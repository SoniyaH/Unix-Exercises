#!/bin/bash
l=`grep status_code qyou.log|cut -f 15- -d " ">failed_status.txt`
m=`grep status_code qyou.log|cut -f 7 -d " ">failed_api_calls.txt`
n=`grep -o "?.*" failed_api_calls.txt >failed_parameters.txt`
a=`cat failed_status.txt`
b=`cat failed_api_calls.txt`
c=`cat failed_parameters.txt`
echo "FAILED_STATUS:"
echo "$a"
echo "FAILED_API_CALLS:"
echo "$b"
echo "FAILED_PARAMETERS:"
echo "$c"
