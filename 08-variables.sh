#!/bin/bash

NUM1=100
NUM2=santosh

SUM=$(($NUM1+$NUM2))

echo "total is : $SUM"


##### ARRAY ######

FRUITS={"APPLE","BANANA","GUAVA"}

echo "Fruits are : ${FRUITS[@]}"
echo "Fruits are : ${FRUITS[0]}"
echo "Fruits are : ${FRUITS[1]}"
echo "Fruits are : ${FRUITS[2]}"




