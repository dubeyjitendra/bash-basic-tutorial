#!/bin/bash

####################   STDIN (Standard Input)

# When you enter some input text for a command that asks for it, you are
# actually entering the text to the STDIN ﬁle descriptor. Run the cat
# command without any command-line arguments. It may seem that the
# process has paused but in fact it's cat asking for STDIN. cat is a simple
# program and will print the text passed to STDIN. However, you can
# extend the use case by redirecting the input to the commands that take
# STDIN.

# Example with cat:
cat << EOF
Hello World!
How are you?
EOF

###### The same can be done with other commands that take input via STDIN. Like, wc:
# The -l ﬂag with wc counts the number of lines. This block of bash code
# will print the number of lines to the terminal screen:


wc -l << EOF
Hello World!
How are you?
EOF


########################  STDOUT (Standard Output) 

# The normal non-error text on your terminal screen is printed via the
# STDOUT ﬁle descriptor. The STDOUT of a command can be redirected
# into a ﬁle, in such a way that the output of the command is written to a
# ﬁle instead of being printed on the terminal screen. This is done simply
# with the help of > and >> operators.


# Example:
echo "Hello World!" > file.txt
echo "How are you?" >> file.txt # This is because the "Hello World" string has been overwritten. This behaviour can be avoided using the >> operator.


echo "Hello World!" 1> file.txt 




########################   STDERR (Standard Error)

# The error text on the terminal screen is printed via the STDERR of the
# command. For example:

# would give an error messages. This error message is the STDERR of
# the command.
# STDERR can be redirected using the 2> operator.

ls --hello
ls --hello 2> error.txt

