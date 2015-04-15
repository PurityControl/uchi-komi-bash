#!/bin/bash

lower=$1
upper=$2
largest_palindrome=0

for ((i=$lower;i<=$upper;i++))
do
  for ((j=$lower;j<=$upper;j++))
  do
    current=$((i*j))
    len=${#current}
    reverse=""
    for (( i=$len-1; i>=0; i-- ))
    do
      reverse="$reverse${current:$i:1}"
    done
    #if [ "$current" = $(echo "$current" | rev) ]
    if [ "$current" = "$reverse" ]
    then
      if [ $current -gt $largest_palindrome ]
      then
        largest_palindrome=$current
      fi
    fi
  done
done

echo -n $largest_palindrome
