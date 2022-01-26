
clear
echo -n "Enter a year : "
read checker
if [ `expr $checker % 4` -eq 0 ]
then
echo "$checker is Leap year"
else
echo "$checker is not Leap year"
fi
