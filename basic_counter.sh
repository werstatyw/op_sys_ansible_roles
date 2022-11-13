#!bin/bash
# basic while loop

counter=1

while [$counter -l 10 ]
do 
    echo $counter
    ((counter++))
done

 echo All done