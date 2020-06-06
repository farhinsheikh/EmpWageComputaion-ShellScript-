#!/bin/bash -x

echo "Welcome to employee wage  computation program on master branch"

isPartTime=1
isFulltime=2
maxHrsInMonth=10
empRatePerHr=20
numWorkingDays=20

totalEmpHr=0
totalWorkingDays=0
declare -A dailyWage
function getWorkHrs() {
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
      echo $empHrs
}

while [[ $totalEmpHr -lt $maxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
      ((totalWorkingDays++))
      empCheck=$((RANDOM % 3))
      empHrs="$( getWorkHrs $empCheck )"
      totalEmpHr=$(($totalEmpHr+$empHrs))
      dailyWage["Day""$totalWorkingDays"]=$(($empHrs*$empRatePerHr))

done

totalSalary=$(($totalEmpHr*$empRatePerHr))
echo ${dailyWage[@]}
echo ${!dailyWage[@]}
