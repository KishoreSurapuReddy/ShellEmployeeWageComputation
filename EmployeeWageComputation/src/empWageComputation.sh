#!/bin/bash -x
echo "Welcome to Employee Wage Computation"
random=$(($RANDOM%2))
if [ $random -eq 1 ];
 then
   echo "Employee is present "
fi
fullTimeDailyWage=0;
partTimeDailyWage=0;
wagePerHour=20;
hoursForADayFullTime=8;
hoursForADayPartTime=4;
fullTimeDailyWage=$(( $wagePerHour*$hoursForADayFullTime ));
partTimeDailyWage=$(( $wagePerHour*$hoursForADayPartTime ));
echo "enter the choice 1.FullTimeEmployyeWage 2.PartTimeEmployeeWage"
read choice
case $choice in
1)
  echo "employeeDailyWage is : $fullTimeDailyWage"
  ;;
2)
  echo "partTimeEmployeeWage is :"$partTimeDailyWage
  ;;
*)
  echo "enter correct details"
  ;;
esac