#!/bin/bash

####################### Bash Functions

#Functions are a great way to reuse code. The structure of a function in bash is quite similar to most languages:
# syntax
# function function_name() {
#     your_commands
# }

# Example of a "Hello World!" function:

function hello() {
    echo "Hello World Function!"
}

hello  # Notice: One thing to keep in mind is that you should not add the parenthesis when you call the function.

function hello() {
    echo "Hello $1!"
}
hello DevDojo


####### Functions should have comments mentioning description, global variables, arguments, outputs, and returned values, if applicable
#######################################
# Description: Hello function
# Globals:
#
None
# Arguments:
#
Single input argument
# Outputs:
#
Value of input argument
# Returns:
#
0 if successful, non-zero on error.
#######################################


