#!/bin/bash

#Loops:

# 1- For Loops

# 2- Until Loops

# 3- Select Loops


# for do done
#     Perform a set of commands for each item in a list.
# break
#     Exit the currently running loop.
# continue
#     Stop this iteration of the loop and begin the next iteration.
# select do done
#     Display a simple menu system for selecting items from a list.


################# Bash Loops - For Loops


# As with any other language, loops are very convenient. With Bash you can use for loops, while loops, and until loops.

# For loops Here is the structure of a for loop:
# syntax
# for var in ${list}
# do
#     your_commands
# done

######### For Loops

users="devdojo bobby tony"
for user in ${users}
do
    echo ${user}
done

# A quick rundown of the example:
    # First, we specify a list of users and store the value in a variable
    # called $users.
    # After that, we start our for loop with the for keyword.
    # Then we deﬁne a new variable which would represent each item
    # from the list that we give. In our case, we deﬁne a variable called
    # user, which would represent each user from the $users variable.
    # Then we specify the in keyword followed by our list that we will
    # loop through.
    # On the next line, we use the do keyword, which indicates what we
    # will do for each iteration of the loop.
    # Then we specify the commands that we want to run.
    # Finally, we close the loop with the done keyword.


####### For example here is one way to loop through from 1 to 10:

for num in {1..10}
do
    echo ${num}
done



# Basic range with steps for loop
for value in {10..0..2}
do
    echo $value
done
echo All done


########## Until Loop with break and continue  =============== Until Loops
# This example uses the break and the continue statements to alter the flow of the loop.

#     break: This statement terminates the current loop and passes the program control to the following commands.
#     continue: This statement ends the current iteration of the loop, skipping all the remaining commands below it and starting the next iteration.


count=1

# this is an infinite loop
until false
do
    
    if [[ $count -eq 25 ]]
    then
    
        ##   terminates the loop.
        break
    elif [[ $count%5 -eq 0 ]]
    then
    
        ## terminates the current iteration.
        continue
    fi
    echo "$count"
    ((count++))
done



################## continue


    #!/bin/bash
    # Make a backup set of files
    for value in $1/*
    do
    if [ ! -r $value ]
    then
        echo $value not readable 1>&2
    continue
    fi
        cp $value $1/backup/
    done



######################         Select loops

# The select mechanism allows you to create a simple menu system. It has the following format:

# select var in <list>
# do
# <commands>
# done



#!/bin/bash
# A simple menu system
names='Kyle Cartman Stan Quit'
PS3='Select character: '
select name in $names
do
if [ $name == 'Quit' ]
then
break
fi
    echo Hello $name
done
    echo Bye

