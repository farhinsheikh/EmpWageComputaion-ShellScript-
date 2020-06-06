#!/bin/bash -x

echo "Welcome to employee wage  computation program on master branch"

isPresent=1
randomcheck=$((RANDOM % 2))
if [ $isPresent -eq $randomcheck ]
then
	echo "Employee is present"
	empRatePerHr=20;
	empHrs=8;
	salary=$(($empHrs*$empRatePerHr))
	echo "salary=$salary"
else
	echo "Employee is absent"
	echo "salary=0"
fi
