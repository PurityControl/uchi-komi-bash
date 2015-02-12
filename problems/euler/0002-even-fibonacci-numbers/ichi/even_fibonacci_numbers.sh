#!/bin/bash

limit=$1
first=1
second=2
fibs=()

function total {
  sum=0
  for number in ${fibs[@]}
  do
    if [ $(($number % 2)) -eq 0 ]
    then
      sum=$(($sum + $number))
    fi
  done
  return $sum
}

if [ $first -lt $limit ]
then
  fibs+=($first)
fi

if [ $second -lt $limit ]
then
  fibs+=($second)
fi

while true
do
  swap=$first
  first=$second
  second=$(($first + $swap))
  if [ $second -lt $limit ]
  then
    fibs+=($second)
  else
    total
    echo $sum
    break;
  fi
done

