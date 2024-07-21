#!/bin/bash

######################   Bash Arrays

# But just in case you are not a developer, the main thing that you need to know is that unlike variables, arrays can hold several values under
#one name.
# You can initialize an array by assigning values divided by space and enclosed in (). Example:

my_array=("value1" "value2" "value3")

# To access the elements in the array, you need to reference them by their numeric index.

# Notice: keep in mind that you need to use curly brackets.

# Access a single element, this would output: value 2

echo ${my_array[0]} # first values

echo ${my_array[1]}  # second values

echo ${my_array[-1]}


echo ${my_array[@]}  # all values will be return