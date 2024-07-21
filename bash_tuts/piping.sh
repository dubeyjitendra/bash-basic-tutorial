#!/bin/bash

######################  Piping
# So far we have seen how to redirect the STDOUT, STDIN and STDOUT
# to and from a ﬁle. To concatenate the output of program (command) as
# the input of another program (command) you can use a vertical bar |.
# Example:

ls | grep ".txt"

# meaning :

# This command will list the ﬁles in the current directory and pass output
# to grep command which then ﬁlter the output to only show the ﬁles that
# contain the string ".txt".


# Operator Description
    # >Save output to a file
    # >>Append output to a file
    # <Read input from a file
    # 2>Redirect error messages
    # |Send the output from one program as input to
    # another program
    # <<Pipe multiple lines into a program cleanly
    # <<<Pipe a single line into a program cleanly