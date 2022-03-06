
echo "Enter a Number1 : "
read num
echo "Enter a Number2 : "
read num1

if [ $num -lt 0 -a $num1 -lt 0 ]
then
    echo "Negative"
elif [ $num -gt 0 -a $num1 -gt 0 ]
then
    echo "Positive"
else
    echo "Neither Positive Nor Negative"

fi

if [ $num -gt 0 -a $num1 -gt 0 ]
then
ans=$((num / num1))

echo "Dividing small number with bigger number : $ans"

fi