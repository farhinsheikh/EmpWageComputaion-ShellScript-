#!/bin/bash -x

echo "Welcome to employee wage  computation program on master branch"

isPartTime=1
isFulltime=2
empRatePerHr=20
numWorkingDays=20
for (( day=1; day<=$numWorkingDays; day++ ))
do
   empCheck=$((RANDOM % 2))
      case $empCheck in
         $isFulltime)
               empHrs=8
               ;;
         $isPartTime)
               empHrs=4
               ;;
         *)
         empHrs=0
               ;;
      esac
      salary=$(($empHrs*$empRatePerHr))
      totalSalary=$(($totalSalary+$salary))
done

