#!/bin/bash

###################################################################################
#
#  description : Program to tell a person fortune
#
#  Author : Hervé
# 
#  Date : 04/05/2023
#
###################################################################################

echo -e "\n~~ Fortune Teller ~~\n"

# Create a function without parameter
# GET_FORTUNE(){
#  echo "Ask a yes or no question:"
#  read QUESTION
# }

# Create a function with one parameter
GET_FORTUNE() {
 # check if the function parameter is not send
  if [[ ! $1 ]]
  then
    echo Ask a yes or no question:
  else
    echo Try again. Make sure it ends with a question mark:
  fi
  read QUESTION
}

# Call the function without parameter
GET_FORTUNE
# Do until the question end with an ?
until [[ $QUESTION =~ \?$ ]]
do
  # Call the function with parameter = "again"
  GET_FORTUNE again
done


# create an array
RESPONSES=("Yes" "No" "Maybe" "Outlook good" "Don't count on it" "Ask again later")
# random number betwen 0 and 5
N=$(( RANDOM % 6 )) 


echo ${RESPONSES[$N]}


