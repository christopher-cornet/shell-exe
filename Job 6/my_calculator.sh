#!/bin/bash
n1=$1
o1=$2
n2=$3
sum=$(($1*$3))
sum2=$(($1+$3))
sum3=$(($1-$3))
sum4=$(($1/$3))
if [ $o1 == * ];
then
echo $sum
fi
if [ $o1 == + ];
then
echo $sum2
fi
if [ $o1 == - ];
then
echo $sum3
fi
if [ $o1 == / ];
then
echo $sum4
fi
