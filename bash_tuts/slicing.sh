#!/bin/bash


###############  Substring in Bash :: Slicing

letters=("A""B""C""D")

echo ${letters[@]}

#echo ${letters[1]}

echo ${letters:0:2}

b=${letters:0:2}
echo $b


echo ${letters::2}

echo ${letters:2}