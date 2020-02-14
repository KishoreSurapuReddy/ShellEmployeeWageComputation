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
daysOfMonth=20;
fullTimeMonthlyWage=$(( $daysOfMonth*$fullTimeDailyWage ));
partTimeMonthlyWage=$(( $daysOfMonth*$partTimeDailyWage ));
dailyWage=0;
noOfHours=0;
while [[ ($noOfHours -le 100) ]];
 do
   dailyWage=$(($dailyWage+($wagePerHour*$hoursForADayFullTime)));
   noOfHours=$(($noOfHours+8));
done
echo "dailyWage for 100 days is : "$dailyWage;
noOfDays=0;
wageForMonthFullTime=0;
wageForMonthPartTime=0;
presentDays=0;
function workingHoursOfEmployee() {
  while [ $noOfDays -le 20 ];
  do
    wageForMonthFullTime=$(($wageForMonthFullTime+$fullTimeDailyWage));
    wageForMonthPartTime=$(($wageForMonthPartTime+$partTimeDailyWage));
    noOfDays=$(($noOfDays+1));
    randomNumber=$(($RANDOM%2));
    if [ $randomNumber -eq 1 ];
     then
       presentDays=$(($presentDays+1));
    fi
  done
  workingHoursOfFullTimeEmployye=$(( $presentDays*8 ));
  workingHoursOfPartTimeEmployye=$(( $presentDays*4 ));
}
workingHoursOfEmployee
echo "employee monthly wage for 20 days is : "$wageForMonthFullTime;
echo "employee monthly wage for 20 days is : "$wageForMonthPartTime;
echo "working Hours Of Full Time Employye is: "$workingHoursOfFullTimeEmployye;
echo "working Hours Of Part Time Employye is: "$workingHoursOfPartTimeEmployye;
wageForHour=20;
noOfWorkingHours=8;
daysInMonth=20;
employeeDailyWage=$(($wageForHour*$noOfWorkingHours));
monthlyEmployeeWage=$(($employeeDailyWage*$daysInMonth));
echo "employee Daily Wage is : "$employeeDailyWage;
echo "employee monthly wage is : "$monthlyEmployeeWage;
monthlyDays=1;
while [ $monthlyDays -le 20 ];
  do
    echo "employee day : "$monthlyDays;
    dailywage=$(($monthlyDays*($noOfWorkingHours*$wageForHour)));
    echo "dailyWage is : "$dailywage;
    noOfDays=$(($noOfDays+1));
    echo "total wage for month is : "$wageForMonthFullTime;
  done