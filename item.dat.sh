

#Take the lower and the upper rate from the user
echo "Enter the minimum rate:"
read minimum
echo "Enter the maximum rate:"
read maximum

#Check the taken rate are valid
if [[ $maximum < $minimum ]]; then
    echo "Maximum rate can't be lower than minimum rate"
    exit 1
fi
if [[ $minimum < 100 ]]; then
    echo "Rate is to Small"
    exit 1
fi

if [[ $maximum < 10000 ]]; then
    echo "Rate is to Big"
    exit 1
fi

#Find out the difference between the rate
diff=$(($maximum-$minimum))

#Check the difference of qty_sold
if [[ $diff == 0 ]]; then
    echo "The range of qty_sold must be more than 0"
    exit 1
fi

#Generate the item code
randomNumber=$(($minimum + $RANDOM % $maximum))
#Print the generated number
echo "The generated item_code is: $randomNumber"