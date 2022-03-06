
# function to display a line of asterices
function line(){
	echo "*******************************************************"
}

echo "Your Username : "
read USER
line # call function
 
echo "Current date and time : $(date)"
line
 
echo "Currently logged on users: $USER"
who
line