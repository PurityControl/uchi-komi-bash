#!/bin/bash

lower=$1
upper=$2
largest_palindrome=0

for ((i=$lower;i<=$upper;i++))
do
  for ((j=$lower;j<=$upper;j++))
  do
    current=$((i*j))
    # reverse the string
    len=${#current}
    reverse=""
    for (( k=$len-1; k>=0; k-- ))
    do
      reverse="$reverse${current:$k:1}"
    done
    # check if is a palindrome
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

