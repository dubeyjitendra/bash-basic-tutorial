#!/bin/bash


############### case Statement Syntax
## The syntax of the Bash case statement consists of the “case” keyword followed by the value to be matched, 
#the “in” keyword, and one or more patterns with corresponding code blocks enclosed in “;;” statements:

# As in other programming languages, you can use a case statement to
# simplify complex conditionals when there are multiple diﬀerent choices.
# So rather than using a few if, and if-else statements, you could use a
# single case statement.

# case EXPRESSION in

#   PATTERN_1)
#     STATEMENTS
#     ;;

#   PATTERN_2)
#     STATEMENTS
#     ;;

#   PATTERN_N)
#     STATEMENTS
#     ;;

#   *)
#     STATEMENTS
#     ;;
# esac


# A quick rundown of the structure:
#     All case statements start with the case keyword.
#     On the same line as the case keyword, you need to specify a
#     variable or an expression followed by the in keyword.
#     After that, you have your case patterns, where you need to use )
#     to identify the end of the pattern.
#     You can specify multiple patterns divided by a pipe: |.
#     After the pattern, you specify the commands that you would like to
#     be executed in case that the pattern matches the variable or the
#     expression that you've speciﬁed.
#     All clauses have to be terminated by adding ;; at the end.
#     You can have a default statement by adding a * as the pattern.
#   To close the case statement, use the esac (case typed backwards)
#   keyword.


#!/bin/bash
read -p "Enter the name of your car brand: " car
case $car in
Tesla)
echo -n "${car}'s car factory is in the USA."
;;
BMW | Mercedes | Audi | Porsche)
echo -n "${car}'s car factory is in Germany."
;;
Toyota | Mazda | Mitsubishi | Subaru)
echo -n "${car}'s car factory is in Japan."
;;
*)
echo -n "${car} is an unknown car brand"
;;
esac