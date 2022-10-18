#!/bin/bash

total=0
a=0
b=1
l=12

echo 'esta es la sucecion de fibonacci:'

for i in `seq 1 $l`
do
echo -n "$a, "
fn=$((a+b))
total=$fn
a=$b
b=$fn
done
echo
echo 'la suma de la sucecion es:' $((total-1))
