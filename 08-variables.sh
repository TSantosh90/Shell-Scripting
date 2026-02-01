#!/bin/bash

NUM1=100
NUM2=santosh

SUM=$(($NUM1+$NUM2))

echo "total is : $SUM"


##### ARRAY ######

FRUITS=("APPLE" "BANANA" "GUAVA")

echo "Fruits are : ${FRUITS[@]}"
echo "first fruit is : ${FRUITS[0]}"
echo "Second fruit is : ${FRUITS[1]}"
echo "Third fruit is : ${FRUITS[2]}"




