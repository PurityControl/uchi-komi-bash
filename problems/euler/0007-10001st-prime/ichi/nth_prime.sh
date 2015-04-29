#!/bin/bash

limit=$1

count=2
primes=()

while true
do
  if [ $(factor $count | cut -d " " -f 2) -eq $count ]
  then
    primes+=($count)
  fi
  count=$((count+1))
  if [ ${#primes[@]} -ge $limit ]
  then
    echo -n ${primes[$((limit-1))]}
    exit
  fi
done


