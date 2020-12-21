# check if linked filed is a symbolic link
echo -n "Enter file name: "
read filename
if [[ -L "$filename" ]]
then
	echo "$filename is a symbolic link"
	ofile=`ls -l $filename |awk '{print $11}'`
	echo "The original file for $filename is $ofile"
	fsize=`ls -l $ofile |awk '{print $5}'`
	echo "The size of $ofile is $fsize"
	fown=`ls -l $ofile |awk '{print $3}'`
	echo "The $ofile is owned by $fown"
else
	echo "$filename is not a symbolic link"
fi
