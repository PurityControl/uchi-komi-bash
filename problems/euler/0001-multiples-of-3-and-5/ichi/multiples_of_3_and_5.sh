#!/bin/bash

limit=$1
sum=0

for i in $(seq 1 $(($limit-1)))
do
  if [ $((i%5)) -eq 0 -o $((i%3)) -eq 0 ]
  then
    sum=$((sum+i))
  fi
done

echo -n $sum
