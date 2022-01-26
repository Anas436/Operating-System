echo "Enter the Directory name : "
read dir
if [ -d $dir ]
then
cd $dir
ls > f
exec < f
while read line
do
if [ -f $line ]
then
if [ -r $line -a -w $line -a -x $line ]
then
echo "$line has all Permissions"
else
echo "files Not having all Permissions"
fi
fi
done
fi
