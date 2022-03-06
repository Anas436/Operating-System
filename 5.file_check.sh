echo "Enter your filename"
read newfile1
if [ -f "$newfile1" ]
then
echo "File is found"
elif [ -d "$newfile1" ]
then
echo "Directory is found"
else
   echo "File or Directory is not found"
fi