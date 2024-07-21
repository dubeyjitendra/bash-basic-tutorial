#!/bin/bash

echo "what is your name?"
read name   # read is a input command like python 


# the read command used with -p ﬂag will print a message before prompting the user for their input:

read -p "what is your name?" name

echo $name