
emp=1
while [ $emp -le 10 ]
do
echo "enter working hours : "
read hours
if[ $hours -gt 40 ]
then
otpay=`expr \($hours -40 \) \* 12`
echo over time pay = Rs. $otpay
else
echo "No over Time Pay"
fi
emp=`expr $emp+1`
done


