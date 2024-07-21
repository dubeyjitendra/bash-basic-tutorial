#!/bin/bash

##########   Bash Conditional Expressions

# in computer science, conditional statements, conditional expressions,and conditional constructs are features of a programming language,
# which perform diﬀerent computations or actions depending on whether a programmer-speciﬁed boolean condition evaluates to true or false.

# File expressions
# True if ﬁle exists.


file="/home/jitu/Documents/bash_tuts/conditionalexpression.sh"
[[ -a ${file} ]]
# True if ﬁle exists and is a block special ﬁle.
[[ -b ${file} ]]

#True if ﬁle exists and is a character special ﬁle.
[[ -c ${file} ]]
#True if ﬁle exists and is a directory.
[[ -d ${file} ]]
#True if ﬁle exists.
[[ -e ${file} ]]
#True if ﬁle exists and is a regular ﬁle.
[[ -f ${file} ]]

#################### String expressions
#True if the shell variable varname is set (has been assigned a
#value).
[[ -v ${file} ]]
#True if the length of the string is zero.
[[ -z ${file} ]]
#True if the length of the string is non-zero.
[[ -n ${file} ]]


# ################ Arithmetic operators
# Returns true if the numbers are equal
[[ ${arg1} -eq ${arg2} ]]
# Returns true if the numbers are not equal
[[ ${arg1} -ne ${arg2} ]]

# Returns true if arg1 is less than arg2
[[ ${arg1} -lt ${arg2} ]]
# Returns true if arg1 is less than or equal arg2
[[ ${arg1} -le ${arg2} ]]
# Returns true if arg1 is greater than arg2
[[ ${arg1} -gt ${arg2} ]]

# Returns true if arg1 is greater than or equal arg2
[[ ${arg1} -ge ${arg2} ]]


[[ test_case_1 ]] && [[ test_case_2 ]] # And
[[ test_case_1 ]] || [[ test_case_2 ]] # Or



########## Exit status operators
# returns true if the command was successful without any errors
[[ $? -eq 0 ]]
# returns true if the command was not successful or had errors
[[ $? -gt 0 ]]