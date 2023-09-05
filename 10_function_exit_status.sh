function backup_file () {
if [ -f $1 ]
then
BACK="/home/ranjith/$(basename ${1}).$(date +%F).$$"
echo "Backing up $1 to ${BACK}"
cp $1 $BACK
fi
}
backup_file /home/ranjith/test/test.txt
if [ $? -eq 0 ]
then
echo "Backup succeeded!"
fi
###################################################################


function backup_file () {
if [ -f $1 ]
then
local BACK="/home/ranjith/$(basename ${1}).$(date +%F).$$"
echo "Backing up $1 to ${BACK}"
# The exit status of the function will be the exit status of the cp command.
cp $1 $BACK
else
# The file does not exist.
return 1
fi
}

backup_file /home/ranjith/test/test.txt
# Make a decision based on the exit status.
if [ $? -eq 0 ]
then
echo "Backup succeeded!"
else
echo "Backup failed!"
# About the script and return a non-zero exit status.
exit 1
fi

##############################################################################
