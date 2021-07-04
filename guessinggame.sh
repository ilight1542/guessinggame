#!/usr/bin/env bash
function reply {
    local myVar="$1"
    if [[ $myVar -lt $(ls -l | wc -l | tr -s " ") ]]; then
    echo "you entered $myVar"
    echo "too low"
    echo "try again"
    elif [[ $myVar -gt $(ls -l | wc -l | tr -s " ") ]]
    then
    echo "you entered $myVar"
    echo "too high"
    echo "try again"
    fi
}
while [[ $response -ne $(ls -l | wc -l) ]]
do
    echo "how many files are in the current directory?"
    echo "please enter a guess"
    read response
    reply $response 
done
echo "congrats your guess $response is right"