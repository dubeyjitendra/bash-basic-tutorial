#!/bin/bash

####################### Bash Conditionals
#In the last section, we covered some of the most popular conditional expressions. 
#We can now use them with standard conditional statements like if, if-else and switch case statements.

## If statement
# The format of an if statement in Bash is as follows:

# if [[ some_test ]]
# then
# <commands>
# fi


# if [ expression ];  
# then  
# statements  
# fi 


read -p "what is your name ? " name

if [ ${name} == "jitu" ]; then
    echo "enter the name!"
fi

# if [ "myfile" == "yourfile" ];  
# then  
# echo "false condition"  
# fi  

# Explanation:

    # if [ condition ]; then: This line starts the if statement, where condition is the expression that is evaluated. If the condition is true, the code inside the then block is executed.
    # # code to be executed if the condition is true: This is the code block that is executed if the condition specified in the if statement is true.
    # fi: This marks the end of the if statement.

## syntax
# if [ condition ];  
# then  
#     <if block commands>  
# else  
#     <else block commands>  
# fi  


if [ ${name} == 'jitu' ]; then
    echo "jitu"
else
    echo "no"
fi

##################### CHeck the even and odd number

# This script prompts the user to enter a number, checks if it’s even, and prints a message accordingly.
# Prompt the user to enter a number

Explanation:

    #!/usr/bin/bash: This is a shebang line that specifies the path to the Bash interpreter. It indicates that the script should be executed using Bash.
    # echo -n "Enter Number: ": This line prints the prompt “Enter Number: ” without a newline character (-n option). It waits for the user to enter a number.
    # read x: Reads the user input and assigns it to the variable x.
    # if [ $((x % 2)) == 0 ]; then: This line checks if the remainder of the division of the entered number (x) by 2 is equal to 0. If true, it means the number is even.
    # echo "Number is Even": If the condition in the if statement is true, this line prints “Number is Even” to the console.


echo -n “Enter Number: “
read x


if [ $((x % 2)) == 0 ]; then
echo “Number is Even”
fi

################################################### Check if the entered number is even
# If you have multiple conditions and scenarios, then can use elif statement with if and else statements.

# syntax
    # if [ condition ];  
    # then  
    # <commands>  
    # elif [ condition ];  
    # then  
    # <commands>  
    # else  
    # <commands>  
    # fi  


read -p "Enter a number: " num
if [[ $num -gt 0 ]] ; then
echo "The number is positive"
elif [[ $num -lt 0 ]] ; then
echo "The number is negative"
else
echo "The number is 0"
fi


