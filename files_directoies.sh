#!/bin/bash

for var in $(ls)
do
    echo $var
    if [ -f $var ]
    then
        echo "This is a file"
        ls -l $var
    elif [ -d $var ]
    then
        echo "This is not a file"
        ls -la $var
    else 
        echo 'xz'
    fi
done

echo All Done