#! /bin/bash

# ECHO COMMAND

echo Hello World!

# VARIABLES
# Uppercase by convention
# Letters, numbers, underscores
NAME="Brad"
echo "My name is $NAME"

# USER INPUT
read -p "Enter your name: " NAME
echo "Hello $NAME, nice to meet you!"

# SIMPLE IF STATEMENT
if ["$NAME" == "Ernest"]
then
    echo "Your name is Ernest"
fi

# IF-ELSE
if ["$NAME" == "Ernest"]
then
    echo "Your name is Ernest"
else
    echo "Your name is NOT Ernest"
fi

# ELSE-IF (elif)
if ["$NAME" == "Ernest"]
then
    echo "Your name is Ernest"
elif ["$NAME" == "Brad"]
then
    echo "Your name is Brad"
else
    echo "Your name is NOT Ernest or Brad"
fi

# COMPARISON
NUM1=3
NUM2=5
if [ "$NUM1" -gt "$NUM2" ]
then
    echo "$NUM1 is greater than $NUM2"
else
    echo "$NUM1 is less than $NUM2"
fi

###########
# val1 -eq val2 	Returns true if the values are equal
# val1 -ne val2 	Returns true if the values are not equal
# val1 -gt val2 	Returns true if val1 is greater than val2
# val1 -ge val2 	Returns true if val1 is greater than or equal to val2
# val1 -lt val2 	Returns true if val1 is less than val2
# val1 -le val2 	Returns true if val1 is less than or equal to val2
###########

# FILE CONDITIONS
FILE="test.txt"
if [ -f "$FILE" ]
then
    echo "$FILE is a file"
else
    echo "$FILE is NOT a file"
fi
###########
# -d file 	Returns true if the file is a directory
# -e file 	Returns true if the file or folder exists (note that this is not particularly portable, thus -f is generally used)
# -f file 	Returns true if the provided string is a file
# -g file 	Returns true if the group id is set on a file
# -r file 	Returns true if the file is readable
# -s file 	Returns true if the file has a non-zero size
# -u 		Returns true if the user id is set on a file
# -w 		Returns true if the file is writable
# -x 		Returns true if the file is an executable
###########

# CASE STATEMENT
read -p "Are you 21 or over? Y/N " ANSWER #read via prompt
case "$ANSWER" in
    [Yy] | [Yy][Ee][Ss])
        echo "You can have a beer :)"
        ;;
    [Nn] | [Nn][Oo])
        echo "Sorry, no drinking"
        ;;
    *)
        echo "Please enter y/yes or n/no"
        ;;
esac

# SIMPLE FOR LOOP
NAMES="Brad Kevin Alice Mark"
for NAME in $NAMES
    echo "Hello $NAME"
done

# FOR LOOP TO RENAME FILES
FILES=$(ls *.txt)
NEW="new"
for FILE in $FILES
    echo "Renaming $FILE to new-$FILE"
    mv $FILE $NEW-$FILE
done

# WHILE LOOP - READ THROUGH A FILE LINE BY LINE
LINE=1
while read -r CURRENT_LINE
    echo "$LINE: $CURRENT_LINE"
    ((LINE++))
done < "./new-1.txt"

# FUNCTION
function sayHello() {
    echo "Hello World"
}

# FUNCTION WITH PARAMS
function greet() {
    echo "Hello, I am $1 and I am $2"
}
greet "Ernest" "26"

# CREATE FOLDER AND WRITE TO A FILE
mkdir hello
touch "hello/world.txt"
echo "Hello World" >> "hello/world.txt"
echo "Created hello/world.txt"

# CREATE MULTIPLE FOLDERS
mkdir -p hello/world/test

# REMOVE FILES
rm hello/world.txt

# REMOVE FOLDERS
rm -r hello/world

# COPY FILES
cp hello/world.txt hello/world-copy.txt

# MOVE FILES
mv hello/world.txt hello/hello.txt

# FIND FILES
find . -name "hello.txt" -type f

# GREP - Print lines matching a pattern
grep -rnw '/path/to/somewhere/' -e "pattern"

# PIPING - Send output to another command
ls -l | grep "^d"

# OUTPUT REDIRECTION
# > - Overwrite
# >> - Append
# 2> - Error
# &> - All
# < - Input

# STDOUT
echo "Hello World" > hello.txt

# STDERR
echo "Hello World" 2> error.txt

# STDOUT AND STDERR
echo "Hello World" &> hello.txt

# STDIN
cat < hello.txt

# CHECK EXIT STATUS
echo $? # 0 = success, 1 = failure

# CREATE ALIAS
alias hello="echo Hello World"

# UNSET ALIAS
unalias hello

# CREATE FUNCTION
function hello() {
    echo "Hello World"
}

# EXPORT FUNCTION
export -f hello

# CREATE VARIABLE
NAME="Ernest"

# EXPORT VARIABLE
export NAME

# RUN SCRIPT
./hello.sh

# RUN SCRIPT WITH BASH
bash hello.sh

# RUN SCRIPT WITH SH
sh hello.sh

# RUN SCRIPT WITH ZSH
zsh hello.sh

# RUN SCRIPT WITH SHELL
shell hello.sh

# RUN SCRIPT WITH KSH
ksh hello.sh

# RUN SCRIPT WITH CSH
csh hello.sh

# RUN SCRIPT WITH TCSH
tcsh hello.sh

# RUN SCRIPT WITH FISH
fish hello.sh

# RUN SCRIPT WITH DASH
dash hello.sh

# RUN SCRIPT WITH ASH
ash hello.sh
