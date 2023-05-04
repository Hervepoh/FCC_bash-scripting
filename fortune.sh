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

# Create a function
GET_FORTUNE(){
  echo "Ask a yes or no question:"
  read QUESTION
}

# Do until the question end with an ?
until [[ $QUESTION =~ \?$ ]]
do
  GET_FORTUNE
done


# create an array
RESPONSES=("Yes" "No" "Maybe" "Outlook good" "Don't count on it" "Ask again later")
# random number betwen 0 and 5
N=$(( RANDOM % 6 )) 


echo ${RESPONSES[$N]}


