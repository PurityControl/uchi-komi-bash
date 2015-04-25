#!/bin/bash

limit=$1
factor=$limit

while true; do
  common_multiple="true"
  for (( i=1; $i<=$limit; i++ ))
  do
    if [  $(($factor % i))  != 0 ]
    then
      common_multiple="false"
      break
    fi
  done
  if [ $common_multiple == "true" ]
  then
    echo -n $factor
    exit
  fi
  factor=$(($factor + $limit))
done


echo -n $largest_palindrome

