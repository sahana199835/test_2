function calculateWorkingHour() {
case $1 in
0)
workingHour=0;
;;
1)
WorkingHour=8;
;;
2)
WorkingHour=4;
;;
esac
echo $workingHour;
}
perHourSalary=20;
totalSalary=0;
totalWorkingHour=0;
day=1;
while [[ $day -le 20 && $totalWorkingHour -lt 40 ]]
do
wHour=$(calculateWorkingHour $((RANDOM%3)));
totalWorkingHour=$(($totalWorkingHour +$wHour));
if [ $totalWorkingHour -gt 40 ]
then
totalWorkingHour=$(($totalWorkingHour-$wHour));
break;
fi
salary=$(($perHourSalary*$wHour));
totalSalary=$(($totalSalary+$salary));
((day++));
done
echo "Employee has earned $totalSalary $ in a month (TotalworkingHour : $TotalWorkingHour)";
