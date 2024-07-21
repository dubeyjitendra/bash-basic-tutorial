#!/bin/bash

###########  Bash Arguments


#In the script, we can then use $1 in order to reference the ﬁrst argument that we speciﬁed. If we pass a second argument, it would be available as $2 and so on.
#Let's create a short script called arguments.sh as an example:

echo "first output" $1

echo "second output" $2

# To reference all arguments, you can use $@:
echo $@

## run 
./arguments.sh john kon
