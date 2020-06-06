#!/bin/bash -x

echo "Welcome to employee wage  computation program on master branch"

isPartTime=1
isFulltime=2
empRatePerHr=20;
randomcheck=$((RANDOM % 2))

if [ $isFulltime -eq $randomcheck ]
then
      empHrs=8;
elif [ $isPartTime -eq $randomcheck ]
then
      empHrs=4;
else
      empHrs=0;
fi
salary=$(($empHrs*$empRatePerHr))
echo "salary=$salary"
