#! /bin/bash


function factorial() {
    if [ $1 -eq 1 ]; then
        return 1
    fi

    factorial $(($1-1))
    partial=$?
    return $(($partial*$1))
}


factorial $1
echo "The factorial of $1 is $?"

