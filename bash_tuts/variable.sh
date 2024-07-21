# In order to execute/run a bash script ﬁle with the bash shell interpreter,
#the ﬁrst line of a script ﬁle must indicate the absolute path to the bash
# executable:

# This is also called a Shebang.
#!/bin/bash

# Bash Hello World
echo "Hello World."




# Bash Variables

#Notice: as an important note, you can not have spaces before
#and after the = sign.
name="jitu" # don't add any space "=" before and after

echo $name

echo ${name}

echo "hi , there $name" 

# variable example
age=35

echo $age
echo ${age}
echo "hey how are old are you? : ${age}"


## two varaiable
greeting="good morning"

echo $name $greeting

echo ${name} ${age}

# # $1 : first parameter 
echo "good morning" $1  # if run this ./devdojo.sh  bobby dobby  $1 first input parameter take

# # $2 : first parameter
echo "your age" $2  # if run this ./devdojo.sh  bobby dobby  $2 first input parameter take

# # $@ : all (/devdojo.sh  bobby dobby)
echo $@  # # $@ : all




