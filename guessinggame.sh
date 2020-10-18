#!/usr/bin/env bash
# File : guessinggame.sh
echo "How many files are in the current directory"
echo "Enter your guess"
read response
num=$(find . -maxdepth 1 -type f | wc -l)
function check(){
while [[ $response -eq 0 ]] || [[ $response -gt 0 ]]
   do
     if [[ $response -lt $num ]]
      then
       echo "Guess too low"
       echo "Enter new guess"
       read response
     elif [[ $response -eq $num ]]
      then
       echo "Congratulations!! Your guess is correct."
       exit
     else
       echo "Guess too high"
       echo "Enter new guess"
       read response
     fi
   done
}
check
