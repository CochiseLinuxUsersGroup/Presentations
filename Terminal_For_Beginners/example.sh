#!/bin/bash

# Setup colors
y=`tput setaf 3`
g=`tput setaf 2`
m=`tput setaf 5`
lb=`tput setaf 6`
w=`tput setaf 7`
re=`tput sgr0`
b=$(tput bold)
# End color setup

touch test.txt
clear

## The ls chunk ##
echo "adding some content to test.txt" > test.txt
echo "${b}${lb}##### THE LS COMMAND #####${re}"
echo "${lb}The ls command is used to list files in a directory."
echo "Here is an example of the ls command.${re}" 
read
echo ""
echo "${b}${y}'ls'"
ls
read
clear

echo "${re}${lb}Now I will use a couple common switches"
echo "The -a switch shows all files/folders.  It shows hidden files which are not shown without using the -a switch"
echo "Here is an example of the -a switch."
read
echo ""
echo "${b}${y}'ls -a'"
ls -a
read
clear

echo "${re}${lb}The -l switch is long list view.  I like this because it shows file permissions. (useful for troubleshooting permission issues)"
echo "Here is an example of the -l switch."
read
echo ""
echo "${b}${y}'ls -l'"
ls -l
read
clear

echo "${re}${lb}I normally use them both at the same time."
read
echo "${b}${y}'ls -la'"
ls -la
read
clear

echo "${re}${lb}You can find out more info and help with the following commands.${b}${y}'man ls' 'ls --help'${re}"
read
clear

## The pwd chuck ##

echo "${b}${lb}##### The PWD COMMAND #####"
echo "${re}${lb}The pwd command (print working directory) is a simple one."
echo "It prints the directory you are currently in."
read
echo "${b}${y}'pwd'"
pwd
read
clear

## The mkdir chunk ##

echo "${b}${lb}##### The MKDIR COMMAND #####${re}"
echo "${lb}The mkdir command creates a new directory (folder)"
echo "The syntax is: mkdir new_directory"
read
echo "${b}${y}'mkdir test_directory'"
mkdir test_directory
read
echo "${re}${lb}We can now use the ls command to verify our directory was created."
read
echo "${b}${y}'ls'"
ls
read
rm -r test_directory
clear

echo "${re}${lb}More info can be found by reading the man page. ${b}${y}'man mkdir'"
read
clear

## The CD chunk ##

echo "${b}${lb}##### The CD COMMAND #####${re}"
echo "${lb}The cd command is used to change directories"
echo "The syntax is: cd directory_name"
read
mkdir test_directory
echo "${b}${y}'cd test_directory'"
cd test_directory
read
echo "${re}${lb}We can now do ${re}${b}${y}'pwd' ${re}${lb}to check we are in the new directory."
read
echo "${re}${b}${y}'pwd'"
pwd
cd ..
read
clear

## The mv chunk ##

echo "${b}${lb}##### The MV COMMAND #####${re}"
echo "${lb}The mv command can move a file or rename a file."
echo "The syntax for the mv command is: mv filefrom fileto"
read
touch filea
echo "First lets use ls to view the files in the directory."
read
echo "${re}${b}${y}'ls'"
ls
read
echo "${re}${lb}Now lets rename filea as fileb (using mv)"
read
echo "${re}${b}${y}'mv filea fileb'"
mv filea fileb
read
echo "${re}${lb}Now to check it worked (with ls)."
read
echo "${re}${b}${y}'ls'"
ls
read
clear
echo "${re}${lb}Now lets move fileb to our test_directory."
read
echo "${re}${b}${y}mv fileb test_directory/ "
mv fileb test_directory
read
echo "${re}${lb}Now to ls test_directory to see if it worked."
read
echo "${re}${b}${y}'ls -a test_directory'"
ls -a test_directory
read
clear
echo "${re}${lb}You can learn more about the mv command with: ${re}${b}${y}'man mv'"
read
clear
## The cp chunk ##

echo "${b}${lb}##### The CP COMMAND #####"
echo "${re}${lb}The cp command makes a copy of a file or folder in another location."
echo "The syntax for cp is: cp filefrom fileto"
echo "Unlike mv, cp will end up have two copies of a file or folder."
read
clear
echo "First we will copy fileb from test_directory to our current working directory."
read
echo "${re}${b}${y}'cp test_directory/fileb fileb"
cp test_directory/fileb fileb
read
echo "${re}${lb}Now to check it is in our current directory and the test_directory with ls"
read
echo "${re}${b}${y}'ls -a'"
ls -a
echo ""
echo "'ls -a test_directory'"
ls -a test_directory
read
clear
echo "${re}${lb}Remember, if you are moving a directory (folder) you need to use the -r switch."
echo "Let see what that would look like."
read
echo "${re}${b}${y}'cp -r test_directory test_directory_copy"
cp -r test_directory test_directory_copy
read
clear
echo "${re}${lb}Now we can use ls to view that we make a copy of the directory."
read
echo "${re}${b}${y}'ls -a'"
ls -a
echo "'ls -a test_directory"
ls -a test_directory
echo "'ls -a test_directory_copy'"
ls -a test_directory_copy
read
clear
echo "${re}${lb}For more info about cp check out 'man cp'"
read
clear

## rm chunk ##
echo "${b}${lb}##### The RM COMMAND #####"
echo "${re}${lb}The rm command is used to remove files or directories."
echo "Syntax for the rm command is: rm filename"
read
clear
echo "Lets see what we have to remove with ls."
read
echo "${re}${b}${y}'ls -a'"
ls -a
read
echo "${re}${lb}Lets get rid of fileb."
read
echo "${re}${b}${y}'rm fileb'"
rm fileb
read
clear
echo "${re}${lb}Now lets get rid of the two directories we have made (test_directory and test_directory_copy)."
read
echo "${re}${b}${y}'rm -r test_directory test_directory_copy"
rm -r test_directory test_directory_copy
read
echo "${re}${lb}Now for a final ls to check everything is gone."
read
echo "${re}${b}${y}'ls -a'"
ls -a
read

echo "${re}${lb}Note that we had to use the -r for remove as well.  -r stands for recursive and is needed to remove directories."
echo "That is all, thanks for following along!"
