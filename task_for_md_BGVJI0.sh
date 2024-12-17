#!/bin/sh

if [ $1 ]
then 
    if [ $1 == '-v' ]
    then
        echo '0.13.1 && BGVJI0'
    fi
    exit 0

    if [ $1=='-h' ] || [ $1 == '-help' ]
    then 
        echo 'this is a guide how to use script'
    fi
    exit 0
fi


operations='LIST CREATE CREATEORDERED MODIFY REMOVE EXIT'
PS3='Select operation: '

select operation in $operations
do
if [ $operation == 'LIST' ]
then 
    ls .
fi
if [ $operation == 'CREATE' ]
then 
    echo 'please give the name of the file'
    read filename
    touch $filename
    echo "$USER  created a file $filename | $date  " >> logs.txt
fi
if [ $operation == 'CREATEORDERED' ]
then 
    # echo 'please input base filenmae'
    # read basefilename
    # echo 'please enter the number of files'
    # read numberoffiles
    # count =1
    # while count=1
    touch 'createordered.md'
fi
if [ $operation == 'MODIFY' ]
then 
    echo 'please enter the filename'
    read filename
    nano $filename
    echo "$USER remove the $filename | $date" >> logs.txt
fi
if [ $operation == 'REMOVE' ]
then 
    echo 'please enter the filename'
    read filename
    rm -f $filename
    echo "$USER removed file | $date" >> logs.txt
fi
if [ $operation == 'EXIT' ]
then
    echo 'exiting script!'
    echo "$USER just exited the script | $date" >> logs.txt
    exit 0
fi
done
exit 0