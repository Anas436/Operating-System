
hour=$(date --date "now" '+ %H')
echo $hour
if [ $hour -gt 6 -a $hour -le 12 ]
then 
echo Good Morning.
elif [ $hour -gt 12 -a $hour -le 16 ]
then 
echo  Good Afternoon.
elif [ $hour -gt 16 -a $hour -le 20 ]
then 
echo Good Evening.
else
echo Good Night.
fi
curl wttr.in/dhaka