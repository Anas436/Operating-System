echo "---------------------------------------------------"

echo -e "\t Count Files in Directory & Sub-Directories"

echo "---------------------------------------------------"

# path of the directory in repl. replace this with your target

# directory location

dpath="/home/runner/bashdemo/test"

# test this is directory or not using -d option in if

if [ -d $dpath ]

then

echo "$dpath is directory."

cf=$(find $dpath -type f | wc -l)

echo "Total number of files: $cf"

else

echo "$dpath is not a directory"

fi