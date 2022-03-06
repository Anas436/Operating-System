clear 
echo ----------------------------------- 
echo '\tStudent Mark List' 
echo ----------------------------------- 
echo Enter the Student name 
read name 
echo Enter the Register number 
read rno 
echo Enter the Unix 
read m1 
echo Enter the VB.Net 
read m2 
echo Enter the PHP 
read m3  
tot=$(expr $m1 + $m2 + $m3) 
avg=$(expr $tot / 3) 
echo ----------------------------------- 
echo ' Student Mark List' 
echo ----------------------------------- 
echo "Student Name    : $name" 
echo "Register Number : $rno" 
echo "Mark1           : $m1" 
echo "Mark2           : $m2" 
echo "Mark3           : $m3"  
echo "Total           : $tot" 
echo "Average         : $avg" 
if [ $m1 -ge 40 ] && [ $m2 -ge 40 ] && [ $m3 -ge 40 ] 
then 
 echo "Result          : Pass" 
  
 if [ $avg -gt 70 ] 
 then 
        echo "Grade           : Distiction" 
 elif [ $avg -gt 60 -a $avg -le 70 ] 
 then 
         echo "Grade           : First Class" 
 elif [ $avg -gt 50 -a $avg -le 60 ] 
 then 
         echo "Grade           : Second Class" 
 elif [ $avg -ge 40 -a $avg -le 50 ] 
 then 
         echo "Grade           : Third Class" 
 fi 
else 
 echo "Result          : Fail" 
fi 
echo ----------------------------------- 
