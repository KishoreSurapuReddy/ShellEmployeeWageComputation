#!/bin/bash -x
echo "Welcome to Employee Wage Computation"
random=$(($RANDOM%2))
if [ $random -eq 1 ];
 then
   echo "Employee is present "
fi