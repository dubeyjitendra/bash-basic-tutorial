#!/bin/bash

###### Bash While Loop

# In this topic, we have demonstrated how to use while loop statement in Bash Script.

# The bash while loop can be defined as a control flow statement which allows executing the given set of commands repeatedly as long as the applied condition evaluates to true. For example, we can either run echo command many times or just read a text file line by line and process the result by using while loop in Bash.
# Syntax of Bash While Loop

# Bash while loop has the following format:

# while [ expression ];  
# do  
# commands;  
# multiple commands;  
# done  

#Script to get specified numbers  
  
read -p "Enter starting number: " snum  
read -p "Enter ending number: " enum  
  
while [[ $snum -le $enum ]];  
do  
    echo $snum  
    ((snum++))  
done  
  
echo "This is the sequence that you wanted." 


######### infinite loops
# while :  
# do  
#     echo "Welcome to Javatpoint."  
# done  


#######  While Loop with a Continue Statement

i=0  
while [ $i -le 10 ]  
do  
((i++))  
if [[ "$i" == 5 ]];  
then  
    continue  
fi  
    echo "Current Number : $i"  
done  
  
echo "Skipped number 5 using Continue Statement."  


#### 

i=1  
while((i <= 10))  
do  
    echo $i  
    let i++  
done  