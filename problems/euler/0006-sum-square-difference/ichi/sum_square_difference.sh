#!/bin/bash

limit=$1
sum_squares=0
square_sums=0

for (( i=1; $i<=$limit; i++ ))
  do
  sum_squares=$(( $sum_squares+($i*$i) ))
  square_sums=$(( $square_sums+$i ))
done
square_sums=$(($square_sums*$square_sums))

echo -n $(($square_sums-$sum_squares))

