
read -p "Enter Degree Celsius Temperature : " celsius

fahrenheit=`echo "scale=4; $celsius*1.8 + 32" | bc`
echo "$celsius is equal to $fahrenheit degree fahrenheit."

