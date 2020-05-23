#!/bin/sh
 
var=`find . -type f | shuf -n1`
echo "$var"
new=`stat -c "%z" "$var"`
now=$(date)
sudo date --set="$new"
touch $1 -r "$var"
sudo date --set="$now"
