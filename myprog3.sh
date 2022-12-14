counter=0
if [ -d /*/writable ] #checks if there is any file that named writable
then continue
else mkdir -p writable #if not, then it creates a folder named writable
fi
for file in *; do
if [[ -w $file && "$file" != "writable" ]] #checks the files whether they have write permission or not
then mv $file writable #moving files into writable folder
((counter++))
fi
done
echo "$counter files moved to writable directory."
