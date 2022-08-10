#! /bin/bash

echo "Creating File for $1"
touch BuildNewFile.txt
ls

echo "Deleting File"
rm  BuildNewFile.txt

echo "Make Folder"

if [[ -d JIM ]]
then
    echo "JIM exists on your filesystem."
	rm -rf JIM
fi

mkdir JIM
touch BuildNewFile1.txt
ls -a

echo "Move file to folder"
mv BuildNewFile1.txt JIM
ls

echo "Print out the current location"
pwd

echo "Prints out the current user"
whoami


echo "Adds a line of text to an existing file"
echo "Start build" > build.log
cat build.log
echo
echo "Started C# build" >> build.log
cat build.log

echo "prints out all of the files in a repo"
git log --pretty=format: --name-status | cut -f2- | sort -u


# - pushes a file to a different repo