clear
echo "Enter the length of the rectangle:"
read length
echo "Enter the breadth of the rectangle:"
read breadth

area=`expr $length \* $breadth`
echo "Area of Rectangle = $area"
